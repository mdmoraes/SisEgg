unit UCadastroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, RXCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, IndexDBGrid;

type
  TFmClientes = class(TForm)
    PainelTitulo: TPanel;
    RxLabel1: TRxLabel;
    Label1: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    dbTextDataCadastro: TDBText;
    Label19: TLabel;
    Label5: TLabel;
    edEndereco: TDBEdit;
    Label6: TLabel;
    edBairro: TDBEdit;
    Label7: TLabel;
    edCidade: TDBEdit;
    Label8: TLabel;
    comboEstado: TDBComboBox;
    Label9: TLabel;
    edCep: TDBEdit;
    Label11: TLabel;
    edTelCom: TDBEdit;
    Label12: TLabel;
    edFax: TDBEdit;
    Label10: TLabel;
    edCelular: TDBEdit;
    Label13: TLabel;
    edContato: TDBEdit;
    Label14: TLabel;
    edEmail: TDBEdit;
    Label15: TLabel;
    edHomepage: TDBEdit;
    Label18: TLabel;
    memoObs: TDBMemo;
    DBText2: TDBText;
    Label21: TLabel;
    PainelConfirma: TPanel;
    SbDesistir: TSpeedButton;
    SbConfirmar: TSpeedButton;
    PainelControle: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SbConsulta: TSpeedButton;
    Btincluir: TBitBtn;
    BtnAltera: TBitBtn;
    BtExcluir: TBitBtn;
    BtSaida: TBitBtn;
    SpeedButton5: TSpeedButton;
    edVendedor: TDBEdit;
    rdTipoPessoa: TDBRadioGroup;
    pnlJuridica: TPanel;
    Label22: TLabel;
    edNomeFantasia: TDBEdit;
    edCNPJ: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    edIE: TDBEdit;
    pnlFisica: TPanel;
    Label16: TLabel;
    edCPF: TDBEdit;
    Label17: TLabel;
    edRG: TDBEdit;
    Label24: TLabel;
    edContato2: TDBEdit;
    edCodCliente: TDBText;
    Button1: TButton;
    btnCancelaFiltro: TButton;
    gboxPessoa: TGroupBox;
    rdPJuridica: TRadioButton;
    rdPFisica: TRadioButton;
    lblNomeCliente: TLabel;
    edNomeCliente: TDBEdit;
    lblRazaoSocial: TLabel;
    Label2: TLabel;
    edPontoReferencia: TDBEdit;
    procedure SbDesistirClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure SbConsultaClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure rdFisicaClick(Sender: TObject);
    procedure rdJuridicaClick(Sender: TObject);
    procedure rdTipoPessoaClick(Sender: TObject);
    procedure rdTipoPessoaChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCancelaFiltroClick(Sender: TObject);
    procedure rdPJuridicaClick(Sender: TObject);
    procedure rdPFisicaClick(Sender: TObject);
    procedure edNomeClienteExit(Sender: TObject);
    procedure edRazaoSocialExit(Sender: TObject);
    procedure edCNPJExit(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure edRGExit(Sender: TObject);
    procedure edIEExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmClientes: TFmClientes;

implementation

uses Base, UFrmConsultaporNomeCliente, UFrmConsultaVendedor,
  UPesquisaNomeCliente;

{$R *.dfm}

procedure TFmClientes.SbDesistirClick(Sender: TObject);
begin
        DmDados.tbClientes.Cancel;
        DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
        gboxPessoa.Visible:= False;
end;

procedure TFmClientes.SbConfirmarClick(Sender: TObject);
begin
    Try
    DmDados.tbClientes.Post;
    DmDados.BancoDados.Commit;

    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
    Except
        on E:Exception do
         Begin
           If Pos('Cli_Cliente',E.Message)<>0 then
           Application.MessageBox('O Campo NOME deve ser prenchido','Atenção',64);
           Abort
         end;
     end;
     gboxPessoa.Visible:= False;
end;

procedure TFmClientes.SbConsultaClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmPequisaClienteVendas, FrmPequisaClienteVendas);
   FrmPequisaClienteVendas.ShowModal;
   finally
   FrmPequisaClienteVendas.Free;
   end;
end;

