unit UEmissaoBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls, QuickRpt,
  QRCtrls, Spin, Inifiles, ActnList, ToolEdit, MaskUtils;

type
  TFrmEmissaoBoleto = class(TForm)
    Panel1: TPanel;
    btnFechar: TButton;
    PageControl1: TPageControl;
    tbshetDadosDuplicata: TTabSheet;
    tbshetConfiguraImp: TTabSheet;
    GroupBox1: TGroupBox;
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
    rdLocalPagto: TRadioButton;
    Quickimpcheque: TQuickRep;
    qrband1: TQRBand;
    lblUF: TQRLabel;
    lblCNPJCPF: TQRLabel;
    rdUF: TRadioButton;
 //   rdVencimento: TRadioButton;
    rdCNPJCPF: TRadioButton;
    ActionList1: TActionList;
    cabrir: TAction;
    cgravar: TAction;
    campos: TAction;
    btnConsultarMembro: TSpeedButton;
    rdDataDocto: TRadioButton;
    rdNumDocto: TRadioButton;
    rdEndereco: TRadioButton;
    rdValorDocto: TRadioButton;
    rdBairro: TRadioButton;
    rdCidade: TRadioButton;
  //  rdIntrucoesCedente: TRadioButton;
    lblLocalPagto: TQRLabel;
    lblVencimento: TQRLabel;
    lblCidade: TQRLabel;
    lblEndereco: TQRLabel;
    lblInstrucoesdeResponsadoCedente: TQRLabel;
    lblBairro: TQRLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label28: TLabel;
    Panel3: TPanel;
    Label30: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label29: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblDataDocto: TQRLabel;
    lblNumDocto: TQRLabel;
    lblValorDocto: TQRLabel;
    lblCliente: TQRLabel;
    rdCliente: TRadioButton;
    rdVencimento: TRadioButton;
    rdIntrucoesCedente: TRadioButton;
    edlocalpagto: TEdit;
    eddataVencimento: TEdit;
    memoIntrucoes: TMemo;
    eddatadocto: TEdit;
    ednumdocto: TEdit;
    edcliente: TEdit;
    edcnpjcpf: TEdit;
    edendereco: TEdit;
    edbairro: TEdit;
    edcidade: TEdit;
    eduf: TEdit;
    edExtenso: TEdit;
    Label8: TLabel;
    rdExtenso: TRadioButton;
    lblExtenso: TQRLabel;
    Label9: TLabel;
    edEspecDoc: TEdit;
    Label10: TLabel;
    edDataProc: TEdit;
    lblEspecDoc: TQRLabel;
    lblDataProcessamento: TQRLabel;
    rdEspecDoc: TRadioButton;
    rdDataProcessamento: TRadioButton;
    btnAtivaSkin: TBitBtn;

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
    procedure rdLocalPagtoClick(Sender: TObject);
    procedure rdUFClick(Sender: TObject);
    //procedure rdVencimentoClick(Sender: TObject);
    procedure rdCNPJCPFClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure btnConsultarMembroClick(Sender: TObject);
    procedure rdDataDoctoClick(Sender: TObject);
    procedure rdNumDoctoClick(Sender: TObject);
    procedure rdValorDoctoClick(Sender: TObject);
    procedure rdEnderecoClick(Sender: TObject);
    procedure rdBairroClick(Sender: TObject);
    procedure rdCidadeClick(Sender: TObject);
 //   procedure rdIntrucoesCedenteClick(Sender: TObject);
    procedure rdVencimentoClick(Sender: TObject);
    procedure rdIntrucoesCedenteClick(Sender: TObject);
    procedure rdClienteClick(Sender: TObject);
    procedure tbshetConfiguraImpShow(Sender: TObject);
    procedure rdExtensoClick(Sender: TObject);
    procedure rdEspecDocClick(Sender: TObject);
    procedure rdDataProcessamentoClick(Sender: TObject);
    procedure eddatadoctoExit(Sender: TObject);
    procedure btnAtivaSkinClick(Sender: TObject);
    procedure qrband1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmissaoBoleto: TFrmEmissaoBoleto;

implementation

uses UMain, Base;

