program Project1;

uses
  Vcl.Forms,
  Unit1 in 'View\Unit1.pas' {Form1},
  UController in 'Model\UController.pas',
  UAdapterDB in 'Model\UAdapterDB.pas';

{$R *.res}
var
  Form1: TForm1;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
