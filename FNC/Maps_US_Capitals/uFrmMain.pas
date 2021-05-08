unit uFrmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCMapsCommonTypes, FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser,
  FMX.TMSFNCMaps, FMX.TMSFNCGridCell, FMX.TMSFNCGridOptions,
  FMX.TMSFNCCustomScrollControl, FMX.TMSFNCGridData, FMX.TMSFNCCustomGrid,
  FMX.TMSFNCGrid, FMX.TMSFNCSplitter;

type
  TFrmMain = class(TForm)
    Map: TTMSFNCMaps;
    Grid: TTMSFNCGrid;
    TMSFNCSplitter1: TTMSFNCSplitter;
    procedure MapMapInitialized(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridGetCellLayout(Sender: TObject; ACol, ARow: Integer;
      ALayout: TTMSFNCGridCellLayout; ACellState: TTMSFNCGridCellState);
  private
    { Private declarations }
    procedure LoadData;
    procedure ShowCapitals;

    procedure LoadAPIKey;

  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.fmx}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  LoadAPIKey;
end;

procedure TFrmMain.GridGetCellLayout(Sender: TObject; ACol, ARow: Integer;
  ALayout: TTMSFNCGridCellLayout; ACellState: TTMSFNCGridCellState);
begin
  ALayout.Font.Name := 'Roboto';
  if ARow > 0 then
  begin
    if ACol > 1 then
    begin
      ALayout.TextAlign := gtaTrailing;
    end;
  end;
end;

procedure TFrmMain.LoadAPIKey;
var
  LRes: TResourceStream;
  LStringStream: TStringStream;

begin
  LRes := TTMSFNCUtils.GetResourceStream('API');
  LStringStream := TStringStream.Create;
  try
    LStringStream.CopyFrom( LRes );
    Map.APIKey := LStringStream.DataString;
    Map.Service := msGoogleMaps;
  finally
    LStringStream.Free;
    LRes.Free;
  end;
end;

procedure TFrmMain.LoadData;
var
  LRes: TResourceStream;

begin
  LRes := TTMSFNCUtils.GetResourceStream('STATES');
  try
    LRes.Position := 0;

    Grid.FixedColumns := 0;
    Grid.ColumnCount := 4;
    Grid.IOOffset := Point( 0, 0 );
    Grid.LoadFromCSVStream(LRes);

    ShowCapitals;
  finally
    LRes.Free;
  end;
end;

procedure TFrmMain.MapMapInitialized(Sender: TObject);
begin
  LoadData;
end;

procedure TFrmMain.ShowCapitals;
begin
  Map.BeginUpdate;
  try
    Map.Markers.Clear;

    for var row := 1 to Grid.RowCount - 1 do
    begin
      Map.AddMarker(
        Grid.Cells[ 2, row ].ToDouble,
        Grid.Cells[ 3, row ].ToDouble,
        Grid.Cells[ 1, row ]
        );
    end;

    Map.ZoomToBounds( Map.Markers.ToCoordinateArray );
  finally
    Map.EndUpdate;
  end;
end;

end.