{$R *.dfm}

function MaskString(Valor: String) : String;
begin
Result := FormatMaskText('!aaaaaaaaaaaaaa;0; ',(FormatFloat('R$ #,##0.00',StrToFloat(valor))));
end;


procedure TFrmEmissaoBoleto.cabrirExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
//  barh.Position := lblNome.Left;
//  barv.Position := lblNome.top;
  lph.Caption := floattostr(barh.position);
  lpv.Caption := floattostr(barh.position);

  Ini := TiniFile.Create('C:\Sistema Eggs\Boleto.ini');
  try
  // Valores dos componentes
  SAltura.Value := Ini.ReadInteger('Sal', 'Sal', 105);
  SLargura.Value := Ini.ReadInteger('Sla', 'Sla', 190);

  // configura a página

  Quickimpcheque.Page.Width := SLargura.Value;
  Quickimpcheque.Page.Length := SAltura.Value;
  qrband1.size.Height := saltura.Value;

  // posição esquerda

  lblLocalPagto.Left := Ini.ReadInteger('lblLocalPagto', 'lblLocalPagto', lblLocalPagto.Left);
  lblVencimento.Left := Ini.ReadInteger('lblVencimento', 'lblVencimento', lblVencimento.Left);
  lblDataDocto.Left := Ini.ReadInteger('lblDataDocto', 'lblDataDocto', lblDataDocto.Left);
  lblNumDocto.Left := Ini.ReadInteger('lblNumDocto', 'lblNumDocto', lblNumDocto.Left);
  lblValorDocto.Left := Ini.ReadInteger('lblValorDocto', 'lblValorDocto', lblValorDocto.Left);
  lblInstrucoesdeResponsadoCedente.Left := Ini.ReadInteger('lblInstrucoesdeResponsadoCedente', 'lblInstrucoesdeResponsadoCedente', lblInstrucoesdeResponsadoCedente.Left);
  lblCliente.Left := Ini.ReadInteger('lblCliente', 'lblCliente', lblCliente.Left);
  lblCNPJCPF.Left := Ini.ReadInteger('lblCNPJCPF', 'lblCNPJCPF', lblCNPJCPF.Left);
  lblCidade.Left := Ini.ReadInteger('lblCidade', 'lblCidade', lblCidade.Left);
  lblEndereco.Left := Ini.ReadInteger('lblEndereco', 'lblEndereco', lblEndereco.Left);
  lblBairro.Left := Ini.ReadInteger('lblBairro', 'lblBairro', lblBairro.Left);
  lblUF.Left := Ini.ReadInteger('lblUF', 'lblUF', lblUF.Left);
  lblExtenso.Left := Ini.ReadInteger('lblExtenso', 'lblExtenso', lblExtenso.Left);

  lblEspecDoc.Left := Ini.ReadInteger('lblEspecDoc', 'lblEspecDoc', lblEspecDoc.Left);
  lblDataProcessamento.Left := Ini.ReadInteger('lblDataProcessamento', 'lblDataProcessamento', lblDataProcessamento.Left);


  // Posição topo
  lblLocalPagto.Top := Ini.ReadInteger('tblLocalPagto', 'tblLocalPagto', lblLocalPagto.Top);
  lblVencimento.Top := Ini.ReadInteger('tblVencimento', 'tblVencimento', lblVencimento.Top);
  lblDataDocto.Top := Ini.ReadInteger('tblDataDocto', 'tblDataDocto', lblDataDocto.Top);
  lblNumDocto.Top := Ini.ReadInteger('tblNumDocto', 'tblNumDocto', lblNumDocto.Top);
  lblValorDocto.Top := Ini.ReadInteger('tblValorDocto', 'tblValorDocto', lblValorDocto.Top);
  lblInstrucoesdeResponsadoCedente.Top := Ini.ReadInteger('tblInstrucoesdeResponsadoCedente', 'tblInstrucoesdeResponsadoCedente', lblInstrucoesdeResponsadoCedente.Top);
  lblCliente.Top := Ini.ReadInteger('tblCliente', 'tblCliente', lblCliente.Top);
  lblCNPJCPF.Top := Ini.ReadInteger('tblCNPJCPF', 'tblCNPJCPF', lblCNPJCPF.Top);
  lblCidade.Top := Ini.ReadInteger('tblCidade', 'tblCidade', lblCidade.Top);
  lblEndereco.Top := Ini.ReadInteger('tblEndereco', 'tblEndereco', lblEndereco.Top);
  lblBairro.Top := Ini.ReadInteger('tblBairro', 'tblBairro', lblBairro.Top);
  lblUF.Top := Ini.ReadInteger('tblUF', 'tblUF', lblUF.Top);
  lblExtenso.Top := Ini.ReadInteger('tblExtenso', 'tblExtenso', lblExtenso.Top);

  lblEspecDoc.Top := Ini.ReadInteger('tblEspecDoc', 'tblEspecDoc', lblEspecDoc.Top);
  lblDataProcessamento.Top := Ini.ReadInteger('tblDataProcessamento', 'tblDataProcessamento', lblDataProcessamento.Top);

  finally
  Ini.Free;
  end;
