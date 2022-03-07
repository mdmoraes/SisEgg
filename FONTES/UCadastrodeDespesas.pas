unit UCadastrodeDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ActnList, Mask, DB,
  DBTables, Bde, ExtCtrls;

type
  TFrmCadastrodeDespesas = class(TForm)
    btnFechar: TBitBtn;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    btnImprimir: TSpeedButton;
    PageControl1: TPageControl;
    TbJaneiro: TTabSheet;
    tbFevereiro: TTabSheet;
    tbMarco: TTabSheet;
    tbAbril: TTabSheet;
    tbmaio: TTabSheet;
    tbJunho: TTabSheet;
    tbJulho: TTabSheet;
    tbAgosto: TTabSheet;
    tbsetembro: TTabSheet;
    tbOutubro: TTabSheet;
    tbNovembro: TTabSheet;
    tbDezembro: TTabSheet;
    edAno: TEdit;
    Label4: TLabel;
    UpDown2: TUpDown;
    edsoAno: TEdit;
    DataSource1: TDataSource;
    Table1: TTable;
    Table1Cod_Desp: TAutoIncField;
    Table1Data_Desp: TDateField;
    Table1Descricao: TStringField;
    Table1Valor: TCurrencyField;
    edMes: TEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    TotalizaDespesas: TAction;
    Panel2: TPanel;
    edTotal: TLabel;
    lblTotal: TLabel;
    editTotal: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure edAnoChange(Sender: TObject);
    procedure Table1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure edMesChange(Sender: TObject);
    procedure TotalizaDespesasExecute(Sender: TObject);
    procedure Table1BeforePost(DataSet: TDataSet);
    procedure Table1AfterDelete(DataSet: TDataSet);
    procedure Table1Data_DespValidate(Sender: TField);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrodeDespesas: TFrmCadastrodeDespesas;

implementation

uses UDMUsuario, Base, URelDespesas;

{$R *.dfm}
function Padr(s:string; n:integer): string;
begin
  Result:=Format('%' + IntToStr(n) + '.' + IntToStr(n) + 's', [s]);
end;

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

procedure TFrmCadastrodeDespesas.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCadastrodeDespesas.FormShow(Sender: TObject);
var
Ano, Mes, Dia: Integer;

begin                           // 01/02/2000
//Pegar Ano e Mês do Sistema.
Dia:= StrToInt(Copy(DateToStr(date),1,2));
Mes:= StrToInt(Copy(DateToStr(date),4,2));
Ano:= StrToInt(Copy(DateToStr(date),7,4));

edMes.Text:= IntToStr(Mes);
edAno.Text:= IntToStr(Ano);
PageControl1.ActivePageIndex:= Mes -1;
//
DataI.Date:= Date -Dia +1;
DataF.Date:= Date;

//edMes.Text:= '01';
TotalizaDespesasExecute(self);
end;

procedure TFrmCadastrodeDespesas.btnImprimirClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmRelDespesas, FrmRelDespesas);
    FrmRelDespesas.Query1.Close;
    FrmRelDespesas.Query1.ParamByName('VarDataI').AsDate:=DataI.Date;
    FrmRelDespesas.Query1.ParamByName('VarDataF').AsDate:=DataF.Date;
    FrmRelDespesas.Query1.Prepare;
    FrmRelDespesas.Query1.Open;
    FrmRelDespesas.lblTituloRel.Caption:= 'RELATÓRIO DE DESPESAS';
    FrmRelDespesas.lblPeriodoRel.Caption:=
    'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
    FrmRelDespesas.QuickRep1.Preview;
 //   End;
      if FrmRelDespesas.Query1.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada neste período!');
      End;
    finally
    FrmRelDespesas.QuickRep1.Free;
    end;
end;

procedure TFrmCadastrodeDespesas.PageControl1Change(Sender: TObject);
begin
if PageControl1.ActivePageIndex = 0 then
edMes.Text:= '01'
else
if PageControl1.ActivePageIndex = 1 then
edMes.Text:= '02'
else
if PageControl1.ActivePageIndex = 2 then
edMes.Text:= '03'
else
if PageControl1.ActivePageIndex = 3 then
edMes.Text:= '04'
else
if PageControl1.ActivePageIndex = 4 then
edMes.Text:= '05'
else
if PageControl1.ActivePageIndex = 5 then
edMes.Text:= '06'
else
if PageControl1.ActivePageIndex = 6 then
edMes.Text:= '07'
else
if PageControl1.ActivePageIndex = 7 then
edMes.Text:= '08'
else

