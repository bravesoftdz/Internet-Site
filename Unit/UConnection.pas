unit UConnection;

interface

uses

  Data.Win.ADODB;

type
  TConnection = class
  private
    ADOConnection1: TADOConnection;
    Password: string;
    Login: string;
    SERVER: string;
    DATABASE: string;
    PORT: string;
  public
    function Get: TADOConnection;
    procedure install;
  published
    constructor create(Password: string; Login: string; SERVER: string;
      DATABASE: string; PORT: string);
  end;

implementation

{ TConnection }

procedure TConnection.install;
begin
  if not Assigned(ADOConnection1) then
  begin
    ADOConnection1 := TADOConnection.create(nil);
    ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Password=' + Password
      + ';Persist Security Info=True;User ID=' + Login +
      ';Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};UID=' +
      Login + ';PWD=' + Password + ';SERVER=' + SERVER + ';DATABASE=' + DATABASE
      + ';PORT=' + PORT + ';COLUMN_SIZE_S32=1;";Initial Catalog=' + DATABASE;
    // ADOConnection1.LoginPrompt := false;
    ADOConnection1.Connected := true;
  end;
end;

constructor TConnection.create(Password: string; Login: string; SERVER: string;
  DATABASE: string; PORT: string);
begin
  if not Assigned(ADOConnection1) then
  begin
    Password := Password;
    Login := Login;
    SERVER := SERVER;
    DATABASE := DATABASE;
    PORT := PORT;
  end;
end;

function TConnection.Get: TADOConnection;
begin
  result := ADOConnection1;
end;

end.
