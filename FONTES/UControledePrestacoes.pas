unit UControledePrestacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TFrmControlePrestacoes = class(TForm)
    lblCliente: TLabel;
    edNomeCliente: TDBEdit;
    Label2: TLabel;
    edDataPedido: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edFormaPagto: TDBEdit;
    Label4: TLabel;
    edVrTotalPedido: TDBEdit;
    GroupBox2: TGroupBox;
    edData1parc: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    edVr1: TDBEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edData2parc: TDBEdit;
    edVr2: TDBEdit;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    ed3Parc: TDBEdit;
    edVr3: TDBEdit;
    Panel1: TPanel;
    btnPesquisar: TSpeedButton;
    btnPrint1: TSpeedButton;
    btnPrint2: TSpeedButton;
    btnPrint3: TSpeedButton;
    btnFechar: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox5: TGroupBox;
    chbox1: TDBCheckBox;
    chbox2: TDBCheckBox;
    chbox3: TDBCheckBox;
    btnAlterar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSkin: TSpeedButton;
    btnLocaliza: TSpeedButton;
    btnConsultaPedidos: TSpeedButton;
    GroupBox6: TGroupBox;
    edNumPedido: TDBEdit;
    edPedido2: TDBEdit;
    edPedido3: TDBEdit;
    edPedido4: TDBEdit;
    edPedido5: TDBEdit;
    edCodigo: TDBEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnPrint1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPrint2Click(Sender: TObject);
    procedure btnPrint3Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSkinClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chbox1Click(Sender: TObject);
    procedure chbox2Click(Sender: TObject);
    procedure chbox3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLocalizaClick(Sender: TObject);
    procedure btnConsultaPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControlePrestacoes: TFrmControlePrestacoes;

implementation

uses Base, UCadClie, UPedidos, UMain, Extens,
  UProcuraBoleto;

{$R *.dfm}

procedure TFrmControlePrestacoes.btnFecharClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrmControlePrestacoes.btnPrint1Click(Sender: TObject);
begin //1
      if (edVr1.Text = '') or (edData1parc.Text = '')then
      Begin
      showmessage('DADOS DA 1ª PARCELA ESTÃO EM BRANCO.');
      EXIT;
      end else
      dmdados.TbClientes.Locate('Cli_Cliente', edNomeCliente.Text, []);

      if chbox1.Checked = true then
      begin //2
      showmessage('BOLETO JÁ FOI IMPRESSO !');
      EXIT;
      end;

   try
   application.CreateForm(TFrmEmissaoBoleto, FrmEmissaoBoleto);
        if chbox1.Checked = false then
        begin //3
        chbox1.Caption:= 'Sim';
        dmdados.TPendenciasBoleto.Edit;
        dmdados.TPendenciasBoletoPago1.Value:= True;
        dmdados.TPendenciasBoleto.Post;

        FrmEmissaoBoleto.edcliente.Text:= edNomeCliente.Text;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Fisica' then
          begin //4
          FrmEmissaoBoleto.edcnpjcpf.Text:= DmDados.TbClientesCli_Cpf.Value;
          end;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Juridica' then
          begin  //5
          FrmEmissaoBoleto.edcnpjcpf.Text:= DmDados.TbClientesCli_CGC.Value;
          end;

          FrmEmissaoBoleto.eddataVencimento.Text:= dmdados.TPendenciasBoletoData1Parc.AsString;
          FrmEmissaoBoleto.edcliente.Text:= dmdados.TPendenciasBoletoCliente.Value;
          FrmEmissaoBoleto.edvalordocto.Text:= dmdados.TPendenciasBoletoVr1.AsString;
          FrmEmissaoBoleto.edendereco.Text:= dmdados.TbClientesCli_Endereco.Value;
          FrmEmissaoBoleto.edbairro.Text:= dmdados.TbClientesCli_Bairro.Value;
          FrmEmissaoBoleto.edcidade.Text:= dmdados.TbClientesCli_Cidade.Value;
          FrmEmissaoBoleto.eduf.Text:= dmdados.TbClientesCli_Estado.Value;
          FrmEmissaoBoleto.edExtenso.Text:= extenso(strtofloat(FrmEmissaoBoleto.edvalordocto.Text));
       end;

