unit USenhaAcessoGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmSenhadeAcessoGerencial = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    btnOK: TBitBtn;
    btnCancelar: TBitBtn;
    btnMudarSenha: TBitBtn;
    gboxMudarSenha: TGroupBox;
    edSenhaAtual: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edNovaSenha: TEdit;
    btnConfirma: TSpeedButton;
    btnCancelaMudanca: TSpeedButton;
    Label4: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnMudarSenhaClick(Sender: TObject);
    procedure btnCancelaMudancaClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edSenhaAtualExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSenhadeAcessoGerencial: TFrmSenhadeAcessoGerencial;

implementation

uses Base, UFluxodeCaixa, UContasaPagar, UConsutltaAtivoPassivo,
  URankingVendasdeProdutos, URankingClientes, UConsultadeVendas,
  UConsultaVendasExternas, UConsultaVendaBalcao, UConsultaItensVendidos;

{$R *.dfm}

procedure TFrmSenhadeAcessoGerencial.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFrmSenhadeAcessoGerencial.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrmSenhadeAcessoGerencial.btnOKClick(Sender: TObject);
begin
if not (dmdados.TPermissoes.Locate('SenhaGerencial', Edit1.Text, [])) or (Edit1.Text = '') then
begin
showmessage('SENHA INCORRETA !');
//it1.Text:= '';
exit;
end else
    if label4.Caption = 'Fluxo' then
    Try
      Application.CreateForm(TFrmFluxodeCaixa, FrmFluxodeCaixa);
      FrmFluxodeCaixa.ShowModal;
    Finally
      FrmFluxodeCaixa.Free;
    end;
    Edit1.Clear;
    btnCancelarClick(self);


    if label4.Caption = 'Contas' then
    try
    application.CreateForm(TFrmContasapagar, FrmContasapagar);
    FrmContasapagar.ShowModal;
    finally
    FrmContasapagar.Free;
    end;
    btnCancelarClick(self);


    if label4.Caption = 'AP' then
    try
    Application.CreateForm(TFrmConsultaAtivoPassivo, FrmConsultaAtivoPassivo);
    FrmConsultaAtivoPassivo.ShowModal;
    finally
    FrmConsultaAtivoPassivo.Free;
    end;
    btnCancelarClick(self);

    ///////IMPLEMENTAÇÃO EM 13072009

//    if label4.Caption = 'Itens' then
//    try
//    application.CreateForm(TFrmRankingvendasdeProdutos, FrmRankingvendasdeProdutos);
//    FrmRankingvendasdeProdutos.ShowModal;
//    finally
//    FrmRankingvendasdeProdutos.Free;
//    end;
//    btnCancelarClick(self);


//    if label4.Caption = 'RankCli' then
//    TRY
//    application.CreateForm(TFrmRankingClientes, FrmRankingClientes);
//    FrmRankingClientes.ShowModal;
//    finally
//    FrmRankingClientes.Free;
//    end;
//    btnCancelarClick(self);

//
//
//    if label4.Caption = 'ConsVendas' then
//    try
//    application.CreateForm(TFrmConsultadeVendas, FrmConsultadeVendas);
//    FrmConsultadeVendas.ShowModal;
//    finally
//    FrmConsultadeVendas.Free;
//    end;
//    btnCancelarClick(self);


    if label4.Caption = 'VendasExternas' then
    try
    application.CreateForm(TFrmConsultaVendasExternas, FrmConsultaVendasExternas);
    FrmConsultaVendasExternas.ShowModal;
    finally
    FrmConsultaVendasExternas.Free;
    end;
    btnCancelarClick(self);


    if label4.Caption = 'VendasBalcao' then
    try
    application.CreateForm(TFrmConsultaVendaBalcao, FrmConsultaVendaBalcao);
    FrmConsultaVendaBalcao.ShowModal;
    finally
    FrmConsultaVendaBalcao.Free;
    end;

    if label4.Caption = 'VendaItens' then
    try
    application.CreateForm(TFrmConsultaItensVendidos, FrmConsultaItensVendidos);
    FrmConsultaItensVendidos.ShowModal;
    finally
    FrmConsultaItensVendidos.Free;
    end;
    btnCancelarClick(self);
end;

procedure TFrmSenhadeAcessoGerencial.btnMudarSenhaClick(Sender: TObject);
begin
gboxMudarSenha.Visible:= True;
edSenhaAtual.SetFocus;
end;

procedure TFrmSenhadeAcessoGerencial.btnCancelaMudancaClick(
  Sender: TObject);
begin
gboxMudarSenha.Visible:= false;
end;

procedure TFrmSenhadeAcessoGerencial.btnConfirmaClick(Sender: TObject);
begin
dmdados.TPermissoes.Edit;
dmdados.TPermissoesSenhaGerencial.AsString:= edNovaSenha.Text;
dmdados.TPermissoes.Post;
showmessage('NOVA SENHA GRAVADA !');
gboxMudarSenha.Visible:= false;
end;

procedure TFrmSenhadeAcessoGerencial.edSenhaAtualExit(Sender: TObject);
begin
dmdados.TPermissoes.Locate('SenhaGerencial', edSenhaAtual.Text, []);

if edSenhaAtual.Text <> dmdados.TPermissoesSenhaGerencial.Value then
begin
showmessage('SENHA ATUAL INCORRETA !');
edSenhaAtual.Text:= '';
edSenhaAtual.SetFocus;
//EXIT;
end else

    if edSenhaAtual.Text = dmdados.TPermissoesSenhaGerencial.Value then
    BEGIN
    edNovaSenha.Enabled:= true;
    edNovaSenha.SetFocus;
    Showmessage('DIGITE A NOVA SENHA !');
    end;
end;
end.
