unit UEmissaoDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls, QuickRpt,
  QRCtrls, Spin;

type
  TFrmEmissaoDuplicata = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    btnFechar: TButton;
    btnImprimir: TButton;
    btnConsultar: TButton;
    PageControl1: TPageControl;
    tbshetDadosDuplicata: TTabSheet;
    tbshetConfiguraImp: TTabSheet;
    gboxDadosDuplicata: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    edNumFatura: TDBEdit;
    edValorDuplicata: TDBEdit;
    edNumOrdem: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    btnConsultarPedparaFatura: TSpeedButton;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    edNumPed: TDBEdit;
    edDataPedido: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblDoc1: TLabel;
    lblDoc2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edDadosSacado: TDBEdit;
    edEndSacado: TDBEdit;
    edMunicipio: TDBEdit;
    edPraca: TDBEdit;
    edEndCobranca: TDBEdit;
    edDoc1: TDBEdit;
    edDoc2: TDBEdit;
    edValorExtenso: TDBEdit;
    edEstado: TDBEdit;
    edCep: TDBEdit;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    saltura: TSpinEdit;
    slargura: TSpinEdit;
    Label20: TLabel;
    lph: TLabel;
    Label18: TLabel;
    barv: TScrollBar;
    Label21: TLabel;
    lpv: TLabel;
    Label17: TLabel;
    SpeedButton12: TSpeedButton;
    barh: TScrollBar;
    GroupBox3: TGroupBox;
    rdDataEmissao: TRadioButton;
    rdNumordem: TRadioButton;
    rdVencimento: TRadioButton;
    rdNomeSacado: TRadioButton;
    rdEndSacado: TRadioButton;
    rdvalor: TRadioButton;
    rdNumFatura: TRadioButton;
    Quickimpcheque: TQuickRep;
    QRBand1: TQRBand;
    lbldataemissao: TQRLabel;
    lblFaturaNum: TQRLabel;
    lblNomesacado: TQRLabel;
    lblValor: TQRLabel;
    lblnumordem: TQRLabel;
    lblvencimento: TQRLabel;
    lblEndSacado: TQRLabel;
    lblMunicipio: TQRLabel;
    lblEstado: TQRLabel;
    lblCnpjCpf: TQRLabel;
    lblInscEstRg: TQRLabel;
    lblCep: TQRLabel;
    lblExtenso: TQRLabel;
    lblEndCobranca: TQRLabel;
    lblPracaPagto: TQRLabel;
    rdMunicipio: TRadioButton;
    rdEstado: TRadioButton;
    rdPcaPagto: TRadioButton;
    rdEndCobranca: TRadioButton;
    rdCnpjCpf: TRadioButton;
    rdInscRg: TRadioButton;
    rdCep: TRadioButton;
    rdExtenso: TRadioButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConsultarPedparaFaturaClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cabrirExecute(Sender: TObject);
    procedure cgravarExecute(Sender: TObject);
    procedure camposExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure salturaChange(Sender: TObject);
    procedure slarguraChange(Sender: TObject);
    procedure barhChange(Sender: TObject);
    procedure barvChange(Sender: TObject);
    procedure rdDataEmissaoClick(Sender: TObject);
    procedure rdNumFaturaClick(Sender: TObject);
    procedure rdvalorClick(Sender: TObject);
    procedure rdNumordemClick(Sender: TObject);
    procedure rdVencimentoClick(Sender: TObject);
    procedure rdNomeSacadoClick(Sender: TObject);
    procedure rdEndSacadoClick(Sender: TObject);
    procedure rdMunicipioClick(Sender: TObject);
    procedure rdEstadoClick(Sender: TObject);
    procedure rdPcaPagtoClick(Sender: TObject);
    procedure rdEndCobrancaClick(Sender: TObject);
    procedure rdCnpjCpfClick(Sender: TObject);
    procedure rdInscRgClick(Sender: TObject);
    procedure rdCepClick(Sender: TObject);
    procedure rdExtensoClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmissaoDuplicata: TFrmEmissaoDuplicata;

implementation

uses UConsultaEmissaoDuplicata, Base, Extens, UConsultaDuplicata,
  URelDuplicata;

{$R *.dfm}

