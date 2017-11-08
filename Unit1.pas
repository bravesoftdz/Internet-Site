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
    PCaption, PSideBar: TPanel;
    LCaption, LNamePrice, LPrice, LMoney: TLabel;
    BCollect, BClean: TButton;
    SB: TScrollBox;
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

  PSideBar := TPanel.Create(nil);
  PSideBar.Align := alRight;
  PSideBar.Parent := Form1;

  LNamePrice := TLabel.Create(nil);
  LNamePrice.Left := 8;
  LNamePrice.Top := 8;
  LNamePrice.Parent := PSideBar;
  LNamePrice.Caption := WebPage.GetNamePrice;

  LPrice := TLabel.Create(nil);
  LPrice.Left := 16;
  LPrice.Top := 28;
  LPrice.Alignment := taRightJustify;
  LPrice.Parent := PSideBar;
  LPrice.Caption := WebPage.GetPrice;

  LMoney := TLabel.Create(nil);
  LMoney.Left := 100;
  LMoney.Top := 28;
  LMoney.Parent := PSideBar;
  LMoney.Caption := WebPage.GetMoney;

  BClean := TButton.Create(nil);
  BClean.Left := 100;
  BClean.Top := 48;
  BClean.Parent := PSideBar;
  BClean.Caption := 'Очистить';

  BCollect := TButton.Create(nil);
  BCollect.Left := 16;
  BCollect.Top := 48;
  BCollect.Parent := PSideBar;
  BCollect.Caption := 'Собрать';
end;

end.
