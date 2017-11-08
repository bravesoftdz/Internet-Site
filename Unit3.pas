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
  WebPage := TWebPage.create('������������ ���������� �����',
    TComputer.create(TConfiguration.create(TDdr.create('TDdr description'),
    TProcessor.create('TProcessor description'), TMb.create('TMb description'))
    ), '��������� ����������', '0', ' ���.');
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
