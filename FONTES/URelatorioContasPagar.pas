unit URelatorioContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvRadioButton, Buttons, ComCtrls, DB,
  DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelContasPagar = class(TForm)
    grp1: TGroupBox;
    lbl2: TLabel;
    cbbFornecedor: TComboBox;
    grp2: TGroupBox;
    rbQuitado: TJvRadioButton;
    rbPendente: TJvRadioButton;
    grp3: TGroupBox;
    lbl1: TLabel;
    dtDataIni: TDateTimePicker;
    dtDataFim: TDateTimePicker;
    btnImprimir: TSpeedButton;
    btnFechar: TBitBtn;
    Query1: TQuery;
    tblQuery1FORNECEDOR: TStringField;
    Query1DATAINCLUSAO: TDateField;
    tblQuery1TIPOENTRADA: TStringField;
    Query1DATAPARCELA: TDateField;
    tblQuery1VALORPARCELA: TFloatField;
    Query1DATAPAGTO: TDateField;
    tblQuery1VRJUROS: TFloatField;
    tblQuery1VRMORA: TFloatField;
    tblQuery1TOTALPARCELA: TFloatField;
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
    lbl7: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    lblrotulorelatorio: TQRLabel;
    lblRotuloFornecedor: TQRLabel;
    lblPeriodo: TQRLabel;
    tblQuery1TIPODESPESA: TFloatField;
    qrdbVRMORA: TQRDBText;
    tbCopiaQuery1NUM_NFPEDIDO: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelContasPagar: TfrmRelContasPagar;
  sCombo : string;

implementation

uses Base, URelContasPagar;

{$R *.dfm}

procedure TfrmRelContasPagar.btnFecharClick(Sender: TObject);
begin
     close;
end;

procedure TfrmRelContasPagar.FormActivate(Sender: TObject);
begin

    DmDados.Tbfornecedores.First;
    cbbFornecedor.Clear;
    cbbFornecedor.Items.Add('  <TODOS>  ');
    While not DmDados.Tbfornecedores.Eof do
    begin
    cbbFornecedor.Items.Add(DmDados.TbfornecedoresFor_Razao.Value);
    DmDados.Tbfornecedores.Next;
    end;
end;

procedure TfrmRelContasPagar.btnImprimirClick(Sender: TObject);
begin

            IF cbbFornecedor.Text = '' then
            begin
              Application.MessageBox('Escolha um Fornecedor ou TODOS,' +
                     'Antes de gerar o Relatório.', 'ATENÇÃO !', MB_OK +
                MB_ICONWARNING);
            Exit;
            end;




            if cbbFornecedor.Text = '  <TODOS>  ' then
            begin
            sCombo := '%';
            end
            else
            sCombo := cbbFornecedor.Text;

            if rbQuitado.Checked = True then
            begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('SELECT A.FORNECEDOR, A.NUM_NFPEDIDO, A.DATAINCLUSAO, A.TIPOENTRADA, B.DATAPARCELA, B.VALORPARCELA, B.DATAPAGTO, B.VRJUROS, B.VRMORA, B.TIPODESPESA,(B.VALORPARCELA + B.VRJUROS + B.VRMORA + B.TIPODESPESA) AS TOTALPARCELA');
            Query1.SQL.Add('FROM CPGMASTER A, CPGDETALHE B');
            Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = TRUE AND A.FORNECEDOR LIKE (:VARFORNECEDOR) AND B.DATAPARCELA BETWEEN :DATAINI AND :DATAFIM');
            Query1.SQL.Add('ORDER BY A.FORNECEDOR, B.DATAPARCELA');
            Query1.ParamByName('VARFORNECEDOR').AsString := sCombo;
            Query1.ParamByName('DATAINI').AsDate := dtDataIni.Date;
            Query1.ParamByName('DATAFIM').AsDate := dtDataFim.Date;
            Query1.Prepare;
            Query1.Open;
            end;


            if rbPendente.Checked = True then
            begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('SELECT A.FORNECEDOR, A.NUM_NFPEDIDO, A.DATAINCLUSAO, A.TIPOENTRADA, B.DATAPARCELA, B.VALORPARCELA, B.DATAPAGTO, B.VRJUROS, B.VRMORA, B.TIPODESPESA,(B.VALORPARCELA + B.VRJUROS + B.VRMORA + B.TIPODESPESA) AS TOTALPARCELA');
            Query1.SQL.Add('FROM CPGMASTER A, CPGDETALHE B');
            Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = FALSE AND A.FORNECEDOR LIKE (:VARFORNECEDOR) AND B.DATAPARCELA BETWEEN :DATAINI AND :DATAFIM');
            Query1.SQL.Add('ORDER BY A.FORNECEDOR, B.DATAPARCELA');
            Query1.ParamByName('VARFORNECEDOR').AsString := sCombo;
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



            if rbQuitado.Checked =  True then
            begin
            lblrotulorelatorio.Caption := 'RELATÓRIO: CONTAS À PAGAR - <QUITADOS>';
            end;


            if rbPendente.Checked =  True then
            begin
            lblrotulorelatorio.Caption := 'RELATÓRIO: CONTAS À PAGAR - <PENDENTE>';
            end;


            if sCombo = '%' then
            begin
            lblRotuloFornecedor.Caption := 'FORNECEDOR:  TODOS';
            end else
            lblRotuloFornecedor.Caption := 'FORNECEDOR: ' +sCombo;
            lblPeriodo.Caption := 'PERÍODO DE: ' + DateToStr(dtDataIni.Date) + ' À ' + DateToStr(dtDataFim.Date);
            QuickRep1.Preview;



end;

procedure TfrmRelContasPagar.FormShow(Sender: TObject);
begin
 dtDataIni.Date := Date - 30;
 dtDataFim.Date := Date;
end;

end.
