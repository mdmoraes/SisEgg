unit UConsultaContasaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TFrmConsultaContasPagarPendentes = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    btnFechar: TBitBtn;
    Query1FAVORECIDO: TStringField;
    Query1BANCO: TStringField;
    Query1AGENCIA: TStringField;
    Query1DATAPAGTO: TDateField;
    Query1NUMCHEQUE: TStringField;
    Query1VALOR: TCurrencyField;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btnFiltrar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    edTotalPedidos: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure Soma;
  end;

var
  FrmConsultaContasPagarPendentes: TFrmConsultaContasPagarPendentes;
  Soma:Double;

implementation

uses URelatorioContasapagar;

{$R *.dfm}

procedure TFrmConsultaContasPagarPendentes.Soma;
var
Soma: Double;
//Soma
begin
  Query1.DisableControls;
  Query1.First;
  soma := 0;
  While not Query1.Eof do begin
    soma:=soma+Query1.Fieldbyname('VALOR').asFloat;
    Query1.Next;
  End;
  edTotalPedidos.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  Query1.EnableControls;
end;




procedure TFrmConsultaContasPagarPendentes.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaContasPagarPendentes.FormShow(Sender: TObject);
begin
DataI.Date:= Date;
DataF.Date:= Date;
end;

procedure TFrmConsultaContasPagarPendentes.btnFiltrarClick(
  Sender: TObject);
begin
    Query1.Close;
    Query1.ParamByName('VarDataI').AsDate:=DataI.Date;
    Query1.ParamByName('VarDataF').AsDate:=DataF.Date;
    Query1.Prepare;
    Query1.Open;
 //   End;
      if Query1.RecordCount=0 then
      Begin
       ShowMessage('Sem Informação no período Informado!');
      End;
      Soma;

end;

procedure TFrmConsultaContasPagarPendentes.SpeedButton1Click(
  Sender: TObject);
begin

      try
      application.CreateForm(TFrmRelatorioContasaPagar, FrmRelatorioContasaPagar);
      FrmRelatorioContasaPagar.rotuloperiodo.Caption:=
      'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
      FrmRelatorioContasaPagar.rotuloTotal.Caption:= edTotalPedidos.Text;
      FrmRelatorioContasaPagar.QuickRep1.Preview;
      finally
      FrmRelatorioContasaPagar.Free;
      end;

end;

end.
