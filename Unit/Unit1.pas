unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.DBCGrids;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    procedure DBCtrlGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DBCtrlGrid1Click(Sender: TObject);
begin
  label1.Caption:=DBText1.Field.Text;
  label2.Caption:=DBText2.Field.Text;
end;

end.