end;

procedure TFrmEmissaoBoleto.cgravarExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
 // Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'duplicata.ini');
  Ini := TiniFile.Create('C:\Sistema Eggs\Boleto.ini');

  // Valores dos componentes a gravar
  try
  Ini.WriteInteger('Sal', 'Sal', SAltura.Value);
  Ini.WriteInteger('Sla', 'Sla', SLargura.Value);

  // posição esquerda
  Ini.WriteInteger('lblLocalPagto', 'lblLocalPagto', lblLocalPagto.Left);
  Ini.WriteInteger('lblVencimento', 'lblVencimento', lblVencimento.Left);
  Ini.WriteInteger('lblDataDocto', 'lblDataDocto', lblDataDocto.Left);
  Ini.WriteInteger('lblNumDocto', 'lblNumDocto', lblNumDocto.Left);
  Ini.WriteInteger('lblValorDocto', 'lblValorDocto', lblValorDocto.Left);
  Ini.WriteInteger('lblInstrucoesdeResponsadoCedente', 'lblInstrucoesdeResponsadoCedente', lblInstrucoesdeResponsadoCedente.Left);
  Ini.WriteInteger('lblCliente', 'lblCliente', lblCliente.Left);
  Ini.WriteInteger('lblCNPJCPF', 'lblCNPJCPF', lblCNPJCPF.Left);
  Ini.WriteInteger('lblEndereco', 'lblEndereco', lblEndereco.Left);
  Ini.WriteInteger('lblBairro', 'lblBairro', lblBairro.Left);
  Ini.WriteInteger('lblCidade', 'lblCidade', lblCidade.Left);
  Ini.WriteInteger('lblUF', 'lblUF', lblUF.Left);
  Ini.WriteInteger('lblExtenso', 'lblExtenso', lblExtenso.Left);

  Ini.WriteInteger('lblEspecDoc', 'lblEspecDoc', lblEspecDoc.Left);
  Ini.WriteInteger('lblDataProcessamento', 'lblDataProcessamento', lblDataProcessamento.Left);


  // Posição topo
  Ini.WriteInteger('tblLocalPagto', 'tblLocalPagto', lblLocalPagto.Top);
  Ini.WriteInteger('tblVencimento', 'tblVencimento', lblVencimento.Top);
  Ini.WriteInteger('tblDataDocto', 'tblDataDocto', lblDataDocto.Top);
  Ini.WriteInteger('tblNumDocto', 'tblNumDocto', lblNumDocto.Top);
  Ini.WriteInteger('tblValorDocto', 'tblValorDocto', lblValorDocto.Top);
  Ini.WriteInteger('tblInstrucoesdeResponsadoCedente', 'tblInstrucoesdeResponsadoCedente', lblInstrucoesdeResponsadoCedente.Top);
  Ini.WriteInteger('tblCliente', 'tblCliente', lblCliente.Top);
  Ini.WriteInteger('tblCNPJCPF', 'tblCNPJCPF', lblCNPJCPF.Top);
  Ini.WriteInteger('tblCidade', 'tblCidade', lblCidade.Top);
  Ini.WriteInteger('tblEndereco', 'tblEndereco', lblEndereco.Top);
  Ini.WriteInteger('tblBairro', 'tblBairro', lblBairro.Top);
  Ini.WriteInteger('tblUF', 'tblUF', lblUF.Top);
  Ini.WriteInteger('tblExtenso', 'tblExtenso', lblExtenso.Top);

  Ini.WriteInteger('tblEspecDoc', 'tblEspecDoc', lblEspecDoc.Top);
  Ini.WriteInteger('tblDataProcessamento', 'tblDataProcessamento', lblDataProcessamento.Top);
  finally
  Ini.Free;
  end;