procedure TFrmEmissaoDuplicata.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmEmissaoDuplicata.btnConsultarPedparaFaturaClick(
  Sender: TObject);
begin
      try
      application.CreateForm(TFrmConsultaEmissaoDuplicata, FrmConsultaEmissaoDuplicata);
      FrmConsultaEmissaoDuplicata.ShowModal;
      finally
      FrmConsultaEmissaoDuplicata.Free;
      end;
end;

procedure TFrmEmissaoDuplicata.btnConsultarClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmConsultaDuplicata,FrmConsultaDuplicata);
      FrmConsultaDuplicata.ShowModal;
      finally
      FrmConsultaDuplicata.Free;
      end;
end;

procedure TFrmEmissaoDuplicata.btnImprimirClick(Sender: TObject);
begin
      if edNumFatura.Text = '' then
      begin
      showmessage('Preencha dados restantes, para Imprimir!');
      exit;
      edNumFatura.Text;
      end;


      try
      Application.CreateForm(TFrmRelDuplicata,FrmRelDuplicata);
      dmdados.TDuplicata.IndexName:= 'ICod';
      dmdados.TDuplicata.SetRange([DBEdit1.Text],[DBEdit1.Text]);
      FrmRelDuplicata.lblDoc1.Caption:= edDoc1.Text;
      FrmRelDuplicata.lblDoc2.Caption:= edDoc2.Text;
      FrmRelDuplicata.QuickRep1.Preview;
      finally
      FrmRelDuplicata.Free;
      end;
      dmdados.TDuplicata.IndexName:= '';
end;

procedure TFrmEmissaoDuplicata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if dmdados.TDuplicata.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       dmdados.TDuplicata.Post
       else
       dmdados.TDuplicata.Cancel;

    cgravarexecute(self);  //grava configuração em Arq. .Ini
end;

procedure TFrmEmissaoDuplicata.FormCreate(Sender: TObject);
begin
 cabrirexecute(self);
end;

procedure TFrmEmissaoDuplicata.cabrirExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
  barh.Position := lvalor.Left;
  barv.Position := lvalor.top;
  lph.Caption := floattostr(barh.position);
  lpv.Caption := floattostr(barh.position);

  Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'duplicata.ini');

  // Valores dos componentes

  SAltura.Value := Ini.ReadInteger('Sal', 'Sal', 73);
  SLargura.Value := Ini.ReadInteger('Sla', 'Sla', 190);

  // configura a página

  Quickimpcheque.Page.Width := SLargura.Value;
  Quickimpcheque.Page.Length := SAltura.Value;
  qrband1.size.Height := saltura.Value;

  // posição esquerda

  lbldataemissao.Left := Ini.ReadInteger('lbldataemissao', 'lbldataemissao', lbldataemissao.Left);
  lblFaturaNum.Left := Ini.ReadInteger('lblFaturaNum', 'lblFaturaNum', lblFaturaNum.Left);
  lblValor.Left := Ini.ReadInteger('lblValor', 'lblValor', lblValor.Left);
  lblnumordem.Left := Ini.ReadInteger('lblnumordem', 'lblnumordem', lblnumordem.Left);
  lblvencimento.Left := Ini.ReadInteger('lblvencimento', 'lblvencimento', lblvencimento.Left);
  lblNomesacado.Left := Ini.ReadInteger('lblNomesacado', 'lblNomesacado', lmes.Left);
  lblEndSacado.Left := Ini.ReadInteger('lblEndSacado', 'lblEndSacado', lblEndSacado.Left);
  lblMunicipio.Left := Ini.ReadInteger('lblMunicipio', 'lblMunicipio', lblMunicipio.Left);
  lblEstado.Left := Ini.ReadInteger('lblEstado', 'lblEstado', lblEstado.Left);
  lblPracaPagto.Left := Ini.ReadInteger('lblPracaPagto', 'lblPracaPagto', lblPracaPagto.Left);
  lblEndCobranca.Left := Ini.ReadInteger('lblEndCobranca', 'lblEndCobranca', lblEndCobranca.Left);
  lblCnpjCpf.Left := Ini.ReadInteger('lblCnpjCpf', 'lblCnpjCpf', lblCnpjCpf.Left);
  lblInscEstRg.Left := Ini.ReadInteger('lblInscEstRg', 'lblInscEstRg', lblInscEstRg.Left);
  lblCep.Left := Ini.ReadInteger('lblCep', 'lblCep', lblCep.Left);
  lblExtenso.Left := Ini.ReadInteger('lblExtenso', 'lblExtenso', lblExtenso.Left);


  // Posição topo

  lbldataemissao.Top := Ini.ReadInteger('lbldataemissao', 'lbldataemissao', lbldataemissao.Top);
  lblFaturaNum.Top := Ini.ReadInteger('lblFaturaNum', 'lblFaturaNum', lblFaturaNum.Top);
  lblValor.Top := Ini.ReadInteger('lblValor', 'lblValor', lblValor.Top);
  lblnumordem.Top := Ini.ReadInteger('lblnumordem', 'lblnumordem', lblnumordem.Top);
  lblvencimento.Top := Ini.ReadInteger('lblvencimento', 'lblvencimento', lblvencimento.Top);
  lblNomesacado.Top := Ini.ReadInteger('lblNomesacado', 'lblNomesacado', lmes.Top);
  lblEndSacado.Top := Ini.ReadInteger('lblEndSacado', 'lblEndSacado', lblEndSacado.Top);
  lblMunicipio.Top := Ini.ReadInteger('lblMunicipio', 'lblMunicipio', lblMunicipio.Top);
  lblEstado.Top := Ini.ReadInteger('lblEstado', 'lblEstado', lblEstado.Top);
  lblPracaPagto.Top := Ini.ReadInteger('lblPracaPagto', 'lblPracaPagto', lblPracaPagto.Top);
  lblEndCobranca.Top := Ini.ReadInteger('lblEndCobranca', 'lblEndCobranca', lblEndCobranca.Top);
  lblCnpjCpf.Top := Ini.ReadInteger('lblCnpjCpf', 'lblCnpjCpf', lblCnpjCpf.Top);
  lblInscEstRg.Top := Ini.ReadInteger('lblInscEstRg', 'lblInscEstRg', lblInscEstRg.Top);
  lblCep.Top := Ini.ReadInteger('lblCep', 'lblCep', lblCep.Top);
  lblExtenso.Top := Ini.ReadInteger('lblExtenso', 'lblExtenso', lblExtenso.Top);
  Ini.Free;
