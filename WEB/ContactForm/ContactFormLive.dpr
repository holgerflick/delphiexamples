program ContactFormLive;

uses
  Vcl.Forms,
  WEBLib.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain: TWebForm} {*.html},
  uSmtpJsWrapper in 'uSmtpJsWrapper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