end;

procedure TFrmEmissaoBoleto.btnFecharClick(Sender: TObject);
begin
cgravarexecute(self);
//showmessage('CONFIGURAÇÃO DUPLICATA FOI EFETUADA !');
//FrmMain.SkinData1.Active:= True;
close;
end;

procedure TFrmEmissaoBoleto.btnConsultarPedparaFaturaClick(
  Sender: TObject);
begin
   {   try
      application.CreateForm(TFrmConsultaEmissaoDuplicata, FrmConsultaEmissaoDuplicata);
      FrmConsultaEmissaoDuplicata.ShowModal;
      finally
      FrmConsultaEmissaoDuplicata.Free;
      end;}
end;

procedure TFrmEmissaoBoleto.btnConsultarClick(Sender: TObject);
begin
    {  try
      application.CreateForm(TFrmPesquisaNomeparaCartao,FrmPesquisaNomeparaCartao);
      FrmPesquisaNomeparaCartao.ShowModal;
      finally
      FrmPesquisaNomeparaCartao.Free;
      end; }
end;

procedure TFrmEmissaoBoleto.btnImprimirClick(Sender: TObject);
begin
(*      if edNumFatura.Text = '' then
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
      dmdados.TDuplicata.IndexName:= ''; *)

camposexecute(self);
//Quickimpcheque.preview;
//showmessage('EM DESENVOLVIMENTO !!!');
end;



procedure TFrmEmissaoBoleto.camposExecute(Sender: TObject);
begin
//PASSA OS VALORES DA TELA CADASTRO P/ TELA DE CONFIGURAÇÃO,
//DE RELATÓRIO...

lblLocalPagto.Caption:= edlocalpagto.Text;
lblVencimento.Caption:= eddataVencimento.Text;
lblDataDocto.Caption:= eddatadocto.Text;
lblNumDocto.Caption:= ednumdocto.Text;

//CONVERSÃO PARA FORMATO MOEDA, DA BRÁBA    ...MaMo...
//USEI UMA FUNCTION NOJENTA !!! EH ISSO !!!
lblValorDocto.Caption:= edvalordocto.Text;
lblValorDocto.Caption:= MaskString(lblValorDocto.Caption);

lblInstrucoesdeResponsadoCedente.Caption:= memoIntrucoes.Text;
lblCliente.Caption:= edcliente.Text;
lblCNPJCPF.Caption:=edcnpjcpf.Text;
lblCidade.Caption:=edCidade.Text;
lblEndereco.Caption:=edEndereco.Text;
lblBairro.Caption:=edBairro.Text;
lblUF.Caption := eduf.Text;
lblExtenso.Caption:= edExtenso.Text;


lblEspecDoc.Caption:= edEspecDoc.Text;
lblDataProcessamento.Caption:= edDataProc.Text;

end;

procedure TFrmEmissaoBoleto.salturaChange(Sender: TObject);
begin
  Quickimpcheque.Page.Length := saltura.Value;
  qrband1.size.Height := saltura.Value;
end;

procedure TFrmEmissaoBoleto.slarguraChange(Sender: TObject);
begin
  quickimpcheque.Page.Width := slargura.Value;
end;

