unit UFrmNecessidadedeCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, DB, DBTables;

type
  TFrmNecessidadedeCompras = class(TForm)
    Panel1: TPanel;
    btnRelatorio: TSpeedButton;
    btnFechar: TSpeedButton;
    DBGrid1: TDBGrid;
    QryNecessidadeCompras: TQuery;
    QryNecessidadeComprasPro_Descricao: TStringField;
    QryNecessidadeComprasPro_Unidade: TStringField;
    QryNecessidadeComprasPro_QtdeAtual: TFloatField;
    QryNecessidadeComprasPro_QtdeCritica: TFloatField;
    QryNecessidadeComprasPro_Ref: TStringField;
    dsNecessidadeCompras: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNecessidadedeCompras: TFrmNecessidadedeCompras;

implementation

uses UProdutos, Base, UFrmRelNecessidadeCompras;

{$R *.dfm}

procedure TFrmNecessidadedeCompras.FormShow(Sender: TObject);
begin
{QryNecessidadeCompras.Active:=False;
QryNecessidadeCompras.SQL.Clear;
QryNecessidadeCompras.SQL.Add('SELECT Pro_Descricao, Pro_Unidade, Pro_QtdeAtual, Pro_QtdeCritica, Pro_Ref');
QryNecessidadeCompras.SQL.Add('FROM "Produtos.DB" Produtos');
QryNecessidadeCompras.SQL.Add('where Pro_QtdeCritica <= "' + FmProdutos.editQtCritica.Text + '"');}
                                      //                  ('AND (CARTAS."COD_CARTA" = "'+ edCodCarta.Text +'")');
{QryNecessidadeCompras.SQL.Add('Order by Pro_Ref');
if not QryNecessidadeCompras.Prepared then
QryNecessidadeCompras.Prepare;
QryNecessidadeCompras.Active:=True;}
//SELECT Pro_Descricao, Pro_Unidade, Pro_QtdeAtual, Pro_QtdeCritica, Pro_Ref
//FROM "Produtos.DB" Produtos
//ORDER BY Pro_Ref}

end;

procedure TFrmNecessidadedeCompras.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmNecessidadedeCompras.btnRelatorioClick(Sender: TObject);
begin
    Try
    Application.CreateForm(TFrmRelNecessidadeCompras, FrmRelNecessidadeCompras);
    FrmRelNecessidadeCompras.QuickRepRelNecessidadeCompras.Preview;
    Finally
    FrmRelNecessidadeCompras.Free;
    end;
end;

end.

///////////
//query1.active := false;
//query1.sql.clear;
//query1.sql.add('select * from teste where nome = "' + edit1.Text + '"');
//query1.active:= true;

{frmRelReco.QueryReco.Active:= False;
frmRelReco.QueryReco.SQL.Clear;
frmRelReco.QueryReco.SQL.Add('SELECT CADASTRO."NOME" , CADASTRO."RG" ,CADASTRO."ESTADO_CIVIL",');
frmRelReco.QueryReco.SQL.Add('CADASTRO."DATA_BATISMO" ,CADASTRO."CARGO",CARTAS."CIDADE",');
frmRelReco.QueryReco.SQL.Add('CARTAS."IGREJA", CARTAS."COD_CADASTRO",');
frmRelReco.QueryReco.SQL.Add('CARTAS."COD_CARTA", CARTAS."MOTIVO",CARTAS."ESTADO", CARTAS."OBSERV"');
frmRelReco.QueryReco.SQL.Add('FROM "CADASTRO.DB" CADASTRO, "CARTAS.DB" CARTAS');
frmRelReco.QueryReco.SQL.Add('Where (CADASTRO.COD_CADASTRO = CARTAS.COD_CADASTRO)');
frmRelReco.QueryReco.SQL.Add('AND (CARTAS."COD_CARTA" = "'+ edCodCarta.Text +'")');
if not frmRelReco.QueryReco.prepared then
frmRelReco.QueryReco.Prepare; //QueryRecome.Prepare;
frmRelReco.QueryReco.Active:= True;
frmRelReco.QRLabeldataextenso.Caption:= FormatDateTime ('dd" de "MMMM" de "yyyy', Now);
frmRelReco.QuickRepReco.Preview;}

