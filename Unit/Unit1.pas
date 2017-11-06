unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)

    ScrollBox1: TScrollBox;
    Panel11: TPanel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel9: TPanel;
    Panel8: TPanel;
    Panel7: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;


    captionSidebar: TLabel;
    //captionHeader: TLabel;
  private
    header: TPanel;
    sidebar: TPanel;

  public
    procedure setHeader(Align: TAlign; Left: integer; Top: integer; Width: integer; Height: integer; TabOrder: Smallint);
    procedure setSidebar(Align: TAlign; Left: integer; Top: integer; Width: integer; Height: integer; TabOrder: Smallint);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.setHeader(Align: TAlign; Left, Top, Width, Height: integer;
  TabOrder: Smallint);
begin
  header.Align := Align;
  header.Left := Left;
  header.Top := Top;
  header.Width := Width;
  header.Height := Height;
  header.TabOrder := TabOrder;
end;

procedure TForm1.setSidebar(Align: TAlign; Left, Top, Width, Height: integer;
  TabOrder: Smallint);
begin
  sidebar.Align := Align;
  sidebar.Left := Left;
  sidebar.Top := Top;
  sidebar.Width := Width;
  sidebar.Height := Height;
  sidebar.TabOrder := TabOrder;
end;

end.