procedure TFrmEmissaoBoleto.barhChange(Sender: TObject);
begin
  lph.Caption := floattostr(barh.position);

  if rdLocalPagto.Checked = True then
     lblLocalPagto.Left := barh.Position;

  if rdVencimento.Checked = true then
     lblVencimento.Left := barh.Position;

  if rdDataDocto.Checked = true then
     lblDataDocto.Left := barh.Position;

  if rdNumDocto.Checked = true then
     lblNumDocto.Left := barh.Position;

  if rdValorDocto.Checked = true then
     lblValorDocto.Left := barh.Position;

  if rdIntrucoesCedente.Checked = true then
     lblInstrucoesdeResponsadoCedente.Left := barh.Position;

  if rdCliente.Checked = true then
     lblCliente.Left := barh.Position;

  if rdCNPJCPF.Checked = True then
    lblCNPJCPF.Left := barh.Position;

  if rdEndereco.Checked = True then
    lblEndereco.Left := barh.Position;

  if rdBairro.Checked = True then
    lblBairro.Left := barh.Position;

  if rdCidade.Checked = True then
    lblCidade.Left := barh.Position;

  if rdUF.Checked = true then
     lblUF.Left := barh.Position;

  if rdExtenso.Checked = true then
     lblExtenso.Left := barh.Position;

     //acrescentado + 2 itens
  if rdEspecDoc.Checked = true then
     lblEspecDoc.Left := barh.Position;

  if rdDataProcessamento.Checked = true then
     lblDataProcessamento.Left := barh.Position;

end;

procedure TFrmEmissaoBoleto.barvChange(Sender: TObject);
begin
  lpv.Caption := floattostr(barv.position);

  if rdLocalPagto.Checked = True then
     lblLocalPagto.Top := barv.Position;

  if rdVencimento.Checked = true then
     lblVencimento.Top := barv.Position;

  if rdDataDocto.Checked = true then
     lblDataDocto.Top := barv.Position;

  if rdNumDocto.Checked = true then
     lblNumDocto.Top := barv.Position;

  if rdValorDocto.Checked = true then
     lblValorDocto.Top := barv.Position;

  if rdIntrucoesCedente.Checked = true then
     lblInstrucoesdeResponsadoCedente.Top := barv.Position;

  if rdCliente.Checked = true then
     lblCliente.Top := barv.Position;

  if rdCNPJCPF.Checked = True then
    lblCNPJCPF.Top := barv.Position;

  if rdCidade.Checked = True then
    lblCidade.Top := barv.Position;

  if rdEndereco.Checked = True then
    lblEndereco.Top := barv.Position;

  if rdBairro.Checked = True then
    lblBairro.Top := barv.Position;

  if rdCidade.Checked = True then
    lblCidade.Top := barv.Position;

  if rdUF.Checked = True then
    lblUF.Top := barv.Position;

  if rdExtenso.Checked = True then
    lblExtenso.Top := barv.Position;

       //acrescentado + 2 itens
  if rdEspecDoc.Checked = true then
     lblEspecDoc.Top := barv.Position;

  if rdDataProcessamento.Checked = true then
     lblDataProcessamento.Top := barv.Position;

end;

procedure TFrmEmissaoBoleto.rdLocalPagtoClick(Sender: TObject);
begin
  barh.Position := lblLocalPagto.Left;
  barv.Position := lblLocalPagto.top;
end;


procedure TFrmEmissaoBoleto.rdUFClick(Sender: TObject);
begin
  barh.Position := lblUF.Left;
  barv.Position := lblUF.Top;
end;

procedure TFrmEmissaoBoleto.rdCNPJCPFClick(Sender: TObject);
begin
  barh.Position := lblCNPJCPF.Left;
  barv.Position := lblCNPJCPF.Top;
end;


procedure TFrmEmissaoBoleto.PageControl1Change(Sender: TObject);
begin
{   if PageControl1.ActivePageIndex = 0 then
   if FrmMain.SkinData1.Active = false then
   begin
   FrmMain.SkinData1.Active:=true;
   end; }

    if PageControl1.ActivePageIndex = 1 then
    begin
      camposexecute(self);
   // windowstate := wsmaximized;
    end;

    if PageControl1.ActivePageIndex = 1 then
    begin
  //  FrmMain.SkinData1.active:= not FrmMain.SkinData1.active;
    Panel1.Visible:= false;
    end else
  //  if not FrmMain.SkinData1.Active then
  //  FrmMain.SkinData1.Active:=true;
    Panel1.Visible:= true;
