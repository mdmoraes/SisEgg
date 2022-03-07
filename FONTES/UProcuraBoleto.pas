unit UProcuraBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, DB,
  DBTables;

type
  TFrmProcurarBoleto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DataIni: TDateTimePicker;
    DataFim: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1NUMPED: TIntegerField;
    Query1DATAPED: TDateField;
    Query1CLIENTE: TStringField;
    Query1VRTOTPED: TCurrencyField;
    Query1DATA1PARC: TDateField;
    Query1VR1: TCurrencyField;
    Query1DATA2PARC: TDateField;
    Query1VR2: TCurrencyField;
    Query1DATA3PARC: TDateField;
    Query1VR3: TCurrencyField;
    Query1PAGO1: TBooleanField;
    Query1PAGO2: TBooleanField;
    Query1PAGO3: TBooleanField;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    btnFechar: TBitBtn;
    Label6: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure DataFimCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataIniCloseUp(Sender: TObject);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcurarBoleto: TFrmProcurarBoleto;

implementation

uses Base;

{$R *.dfm}

procedure TFrmProcurarBoleto.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmProcurarBoleto.DataFimCloseUp(Sender: TObject);
begin
if DataFim.Date < DataIni.Date then
showmessage('A DATA FINAL NÃO PODE SER MENOR QUE A INICIAL !');
DataFim.Date:= DataIni.Date;
end;

procedure TFrmProcurarBoleto.FormShow(Sender: TObject);
begin
DataIni.Date:= Date-30;
DataFim.Date:= Date;
end;

procedure TFrmProcurarBoleto.SpeedButton1Click(Sender: TObject);
begin
    Query1.Close;
    Query1.ParamByName('VARDATAINI').AsDate:=DataIni.Date;
    Query1.ParamByName('VARDATAFIM').AsDate:=DataFim.Date;
    Query1.ParamByName('VARCLIENTE').AsString:= Edit1.Text+'%';
    Query1.Prepare;
    Query1.Open;
 //   End;
    if Query1.RecordCount=0 then
      Begin
       ShowMessage('NENHUMA INFORMAÇÃO FOI ENCONTRADA NESTE PERÍODO!');
      End;
end;

procedure TFrmProcurarBoleto.DataIniCloseUp(Sender: TObject);
begin
{if  DataIni.Date > DataFim.Date then
showmessage('A DATA INICIAL NÃO PODE SER MAIOR QUE A FINAL !');
DataIni.Date:= DataFim.Date -30;}
end;

procedure TFrmProcurarBoleto.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
{IF DBGRID1.SelectedIndex = 0 THEN
SHOWMESSAGE('CLIQUE DUPLO NO PEDIDO, LOCALIZA O BOLETO !');}
end;

procedure TFrmProcurarBoleto.DBGrid1DblClick(Sender: TObject);
begin
IF dmdados.TPendenciasBoleto.Locate('NumPed', DBGRID1.Columns.Items[0].Field.text, []) then
   FrmProcurarBoleto.Close;
end;

procedure TFrmProcurarBoleto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
I : integer;
begin

  if query1.FieldByName('PAGO1').Value = true then
  if (Column.index = 4) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;
  dbgrid1.Columns.Items[4].Alignment:= taCenter;

  if query1.FieldByName('PAGO1').Value = False then
  if (Column.index = 4) then
  dbgrid1.Canvas.Brush.Color:= clRed;
  dbgrid1.Columns.Items[4].Alignment:= taCenter;

  if query1.FieldByName('PAGO2').Value = true then
  if (Column.index = 6) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;

  if query1.FieldByName('PAGO2').Value = False then
  if (Column.index = 6) then
  dbgrid1.Canvas.Brush.Color:= clRed;

  if query1.FieldByName('PAGO3').Value = true then
  if (Column.index = 8) then
  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;

  if query1.FieldByName('PAGO3').Value = False then
  if (Column.index = 8) then
  dbgrid1.Canvas.Brush.Color:= clRed;

  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

end;

procedure TFrmProcurarBoleto.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
DBGrid1DblClick(self);
end;

end.
