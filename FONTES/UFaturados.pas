unit UFaturados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, StdCtrls;

type
  TFrmFaturados = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1PED_DATA: TDateField;
    Query1PED_CLIENTE: TStringField;
    Query1VENCIMENTO1: TDateField;
    Query1VENCIMENTO2: TDateField;
    Query1VALOR1: TCurrencyField;
    Query1VALOR2: TCurrencyField;
    btnFechar: TSpeedButton;
    Query1PAGO1: TBooleanField;
    Query1PAGO2: TBooleanField;
    GroupBox1: TGroupBox;
    edpendencia: TEdit;
    Query1TotPend: TCurrencyField;
    Query1DTPGT1: TDateField;
    Query1DTPGT2: TDateField;
    Query1PED_E: TIntegerField;
    Query1PED_VRFINAL: TCurrencyField;
    Query1TOTALPARCIAL: TCurrencyField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edpendenciaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Soma;
  end;

var
  FrmFaturados: TFrmFaturados;
  Soma:Double;

implementation

uses Base, UPedidos;

{$R *.dfm}

procedure TFrmFaturados.Soma;
var
Soma: Double;
begin
  query1.DisableControls;
  query1.First;
  soma := 0;
  While not query1.Eof do begin
    soma:=soma+query1.FieldValues['TotPend'];
    Query1.Next;
  End;
  edpendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
  Query1.EnableControls;
end;

procedure TFrmFaturados.btnFecharClick(Sender: TObject);
begin
close;
//FmPedidos.lokcomboFormaPag.SetFocus; 08032014

end;

procedure TFrmFaturados.FormShow(Sender: TObject);
begin
Soma;
query1.First;
end;

procedure TFrmFaturados.Query1CalcFields(DataSet: TDataSet);
var
a, b, totparcial, totpend: double;
begin
    totparcial:= Query1TOTALPARCIAL.Value;
    if Query1PAGO1.Value = False then
    a:= Query1VALOR1.Value;

    if Query1PAGO2.Value = False then
    b:= Query1VALOR2.Value;

//    if Query1PAGO3.Value = False then
//    c:= Query1VALOR3.Value;

    totpend:= a+b;
    Query1TotPend.Value:= totpend;
    Query1TotPend.Value:=
    (Query1TotPend.Value- totparcial);
   ///////////////O BLOCO ACIMA ESTAH FUNCIONANDO!

  if (Query1PAGO1.Value = true) and

     (Query1PAGO2.Value = true) then

     Query1TotPend.Value:= 0;

     //////////////////////////////////////////
 //  if tbVisitado['Saida'] <> null then


     if Query1['PAGO1']= Null then
     a:= 0;

     if Query1['PAGO2']= Null then
     b:= 0;

     totpend:= a+b;
     Query1TotPend.Value:= totpend;
     Query1TotPend.Value:=
    (Query1TotPend.Value- totparcial);
end;

procedure TFrmFaturados.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   { if query1.FieldByName('PAGO1').Value = FALSE then
    begin
    DbGrid1.Canvas.Font.Color := clRed;
    DbGrid1.Canvas.Font.Style := [fsBold];
    end;
    DbGrid1.DefaultDrawDataCell(Rect, Field, State);}
end;

procedure TFrmFaturados.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
I : integer;
begin
  if query1.FieldByName('PAGO1').Value = true then
  if (Column.index = 7) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;
  dbgrid1.Columns.Items[7].Alignment:= taCenter;

  if query1.FieldByName('PAGO1').Value = false then
  if (Column.index = 7) then
  dbgrid1.Canvas.Brush.Color:= clRed;
  dbgrid1.Columns.Items[7].Alignment:= taCenter;

  if query1.FieldByName('PAGO2').Value = true then
  if (Column.index = 11) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;

  if query1.FieldByName('PAGO2').Value = false then
  if (Column.index = 11) then
  dbgrid1.Canvas.Brush.Color:= clRed;

  {  if query1.FieldByName('PAGO3').Value = true then
  if (Column.index = 12) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;

  if query1.FieldByName('PAGO3').Value = false then
  if (Column.index = 12) then
  dbgrid1.Canvas.Brush.Color:= clRed; }

  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFrmFaturados.edpendenciaChange(Sender: TObject);
begin         //alinha edit à Direita...eh móle !!!
edpendencia.Text := Format('%*.*s', [edpendencia.width,
length(Trim(edpendencia.text)), TRIM(edpendencia.text)]);
edpendencia.SelStart := length(edpendencia.text)+1;
end;

end.
