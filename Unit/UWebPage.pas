unit UWebPage;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1;

type
  TWebPage = class
  private
    Form1: TForm1;
    procedure header;
    procedure sidebar;
  published
    constructor create;
  end;

implementation

{ TWebPage }

constructor TWebPage.create;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  self.header;
  Application.Run;
end;

procedure TWebPage.header;
begin
  Form1.Caption := 'Конфигуратор системного блока';
  Form1.setHeader(alTop, 0, 0, 643, 82, 2);

end;

procedure TWebPage.sidebar;
begin
  Form1.setSidebar(alRight, 458, 82, 185, 229, 0);
end;

end.
