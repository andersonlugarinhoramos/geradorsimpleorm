program GeradorSimpleORM;

uses
  Vcl.Forms,
  GeradorSimpleORM.View.Principal in 'GeradorSimpleORM.View.Principal.pas' {ViewGeradorORM},
  GeradorSimpleORM.View.ListaProjetos in 'GeradorSimpleORM.View.ListaProjetos.pas' {ViewListaProjetos},
  GeradorSimpleORM.Model.Conexoes.Factory.Conexao in 'Conexoes\GeradorSimpleORM.Model.Conexoes.Factory.Conexao.pas',
  GeradorSimpleORM.Model.Conexoes.Interfaces in 'Conexoes\GeradorSimpleORM.Model.Conexoes.Interfaces.pas',
  GeradorSimpleORM.Model.Conexoes.Metainfoquery in 'Conexoes\GeradorSimpleORM.Model.Conexoes.Metainfoquery.pas',
  GeradorSimpleORM.Model.Conexoes.TableFiredac in 'Conexoes\GeradorSimpleORM.Model.Conexoes.TableFiredac.pas',
  GeradorSimpleORM.Model.Conexoes.ConexaoFiredac in 'Conexoes\GeradorSimpleORM.Model.Conexoes.ConexaoFiredac.pas',
  GeradorSimpleORM.Model.Gerador.Interfaces in 'Gerador\GeradorSimpleORM.Model.Gerador.Interfaces.pas',
  GeradorSimpleORM.Model.Gerador.ModelGeradorClasse in 'Gerador\GeradorSimpleORM.Model.Gerador.ModelGeradorClasse.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewGeradorORM, ViewGeradorORM);
  Application.Run;
end.
