unit UFrmRelatorioContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, JvExStdCtrls, JvRadioButton, DB,
  DBTables, QuickRpt, Qrctrls, DBCtrls, ExtCtrls;

type
  TFrmRelatorioContasReceber = class(TForm)
    grp1: TGroupBox;
    lbl2: TLabel;
    btnImprimir: TSpeedButton;
    cbbCliente: TComboBox;
    grp2: TGroupBox;
    rbQuitado: TJvRadioButton;
    rbPendente: TJvRadioButton;
    grp3: TGroupBox;
    lbl1: TLabel;
    dtDataIni: TDateTimePicker;
    dtDataFim: TDateTimePicker;
    btnFechar: TBitBtn;
    QuickRep1: TQuickRep;
    Detail: TQRBand;
    qrdbNUM_NFPEDIDO: TQRDBText;
    qrdbNUM_NFPEDIDO1: TQRDBText;
    qrdbNUM_NFPEDIDO2: TQRDBText;
    qrdbNUM_NFPEDIDO3: TQRDBText;
    qrdbNUM_NFPEDIDO4: TQRDBText;
    qrdbNUM_NFPEDIDO5: TQRDBText;
    qrdbNUM_NFPEDIDO6: TQRDBText;
    qrdbVALORPARCELA: TQRDBText;
    qrdbVALORPARCELA1: TQRDBText;
    QRGroup1: TQRGroup;
    qrdbCLIENTE: TQRDBText;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    lbl4: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr3: TQRExpr;
    lbl5: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    lbl6: TQRLabel;
    lbl3: TQRLabel;
    lbl10: TQRLabel;
    lbl11: TQRLabel;
    lbl12: TQRLabel;
    lbl13: TQRLabel;
    lbl14: TQRLabel;
    lbl15: TQRLabel;
    lbl16: TQRLabel;
    lbl17: TQRLabel;
    lbl18: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    lblrotulorelatorio: TQRLabel;
    lblRotuloCliente: TQRLabel;
    lblPeriodo: TQRLabel;
    Query1: TQuery;
    tblqry1CLIENTE: TStringField;
    Query1DATAINCLUSAO: TDateField;
    tblqry1TIPOSAIDA: TStringField;
    Query1DATAPARCELA: TDateField;
    tblqry1VALORPARCELA: TFloatField;
    Query1DATAPAGTO: TDateField;
    tblqry1VRJUROS: TFloatField;
    tblqry1VRMORA: TFloatField;
    tblqry1TOTALPARCELA: TFloatField;
    qryQuery1ID_CPG: TIntegerField;
    tblQuery1TIPODESPESA: TFloatField;
    qrdbVRMORA: TQRDBText;
    lbl7: TQRLabel;
    TbQuery1NUM_NFPEDIDO: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioContasReceber: TFrmRelatorioContasReceber;
  sCombo : string;

implementation

uses Base, RelAgrupamentoContasReceber;

{$R *.dfm}

procedure TFrmRelatorioContasReceber.FormActivate(Sender: TObject);
begin
    dmdados.TbClientes.First;
    cbbCliente.Clear;
    cbbCliente.Items.Add('  <TODOS>  ');
    While not DmDados.TbClientes.Eof do
    begin
    cbbCliente.Items.Add(DmDados.TbClientesCli_Cliente.Value);
    DmDados.tbClientes.Next;
    end;
end;

procedure TFrmRelatorioContasReceber.FormShow(Sender: TObject);
begin
     dtDataIni.Date := Date - 30;
     dtDataFim.Date := Date;
end;

procedure TFrmRelatorioContasReceber.btnImprimirClick(Sender: TObject);
begin

            IF cbbCliente.Text = '' then
            begin
              Application.MessageBox('Escolha um Cliente ou TODOS,' +
                     'Antes de gerar o Relatório.', 'ATENÇÃO !', MB_OK +
                MB_ICONWARNING);
            Exit;
            end;

            if cbbCliente.Text = '  <TODOS>  ' then
            begin
            sCombo := '%';
            end
            else
            sCombo := cbbCliente.Text;
            if rbQuitado.Checked = True then
            begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('SELECT A.ID_CPG, A.CLIENTE, A.NUM_NFPEDIDO, A.DATAINCLUSAO, A.TIPOSAIDA, B.DATAPARCELA, B.VALORPARCELA, B.DATAPAGTO, B.VRJUROS, B.VRMORA, B.TIPODESPESA, (B.VALORPARCELA + B.VRJUROS + B.VRMORA + B.TIPODESPESA) AS TOTALPARCELA');
            Query1.SQL.Add('FROM CPRMASTER A, CPRDETALHE B');
            Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = TRUE AND A.CLIENTE LIKE (:VARCLIENTE) AND B.DATAPARCELA BETWEEN :DATAINI AND :DATAFIM');
            Query1.SQL.Add('ORDER BY A.CLIENTE, B.DATAPARCELA');
            Query1.ParamByName('VARCLIENTE').AsString := sCombo;
            Query1.ParamByName('DATAINI').AsDate := dtDataIni.Date;
            Query1.ParamByName('DATAFIM').AsDate := dtDataFim.Date;
            Query1.Prepare;
            Query1.Open;
            end;


            if rbPendente.Checked = True then
            begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('SELECT A.ID_CPG, A.CLIENTE, A.NUM_NFPEDIDO, A.DATAINCLUSAO, A.TIPOSAIDA, B.DATAPARCELA, B.VALORPARCELA, B.DATAPAGTO, B.VRJUROS, B.VRMORA, B.TIPODESPESA, (B.VALORPARCELA + B.VRJUROS + B.VRMORA + B.TIPODESPESA) AS TOTALPARCELA');
            Query1.SQL.Add('FROM CPRMASTER A, CPRDETALHE B');
            Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = FALSE AND A.CLIENTE LIKE (:VARCLIENTE) AND B.DATAPARCELA BETWEEN :DATAINI AND :DATAFIM');
            Query1.SQL.Add('ORDER BY A.CLIENTE, B.DATAPARCELA');
            Query1.ParamByName('VARCLIENTE').AsString := sCombo;
            Query1.ParamByName('DATAINI').AsDate := dtDataIni.Date;
            Query1.ParamByName('DATAFIM').AsDate := dtDataFim.Date;
            Query1.Prepare;
            Query1.Open;
            end;



            if Query1.RecordCount = 0 then
            begin
              Application.MessageBox('NÃO EXISTEM DADOS PARA' + #13#10 +
                'OS PARÂMETROS INFORMADOS' + #13#10 + 'VERIFIQUE !',
                'ATENÇÃO !', MB_OK + MB_ICONWARNING);
            Exit;
            end;


            IF rbQuitado.Checked = True THEN
            begin
            lblrotulorelatorio.Caption := 'RELATÓRIO: CONTAS À RECEBER -> <QUITADO>';
            end;

            IF rbPendente.Checked = True THEN
            begin
            lblrotulorelatorio.Caption := 'RELATÓRIO: CONTAS À RECEBER -> <PENDENTE>';
            end;



            if sCombo = '%' then
            begin
            lblRotuloCliente.Caption := 'CLIENTE:  TODOS';
            end else
            lblRotuloCliente.Caption := 'CLIENTE: ' +sCombo;
            lblPeriodo.Caption := 'PERÍODO DE: ' + DateToStr(dtDataIni.Date) + '  À  ' + DateToStr(dtDataFim.Date);
            QuickRep1.Preview;
end;

procedure TFrmRelatorioContasReceber.btnFecharClick(Sender: TObject);
begin
     Close;
end;

end.
