unit Unit2;

interface

uses Contnrs,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TComponents = class;
  TConfiguration = class;
  TComputer = class;

  TWebPage = class
  private
    /// <link>aggregation</link>
    fCaption: string;
    /// <link>aggregation</link>
    fComputer: TComputer;
    fNamePrice: string;
    fPrice: string;
    fMoney: string;
  public
    function GetComputer: TComputer;
    function GetCaption: string;
    function GetNamePrice: string;
    function GetPrice: string;
    function GetMoney: string;
  published
    constructor create(Caption: string; Computer: TComputer; NamePrice: string; Price: string; Money: string);
  end;

  TComputer = class
  private
    /// <link>aggregation</link>
    fConfiguration: TConfiguration;
  public
    function GetConfiguration: TConfiguration;
  published
    constructor create(Configuration: TConfiguration);
  end;

  TComponents = class
  public
    function Description: string; virtual; abstract;
  published
    constructor create(Description: string); virtual; abstract;
  end;

  TDdr = class(TComponents)
  private
    fDescription: string;
  public
    function Description: string; override;
  published
    constructor create(Description: string); override;
  end;

  TProcessor = class(TComponents)
  private
    fDescription: string;
  public
    function Description: string; override;
  published
    constructor create(Description: string); override;
  end;

  TMb = class(TComponents)
  private
    fDescription: string;
  public
    function Description: string; override;
  published
    constructor create(Description: string); override;
  end;

  TConfiguration = class
  private
    /// <link>aggregation</link>
    fDdr: TDdr;
    /// <link>aggregation</link>
    fProcessor: TProcessor;
    /// <link>aggregation</link>
    fMb: TMb;
  public
    function GetDdr: TDdr;
    function GetProcessor: TProcessor;
    function GetMb: TMb;
  published
    constructor create(Ddr: TDdr; Processor: TProcessor; Mb: TMb);
  end;

implementation

{ TDdr }

constructor TDdr.create(Description: string);
begin
  fDescription := Description;
end;

function TDdr.Description: string;
begin
  result := fDescription;
end;

{ TProcessor }

constructor TProcessor.create(Description: string);
begin
  fDescription := Description;
end;

function TProcessor.Description: string;
begin
  result := fDescription;
end;

{ TMb }

constructor TMb.create(Description: string);
begin
  fDescription := Description;
end;

function TMb.Description: string;
begin
  result := fDescription;
end;

{ TConfiguration }

constructor TConfiguration.create(Ddr: TDdr; Processor: TProcessor; Mb: TMb);
begin
  fDdr := Ddr;
  fProcessor := Processor;
  fMb := Mb;
end;

function TConfiguration.GetDdr: TDdr;
begin
  result := fDdr;
end;

function TConfiguration.GetMb: TMb;
begin
  result := fMb;
end;

function TConfiguration.GetProcessor: TProcessor;
begin
  result := fProcessor;
end;

{ TComputer }

constructor TComputer.create(Configuration: TConfiguration);
begin
  fConfiguration := Configuration;
end;

function TComputer.GetConfiguration: TConfiguration;
begin
  result := fConfiguration;
end;

{ TWebPage }

function TWebPage.GetCaption: string;
begin
  result := fCaption;
end;

constructor TWebPage.create(Caption: string; Computer: TComputer; NamePrice: string; Price: string; Money: string);
begin
  fCaption := Caption;
  fComputer := Computer;
  fNamePrice := NamePrice;
  fPrice := Price;
  fMoney := Money;
end;

function TWebPage.GetComputer: TComputer;
begin
  result := fComputer;
end;

function TWebPage.GetMoney: string;
begin
  result := fMoney;
end;

function TWebPage.GetNamePrice: string;
begin
  result := fNamePrice;
end;

function TWebPage.GetPrice: string;
begin
  result := fPrice;
end;

end.