procedure TFmClientes.BtExcluirClick(Sender: TObject);
begin
Try
    if Application.MessageBox('Deseja eliminar este Registro?','Eliminação de Registro',
    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN DmDados.tbClientes.Delete;//EMITE MESSAGEM DE ELIMINAÇÃO DE REGISTRO.
     Except
        on E:Exception do
     Begin
           If Pos('DMDados.tbCliente',E.Message)<>0 then
           Application.MessageBox('Todos os Clientes já foram excluidos!','Aviso',48);
           Abort;
     end;
   end;
end;

procedure TFmClientes.BtincluirClick(Sender: TObject);
begin
    gboxPessoa.Visible:= True;
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Cliente.value:=
    DmDados.TbInformativoInf_Cliente.Value+1;
    Dmdados.TbInformativo.post;

    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=true;

    DmDados.BancoDados.StartTransaction;
    DmDados.tbClientes.Append;
    DmDados.tbClientesCli_Codigo.value:=
    DmDados.TbInformativoInf_Cliente.Value;
    DmDados.tbClientes['Cli_DataCadastro']:= DateToStr(Now);
    edVendedor.SetFocus;
end;

procedure TFmClientes.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma.Visible:=True;

    DmDados.BancoDados.StartTransaction;
    DmDados.tbClientes.Edit;
    edVendedor.setfocus;
end;

procedure TFmClientes.BtSaidaClick(Sender: TObject);
begin
Close;
end;

procedure TFmClientes.SpeedButton1Click(Sender: TObject);
begin
//btnCancelaFiltroClick(self);
DmDados.tbClientes.First;
end;

procedure TFmClientes.SpeedButton2Click(Sender: TObject);
begin
//btnCancelaFiltroClick(self);
DmDados.tbClientes.Prior;
end;

procedure TFmClientes.SpeedButton3Click(Sender: TObject);
begin
//btnCancelaFiltroClick(self);
DmDados.tbClientes.Next;
end;

procedure TFmClientes.SpeedButton4Click(Sender: TObject);
begin
//btnCancelaFiltroClick(self);
DmDados.tbClientes.Last;
end;

procedure TFmClientes.rdFisicaClick(Sender: TObject);
begin
pnlFisica.Visible:= True;
pnlJuridica.Visible:= False;
end;

procedure TFmClientes.rdJuridicaClick(Sender: TObject);
begin
pnlFisica.Visible:= False;
pnlJuridica.Visible:= True;
end;

procedure TFmClientes.rdTipoPessoaClick(Sender: TObject);
begin
 if rdTipoPessoa.ItemIndex = 0 then
    begin
    pnlFisica.Visible:= True;
    pnlJuridica.Visible:= False;
    end;

    if rdTipoPessoa.ItemIndex = 1 then
    begin
    pnlFisica.Visible:= False;
    pnlJuridica.Visible:= True;
    end;
end;

procedure TFmClientes.rdTipoPessoaChange(Sender: TObject);
begin
    if rdTipoPessoa.ItemIndex = 0 then
    begin
    rdPFisica.Checked:= True;

    {lblNomeCliente.Visible:= True;
    lblRazaoSocial.Visible:= False;
    pnlFisica.Visible:= True;
    pnlJuridica.Visible:= False;}
    end;

    if rdTipoPessoa.ItemIndex = 1 then
    begin
    rdPJuridica.Checked:= True;
    {lblRazaoSocial.Visible:= True;
    lblNomeCliente.Visible:= False;
    pnlFisica.Visible:= False;
    pnlJuridica.Visible:= True;}
    end;
end;

procedure TFmClientes.SpeedButton5Click(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmConsultaVendedor, FrmConsultaVendedor);
   FrmConsultaVendedor.ShowModal;
   Finally
   FrmConsultaVendedor.Free;
   end;
end;

procedure TFmClientes.FormShow(Sender: TObject);
begin
DmDados.tbClientes.Last;
DmDados.tbClientes.First;
edVendedor.SetFocus;
end;

procedure TFmClientes.Button1Click(Sender: TObject);
begin
{ DmDados.tbClientes.Open;
 DmDados.tbClientes.First;
 if not DmDados.tbClientes.Eof then
  repeat
     DmDados.TbClientes.Edit;
     if DmDados.TbClientesCli_CGC.Value <> '' then
//     DmDados.TbClientesCli_Cliente.Value:= DMDados.TbClientesCli_Razao.Value;
     DmDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
//     DmDados.TbClientes.Edit;
     DmDados.TbClientes.Post;

  DmDados.tbClientes.Next;
  until DmDados.tbClientes.Eof;}
 //atualiza CNPJ COMO JURÍDICA}
end;

procedure TFmClientes.btnCancelaFiltroClick(Sender: TObject);
begin
//DmDados.TbClientes.Filtered := False;
//DmDados.TbClientes.IndexName := 'ICli_Codigo';
end;

procedure TFmClientes.rdPJuridicaClick(Sender: TObject);
begin
    if rdPJuridica.Checked = True then
    lblRazaoSocial.Visible:= True;
    lblNomeCliente.Visible:= False;
    pnlFisica.Visible:= False;
    pnlJuridica.Visible:= True;
end;

procedure TFmClientes.rdPFisicaClick(Sender: TObject);
begin
    If rdPFisica.Checked = true then
    lblNomeCliente.Visible:= True;
    lblRazaoSocial.Visible:= False;
    pnlFisica.Visible:= True;
    pnlJuridica.Visible:= False;
end;

procedure TFmClientes.edNomeClienteExit(Sender: TObject);
begin
 {   if edNomeCliente.Text <> '' then
    begin
    if lblNomeCliente.Caption = 'Nome:' then
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
    end
    else
    if edNomeCliente.Text <> '' then
    begin
    if lblRazaoSocial.Caption = 'R. Social:' then
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
    end;}
end;

procedure TFmClientes.edRazaoSocialExit(Sender: TObject);
begin
    {if edNomeCliente.Text <> '' then
    begin
    if lblNomeCliente.Caption = 'R.Social:' then
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
    end;}
end;

procedure TFmClientes.edCNPJExit(Sender: TObject);
begin
    if edCNPJ.Text <> '' then
    begin
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
    end;
end;
         
procedure TFmClientes.edCPFExit(Sender: TObject);
begin
    if edCPF.Text <> '' then
    begin
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
    end;
end;

procedure TFmClientes.edRGExit(Sender: TObject);
begin
    if edRG.Text <> '' then
    begin
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
    end;
end;

procedure TFmClientes.edIEExit(Sender: TObject);
begin
    if edIE.Text <> '' then
    begin
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
    end;
end;

end.


