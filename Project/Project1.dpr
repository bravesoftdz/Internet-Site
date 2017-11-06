program Project1;

uses
  Vcl.Forms,
  mMain in '..\Unit\mMain.pas' {Main},
  Model in '..\Unit\Model.pas',
  UMagazine in '..\Unit\UMagazine.pas',
  UConnection in '..\Unit\UConnection.pas',
  UProduct in '..\Unit\UProduct.pas',
  UComponent in '..\Unit\UComponent.pas',
  UConfiguration in '..\Unit\UConfiguration.pas',
  UComputer in '..\Unit\UComputer.pas',
  UWebPage in '..\Unit\UWebPage.pas',
  Unit1 in '..\Unit\Unit1.pas' {Form1};

{$R *.res}

var
  Main: TMain;
  WebPage: TWebPage;
begin
  WebPage := TWebPage.create;
  {
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  // Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  }
end.
