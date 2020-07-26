unit GeradorSimpleORM.Model.Conexoes.Metainfoquery;

interface

uses
  GeradorSimpleORM.Model.Conexoes.Interfaces,
  FireDAC.Comp.Client,
  System.Classes;

Type
  TModelConexoesMetaInfoQuery = class(TInterfacedObject, iModelMetaInfoQuery)
  private
    FMetaInfoQuery: TFDMetaInfoQuery;
  public
    constructor Create(Conexao: iModelConexao);
    destructor Destroy; override;
    class function New(Conexao: iModelConexao): iModelMetaInfoQuery;
    function Open(aTable: String): iModelMetaInfoQuery;
    function &End: TComponent;
  end;

implementation

uses
  FireDAC.Phys.Intf;

{ TModelConexoesMetaInfoQuery }

constructor TModelConexoesMetaInfoQuery.Create(Conexao: iModelConexao);
begin
  FMetaInfoQuery := TFDMetaInfoQuery.Create(nil);
  FMetaInfoQuery.Connection := (Conexao.&End as TFDConnection);
end;

destructor TModelConexoesMetaInfoQuery.Destroy;
begin
  FMetaInfoQuery.Free;
  inherited;
end;

function TModelConexoesMetaInfoQuery.&End: TComponent;
begin
  Result := FMetaInfoQuery;
end;

class function TModelConexoesMetaInfoQuery.New(Conexao: iModelConexao): iModelMetaInfoQuery;
begin
  Result := Self.Create(Conexao);
end;

function TModelConexoesMetaInfoQuery.Open(aTable: String): iModelMetaInfoQuery;
begin
  Result := Self;
  if aTable <> '' then
  begin
    FMetaInfoQuery.MetaInfoKind := mkTableFields;
    FMetaInfoQuery.ObjectName := aTable;
  end;
  FMetaInfoQuery.Open;
end;

end.
