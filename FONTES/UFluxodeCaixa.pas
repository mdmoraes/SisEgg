unit UFluxodeCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, DB, DBTables, Mask,
  DBCtrls, Bde, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, JvExMask, JvToolEdit,
  JvMaskEdit, EhLibVCL;

type
  TFrmFluxodeCaixa = class(TForm)
    GroupBox1: TGroupBox;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Label1: TLabel;
    btnFechar: TBitBtn;
    GroupBox2: TGroupBox;
    btnVendas: TSpeedButton;
    btnContasReceber: TSpeedButton;
    btnContasPagar: TSpeedButton;
    btnSaldo: TSpeedButton;
    btnRelatorio: TSpeedButton;
    qryVendas: TQuery;
    DataSource1: TDataSource;
    pgc1: TPageControl;
    tsVendas: TTabSheet;
    tsContasPagar: TTabSheet;
    tsContasReceber: TTabSheet;
    DBGridEh1: TDBGridEh;
    tbQuery1PED_CLIENTE: TStringField;
    qryVendasTOTAL: TCurrencyField;
    grp1: TGroupBox;
    lbl2: TLabel;
    edEntradas: TJvMaskEdit;
    lbl1: TLabel;
    edContasPagar: TJvMaskEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edContasReceber: TJvMaskEdit;
    edSaldo: TJvMaskEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    qryContasPagar: TQuery;
    dsContasPagar: TDataSource;
    tbContasPagarFORNECEDOR: TStringField;
    tbContasPagarTOTAL: TFloatField;
    dsContasReceber: TDataSource;
    qryContasReceber: TQuery;
    tb2: TFloatField;
    tbContasReceberCLIENTE: TStringField;
    tsPerdas: TTabSheet;
    DBGridEh4: TDBGridEh;
    dsPerdas: TDataSource;
    QueryPerdas: TQuery;
    tblQueryPerdasREF: TStringField;
    tblQueryPerdasDESCRICAO: TStringField;
    tblQueryPerdasTOTAL: TFloatField;
    btnPerdas: TSpeedButton;
    lbl5: TLabel;
    edPerdas: TJvMaskEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnContasReceberClick(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure btnSaldoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    Procedure ApagarTodosReg(Origem:TDataSet);
    procedure ParadoxPack(Table : TTable);
    procedure dbSaidasChange(Sender: TObject);
    procedure edEntradasChange(Sender: TObject);
    procedure dbDifSaldoChange(Sender: TObject);
    procedure edSaidasChange(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
    procedure btnPerdasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Soma;
    procedure Soma1;
//    Procedure ApagarTodosReg(Origem:TDataSet); overload;

  //  Procedure ApagarTodosReg;
  end;

var
  FrmFluxodeCaixa: TFrmFluxodeCaixa;
  Vendas,CPagar,CReceber, Saldo, VPerdas: Double;

implementation

uses UConsultaFaturamento, UConsultaDespesas, URelFluxodeCaixaNew, Base;

{$R *.dfm}

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

procedure TFrmFluxodeCaixa.Soma;
//var
//Soma:Double;
begin
//  Query1.DisableControls;
//  Query1.First;
//  soma := 0;
//  While not Query1.Eof do begin
//    soma:=soma+Query1.Fieldbyname('PED_LUCRO').asFloat;
//    Query1.Next;
//  End;
//  edEntradas.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//  //  lblTotalValor.Caption:= Format('%8.2f', soma);
//  Query1.EnableControls;
end;

procedure TFrmFluxodeCaixa.Soma1;
//var
//Soma1: Double;
begin
//  Query2.DisableControls;
//  Query2.First;
//  soma1 := 0;
//  While not Query2.Eof do begin
//    soma1:=soma1+Query2.Fieldbyname('VALOR').asFloat;
//    Query2.Next;
//  End;
//  edSaidas.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma1);
////  lblTotalValor.Caption:= Format('%8.2f', soma);
//  Query2.EnableControls;
end;


procedure TFrmFluxodeCaixa.btnFecharClick(Sender: TObject);
begin
//btnFaturamento.Enabled:= True;
//DMHotel.TFluxodeCaixa.Close;
//DMHotel.TFluxodeCaixa.Active:= False;
//ParadoxPack(DMHotel.TFluxodeCaixa);
//DMHotel.TFluxodeCaixa.Active:= True;
//DMHotel.TFluxodeCaixa.Open;
//ApagarTodosReg(DMHotel.TFluxodeCaixa);
Close;
end;

procedure TFrmFluxodeCaixa.btnVendasClick(Sender: TObject);
var
  somaVendas : Double;

begin
      pgc1.ActivePageIndex := 0;
      qryVendas.Close;
      qryVendas.ParamByName('VarDataI').AsDate:=DataI.Date;
      qryVendas.ParamByName('VarDataF').AsDate:=DataF.Date;
      qryVendas.Prepare;
      qryVendas.Open;

      //soma vendas
      qryVendas.DisableControls;
      qryVendas.First;
      somaVendas := 0;
      While not qryVendas.Eof do begin
        somaVendas:=somaVendas+qryVendas.Fieldbyname('TOTAL').asFloat;
        qryVendas.Next;
      End;
      edEntradas.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somaVendas);
    //  lblTotalValor.Caption:= Format('%8.2f', soma);
      qryVendas.EnableControls;

      btnSaldoClick(self);
      qryVendas.First;

end;

procedure TFrmFluxodeCaixa.btnContasReceberClick(Sender: TObject);
var
  somaContasReceber : Double;

begin
      pgc1.ActivePageIndex := 2;

      qryContasReceber.Close;
      qryContasReceber.ParamByName('VarDataI').AsDate:=DataI.Date;
      qryContasReceber.ParamByName('VarDataF').AsDate:=DataF.Date;
      qryContasReceber.Prepare;
      qryContasReceber.Open;


      //soma ContasReceber
      qryContasReceber.DisableControls;
      qryContasReceber.First;
      somaContasReceber := 0;
      While not qryContasReceber.Eof do
      begin
        somaContasReceber:=somaContasReceber+qryContasReceber.Fieldbyname('TOTAL').asFloat;
        qryContasReceber.Next;
      End;
      edContasReceber.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somaContasReceber);
      qryContasReceber.EnableControls;

      btnSaldoClick(self);
      qryContasReceber.First;
