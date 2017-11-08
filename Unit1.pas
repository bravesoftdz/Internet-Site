unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit2, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    WebPage: TWebPage;
    PCaption: TPanel;
    LCaption: TLabel;
  public
    { Public declarations }
  published
    constructor create(AOwner: TComponent); override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

constructor TForm1.create(AOwner: TComponent);
begin
  inherited;
  WebPage := TWebPage.create
    ('Конфигуратор системного блока', TComputer.create(TConfiguration.create(TDdr.create('description'),
    TProcessor.create('description'), TMb.create('description'))),'Стоимость компьютера','0',' руб.');
  Form1.Caption := WebPage.GetCaption;
  PCaption := TPanel.Create(nil);
  PCaption.Align := alTop;
  PCaption.Parent := Form1;
  LCaption := TLabel.Create(nil);
  LCaption.Left := 8;
  LCaption.Top := 8;
  LCaption.Parent := PCaption;
  LCaption.Caption := WebPage.GetCaption;
end;

end.
