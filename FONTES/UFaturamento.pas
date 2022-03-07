unit UFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, Buttons, StdCtrls, ComCtrls;

type
  TFrmFaturamento = class(TForm)
    QryFaturamento: TQuery;
    DBGrid1: TDBGrid;
    dsFaturamento: TDataSource;
    SpeedButton1: TSpeedButton;
    QryFaturamentoPed_Data: TDateField;
    QryFaturamentoTOT_LUCRO: TCurrencyField;
    btnRelatorio: TBitBtn;
    GroupBox1: TGroupBox;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edTotalPedidos: TEdit;
    Label8: TLabel;
    edTotalLucros: TEdit;
    QryFaturamentoTOT_PEDIDO: TCurrencyField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Soma;
    procedure Soma1;

  end;

var
  FrmFaturamento: TFrmFaturamento;
  Soma:Double;
  Soma1:Double;

implementation

uses Base, URelLucros;

{$R *.dfm}

procedure TFrmFaturamento.Soma;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
Soma: Double;
//Soma
begin
  QryFaturamento.DisableControls;
  QryFaturamento.First;
  soma := 0;
  While not QryFaturamento.Eof do begin
    soma:=soma+QryFaturamento.Fieldbyname('TOT_PEDIDO').asFloat;
    QryFaturamento.Next;
  End;
  edTotalPedidos.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryFaturamento.EnableControls;
end;

procedure TFrmFaturamento.Soma1;
var
Soma1: Double;
begin
  QryFaturamento.DisableControls;
  QryFaturamento.First;
  soma1 := 0;
  While not QryFaturamento.Eof do begin
    soma1:=soma1+QryFaturamento.Fieldbyname('TOT_LUCRO').asFloat;
//    soma:=soma+QryComissao.FieldValues('PED_VRFINAL').
    QryFaturamento.Next;
  End;
  edTotalLucros.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma1);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryFaturamento.EnableControls;
end;

procedure TFrmFaturamento.SpeedButton1Click(Sender: TObject);
begin
//if message('Deseja Fechar'); idYes=ok then
close;
//else abort.
end;

procedure TFrmFaturamento.btnRelatorioClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmRelLucros, FrmRelLucros);
    FrmRelLucros.lblRotuloPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
    FrmRelLucros.QuickRepRelLucros.Preview;
    Finally
    FrmRelLucros.Free;
    end;
end;

procedure TFrmFaturamento.SpeedButton2Click(Sender: TObject);
begin
    QryFaturamento.Close;
    QryFaturamento.ParamByName('VarDataI').AsDate:=DataI.Date;
    QryFaturamento.ParamByName('VarDataF').AsDate:=DataF.Date;
    QryFaturamento.Prepare;
    QryFaturamento.Open;
 //   End;
      if QryFaturamento.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada neste período!');
      End;
      Soma;
      Soma1;
end;

procedure TFrmFaturamento.FormShow(Sender: TObject);
begin
DataI.Date:=Date-30;
DataF.Date:=Date;
end;

end.