end;

procedure TFrmFluxodeCaixa.btnCalculaClick(Sender: TObject);
begin
{    begin
    dmhotel.TFluxodeCaixa.Edit;
    dmhotel.TFluxodeCaixaTotalFaturamento.Value:=
    dmhotel.TFluxodeCaixaVrEntradas.Value;
    dmhotel.TFluxodeCaixa.Post;
    end;

    begin
    dmhotel.TFluxodeCaixa.Edit;
    dmhotel.TFluxodeCaixaTotalDespesas.Value:=
    dmhotel.TFluxodeCaixaVrSaida.Value;
    dmhotel.TFluxodeCaixa.Post;
    end; }

//Soma;
//Soma1;
end;

procedure TFrmFluxodeCaixa.btnSaldoClick(Sender: TObject);
//var
//Vendas,CPagar,CReceber, Saldo: Double;
begin
edEntradas.Text:= FloatToStr(StringToFloat(edEntradas.Text));

edContasPagar.Text:= FloatToStr(StringToFloat(edContasPagar.Text));

edContasReceber.Text:= FloatToStr(StringToFloat(edContasReceber.Text));

edPerdas.Text:= FloatToStr(StringToFloat(edPerdas.Text));


//coloquei func acima
Vendas:= StrToFloat(edEntradas.Text);

CPagar := StrToFloat(edContasPagar.Text);

CReceber := StrToFloat(edContasReceber.Text);

VPerdas := StrToFloat(edPerdas.Text);

Saldo:= (Vendas - CPagar + (CReceber-Vendas) - VPerdas);

edSaldo.Text:= FloatToStr(Saldo);

if (Saldo) >= 0 then
edSaldo.Font.Color:= clBlue;

if (Saldo) < 0 then
edSaldo.Font.Color:= clRed;


edEntradas.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', StrToFloat(edEntradas.Text));
edContasPagar.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', StrToFloat(edContasPagar.Text));
edContasReceber.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', StrToFloat(edContasReceber.Text));

edPerdas.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', StrToFloat(edPerdas.Text));
edSaldo.Text := 'R$' + ' ' + FormatFloat('#,##0.00', StrToFloat(edSaldo.Text));

end;

procedure TFrmFluxodeCaixa.FormShow(Sender: TObject);
begin
DataI.Date:=Date - 30;
DataF.Date:=Date;
//DMHotel.TFluxodeCaixa.Active:= True;
end;

procedure TFrmFluxodeCaixa.btnRelatorioClick(Sender: TObject);
begin
      Try
      Application.CreateForm(TQrFluxoCaixa, QrFluxoCaixa);
  //    FrmRelFluxodeCaixa.lblRotuloRel.Caption:= 'RELATÓRIO: FLUXO DE CAIXA';
      QrFluxoCaixa.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
      QrFluxoCaixa.lblTotEntrada.Caption:= edEntradas.Text;
      QrFluxoCaixa.lblTotContasPagar.Caption:=  edContasPagar.Text;
      QrFluxoCaixa.lblContasReceber.Caption:= edContasReceber.Text;

      QrFluxoCaixa.lblTotalPerdas.Caption:= edPerdas.Text;

      if Saldo >= 0 then
      begin
      QrFluxoCaixa.lblSaldo.Font.Color := clBlue;
      QrFluxoCaixa.lblSaldo.Caption:= edSaldo.Text;
      end;

      if Saldo < 0 then
      begin
      QrFluxoCaixa.lblSaldo.Font.Color := clRed;
      QrFluxoCaixa.lblSaldo.Caption:= edSaldo.Text;
      end;

      QrFluxoCaixa.Preview;
      Finally
      QrFluxoCaixa.Free;
      end;
end;

