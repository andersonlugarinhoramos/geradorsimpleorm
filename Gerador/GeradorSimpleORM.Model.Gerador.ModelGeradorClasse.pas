unit GeradorSimpleORM.Model.Gerador.ModelGeradorClasse;

interface

uses
  GeradorSimpleORM.Model.Gerador.Interfaces,
  GeradorSimpleORM.Model.Conexoes.Interfaces,
  FireDAC.Comp.Client,
  System.SysUtils,
  System.Classes;

Type
  TModelGeradorClasse = class(TInterfacedObject, iModelGeradorClasse)
  private
    FMetaInfoQuery: TFDMetaInfoQuery;
    FClasse: TStringList;
    FPrivate: TStringList;
    FBody: TStringList;
    FInterface: TStringList;
    FProperty: TStringList;
    FPropertyInterface: TStringList;
    FProcedureLimpar: TStringList;
    FPK: TStringList;
    FTableName: String;
    FUnitName: String;
    FTipoCampo: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelGeradorClasse;
    function TableName(AValue: String): iModelGeradorClasse;
    function Fields(AValue: iModelMetaInfoQuery): iModelGeradorClasse;
    function UnitName(AValue: String): iModelGeradorClasse;
    function &End: String;
  end;

implementation

{ TModelGeradorClasse }

constructor TModelGeradorClasse.Create;
begin
  FPrivate := TStringList.Create;
  FBody := TStringList.Create;
  FInterface := TStringList.Create;
  FProperty := TStringList.Create;
  FPropertyInterface := TStringList.Create;
  FProcedureLimpar := TStringList.Create;
  FPK := TStringList.Create;
  FClasse := TStringList.Create;
end;

destructor TModelGeradorClasse.Destroy;
begin
  FPrivate.Free;
  FBody.Free;
  FInterface.Free;
  FProperty.Free;
  FPropertyInterface.Free;
  FProcedureLimpar.Free;
  FPK.Free;
  FClasse.Free;
  inherited;
end;

function TModelGeradorClasse.&End: String;
var
  MPK: String;
  I: Integer;
