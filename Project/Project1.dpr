program Project1;

uses
  Vcl.Forms,
  mMain in '..\Unit\mMain.pas' {Main},
  Model in '..\Unit\Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