Procedure TFrmFluxodeCaixa.ApagarTodosReg(Origem:TDataSet);
Begin
//With Origem do
// While RecordCount > 0 do
//Delete;
End;

procedure TFrmFluxodeCaixa.ParadoxPack(Table : TTable);
//var
//TBDesc : CRTblDesc;
//hDb: hDbiDb;
//TablePath: array[0..dbiMaxPathLen] of char;
begin
(*//Table.Open;
//FillChar(TBDesc,Sizeof(TBDesc),0);
with TBDesc do
begin
StrPCopy(szTblName,Table.TableName);
StrPCopy(szTblType,szParadox);
bPack := True;
end;
hDb := nil;
Check(DbiGetDirectory(Table.DBHandle, True, TablePath));
Table.Close;
Check(DbiOpenDatabase(nil, 'STANDARD', dbiReadWrite, dbiOpenExcl,nil,0, nil,
nil, hDb));
Check(DbiSetDirectory(hDb, TablePath));
Check(DBIDoRestructure(hDb,1,@TBDesc,nil,nil,nil,False));
Table.Open; *)
end;

procedure TFrmFluxodeCaixa.dbSaidasChange(Sender: TObject);
begin
(*dmhotel.TFluxodeCaixa.Edit;
dmhotel.TFluxodeCaixaSaldo.Value:=
(dmhotel.TFluxodeCaixaTotalFaturamento.Value - dmhotel.TFluxodeCaixaTotalDespesas.Value);
dmhotel.TFluxodeCaixa.Post;
edDifSaldo.Text:= dmhotel.TFluxodeCaixaSaldo.AsString;
edDifSaldo.Text:= 'R$' + ' ' +  FormatFloat('#,##0.00', StrToFloat(edDifSaldo.Text)); *)
end;

procedure TFrmFluxodeCaixa.edEntradasChange(Sender: TObject);
begin
//edEntradas1.Text:= edEntradas.Text;

{edEntradas.Text := Format('%*.*s', [edEntradas.width,
length(Trim(edEntradas.text)), TRIM(edEntradas.text)]);
edEntradas.SelStart := length(edEntradas.text)+1; }


end;

procedure TFrmFluxodeCaixa.dbDifSaldoChange(Sender: TObject);
begin
{if edDifSaldo.Text < IntToStr(0) then
begin
edDifSaldo.Font.Color:= clRed;
end;

if edDifSaldo.Text >= IntToStr(0) then
begin
edDifSaldo.Font.Color:= clBlue;
end; }

{edDifSaldo.Text := Format('%*.*s', [edDifSaldo.width,
length(Trim(edDifSaldo.text)), TRIM(edDifSaldo.text)]);
edDifSaldo.SelStart := length(edDifSaldo.text)+1;}
end;

procedure TFrmFluxodeCaixa.edSaidasChange(Sender: TObject);
begin
{edSaidas.Text := Format('%*.*s', [edSaidas.width,
length(Trim(edSaidas.text)), TRIM(edSaidas.text)]);
edSaidas.SelStart := length(edSaidas.text)+1; }
end;

procedure TFrmFluxodeCaixa.btnContasPagarClick(Sender: TObject);
var
  somaContasPagar : Double;
begin
      pgc1.ActivePageIndex := 1;

      qryContasPagar.Close;
      qryContasPagar.ParamByName('VarDataI').AsDate:=DataI.Date;
      qryContasPagar.ParamByName('VarDataF').AsDate:=DataF.Date;
      qryContasPagar.Prepare;
      qryContasPagar.Open;

      //soma ContasPagar
      qryContasPagar.DisableControls;
      qryContasPagar.First;
      somaContasPagar := 0;
      While not qryContasPagar.Eof do begin
        somaContasPagar:=somaContasPagar+qryContasPagar.Fieldbyname('TOTAL').asFloat;
        qryContasPagar.Next;
      End;
      edContasPagar.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somaContasPagar);
      qryContasPagar.EnableControls;

      btnSaldoClick(self);
      qryContasPagar.First;

end;

procedure TFrmFluxodeCaixa.btnPerdasClick(Sender: TObject);
var
  somaPerdas: Double;
begin
      pgc1.ActivePageIndex := 3;
      QueryPerdas.Close;
      QueryPerdas.ParamByName('VarDataI').AsDate:=DataI.Date;
      QueryPerdas.ParamByName('VarDataF').AsDate:=DataF.Date;
      QueryPerdas.Prepare;
      QueryPerdas.Open;

      //soma vendas
      QueryPerdas.DisableControls;
      QueryPerdas.First;
      somaPerdas := 0;
      While not QueryPerdas.Eof do begin
        somaPerdas:=somaPerdas+QueryPerdas.Fieldbyname('TOTAL').asFloat;
        QueryPerdas.Next;
      End;
      edPerdas.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', somaPerdas);
    //  lblTotalValor.Caption:= Format('%8.2f', soma);
      QueryPerdas.EnableControls;

      btnSaldoClick(self);
      QueryPerdas.First;

end;

end.
