unit uServiceController;

interface

uses
  System.SysUtils, System.Classes, REST.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FireDAC.Stan.StorageBin, Aurelius.Drivers.SQLite,
  Aurelius.Engine.ObjectManager, Aurelius.Linq, Aurelius.Comp.Manager,
  Aurelius.Comp.Connection, uBookClasses,
  uDbController, TMSLogging, TMSLoggingBrowserOutputHandler;

type
  TServiceController = class(TDataModule)
    Client: TRESTClient;
    reqAllBooks: TRESTRequest;
    respAllBooks: TRESTResponse;
  private
    { Private declarations }
    class var FInstance: TServiceController;

    procedure ProcessBooks;

    procedure RequestBook( AExtBookId: Integer );
    procedure LoadThumb( AExtBookId: Integer );

  public
    { Public declarations }
    class destructor Destroy;
    class function Instance: TServiceController;

    procedure UpdateBooks( AFinished: TProc = nil );
  end;


implementation

uses
  JSON,
  IOUtils,
  Variants,
  Aurelius.Engine.DatabaseManager,
  Dialogs,
  System.Generics.Collections,
  AdvUtils, Threading;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServiceController }

class destructor TServiceController.Destroy;
begin
  FInstance.Free;
end;

class function TServiceController.Instance: TServiceController;
begin
  if not Assigned( FInstance ) then
  begin
    FInstance := TServiceController.Create(nil);
  end;

  Result := FInstance;
end;

procedure TServiceController.LoadThumb(
  AExtBookId: Integer );

begin
  TTask.Run(
    procedure
    var
      LMem: TMemoryStream;
      LManager: TObjectManager;
      LBook: TBook;
    begin
      LManager := TDbController.Instance.GetManager;
      try
        LBook := LManager.Find<TBook>
            .Where( Linq['ExtId'] = AExtBookId )
            .UniqueResult;

        TMSLogger.InfoFormat('Requesting thumb. ({%d} | {%s})', [LBook.ExtId, LBook.ThumbUrl]);
        LMem := TAdvUtils.DownloadImage(LBook.ThumbUrl);
        LMem.Position := 0;
        LBook.Thumb.LoadFromStream( LMem );
        LManager.Update(LBook);
        LManager.Flush;

        TMSLogger.InfoFormat('Thumb stored. ({%d} | {%s})', [LBook.ExtId, LBook.ThumbUrl]);
      finally
        LManager.Free;
      end;
    end
  );
end;

procedure TServiceController.ProcessBooks;
var
  LExtIdBook: Integer;
  LJBooks: TJSONArray;
  LJBook: TJSONObject;
  LThumbUrl: String;
  LBook: TBook;
  LManager: TObjectManager;

begin
  LManager := TDbController.Instance.GetManager;
  try
    LJBooks := respAllBooks.JSONValue as TJSONArray;
    for var i := 0 to LJBooks.Count - 1 do
    begin
      LJBook := LJBooks[ i ] as TJSONObject;

      LExtIdBook := LJBook.GetValue<integer>('id');

      LBook := LManager.Find<TBook>.Where(Linq['ExtId'] = LExtIdBook).UniqueResult;

      if not Assigned( LBook ) then
      begin
        LBook := TBook.Create;
      end;

      LBook.ExtId := LExtIdBook;
      LBook.Title := LJBook.GetValue<string>('name');
      LBook.Lang := LJBook.GetValue<string>('lang');
      LBook.PubDate := LJBook.GetValue<string>('pubdate');

      LThumbUrl := LJBook.GetValue<string>('thumb');
      LBook.ThumbUrl := LThumbUrl;

      TMSLogger.InfoFormat('Book stored. ({%d})', [LBook.ExtId]);

      LManager.SaveOrUpdate(LBook);

      if LBook.Thumb.Size = 0 then
      begin
        LoadThumb( LExtIdBook );
      end;

      // get details for book with separate Web request
      RequestBook( LExtIdBook );
    end;

    LManager.Flush;
  finally
    LManager.Free;
  end;
end;

procedure TServiceController.RequestBook(AExtBookId: Integer);
var
  LReq: TRESTRequest;
  LRes: TRESTResponse;
  LObj: TJSONObject;
  LArr: TJSONArray;

begin
  TMSLogger.InfoFormat('Requesting book details. ({%d})', [AExtBookId]);

  LReq := TRESTRequest.Create(self.Client);
  LReq.Client := self.Client;
  LReq.Resource := 'b/{Id}.json';
  LReq.Params.ParameterByName('Id').Value := AExtBookId.ToString;

  LRes := TRESTResponse.Create(self.Client);
  LReq.Response := LRes;

  LReq.ExecuteAsync(
   procedure
   var
     LAutExtId,
     LPubExtId: Integer;
     LObj: TJSONObject;
     LArr: TJSONArray;
     LAut: TAuthor;
     LPub: TPublisher;
     LJAut,
     LJPub: TJSONObject;
     LAutBook: TAuthorBook;

     LBook: TBook;
     LManager: TObjectManager;

   begin
     if LRes.StatusCode = 200 then
     begin
        LManager := TDbController.Instance.GetManager;
        try
          LObj := LRes.JSONValue as TJSONObject;


          // get book
          LBook := LManager.Find<TBook>
              .Where( Linq['ExtId'] = AExtBookId )
              .UniqueResult;

          // read book info
          LBook.Isbn10 := LObj.GetValue<string>('isbn10');
          LBook.Isbn13 := LObj.GetValue<string>('isbn13');

          // read authors
          LArr := LObj.GetValue('authors') as TJSONArray;
          for var i := 0 to LArr.Count-1 do
          begin
             LJAut := LArr[i] as TJSONObject;
             LAutExtId := LJAut.GetValue<integer>('id');
             LAut := LManager.Find<TAuthor>
                .Where( Linq['ExtId'] = LAutExtId )
                .UniqueResult;

             if not Assigned( LAut ) then
             begin
               LAut := TAuthor.Create;
               LAut.ExtId := LAutExtId;
               LAut.Name := LJAut.GetValue<string>('name');
               LManager.Save(LAut);
             end;

             // find cross table item
             LAutBook := LManager.Find<TAuthorBook>
                  .CreateAlias( 'Book', 'b' )
                  .CreateAlias( 'Author', 'a' )
                  .Where( ( Linq['b.id'] = LBook.Id )  AND
                          ( Linq['a.id'] = LAut.Id ) )
                  .UniqueResult;

             if not Assigned( LAutBook ) then
             begin
               LAutBook := TAuthorBook.Create;
               LAutBook.Book := LBook;
               LAutBook.Author := LAut;
               LManager.Save( LAutBook );
             end;
          end;

          LManager.Update(LBook);
          LManager.Flush;

          TMSLogger.InfoFormat('Stored book details. ({%d})', [LBook.ExtId]);
        finally
          LManager.Free;
        end;
     end;
   end
   );
end;

procedure TServiceController.UpdateBooks( AFinished: TProc = nil );
begin
  reqAllBooks.ExecuteAsync(
    procedure
    begin
       ProcessBooks;
       if Assigned( AFinished ) then
       begin
         AFinished;
       end;
    end
  );
end;

end.
