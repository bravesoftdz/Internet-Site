unit UMagazine;

interface

uses
  UConnection, UComputer;

type
  TMagazine = class
  private
    /// <link>aggregation</link>
    Connection: TConnection;
    /// <link>aggregation</link>
    Computer: TComputer;
  public
    Caption: string;

  published
    constructor create;
  end;

implementation

{ magazine }

constructor TMagazine.create;
begin
  Connection := TConnection.create('2307', 'root', 'localhost',
    'store', '3306');
  Connection.install;
  Caption := 'Конфигуратор системного блока';

end;

end.
