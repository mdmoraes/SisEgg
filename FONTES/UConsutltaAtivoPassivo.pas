unit UConsutltaAtivoPassivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls, Grids,
  DBGrids, DB, DBTables, ActnList;

type
  TFrmConsultaAtivoPassivo = class(TForm)
    PageControl1: TPageControl;
    tabEstoque: TTabSheet;
    tabPendencias: TTabSheet;
    tabContasaPagar: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    GroupBox2: TGroupBox;
    btnEstoque: TSpeedButton;
    btnPendencias: TSpeedButton;
    btnComissao: TSpeedButton;
    btnRelatorio: TSpeedButton;
    Panel5: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    edContasPagar: TDBEdit;
    edTotalEstoque: TDBEdit;
    edPendencias: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    dsQueryEstoque: TDataSource;
    dsQueryPendencias: TDataSource;
    dsQueryContasPagar: TDataSource;
    QueryEstoque: TQuery;
    QueryPendencias: TQuery;
    QueryContasPagar: TQuery;
    btnContasPagar: TSpeedButton;
    QueryEstoqueREF: TStringField;
    QueryEstoqueDESCRICAO: TStringField;
    QueryEstoqueQTDCX: TFloatField;
    QueryEstoqueVALORCUSTO: TFloatField;
    btnFechar: TSpeedButton;
    QueryContasPagarFAVORECIDO: TStringField;
    QueryContasPagarDATAPAGTO: TDateField;
    QueryContasPagarVALOR: TCurrencyField;
    QueryPendenciasPED_DATA: TDateField;
    QueryPendenciasPED_CLIENTE: TStringField;
    QueryPendenciasVALOR1: TCurrencyField;
    QueryPendenciasVALOR2: TCurrencyField;
    QueryPendenciasVALOR3: TCurrencyField;
    QueryPendenciasTOTPEND: TCurrencyField;
    QueryPendenciasPAGO1: TBooleanField;
    QueryPendenciasPAGO2: TBooleanField;
    QueryPendenciasPAGO3: TBooleanField;
    ActionList1: TActionList;
    FiltraPendentes: TAction;
    procedure FormShow(Sender: TObject);
    procedure btnEstoqueClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPendenciasClick(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
    procedure QueryPendenciasCalcFields(DataSet: TDataSet);
    procedure FiltraPendentesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure SomaEstoque;
  procedure SomaPendencias;
  procedure SomaContasPagar;
  end;

var
  FrmConsultaAtivoPassivo: TFrmConsultaAtivoPassivo;
  SomaEstoque: Double;
  SomaPendencias: Double;
  SomaContasPagar: Double;

implementation

{$R *.dfm}


procedure TFrmConsultaAtivoPassivo.SomaEstoque;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
SomaEstoque: Double;
begin
  QueryEstoque.DisableControls;
  QueryEstoque.First;
  SomaEstoque := 0;
  While not QueryEstoque.Eof do
  begin
    SomaEstoque:=SomaEstoque+QueryEstoque.Fieldbyname('VALORCUSTO').asFloat;
    QueryEstoque.Next;
  End;
  edTotalEstoque.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', SomaEstoque);
  QueryEstoque.EnableControls;
end;

procedure TFrmConsultaAtivoPassivo.SomaPendencias;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
SomaPendencias: Double;
begin
  QueryPendencias.DisableControls;
  QueryPendencias.First;
  SomaPendencias := 0;
  While not QueryPendencias.Eof do
  begin
    SomaPendencias:=SomaPendencias+QueryPendencias.Fieldbyname('TOTPEND').asFloat;
    QueryPendencias.Next;
  End;
  edPendencias.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', SomaPendencias);
  QueryPendencias.EnableControls;
end;


procedure TFrmConsultaAtivoPassivo.SomaContasPagar;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
SomaContasPagar: Double;
begin
  QueryContasPagar.DisableControls;
  QueryContasPagar.First;
  SomaContasPagar := 0;
  While not QueryContasPagar.Eof do
  begin
    SomaContasPagar:=SomaContasPagar+QueryContasPagar.Fieldbyname('VALOR').asFloat;
    QueryContasPagar.Next;
  End;
  edContasPagar.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', SomaContasPagar);
  QueryContasPagar.EnableControls;
end;

procedure TFrmConsultaAtivoPassivo.FormShow(Sender: TObject);
begin
DataI.Date:= Date;
DataF.Date:= Date;
PageControl1.ActivePageIndex:= 0;
end;

procedure TFrmConsultaAtivoPassivo.btnEstoqueClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 0;
QueryEstoque.Close;
QueryEstoque.Prepare;
QueryEstoque.Open;
SomaEstoque;

  if QueryEstoque.RecordCount=0 then
  Begin
   ShowMessage('Nenhuma Informação foi Encontrada, no Período escolhido !');
  End;

end;

procedure TFrmConsultaAtivoPassivo.btnFecharClick(Sender: TObject);
begin
QueryEstoque.Close;
QueryEstoque.UnPrepare;

QueryPendencias.Close;
QueryPendencias.UnPrepare;

QueryContasPagar.Close;
QueryContasPagar.UnPrepare;

PageControl1.ActivePageIndex:= 0;
close;
end;

procedure TFrmConsultaAtivoPassivo.btnPendenciasClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 1;
QueryPendencias.Close;
QueryPendencias.Prepare;
QueryPendencias.Open;
FiltraPendentesExecute(self);
SomaPendencias;

  if QueryPendencias.RecordCount=0 then
  Begin
   ShowMessage('Nenhuma Informação foi Encontrada, no Período escolhido !');
  End;

end;

procedure TFrmConsultaAtivoPassivo.btnContasPagarClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 2;
QueryContasPagar.Close;
QueryContasPagar.Prepare;
QueryContasPagar.Open;
SomaContasPagar;

  if QueryContasPagar.RecordCount=0 then
  Begin
   ShowMessage('Nenhuma Informação foi Encontrada, no Período escolhido !');
  End;

end;

procedure TFrmConsultaAtivoPassivo.QueryPendenciasCalcFields(
  DataSet: TDataSet);
var
a, b, c, TOTPEND: double;
begin
   //////////
    if QueryPendenciasPAGO1.Value = False then
    a:= QueryPendenciasVALOR1.Value;

    if QueryPendenciasPAGO2.Value = False then
    b:= QueryPendenciasVALOR2.Value;

    if QueryPendenciasPAGO3.Value = False then
    c:= QueryPendenciasVALOR3.Value;

    totpend:= a+b+c;
    QueryPendenciasTotPend.Value:= TOTPEND;
   ///////////////O BLOCO ACIMA ESTAH FUNCIONANDO!

  if (QueryPendenciasPAGO1.Value = true) and

     (QueryPendenciasPAGO2.Value = true) and

     (QueryPendenciasPAGO3.Value = true) then

     QueryPendenciasTOTPEND.Value:= 0;


     if QueryPendencias['PAGO1']= Null then
     a:= 0;

     if QueryPendencias['PAGO2']= Null then
     b:= 0;

     if QueryPendencias['PAGO3']= Null then
     c:= 0;

     totpend:= a+b+c;
     QueryPendenciasTotPend.Value:= TOTPEND;
end;

procedure TFrmConsultaAtivoPassivo.FiltraPendentesExecute(Sender: TObject);
Var
     Texto : String;
begin
     Texto:= 'True';
     QueryPendencias.Filter:= 'PAGO1 <> '+QuotedStr(Texto);
     QueryPendencias.Filter:= 'PAGO2 <> '+QuotedStr(Texto);
     QueryPendencias.Filter:= 'PAGO3 <> '+QuotedStr(Texto);
     QueryPendencias.Filtered:= True;
end;

end.