end;

procedure TFrmEmissaoBoleto.SpeedButton12Click(Sender: TObject);
begin
//Quickimpcheque.PreviewModal;
Quickimpcheque.Preview;
//FrmMain.SkinData1.active:= not FrmMain.SkinData1.active;
end;

procedure TFrmEmissaoBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   cgravarexecute(self);  //grava configuração em Arq. .Ini
//   FrmMain.SkinData1.Active:= True;
end;

procedure TFrmEmissaoBoleto.FormCreate(Sender: TObject);
begin
 cabrirexecute(self);
// FrmMain.SkinData1.Active:= False;
end;

procedure TFrmEmissaoBoleto.btnConsultarMembroClick(Sender: TObject);
begin
   {   try
      application.CreateForm(TFrmCadastroMembrosAtivos, FrmCadastroMembrosAtivos);
      FrmCadastroMembrosAtivos.btnGerarCartao.Enabled:= True;
      FrmCadastroMembrosAtivos.ShowModal;
      finally
      FrmCadastroMembrosAtivos.Free;
      end; }
end;

procedure TFrmEmissaoBoleto.rdDataDoctoClick(Sender: TObject);
begin
barh.Position := lblDataDocto.Left;
barv.Position := lblDataDocto.Top;
end;

procedure TFrmEmissaoBoleto.rdNumDoctoClick(Sender: TObject);
begin
barh.Position := lblNumDocto.Left;
barv.Position := lblNumDocto.Top;
end;

procedure TFrmEmissaoBoleto.rdValorDoctoClick(Sender: TObject);
begin
barh.Position := lblValorDocto.Left;
barv.Position := lblValorDocto.Top;
end;

procedure TFrmEmissaoBoleto.rdEnderecoClick(Sender: TObject);
begin
barh.Position := lblEndereco.Left;
barv.Position := lblEndereco.Top;
end;

procedure TFrmEmissaoBoleto.rdBairroClick(Sender: TObject);
begin
barh.Position := lblBairro.Left;
barv.Position := lblBairro.Top;
end;

procedure TFrmEmissaoBoleto.rdCidadeClick(Sender: TObject);
begin
barh.Position := lblCidade.Left;
barv.Position := lblCidade.Top;
end;

procedure TFrmEmissaoBoleto.rdVencimentoClick(Sender: TObject);
begin
barh.Position := lblVencimento.Left;
barv.Position := lblVencimento.Top;
end;

procedure TFrmEmissaoBoleto.rdIntrucoesCedenteClick(Sender: TObject);
begin
barh.Position := lblInstrucoesdeResponsadoCedente.Left;
barv.Position := lblInstrucoesdeResponsadoCedente.Top;
end;

procedure TFrmEmissaoBoleto.rdClienteClick(Sender: TObject);
begin
barh.Position := lblCliente.Left;
barv.Position := lblCliente.Top;
end;

procedure TFrmEmissaoBoleto.tbshetConfiguraImpShow(Sender: TObject);
begin
//FrmMain.SkinData1.Active:= False;
end;

procedure TFrmEmissaoBoleto.rdExtensoClick(Sender: TObject);
begin
barh.Position := lblExtenso.Left;
barv.Position := lblExtenso.Top;
end;

procedure TFrmEmissaoBoleto.rdEspecDocClick(Sender: TObject);
begin
barh.Position := lblEspecDoc.Left;
barv.Position := lblEspecDoc.Top;
end;

procedure TFrmEmissaoBoleto.rdDataProcessamentoClick(Sender: TObject);
begin
barh.Position := lblDataProcessamento.Left;
barv.Position := lblDataProcessamento.Top;
end;

procedure TFrmEmissaoBoleto.eddatadoctoExit(Sender: TObject);
begin
edDataProc.Text:= eddatadocto.Text;
end;

procedure TFrmEmissaoBoleto.btnAtivaSkinClick(Sender: TObject);
begin
  { if not FrmMain.SkinData1.Active then
   FrmMain.SkinData1.Active:=true; }
end;

procedure TFrmEmissaoBoleto.qrband1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
FrmEmissaoBoleto.Close;
end;

end.
