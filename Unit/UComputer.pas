unit UComputer;

interface

uses
  UConfiguration;

type
  TComputer = class
  public
    procedure SetConfiguration(Configuration: TConfiguration); virtual; abstract;
    function GetConfiguration: TConfiguration; virtual; abstract;
  end;

  TServer = class(TComputer)
  private
    /// <link>aggregation</link>
    fConfiguration: TConfiguration;
  public
    procedure SetConfiguration(Configuration: TConfiguration); override;
    function GetConfiguration: TConfiguration; override;
  end;

  TDesktop = class(TComputer)
  private
    /// <link>aggregation</link>
    fConfiguration: TConfiguration;
  public
    procedure SetConfiguration(Configuration: TConfiguration); override;
    function GetConfiguration: TConfiguration; override;
  end;

  TPortable = class(TComputer)
  private
    /// <link>aggregation</link>
    fConfiguration: TConfiguration;
  public
    procedure SetConfiguration(Configuration: TConfiguration); override;
    function GetConfiguration: TConfiguration; override;
  end;

implementation

{ TServer }

function TServer.GetConfiguration: TConfiguration;
begin
  result := fConfiguration;
end;

procedure TServer.SetConfiguration(Configuration: TConfiguration);
begin
  fConfiguration := Configuration;
end;

{ TDesktop }

function TDesktop.GetConfiguration: TConfiguration;
begin
  result := fConfiguration;
end;

procedure TDesktop.SetConfiguration(Configuration: TConfiguration);
begin
  fConfiguration := Configuration;
end;

{ TPortable }

function TPortable.GetConfiguration: TConfiguration;
begin
  result := fConfiguration;
end;

procedure TPortable.SetConfiguration(Configuration: TConfiguration);
begin
  fConfiguration := Configuration;
end;

end.
