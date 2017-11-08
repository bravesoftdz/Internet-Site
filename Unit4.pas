unit Unit4;

interface

uses

  Data.DB, Data.Win.ADODB;

type

  TConnector = class
  private
    ADOConnection1: TADOConnection;
    fPassword: string;
    fLogin: string;
    fServer: string;
    fDatabase: string;
    fPort: string;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
  public
    procedure install;
    function GetDataSource(sql: string): TDataSource;
  published
    constructor create(Password: string; Login: string; Server: string;
      Database: string; Port: string);
  end;

implementation

{ TConnector }

constructor TConnector.create(Password: string; Login: string; Server: string;
  Database: string; Port: string);
begin
  fPassword := Password;
  fLogin := Login;
  fServer := Server;
  fDatabase := Database;
  fPort := Port;
end;

function TConnector.GetDataSource(sql: string): TDataSource;
begin
  if not Assigned(ADOQuery) then
    ADOQuery := TADOQuery.create(nil);
  ADOQuery.Connection := ADOConnection1;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add(sql);
  ADOQuery.Open;
  ADOQuery.Active := true;
  if not Assigned(DataSource) then
    DataSource := TDataSource.create(nil);
  DataSource.DataSet := ADOQuery;
  result := DataSource;
end;

procedure TConnector.install;
begin
  if not Assigned(ADOConnection1) then
    ADOConnection1 := TADOConnection.create(nil);
  ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Password=' + fPassword
    + ';Persist Security Info=True;User ID=' + fLogin +
    ';Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};UID=' + fLogin
    + ';PWD=' + fPassword + ';SERVER=' + fServer + ';DATABASE=' + fDatabase +
    ';PORT=' + fPort + ';COLUMN_SIZE_S32=1;";Initial Catalog=' + fDatabase;
  ADOConnection1.LoginPrompt := false;
  ADOConnection1.Connected := true;
end;

end.
