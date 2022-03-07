unit UVendedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, AppEvnts,
  Grids, DBGrids,DB, DBTables;

type
  TFrmVendedores = class(TForm)
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
    edNome: TDBEdit;
    Label3: TLabel;
    edCPF: TDBEdit;
    Label4: TLabel;
    edRG: TDBEdit;
    Label5: TLabel;
    edEnd: TDBEdit;
    Label6: TLabel;
    edBairro: TDBEdit;
    Label7: TLabel;
    edCidade: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    edCep: TDBEdit;
    Label11: TLabel;
    edTel: TDBEdit;
    Label12: TLabel;
    edCel: TDBEdit;
    Label14: TLabel;
    edEmail: TDBEdit;
    Label15: TLabel;
    PainelConfirma: TPanel;
    comboEstado: TDBComboBox;
    edCod: TDBEdit;
    SbDesistir: TSpeedButton;
    SbConfirmar: TSpeedButton;
    SbConsulta: TSpeedButton;
    memoObs: TDBMemo;
    Label10: TLabel;
    edDataNasc: TDBEdit;
 //   IndexDBGrid1: TIndexDBGrid;
    PainelTitulo: TPanel;
//    RxLabel1: TRxLabel;
    Button1: TButton;
    Query1: TQuery;
    btnRelatorio: TSpeedButton;
    PainelConfirma1: TPanel;
    btnSbDesistir: TSpeedButton;
    btnSbConfirmar: TSpeedButton;
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
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edRGKeyPress(Sender: TObject; var Key: Char);
    procedure edEndKeyPress(Sender: TObject; var Key: Char);
    procedure edBairroKeyPress(Sender: TObject; var Key: Char);
    procedure edCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure comboEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure edCepKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure edTelKeyPress(Sender: TObject; var Key: Char);
    procedure edCelKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure edEmailKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure Btconfirmar17Click(Sender: TObject);
    procedure SbDesistirClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure DBRichEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SbConsultaClick(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCepExit(Sender: TObject);
    procedure edTelExit(Sender: TObject);
    procedure edCelExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSbDesistirClick(Sender: TObject);
    procedure btnSbConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedores: TFrmVendedores;

implementation
    uses Base, Ucic_cgc, UFrmConsultaVendedor, UProcuraVendedor, UCopiador,
  UCadClie, URelVendedorXClientes;

{$R *.DFM}

procedure TFrmVendedores.SpeedButton1Click(Sender: TObject);
begin
    DmDados.tbVendedores.First;
end;

procedure TFrmVendedores.SpeedButton2Click(Sender: TObject);
begin
    DmDados.tbVendedores.Prior;
end;

procedure TFrmVendedores.SpeedButton3Click(Sender: TObject);
begin
     DmDados.tbVendedores.Next;
end;

procedure TFrmVendedores.SpeedButton4Click(Sender: TObject);
begin
DmDados.tbVendedores.last;
end;

procedure TFrmVendedores.BtincluirClick(Sender: TObject);
begin
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Vendedores.value:=
    DmDados.TbInformativoInf_Vendedores.Value+1;
    Dmdados.TbInformativo.post;

    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma1.Visible:=true;

//    DmDados.BancoDados.StartTransaction;
    DmDados.tbVendedores.Append;
    DmDados.tbVendedoresId_Vendedor.value:=
    DmDados.TbInformativoInf_Vendedores.Value;

    edNome.SetFocus;
end;

procedure TFrmVendedores.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma1.Visible:=True;

//    DmDados.BancoDados.StartTransaction;
    DmDados.tbVendedores.Edit;
    edNome.setfocus;
end;

procedure TFrmVendedores.BtExcluirClick(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja eliminar este Registro?','Eliminação de Registro',
    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN
    DmDados.tbVendedores.Delete;//EMITE MESSAGEM DE ELIMINAÇÃO DE REGISTRO.
     DmDados.TVendedorDetail.First;
     if not DmDados.TVendedorDetail.Eof then
     repeat
   //  if DmDados.tbVendedoresId_Vendedor.Value = DmDados.TVendedorDetailCod_Ven_D.Value then
     if DmDados.TVendedorDetailCod_Ven_D.AsString =edCod.Text then
     begin
     DmDados.TVendedorDetail.Delete;
     end;
     DmDados.TVendedorDetail.Next
     until DmDados.TVendedorDetail.Eof;
     Except
        on E:Exception do
     Begin
           If Pos('DmDados.tbVendedores',E.Message)<>0 then
           Application.MessageBox('Todos os Vendedores já foram excluidos!','Aviso',48);
           Abort;
     end;
   end;
end;

procedure TFrmVendedores.BtSaidaClick(Sender: TObject);
begin
    PainelControle.SetFocus;
//   PainelTitulo.SetFocus;
//    BtSaida.SetFocus;
    Close;
end;

procedure TFrmVendedores.BtConfirma17Click(Sender: TObject);
begin
    DmDados.tbVendedores.Post;
//    DmDados.BancoDados.Commit;
    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
end;

procedure TFrmVendedores.BtDesiste16Click(Sender: TObject);
begin
        DmDados.tbVendedores.Cancel;
//        DmDados.BancoDados.Rollback;
        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFrmVendedores.edCodKeyPress(Sender: TObject; var Key: Char);
begin
//        if Key = #13 then DBEdit2.SetFocus;
end;

procedure TFrmVendedores.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBEdit3.SetFocus;
//   DBEdit2.Text:= Maiusculas(DBEdit2.Text);
end;

procedure TFrmVendedores.edCPFKeyPress(Sender: TObject; var Key: Char);
begin
 //       if Key = #13 then DBEdit4.SetFocus;
//DBEdit3.Text:= Maiusculas(DBEdit3.Text);
end;


procedure TFrmVendedores.edRGKeyPress(Sender: TObject; var Key: Char);
begin
  //      if Key = #13 then DBEdit5.SetFocus;
end;

procedure TFrmVendedores.edEndKeyPress(Sender: TObject; var Key: Char);
begin
 //   if Key = #13 then DBEdit6.SetFocus;
 //   DBEdit5.Text:= Maiusculas(DBEdit5.Text);
end;

procedure TFrmVendedores.edBairroKeyPress(Sender: TObject; var Key: Char);
begin
  //  if Key = #13 then DBEdit7.SetFocus;
end;

procedure TFrmVendedores.edCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  //  if Key = #13 then DBComboBox1.SetFocus;
end;


procedure TFrmVendedores.comboEstadoKeyPress(Sender: TObject; var Key: Char);
begin
 //   if Key = #13 then DBEdit9.SetFocus;
end;

procedure TFrmVendedores.edCepKeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBEdit10.SetFocus;
end;

procedure TFrmVendedores.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBEdit11.SetFocus;
end;


procedure TFrmVendedores.edTelKeyPress(Sender: TObject; var Key: Char);
begin
 //  if Key = #13 then DBEdit12.SetFocus;
end;


procedure TFrmVendedores.edCelKeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit13.SetFocus;
end;


procedure TFrmVendedores.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
 //  if Key = #13 then DBEdit14.SetFocus;
end;


procedure TFrmVendedores.edEmailKeyPress(Sender: TObject; var Key: Char);
begin
 //  if Key = #13 then memoObs.SetFocus;
end;


procedure TFrmVendedores.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
 //  if Key = #13 then DBEdit1.SetFocus;
end;


procedure TFrmVendedores.Btconfirmar17Click(Sender: TObject);
begin
    DmDados.tbVendedores.Post;
//    DmDados.BancoDados.Commit;

    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
end;

procedure TFrmVendedores.SbDesistirClick(Sender: TObject);
begin
        DmDados.tbVendedores.Cancel;
//        DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFrmVendedores.SbConfirmarClick(Sender: TObject);
begin
   Try
    DmDados.tbVendedores.Post;
    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
    Except
        on E:Exception do
         Begin
           If Pos('Nome',E.Message)<>0 then
           Application.MessageBox('O Campo Nome deve ser prenchido','Atenção',64);
           Abort
         end;
     end;
end;

procedure TFrmVendedores.DBRichEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBEdit1.SetFocus;
end;

procedure TFrmVendedores.SbConsultaClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmProcuraVendedor, FrmProcuraVendedor);
    FrmProcuraVendedor.ShowModal;
    finally
    FrmProcuraVendedor.Free;
    end;
end;

procedure TFrmVendedores.edNomeExit(Sender: TObject);
begin
//   DBEdit2.Text:= Maiusculas(DBEdit2.Text);
end;

procedure TFrmVendedores.edCPFExit(Sender: TObject);
begin
   if VerCpf(edCPF.Text) = False then
   begin
   if MessageDlg('Numero de CPF Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   edCPF.SetFocus end else
   edRG.SetFocus;
end;

procedure TFrmVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      BtSaidaClick(self);
      if DMDados.tbVendedores.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.tbVendedores.Post
      else
      DMDados.tbVendedores.Cancel;
end;

procedure TFrmVendedores.edCepExit(Sender: TObject);
begin
  {  IF LENGTH(edCep.Text) = 8 THEN
    BEGIN
    edCep.Text := tbFormataCEP(edCep.Text);
    edTel.SetFocus;
    END else
    begin
    MessageDlg('CEP INVÁLIDO !', mtInformation, [mbOk], 0);
//    Showmessage('CEP INVÁLIDO !');  //NUM GOSTEI...HUNF!!!
    edCep.SetFocus;
    end;}
end;

procedure TFrmVendedores.edTelExit(Sender: TObject);
begin
  {  IF LENGTH(edTel.Text) = 8 THEN
    BEGIN
    edTel.Text := tbFormataTEL(edTel.Text);
    edCel.SetFocus;
    END

    else

    IF LENGTH(edTel.Text) = 10 THEN
    BEGIN
    edTel.Text := tbFormataTELDDD(edTel.Text);
    edCel.SetFocus;
    END
    ELSE
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
  //  Showmessage('TELEFONE INVÁLIDO!');
    edTel.SetFocus;
  //  exit;
    end; }
end;

procedure TFrmVendedores.edCelExit(Sender: TObject);
begin
  (*  if edCel.Text = '' then edDataNasc.SetFocus;
    IF LENGTH(edCel.Text) = 8  THEN
    BEGIN
    edCel.Text := tbFormataTEL(edCel.Text);
    edDataNasc.SetFocus;
    END

    else

    IF LENGTH(edCel.Text) = 10 THEN
    BEGIN
    edCel.Text := tbFormataTELDDD(edCel.Text);
    edDataNasc.SetFocus;
    END else

   { IF LENGTH(edCel.Text) = 0 THEN
    begin
    edDataNasc.SetFocus;
    end

    ELSE}
    begin
    MessageDlg('TELEFONE INVÁLIDO !', mtInformation, [mbOk], 0);
  //  Showmessage('TELEFONE INVÁLIDO !');
    edCel.SetFocus;
    end;*)
end;

procedure TFrmVendedores.Button1Click(Sender: TObject);
begin
FrmCopiador.Show;
end;

procedure TFrmVendedores.btnRelatorioClick(Sender: TObject);
begin
    Try
    Application.CreateForm(TFrmRelVendedorXClientes, FrmRelVendedorXClientes);
    Query1.Close;
    Query1.ParamByName('VARNOMEVENDEDOR').AsString:= edNome.Text+'%';
    Query1.Prepare;
    Query1.Open;
    //   End;
      if Query1.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada, para esse Vendedor!');
      End;
    FrmRelVendedorXClientes.lblTituloRel.Caption:= 'RELATÓRIO: VENDEDOR X CLIENTES';
    FrmRelVendedorXClientes.lblNomeVendedor.Caption:= UpperCase(edNome.Text);
    FrmRelVendedorXClientes.QuickRep1.Preview;
    Query1.Close;
    Finally
    FrmRelVendedorXClientes.Free;
    end;
end;

procedure TFrmVendedores.FormShow(Sender: TObject);
begin
//DMDADOS.TVendedorDetail.IndexName:= 'IRSocial';
end;

procedure TFrmVendedores.btnSbDesistirClick(Sender: TObject);
begin
DmDados.tbVendedores.Cancel;
PainelConfirma1.Visible:=False;
PainelControle.Visible:= True;
end;

procedure TFrmVendedores.btnSbConfirmarClick(Sender: TObject);
begin
dmdados.tbVendedores.Edit;
DmDados.tbVendedores.Post;
PainelConfirma1.Visible:= False;
PainelControle.Visible:= TRUE;
showmessage('OS DADOS FORAM GRAVADOS !!!');

end;

end.


