unit UConsultaComissoesVendedoresSintetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, Buttons, StdCtrls, DBTables, Grids, DBGrids;

type
  TFrmConsultaComissoesVendedoresSintetico = class(TForm)
    QryComVendedoresSint: TQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btnAplicar: TSpeedButton;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    QryComVendedoresSintTOTVRFINAL: TCurrencyField;
    QryComVendedoresSintPED_VENDEDOR: TStringField;
    QryComVendedoresSintVRCOMISSAO: TCurrencyField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaComissoesVendedoresSintetico: TFrmConsultaComissoesVendedoresSintetico;

implementation

uses URelComissoesVendedoresSintetico;

{$R *.dfm}

procedure TFrmConsultaComissoesVendedoresSintetico.DBGrid1CellClick(
  Column: TColumn);
begin
SHOWMESSAGE('EDIÇÃO NÃO PERMITIDA' +#13+
            'ESTA É UMA TELA DE CONSULTA!');
EXIT;
end;

procedure TFrmConsultaComissoesVendedoresSintetico.FormShow(
  Sender: TObject);
begin
DataI.Date:=Date-30;
DataF.Date:=Date;
end;

procedure TFrmConsultaComissoesVendedoresSintetico.btnAplicarClick(
  Sender: TObject);
begin
      TRY
      application.CreateForm(TFrmRelComissoesVendSintetico, FrmRelComissoesVendSintetico);
      QryComVendedoresSint.Close;
      QryComVendedoresSint.ParamByName('VarDataI').AsDate:=DataI.Date;
      QryComVendedoresSint.ParamByName('VarDataF').AsDate:=DataF.Date;
      QryComVendedoresSint.Prepare;
      QryComVendedoresSint.Open;

      if QryComVendedoresSint.RecordCount=0 then
      Begin
       ShowMessage('NENHUMA INFORMAÇÃO FOI ENCONTRADA NESTE PERÍODO!');
       EXIT;
      End;

      FrmRelComissoesVendSintetico.lblTitulo.Caption:= 'RELATÓRIO: COMISSÕES TODOS OS VENDEDORES - SINTÉTICO.';
      FrmRelComissoesVendSintetico.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
      FrmRelComissoesVendSintetico.QuickRep1.Preview;
      finally
      FrmRelComissoesVendSintetico.Free;
      end;
end;

end.
