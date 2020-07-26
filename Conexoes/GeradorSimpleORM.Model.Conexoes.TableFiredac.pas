unit GeradorSimpleORM.Model.Conexoes.TableFiredac;

interface

uses
  GeradorSimpleORM.Model.Conexoes.Interfaces,
  FireDAC.Comp.Client,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Intf,
  FireDAC.Comp.UI,
  System.Classes,
  Data.DB;

Type
  TModelConexoesTableFiredac = class(TInterfacedObject, iModelDataSet)
  private
    FTable: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
  public
    constructor Create(Conexao: iModelConexao);
    destructor Destroy; override;
    class function New(Conexao: iModelConexao): iModelDataSet;
    function Open(aTable: String): iModelDataSet;
    function MasterSource(aSource: TDataSource): iModelDataSet;
    function SourceField(aFields: String): iModelDataSet;
    function MasterField(aFields: String): iModelDataSet;
    function &End: TComponent;
  end;

implementation

{ TModelConexoesTableFiredac }

constructor TModelConexoesTableFiredac.Create(Conexao: iModelConexao);
begin
  FTable := TFDTable.Create(nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(nil);
  FTable.Connection := (Conexao.&End as TFDConnection);
end;

destructor TModelConexoesTableFiredac.Destroy;
begin
  FTable.Free;
  FDGUIxWaitCursor1.Free;
  inherited;
end;

function TModelConexoesTableFiredac.&End: TComponent;
begin
  Result := FTable;
end;

function TModelConexoesTableFiredac.MasterField(aFields: String): iModelDataSet;
begin
  Result := Self;
  FTable.MasterFields := aFields;
end;

function TModelConexoesTableFiredac.MasterSource(aSource: TDataSource): iModelDataSet;
begin
  Result := Self;
  FTable.MasterSource := aSource;
  TFDTable(aSource.DataSet).FetchOptions.DetailCascade := True;
end;

class function TModelConexoesTableFiredac.New(Conexao: iModelConexao)
  : iModelDataSet;
begin
  Result := Self.Create(Conexao);
end;

function TModelConexoesTableFiredac.Open(aTable: String): iModelDataSet;
begin
  Result := Self;
  FTable.Open(aTable);
end;

function TModelConexoesTableFiredac.SourceField(aFields: String): iModelDataSet;
begin
  Result := Self;
  FTable.IndexFieldNames := aFields;
end;

end.
