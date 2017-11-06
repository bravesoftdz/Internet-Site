unit UWebPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Unit1;

type
  TWebPage = class
  private
    /// <link>aggregation</link>
    Form1: TForm1;
  public
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
  Application.Run;
end;

end.
