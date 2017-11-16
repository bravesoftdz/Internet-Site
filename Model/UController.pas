unit UController;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections;

type

  TInterfaceController = interface
    procedure ButtonClick(AOwner: TForm);
  end;

  TController = class(TInterfacedObject, TInterfaceController)
  private
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
  public
    procedure ButtonClick(AOwner: TForm);
  end;

implementation

{ TController }

procedure TController.ButtonClick(AOwner: TForm);
begin
  Label1 := TLabel.create(AOwner);
  Label1.Left := 8;
  Label1.Top := 8;
  Label1.Parent := AOwner;
  Label1.Caption := 'WebPage.GetCaption';
  Edit1 := TEdit.create(AOwner);
  Edit1.Left := 80;
  Edit1.Top := 80;
  Edit1.Parent := AOwner;
  Edit1.Text := 'Edit1.Text';
  Button1 := TButton.create(AOwner);
  Button1.Left := 100;
  Button1.Top := 48;
  Button1.Parent := AOwner;
  Button1.Caption := 'Button1.Caption';
end;

end.
