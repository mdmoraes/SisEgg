unit UCadCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask;

type
  TFrmCadCli = class(TForm)
    PainelDados: TPanel;
    PainelTitulo: TPanel;
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
    PainelConfirma: TPanel;
    SbDesistir: TSpeedButton;
    SbConfirmar: TSpeedButton;
    lblRazaoSocial: TLabel;
    Label19: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBText2: TDBText;
    Label21: TLabel;
    SpeedButton5: TSpeedButton;
    Label24: TLabel;
    edCodCliente: TDBText;
    lblNomeCliente: TLabel;
    Label2: TLabel;
    pnlFisica: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    edCPF: TDBEdit;
    edRG: TDBEdit;
    edEndereco: TDBEdit;
    edBairro: TDBEdit;
    edCidade: TDBEdit;
    comboEstado: TDBComboBox;
    edCep: TDBEdit;
    edTelCom: TDBEdit;
    edFax: TDBEdit;
    edCelular: TDBEdit;
    edContato: TDBEdit;
    edEmail: TDBEdit;
    edHomepage: TDBEdit;
    memoObs: TDBMemo;
    edVendedor: TDBEdit;
    rdTipoPessoa: TDBRadioGroup;
    pnlJuridica: TPanel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNomeFantasia: TDBEdit;
    edCNPJ: TDBEdit;
    edIE: TDBEdit;
    edContato2: TDBEdit;
    Button1: TButton;
    btnCancelaFiltro: TButton;
    gboxPessoa: TGroupBox;
    rdPJuridica: TRadioButton;
    rdPFisica: TRadioButton;
    edNomeCliente: TDBEdit;
    edPontoReferencia: TDBEdit;
    procedure SbDesistirClick(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure SbConsultaClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCli: TFrmCadCli;

implementation

uses Base, UPesquisaNomeCliente, UMain;

{$R *.dfm}

procedure TFrmCadCli.SbDesistirClick(Sender: TObject);
begin
        DmDados.tbClientes.Cancel;
        DmDados.BancoDados.Rollback;
        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
        gboxPessoa.Visible:= False;
end;

procedure TFrmCadCli.BtincluirClick(Sender: TObject);
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

procedure TFrmCadCli.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma.Visible:=True;

    DmDados.BancoDados.StartTransaction;
    DmDados.tbClientes.Edit;
    edVendedor.setfocus;
end;

procedure TFrmCadCli.BtExcluirClick(Sender: TObject);
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

procedure TFrmCadCli.SbConsultaClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmPequisaClienteVendas, FrmPequisaClienteVendas);
   FrmPequisaClienteVendas.ShowModal;
   finally
   FrmPequisaClienteVendas.Free;
   end;
end;

procedure TFrmCadCli.BtSaidaClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCadCli.SbConfirmarClick(Sender: TObject);
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

procedure TFrmCadCli.SpeedButton1Click(Sender: TObject);
begin
DmDados.tbClientes.First;
end;

procedure TFrmCadCli.SpeedButton2Click(Sender: TObject);
begin
DmDados.tbClientes.Prior;
end;

procedure TFrmCadCli.SpeedButton3Click(Sender: TObject);
begin
DmDados.tbClientes.NEXT;
end;

procedure TFrmCadCli.SpeedButton4Click(Sender: TObject);
begin
DmDados.tbClientes.Last;
end;

end.
