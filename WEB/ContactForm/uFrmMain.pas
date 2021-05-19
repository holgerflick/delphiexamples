unit uFrmMain;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls,
  WEBLib.RegularExpressions;

type
  TFrmMain = class(TWebForm)
    btnReset: TWebButton;
    txtLast: TWebEdit;
    btnSend: TWebButton;
    txtSubject: TWebEdit;
    txtEmail: TWebEdit;
    txtFirst: TWebEdit;
    txtBody: TWebMemo;
    procedure btnResetClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
    function IsInputValid: Boolean;

    function IsEmailValid(AEmail: String): Boolean;

    procedure ClearFields;

    procedure SendEmail;

  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

{ TFrmMain }

uses uSmtpJsWrapper;

procedure TFrmMain.btnResetClick(Sender: TObject);
begin
  ClearFields;
end;

procedure TFrmMain.btnSendClick(Sender: TObject);
begin
  if IsInputValid then
  begin
    SendEmail;
  end
  else
  begin
    ShowMessage( 'Insufficient data. All fields are required. Please verify your data.' );
  end;
end;

procedure TFrmMain.ClearFields;
begin
  txtFirst.Text := '';
  txtLast.Text := '';
  txtEmail.Text := '';
  txtSubject.Text := '';
  txtBody.Lines.Clear;
end;

function TFrmMain.IsEmailValid(AEmail: String): Boolean;
const
  CPattern = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$';

begin
  Result := TRegEx.IsMatch( AEmail, CPattern );
end;

function TFrmMain.IsInputValid: Boolean;
var
  LEmailValid: Boolean;
  LComplete: Boolean;

begin
  LEmailValid := IsEmailValid( txtEmail.Text );

  LComplete := ( txtFirst.Text <> '' ) AND
      ( txtLast.Text <> '' ) AND
      ( txtSubject.Text <> '' ) AND
      ( txtEmail.Text <> '' );

  Result := LComplete AND LEmailValid;
end;

procedure TFrmMain.SendEmail;
begin
  TSmtpJsWrapper.Send(
    'holger@flixengineering.com',
    txtFirst.Text +
    txtLast.Text,
    txtEmail.Text,
    txtSubject.Text,
    txtBody.Lines.Text
    );
end;

end.
