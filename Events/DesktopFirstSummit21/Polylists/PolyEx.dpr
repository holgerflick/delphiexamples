program PolyEx;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FrmMain},
  uBookClasses in '..\Grids\uBookClasses.pas',
  uDbController in '..\Grids\uDbController.pas' {DbController: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
