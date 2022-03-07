unit UCadstrodeFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, ExtDlgs;

type
  TFrmCadastrodeFuncionarios = class(TForm)
    pnlTitulo: TPanel;
    PainelControle: TPanel;
    PainelDados: TPanel;
    PainelConfirma: TPanel;
    SbConfirmar: TSpeedButton;
    SbDesistir: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Btincluir: TBitBtn;
    BtnAltera: TBitBtn;
    BtExcluir: TBitBtn;
    SbConsulta: TSpeedButton;
    BtSaida: TBitBtn;
    Label1: TLabel;
    edCod: TDBEdit;
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
    comboEstado: TDBComboBox;
    Label9: TLabel;
    edCep: TDBEdit;
    Label11: TLabel;
    edTel: TDBEdit;
    Label12: TLabel;
    edCel: TDBEdit;
    Label10: TLabel;
    edDataNasc: TDBEdit;
    Label14: TLabel;
    edEmail: TDBEdit;
    Label15: TLabel;
    memoObs: TDBMemo;
    Label13: TLabel;
    edFuncao: TDBEdit;
    Label16: TLabel;
    edDataAdmin: TDBEdit;
    Label17: TLabel;
    edDataDemin: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    pnlFoto: TPanel;
    dbFoto: TDBImage;
    btnSelecionar: TButton;
    btnLimpar: TButton;
    Label18: TLabel;
    edCProf: TDBEdit;
    Label19: TLabel;
    edPis: TDBEdit;
    btnFoco: TButton;
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SbDesistirClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCepExit(Sender: TObject);
    procedure edTelExit(Sender: TObject);
    procedure edCelExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrodeFuncionarios: TFrmCadastrodeFuncionarios;

implementation

uses Base, ULogin, Ucic_cgc;

{$R *.dfm}

procedure TFrmCadastrodeFuncionarios.btnSelecionarClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFuncionario.Edit;
    dbFoto.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmCadastrodeFuncionarios.btnLimparClick(Sender: TObject);
begin
    DMDados.TFuncionario.Edit;
    DMDados.TFuncionario.fieldbyname('Foto_Func').clear;
end;

procedure TFrmCadastrodeFuncionarios.SpeedButton1Click(Sender: TObject);
begin
    DMDados.TFuncionario.First;
end;

procedure TFrmCadastrodeFuncionarios.SpeedButton2Click(Sender: TObject);
begin
DMDados.TFuncionario.Prior;
end;

procedure TFrmCadastrodeFuncionarios.SpeedButton3Click(Sender: TObject);
begin
DMDados.TFuncionario.Next;
end;

procedure TFrmCadastrodeFuncionarios.SpeedButton4Click(Sender: TObject);
begin
DMDados.TFuncionario.Last;
end;

procedure TFrmCadastrodeFuncionarios.SbDesistirClick(Sender: TObject);
begin
        DMDados.TFuncionario.Cancel;
  //      DmDados.BancoDados.Rollback;
        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFrmCadastrodeFuncionarios.SbConfirmarClick(Sender: TObject);
begin
    DMDados.TFuncionario.Edit;
    DMDados.TFuncionario.Post;
//    DmDados.BancoDados.Commit;
    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
end;

procedure TFrmCadastrodeFuncionarios.BtnAlteraClick(Sender: TObject);
begin
//            IF MT[13] = FALSE  THEN
//            BEGIN
//            MESSAGEDLG('SEU NÍVEL DE ACESSO NÃO PERMITE.', MTINFORMATION, [MBOK], 0);
//            EXIT;
//            END
//             ELSE
      PainelDados.Enabled:=TRUE;
      PainelControle.Visible:=False;
      PainelConfirma.Visible:=True;
 //     DmDados.BancoDados.StartTransaction;
      DmDados.TFuncionario.Edit;
      edNome.SetFocus;
end;

procedure TFrmCadastrodeFuncionarios.BtExcluirClick(Sender: TObject);
begin
//     If MT[14] = False  then
//      Begin
//      MessageDlg('SEU NÍVEL DE ACESSO NÃO PERMITE.', mtInformation, [mbOk], 0);
//      exit;
//      end
//        else
        if MessageDlg('DESEJA EXCLUIR O REGISTRO ATUAL ?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
        DMDados.TFuncionario.Delete;
        end;
end;

procedure TFrmCadastrodeFuncionarios.BtSaidaClick(Sender: TObject);
begin
  pnlTitulo.SetFocus;
//  btnFoco.SetFocus;
  Close;
end;

procedure TFrmCadastrodeFuncionarios.BtincluirClick(Sender: TObject);
begin
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Funcionarios.value:=
    DmDados.TbInformativoInf_Funcionarios.Value+1;
    Dmdados.TbInformativo.post;

    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=true;

//    DmDados.BancoDados.StartTransaction;
    DMDados.TFuncionario.Append;
    DmDados.TFuncionarioID_Funcionario.value:=
    DmDados.TbInformativoInf_Funcionarios.Value;
//    DMDados.TFuncionario['Cli_DataCadastro']:= DateToStr(Now);
    edNome.SetFocus;
end;

procedure TFrmCadastrodeFuncionarios.edCPFExit(Sender: TObject);
begin
   if VerCpf(edCPF.Text) = False then
   begin
   if MessageDlg('Numero de CPF Inválido. Deseja corrigir?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   edCPF.SetFocus end else
   edRG.SetFocus;
end;

procedure TFrmCadastrodeFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     BtSaidaClick(self);
     if DMDados.TFuncionario.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.TFuncionario.Post
      else
      DMDados.TFuncionario.Cancel;
end;

procedure TFrmCadastrodeFuncionarios.edCepExit(Sender: TObject);
begin
   (* IF LENGTH(edCep.Text) = 8 THEN
    BEGIN
    edCep.Text := tbFormataCEP(edCep.Text);
    edTel.SetFocus;
    END else
    begin
    MessageDlg('CEP INVÁLIDO !', mtInformation, [mbOk], 0);
//    Showmessage('CEP INVÁLIDO !');  //NUM GOSTEI...HUNF!!!
    edCep.SetFocus;
    end;  *)
end;

procedure TFrmCadastrodeFuncionarios.edTelExit(Sender: TObject);
begin
   (* IF LENGTH(edTel.Text) = 8 THEN
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
    end;  *)
end;

procedure TFrmCadastrodeFuncionarios.edCelExit(Sender: TObject);
begin
   (* IF LENGTH(edCel.Text) = 8 THEN
    BEGIN
    edCel.Text := tbFormataTEL(edCel.Text);
    edDataNasc.SetFocus;
    END

    else

    IF LENGTH(edCel.Text) = 10 THEN
    BEGIN
    edCel.Text := tbFormataTELDDD(edCel.Text);
    edDataNasc.SetFocus;
    END
    ELSE
    begin
    Showmessage('TELEFONE INVÁLIDO, CORRIJA !');
    edCel.SetFocus;
  //  exit;
    end; *)
end;

end.
