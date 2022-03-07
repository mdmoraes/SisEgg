unit UFrmPermissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons,
  ExtDlgs, Grids, DBGrids, DB, BDE, ShellApi, Consts, Qconsts,
  DBTables;

type
  TFrmControledePermissoes = class(TForm)
    DBUsuario: TDBNavigator;
    BntNovo: TBitBtn;
    BntSalvar: TBitBtn;
    BntDeletar: TBitBtn;
    BntAlterar: TBitBtn;
    BntFechar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    CbxMenuCadastro: TDBCheckBox;
    CbxMenuPedidos: TDBCheckBox;
    CheckBoxSocial: TDBCheckBox;
    CheckBoxFinanceiro: TDBCheckBox;
    CheckBoxCadastrodeUsuarios: TDBCheckBox;
    CbxFaturamento: TDBCheckBox;
    Panel3: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBESenha: TDBEdit;
    Label4: TLabel;
    Edit1: TEdit;
    btnCancelar: TBitBtn;
    edCod: TDBEdit;
    CbxMenuRelatorios: TDBCheckBox;
    CbxMenuSeguranca: TDBCheckBox;
    btnFoco: TButton;
    procedure BntNovoClick(Sender: TObject);
    procedure BntAlterarClick(Sender: TObject);
    procedure BntSalvarClick(Sender: TObject);
    procedure BntFecharClick(Sender: TObject);
    procedure BntDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBESenhaChange(Sender: TObject);
    procedure DBESenhaExit(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControledePermissoes: TFrmControledePermissoes;

implementation

uses Base;


{$R *.dfm}

procedure TFrmControledePermissoes.BntNovoClick(Sender: TObject);
var
it:integer;
begin
       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          DMDados.TPermissoes.DisableControls;
          try
          DMDados.TPermissoes.IndexName:= 'ICodigo';
          DMDados.TPermissoes.First;
          DMDados.TPermissoes.Last;

          if DMDados.TPermissoes['Codigo']<> null then
          it := DMDados.TPermissoes['Codigo']
          else
          it:= 0;

          DMDados.TPermissoes.Insert;

          DMDados.TPermissoes['Codigo'] := it + 1;
          finally
          DMDados.TPermissoes.EnableControls;
          end;
       finally
       end;
      BntSalvar.Enabled:=true;
      btnCancelar.Enabled := true;
      BntSalvar.Enabled:=True;
      BntDeletar.Enabled:= False;
      BntFechar.Enabled := False;
      btnCancelar.Enabled := True;
      DBEdit1.SetFocus;
end;

procedure TFrmControledePermissoes.BntAlterarClick(Sender: TObject);
begin
 DMDados.TPermissoes.Edit;
 BntSalvar.Enabled:=True;
 BntNovo.Enabled:=False;
 BntDeletar.Enabled:=False;
 btnCancelar.Enabled:= True;
 BntFechar.Enabled := False;
 edCod.SetFocus;
end;

procedure TFrmControledePermissoes.BntSalvarClick(Sender: TObject);
begin
   if Edit1.Text = DBESenha.Text then
   begin
   DMDados.TPermissoes.Edit;
   DMDados.TPermissoes.Post;
   SHOWMESSAGE('DADOS GRAVADOS');
   BntFechar.Enabled := True;
   BntNovo.Enabled:=True;
   BntDeletar.Enabled:=True;
   BntSalvar.Enabled:=False;
   btnCancelar.Enabled:= True;
   bntAlterar.Enabled:= True;
   end else
   begin
   MessageBox(Application.Handle,pchar('Confirme a Senha, corretamente!'),
                 'AVISO DO SISTEMA',MB_ICONSTOP);
   end;
End;

procedure TFrmControledePermissoes.BntFecharClick(Sender: TObject);
begin
    Bntnovo.Enabled:=true;
    BntDeletar.Enabled:=true;
    BntSalvar.Enabled:=True;
    btnCancelar.Enabled:= True;
    bntAlterar.Enabled:= True;
    BntFechar.Enabled:= True;
    btnFoco.SetFocus;
    Close;
end;

procedure TFrmControledePermissoes.BntDeletarClick(Sender: TObject);
begin
    if MessageDlg('Deseja Excluir esse Usuário ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    DMDados.TPermissoes.Delete;
    Bntnovo.Enabled:=true;
    BntDeletar.Enabled:=true;
    BntSalvar.Enabled:=True;
    btnCancelar.Enabled:= True;
    bntAlterar.Enabled:= True;
    BntFechar.Enabled:= True;
    end;
end;

procedure TFrmControledePermissoes.btnCancelarClick(Sender: TObject);
begin
    DMDados.TPermissoes.Cancel;
    Bntnovo.Enabled:=true;
    BntDeletar.Enabled:=true;
    BntSalvar.Enabled:=True;
    btnCancelar.Enabled:= True;
    bntAlterar.Enabled:= True;
    BntFechar.Enabled:= True;
end;

procedure TFrmControledePermissoes.DBESenhaChange(Sender: TObject);
begin
    if DMDados.TPermissoes.State in [dsInsert,dsEdit] then
    begin
    Edit1.Text := '';
    end else
    Edit1.Text := DBESenha.Text;
end;

procedure TFrmControledePermissoes.DBESenhaExit(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
  MessageDlg('Confirme sua Senha, abaixo.', mtInformation, [mbOk], 0);
  end;
  DMDados.TPermissoes.Edit;
  Edit1.SetFocus;
end;

procedure TFrmControledePermissoes.Edit1Click(Sender: TObject);
begin
//DM.TPermissoes.Edit;
end;

procedure TFrmControledePermissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    BntFecharClick(self);
    if DMDados.TPermissoes.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.TPermissoes.Post
      else
      DMDados.TPermissoes.Cancel;
end;

end.
