unit UConsultadeFaturadosPendentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls,
  ComCtrls, ActnList;

type
  TFrmConsultadeFaturadosPendentes = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    btnProcurar: TSpeedButton;
    btnFiltrar: TSpeedButton;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    btnFechar: TSpeedButton;
    Query1PED_DATA: TDateField;
    Query1PED_CLIENTE: TStringField;
    Query1PED_FORPAGA: TStringField;
    Query1PED_VRFINAL: TCurrencyField;
    Query1VENCIMENTO1: TDateField;
    Query1VENCIMENTO2: TDateField;
    Query1VALOR1: TCurrencyField;
    Query1VALOR2: TCurrencyField;
    btnRelatorio: TSpeedButton;
    Query1PAGO1: TBooleanField;
    Query1PAGO2: TBooleanField;
    GroupBox1: TGroupBox;
    DataI: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    DataF: TDateTimePicker;
    Query1TotPend: TCurrencyField;
    Edit1: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    edTotal: TLabel;
    lblTotal: TLabel;
    ActionList1: TActionList;
    TotalizaPendencias: TAction;
    btnSair: TBitBtn;
    btnTodos: TSpeedButton;
    Query1DTPGT1: TDateField;
    Query1DTPGT2: TDateField;
    Query1PED_E: TIntegerField;
    Label4: TLabel;
    btnAtualiza: TButton;
    Query1PED_NUMERO: TIntegerField;
    LabelPednumero: TLabel;
    procedure btnProcurarClick(Sender: TObject);
    procedure btnFecharGridClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TotalizaPendenciasExecute(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultadeFaturadosPendentes: TFrmConsultadeFaturadosPendentes;

implementation

uses Base, URelFaturadosPendentes, UPedidos;

{$R *.dfm}

procedure TFrmConsultadeFaturadosPendentes.btnProcurarClick(
  Sender: TObject);
begin
//DBGrid2.Visible:= True;
Panel1.Visible:= True;
Edit1.SetFocus;
DmDados.TbClientes.IndexName:= 'ICli_Cliente';
end;

procedure TFrmConsultadeFaturadosPendentes.btnFecharGridClick(
  Sender: TObject);
begin
Panel1.Visible:= False;
end;

procedure TFrmConsultadeFaturadosPendentes.Edit1Change(Sender: TObject);
begin
dmdados.TbClientes.FindNearest([Edit1.Text]);
end;

procedure TFrmConsultadeFaturadosPendentes.DBGrid2DblClick(
  Sender: TObject);
begin
Edit1.Text:= DBGrid2.Columns.Items[0].Field.text;
Panel1.Visible:= False;
btnFiltrar.Click;
end;

procedure TFrmConsultadeFaturadosPendentes.Edit1Click(Sender: TObject);
begin
//DmDados.TbClientes.IndexName:= 'ICli_Cliente';
end;

procedure TFrmConsultadeFaturadosPendentes.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultadeFaturadosPendentes.btnFiltrarClick(
  Sender: TObject);
//Var
//     Texto : String;
begin
 //    Texto:= 'True';
 //    dmdados.Tbpedidos.Filter := 'Ped_Cliente <> '+QuotedStr(Texto);
 //    dmdados.Tbpedidos.Filtered := True;

    if Edit1.Text = '' then
    Begin
    ShowMessage('ESCOLHA UM CLIENTE PRIMEIRO!, OU < % > PARA TODOS');
    abort;
    end;
   // else

    Query1.Close;
    Query1.ParamByName('VARCLIENTE').AsString:= Edit1.Text;
    Query1.ParamByName('VarDataI').AsDate:=DataI.Date;
    Query1.ParamByName('VarDataF').AsDate:=DataF.Date;
 (*   if Query1.FieldByName('PAGO1').Value <> TRUE THEN
    BEGIN
    Query1.Edit;
    dbgrid1.Columns.Items[5].Field.text:= '';
    dbgrid1.Columns.Items[6].Field.text:= '';
    end;

    if Query1.FieldByName('PAGO2').Value <> TRUE THEN
    BEGIN
    Query1.Edit;
    dbgrid1.Columns.Items[7].Field.text:= '';
    dbgrid1.Columns.Items[8].Field.text:= '';
    end;

    if Query1.FieldByName('PAGO3').Value <> TRUE THEN
    BEGIN
    Query1.Edit;
    dbgrid1.Columns.Items[9].Field.text:= '';
    dbgrid1.Columns.Items[10].Field.text:= '';
    end; *)
    Query1.Prepare;
    Query1.Open;
    TotalizaPendenciasExecute(self);

 //   End;
    if Query1.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada p/ esse Cliente!');
      End;
end;

procedure TFrmConsultadeFaturadosPendentes.btnRelatorioClick(
  Sender: TObject);
begin
    try
    application.CreateForm(TFrmRelFaturadosPendentes, FrmRelFaturadosPendentes);
    FrmRelFaturadosPendentes.lblRotuloRel.Caption:= 'RELATÓRIO: PEDIDOS FATURADOS';
    FrmRelFaturadosPendentes.lblRotuloPeriodo.Caption:=
    'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
    FrmRelFaturadosPendentes.rotulototalpendencias.Caption:=
    edTotal.Caption;


{    if dmdados.TbpedidosPago1.Value = True then
//    if Query1.FieldByName('PAGO1').Value = True then
    begin
    FrmRelFaturadosPendentes.dbTextPago1.Caption:= 'SIM';
    end
    else
    FrmRelFaturadosPendentes.dbTextPago1.Caption:= 'NÃO';


    if Query1.FieldByName('PAGO2').AsString = 'True' then
    BEGIN
    FrmRelFaturadosPendentes.dbTextPago2.Caption:= 'SIM';
    end
    else
    FrmRelFaturadosPendentes.dbTextPago2.Caption:= 'NÃO';


    if Query1.FieldByName('PAGO3').AsString = 'True' then
    Begin
    FrmRelFaturadosPendentes.dbTextPago3.Caption:= 'SIM';
    end
    else
    FrmRelFaturadosPendentes.dbTextPago3.Caption:= 'NÃO'; }


    FrmRelFaturadosPendentes.QuickRep1.Preview;
    finally
    FrmRelFaturadosPendentes.Free;
    end;
end;

procedure TFrmConsultadeFaturadosPendentes.FormShow(Sender: TObject);
begin
DataI.Date:= Date -30;
DataF.Date:= Date;
//Query1.AutoRefresh:= True;
//btnAtualizaClick(Self);
end;

procedure TFrmConsultadeFaturadosPendentes.Query1CalcFields(
  DataSet: TDataSet);
var
a, b, totpend: double;
begin
   //////////
    if Query1PAGO1.Value = False then
    a:= Query1VALOR1.Value;

    if Query1PAGO2.Value = False then
    b:= Query1VALOR2.Value;

//    if Query1PAGO3.Value = False then
//    c:= Query1VALOR3.Value;

    totpend:= a+b;
    Query1TotPend.Value:= totpend;
   ///////////////O BLOCO ACIMA ESTAH FUNCIONANDO!

  if (Query1PAGO1.Value = true) and

     (Query1PAGO2.Value = true) then

      Query1TotPend.Value:= 0;


     if Query1['PAGO1']= Null then
     a:= 0;

     if Query1['PAGO2']= Null then
     b:= 0;

     totpend:= a+b;
     Query1TotPend.Value:= totpend;
end;

procedure TFrmConsultadeFaturadosPendentes.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
I : integer;
begin
  if query1.FieldByName('PAGO1').Value = true then
  if (Column.index = 5) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;
  dbgrid1.Columns.Items[6].Alignment:= taCenter;

  if query1.FieldByName('PAGO1').Value = false then
  if (Column.index = 5) then
  dbgrid1.Canvas.Brush.Color:= clRed;
  dbgrid1.Columns.Items[6].Alignment:= taCenter;

  if query1.FieldByName('PAGO2').Value = true then
  if (Column.index = 7) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;

  if query1.FieldByName('PAGO2').Value = false then
  if (Column.index = 7) then
  dbgrid1.Canvas.Brush.Color:= clRed;

{  if query1.FieldByName('PAGO3').Value = true then
  if (Column.index = 9) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;

  if query1.FieldByName('PAGO3').Value = false then
  if (Column.index = 9) then
  dbgrid1.Canvas.Brush.Color:= clRed; }

  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

end;

procedure TFrmConsultadeFaturadosPendentes.TotalizaPendenciasExecute(
  Sender: TObject);
var
soma: Double;
begin
    Query1.DisableControls;
    Query1.First;
    soma:= 0;
    while not Query1.Eof do
    begin
    soma:= soma+Query1.fieldbyname('TotPend').AsFloat;
    Query1.Next;
    end;
    edTotal.Caption:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
    Query1.EnableControls;
end;
      
procedure TFrmConsultadeFaturadosPendentes.btnSairClick(Sender: TObject);
begin
Panel1.Visible:= False;
btnFiltrar.Click;
end;

procedure TFrmConsultadeFaturadosPendentes.DBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key= vk_Return) or (Edit1.Text = '%') then
btnSair.Click;
end;

