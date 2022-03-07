unit UFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, Grids,
  DBGrids;

type
  TFmfornecedores = class(TForm)
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
    editFax: TDBEdit;
    Label11: TLabel;
    editTel: TDBEdit;
    Label12: TLabel;
    editCelular: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    editEmail: TDBEdit;
    Label15: TLabel;
    editHomepage: TDBEdit;
    Painelconfirma: TPanel;
    comboEstado: TDBComboBox;
    SbCancelar: TSpeedButton;
    SbConfirmar: TSpeedButton;
    editContato: TDBEdit;
    SbConsultaFor: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    editCPF: TDBEdit;
    editRG: TDBEdit;
    memoObs: TDBMemo;
    Label18: TLabel;
    dbTextDataCadastro: TDBText;
    Label19: TLabel;
    DBText1: TDBText;
    GroupBox1: TGroupBox;
    btnFoco: TButton;
    btnRelatorio: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure BtDesisteClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure editNomeKeyPress(Sender: TObject; var Key: Char);
    procedure editCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure editIEKeyPress(Sender: TObject; var Key: Char);
    procedure editEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure editBairroKeyPress(Sender: TObject; var Key: Char);
    procedure editCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure comboEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure editCepKeyPress(Sender: TObject; var Key: Char);
    procedure editFaxKeyPress(Sender: TObject; var Key: Char);
    procedure editTelKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure editEmailKeyPress(Sender: TObject; var Key: Char);
    procedure editHomepageKeyPress(Sender: TObject; var Key: Char);
    procedure editContatoKeyPress(Sender: TObject; var Key: Char);
    procedure editCelularKeyPress(Sender: TObject; var Key: Char);
    procedure SbConsultaForClick(Sender: TObject);
    procedure editCPFExit(Sender: TObject);
    procedure editCnpjExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure editCepExit(Sender: TObject);
    procedure editTelExit(Sender: TObject);
    procedure editFaxExit(Sender: TObject);
    procedure editCelularExit(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmfornecedores: TFmfornecedores;

implementation
     uses Base, Ucic_cgc, UFrmConsultaFornecedor, URelFornecedorXProdutos;

{$R *.DFM}

procedure TFmfornecedores.SpeedButton1Click(Sender: TObject);
begin
    DmDados.Tbfornecedores.First;
end;

procedure TFmfornecedores.SpeedButton2Click(Sender: TObject);
begin
    DmDados.Tbfornecedores.Prior;
end;

procedure TFmfornecedores.SpeedButton3Click(Sender: TObject);
begin
     DmDados.Tbfornecedores.Next;
end;

procedure TFmfornecedores.SpeedButton4Click(Sender: TObject);
begin
DmDados.Tbfornecedores.last;
end;

procedure TFmfornecedores.BtincluirClick(Sender: TObject);
begin
//showmessage('SISTEMA APENAS DEMONSTRAÇÃO');
//APENAS ISSO !!!
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Fornecedor.value:=
    DmDados.TbInformativoInf_Fornecedor.Value+1;
    Dmdados.TbInformativo.post;

    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=true;

//    DmDados.BancoDados.StartTransaction;
    DmDados.Tbfornecedores.Append;
    DmDados.TbfornecedoresFor_Codigo.value:=
    DmDados.TbInformativoInf_Fornecedor.Value;
    DmDados.Tbfornecedores['For_DataCadastro']:=DateToStr(Now);
    editNome.SetFocus;
end;

procedure TFmfornecedores.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma.Visible:=True;
//    DmDados.BancoDados.StartTransaction;
    DmDados.Tbfornecedores.Edit;
    editNome.setfocus;
end;

procedure TFmfornecedores.BtExcluirClick(Sender: TObject);
begin
  try
    if Application.MessageBox('Deseja eliminar este Registro?','Eliminação de Registro',
    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN DmDados.Tbfornecedores.Delete;//EMITE MESSAGEM DE ELIMINAÇÃO DE REGISTRO.
   Except
        on E:Exception do
     Begin
           If Pos('Tbfornecedores',E.Message)<>0 then
           Application.MessageBox('Todos os Fornecedores já foram excluidos!','Aviso',48);
           Abort;
     end;
   end;
end;

procedure TFmfornecedores.BtSaidaClick(Sender: TObject);
begin
  PainelTitulo.SetFocus;
  //  btnFoco.SetFocus;
    Close;
end;

procedure TFmfornecedores.BtConfirmaClick(Sender: TObject);
begin
        DmDados.Tbfornecedores.Post;
//        DmDados.BancoDados.Commit;

        PainelConfirma.Visible:=False;
        PainelDados.enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFmfornecedores.BtDesisteClick(Sender: TObject);
begin
        DmDados.Tbfornecedores.Cancel;
  //      DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFmfornecedores.SbCancelarClick(Sender: TObject);
begin
       DmDados.Tbfornecedores.Cancel;
 //       DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFmfornecedores.SbConfirmarClick(Sender: TObject);
begin
     try
       DmDados.Tbfornecedores.Post;
   //     DmDados.BancoDados.Commit;

        PainelConfirma.Visible:=False;
        PainelDados.enabled:=False;
        PainelControle.Visible:=True;
        Except
        on E:Exception do
     Begin
           If Pos('For_Razao',E.Message)<>0 then
           Application.MessageBox('O FORNECEDOR não pode ficar em branco!','Atenção',64);
           Abort;
     end;
   end;
end;

procedure TFmfornecedores.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit2.SetFocus;
end;

procedure TFmfornecedores.editNomeKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit3.SetFocus;
end;

procedure TFmfornecedores.editCnpjKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit4.SetFocus;
end;

procedure TFmfornecedores.editIEKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit5.SetFocus;
end;

procedure TFmfornecedores.editEnderecoKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit6.SetFocus;
end;

procedure TFmfornecedores.editBairroKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit7.SetFocus;
end;

procedure TFmfornecedores.editCidadeKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBComboBox1.SetFocus;
end;

procedure TFmfornecedores.comboEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
//    if Key = #13 then DBEdit9.SetFocus;
end;

procedure TFmfornecedores.editCepKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit10.SetFocus;
end;

procedure TFmfornecedores.editFaxKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit11.SetFocus;
end;

procedure TFmfornecedores.editTelKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit12.SetFocus;
end;

procedure TFmfornecedores.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit14.SetFocus;
end;

procedure TFmfornecedores.editEmailKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit15.SetFocus;
end;

procedure TFmfornecedores.editHomepageKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit1.SetFocus;
end;

procedure TFmfornecedores.editContatoKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit14.SetFocus;
end;

procedure TFmfornecedores.editCelularKeyPress(Sender: TObject; var Key: Char);
begin
//     if Key = #13 then DBEdit8.SetFocus;
end;

procedure TFmfornecedores.SbConsultaForClick(Sender: TObject);
begin
   try
   application.CreateForm(TFrmProcuraporNomeFornecedor, FrmProcuraporNomeFornecedor);
   FrmProcuraporNomeFornecedor.showmodal;
   finally
   FrmProcuraporNomeFornecedor.Free;
   end;
end;

procedure TFmfornecedores.editCPFExit(Sender: TObject);
begin
   if VerCpf(editCPF.Text) = False then
   begin
   if MessageDlg('Numero de CPF Inválico. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   editCPF.SetFocus end else
   editRG.SetFocus;
end;

procedure TFmfornecedores.editCnpjExit(Sender: TObject);
begin
   if VerCGC(editCnpj.Text) = False then
   begin
   if MessageDlg('Numero de CNPJ Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   editCnpj.SetFocus end else
   editIE.SetFocus;

end;

procedure TFmfornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    BtSaidaClick(self);
    if DMDados.Tbfornecedores.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.Tbfornecedores.Post
      else
      DMDados.Tbfornecedores.Cancel;
end;

procedure TFmfornecedores.editCepExit(Sender: TObject);
begin
  (*  IF LENGTH(editCep.Text) = 8 THEN
    BEGIN
    editCep.Text := tbFormataCEP(editCep.Text);
    editTel.SetFocus;
    END else
    begin
    MessageDlg('CEP INVÁLIDO !', mtInformation, [mbOk], 0);
//    Showmessage('CEP INVÁLIDO !');  //NUM GOSTEI...HUNF!!!
    editCep.SetFocus;
    end; *)
end;

procedure TFmfornecedores.editTelExit(Sender: TObject);
begin
   (* IF LENGTH(editTel.Text) = 8 THEN
    BEGIN
    editTel.Text := tbFormataTEL(editTel.Text);
    editFax.SetFocus;
    END

    else

    IF LENGTH(editTel.Text) = 10 THEN
    BEGIN
    editTel.Text := tbFormataTELDDD(editTel.Text);
    editFax.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
    editTel.SetFocus;
    end; *)
end;

procedure TFmfornecedores.editFaxExit(Sender: TObject);
begin
   (* IF LENGTH(editFax.Text) = 8 THEN
    BEGIN
    editFax.Text := tbFormataTEL(editFax.Text);
    editCelular.SetFocus;
    END

    else

    IF LENGTH(editFax.Text) = 10 THEN
    BEGIN
    editFax.Text := tbFormataTELDDD(editFax.Text);
    editCelular.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
    editCelular.SetFocus;
    end;  *)
end;

procedure TFmfornecedores.editCelularExit(Sender: TObject);
begin
   (* IF LENGTH(editCelular.Text) = 8 THEN
    BEGIN
    editCelular.Text := tbFormataTEL(editCelular.Text);
    editEmail.SetFocus;
    END

    else

    IF LENGTH(editCelular.Text) = 10 THEN
    BEGIN
    editCelular.Text := tbFormataTELDDD(editCelular.Text);
    editEmail.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
    editCelular.SetFocus;
    end;  *)
end;

procedure TFmfornecedores.btnRelatorioClick(Sender: TObject);
begin
Try
    Application.CreateForm(TFrmRelFornecedorXProdutos, FrmRelFornecedorXProdutos);
    dmdados.QryRelForXProd.Close;
    dmdados.QryRelForXProd.ParamByName('VARFORNECEDOR').AsString:= editNome.Text+'%';
    dmdados.QryRelForXProd.Prepare;
    dmdados.QryRelForXProd.Open;
      if dmdados.QryRelForXProd.RecordCount = 0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada, para esse FORNECEDOR!');
      End;
    FrmRelFornecedorXProdutos.lblTituloRel.Caption:= 'RELATÓRIO: FORNECEDOR X PRODUTOS';
    FrmRelFornecedorXProdutos.QuickRep1.Preview;
    dmdados.QryRelForXProd.Close;
    Finally
    FrmRelFornecedorXProdutos.Free;
    end;
end;

end.
