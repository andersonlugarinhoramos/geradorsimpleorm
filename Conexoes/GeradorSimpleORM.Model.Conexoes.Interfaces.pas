unit GeradorSimpleORM.Model.Conexoes.Interfaces;

interface

uses
  System.Classes,
  Data.DB;

type
  iModelConexaoParametros = interface;

  iModelConexao = interface
    ['{3335E6BF-2439-4D17-9A1E-478E5DC52D6F}']
    function Conectar : iModelConexao;
    function &End: TComponent;
    function Parametros: iModelConexaoParametros;
  end;

  iModelConexaoParametros = interface
    ['{AA7836A0-6837-4D52-BB5B-C348D9013C4E}']
    function Database(AValue: String): iModelConexaoParametros;
    function UserName(AValue: String): iModelConexaoParametros;
    function Password(AValue: String): iModelConexaoParametros;
    function DriverID(AValue: String): iModelConexaoParametros;
    function Value(AValue: String): iModelConexaoParametros; overload;
    function Value(AValue: TStringList): iModelConexaoParametros; overload;
    function &EndParametros: iModelConexao;
  end;

  iModelMetaInfoQuery = interface
    ['{A4880E81-2B1C-45B6-A08F-CCC1EB1B467B}']
    function Open(aTable: String): iModelMetaInfoQuery;
    function &End: TComponent;
  end;

  iModelFactoryConexao = interface
    ['{3C504916-753D-47AB-B3F7-570266C230CF}']
    function ConexaoFiredac : iModelConexao;
  end;

  iModelDataSet = interface
    ['{8A8CB0F9-4516-4161-ABFA-61CFA9737CFB}']
    function Open(aTable: String): iModelDataSet;
    function MasterSource(aSource: TDataSource): iModelDataSet;
    function MasterField(aFields: String): iModelDataSet;
    function SourceField(aFields: String): iModelDataSet;
    function &End: TComponent;
  end;

implementation

end.
