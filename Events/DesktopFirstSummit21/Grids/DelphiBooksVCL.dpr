program DelphiBooksVCL;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uServiceController in 'uServiceController.pas' {ServiceController: TDataModule},
  uBookClasses in 'uBookClasses.pas',
  uDbController in 'uDbController.pas' {DbController: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  var LMainForm: TFrmMain := nil;
  Application.CreateForm( TFrmMain, LMainForm );
  Application.Run;
end.
