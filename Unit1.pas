unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids,
  unit2, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    WebPage: TWebPage;
    // Controller: IController;
    PCaption, PSideBar, PDdr, PProcessor, PMb: TPanel;
    LCaption, LNamePrice, LPrice, LMoney, LDdr, LProcessor, LMb: TLabel;
    BCollect, BClean: TButton;
    SBComputer: TScrollBox;
    DBGComponents: TDBGrid;
    procedure PDdrClick(Sender: TObject);
  public

    procedure DBGComponentsDblClick(Sender: TObject);
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
  // Controller := TController.create;
  WebPage := TWebPage.create('Конфигуратор системного блока',
    TComputer.create(TConfiguration.create(TDdr.create('TDdr description'),
    TProcessor.create('TProcessor description'), TMb.create('TMb description'))
    ), 'Стоимость компьютера', '0', ' руб.');
  Form1.Caption := WebPage.GetCaption; // Controller.WebPageCaption;

  PCaption := TPanel.create(nil);
  PCaption.Align := alTop;
  PCaption.Parent := Form1;

  LCaption := TLabel.create(nil);
  LCaption.Left := 8;
  LCaption.Top := 8;
  LCaption.Parent := PCaption;
  LCaption.Caption := WebPage.GetCaption; // Controller.WebPageCaption;

  PSideBar := TPanel.create(nil);
  PSideBar.Align := alRight;
  PSideBar.Parent := Form1;

  LNamePrice := TLabel.create(nil);
  LNamePrice.Left := 8;
  LNamePrice.Top := 8;
  LNamePrice.Parent := PSideBar;
  LNamePrice.Caption := WebPage.GetNamePrice;

  LPrice := TLabel.create(nil);
  LPrice.Left := 24;
  LPrice.Top := 28;
  LPrice.Alignment := taRightJustify;
  LPrice.Parent := PSideBar;
  LPrice.Caption := WebPage.GetPrice;

  LMoney := TLabel.create(nil);
  LMoney.Left := 100;
  LMoney.Top := 28;
  LMoney.Parent := PSideBar;
  LMoney.Caption := WebPage.GetMoney;

  BClean := TButton.create(nil);
  BClean.Left := 100;
  BClean.Top := 48;
  BClean.Parent := PSideBar;
  BClean.Caption := 'Очистить';

  BCollect := TButton.create(nil);
  BCollect.Left := 16;
  BCollect.Top := 48;
  BCollect.Parent := PSideBar;
  BCollect.Caption := 'Собрать';

  SBComputer := TScrollBox.create(nil);
  SBComputer.Align := alClient;
  SBComputer.Parent := Form1;

  PDdr := TPanel.create(nil);
  PDdr.Align := alTop;
  PDdr.Parent := SBComputer;
  PDdr.OnClick := PDdrClick;

  LDdr := TLabel.create(nil);
  LDdr.Left := 8;
  LDdr.Top := 8;
  LDdr.Parent := PDdr;
  LDdr.Caption := WebPage.GetComputer.GetConfiguration.GetDdr.Description;

  PProcessor := TPanel.create(nil);
  PProcessor.Align := alTop;
  PProcessor.Parent := SBComputer;

  LProcessor := TLabel.create(nil);
  LProcessor.Left := 8;
  LProcessor.Top := 8;
  LProcessor.Parent := PProcessor;
  LProcessor.Caption := WebPage.GetComputer.GetConfiguration.GetProcessor.
    Description;

  PMb := TPanel.create(nil);
  PMb.Align := alTop;
  PMb.Parent := SBComputer;

  LMb := TLabel.create(nil);
  LMb.Left := 8;
  LMb.Top := 8;
  LMb.Parent := PMb;
  LMb.Caption := WebPage.GetComputer.GetConfiguration.GetMb.Description;

end;

procedure TForm1.DBGComponentsDblClick(Sender: TObject);
begin
  DBGComponents.Free;
  SBComputer := TScrollBox.create(nil);
  SBComputer.Align := alClient;
  SBComputer.Parent := Form1;

  PMb := TPanel.create(nil);
  PMb.Align := alTop;
  PMb.Parent := SBComputer;

  LMb := TLabel.create(nil);
  LMb.Left := 8;
  LMb.Top := 8;
  LMb.Parent := PMb;
  LMb.Caption := WebPage.GetComputer.GetConfiguration.GetMb.Description;

  PProcessor := TPanel.create(nil);
  PProcessor.Align := alTop;
  PProcessor.Parent := SBComputer;

  LProcessor := TLabel.create(nil);
  LProcessor.Left := 8;
  LProcessor.Top := 8;
  LProcessor.Parent := PProcessor;
  LProcessor.Caption := WebPage.GetComputer.GetConfiguration.GetProcessor.
    Description;

  PDdr := TPanel.create(nil);
  PDdr.Align := alTop;
  PDdr.Parent := SBComputer;
  PDdr.OnClick := PDdrClick;

  LDdr := TLabel.create(nil);
  LDdr.Left := 8;
  LDdr.Top := 8;
  LDdr.Parent := PDdr;
  LDdr.Caption := WebPage.GetComputer.GetConfiguration.GetDdr.Description;

end;

procedure TForm1.PDdrClick(Sender: TObject);
begin
  SBComputer.Free;

  DBGComponents := TDBGrid.create(nil);
  DBGComponents.Align := alClient;
  DBGComponents.Parent := Form1;
  DBGComponents.OnDblClick := DBGComponentsDblClick;
  DBGComponents.DataSource := WebPage.GetConnector.GetDataSource('SELECT * FROM store.element;');

end;

end.