{    if FrmMain.SkinData1.active = true then
    begin
    FrmMain.SkinData1.active:= false;
    end;  }


   FrmEmissaoBoleto.ShowModal;
   finally
   FrmEmissaoBoleto.Free;
   end;
end;

procedure TFrmControlePrestacoes.btnPesquisarClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmProcurarBoleto, FrmProcurarBoleto);
    FrmProcurarBoleto.ShowModal;
    finally
    FrmProcurarBoleto.Free;
    end;
end;

procedure TFrmControlePrestacoes.btnPrint2Click(Sender: TObject);
begin
      if (edVr2.Text = '') or (edData2parc.Text = '') then
      Begin
      showmessage('DADOS DA 2ª PARCELA ESTÃO EM BRANCO.');
      EXIT;
      end else
      dmdados.TbClientes.Locate('Cli_Cliente', edNomeCliente.Text, []);

      if chbox2.Checked = true then
      begin //2
      showmessage('BOLETO JÁ FOI IMPRESSO !');
      EXIT;
      end;

   try
   application.CreateForm(TFrmEmissaoBoleto, FrmEmissaoBoleto);

        if chbox2.Checked = false then
        begin //3
        chbox2.Caption:= 'Sim';
        dmdados.TPendenciasBoleto.Edit;
        dmdados.TPendenciasBoletoPago2.Value:= True;
        dmdados.TPendenciasBoleto.Post;

        FrmEmissaoBoleto.edcliente.Text:= edNomeCliente.Text;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Fisica' then
          begin //4
          FrmEmissaoBoleto.edcnpjcpf.Text:= DmDados.TbClientesCli_Cpf.Value;
          end;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Juridica' then
          begin  //5
          FrmEmissaoBoleto.edcnpjcpf.Text:= DmDados.TbClientesCli_CGC.Value;
          end;

          FrmEmissaoBoleto.eddataVencimento.Text:= dmdados.TPendenciasBoletoData2Parc.AsString;
          FrmEmissaoBoleto.edcliente.Text:= dmdados.TPendenciasBoletoCliente.Value;
          FrmEmissaoBoleto.edvalordocto.Text:= dmdados.TPendenciasBoletoVr2.AsString;
          FrmEmissaoBoleto.edendereco.Text:= dmdados.TbClientesCli_Endereco.Value;
          FrmEmissaoBoleto.edbairro.Text:= dmdados.TbClientesCli_Bairro.Value;
          FrmEmissaoBoleto.edcidade.Text:= dmdados.TbClientesCli_Cidade.Value;
          FrmEmissaoBoleto.eduf.Text:= dmdados.TbClientesCli_Estado.Value;
          FrmEmissaoBoleto.edExtenso.Text:= extenso(strtofloat(FrmEmissaoBoleto.edvalordocto.Text));
       end;

   FrmEmissaoBoleto.ShowModal;
   finally
   FrmEmissaoBoleto.Free;
   end;

end;

procedure TFrmControlePrestacoes.btnPrint3Click(Sender: TObject);
begin
      if (edVr3.Text = '') or (ed3Parc.Text = '') then
      Begin
      showmessage('DADOS DA 3ª PARCELA ESTÃO EM BRANCO.');
      EXIT;
      end else
      dmdados.TbClientes.Locate('Cli_Cliente', edNomeCliente.Text, []);

      if chbox3.Checked = true then
      begin //2
      showmessage('BOLETO JÁ FOI IMPRESSO !');
      EXIT;
      end;

   try
   application.CreateForm(TFrmEmissaoBoleto, FrmEmissaoBoleto);
        if chbox3.Checked = false then
        begin //3
        chbox3.Caption:= 'Sim';
        dmdados.TPendenciasBoleto.Edit;
        dmdados.TPendenciasBoletoPago3.Value:= True;
        dmdados.TPendenciasBoleto.Post;

        FrmEmissaoBoleto.edcliente.Text:= edNomeCliente.Text;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Fisica' then
          begin //4
          FrmEmissaoBoleto.edcnpjcpf.Text:= DmDados.TbClientesCli_Cpf.Value;
          end;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Juridica' then
          begin  //5
          FrmEmissaoBoleto.edcnpjcpf.Text:= DmDados.TbClientesCli_CGC.Value;
          end;

          FrmEmissaoBoleto.eddataVencimento.Text:= dmdados.TPendenciasBoletoData3Parc.AsString;
          FrmEmissaoBoleto.edcliente.Text:= dmdados.TPendenciasBoletoCliente.Value;

          FrmEmissaoBoleto.edvalordocto.Text:= dmdados.TPendenciasBoletoVr3.AsString;
          FrmEmissaoBoleto.edendereco.Text:= dmdados.TbClientesCli_Endereco.Value;

          FrmEmissaoBoleto.edbairro.Text:= dmdados.TbClientesCli_Bairro.Value;
          FrmEmissaoBoleto.edcidade.Text:= dmdados.TbClientesCli_Cidade.Value;
          FrmEmissaoBoleto.eduf.Text:= dmdados.TbClientesCli_Estado.Value;
          FrmEmissaoBoleto.edExtenso.Text:= extenso(strtofloat(FrmEmissaoBoleto.edvalordocto.Text));
       end;

   FrmEmissaoBoleto.ShowModal;
   finally
   FrmEmissaoBoleto.Free;
   end;

