unit Unit3;

interface

uses unit2;

type
  IController = interface
    function WebPageCaption: string;
    function WebPageNamePrice: string;
  end;

  TController = class(TInterfacedObject, IController)
  private
    WebPage: TWebPage;
  public
    function WebPageCaption: string;
    function WebPageNamePrice: string;
  published
    constructor create;
  end;

implementation

{ TController }

constructor TController.create;
begin
  WebPage := TWebPage.create('Конфигуратор системного блока',
    TComputer.create(TConfiguration.create(TDdr.create('TDdr description'),
    TProcessor.create('TProcessor description'), TMb.create('TMb description'))
    ), 'Стоимость компьютера', '0', ' руб.');
end;

function TController.WebPageCaption: string;
begin
  result := WebPage.GetCaption;
end;

function TController.WebPageNamePrice: string;
begin
  result := WebPage.GetNamePrice;
end;

end.