if PageControl1.ActivePageIndex = 8 then
edMes.Text:= '09'
else

if PageControl1.ActivePageIndex = 9 then
edMes.Text:= '10'
else

if PageControl1.ActivePageIndex = 10 then
edMes.Text:= '11'
else

if PageControl1.ActivePageIndex = 11 then
edMes.Text:= '12';

TotalizaDespesasExecute(self);
end;
                      
procedure TFrmCadastrodeDespesas.edAnoChange(Sender: TObject);
begin

edsoAno.Text:= edAno.Text;
edsoAno.Text:= FloatToStr(StringToFloat(edsoAno.Text));

Table1.Active:= false;
Table1.Active:= True;
TotalizaDespesasExecute(self);
end;

procedure TFrmCadastrodeDespesas.Table1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
Dia, Mes, Ano: word;
vAno, vMes: Integer;
begin
vAno:= StrToInt(edsoAno.Text);
vMes:= StrToInt(edMes.Text);
//StrToIntRange            edsoAno

    //    vAno:= StrToInt(FrmCadastrodeDespesas.edAno.Text);
    Accept := false;
    DecodeDate(Table1['Data_Desp'],Ano,Mes,Dia);
    if (Mes=vMes) and (Ano=vAno) then
    Accept := True;
end;

procedure TFrmCadastrodeDespesas.Table1AfterPost(DataSet: TDataSet);
begin
DBISaveChanges((DataSet as TTable).Handle);
TotalizaDespesasExecute(self);
end;

procedure TFrmCadastrodeDespesas.edMesChange(Sender: TObject);
begin
Table1.Active:= false;
Table1.Active:= True;
end;

procedure TFrmCadastrodeDespesas.TotalizaDespesasExecute(Sender: TObject);
var
soma: Double;
begin
    Table1.DisableControls;
    Table1.First;
    soma:= 0;
    while not Table1.Eof do
    begin
    soma:= soma+Table1.fieldbyname('Valor').AsFloat;
    Table1.Next;
    end;
    edTotal.Caption:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//    editTotal.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
    Table1.EnableControls;
end;

procedure TFrmCadastrodeDespesas.Table1BeforePost(DataSet: TDataSet);
begin
if Table1Data_Desp.AsString = '' then
  raise Exception.Create('DATA NÃO PODE FICAR EM BRANCO.');
//TotalizaDespesasExecute(self);
end;

procedure TFrmCadastrodeDespesas.Table1AfterDelete(DataSet: TDataSet);
begin
TotalizaDespesasExecute(self);
Table1.Active:= false;
Table1.Active:= True;
end;

procedure TFrmCadastrodeDespesas.Table1Data_DespValidate(Sender: TField);
begin
//if TblQuantidade.Value <= 0 then
//if Table1Data_Desp.AsString = '' then
//  raise Exception.Create('DATA NÃO PODE FICAR EM BRANCO.');
end;

procedure TFrmCadastrodeDespesas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   //PINTANDO A GRID...GRID ZEBRADA...
    if not odd(DbGrid1.DataSource.DataSet.RecNo) then
    if not (gdSelected in State) then
      With DBGrid1 do
      begin
        Canvas.Brush.Color:= $00EFFAE5; //cor verde claro
        Canvas.FillRect(Rect);          //pinta a célula
        DefaultDrawDataCell(Rect,Column.Field,State); //pinta o texto
      end;
end;

procedure TFrmCadastrodeDespesas.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = 13 then
          DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1;

        if key = 27 then
          DBGrid1.SelectedIndex := DBGrid1.SelectedIndex - 1;

//              if (key = 38) or (key = 40) then
//      Table1.CanceL;

      if key = 38 then Table1.prior;
      if Key = 40 then Table1.Next;


//      fdm.tbentradaitem.cancel;

end;

end.
