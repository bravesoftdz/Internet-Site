unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  UMagazine;

type
  TForm1 = class(TForm)

  private
    /// <link>aggregation</link>
    Magazine: TMagazine;
  public
  published
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    LPriceComputer: TLabel;
    LMoney: TLabel;
    LPrice: TLabel;
    LCaption: TLabel;
    PHeader: TPanel;
    PSideBar: TPanel;
    ScrollBox1: TScrollBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    constructor create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  //Magazine.Caption
end;


constructor TForm1.create(AOwner: TComponent);
begin
  inherited;
  Magazine := TMagazine.create;
  self.Caption := Magazine.Caption;
  LCaption.Caption := Magazine.Caption;
  Label1.Caption := '';
end;

end.