end;

procedure TFrmEmissaoDuplicata.cgravarExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
  Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'duplicata.ini');

  // Valores dos componentes a gravar

  Ini.WriteInteger('Sal', 'Sal', SAltura.Value);
  Ini.WriteInteger('Sla', 'Sla', SLargura.Value);

  // poição equerda

  Ini.WriteInteger('lbldataemissao', 'lbldataemissao', lbldataemissao.Left);
  Ini.WriteInteger('lblFaturaNum', 'lblFaturaNum', lblFaturaNum.Left);
  Ini.WriteInteger('lblValor', 'lblValor', lblValor.Left);
  Ini.WriteInteger('lblnumordem', 'lblnumordem', lblnumordem.Left);
  Ini.WriteInteger('lblvencimento', 'lblvencimento', lblvencimento.Left);
  Ini.WriteInteger('lblNomesacado', 'lblNomesacado', lmes.Left);
  Ini.WriteInteger('lblEndSacado', 'lblEndSacado', lblEndSacado.Left);
  Ini.WriteInteger('lblMunicipio', 'lblMunicipio', lblMunicipio.Left);
  Ini.WriteInteger('lblEstado', 'lblEstado', lblEstado.Left);
  Ini.WriteInteger('lblPracaPagto', 'lblPracaPagto', lblPracaPagto.Left);
  Ini.WriteInteger('lblEndCobranca', 'lblEndCobranca', lblEndCobranca.Left);
  Ini.WriteInteger('lblCnpjCpf', 'lblCnpjCpf', lblCnpjCpf.Left);
  Ini.WriteInteger('lblInscEstRg', 'lblInscEstRg', lblInscEstRg.Left);
  Ini.WriteInteger('lblCep', 'lblCep', lblCep.Left);
  Ini.WriteInteger('lblExtenso', 'lblExtenso', lblExtenso.Left);


  // Posição topo
  Ini.WriteInteger('lbldataemissao', 'lbldataemissao', lbldataemissao.Top);
  Ini.WriteInteger('lblFaturaNum', 'lblFaturaNum', lblFaturaNum.Top);
  Ini.WriteInteger('lblValor', 'lblValor', lblValor.Top);
  Ini.WriteInteger('lblnumordem', 'lblnumordem', lblnumordem.Top);
  Ini.WriteInteger('lblvencimento', 'lblvencimento', lblvencimento.Top);
  Ini.WriteInteger('lblNomesacado', 'lblNomesacado', lmes.Top);
  Ini.WriteInteger('lblEndSacado', 'lblEndSacado', lblEndSacado.Top);
  Ini.WriteInteger('lblMunicipio', 'lblMunicipio', lblMunicipio.Top);
  Ini.WriteInteger('lblEstado', 'lblEstado', lblEstado.Top);
  Ini.WriteInteger('lblPracaPagto', 'lblPracaPagto', lblPracaPagto.Top);
  Ini.WriteInteger('lblEndCobranca', 'lblEndCobranca', lblEndCobranca.Top);
  Ini.WriteInteger('lblCnpjCpf', 'lblCnpjCpf', lblCnpjCpf.Top);
  Ini.WriteInteger('lblInscEstRg', 'lblInscEstRg', lblInscEstRg.Top);
  Ini.WriteInteger('lblCep', 'lblCep', lblCep.Top);
  Ini.WriteInteger('lblExtenso', 'lblExtenso', lblExtenso.Top);
  Ini.Free;
