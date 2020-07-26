unit GeradorSimpleORM.View.ListaProjetos;

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
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.ExtCtrls,
  GeradorSimpleORM.Model.Conexoes.Factory.Conexao,
  GeradorSimpleORM.Model.Conexoes.Interfaces,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  GeradorSimpleORM.Model.Conexoes.TableFiredac,
  Vcl.DBCtrls;

type
  TViewListaProjetos = class(TForm)
    panLeft: TPanel;
    panLeftTop: TPanel;
    panLeftGridFields: TPanel;
    panLeftListaTabelas: TPanel;
    Panel2: TPanel;
    panLeftGridTabelas: TPanel;
    srcLista: TSearchBox;
    DBGrid1: TDBGrid;
    dsProjetos: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    dsConfiguracoes: TDataSource;
    DBNavigator2: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure srcListaInvokeSearch(Sender: TObject);
  private
    { Private declarations }
    FConexao: iModelConexao;
    FProjetos: iModelDataSet;
    FConfiguracoes: iModelDataSet;
  public
    { Public declarations }
  end;

var
  ViewListaProjetos: TViewListaProjetos;

implementation

{$R *.dfm}

procedure TViewListaProjetos.FormCreate(Sender: TObject);
begin
  FConexao := TModelConexaoFactoryConexoes
              .New
              .ConexaoFiredac
                .Parametros
                  .Database('GeradorORM.db')
                  .DriverID('SQLite')
                .EndParametros
              .Conectar;

  FProjetos := TModelConexoesTableFiredac
            .New(FConexao)
              .Open('PROJETO');

  dsProjetos.DataSet := FProjetos.&End as TDataSet;

  FConfiguracoes := TModelConexoesTableFiredac
            .New(FConexao)
              .MasterSource(dsProjetos)
              .MasterField('ID')
              .SourceField('ID')
              .Open('PROJETO_CONFIGURACAO');

  dsConfiguracoes.DataSet := FConfiguracoes.&End as TDataSet;

end;

procedure TViewListaProjetos.srcListaInvokeSearch(Sender: TObject);
begin
  dsProjetos.DataSet.Locate('NOME', srcLista.Text, [loPartialKey, loCaseInsensitive]);
end;

end.
