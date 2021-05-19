unit uSmtpJsWrapper;

interface

type
  TSmtpJsWrapper = class
    class procedure Send( ARecipient, AName, ASender, ASubject, ABody: String );
  end;

implementation

{ TSmtpJsWrapper }

class procedure TSmtpJsWrapper.Send(ARecipient, AName, ASender, ASubject,
  ABody: String);
var
  LBody: String;
begin
  LBody := AName + #10 + ABody;

  {$IFDEF PAS2JS}
  asm
    Email.send({
     SecureToken : "....",
     To : ARecipient,
     From : ASender,
     Subject :  ASubject,
     Body : LBody
    }).then(
      message => alert(message)
   );
  end;
  {$ENDIF}
end;
end.
