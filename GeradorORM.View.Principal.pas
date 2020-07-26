unit GeradorORM.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TViewGeradorORM = class(TForm)
    panLayoutPrincipal: TPanel;
    panTopo: TPanel;
    panLayoutDireita: TPanel;
    panLayoutEsquerda: TPanel;
    panLeft: TPanel;
    panDireita: TPanel;
    panDireitaTopo: TPanel;
    lblClasse: TLabel;
    edtNomeClasse: TEdit;
    memUnit: TMemo;
    panLeftTop: TPanel;
    panLeftGridFields: TPanel;
    panLeftListaTabelas: TPanel;
    Panel2: TPanel;
    panLeftGridTabelas: TPanel;
    panBotaoSaveUnit: TPanel;
    spbSalvarUnit: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewGeradorORM: TViewGeradorORM;

implementation

{$R *.dfm}

end.
