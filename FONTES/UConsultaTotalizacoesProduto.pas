unit UConsultaTotalizacoesProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls;

type
  TFrmConsultaTotalProdutos = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    QryGerProduto: TQuery;
    QryGerProdutoPRO_REF: TStringField;
    QryGerProdutoPRO_DESCRICAO: TStringField;
    QryGerProdutoPRO_QTDEATUAL: TFloatField;
    QryGerProdutoPCUSTO: TCurrencyField;
    QryGerProdutoPVENDA: TCurrencyField;
    QryGerProdutoLUCRO: TCurrencyField;
    QryGerProdutoPORCENT: TCurrencyField;
    Panel1: TPanel;
    edtotcusto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtotvenda: TEdit;
    Label3: TLabel;
    edtotlucro: TEdit;
    btnRelatorio: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure somacusto;
    procedure somavenda;
    procedure somalucro;
  end;

var
  FrmConsultaTotalProdutos: TFrmConsultaTotalProdutos;

implementation

{$R *.dfm}

procedure TFrmConsultaTotalProdutos.Somacusto;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
Somacusto: Double;
//Soma
begin
  QryGerProduto.DisableControls;
  QryGerProduto.First;
  somacusto := 0;
  While not QryGerProduto.Eof do begin
    somacusto:=somacusto+QryGerProduto.Fieldbyname('PCUSTO').asFloat;
    QryGerProduto.Next;
  End;
  edtotcusto.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somacusto);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryGerProduto.EnableControls;
end;

procedure TFrmConsultaTotalProdutos.Somavenda;
var
Somavenda: Double;
//Soma
begin
  QryGerProduto.DisableControls;
  QryGerProduto.First;
  somavenda := 0;
  While not QryGerProduto.Eof do begin
    somavenda:=somavenda+QryGerProduto.Fieldbyname('PVENDA').asFloat;
    QryGerProduto.Next;
  End;
  edtotvenda.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somavenda);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryGerProduto.EnableControls;
end;

procedure TFrmConsultaTotalProdutos.Somalucro;
var
Somalucro: Double;
//Soma
begin
  QryGerProduto.DisableControls;
  QryGerProduto.First;
  somalucro := 0;
  While not QryGerProduto.Eof do begin
    somalucro:=somalucro+QryGerProduto.Fieldbyname('LUCRO').asFloat;
    QryGerProduto.Next;
  End;
  edtotlucro.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somalucro);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryGerProduto.EnableControls;
end;


procedure TFrmConsultaTotalProdutos.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaTotalProdutos.FormShow(Sender: TObject);
begin
somacusto;
somavenda;
somalucro;
end;

end.

