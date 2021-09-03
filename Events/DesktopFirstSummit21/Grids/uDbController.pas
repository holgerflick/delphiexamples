unit uDbController;

interface

uses
  System.SysUtils, System.Classes, Aurelius.Drivers.SQLite,
  Aurelius.Engine.ObjectManager, Aurelius.Linq, Aurelius.Comp.Manager,
  Aurelius.Comp.Connection,  Aurelius.Schema.MySQL,
  Aurelius.Drivers.Interfaces, Aurelius.Sql.MySql, Aurelius.Schema.Sqlite,
  Aurelius.Drivers.FireDac, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, Aurelius.Sql.Sqlite,
  Aurelius.Sql.Firebird3, Aurelius.Schema.Firebird3;

type
  TDbController = class(TDataModule)
    Manager: TFDManager;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    class var FInstance: TDbController;

  public
    { Public declarations }
    class destructor Destroy;

    class function Instance: TDbController;

    function GetManager: TObjectManager;
    function GetFireDacConnection: TFDConnection;
    function GetConnection: IDBConnection;
    procedure InitDatabase;
  end;

implementation

uses
  IOUtils,
  Aurelius.Engine.DatabaseManager;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDbController }

function TDbController.GetConnection: IDBConnection;
var
  LCon: TFDConnection;
  LAurCon: IDBConnection;

begin
  LCon := GetFireDacConnection;

  (* MySQL:

  Result := TFireDacConnectionAdapter.Create( LCon, 'MySQL', True );
  *)

  Result := TFireDacConnectionAdapter.Create( LCon, 'Firebird3', True );
end;

function TDbController.GetFireDacConnection: TFDConnection;
begin
  if Manager.ConnectionDefs.FindConnectionDef('books') = nil then
  begin
    var LParams := TStringList.Create;
    try

    (*
       MySQL
       =====

      LParams.Add('Database=books' );
      LParams.Add('Pooled=True');
      LParams.Add('Server=192.168.0.50');
      LParams.Add('User_Name=sysdba');
      LParams.Add('Password=masterkey');

      Manager.AddConnectionDef( 'books', 'MySQL', LParams, False);

      *)

      LParams.Add('Database=d:\db\4\books.fdb' );
      LParams.Add('Pooled=True');
      LParams.Add('OpenMode=OpenOrCreate');
      LParams.Add('Server=192.168.0.3');
      LParams.Add('Port=3054');
      LParams.Add('User_Name=SYSDBA');
      LParams.Add('Password=masterkey');

      Manager.AddConnectionDef( 'books', 'FB4', LParams, False);


    finally
      LParams.Free;
    end;
  end;

  Result := TFDConnection.Create(nil);
  Result.ConnectionDefName := 'books';
end;

procedure TDbController.DataModuleCreate(Sender: TObject);
begin
  InitDatabase;
end;

class destructor TDbController.Destroy;
begin
  FInstance.Free;
end;

function TDbController.GetManager: TObjectManager;
begin
  Result := TObjectManager.Create( GetConnection );
end;

procedure TDbController.InitDatabase;
begin
  var LDbController := TDatabaseManager.Create(GetConnection);
  try
    LDbController.UpdateDatabase;
  finally
    LDbController.Free;
  end;
end;

class function TDbController.Instance: TDbController;
begin
  if not Assigned( FInstance ) then
  begin
    FInstance := TDbController.Create(nil);
  end;

  Result := FInstance;
end;

end.