end;

procedure TFrmEmissaoDuplicata.camposExecute(Sender: TObject);
begin
  lvalor.Caption := editvalor.Text;
  lextenso.Caption := editextenso.Text;
  lportador.Caption := editportador.Text;
  lmunicipio.Caption := editmunicipio.Text;
  ldia.Caption := editdia.Text;
  lmes.Caption := editmes.Text;
  lano.Caption := editano.Text;
end;

procedure TFrmEmissaoDuplicata.salturaChange(Sender: TObject);
begin
  Quickimpcheque.Page.Length := saltura.Value;
  qrband1.size.Height := saltura.Value;
end;

procedure TFrmEmissaoDuplicata.slarguraChange(Sender: TObject);
begin
  quickimpcheque.Page.Width := slargura.Value;
end;

procedure TFrmEmissaoDuplicata.barhChange(Sender: TObject);
begin
  lph.Caption := floattostr(barh.position);

  if rdDataEmissao.Checked = true then
    lbldataemissao.Left := barh.Position;

  if rdNumFatura.Checked = True then
    lblFaturaNum.Left := barh.Position;

  if rdvalor.Checked = True then
    lblValor.Left := barh.Position;

  if rdNumordem.Checked = True then
    lblnumordem.Left := barh.Position;

  if rdVencimento.Checked = True then
    lblvencimento.Left := barh.Position;

  if rdNomeSacado.Checked = True then
    lblNomesacado.Left := barh.Position;

  if rdEndSacado.Checked = True then
    lblEndSacado.Left := barh.Position;

  if rdMunicipio.Checked = True then
    lblMunicipio.Left := barh.Position;

  if rdEstado.Checked = True then
    lblEstado.Left := barh.Position;

  if rdPcaPagto.Checked = True then
    lblPracaPagto.Left := barh.Position;

  if rdEndCobranca.Checked = True then
    lblEndCobranca.Left := barh.Position;

  if rdCnpjCpf.Checked = True then
    lblCnpjCpf.Left := barh.Position;

  if rdInscRg.Checked = True then
    lblInscEstRg.Left := barh.Position;

  if rdCep.Checked = True then
    lblCep.Left := barh.Position;

  if rdExtenso.Checked = True then
    lblExtenso.Left := barh.Position;

end;

