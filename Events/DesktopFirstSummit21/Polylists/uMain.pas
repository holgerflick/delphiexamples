unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, GDIPCustomItem, GDIPTextItem,
  GDIPImageTextItem, GDIPImageItem, Vcl.ExtCtrls, AdvHorizontalPolyList,
  CustomItemsContainer, AdvVerticalPolyList, AdvStyleIF, AdvAppStyler,
  uBookClasses,
  uDbController,
  Aurelius.Engine.ObjectManager, Vcl.WinXCtrls, AdvPolyList, Vcl.StdCtrls,
  Vcl.Mask, AdvSpin, AdvGlowButton, AdvCombo;

type
  TFrmMain = class(TForm)
    AdvFormStyler1: TAdvFormStyler;
    Poly: TAdvPolyList;
    txtRows: TAdvSpinEdit;
    txtCols: TAdvSpinEdit;
    Themes: TAdvComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtRowsChange(Sender: TObject);
    procedure txtColsChange(Sender: TObject);
  private
    { Private declarations }
    FBooks: TBookList;
    FManager: TObjectManager;

    procedure LoadBooks;
    procedure ShowBooks( APolyList: TAdvPolyList );
    procedure UpdateBooks;

    function GetColumns: Integer;
    procedure SetColumns(const Value: Integer);
    function GetRows: Integer;
    procedure SetRows(const Value: Integer);

  public
    { Public declarations }

    property Rows: Integer read GetRows write SetRows;
    property Cols: Integer read GetColumns write SetColumns;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

{ TFrmMain }

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FBooks.Free;
  FManager.Free;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  FManager := TDbController.Instance.GetManager;

  LoadBooks;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  // init controls
  txtCols.Value := Cols;
  txtRows.Value := Rows;

  UpdateBooks;
end;

function TFrmMain.GetColumns: Integer;
begin
  Result := Poly.Columns;
end;

function TFrmMain.GetRows: Integer;
begin
  Result := Poly.Rows;
end;

procedure TFrmMain.LoadBooks;
begin
  FBooks.Free;
  FBooks := FManager.Find<TBook>
    .List;
end;

procedure TFrmMain.SetColumns(const Value: Integer);
begin
  Poly.Columns := Value;
end;

procedure TFrmMain.SetRows(const Value: Integer);
begin
  Poly.Rows := Value;
end;

procedure TFrmMain.ShowBooks( APolyList: TAdvPolyList );
var
  LBin: TMemoryStream;
  LBook: TBook;
  LItem: TImageItem;
begin
  APolyList.BeginUpdate;

  try
    APolyList.ClearItems;

    APolyList.List.Appearance.NormalFont := self.Font;
    APolyList.List.Appearance.SelectedFont := self.Font;
    APolyList.List.Appearance.HoveredFont := self.Font;
    APolyList.List.Appearance.DownFont := self.Font;

    for var i := 0 to FBooks.Count-1 do
    begin
      LBook := FBooks[i];

      LItem := APolyList.AddItem( TImageItem ) as TImageItem;
      LItem.Caption := LBook.Title;
      LItem.CaptionLocation := tlTopCenter;
      LItem.AspectRatio := true;

      LBin := TMemoryStream.Create;
      try
        LBook.Thumb.SaveToStream(LBin);
        LItem.Image.LoadFromStream( LBin );
        LItem.ImageHeight := 150;
        LItem.ImageWidth := 100;
        LItem.Height := 200;
        LItem.ImageMode := imStretch;
      finally
        LBin.Free;
      end;
    end;

  finally
    APolyList.EndUpdate;
  end;

end;

procedure TFrmMain.txtColsChange(Sender: TObject);
begin
  Cols := txtCols.Value;
  UpdateBooks;
end;

procedure TFrmMain.txtRowsChange(Sender: TObject);
begin
  Rows := txtRows.Value;
  UpdateBooks;
end;

procedure TFrmMain.UpdateBooks;
begin
  ShowBooks( Poly );
end;

end.
