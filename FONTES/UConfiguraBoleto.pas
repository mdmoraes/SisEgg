unit UConfiguraBoleto;

interface

uses
  inifiles, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, QuickRpt, Qrctrls, Spin, Buttons, ComCtrls, ActnList;

type
  TFrmConfiguraBoleto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    rdLPagamento: TRadioButton;
    rdValor: TRadioButton;
    rdIntrucoes: TRadioButton;
    rdCliente: TRadioButton;
    rdCNPJCPF: TRadioButton;
    rdDtDocumento: TRadioButton;
    rdVencimento: TRadioButton;
    Panel13: TPanel;
    lpv: TLabel;
    lph: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton12: TSpeedButton;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    saltura: TSpinEdit;
    slargura: TSpinEdit;
    barv: TScrollBar;
    barh: TScrollBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdLocalPagamento: TEdit;
    EdDataDocumento: TEdit;
    Button1: TButton;
    EdCliente: TEdit;
    EdCnpjCpf: TEdit;
    EdEndereco: TEdit;
    EdBairro: TEdit;
    Quickimpcheque: TQuickRep;
    QRBand1: TQRBand;
    lblVencimento: TQRLabel;
    lblLocalPagamento: TQRLabel;
    lblDataDocumento: TQRLabel;
    lblNumDocumento: TQRLabel;
    lblCliente: TQRLabel;
    lblCNPJCPF: TQRLabel;
    lblValor: TQRLabel;
    ActionList1: TActionList;
    cabrir: TAction;
    cgravar: TAction;
    campos: TAction;
    Label8: TLabel;
    EdNumDocumento: TEdit;
    Label9: TLabel;
    EdVencimento: TEdit;
    Label10: TLabel;
    EdValor: TEdit;
    MemoIntrucoes: TMemo;
    Label11: TLabel;
    EdInscRG: TEdit;
    Label12: TLabel;
    EdCidade: TEdit;
    EdUF: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdCep: TEdit;
    lblMemoInstrucoes: TQRMemo;
    lblInscriRG: TQRLabel;
    lblEndereco: TQRLabel;
    lblBairro: TQRLabel;
    lblCidade: TQRLabel;
    lblUF: TQRLabel;
    lblCEP: TQRLabel;
    rdInscricRG: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure EdLocalPagamentoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure salturaChange(Sender: TObject);
    procedure slarguraChange(Sender: TObject);
    procedure barhChange(Sender: TObject);
    procedure barvChange(Sender: TObject);
    procedure rdLPagamentoClick(Sender: TObject);
    procedure rdVencimentoClick(Sender: TObject);
    procedure rdDtDocumentoClick(Sender: TObject);
    procedure rdValorClick(Sender: TObject);
    procedure rdIntrucoesClick(Sender: TObject);
    procedure rdClienteClick(Sender: TObject);
    procedure rdCNPJCPFClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure cabrirExecute(Sender: TObject);
    procedure cgravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure camposExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfiguraBoleto: TFrmConfiguraBoleto;

implementation
       
//uses coes;
{$R *.DFM}

procedure TFrmConfiguraBoleto.Button1Click(Sender: TObject);
begin
  camposexecute(self);
  Quickimpcheque.preview;
end;

procedure TFrmConfiguraBoleto.EdLocalPagamentoExit(Sender: TObject);
begin
  editextenso.Text := Extenso(strtofloat(editvalor.Text));
  editdia.Text := formatdatetime('dd', date);
  editmes.Text := formatdatetime('mmmm', date);
  editano.Text := formatdatetime('yyyy', date);
  editvalor.Text := format('%n', [strtofloat(editvalor.Text)]);
end;

procedure TFrmConfiguraBoleto.FormKeyPress(Sender: TObject; var Key: char);
begin
  if key = #13 then 
  begin
    key := #0;
    Perform(WM_nextdlgctl, 0,0);
  end 
  else if key = #27 then 
    Perform(WM_nextdlgctl, 1,0);
