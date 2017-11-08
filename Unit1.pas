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
    PCaption, PSideBar, PDdr, PProcessor, PMb: TPanel;
    LCaption, LNamePrice, LPrice, LMoney, LDdr, LProcessor, LMb: TLabel;
    BCollect, BClean: TButton;
    SBComputer: TScrollBox;
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
    ('Конфигуратор системного блока', TComputer.create(TConfiguration.create(TDdr.create('TDdr description'),
    TProcessor.create('TProcessor description'), TMb.create('TMb description'))),'Стоимость компьютера','0',' руб.');
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

  SBComputer := TScrollBox.Create(nil);
  SBComputer.Align := alClient;
  SBComputer.Parent := Form1;

  PDdr := TPanel.Create(nil);
  PDdr.Align := alTop;
  PDdr.Parent := SBComputer;

  LDdr := TLabel.Create(nil);
  LDdr.Left := 8;
  LDdr.Top := 8;
  LDdr.Parent := PDdr;
  LDdr.Caption := WebPage.GetComputer.GetConfiguration.GetDdr.Description;

  PProcessor := TPanel.Create(nil);
  PProcessor.Align := alTop;
  PProcessor.Parent := SBComputer;

  LProcessor := TLabel.Create(nil);
  LProcessor.Left := 8;
  LProcessor.Top := 8;
  LProcessor.Parent := PProcessor;
  LProcessor.Caption := WebPage.GetComputer.GetConfiguration.GetProcessor.Description;

  PMb := TPanel.Create(nil);
  PMb.Align := alTop;
  PMb.Parent := SBComputer;

  LMb := TLabel.Create(nil);
  LMb.Left := 8;
  LMb.Top := 8;
  LMb.Parent := PMb;
  LMb.Caption := WebPage.GetComputer.GetConfiguration.GetMb.Description;
end;

end.
