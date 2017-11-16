unit UAdapterDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections;

type

  TInterfaceAdapterDB = interface
    function GetADOConnection: TADOConnection;
  end;

  TAdapterDB = class(TInterfacedObject, TInterfaceAdapterDB)
  private
    ADOConnection: TADOConnection;
  public
    function GetADOConnection: TADOConnection;
  published
    constructor create;
  end;

implementation

{ TAdapterDB }

constructor TAdapterDB.create;
begin
  if not Assigned(ADOConnection) then
    ADOConnection := TADOConnection.create(nil);
  ADOConnection.ConnectionString :=
    'Provider=MSDASQL.1;Password=2307;Persist Security Info=True;User ID=root;Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};UID=root;PWD=2307;SERVER=localhost;DATABASE=store;PORT=3306;COLUMN_SIZE_S32=1;";Initial Catalog=store';
  ADOConnection.LoginPrompt := false;
  ADOConnection.Connected := true;
end;

function TAdapterDB.GetADOConnection: TADOConnection;
begin
  result := ADOConnection;
end;

end.
