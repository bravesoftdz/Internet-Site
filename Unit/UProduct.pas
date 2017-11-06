unit UProduct;

interface

uses

  UComponent;

type
  TProduct = class
  private
    description: string;
    idelement: integer;
    price: integer;
    component: TComponent;
  published
    constructor create(description: string; price: integer;
      component: TComponent);
  end;

implementation

{ TProduct }

constructor TProduct.create(description: string; price: integer;
  component: TComponent);
begin

end;

end.
