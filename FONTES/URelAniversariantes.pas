unit URelAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, QRCtrls, QuickRpt, ExtCtrls,
  Buttons;

type
  TFrmConsultaAniversariantes = class(TForm)
    Button1: TButton;
    Qconsultaaniversario: TQuery;
    QconsultaaniversarioCod_cadastro: TFloatField;
    QconsultaaniversarioNome: TStringField;
    QconsultaaniversarioCargo: TStringField;
    QconsultaaniversarioRg: TStringField;
    QconsultaaniversarioCic: TStringField;
    QconsultaaniversarioPai: TStringField;
    QconsultaaniversarioMae: TStringField;
    QconsultaaniversarioData_nasc: TStringField;
    QconsultaaniversarioAno_nasc: TStringField;
    QconsultaaniversarioLocal_nasc: TStringField;
    QconsultaaniversarioUf: TStringField;
    QconsultaaniversarioEstado_civil: TStringField;
    QconsultaaniversarioConjuge: TStringField;
    QconsultaaniversarioProfissao: TStringField;
    QconsultaaniversarioEscolaridade: TStringField;
    QconsultaaniversarioData_batismo: TDateField;
    QconsultaaniversarioLocal_bastimo: TStringField;
    QconsultaaniversarioRua: TStringField;
    QconsultaaniversarioBairro: TStringField;
    QconsultaaniversarioCidade: TStringField;
    QconsultaaniversarioUf1: TStringField;
    QconsultaaniversarioCep: TStringField;
    QconsultaaniversarioTel: TStringField;
    QconsultaaniversarioObs: TMemoField;
    QconsultaaniversarioEmail: TStringField;
    QconsultaaniversarioCartao: TStringField;
    QconsultaaniversarioBatizado: TStringField;
    QconsultaaniversarioFoto: TGraphicField;
    QconsultaaniversarioDtcadastro: TDateField;
    QconsultaaniversarioSexo: TStringField;
    QconsultaaniversarioSituacao: TStringField;
    QconsultaaniversarioCelular: TStringField;
    QconsultaaniversarioSigla_congregacao: TStringField;
    QconsultaaniversarioIgrejaIn: TStringField;
    QconsultaaniversarioDtChegada: TDateField;
    QconsultaaniversarioMinistroIn: TStringField;
    QconsultaaniversarioCargoMinistroIn: TStringField;
    QconsultaaniversarioCidadeIn: TStringField;
    QconsultaaniversarioEstadoIn: TStringField;
    QconsultaaniversarioIgrejaOut: TStringField;
    QconsultaaniversarioDtPartida: TDateField;
    QconsultaaniversarioMinistroLocal: TStringField;
    QconsultaaniversarioCargoMinistroLocal: TStringField;
    QconsultaaniversarioSegundoMinistroLocal: TStringField;
    QconsultaaniversarioCargoSegundoMinistro: TStringField;
    QconsultaaniversarioCidadeOut: TStringField;
    QconsultaaniversarioEstadoOut: TStringField;
    QconsultaaniversarioDt_Nascimento: TDateField;
    lblMensagem: TLabel;
    lblTotalNiver: TLabel;
    QconsultaaniversarioDia_Nasc: TStringField;
    QconsultaaniversarioMes_Nasc: TStringField;
    btnImprimir: TSpeedButton;
    Panel2: TPanel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabelMes: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QryAniversario: TQuery;
    QryAniversarioNome: TStringField;
    QryAniversarioDia_nasc: TStringField;
    QryAniversarioMes_nasc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaAniversariantes: TFrmConsultaAniversariantes;

implementation

uses UFormAniversario;



{$R *.DFM}

procedure TFrmConsultaAniversariantes.Button1Click(Sender: TObject);
begin
(*qconsultaaniversario.Close;
qconsultaaniversario.sql.Clear ;
qconsultaaniversario.sql.Add ('Select * from Cadastro');
//qconsultaaniversario.sql.Add ('Where extract(month from Data_batismo)= :Mes');
qconsultaaniversario.sql.Add ('Where extract(month from Dt_Nascimento)= :Mes');
qconsultaaniversario.sql.Add ('order by Dia_Nasc');
qconsultaaniversario.ParamByName('Mes').AsInteger:= StrToInt(Combobox1.Text);
qconsultaaniversario.Open ;
if qconsultaaniversario.RecordCount = 0 then
lblMensagem.Caption:= 'Não existe Aniversariantes neste Mês' else
lblMensagem.Caption:= '';
//qconsultaaniversario.RecordCount > 0 then
lblTotalNiver.Caption:= 'Total de Aniversariantes: ' +InttoStr(qconsultaaniversario.RecordCount);*)
end;

procedure TFrmConsultaAniversariantes.btnImprimirClick(Sender: TObject);
begin
(*qconsultaaniversario.Close;
qconsultaaniversario.sql.Clear ;
qconsultaaniversario.sql.Add ('Select * from Cadastro');
//qconsultaaniversario.sql.Add ('Where extract(month from Data_batismo)= :Mes');
qconsultaaniversario.sql.Add ('Where extract(month from Dt_Nascimento)= :Mes');
qconsultaaniversario.sql.Add ('order by Dia_Nasc');
qconsultaaniversario.ParamByName('Mes').AsInteger:= StrToInt(Combobox1.Text);
qconsultaaniversario.Open ;  // abrindo a Query
//if qconsultaaniversario.RecordCount = 0 then
//lblMensagem.Caption:= 'Não existe Aniversariantes neste Mês' else
//lblMensagem.Caption:= '';
//qconsultaaniversario.RecordCount > 0 then
//lblTotalNiver.Caption:= 'Total de Aniversariantes: ' +InttoStr(qconsultaaniversario.RecordCount);
QuickRep1.Preview;*)
end;

end.
