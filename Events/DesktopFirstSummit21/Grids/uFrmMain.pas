unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudImage, AdvToolBar, AdvStyleIF,
  AdvToolBarStylers, AdvAppStyler, AdvUtil, Data.DB, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, uServiceController, AdvGlowButton,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  uBookClasses, Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset,
  Aurelius.Engine.ObjectManager, Aurelius.Linq, Aurelius.Comp.Manager,Aurelius.Sql.Sqlite,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  AdvTypes , TMSLogging, TMSLoggingBrowserOutputHandler,
  TMSLoggingSlackOutputHandler;

type
  TFrmMain = class(TForm)
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    AdvFormStyler1: TAdvFormStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    Grid: TDBAdvGrid;
    btnUpdateBooks: TAdvGlowButton;
    btnReload: TAdvGlowButton;
    dbBooks: TAureliusDataset;
    DataSource1: TDataSource;
    Collection: TAdvSVGImageCollection;
    Images: TVirtualImageList;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    procedure btnUpdateBooksClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReloadClick(Sender: TObject);
    procedure GridGetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
  private
    { Private declarations }
    FManager: TObjectManager;

    procedure Reload;

    procedure SetupGrid;
  public
    { Public declarations }
  end;

implementation

uses
  uDbController;

{$R *.dfm}

procedure TFrmMain.btnReloadClick(Sender: TObject);
begin
  Reload;
end;

procedure TFrmMain.btnUpdateBooksClick(Sender: TObject);
begin
  // update list of books from Web service
  TServiceController.Instance.UpdateBooks(
    procedure
    begin
      Reload;

      MessageDlg( 'Records updated from Web service.', mtInformation, [mbOK], 0);
    end
    )
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // release object manager
  FManager.Free;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  {$IFDEF DEBUG}
  TMSLogger.RegisterOutputHandlerClass(TTMSLoggerBrowserOutputHandler, [Self]);
  TMSLogger.Active := True;
  {$ENDIF}

  // customize grid
  SetupGrid;

  // load data
  Reload;
end;

procedure TFrmMain.GridGetDisplText(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
  // only applies to data rows
  if ARow >0 then
  begin
    // format ISBN numbers
    if ACol = 4 then
    begin
      if ( Value <> '' ) AND ( POS( '-', Value ) = 0 ) then
      begin
        Value := COPY( Value, 1, 3 ) + '-' +
          COPY( Value, 4, Length( Value ) - 3 );
      end;
    end;

    // remove incomplete numbers
    if ACol = 5 then
    begin
      Value := StringReplace( Value, '-00', '', [ rfReplaceAll ] );
    end;
  end;
end;

procedure TFrmMain.Reload;
begin
  // close dataset
  dbBooks.Close;

  FManager.Free;

  // get instance to Aurelius object manager
  FManager := TDbController.Instance.GetManager;

  // assign list to dataset and open
  dbBooks.SetSourceList( FManager.Find<TBook>.List, True );

  // re-open dataset
  dbBooks.Open;
end;

procedure TFrmMain.SetupGrid;
begin
  // set header row to height 30
  // other rows are higher for images
  Grid.RowHeights[0] := 30;

  // other cutomizations...
end;

end.
