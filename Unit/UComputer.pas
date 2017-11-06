unit UComputer;

interface

uses
  UConfiguration;

type
  TComputer = class
    Configuration: TConfiguration;
  end;

  TServer = class(TComputer)
  end;

  TDesktop = class(TComputer)
  end;

  TPortable = class(TComputer)
  end;

implementation

end.