begin
  FProcedureLimpar.Add('');

  (FMetaInfoQuery.Connection as TFDConnection).GetKeyFieldNames('', '', FTableName.Trim.ToUpper, '', FPK);

  while not(FMetaInfoQuery.Eof) do
  begin
    if (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper.Contains('INT')) then
    begin
      FTipoCampo := 'Integer';
      FProcedureLimpar.Add('  Self.' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' := 0;');
    end
    else
    if ((FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'NUMERIC') or
        (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'DECIMAL') or
        (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'FLOAT') or
        (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'DOUBLE PRECISION') or
        (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'DOUBLE'))
    then
    begin
      FTipoCampo := 'Currency';
      FProcedureLimpar.Add('  Self.' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' := 0;');
    end
    else
    if (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'BIGINT') then
    begin
      FTipoCampo := 'Int64';
      FProcedureLimpar.Add('  Self.' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + '(0);');
    end
    else
    if (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'BLOB SUB_TYPE 1') or
      (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'BLOB SUB_TYPE 2') or
      (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'BLOB SUB_TYPE 0') or
      (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'VARCHAR') or
      (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'CHAR')
    then
    begin
      FTipoCampo := 'String';
      FProcedureLimpar.Add('  Self.' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' := '''';');
    end
    else
    if (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'VARBINARY') then
    begin
      FTipoCampo := 'TMemoField';
      FProcedureLimpar.Add('  Self.' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' := '''';');
    end
    else
    if (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'DATE') or
       (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'TIME') or
       (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'TIMESTAMP') or
       (FMetaInfoQuery.FieldByName('COLUMN_TYPENAME').AsString.Trim.ToUpper = 'DATETIME')
    then
    begin
      FTipoCampo := 'TDateTime';
      FProcedureLimpar.Add('  Self.' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' := 0;');
    end;

    FInterface.Add('    procedure Set' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' (const Value :' + FTipoCampo + ');');
    FInterface.Add('    function Get' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' :' + FTipoCampo + ';');
    FInterface.Add('');

    for I := 0 to FPK.Count-1 do
    begin
      if FPK[I].Trim.ToUpper = FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString.Trim.ToUpper then
      begin
        MPK := '    [Campo(' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString.QuotedString + '), PK]';
        Break;
      end
      else
        MPK := '    [Campo(' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString.QuotedString + ')]';
    end;
    FProperty.Add(MPK);

    FProperty.Add('    property ' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' :' + FTipoCampo + ' read Get' +
      FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' write Set' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ';');

    FPropertyInterface.Add('    property ' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' :' + FTipoCampo + ' read Get' +
      FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' write Set' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ';');

    FBody.Add('procedure T' + FTableName + '.Set' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' (const Value :' + FTipoCampo + ');');

    FBody.Add('begin');
    FBody.Add('  F' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' := Value;');
    FBody.Add('end;');
    FBody.Add('');

    FBody.Add('function T' + FTableName + '.Get' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' :' + FTipoCampo + ';');
    FBody.Add('begin');
    FBody.Add('  Result := F' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ';');
    FBody.Add('end;');
    FBody.Add('');

    FPrivate.Add('    F' + FMetaInfoQuery.FieldByName('COLUMN_NAME').AsString + ' :' + FTipoCampo + ';');
    FMetaInfoQuery.Next;
  end;

  FClasse.Clear;
  FClasse.Add('unit ' + StringReplace(FUnitName, '.pas', ';', [rfReplaceAll, rfIgnoreCase]));
  FClasse.Add('');
  FClasse.Add('interface');
  FClasse.Add('');
  FClasse.Add('uses ');
  FClasse.Add('  SimpleAttributes;');
  FClasse.Add('');
  FClasse.Add('type');
  FClasse.Add('  [Tabela(' + FTableName.QuotedString + ')]');
  FClasse.Add('  T' + FTableName + ' = class');
  FClasse.Add('  private');
  FClasse.Add(FPrivate.Text);
  FClasse.Add(FInterface.Text);
  FClasse.Add('  public');
  FClasse.Add('    constructor Create;');
  FClasse.Add('    destructor Destroy; override;');
  FClasse.Add('    procedure Limpar;');
  FClasse.Add(FProperty.Text);
  FClasse.Add('end;');
  FClasse.Add('');
  FClasse.Add('implementation');
  FClasse.Add('');
  FClasse.Add('constructor T' + FTableName + '.Create;');
  FClasse.Add('begin');
  FClasse.Add('  Limpar;');
  FClasse.Add('end;');
  FClasse.Add('');
  FClasse.Add('destructor T' + FTableName + '.Destroy;');
  FClasse.Add('begin');
  FClasse.Add('');
  FClasse.Add('  inherited;');
  FClasse.Add('end;');
  FClasse.Add('');
  FClasse.Add(FBody.Text);
  FClasse.Add('procedure T' + FTableName + '.Limpar;');
  FClasse.Add('begin');
  FClasse.Add(FProcedureLimpar.Text);
  FClasse.Add('end;');
  FClasse.Add('');
  FClasse.Add('end.');

  Result := FClasse.Text;
end;

function TModelGeradorClasse.Fields(AValue: iModelMetaInfoQuery): iModelGeradorClasse;
begin
  Result := Self;
  FMetaInfoQuery := (AValue.&End as TFDMetaInfoQuery);
end;

class function TModelGeradorClasse.New: iModelGeradorClasse;
begin
  Result := Self.Create;
end;

function TModelGeradorClasse.TableName(AValue: String): iModelGeradorClasse;
begin
  Result := Self;
  FTableName := AValue;
end;

function TModelGeradorClasse.UnitName(AValue: String): iModelGeradorClasse;
begin
  Result := Self;
  FUnitName := AValue;
end;

end.