end;

procedure TFrmConfiguraBoleto.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = vk_f1 then 
  begin
    application.CreateForm(tfajuda, fajuda);
    fajuda.Memo1.Lines.LoadFromFile(extractfilepath(ParamStr(0)) +
      '\ajuda\ajudaimpcheque.txt');
    fajuda.Show;
  end;
end;

procedure TFrmConfiguraBoleto.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then 
  begin
    camposexecute(self);
    windowstate := wsmaximized;
  end 
  else
    windowstate := wsnormal;
end;

procedure TFrmConfiguraBoleto.salturaChange(Sender: TObject);
begin
  Quickimpcheque.Page.Length := saltura.Value;
  qrband1.size.Height := saltura.Value;
end;

procedure TFrmConfiguraBoleto.slarguraChange(Sender: TObject);
begin
  quickimpcheque.Page.Width := slargura.Value;
end;

procedure TFrmConfiguraBoleto.barhChange(Sender: TObject);
begin
  lph.Caption := floattostr(barh.position);

  if rdvalor.Checked = True then
    lvalor.Left := barh.Position;

  if rdextenso.Checked = True then
    lextenso.Left := barh.Position;

  if rdportador.Checked = True then
    lportador.Left := barh.Position;

  if rdmunicipio.Checked = True then
    lmunicipio.Left := barh.Position;

  if rddia.Checked = True then
    ldia.Left := barh.Position;

  if rdmes.Checked = True then
    lmes.Left := barh.Position;

  if rdano.Checked = True then
    lano.Left := barh.Position;
end;

procedure TFrmConfiguraBoleto.barvChange(Sender: TObject);
begin
  lpv.Caption := floattostr(barv.position);

  if rdvalor.Checked = True then
    lvalor.top := barv.Position;

  if rdextenso.Checked = True then
    lextenso.top := barv.Position;

  if rdportador.Checked = True then
    lportador.top := barv.Position;

  if rdmunicipio.Checked = True then
    lmunicipio.top := barv.Position;

  if rddia.Checked = True then
    ldia.top := barv.Position;

  if rdmes.Checked = True then
    lmes.top := barv.Position;

  if rdano.Checked = True then
    lano.top := barv.Position;
end;

procedure TFrmConfiguraBoleto.rdLPagamentoClick(Sender: TObject);
begin
  barh.Position := lvalor.Left;
  barv.Position := lvalor.top;
end;

procedure TFrmConfiguraBoleto.rdVencimentoClick(Sender: TObject);
begin
  barh.Position := lextenso.Left;
  barv.Position := lextenso.top;
end;

procedure TFrmConfiguraBoleto.rdDtDocumentoClick(Sender: TObject);
begin
  barh.Position := lportador.Left;
  barv.Position := lportador.top;
end;

procedure TFrmConfiguraBoleto.rdValorClick(Sender: TObject);
begin
  barh.Position := lmunicipio.Left;
  barv.Position := lmunicipio.top;
end;

procedure TFrmConfiguraBoleto.rdIntrucoesClick(Sender: TObject);
begin
  barh.Position := ldia.Left;
  barv.Position := ldia.top;
end;

procedure TFrmConfiguraBoleto.rdClienteClick(Sender: TObject);
begin
  barh.Position := lmes.Left;
  barv.Position := lmes.top;
end;

procedure TFrmConfiguraBoleto.rdCNPJCPFClick(Sender: TObject);
begin
  barh.Position := lano.Left;
  barv.Position := lano.top;
end;

procedure TFrmConfiguraBoleto.SpeedButton12Click(Sender: TObject);
begin
  Quickimpcheque.PreviewModal;
end;