procedure TFrmConsultadeFaturadosPendentes.DBGrid1DblClick(
  Sender: TObject);
begin
//     //BUSCA TELA ORDEM DE SERVIÇO ......
//      try
//      Application.CreateForm(TFmPedidos, FmPedidos);
//      FmPedidos.edtFaturados.Text:= 'Fatura';
//      dmdados.Tbpedidos.Locate('Ped_E', FrmConsultadeFaturadosPendentes.DBGrid1.Columns.Items[0].Field.Text, []);
//      FmPedidos.ShowModal;
//      finally
//      FmPedidos.Free;
//      end;
end;

procedure TFrmConsultadeFaturadosPendentes.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    begin
    DBGrid1DblClick(self);
//    close;
    end;
end;

procedure TFrmConsultadeFaturadosPendentes.FormActivate(Sender: TObject);
begin
//Query1.AutoRefresh:= True;
//dmdados.Tbpedidos.Active:= False;
//dmdados.Tbpedidos.Active:= True;
//dmdados.Tbpedidos.Close;
//DmDados.Tbpedidos.AutoRefresh:= True;
//DmDados.Tbpedidos.ApplyUpdates;
//DmDados.Tbpedidos.FlushBuffers;
//Query1.CommitUpdates;
//Query1.FlushBuffers;
Query1.Close;
Query1.Open;
btnAtualizaClick(Self);
end;

procedure TFrmConsultadeFaturadosPendentes.btnTodosClick(Sender: TObject);
begin
Edit1.Text:= '%';
Panel1.Visible:= False;
btnFiltrar.Click;
end;

procedure TFrmConsultadeFaturadosPendentes.btnAtualizaClick(
  Sender: TObject);
begin
DmDados.Tbpedidos.Refresh;
Query1.FlushBuffers;
Query1.Close;
Query1.Open;
FrmConsultadeFaturadosPendentes.Repaint;
TotalizaPendenciasExecute(self);
end;

procedure TFrmConsultadeFaturadosPendentes.FormCreate(Sender: TObject);
begin
//btnAtualizaClick(Self);
end;

procedure TFrmConsultadeFaturadosPendentes.DataSource1DataChange(
  Sender: TObject; Field: TField);
begin
LabelPednumero.Caption:= Query1PED_NUMERO.AsString;
end;

end.