procedure TFrmEmissaoDuplicata.barvChange(Sender: TObject);
begin
  lpv.Caption := floattostr(barv.position);

  if rdDataEmissao.Checked = true then
    lbldataemissao.Top := barv.Position;

  if rdNumFatura.Checked = True then
    lblFaturaNum.Top := barv.Position;

  if rdvalor.Checked = True then
    lblValor.Top := barv.Position;

  if rdNumordem.Checked = True then
    lblnumordem.Top := barv.Position;

  if rdVencimento.Checked = True then
    lblvencimento.Top := barv.Position;

  if rdNomeSacado.Checked = True then
    lblNomesacado.Top := barv.Position;

  if rdEndSacado.Checked = True then
    lblEndSacado.Top := barv.Position;

  if rdMunicipio.Checked = True then
    lblMunicipio.Top := barv.Position;

  if rdEstado.Checked = True then
    lblEstado.Top := barv.Position;

  if rdPcaPagto.Checked = True then
    lblPracaPagto.Top := barv.Position;

  if rdEndCobranca.Checked = True then
    lblEndCobranca.Top := barv.Position;

  if rdCnpjCpf.Checked = True then
    lblCnpjCpf.Top := barv.Position;

  if rdInscRg.Checked = True then
    lblInscEstRg.Top := barv.Position;

  if rdCep.Checked = True then
    lblCep.Top := barv.Position;

  if rdExtenso.Checked = True then
    lblExtenso.Top := barv.Position;

end;

procedure TFrmEmissaoDuplicata.rdDataEmissaoClick(Sender: TObject);
begin
  barh.Position := lbldataemissao.Left;
  barv.Position := lbldataemissao.top;
end;

procedure TFrmEmissaoDuplicata.rdNumFaturaClick(Sender: TObject);
begin
  barh.Position := lblFaturaNum.Left;
  barv.Position := lblFaturaNum.top;
end;

procedure TFrmEmissaoDuplicata.rdvalorClick(Sender: TObject);
begin
  barh.Position := lblValor.Left;
  barv.Position := lblValor.Top;
end;

procedure TFrmEmissaoDuplicata.rdNumordemClick(Sender: TObject);
begin
  barh.Position := lblnumordem.Left;
  barv.Position := lblnumordem.Top;
end;

procedure TFrmEmissaoDuplicata.rdVencimentoClick(Sender: TObject);
begin
  barh.Position := lblvencimento.Left;
  barv.Position := lblvencimento.Top;
end;

procedure TFrmEmissaoDuplicata.rdNomeSacadoClick(Sender: TObject);
begin
  barh.Position := lblNomesacado.Left;
  barv.Position := lblNomesacado.Top;
end;

procedure TFrmEmissaoDuplicata.rdEndSacadoClick(Sender: TObject);
begin
  barh.Position := lblEndSacado.Left;
  barv.Position := lblEndSacado.Top;
end;

procedure TFrmEmissaoDuplicata.rdMunicipioClick(Sender: TObject);
begin
  barh.Position := lblMunicipio.Left;
  barv.Position := lblMunicipio.Top;
end;

procedure TFrmEmissaoDuplicata.rdEstadoClick(Sender: TObject);
begin
  barh.Position := lblEstado.Left;
  barv.Position := lblEstado.Top;
end;

procedure TFrmEmissaoDuplicata.rdPcaPagtoClick(Sender: TObject);
begin
  barh.Position := lblPracaPagto.Left;
  barv.Position := lblPracaPagto.Top;
end;

procedure TFrmEmissaoDuplicata.rdEndCobrancaClick(Sender: TObject);
begin
  barh.Position := lblEndCobranca.Left;
  barv.Position := lblEndCobranca.Top;
end;

procedure TFrmEmissaoDuplicata.rdCnpjCpfClick(Sender: TObject);
begin
  barh.Position := lblCnpjCpf.Left;
  barv.Position := lblCnpjCpf.Top;
end;

procedure TFrmEmissaoDuplicata.rdInscRgClick(Sender: TObject);
begin
  barh.Position := lblInscEstRg.Left;
  barv.Position := lblInscEstRg.Top;
end;

procedure TFrmEmissaoDuplicata.rdCepClick(Sender: TObject);
begin
  barh.Position := lblCep.Left;
  barv.Position := lblCep.Top;
end;

procedure TFrmEmissaoDuplicata.rdExtensoClick(Sender: TObject);
begin
  barh.Position := lblExtenso.Left;
  barv.Position := lblExtenso.Top;
end;

procedure TFrmEmissaoDuplicata.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then 
  begin
    camposexecute(self);
    windowstate := wsmaximized;
  end
  else
    windowstate := wsnormal;
end;

end.
