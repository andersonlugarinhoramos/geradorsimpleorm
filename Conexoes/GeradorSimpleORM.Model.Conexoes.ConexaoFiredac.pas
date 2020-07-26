unit GeradorSimpleORM.Model.Conexoes.ConexaoFiredac;

interface

uses
  GeradorSimpleORM.Model.Conexoes.Interfaces,
  FireDAC.Comp.Client, System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.FMXUI.Wait,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  FireDAC.Comp.UI,
  Data.DB,
  FireDAC.DApt,
  System.Generics.Collections,
  FireDAC.Phys.PGDef,
  FireDAC.Phys.PG,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite;

Type
  TModelConexaoFiredac = class(TInterfacedObject, iModelConexao,
    iModelConexaoParametros)
  private
    FConexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysPGDriverLink1: TFDPhysPgDriverLink;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FServer: String;
    FDatabase: String;
    FUserName: String;
    FPassword: String;
    FDriverID: String;
    FParamsValue: TStringList;
    procedure LerParametros;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConexao;
    function &End: TComponent;
    function Database(AValue: String): iModelConexaoParametros;
    function UserName(AValue: String): iModelConexaoParametros;
    function Password(AValue: String): iModelConexaoParametros;
    function DriverID(AValue: String): iModelConexaoParametros;
    function Value(AValue: String): iModelConexaoParametros; overload;
    function Value(AValue: TStringList): iModelConexaoParametros; overload;
    function &EndParametros: iModelConexao;
    function Parametros : iModelConexaoParametros;
    function Conectar : iModelConexao;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Conectar: iModelConexao;
begin
  Result := Self;
  LerParametros;
  FConexao.Connected := True;
end;

constructor TModelConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(nil);
  FDPhysPGDriverLink1 := TFDPhysPGDriverLink.Create(nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(nil);
  FDPhysSQLiteDriverLink1 := TFDPhysSQLiteDriverLink.Create(nil);
  FParamsValue := TStringList.Create;
end;

function TModelConexaoFiredac.Database(AValue: String): iModelConexaoParametros;
begin
  Result := Self;
  FDatabase := AValue;
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FDGUIxWaitCursor1.Free;
  FDPhysFBDriverLink1.Free;
  FDPhysPGDriverLink1.Free;
  FDPhysSQLiteDriverLink1.Free;
  FConexao.Free;
  inherited;
end;

function TModelConexaoFiredac.DriverID(AValue: String): iModelConexaoParametros;
begin
  Result := Self;
  FDriverID := AValue;
end;

function TModelConexaoFiredac.&End: TComponent;
begin
  Result := FConexao;
end;

function TModelConexaoFiredac.&EndParametros: iModelConexao;
begin
  Result := Self;
end;

procedure TModelConexaoFiredac.LerParametros;
var
  I: Integer;
begin
  FConexao.Params.Database := FDatabase;
  FConexao.Params.UserName := FUserName;
  FConexao.Params.Password := FPassword;
  FConexao.Params.DriverID := FDriverID;
  for I := 0 to FParamsValue.Count-1 do
    FConexao.Params.Add(FParamsValue.Strings[I]);
end;

class function TModelConexaoFiredac.New: iModelConexao;
begin
  Result := Self.Create;
end;

function TModelConexaoFiredac.Parametros: iModelConexaoParametros;
begin
  Result := Self;
end;

function TModelConexaoFiredac.Password(AValue: String): iModelConexaoParametros;
begin
  Result := Self;
  FPassword := AValue;
end;

function TModelConexaoFiredac.UserName(AValue: String): iModelConexaoParametros;
begin
  Result := Self;
  FUserName := AValue;
end;

function TModelConexaoFiredac.Value(AValue: TStringList): iModelConexaoParametros;
begin
  Result := Self;
  FParamsValue := AValue;
end;

function TModelConexaoFiredac.Value(AValue: String): iModelConexaoParametros;
begin
  Result := Self;
  FParamsValue.Add(AValue);
end;

end.
