unit uBookClasses;

interface
uses
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Proxy,
  System.Generics.Collections,
  Aurelius.Types.Blob;

type
  TThreadListArray<T> = class(TThreadList<T>)
  public
    function ToArray: TArray<T>;
  end;

type
  TBook = class;
  TAuthor = class;
  TPublisher = class;

  [Entity,Automapping]
  TAuthorBook = class
  private
    FId: Integer;
    [Association([TAssociationProp.Lazy], CascadeTypeAllButRemove)]
    FAuthor: Proxy<TAuthor>;

    [Association([TAssociationProp.Lazy], CascadeTypeAllButRemove)]
    FBook: Proxy<TBook>;

    function GetAuthor: TAuthor;
    function GetBook: TBook;
    procedure SetAuthor(const Value: TAuthor);
    procedure SetBook(const Value: TBook);

  public

    property Id: Integer read FId write FId;
    property Book: TBook read GetBook write SetBook;
    property Author: TAuthor read GetAuthor write SetAuthor;
  end;

  [Entity]
  [Automapping]
  TPublisherBook = class
  private
    FID: Integer;

    [Association([TAssociationProp.Lazy], CascadeTypeAllButRemove )]
    FPublisher: Proxy<TPublisher>;

    [Association([TAssociationProp.Lazy], CascadeTypeAllButRemove )]
    FBook: Proxy<TBook>;
    function GetBook: TBook;
    function GetPublisher: TPublisher;
    procedure SetBook(const Value: TBook);
    procedure SetPublisher(const Value: TPublisher);

  public
    property Book: TBook read GetBook write SetBook;
    property Publisher: TPublisher
       read GetPublisher write SetPublisher;
  end;

  [Entity,Automapping]
  TAuthor = class
  private
    FId: Integer;
    FName: String;
    FExtId: Integer;

    [ManyValuedAssociation( [TAssociationProp.Lazy],CascadeTypeAll, 'FAuthor' )]
    FBooks: Proxy<TList<TAuthorBook>>;
    function GetBooks: TList<TAuthorBook>;
  public
    constructor Create;
    destructor  Destroy; override;

    property Id: Integer read FId write FId;
    property ExtId: Integer read FExtId write FExtId;
    property Name: String read FName write FName;

    property Books: TList<TAuthorBook> read GetBooks;
  end;


  [Entity,Automapping]
  TPublisher = class
  private
    FId: Integer;
    FName: String;
    FExtId: Integer;

    [ManyValuedAssociation([TAssociationProp.Lazy], CascadeTypeAll, 'FPublisher' )]
    FBooks: Proxy<TList<TPublisherBook>>;
    function GetBooks: TList<TPublisherBook>;

  public
    constructor Create;
    destructor  Destroy; override;

    property Id: Integer read FId write FId;
    property ExtId: Integer read FExtId write FExtId;
    property Name: String read FName write FName;

    property Books: TList<TPublisherBook> read GetBooks;
  end;


  [Entity]
  [Automapping]
  TBook = class
  private
    FId: Integer;
    FTitle: String;
    FThumbUrl: String;
    FLang: String;
    FPubDate: String;
    FIsbn10: String;
    FIsbn13: String;

    [ManyValuedAssociation( [TAssociationProp.Lazy],CascadeTypeAll, 'FBook' )]
    FAuthors: Proxy<TList<TAuthorBook>>;

    [ManyValuedAssociation( [TAssociationProp.Lazy],CascadeTypeAll, 'FBook' )]
    FPublishers: Proxy<TList<TPublisherBook>>;

    FExtId: Integer;
    FThumb: TBlob;
    function GetAuthors: TList<TAuthorBook>;
    function GetPublishers: TList<TPublisherBook>;
  public
    constructor Create;
    destructor  Destroy; override;

    property Id: Integer read FId write FId;
    property ExtId: Integer read FExtId write FExtId;
    property Title: String read FTitle write FTitle;
    property ThumbUrl: String read FThumbUrl write FThumbUrl;
    property Isbn10: String read FIsbn10 write FIsbn10;
    property Isbn13: String read FIsbn13 write FIsbn13;
    property Lang: String read FLang write FLang;
    property PubDate: String read FPubDate write FPubDate;

    property Thumb: TBlob read FThumb write FThumb;

    property Authors: TList<TAuthorBook> read GetAuthors;
    property Publishers: TList<TPublisherBook> read GetPublishers;
  end;

  TBookList = TList<TBook>;
  TAuthorList = TList<TAuthor>;
  TPublisherList = TList<TPublisher>;

implementation


{ TAuthor }

constructor TAuthor.Create;
begin
  inherited;
  FBooks.SetInitialValue(TList<TAuthorBook>.Create);
end;

destructor TAuthor.Destroy;
begin
  FBooks.DestroyValue;

  inherited;
end;

function TAuthor.GetBooks: TList<TAuthorBook>;
begin
  Result := FBooks.Value;
end;

{ TBook }

constructor TBook.Create;
begin
  inherited;

  FAuthors.SetInitialValue(TList<TAuthorBook>.Create);
  FPublishers.SetInitialValue(TList<TPublisherBook>.Create);
end;

destructor TBook.Destroy;
begin
  FPublishers.DestroyValue;
  FAuthors.DestroyValue;

  inherited;
end;


function TBook.GetAuthors: TList<TAuthorBook>;
begin
  Result := FAuthors.Value;
end;

function TBook.GetPublishers: TList<TPublisherBook>;
begin
  Result := FPublishers.Value;
end;

{ TAuthorBook }

function TAuthorBook.GetAuthor: TAuthor;
begin
  Result := FAuthor.Value;
end;

function TAuthorBook.GetBook: TBook;
begin
  Result := FBook.Value;
end;

procedure TAuthorBook.SetAuthor(const Value: TAuthor);
begin
  FAuthor.Value := Value;
end;

procedure TAuthorBook.SetBook(const Value: TBook);
begin
  FBook.Value := Value;
end;

{ TPublisherBook }

function TPublisherBook.GetBook: TBook;
begin
  Result := FBook.Value;
end;

function TPublisherBook.GetPublisher: TPublisher;
begin
  Result := FPublisher.Value;
end;

procedure TPublisherBook.SetBook(const Value: TBook);
begin
  FBook.Value := Value;
end;

procedure TPublisherBook.SetPublisher(const Value: TPublisher);
begin
  FPublisher.Value := Value;
end;

{ TPublisher }

constructor TPublisher.Create;
begin
  inherited;

  FBooks.SetInitialValue(TList<TPublisherBook>.Create);
end;

destructor TPublisher.Destroy;
begin
  FBooks.DestroyValue;
  inherited;
end;

function TPublisher.GetBooks: TList<TPublisherBook>;
begin
  Result := FBooks.Value;
end;

{ TThreadListArray }

function TThreadListArray<T>.ToArray: TArray<T>;
var
  I: Integer;
  LList: TList<T>;
begin
  LList := LockList;
  try
    SetLength(Result, LList.Count);
    for I := 0 to LList.Count - 1 do
    begin
      Result[I] := LList[I];
    end;
  finally
    UnlockList;
  end;

end;


end.
