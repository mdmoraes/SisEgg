unit UClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, AppEvnts, RXCtrls;

type
  TFmClientes = class(TForm)
    PainelTitulo: TPanel;
    PainelControle: TPanel;
    PainelDados: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Btincluir: TBitBtn;
    BtnAltera: TBitBtn;
    BtExcluir: TBitBtn;
    BtSaida: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    editNome: TDBEdit;
    Label3: TLabel;
    editCnpj: TDBEdit;
    Label4: TLabel;
    editIE: TDBEdit;
    Label5: TLabel;
    editEndereco: TDBEdit;
    Label6: TLabel;
    editBairro: TDBEdit;
    Label7: TLabel;
    editCidade: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    editCep: TDBEdit;
    Label10: TLabel;
    editCelular: TDBEdit;
    Label11: TLabel;
    editTelCom: TDBEdit;
    Label12: TLabel;
    editFax: TDBEdit;
    Label13: TLabel;
    editContato: TDBEdit;
    Label14: TLabel;
    editEmail: TDBEdit;
    Label15: TLabel;
    editHomepage: TDBEdit;
    PainelConfirma: TPanel;
    comboEstado: TDBComboBox;
    SbDesistir: TSpeedButton;
    SbConfirmar: TSpeedButton;
    SbConsulta: TSpeedButton;
    RxLabel1: TRxLabel;
    memoObs: TDBMemo;
    Label16: TLabel;
    Label17: TLabel;
    editCPF: TDBEdit;
    editRG: TDBEdit;
    Label18: TLabel;
    lookupVendedor: TDBLookupComboBox;
    Label19: TLabel;
    dbTextDataCadastro: TDBText;
    Label20: TLabel;
    DBText1: TDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure BtConfirma17Click(Sender: TObject);
    procedure BtDesiste16Click(Sender: TObject);
    procedure editNomeKeyPress(Sender: TObject; var Key: Char);
    procedure editCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure editIEKeyPress(Sender: TObject; var Key: Char);
    procedure editEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure editBairroKeyPress(Sender: TObject; var Key: Char);
    procedure editCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure comboEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure editCepKeyPress(Sender: TObject; var Key: Char);
    procedure editCelularKeyPress(Sender: TObject; var Key: Char);
    procedure editTelComKeyPress(Sender: TObject; var Key: Char);
    procedure editFaxKeyPress(Sender: TObject; var Key: Char);
    procedure editContatoKeyPress(Sender: TObject; var Key: Char);
    procedure editEmailKeyPress(Sender: TObject; var Key: Char);
    procedure editHomepageKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Btconfirmar17Click(Sender: TObject);
    procedure SbDesistirClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure DBRichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SbConsultaClick(Sender: TObject);
    procedure editCPFExit(Sender: TObject);
    procedure editCnpjExit(Sender: TObject);
    procedure editNomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmClientes: TFmClientes;

implementation

uses Base, Ucic_cgc, UFrmConsultaporNomeCliente;

{$R *.DFM}

procedure TFmClientes.SpeedButton1Click(Sender: TObject);
begin
    DmDados.tbClientes.First;
end;

procedure TFmClientes.SpeedButton2Click(Sender: TObject);
begin
    DmDados.tbClientes.Prior;
end;

procedure TFmClientes.SpeedButton3Click(Sender: TObject);
begin
     DmDados.tbClientes.Next;
end;

procedure TFmClientes.SpeedButton4Click(Sender: TObject);
begin
DmDados.tbClientes.last;
end;

procedure TFmClientes.BtincluirClick(Sender: TObject);
begin
   // FrmConsultaNomeCliente.ShowModal;

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
  //tblCadastro['Dtcadastro']:=DateToStr(Now);
  //tbClientesCli_DataCadastro
    editNome.SetFocus;
end;

procedure TFmClientes.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma.Visible:=True;

    DmDados.BancoDados.StartTransaction;
    DmDados.tbClientes.Edit;
    editNome.setfocus;
end;

procedure TFmClientes.BtExcluirClick(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja eliminar este Registro?','Eliminação de Registro',
    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN DmDados.tbClientes.Delete;//EMITE MESSAGEM DE ELIMINAÇÃO DE REGISTRO.
     Except
        on E:Exception do
     Begin
           If Pos('tbCliente',E.Message)<>0 then
           Application.MessageBox('Todos os Clientes já foram excluidos!','Aviso',48);
           Abort;
     end;
   end;
end;

procedure TFmClientes.BtSaidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFmClientes.BtConfirma17Click(Sender: TObject);
begin
    DmDados.tbClientes.Post;
    DmDados.BancoDados.Commit;

    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
end;

procedure TFmClientes.BtDesiste16Click(Sender: TObject);
begin
        DmDados.tbClientes.Cancel;
        DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFmClientes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//        if Key = #13 then DBEdit2.SetFocus;
end;

procedure TFmClientes.editNomeKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then editCnpj.SetFocus;
end;

procedure TFmClientes.editCnpjKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then editIE.SetFocus;
end;


procedure TFmClientes.editIEKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then editEndereco.SetFocus;
end;

procedure TFmClientes.editEnderecoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then editBairro.SetFocus;
end;

procedure TFmClientes.editBairroKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then editCidade.SetFocus;
end;




procedure TFmClientes.editCidadeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then comboEstado.SetFocus;
end;


procedure TFmClientes.comboEstadoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then editCep.SetFocus;
end;

procedure TFmClientes.editCepKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then editCelular.SetFocus;
end;

procedure TFmClientes.editCelularKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then editTelCom.SetFocus;
end;


procedure TFmClientes.editTelComKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then editFax.SetFocus;
end;


procedure TFmClientes.editFaxKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then editContato.SetFocus;
end;


procedure TFmClientes.editContatoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then editEmail.SetFocus;
end;


procedure TFmClientes.editEmailKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then editHomepage.SetFocus;
end;


procedure TFmClientes.editHomepageKeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBEdit1.SetFocus;
end;


procedure TFmClientes.Btconfirmar17Click(Sender: TObject);
begin
    DmDados.tbClientes.Post;
    DmDados.BancoDados.Commit;

    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
end;

procedure TFmClientes.SbDesistirClick(Sender: TObject);
begin
        DmDados.tbClientes.Cancel;
        DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
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
           If Pos('Cli_Razao',E.Message)<>0 then
           Application.MessageBox('O Campo Razão Social deve ser prenchido','Atenção',64);
           Abort
         end;
     end;
end;

procedure TFmClientes.DBRichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then editNome.SetFocus;
end;

procedure TFmClientes.SbConsultaClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmConsultaNomeCliente, FrmConsultaNomeCliente);
   FrmConsultaNomeCliente.ShowModal;
   finally
   FrmConsultaNomeCliente.Free;
   end;
end;

procedure TFmClientes.editCPFExit(Sender: TObject);
begin
if VerCpf(editCPF.Text) = False then
   begin
   if MessageDlg('Numero de CPF Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   editCPF.SetFocus end else
   editRG.SetFocus;
end;

procedure TFmClientes.editCnpjExit(Sender: TObject);
begin
//VerCGC
if VerCGC(editCnpj.Text) = False then
   begin
   if MessageDlg('Numero de CNPJ Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   editCnpj.SetFocus end else
   editIE.SetFocus;

end;

procedure TFmClientes.editNomeChange(Sender: TObject);
begin
//DmDados.TbClientes.FindNearest([editNome.Text]);
end;

end.


