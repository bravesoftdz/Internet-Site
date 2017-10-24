unit Model;

interface

type

TMyClass = class(TObject)
private
 FMyField: integer;
 FMyVal: string;
 FMyID: integer;
 FMyConfigurationName: string;
 procedure SetMyConfigurationName(Value: string);
 function GetMyConfigurationName: string;
 procedure SetMyField(Value: integer);
 function GetMyField: integer;
 procedure SetMyVal(Value: string);
 function GetMyVal: string;
public
 function GetMyID: integer;
 property MyField: integer read GetMyField write SetMyField;
 property MyVal: string read GetMyVal write SetMyVal;
 property MyConfigurationName: string read GetMyConfigurationName write SetMyConfigurationName;
 procedure Clean;
end;

implementation

{ TMyClass }

procedure TMyClass.SetMyConfigurationName(Value: string);
begin
  MyConfigurationName:=Value;
end;

procedure TMyClass.SetMyField(Value: integer);
begin
  FMyField:=Value;
end;

procedure TMyClass.SetMyVal(Value: string);
begin
  FMyVal:=Value;
end;

procedure TMyClass.Clean;
begin
  FMyField:=0;
  FMyID:=1234;
  MyConfigurationName:='Моя сборка';
end;

function TMyClass.GetMyConfigurationName: string;
begin
  result:=MyConfigurationName;
end;

function TMyClass.GetMyField: integer;
begin
  result:=FMyField;
end;

function TMyClass.GetMyID: integer;
begin
  result:=FMyID;
end;

function TMyClass.GetMyVal: string;
begin
  result:=FMyVal;
end;

end.
