unit UConfiguration;

interface

uses
  UComponent;

type
  TConfiguration = class
  private
    name: string;
    /// <link>aggregation</link>
    fProcessor: TProcessor;
    fCooling: TCooling;
    fMotherBoard: TMotherBoard;
    procedure SetProcessor(Processor: TProcessor);
    function GetProcessor: TProcessor;
    procedure SetCooling(Cooling: TCooling);
    function GetCooling: TCooling;
    procedure SetMotherBoard(MotherBoard: TMotherBoard);
    function GetMotherBoard: TMotherBoard;
  public
    /// <link>aggregation</link>
    property Processor: TProcessor read GetProcessor write SetProcessor;
    property Cooling: TCooling read GetCooling write SetCooling;
    property MotherBoard: TMotherBoard read GetMotherBoard write SetMotherBoard;
  published
    constructor create(name: string);
  end;

implementation

{ TConfiguration }

constructor TConfiguration.create(name: string);
begin
  name := name;
end;

function TConfiguration.GetCooling: TCooling;
begin
  result := fCooling;
end;

function TConfiguration.GetMotherBoard: TMotherBoard;
begin
  result := fMotherBoard;
end;

function TConfiguration.GetProcessor: TProcessor;
begin
  result := fProcessor;
end;

procedure TConfiguration.SetCooling(Cooling: TCooling);
begin
  fCooling := Cooling;
end;

procedure TConfiguration.SetMotherBoard(MotherBoard: TMotherBoard);
begin
  fMotherBoard := MotherBoard;
end;

procedure TConfiguration.SetProcessor(Processor: TProcessor);
begin
  fProcessor := Processor;
end;

end.
