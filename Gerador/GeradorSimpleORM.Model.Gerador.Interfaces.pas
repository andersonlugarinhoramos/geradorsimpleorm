unit GeradorSimpleORM.Model.Gerador.Interfaces;

interface

uses
  System.Classes,
  GeradorSimpleORM.Model.Conexoes.Interfaces;

type
  iModelGeradorClasse = interface
    ['{3F4A6033-9051-4F73-9AD5-2749FB71ABED}']
    function TableName(AValue: String): iModelGeradorClasse;
    function Fields(AValue: iModelMetaInfoQuery): iModelGeradorClasse;
    function UnitName(AValue: String): iModelGeradorClasse;
    function &End: String;
  end;

implementation

end.
