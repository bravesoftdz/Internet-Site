unit Model;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.DBCtrls;

type

  MyStore = class
  const LabelCaption = 'ÊÎÍÔÈÃÓĞÀÒÎĞ ÑÈÑÒÅÌÍÎÃÎ ÁËÎÊÀ';
  private
    privateCaptionStore: string;
    ADOConnection1: TADOConnection;
    procedure SetÑaptionStore(Value: string);
    function GetÑaptionStore: string;
  public
    MyLabel: TLabel;
    MyADOQuery: TADOQuery;
    function GetADOConnection1: TADOConnection;
    property Caption: string read GetÑaptionStore write SetÑaptionStore;
    function CreateStoreForm(Label1: TLabel; ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
    function SelectCconfigurationOfficeEconom(Label1: TLabel; ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
    function SelectSum(ADOQuery2: TADOQuery; DBText5: TDBText;
          DataSource2: TDataSource): TADOQuery;
    function SelectSumOfficeEconom(ADOQuery2: TADOQuery; DBText5: TDBText;
          DataSource2: TDataSource): TADOQuery;
    function SelectElement(ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
    function UpdateConfiguration(Label1: TLabel; ADOQuery1: TADOQuery; DBText2: TDBText;
          DataSource1: TDataSource): TADOQuery;
    function CleanAndSelectConfiguration(Label1: TLabel; ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
    function Selectdescription(Label1: TLabel; ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
    constructor create;
  end;

implementation

{ MyClass }

function MyStore.CleanAndSelectConfiguration(Label1: TLabel; ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
begin
  Label1.Caption := 'ÊÎÍÔÈÃÓĞÀÒÎĞ ÑÈÑÒÅÌÍÎÃÎ ÁËÎÊÀ';
  ADOQuery1.Connection:=ADOConnection1;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('UPDATE configuration SET idconfiguration=1234, name="test", col1=100, col2=200, col3=300, col4=400, col5=500, col6=600,');
  ADOQuery1.SQL.Add
    (' col7=700, col8=800, col9=900, col10=1000, col11=1100, col12=1200, col13=1300 WHERE idconfiguration=1234');
  ADOQuery1.ExecSQL;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('SELECT configuration.sum, element.component, element.idelement, element.price, element.component, element.description FROM element, configuration  WHERE (element.idelement=configuration.col1 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col2 OR element.idelement=configuration.col3 OR element.idelement=configuration.col4 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col5 OR element.idelement=configuration.col6 OR element.idelement=configuration.col7 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col8 OR element.idelement=configuration.col9 OR element.idelement=configuration.col10 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col11 OR element.idelement=configuration.col12 OR element.idelement=configuration.col13) ');
  ADOQuery1.SQL.Add
    (' AND configuration.idconfiguration=1234 ORDER BY idelement; ');
  DBText1.DataField := 'description';
  DBText2.DataField := 'idelement';
  DBText3.DataField := 'price';
  DBText4.DataField := 'component';
  ADOQuery1.Open;
  result:=ADOQuery1;
end;

constructor MyStore.create;
begin
  inherited;
  if not Assigned(ADOConnection1) then
    ADOConnection1 := TADOConnection.Create(nil);
  ADOConnection1.ConnectionString :=
    'Provider=MSDASQL.1;Password=2307;Persist Security Info=True;User ID=root;Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};UID=root;PWD=2307;SERVER=localhost;DATABASE=store;PORT=3306;COLUMN_SIZE_S32=1;";Initial Catalog=store';
  ADOConnection1.LoginPrompt := false;
  ADOConnection1.Connected := true;
end;


function MyStore.CreateStoreForm(Label1: TLabel; ADOQuery1: TADOQuery;
          DBText1: TDBText; DBText2: TDBText; DBText3: TDBText; DBText4: TDBText;
          DataSource1: TDataSource): TADOQuery;
begin
  Label1.Caption:='ÊÎÍÔÈÃÓĞÀÒÎĞ ÑÈÑÒÅÌÍÎÃÎ ÁËÎÊÀ';
  MyLabel.Free;

  MyLabel:= Label1;
  ADOQuery1.Connection:=ADOConnection1;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('SELECT configuration.sum, element.component, element.idelement, element.price, element.component, element.description FROM element, configuration  WHERE (element.idelement=configuration.col1 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col2 OR element.idelement=configuration.col3 OR element.idelement=configuration.col4 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col5 OR element.idelement=configuration.col6 OR element.idelement=configuration.col7 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col8 OR element.idelement=configuration.col9 OR element.idelement=configuration.col10 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col11 OR element.idelement=configuration.col12 OR element.idelement=configuration.col13) ');
  ADOQuery1.SQL.Add
    (' AND configuration.idconfiguration=1234 ORDER BY idelement; ');
  DBText1.DataField := 'description';
  DBText2.DataField := 'idelement';
  DBText3.DataField := 'price';
  DBText4.DataField := 'component';
  ADOQuery1.Open;
  //MyADOQuery:= ADOQuery1;
  result:=ADOQuery1;
end;

function MyStore.GetADOConnection1: TADOConnection;
begin
  result:=ADOConnection1;
end;

function MyStore.GetÑaptionStore: string;
begin
 result:=privateCaptionStore;
end;

function MyStore.SelectCconfigurationOfficeEconom(Label1: TLabel;
  ADOQuery1: TADOQuery; DBText1, DBText2, DBText3, DBText4: TDBText;
  DataSource1: TDataSource): TADOQuery;
begin
  Label1.Caption := 'Îôèñíûé "İêîíîì"';
  ADOQuery1.Connection:=ADOConnection1;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('SELECT configuration.sum, element.component, element.idelement, element.price, element.component, element.description FROM element, configuration  WHERE (element.idelement=configuration.col1 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col2 OR element.idelement=configuration.col3 OR element.idelement=configuration.col4 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col5 OR element.idelement=configuration.col6 OR element.idelement=configuration.col7 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col8 OR element.idelement=configuration.col9 OR element.idelement=configuration.col10 ');
  ADOQuery1.SQL.Add
    (' OR element.idelement=configuration.col11 OR element.idelement=configuration.col12 OR element.idelement=configuration.col13) ');
  ADOQuery1.SQL.Add
    (' AND configuration.idconfiguration=1 ORDER BY idelement; ');
  DBText1.DataField := 'description';
  DBText2.DataField := 'idelement';
  DBText3.DataField := 'price';
  DBText4.DataField := 'component';
  ADOQuery1.Open;
  result:=ADOQuery1;
end;

function MyStore.Selectdescription(Label1: TLabel; ADOQuery1: TADOQuery; DBText1, DBText2,
  DBText3, DBText4: TDBText; DataSource1: TDataSource): TADOQuery;
begin
    Label1.Caption := DBText4.Field.Text;
    ADOQuery1.Connection:=ADOConnection1;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add
      ('SELECT description, idelement, price, component FROM store.element WHERE component="'
      + Label1.Caption + '" AND price>0');
    DBText1.DataField := 'description';
    DBText2.DataField := 'idelement';
    DBText3.DataField := 'price';
    DBText4.DataField := 'component';
    ADOQuery1.Open;
  result:=ADOQuery1;
end;

function MyStore.SelectElement(ADOQuery1: TADOQuery; DBText1,
  DBText2, DBText3, DBText4: TDBText; DataSource1: TDataSource): TADOQuery;
begin
    ADOQuery1.Connection:=ADOConnection1;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add
      ('SELECT element.component, element.idelement, element.price, element.description FROM element, configuration  WHERE (element.idelement=configuration.col1 ');
    ADOQuery1.SQL.Add
      (' OR element.idelement=configuration.col2 OR element.idelement=configuration.col3 OR element.idelement=configuration.col4 ');
    ADOQuery1.SQL.Add
      (' OR element.idelement=configuration.col5 OR element.idelement=configuration.col6 OR element.idelement=configuration.col7 ');
    ADOQuery1.SQL.Add
      (' OR element.idelement=configuration.col8 OR element.idelement=configuration.col9 OR element.idelement=configuration.col10 ');
    ADOQuery1.SQL.Add
      (' OR element.idelement=configuration.col11 OR element.idelement=configuration.col12 OR element.idelement=configuration.col13) ');
    ADOQuery1.SQL.Add
      (' AND configuration.idconfiguration=1234 ORDER BY idelement;');
    DBText1.DataField := 'description';
    DBText2.DataField := 'idelement';
    DBText3.DataField := 'price';
    DBText4.DataField := 'component';
    ADOQuery1.Open;
  result:=ADOQuery1;
end;

function MyStore.SelectSum(ADOQuery2: TADOQuery; DBText5: TDBText;
  DataSource2: TDataSource): TADOQuery;
begin
    ADOQuery2.Connection:=ADOConnection1;
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT SUM(price) FROM ( ');
    ADOQuery2.SQL.Add
      ('SELECT element.component, element.idelement, element.price, element.description FROM element, configuration  WHERE (element.idelement=configuration.col1');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col2 OR element.idelement=configuration.col3 OR element.idelement=configuration.col4');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col5 OR element.idelement=configuration.col6 OR element.idelement=configuration.col7');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col8 OR element.idelement=configuration.col9 OR element.idelement=configuration.col10');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col11 OR element.idelement=configuration.col12 OR element.idelement=configuration.col13)');
    ADOQuery2.SQL.Add
      ('AND configuration.idconfiguration=1234 ORDER BY idelement  ) AS ACTION ;');
    DBText5.DataField := 'SUM(price)';
    ADOQuery2.Open;
    result:=ADOQuery2;
end;

function MyStore.SelectSumOfficeEconom(ADOQuery2: TADOQuery; DBText5: TDBText;
  DataSource2: TDataSource): TADOQuery;
begin
    ADOQuery2.Connection:=ADOConnection1;
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT SUM(price) FROM ( ');
    ADOQuery2.SQL.Add
      ('SELECT element.component, element.idelement, element.price, element.description FROM element, configuration  WHERE (element.idelement=configuration.col1');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col2 OR element.idelement=configuration.col3 OR element.idelement=configuration.col4');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col5 OR element.idelement=configuration.col6 OR element.idelement=configuration.col7');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col8 OR element.idelement=configuration.col9 OR element.idelement=configuration.col10');
    ADOQuery2.SQL.Add
      ('OR element.idelement=configuration.col11 OR element.idelement=configuration.col12 OR element.idelement=configuration.col13)');
    ADOQuery2.SQL.Add
      ('AND configuration.idconfiguration=1 ORDER BY idelement  ) AS ACTION ;');
    DBText5.DataField := 'SUM(price)';
    ADOQuery2.Open;
    result:=ADOQuery2;
end;

procedure MyStore.SetÑaptionStore(Value: string);
begin
 privateCaptionStore:=Value;
end;

function MyStore.UpdateConfiguration(Label1: TLabel; ADOQuery1: TADOQuery;
  DBText2: TDBText; DataSource1: TDataSource): TADOQuery;
var
i: integer;
s: string;
begin
    Label1.Caption := 'ÊÎÍÔÈÃÓĞÀÒÎĞ ÑÈÑÒÅÌÍÎÃÎ ÁËÎÊÀ';
    i := strtoint(DBText2.Field.Text);
    s := DBText2.Field.Text;
    ADOQuery1.Connection:=ADOConnection1;
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    if (i >= 100) and (i < 200) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col1=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 200) and (i < 300) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col2=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 300) and (i < 400) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col3=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 400) and (i < 500) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col4=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 500) and (i < 600) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col5=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 600) and (i < 700) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col6=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 700) and (i < 800) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col7=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 800) and (i < 900) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col8=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 900) and (i < 1000) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col9=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 1000) and (i < 1100) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col10=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 1100) and (i < 1200) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col11=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 1200) and (i < 1300) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col12=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
      ADOQuery1.SQL.Clear;
    end;
    if (i >= 1300) and (i < 1400) then
    begin
      ADOQuery1.SQL.Add('UPDATE configuration SET col13=' + s +
        ' WHERE configuration.idconfiguration=1234;');
      ADOQuery1.ExecSQL;
    end;
        result:=ADOQuery1;
end;

end.