procedure TFrmConfiguraBoleto.cabrirExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
  barh.Position := lvalor.Left;
  barv.Position := lvalor.top;
  lph.Caption := floattostr(barh.position);
  lpv.Caption := floattostr(barh.position);

  Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'cheque.ini');

  // Valores dos componentes

  SAltura.Value := Ini.ReadInteger('Sal', 'Sal', 73);
  SLargura.Value := Ini.ReadInteger('Sla', 'Sla', 190);

  // configura a página

  Quickimpcheque.Page.Width := SLargura.Value;
  Quickimpcheque.Page.Length := SAltura.Value;
  qrband1.size.Height := saltura.Value;

  // poição equerda

  lvalor.Left := Ini.ReadInteger('lvalor1', 'lvalor1', lvalor.Left);
  lextenso.Left := Ini.ReadInteger('lextenso1', 'lextenso1', lextenso.Left);
  lmunicipio.Left := Ini.ReadInteger('lmunicipio', 'lmunicipio', lmunicipio.Left);
  lportador.Left := Ini.ReadInteger('lportador', 'lportador', lportador.Left);
  ldia.Left := Ini.ReadInteger('ldia', 'ldia', ldia.Left);
  lmes.Left := Ini.ReadInteger('lmes', 'lmes', lmes.Left);
  lano.Left := Ini.ReadInteger('lano', 'lano', lano.Left);

  // Posição topo

  lvalor.top := Ini.ReadInteger('tvalor1', 'tvalor1', lvalor.top);
  lextenso.top := Ini.ReadInteger('textenso1', 'textenso1', lextenso.top);
  lmunicipio.top := Ini.ReadInteger('tmunicipio', 'tmunicipio', lmunicipio.top);
  lportador.top := Ini.ReadInteger('tportador', 'tportador', lportador.top);
  ldia.top := Ini.ReadInteger('tdia', 'tdia', ldia.top);
  lmes.top := Ini.ReadInteger('tmes', 'tmes', lmes.top);
  lano.top := Ini.ReadInteger('tano', 'tano', lano.top);

  Ini.Free;
end;

procedure TFrmConfiguraBoleto.cgravarExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
  Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'cheque.ini');

  // Valores dos componentes a gravar

  Ini.WriteInteger('Sal', 'Sal', SAltura.Value);
  Ini.WriteInteger('Sla', 'Sla', SLargura.Value);

  // poição equerda

  Ini.WriteInteger('lvalor1', 'lvalor1', lvalor.Left);
  Ini.WriteInteger('lextenso1', 'lextenso1', lextenso.Left);
  Ini.WriteInteger('lportador', 'lportador', lportador.Left);
  Ini.WriteInteger('lmunicipio', 'lmunicipio', lmunicipio.Left);
  Ini.WriteInteger('ldia', 'ldia', ldia.Left);
  Ini.WriteInteger('lmes', 'lmes', lmes.Left);
  Ini.WriteInteger('lano', 'lano', lano.Left);

  // Posição topo

  Ini.WriteInteger('tvalor1', 'tvalor1', lvalor.top);
  Ini.WriteInteger('textenso1', 'textenso1', lextenso.top);
  Ini.WriteInteger('tportador', 'tportador', lportador.top);
  Ini.WriteInteger('tmunicipio', 'tmunicipio', lmunicipio.top);
  Ini.WriteInteger('tdia', 'tdia', ldia.top);
  Ini.WriteInteger('tmes', 'tmes', lmes.top);
  Ini.WriteInteger('tano', 'tano', lano.top);
  Ini.Free;
end;

procedure TFrmConfiguraBoleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cgravarexecute(self);
end;

procedure TFrmConfiguraBoleto.FormCreate(Sender: TObject);
begin
  cabrirexecute(self);
end;

procedure TFrmConfiguraBoleto.camposExecute(Sender: TObject);
begin
  lvalor.Caption := editvalor.Text;
  lextenso.Caption := editextenso.Text;
  lportador.Caption := editportador.Text;
  lmunicipio.Caption := editmunicipio.Text;
  ldia.Caption := editdia.Text;
  lmes.Caption := editmes.Text;
  lano.Caption := editano.Text;
end;

end.
