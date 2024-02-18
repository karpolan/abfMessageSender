program MessageSender;

uses
  Forms,
  formMain in 'formMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Message Sender';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
