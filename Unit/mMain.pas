unit mMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Model,
  Data.DB, Data.Win.ADODB, Vcl.DBCtrls;

type
  TMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBText1: TDBText;
    Button3: TButton;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    ADOQuery2: TADOQuery;
    DBText5: TDBText;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
  store: MyStore;
implementation

{$R *.dfm}

procedure TMain.Button2Click(Sender: TObject);
begin
  ADOQuery1:=store.CleanAndSelectConfiguration(Label1, ADOQuery1, DBText1, DBText2, DBText3, DBText4, DataSource1);
  ADOQuery2:=store.SelectSum(ADOQuery2, DBText5, DataSource2);
end;

procedure TMain.Button3Click(Sender: TObject);
begin
  ADOQuery1:=store.SelectCconfigurationOfficeEconom(Label1, ADOQuery1, DBText1, DBText2, DBText3, DBText4, DataSource1);
  ADOQuery2:=store.SelectSumOfficeEconom(ADOQuery2, DBText5, DataSource2);
end;

procedure TMain.DBCtrlGrid1Click(Sender: TObject);
begin
  if Label1.Caption = store.LabelCaption then
  begin
    ADOQuery1:=store.Selectdescription(Label1, ADOQuery1, DBText1, DBText2, DBText3, DBText4, DataSource1);
    ADOQuery2:=store.SelectSum(ADOQuery2, DBText5, DataSource2);
  end
  else
  begin
    ADOQuery1:=store.UpdateConfiguration(Label1, ADOQuery1, DBText2, DataSource1);
    ADOQuery1:=store.SelectElement(ADOQuery1, DBText1, DBText2, DBText3, DBText4, DataSource1);
    ADOQuery2:=store.SelectSum(ADOQuery2, DBText5, DataSource2);
  end;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  store:=MyStore.Create;
  ADOQuery1:=store.CreateStoreForm(Label1, ADOQuery1, DBText1, DBText2, DBText3, DBText4, DataSource1);
  Label1:=store.MyLabel;
end;

end.
