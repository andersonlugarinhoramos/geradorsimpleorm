unit GeradorSimpleORM.View.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXCtrls,
  GeradorSimpleORM.View.ListaProjetos,
  GeradorSimpleORM.Model.Conexoes.Factory.Conexao,
  GeradorSimpleORM.Model.Conexoes.Interfaces,
  GeradorSimpleORM.Model.Conexoes.Metainfoquery,
  GeradorSimpleORM.Model.Gerador.Interfaces,
  GeradorSimpleORM.Model.Gerador.ModelGeradorClasse;

type
  TViewGeradorORM = class(TForm)
    panLayoutPrincipal: TPanel;
    panLayoutDireita: TPanel;
    panLayoutEsquerda: TPanel;
    panDireita: TPanel;
    panDireitaTopo: TPanel;
    lblClasse: TLabel;
    edtNomeClasse: TEdit;
    memUnit: TMemo;
    panBotaoSaveUnit: TPanel;
    spbSalvarUnit: TSpeedButton;
    panLeft: TPanel;
    panLeftTop: TPanel;
    panLeftGridFields: TPanel;
    panLeftListaTabelas: TPanel;
    Panel2: TPanel;
    panLeftGridTabelas: TPanel;
    panTopo: TPanel;
    lblProjeto: TLabel;
    srcTabelas: TSearchBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    panBotaoDireita: TPanel;
    spbSelecionar: TSpeedButton;
    dsTabelas: TDataSource;
    dsFields: TDataSource;
    procedure spbSelecionarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure srcTabelasInvokeSearch(Sender: TObject);
    procedure spbSalvarUnitClick(Sender: TObject);
  private
    { Private declarations }
    FConexao: iModelConexao;
    FListaTabela: iModelMetaInfoQuery;
    FListaFields: iModelMetaInfoQuery;
    FProjeto: String;
  public
    { Public declarations }
  end;

var
  ViewGeradorORM: TViewGeradorORM;

implementation

{$R *.dfm}

procedure TViewGeradorORM.DBGrid1CellClick(Column: TColumn);
begin
  if not(Assigned(dsTabelas.DataSet)) then
    Exit;

  if not(dsTabelas.DataSet.Active) then
    Exit;

  FListaFields.Open((FListaTabela.&End as TDataSet).FieldByName('TABLE_NAME').AsString);
  edtNomeClasse.Text := FProjeto + '.Model.Entidade.' + dsTabelas.DataSet.FieldByName('TABLE_NAME').AsString + '.pas';
end;

procedure TViewGeradorORM.spbSalvarUnitClick(Sender: TObject);
begin
  if not(Assigned(dsTabelas.DataSet)) then
    Exit;

  if not(dsTabelas.DataSet.Active) then
    Exit;


  memUnit.Lines.Text := TModelGeradorClasse
                         .New
                         .TableName(dsTabelas.DataSet.FieldByName('TABLE_NAME').AsString)
                         .Fields(FListaFields)
                         .UnitName(edtNomeClasse.Text)
                         .&End;
end;

procedure TViewGeradorORM.spbSelecionarClick(Sender: TObject);
var
  MParametros: TStringList;
  MDataBase,
  MUserName,
  MPassword,
  MDriverID: String;
begin
  ViewListaProjetos := TViewListaProjetos.Create(Self);
  MParametros := TStringList.Create;
  try
    ViewListaProjetos.ShowModal;

    ViewListaProjetos.dsConfiguracoes.DataSet.First;
    while not ViewListaProjetos.dsConfiguracoes.DataSet.Eof do
    begin
      if ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('PARAMETRO').AsString.Trim.ToUpper = 'DATABASE' then
        MDataBase := ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('VALOR').AsString
      else
      if ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('PARAMETRO').AsString.Trim.ToUpper = 'USERNAME' then
        MUserName := ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('VALOR').AsString
      else
      if ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('PARAMETRO').AsString.Trim.ToUpper = 'PASSWORD' then
        MPassword := ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('VALOR').AsString
      else
      if ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('PARAMETRO').AsString.Trim.ToUpper = 'DRIVERID' then
        MDriverID := ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('VALOR').AsString
      else
        MParametros.Add(ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('PARAMETRO').AsString + ' = ' +
                        ViewListaProjetos.dsConfiguracoes.DataSet.FieldByName('VALOR').AsString);

      ViewListaProjetos.dsConfiguracoes.DataSet.Next;
    end;

    FConexao := TModelConexaoFactoryConexoes.New
                 .ConexaoFiredac
                   .Parametros
                     .Database(MDataBase)
                     .UserName(MUserName)
                     .Password(MPassword)
                     .DriverID(MDriverID)
                     .Value(MParametros)
                   .EndParametros
                 .Conectar;

    FProjeto := ViewListaProjetos.dsProjetos.DataSet.FieldByName('NOME').AsString;
    lblProjeto.Caption := 'Projeto: ' + FProjeto;
  finally
    ViewListaProjetos.Free;
    MParametros.Free;

    FListaTabela := TModelConexoesMetaInfoQuery
                      .New(FConexao)
                      .Open('');

    dsTabelas.DataSet :=  (FListaTabela.&End as TDataSet);

    FListaFields := TModelConexoesMetaInfoQuery
                      .New(FConexao)
                      .Open((FListaTabela.&End as TDataSet).FieldByName('TABLE_NAME').AsString);

    dsFields.DataSet :=  (FListaFields.&End as TDataSet);
  end;

end;

procedure TViewGeradorORM.srcTabelasInvokeSearch(Sender: TObject);
begin
  if not(Assigned(dsTabelas.DataSet)) then
    Exit;

  if dsTabelas.DataSet.Active then
    dsTabelas.DataSet.Locate('TABLE_NAME', srcTabelas.Text, [loCaseInsensitive, loPartialKey]);

  edtNomeClasse.Text := FProjeto + '.Model.Entidade.' + dsTabelas.DataSet.FieldByName('TABLE_NAME').AsString + '.pas';

end;

end.
