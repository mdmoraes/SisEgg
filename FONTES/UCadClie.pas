unit UCadClie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Buttons, Grids,
  DBGrids, DB, DBTables, Math, DateUtils, ComCtrls, DBIProcs, Bde, DBITypes,
  ActnList, JvExDBGrids, JvDBGrid;
  //Db, DBTables, ExtDlgs, DBIProcs, Bde, DBITypes;
type
  TFrmCadClie = class(TForm)
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
    PainelDados: TPanel;
    Label19: TLabel;
    edVendedor: TDBEdit;
    DBText2: TDBText;
    rdTipoPessoa: TDBRadioGroup;
    memoObs: TDBMemo;
    Label18: TLabel;
    edEmail: TDBEdit;
    Label14: TLabel;
    edCelular: TDBEdit;
    Label10: TLabel;
    edFax: TDBEdit;
    Label12: TLabel;
    edTelCom: TDBEdit;
    Label11: TLabel;
    Label8: TLabel;
    comboEstado: TDBComboBox;
    Label9: TLabel;
    edCep: TDBEdit;
    edCidade: TDBEdit;
    Label7: TLabel;
    edBairro: TDBEdit;
    Label6: TLabel;
    Label2: TLabel;
    edPontoReferencia: TDBEdit;
    edEndereco: TDBEdit;
    Label5: TLabel;
    edNomeCliente: TDBEdit;
    pnlFisica: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    edCPF: TDBEdit;
    edRG: TDBEdit;
    pnlJuridica: TPanel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNomeFantasia: TDBEdit;
    edCNPJ: TDBEdit;
    edIE: TDBEdit;
    SpeedButton5: TSpeedButton;
    gboxPessoa: TGroupBox;
    rdPJuridica: TRadioButton;
    rdPFisica: TRadioButton;
    lblCliente: TLabel;
    gboxPedidosdoCliente: TGroupBox;
    btnFoco: TButton;
    Query1: TQuery;
    Query1PED_DATA: TDateField;
    Query1PED_CLIENTE: TStringField;
    Query1PED_VRFINAL: TCurrencyField;
    edCodCliente: TDBEdit;
    lblAtivo: TLabel;
    Button2: TButton;
    Label28: TLabel;
    lblTotalReg: TLabel;
    Label29: TLabel;
    QryRel: TQuery;
    QryRelCLI_CLIENTE: TStringField;
    QryRelNUM_PEDIDO: TIntegerField;
    QryRelDATA_PEDIDO: TDateField;
    QryRelVALOR: TCurrencyField;
    Panel1: TPanel;
    btnRelatorio: TSpeedButton;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Button3: TButton;
    GroupBox1: TGroupBox;
    CheckBoxSegunda: TCheckBox;
    cboxTerca: TCheckBox;
    cboxQuarta: TCheckBox;
    cboxQuinta: TCheckBox;
    cboxSexta: TCheckBox;
    cboxSabado: TCheckBox;
    edRotaSegunda: TDBEdit;
    edRotaTerca: TDBEdit;
    edRotaQuarta: TDBEdit;
    edRotaQuinta: TDBEdit;
    edRotaSexta: TDBEdit;
    edRotaSabado: TDBEdit;
    btnconfererota: TSpeedButton;
    btnAtualizaHVenda: TSpeedButton;
    dsQuery1: TDataSource;
    Query2: TQuery;
    btnAtuDataCP: TSpeedButton;
    Query2DATA: TDateField;
    Query2PED_CLIENTE: TStringField;
    Painelconfirma1: TPanel;
    btnSbDesistir: TSpeedButton;
    btnSbConfirmar: TSpeedButton;
    cboxDomingo: TCheckBox;
    dbCli_RotaDomingo: TDBEdit;
    actAtualizaRota: TActionList;
    act1: TAction;
    dbCli_UltimaCompra: TDBEdit;
    JvDBGrid1: TJvDBGrid;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    dbForma: TDBEdit;
    dbPrazo: TDBEdit;
    btn1: TSpeedButton;
    tbQuery1PED_NUMERO: TIntegerField;
    procedure SbDesistirClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure SbConsultaClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdPFisicaClick(Sender: TObject);
    procedure rdPJuridicaClick(Sender: TObject);
    procedure rdTipoPessoaClick(Sender: TObject);
    procedure rdTipoPessoaChange(Sender: TObject);
    procedure edNomeClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNomeClienteChange(Sender: TObject);
    procedure edCNPJExit(Sender: TObject);
    procedure edIEExit(Sender: TObject);
    procedure edRGExit(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormRefresh(Sender: TObject);
    procedure edCepExit(Sender: TObject);
    procedure edTelComExit(Sender: TObject);
    procedure edFaxExit(Sender: TObject);
    procedure edCelularExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCopiarRegClick(Sender: TObject);
    procedure dbCli_UltimaCompraChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorExit(Sender: TObject);
    procedure edVendedorClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure DataICloseUp(Sender: TObject);
    procedure DataFCloseUp(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure chboxSegundaClick(Sender: TObject);
    procedure CheckBoxSegundaClick(Sender: TObject);
    procedure cboxTercaClick(Sender: TObject);
    procedure cboxQuartaClick(Sender: TObject);
    procedure cboxQuintaClick(Sender: TObject);
    procedure cboxSextaClick(Sender: TObject);
    procedure cboxSabadoClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnconfererotaClick(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure edRotaSegundaExit(Sender: TObject);
    procedure edRotaTercaExit(Sender: TObject);
    procedure edRotaQuartaExit(Sender: TObject);
    procedure edRotaQuintaExit(Sender: TObject);
    procedure edRotaSextaExit(Sender: TObject);
    procedure edRotaSabadoExit(Sender: TObject);
    procedure edCodClienteChange(Sender: TObject);
    procedure btnAtualizaHVendaClick(Sender: TObject);
    procedure btnAtuDataCPClick(Sender: TObject);
    procedure btnSbDesistirClick(Sender: TObject);
    procedure btnSbConfirmarClick(Sender: TObject);
    procedure cboxDomingoClick(Sender: TObject);
    procedure dbCli_RotaDomingoExit(Sender: TObject);
    procedure actAtualizaRotaExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure act1Execute(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadClie: TFrmCadClie;

implementation

uses Base, Ucic_cgc, UPesquisaNomeCliente, UFrmConsultaVendedor, ULogin,
  UCopiador, URelClientesXPedidos, URelacaoClientesporDiaSemana, UPedidos,
  UCadastroFormasPagamentoNew;

{$R *.dfm}

procedure TFrmCadClie.FormRefresh(Sender: TObject);
begin
DmDados.tbClientes.Refresh;  //Atualiza dados via Rede  ...MAMO...
//Table1.Refresh;
//...
//TableN.Refresh;
end;

procedure TFrmCadClie.SbDesistirClick(Sender: TObject);
begin
        DmDados.tbClientes.Cancel;
    //    DmDados.BancoDados.Rollback;
//        PainelConfirma.Visible:=False;
//        PainelDados.Enabled:=False;
//        PainelControle.Visible:=True;
//        gboxPessoa.Visible:= False;
end;

procedure TFrmCadClie.SbConfirmarClick(Sender: TObject);
//VAR
//VNome: String;
begin
{if comboDiaSemana.Text = '' then
begin
showmessage('O CAMPO DIA DA SEMANA NÃO PODE FICAR EM BRANCO');
comboDiaSemana.SetFocus;
exit;
end; }
 { dmdados.TbClientes.DisableControls;
  dmdados.TbClientes.First;
  while not dmdados.TbClientes.Eof do
  begin
 // if dmdados.TbClientesCli_SeqRota.IsNull = false then
      if dmdados.TbClientes.Locate('Cli_SeqRota', DBEdit1.Text, []) then
      begin
      showmessage('JÁ EXISTE UM CLIENTE COM ESTA ROTA !');
      //  FrmCadClie.DBEdit1.Text := '';
      exit;
      END;
  dmdados.TbClientes.Next;
  end;
  dmdados.TbClientes.EnableControls;}

(*    //...MODO ALTERAÇÃO.......
    IF DMDADOS.tbVendedores.Locate('Nome', edVendedor.Text, []) THEN
    BEGIN
    VNome:= DmDados.TbClientesCli_Cliente.Value;
    DmDados.TVendedorDetail.Locate('RSocial', VNome, []);
//    begin
    DmDados.TVendedorDetail.Edit;
//    DmDados.TVendedorDetailCod_Ven_D.Value:= DmDados.tbVendedoresId_Vendedor.Value;
    DMdados.TVendedorDetailCod_cliente.AsString:= edCodCliente.Text;
    dmdados.TVendedorDetailCep_cli.AsString:= edCep.Text;
//    dmdados.TVendedorDetailNumEndCli.AsString:=dbNumeroEnd.Text;
    //dbNumeroEnd
    DmDados.TVendedorDetailRSocial.AsString:= edNomeCliente.Text;
    DmDados.TVendedorDetailNFantasia.AsString:= edNomeFantasia.Text;
    DmDados.TVendedorDetailTel.AsString:= edTelCom.Text;
    DmDados.TVendedorDetailData_Ult_Compra.AsString:= edultimacompra.Text;
    DmDados.TVendedorDetail.Post;
  //  DmDados.TVendedorDetail.Refresh;
    end;

    // modo de inserção....
    if DmDados.TbClientes.State = dsInsert then
    begin
    DmDados.tbVendedores.Locate('Nome', edVendedor.Text, []);
    DmDados.TVendedorDetail.Append;
    DmDados.TVendedorDetail.Edit;
    DMdados.TVendedorDetailCod_cliente.AsString:= edCodCliente.Text;
    dmdados.TVendedorDetailCep_cli.AsString:= edCep.Text;
//    dmdados.TVendedorDetailNumEndCli.AsString:= dbNumeroEnd.Text;
    DmDados.TVendedorDetailCod_Ven_D.Value:= DmDados.tbVendedoresId_Vendedor.Value;
    DmDados.TVendedorDetailRSocial.AsString:= edNomeCliente.Text;
    DmDados.TVendedorDetailNFantasia.AsString:= edNomeFantasia.Text;
    DmDados.TVendedorDetailTel.AsString:= edTelCom.Text;
    DmDados.TVendedorDetailData_Ult_Compra.AsString:= edultimacompra.Text;
    DmDados.TVendedorDetail.Post;
    END; *)


    DmDados.tbClientes.Edit;
    DmDados.tbClientes.Post;
    FrmCadClie.FormRefresh(Self);
//    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
    lblTotalReg.Caption:= IntToStr(DMDados.TbClientes.RecordCount);

end;

procedure TFrmCadClie.BtincluirClick(Sender: TObject);
begin
//showmessage('SISTEMA APENAS DEMONSTRAÇÃO');
    dmdados.TbClientes.Open;
    gboxPessoa.Visible:= True;
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Cliente.value:=
    DmDados.TbInformativoInf_Cliente.Value+1;
    Dmdados.TbInformativo.post;

    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma1.Visible:=true;

//    DmDados.BancoDados.StartTransaction;
    DmDados.tbClientes.Append;
    DmDados.tbClientesCli_Codigo.value:=
    DmDados.TbInformativoInf_Cliente.Value;
    DmDados.tbClientes['Cli_DataCadastro']:= DateToStr(Now);
    edNomeCliente.SetFocus;

    //limpa a Query
    Query1.Close;
//    edVendedor.SetFocus;
end;

procedure TFrmCadClie.BtnAlteraClick(Sender: TObject);
//VAR
//VNomeVendedor: string;
begin
//VNomeVendedor:= edVendedor.Text;
 {    If MT[13] = False  then
      Begin
      MessageDlg('SEU NÍVEL DE ACESSO NÃO PERMITE.', mtInformation, [mbOk], 0);
      exit;
      end else  }

    PainelDados.Enabled:=TRUE;
    gboxPessoa.Visible:= True;
    PainelControle.Visible:=False;
    PainelConfirma1.Visible:=True;
//    DmDados.BancoDados.StartTransaction;
    DmDados.tbClientes.Edit;
 //   edNomeCliente.SetFocus;
//    edVendedor.setfocus;
end;

procedure TFrmCadClie.BtExcluirClick(Sender: TObject);
//Var
//VNome: String;
begin
    //  VNome:= DmDados.TbClientesCli_Cliente.Value;
  //    VNome:= edNomeCliente.Text;
      If MT[14] = False  then
      Begin
      MessageDlg('SEU NÍVEL DE ACESSO NÃO PERMITE.', mtInformation, [mbOk], 0);
      exit;
      end
        else
        if MessageDlg('DESEJA EXCLUIR O REGISTRO ATUAL ?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
     (*   ///17/08/2006  - deletando o Cliente na tab. vendedor_detail
        // e tenho dito......
     //   if DmDados.tbVendedores.Locate('Nome', edVendedor.Text, []) then
        if DmDados.TVendedorDetail.Locate('RSocial', edNomeCliente.Text, [])then
        begin
     //   DmDados.TVendedorDetail.Locate('RSocial', edNomeCliente.Text, []);
        DmDados.TVendedorDetail.Delete;
        DmDados.TVendedorDetail.Refresh;
        end; *)
        DMDados.TbClientes.Delete;
        lblTotalReg.Caption:= IntToStr(DMDados.TbClientes.RecordCount);
        end;
end;

procedure TFrmCadClie.SbConsultaClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmPequisaClienteVendas, FrmPequisaClienteVendas);
   FrmPequisaClienteVendas.ShowModal;
   finally
   FrmPequisaClienteVendas.Free;
   end;
end;

procedure TFrmCadClie.BtSaidaClick(Sender: TObject);
begin
PainelTitulo.SetFocus;
//btnFoco.SetFocus;
close;
end;

procedure TFrmCadClie.SpeedButton5Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmConsultaVendedor, FrmConsultaVendedor);
    FrmConsultaVendedor.ShowModal;
    Finally;
    FrmConsultaVendedor.Free;
    end;
end;

procedure TFrmCadClie.SpeedButton1Click(Sender: TObject);
begin
DMDados.TbClientes.First;
btnAtualizaHVendaClick(self);
Button2Click(self);

btnAtuDataCPClick(self);
end;

procedure TFrmCadClie.SpeedButton2Click(Sender: TObject);
begin
DMDados.TbClientes.Prior;
btnAtualizaHVendaClick(self);
Button2Click(self);

btnAtuDataCPClick(self);
end;

procedure TFrmCadClie.SpeedButton3Click(Sender: TObject);
begin
DMDados.TbClientes.Next;
btnAtualizaHVendaClick(self);
Button2Click(self);

btnAtuDataCPClick(self);
end;

procedure TFrmCadClie.SpeedButton4Click(Sender: TObject);
begin
DMDados.TbClientes.Last;
btnAtualizaHVendaClick(self);
Button2Click(self);

btnAtuDataCPClick(self);
end;

procedure TFrmCadClie.FormShow(Sender: TObject);
begin
//gboxPessoa.Visible:= False;
FormRefresh(Sender);
lblTotalReg.Caption:= IntToStr(DMDados.TbClientes.RecordCount);
//Edit1.Text:= DateToStr(Date);
//Button2Click(self);
btnAtualizaHVendaClick(self);
//DataI.Date:=Date-30;
//DataF.Date:=Date;
btnAtuDataCPClick(self);
Button2Click(self);
BtnAlteraClick(self);
btnAtuDataCPClick(self);
SbConfirmarClick(self);
end;

procedure TFrmCadClie.rdPFisicaClick(Sender: TObject);
begin
pnlFisica.Visible:= True;
pnlJuridica.Visible:= False;
dmdados.TbClientes.Edit;
DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
end;

procedure TFrmCadClie.rdPJuridicaClick(Sender: TObject);
begin
pnlFisica.Visible:= False;
pnlJuridica.Visible:= True;

DMDados.TbClientes.Edit;
DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
end;

procedure TFrmCadClie.rdTipoPessoaClick(Sender: TObject);
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

procedure TFrmCadClie.rdTipoPessoaChange(Sender: TObject);
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

procedure TFrmCadClie.edNomeClienteExit(Sender: TObject);
begin
  { IF DmDados.tbClientes.Locate('Cli_Cliente', edNomeCliente.Text, []) THEN
   begin
   MessageDlg('JÁ EXISTE UM CLIENTE COM ESSE NOME !', mtInformation, [mbOk], 0);
   abort;
   SbDesistirClick(SELF);

   end; }

//    if edNomeCliente.Text <> '' then
//    begin
//    if edCPF.Text <> '' then
//    DMDados.TbClientes.Edit;
//    DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
//    end
//      else
//        if edNomeCliente.Text <> '' then
//        begin
//        if edCNPJ.Text <> '' then
//        DMDados.TbClientes.Edit;
//        DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
//        end;
end;

procedure TFrmCadClie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
(*     BtSaidaClick(self);
     if DMDados.TbClientes.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.TbClientes.Post
       else
       DMDados.TbClientes.Cancel; *)
end;

procedure TFrmCadClie.edNomeClienteChange(Sender: TObject);
//var
//A: Integer;
begin
    if dmdados.TbClientesCli_Segunda.AsString = 'Segunda' then
    begin
    CheckBoxSegunda.Checked:= True;
    end
    else
    CheckBoxSegunda.Checked:= False;

    if dmdados.TbClientesCli_Terca.AsString = 'Terça' then
    begin
    cboxTerca.Checked:= True;
    end
    else
    cboxTerca.Checked:= False;

    if dmdados.TbClientesCli_Quarta.AsString = 'Quarta' then
    begin
    cboxQuarta.Checked:= True;
    end
    else
    cboxQuarta.Checked:= False;

    if dmdados.TbClientesCli_Quinta.AsString = 'Quinta' then
    begin
    cboxQuinta.Checked:= True;
    end
    else
    cboxQuinta.Checked:= False;

    if dmdados.TbClientesCli_Sexta.AsString = 'Sexta' then
    begin
    cboxSexta.Checked:= True;
    end
    else
    cboxSexta.Checked:= False;

    if dmdados.TbClientesCli_Sabado.AsString = 'Sábado' then
    begin
    cboxSabado.Checked:= True;
    end
    else
    cboxSabado.Checked:= False;

    if dmdados.TbClientesCli_Domingo.AsString = 'Domingo' then
    begin
    cboxDomingo.Checked:= True;
    end
    else
    cboxDomingo.Checked:= False;

end;

procedure TFrmCadClie.edCNPJExit(Sender: TObject);
begin
    if VerCGC(edCNPJ.Text) = False then
   begin
   if MessageDlg('Numero de CNPJ Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   edCNPJ.SetFocus end else
   edIE.SetFocus;

    if edCNPJ.Text <> '' then
    begin
    DMDados.TbClientes.Edit;
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
    end;
end;

procedure TFrmCadClie.edIEExit(Sender: TObject);
begin
    if edIE.Text <> '' then
    begin
    DMDados.TbClientes.Edit;
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Juridica';
    end;
end;

procedure TFrmCadClie.edRGExit(Sender: TObject);
begin
    if edRG.Text <> '' then
    begin
    DMDados.TbClientes.Edit;
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
    end;
end;

procedure TFrmCadClie.edCPFExit(Sender: TObject);
begin
   if VerCpf(edCPF.Text) = False then
   begin
   if MessageDlg('Numero de CPF Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   edCPF.SetFocus end else
   edRG.SetFocus;

    if edCPF.Text <> '' then
    begin
    DMDados.TbClientes.Edit;
    DMDados.TbClientesCli_PessoaFJ.Value:= 'Fisica';
    end;
end;

procedure TFrmCadClie.FormActivate(Sender: TObject);
begin
Application.OnActivate := FormRefresh;   //atualização na Rede
end;

procedure TFrmCadClie.edCepExit(Sender: TObject);
begin
   (* IF LENGTH(edCep.Text) = 8 THEN
    BEGIN
    edCep.Text := tbFormataCEP(edCep.Text);
    edTelCom.SetFocus;
    END else
    begin
    MessageDlg('CEP INVÁLIDO !', mtInformation, [mbOk], 0);
//    Showmessage('CEP INVÁLIDO !');  //NUM GOSTEI...HUNF!!!
    edCep.SetFocus;
    end; *)
end;

procedure TFrmCadClie.edTelComExit(Sender: TObject);
begin
   (* IF LENGTH(edTelCom.Text) = 8 THEN
    BEGIN
    edTelCom.Text := tbFormataTEL(edTelCom.Text);
    edFax.SetFocus;
    END

    else

    IF LENGTH(edTelCom.Text) = 10 THEN
    BEGIN
    edTelCom.Text := tbFormataTELDDD(edTelCom.Text);
    edFax.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
    edTelCom.SetFocus;
    end;  *)
end;

procedure TFrmCadClie.edFaxExit(Sender: TObject);
begin
   (* IF LENGTH(edFax.Text) = 8 THEN
    BEGIN
    edFax.Text := tbFormataTEL(edFax.Text);
    edCelular.SetFocus;
    END

    else

    IF LENGTH(edFax.Text) = 10 THEN
    BEGIN
    edFax.Text := tbFormataTELDDD(edFax.Text);
    edCelular.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
    edFax.SetFocus;
    end; *)
end;

procedure TFrmCadClie.edCelularExit(Sender: TObject);
begin
   (* IF LENGTH(edCelular.Text) = 8 THEN
    BEGIN
    edCelular.Text := tbFormataTEL(edCelular.Text);
    edContato.SetFocus;
    END

    else

    IF LENGTH(edCelular.Text) = 10 THEN
    BEGIN
    edCelular.Text := tbFormataTELDDD(edCelular.Text);
    edContato.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
    edCelular.SetFocus;
    end;  *)
end;

procedure TFrmCadClie.Button1Click(Sender: TObject);
begin
// FrmCopiador.Show;
(* DMDados.TbClientes.First;
 while not DMDados.TbClientes.Eof do
 begin
  //repeat
  { seus comandos para a tabela }
  DMDados.Tbpedidos.First;
  while not DMDados.Tbpedidos.Eof do
  begin
  DMDados.Tbpedidos.Locate('Ped_Cliente', edNomeCliente.Text,[]);
   //if not DMDados.Tbpedidos.Eof then
  //repeat
  DMDados.TClienteDetail.Open;
  DMDados.TClienteDetail.Insert;
  DMDados.TClienteDetail.Edit;
  IndexDBGrid1.SetFocus;
  IndexDBGrid1.Columns.Items[1].Field.Text:= edCodCliente.Text;
  IndexDBGrid1.Columns.Items[2].Field.Text:= DMDados.TbpedidosPed_Numero.AsString;
  IndexDBGrid1.Columns.Items[3].Field.Text:= DMDados.TbpedidosPed_Data.AsString;
  IndexDBGrid1.Columns.Items[4].Field.Text:= DMDados.TbpedidosPed_VrFinal.AsString;
  DMDados.TClienteDetail.Post;
  DMDados.Tbpedidos.Next
  end;
//  until DMDados.Tbpedidos.Eof;
  DMDados.TbClientes.Next;
  end;
  //until DMDados.TbClientes.Eof;*)
end;

procedure TFrmCadClie.btnCopiarRegClick(Sender: TObject);
//Var
//Texto : String;
begin
(*  Texto:= edNomeCliente.Text;
//  DMDados.TbClientes.IndexName:= 'ICli_Cliente';
  DMDados.TbClientes.First;
   while not DMDados.TbClientes.Eof do
   begin
      DMDados.Tbpedidos.First;
      while not DMDados.Tbpedidos.Eof do
      begin
      DMDados.Tbpedidos.Filtered:= False;
      DMDados.Tbpedidos.Filter := 'Ped_Cliente = ' +#39+Texto+#39;
      DMDados.Tbpedidos.Filtered:= True;
      DMDados.TClienteDetail.Open;
      DMDados.TClienteDetail.Insert;
      DMDados.TClienteDetail.Edit;
      IndexDBGrid1.Columns.Items[1].Field.Text:= edCodCliente.Text;
      IndexDBGrid1.Columns.Items[2].Field.Text:= DMDados.TbpedidosPed_Numero.AsString;
      IndexDBGrid1.Columns.Items[3].Field.Text:= DMDados.TbpedidosPed_Data.AsString;
      IndexDBGrid1.Columns.Items[4].Field.Text:= DMDados.TbpedidosPed_VrFinal.AsString;
      DMDados.TClienteDetail.Post;
      DMDados.Tbpedidos.Next;
      end;
//  until DMDados.Tbpedidos.Eof;
  DMDados.TbClientes.Next;
  end;
//  until DMDados.TbClientes.Eof;*)
end;

procedure TFrmCadClie.dbCli_UltimaCompraChange(Sender: TObject);
//var
//sysdate: TDateTime;
//Status: String;
begin
Button2Click(self);
//Edit1.Text:= edultimacompra.Text;
//sysdate:= Date;
//Status:= DateToStr(sysdate-90);
//if DMDados.TbClientesCli_UltimaCompra.AsString <= Status then
//begin
//lblAtivo.Caption:= 'INATIVO';
//end
//else
//lblAtivo.Caption:= 'ATIVO';
end;
//////////
// function SubData(DataEmprestimo: TDataTime) : Integer;
// begin
//  result := Date - DataEmprestimo;
procedure TFrmCadClie.Button2Click(Sender: TObject);
var
A: Integer;  //ISSO AQUIH...ENCHEU O MEU SACO...
begin
  if dbCli_UltimaCompra.Text = '' then
  dbCli_UltimaCompra.Text:= '01/01/2000';

//  dbCli_UltimaCompra.Text:= IndexDBGrid1.Columns.Items[1].Field.text;

  A:= StrToInt(IntToStr(Trunc(Date-Trunc(StrToDate(dbCli_UltimaCompra.Text)))));
  if A >= 90 then
  //Begin
  lblAtivo.Caption:= 'INATIVO'
  else
  if A < 90 then
  lblAtivo.Caption:= 'ATIVO';
end;

procedure TFrmCadClie.btnRelatorioClick(Sender: TObject);
begin
(*    Try
    Application.CreateForm(TFrmRelClienterXPedidos, FrmRelClienterXPedidos);
    FrmCadClie.QryRel.Close;
    FrmCadClie.QryRel.ParamByName('VarDataI').AsDate:=FrmCadClie.DataI.Date;
    FrmCadClie.QryRel.ParamByName('VarDataF').AsDate:=FrmCadClie.DataF.Date;
    FrmCadClie.QryRel.ParamByName('VARCLIENTE').AsString:= edNomeCliente.Text+'%';
    FrmCadClie.QryRel.Prepare;
    FrmCadClie.QryRel.Open;
    FrmRelClienterXPedidos.lblTituloRel.Caption:= 'RELATÓRIO: CLIENTES X PEDIDOS';
    FrmRelClienterXPedidos.lblRazaoSocial.Caption:= edNomeCliente.Text;
    FrmRelClienterXPedidos.lblNomeFantasia.Caption:= edNomeFantasia.Text;
    FrmRelClienterXPedidos.lblNomeVendedor.Caption:= Uppercase(edVendedor.Text);
    FrmRelClienterXPedidos.lblTelefone.Caption:= edTelCom.Text;
    FrmRelClienterXPedidos.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(FrmCadClie.DataI.Date)+ '  À  ' + DateToStr(FrmCadClie.DataF.Date);
    FrmRelClienterXPedidos.QuickRep1.Preview;
  //  QryRel.Close;
    Finally
//    FrmCadClie.QryRel.Close;
    FrmRelClienterXPedidos.Free;
    end; *)
end;

procedure TFrmCadClie.edVendedorChange(Sender: TObject);
//VAR
//VNomeVendedor: string;
begin


{  if DmDados.TbClientes.State = dsEdit then
//VNomeVendedor: edVendedor.Text;
  if edVendedor.Text<> '' then
  if MessageDlg('DESEJA ALTERAR O VENDEDOR DESTE CLIENTE?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   DmDados.TVendedorDetail.Locate('RSocial', edNomeCliente.Text, []);
   DmDados.TVendedorDetail.Delete;
   end else
   abort;}
end;

procedure TFrmCadClie.edVendedorExit(Sender: TObject);
//VAR
//VNomeVendedor: string;
begin
//VNomeVendedor:= edVendedor.Text;

{  if DmDados.TbClientes.State = dsEdit then
//VNomeVendedor: edVendedor.Text;
  if edVendedor.Text<> '' then
  if MessageDlg('DESEJA ALTERAR O VENDEDOR DESTE CLIENTE?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
   DmDados.TVendedorDetail.Locate('RSocial', VNomeVendedor, []);
   DmDados.TVendedorDetail.Delete;
   end else
   abort; }
end;

procedure TFrmCadClie.edVendedorClick(Sender: TObject);
begin
//  showmessage('USE O BOTÃO DO LADO, PARA LOCALIZAR O VENDEDOR');
   { try
    Application.CreateForm(TFrmConsultaVendedor, FrmConsultaVendedor);
    FrmConsultaVendedor.ShowModal;
    Finally;
    FrmConsultaVendedor.Free;
    end;}
end;

procedure TFrmCadClie.btnRefreshClick(Sender: TObject);
begin
//FrmCadClie.FormRefresh(Self);
end;

procedure TFrmCadClie.DataICloseUp(Sender: TObject);
begin
if DataI.date>DataF.date then
  Begin
    ShowMessage('A DATA INICIAL NÃO PODE SER MAIOR QUE A DATA FINAL!');
    DataI.date:=DataF.date;
  end;
end;

procedure TFrmCadClie.DataFCloseUp(Sender: TObject);
begin
     if DataF.date<DataI.date then
     Begin
     ShowMessage('A DATA FINAL NÃO PODE SER MENOR QUE A DATA INICIAL!');
     DataI.date:=DataF.date;
     end;

end;

procedure TFrmCadClie.Button3Click(Sender: TObject);
begin
{   dmdados.TbClientes.First;
   while not dmdados.TbClientes.Eof do
   begin
    IF DMDADOS.tbVendedores.Locate('Nome', edVendedor.Text, []) THEN
    BEGIN
    DmDados.TVendedorDetail.Locate('RSocial', edNomeCliente.Text, []);
//    begin
    DmDados.TVendedorDetail.Edit;
    DMdados.TVendedorDetailCod_cliente.AsString:= edCodCliente.Text;
    dmdados.TVendedorDetailCep_cli.AsString:= edCep.Text;
    DmDados.TVendedorDetail.Post;
//    DmDados.TVendedorDetail.Refresh;
    end;
   dmdados.TbClientes.Next;
   end; }
end;

procedure TFrmCadClie.chboxSegundaClick(Sender: TObject);
begin
if CheckBoxSegunda.Checked = True then
dmdados.TbClientesCli_Segunda.AsString:= 'Segunda';
end;

procedure TFrmCadClie.CheckBoxSegundaClick(Sender: TObject);
begin

      if CheckBoxSegunda.Checked = True then
      begin
      dmdados.TbClientes.Edit;
      dmdados.TbClientesCli_Segunda.AsString:= 'Segunda';
      dmdados.TbClientes.Post;
      end else
      if CheckBoxSegunda.Checked = false then
      begin
      dmdados.TbClientes.Edit;
      dmdados.TbClientesCli_Segunda.AsString:= '';
      dmdados.TbClientes.Post;
      end;
end;

procedure TFrmCadClie.cboxTercaClick(Sender: TObject);
begin
      dmdados.TbClientes.Edit;
      if cboxTerca.Checked  = True then
      begin
      dmdados.TbClientesCli_Terca.AsString:= 'Terça';
      end
      else
      if cboxTerca.Checked  = False then
      begin
      //dmd
      dmdados.TbClientesCli_Terca.AsString:= '';
      end;
end;

procedure TFrmCadClie.cboxQuartaClick(Sender: TObject);
begin
    dmdados.TbClientes.Edit;
    if cboxQuarta.Checked  = True then
    begin
    dmdados.TbClientesCli_Quarta.AsString:= 'Quarta';
    end
    else
    if cboxQuarta.Checked  = False then
    begin
    dmdados.TbClientesCli_Quarta.AsString:= '';
    end;
end;

procedure TFrmCadClie.cboxQuintaClick(Sender: TObject);
begin
    dmdados.TbClientes.Edit;
    if cboxQuinta.Checked  = True then
    begin
    dmdados.TbClientesCli_Quinta.AsString:= 'Quinta';
    end else
    if cboxQuinta.Checked  = False then
    begin
    dmdados.TbClientesCli_Quinta.AsString:= '';
    end;

end;

procedure TFrmCadClie.cboxSextaClick(Sender: TObject);
begin
    dmdados.TbClientes.Edit;
    if cboxSexta.Checked  = True then
    begin
    dmdados.TbClientesCli_Sexta.AsString:= 'Sexta';
    end else
    if cboxSexta.Checked  = False then
    begin
    dmdados.TbClientesCli_Sexta.AsString:= '';
    end;

end;

procedure TFrmCadClie.cboxSabadoClick(Sender: TObject);
begin
    dmdados.TbClientes.Edit;
    if cboxSabado.Checked  = True then
    begin
    dmdados.TbClientesCli_Sabado.AsString:= 'Sábado';
    end else
    if cboxSabado.Checked  = False then
    begin
    dmdados.TbClientesCli_Sabado.AsString:= '';
    end;
end;

procedure TFrmCadClie.DBEdit1Exit(Sender: TObject);
//var
//RegAtual: TBookmark;   //marcar o registro corrente
begin
//RegAtual:= dmdados.TbClientes.GetBookmark; //marca o registro, p/retorno

if (edRotaSabado.Text <> '') and (cboxSabado.Checked = false) then
cboxSabado.Checked:= true;

//  dmdados.TbClientes.DisableControls;
//  dmdados.TbClientes.First;
//  while not dmdados.TbClientes.Eof do
//  begin
//  if dmdados.TbClientesCli_Sabado.AsString = 'Sábado' Then
//  if edRotaSabado.Text <> '' then
{  if dmdados.TbClientes.Locate('Cli_RotaSabado', edRotaSabado.Text, []) then
      begin
      dmdados.TbClientes.GotoBookmark(RegAtual);
      dmdados.TbClientes.FreeBookmark(RegAtual);
      edRotaSabado.Clear;
    //  edRotaSabado.SetFocus;
      showmessage('JÁ EXISTE UM CLIENTE COM ESTA ROTA PARA O SÁBADO !');
      exit;
      END;}
end;

procedure TFrmCadClie.btnconfererotaClick(Sender: TObject);
begin
      TRY
      Application.CreateForm(TFrmRelacaoClientesporDiaSemana,FrmRelacaoClientesporDiaSemana);
      FrmRelacaoClientesporDiaSemana.ShowModal;
      finally
      FrmRelacaoClientesporDiaSemana.Free;
      end;

end;

procedure TFrmCadClie.DBEdit1Click(Sender: TObject);
begin
//showmessage('VERIFIQUE A EXISTÊNCIA DE ROTA PRIMEIRO!');
end;

procedure TFrmCadClie.edRotaSegundaExit(Sender: TObject);
begin
if (edRotaSegunda.Text <> '') and (CheckBoxSegunda.Checked = false) then
CheckBoxSegunda.Checked:= true;
end;

procedure TFrmCadClie.edRotaTercaExit(Sender: TObject);
begin
if (edRotaTerca.Text <> '') and (cboxTerca.Checked = false) then
cboxTerca.Checked:= true;
end;

procedure TFrmCadClie.edRotaQuartaExit(Sender: TObject);
begin
   if (edRotaQuarta.Text <> '') and (cboxQuarta.Checked = false) then
   cboxQuarta.Checked:= true;
end;

procedure TFrmCadClie.edRotaQuintaExit(Sender: TObject);
begin
   if (edRotaQuinta.Text <> '') and (cboxQuinta.Checked = false) then
   cboxQuinta.Checked:= true;
end;

procedure TFrmCadClie.edRotaSextaExit(Sender: TObject);
begin
       if (edRotaSexta.Text <> '') and (cboxSexta.Checked = false) then
       cboxSexta.Checked:= true;
end;

procedure TFrmCadClie.edRotaSabadoExit(Sender: TObject);
begin
     if (edRotaSabado.Text <> '') and (cboxSabado.Checked = false) then
     cboxSabado.Checked:= true;
end;

procedure TFrmCadClie.edCodClienteChange(Sender: TObject);
begin
btnAtualizaHVendaClick(self);
Button2Click(self);
end;

procedure TFrmCadClie.btnAtualizaHVendaClick(Sender: TObject);
begin
    if dmDados.Tbpedidos.Locate('Ped_Cliente', edNomeCliente.Text, []) then
    begin
    Query1.Close;
    Query1.ParamByName('VARCLIENTE').AsString:= edNomeCliente.Text;  //dmDados.TbpedidosPed_Cliente.AsString;
    Query1.Prepare;
    Query1.Open;
    end;
end;

procedure TFrmCadClie.btnAtuDataCPClick(Sender: TObject);
begin
    Query2.Close;
    Query2.ParamByName('VARCLIENTE').AsString:= edNomeCliente.Text;
    Query2.Prepare;
    Query2.Open;

    dbCli_UltimaCompra.Text:= Query2.FIELDBYNAME('DATA').AsString;
    dmdados.TbClientes.Edit;
    dmdados.TbClientes.Post;
end;

procedure TFrmCadClie.btnSbDesistirClick(Sender: TObject);
begin
DmDados.tbClientes.Cancel;
PainelConfirma1.Visible:=false;
PainelControle.Visible:= TRUE;
end;

procedure TFrmCadClie.btnSbConfirmarClick(Sender: TObject);
begin
act1Execute(Self);      
DmDados.tbClientes.Edit;
DmDados.tbClientes.Post;
PainelConfirma1.Visible:=false;
PainelControle.Visible:= TRUE;
showmessage('DADOS FORAM GRAVADOS !!!');
end;

procedure TFrmCadClie.cboxDomingoClick(Sender: TObject);
begin
    dmdados.TbClientes.Edit;
    if cboxDomingo.Checked  = True then
    begin
    dmdados.TbClientesCli_Domingo.AsString:= 'Domingo';
    end else
    if cboxDomingo.Checked  = False then
    begin
    dmdados.TbClientesCli_Domingo.AsString:= '';
    end;
                                    
//    if DmDados.TbClientes.State in [dsEdit, dsInsert] then
//    begin
//            if CheckBoxSegunda.Checked  = True or cboxTerca.Checked = True or
//            cboxQuarta.Checked = True or cboxQuinta.Checked = True or cboxSexta.Checked = True or
//            cboxSabado.Checked = True then
//            begin
//                ShowMessage('EXISTE(EM) OUTROS DIAS DE ROTA PARA' +#13+
//                            'ESTE CLIENTE !... VERIFIQUE.');
//                Exit;             
//            end;
//    end;
end;

procedure TFrmCadClie.dbCli_RotaDomingoExit(Sender: TObject);
begin
     if (dbCli_RotaDomingo.Text <> '') and (cboxDomingo.Checked = false) then
     cboxDomingo.Checked:= true;
end;

procedure TFrmCadClie.actAtualizaRotaExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
       
        
//        if CheckBoxSegunda.Checked  = True or cboxTerca.Checked = True or
//            cboxQuarta.Checked = True or cboxQuinta.Checked = True or cboxSexta.Checked = True or
//            cboxSabado.Checked = True then
//        begin
//            ShowMessage('EXISTE(EM) OUTROS DIAS DE ROTA PARA' +#13+
//                        'ESTE CLIENTE !... VERIFIQUE.');
//            Exit;             
//        end;




end;

procedure TFrmCadClie.act1Execute(Sender: TObject);
begin
        if cboxDomingo.Checked = True then
        begin
        dmdados.TbClientes.Edit;
        DmDados.TbClientesCli_RotaSegunda.AsString:= '';
        DmDados.TbClientesCli_RotaTerca.AsString:= '';
        DmDados.TbClientesCli_RotaQuarta.AsString:= '';
        DmDados.TbClientesCli_RotaQuinta.AsString:= '';
        DmDados.TbClientesCli_RotaSexta.AsString:= '';
        DmDados.TbClientesCli_RotaSabado.AsString:= '';
        
        CheckBoxSegunda.Checked:= False;
        cboxTerca.Checked := False;
        cboxQuarta.Checked:= False;
        cboxQuinta.Checked:= False;
        cboxSexta.Checked:= False;
        cboxSabado.Checked:= False;
        end;
end;

procedure TFrmCadClie.JvDBGrid1DblClick(Sender: TObject);
begin
   DmDados.Tbpedidos.Locate('Ped_Numero', JvDBGrid1.Columns.Items[0].Field.Text, []);
   try
     Application.CreateForm(TFmPedidos, FmPedidos);
     FmPedidos.edtClienteGrid.Text:= 'cliente';
     FmPedidos.ShowModal;
   finally
     FmPedidos.Free;
   end;
end;

procedure TFrmCadClie.JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_return then
   JvDBGrid1DblClick(Self);

   if Key = vk_escape then
   Close;
end;

procedure TFrmCadClie.btn1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrmCadFormasPagamentoNew, FrmCadFormasPagamentoNew);
  FrmCadFormasPagamentoNew.edId.Text:= 'Cliente';
  FrmCadFormasPagamentoNew.ShowModal;
  finally
  FrmCadFormasPagamentoNew.Free;
  end;
end;

end.

