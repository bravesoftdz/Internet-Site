unit UComponent;

interface

uses
  UConnection;

type
  TComponent = class
  private
    procedure SetName(Value: string); virtual; abstract;
    function GetName: string; virtual; abstract;
    procedure SetPrice(Value: integer); virtual; abstract;
    function GetPrice: integer; virtual; abstract;
  published
    constructor create(Name: string; Price: integer); virtual; abstract;
  end;

  TProcessor = class(TComponent)
  private
    fName: string;
    fPrice: integer;
    procedure SetName(Value: string); override;
    function GetName: string; override;
    procedure SetPrice(Value: integer); override;
    function GetPrice: integer; override;
  public
    property Name: string read GetName write SetName;
    property Price: integer read GetPrice write SetPrice;
  published
    constructor create(Name: string; Price: integer); override;
  end;

  TCooling = class(TComponent)
  private
    fName: string;
    fPrice: integer;
    procedure SetName(Value: string); override;
    function GetName: string; override;
    procedure SetPrice(Value: integer); override;
    function GetPrice: integer; override;
  public
    property Name: string read GetName write SetName;
    property Price: integer read GetPrice write SetPrice;
  published
    constructor create(Name: string; Price: integer); override;
  end;

  TMotherBoard = class(TComponent)
  private
    fName: string;
    fPrice: integer;
    procedure SetName(Value: string); override;
    function GetName: string; override;
    procedure SetPrice(Value: integer); override;
    function GetPrice: integer; override;
  public
    property Name: string read GetName write SetName;
    property Price: integer read GetPrice write SetPrice;
  published
    constructor create(Name: string; Price: integer); override;
  end;

implementation

{ TProcessor }

constructor TProcessor.create(Name: string; Price: integer);
begin
  fName := Name;
  fPrice := Price;
end;

function TProcessor.GetName: string;
begin
  result := fName;
end;

function TProcessor.GetPrice: integer;
begin
  result := fPrice;
end;

procedure TProcessor.SetName(Value: string);
begin
  //
end;

procedure TProcessor.SetPrice(Value: integer);
begin
  //
end;

{ TCooling }

constructor TCooling.create(Name: string; Price: integer);
begin

end;

function TCooling.GetName: string;
begin

end;

function TCooling.GetPrice: integer;
begin

end;

procedure TCooling.SetName(Value: string);
begin

end;

procedure TCooling.SetPrice(Value: integer);
begin

end;

{ TMotherBoard }

constructor TMotherBoard.create(Name: string; Price: integer);
begin

end;

function TMotherBoard.GetName: string;
begin

end;

function TMotherBoard.GetPrice: integer;
begin

end;

procedure TMotherBoard.SetName(Value: string);
begin

end;

procedure TMotherBoard.SetPrice(Value: integer);
begin

end;

end.
