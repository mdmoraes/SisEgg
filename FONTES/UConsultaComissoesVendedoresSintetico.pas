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
SHOWMESSAGE('EDI��O N�O PERMITIDA' +#13+
            'ESTA � UMA TELA DE CONSULTA!');
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
       ShowMessage('NENHUMA INFORMA��O FOI ENCONTRADA NESTE PER�ODO!');
       EXIT;
      End;

      FrmRelComissoesVendSintetico.lblTitulo.Caption:= 'RELAT�RIO: COMISS�ES TODOS OS VENDEDORES - SINT�TICO.';
      FrmRelComissoesVendSintetico.lblPeriodo.Caption:= 'NO PER�ODO DE:  ' + DateToStr(DataI.Date)+ '  �  ' + DateToStr(DataF.Date);
      FrmRelComissoesVendSintetico.QuickRep1.Preview;
      finally
      FrmRelComissoesVendSintetico.Free;
      end;
end;

end.
