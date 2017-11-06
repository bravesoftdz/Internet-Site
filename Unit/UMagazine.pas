unit UMagazine;

interface

uses
  UConnection, UWebPage;

type
  TMagazine = class
  private
    /// <link>aggregation</link>
    Connection: TConnection;
  public
    Caption: string;
    money: string;
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
  money := ' руб.';
end;

end.
