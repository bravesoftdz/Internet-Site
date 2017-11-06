unit UComponent;

interface

uses
  UProduct;

type
  TComponent = class
  private
    procedure SetProduct(Value: TProduct); virtual; abstract;
    function GetProduct: TProduct; virtual; abstract;
  end;

  TProcessor = class(TComponent)
  private
    fProduct: TProduct;
    procedure SetProduct(Value: TProduct); override;
    function GetProduct: TProduct; override;
  public
    property Product: TProduct read GetProduct write SetProduct;
  end;

  TCooling = class(TComponent)
  private
    fProduct: TProduct;
    procedure SetProduct(Value: TProduct); override;
    function GetProduct: TProduct; override;
  public
    property Product: TProduct read GetProduct write SetProduct;
  end;

  TMotherBoard = class(TComponent)
  private
    fProduct: TProduct;
    procedure SetProduct(Value: TProduct); override;
    function GetProduct: TProduct; override;
  public
    property Product: TProduct read GetProduct write SetProduct;
  end;

implementation

{ TProcessor }

function TProcessor.GetProduct: TProduct;
begin
  result := fProduct;
end;

procedure TProcessor.SetProduct(Value: TProduct);
begin
  fProduct := Value;
end;

{ TCooling }

function TCooling.GetProduct: TProduct;
begin
  result := fProduct;
end;

procedure TCooling.SetProduct(Value: TProduct);
begin
  fProduct := Value;
end;

{ TMotherBoard }

function TMotherBoard.GetProduct: TProduct;
begin
  result := fProduct;
end;

procedure TMotherBoard.SetProduct(Value: TProduct);
begin
  fProduct := Value;
end;

end.
