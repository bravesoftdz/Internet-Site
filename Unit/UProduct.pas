unit UProduct;

interface

type
  TProduct = class
  private
    fName: string;
    fPrice: integer;
    procedure SetName(Value: string);
    function GetName: string;
    procedure SetPrice(Value: integer);
    function GetPrice: integer;
  public
    property Name: string read GetName write SetName;
    property Price: integer read GetPrice write SetPrice;
  published
    constructor create(Name: string; Price: integer);
  end;

implementation

{ TProduct }

constructor TProduct.create(Name: string; Price: integer);
begin
  fName := Name;
  fPrice := Price;
end;

function TProduct.GetName: string;
begin
  result := fName;
end;

function TProduct.GetPrice: integer;
begin
  result := fPrice;
end;

procedure TProduct.SetName(Value: string);
begin
  fName := Value;
end;

procedure TProduct.SetPrice(Value: integer);
begin
  fPrice := Value;
end;

end.