end;

procedure TFrmControlePrestacoes.btnAlterarClick(Sender: TObject);
begin
dmdados.TPendenciasBoleto.Edit;
end;

procedure TFrmControlePrestacoes.btnGravarClick(Sender: TObject);
begin
dmdados.TPendenciasBoleto.Edit;
dmdados.TPendenciasBoleto.Post;
end;

procedure TFrmControlePrestacoes.btnCancelarClick(Sender: TObject);
begin
dmdados.TPendenciasBoleto.Cancel;
end;

procedure TFrmControlePrestacoes.FormActivate(Sender: TObject);
begin
//FrmMain.SkinData1.Active:= True;
end;

procedure TFrmControlePrestacoes.btnSkinClick(Sender: TObject);
begin
//FrmMain.SkinData1.Active:= True;
end;

procedure TFrmControlePrestacoes.FormShow(Sender: TObject);
begin
dmdados.TPendenciasBoleto.Edit;

if (edVr1.Text <> '') and (chbox1.Checked = False) then
dmdados.TPendenciasBoletoPago1.Value:= False;


if (edVr2.Text <> '') and (chbox2.Checked = False) then
dmdados.TPendenciasBoletoPago2.Value:= False;


if (edVr3.Text <> '') and (chbox3.Checked = False) then
dmdados.TPendenciasBoletoPago3.Value:= False;
dmdados.TPendenciasBoleto.Post;
dmdados.TPendenciasBoleto.Edit;
end;

procedure TFrmControlePrestacoes.FormCreate(Sender: TObject);
begin
// FrmMain.SkinData1.Active:= False;
end;

procedure TFrmControlePrestacoes.chbox1Click(Sender: TObject);
begin
if chbox1.Checked = false then
chbox1.Caption:= 'Não' else
chbox1.Caption:= 'Sim';
end;

procedure TFrmControlePrestacoes.chbox2Click(Sender: TObject);
begin
if chbox2.Checked = false then
chbox2.Caption:= 'Não' else
chbox2.Caption:= 'Sim';
end;

procedure TFrmControlePrestacoes.chbox3Click(Sender: TObject);
begin
    if chbox3.Checked = false then
    chbox3.Caption:= 'Não' else
    chbox3.Caption:= 'Sim';
end;

procedure TFrmControlePrestacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{    if DMDados.TPendenciasBoleto.Modified then
    if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
    DMDados.TPendenciasBoleto.Post
    else
    DMDados.TPendenciasBoleto.Cancel;}

//    FrmMain.SkinData1.Active:= True;
end;

procedure TFrmControlePrestacoes.btnLocalizaClick(Sender: TObject);
begin
      //BUSCA TELA ORDEM DE SERVIÇO ......
       IF dmdados.Tbpedidos.Locate('Ped_Numero', edNumPedido.Text, []) THEN
         BEGIN
            try
            Application.CreateForm(TFmPedidos, FmPedidos);
            FmPedidos.ShowModal;
            finally
            FmPedidos.Free;
            end;
         END; 
end;

procedure TFrmControlePrestacoes.btnConsultaPedidosClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmConsultaPedidosparaGerarBoletos, FrmConsultaPedidosparaGerarBoletos);
      FrmConsultaPedidosparaGerarBoletos.showmodal;
      finally
      FrmConsultaPedidosparaGerarBoletos.Free;
      end;
end;

end.
