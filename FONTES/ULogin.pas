unit ULogin;

interface
              
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls,db, Variants, Buttons;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    BtnOK: TButton;
    BtnCancelar: TButton;
    PnlMensagem: TPanel;
    Panel1: TPanel;
    iblnome: TLabel;
    iblsenha: TLabel;
    EdNome: TEdit;
    EdSenha: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    MT: array[1..12] of Boolean;    // Matriz do Tipo Lógica
  end;

var
  FrmLogin: TFrmLogin;
  MT: array[1..16] of Boolean;    // Matriz do Tipo Lógica
  I: Integer;
  Vusi: String;

implementation

uses UFrmPermissoes, Base, UMain, UMudarSenha;

{$R *.DFM}

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
edNome.setfocus;
edNome.Clear;
edSenha.Clear;
end;

procedure TFrmLogin.BtnOKClick(Sender: TObject);

begin
    DMDados.TPermissoes.IndexName:='ISenha';
     If I > 2 then
           Begin
           MessageBox(Application.Handle,pchar('TENTATIVAS ESGOTADAS.'),
                       'AVISO DO SISTEMA',MB_ICONSTOP);
           Application.Terminate;
           end
     else
        If DMDados.TPermissoes.FindKey([EdNome.text,EdSenha.text])=False Then
        Begin
        pnlMensagem.Caption:='Usuario ou Senha não confere.';
        EdNome.Text:='';
        EdSenha.Text:='';
        EdNome.SetFocus;
        I:=I+1;
        End
        Else
    Begin
    MT[1]:= DMDados.TPermissoesMenu_Cadastro.value;
    MT[2]:= DMDados.TPermissoesMenu_Pedidos.value;
    MT[3]:= DMDados.TPermissoesMenu_Financeiro.Value;
    MT[4]:= DMDados.TPermissoesMenu_Relatorios.value;
    MT[5]:= DMDados.TPermissoesMenu_Seguranca.value;
    MT[6]:= DMDados.TPermissoesMenu_M_Direta.value;
    MT[7]:= DMDados.TPermissoesFaturamento.value;
    MT[8]:= DMDados.TPermissoesFinanceiro.value;
    MT[9]:= DMDados.TPermissoesConfiguracoes.value;
    MT[10]:= DMDados.TPermissoesMudarVisual.value;
    MT[11]:= DMDados.TPermissoesBackup.value;
    MT[12]:= DMDados.TPermissoesCadastro_Usuario.value;
    MT[13]:= DMDados.TPermissoesAlterar.value;
    MT[14]:= DMDados.TPermissoesExcluir.value;
    MT[15]:= DMDados.TPermissoesCadastrar.value;

      If MT[1] = False  then
      Begin
      FrmMain.menuCadastro1.Enabled := False;
      end;

      If MT[2] = False then
      Begin
      FrmMain.menuPedido1.Enabled := False;
      end;

      If MT[3] = False then
      Begin
      FrmMain.menuFinanceiro1.Enabled := False;
      end;

      If MT[4] = False then
      Begin
      FrmMain.menuRelatrios1.Enabled := False;
      end;

      If MT[5] = False then
      Begin
      FrmMain.menuSegurana1.Enabled := False;
      end;

//      If MT[6] = False then
//      Begin
//      FrmMain.menuMalaDireta1.Enabled := False;
//      end;

     { If MT[7] = False then
      Begin
      FrmMain.submenuFaturamento1.Enabled := False;
      end;}

      If MT[8] = False then
      Begin
      FrmMain.menuFinanceiro1.Enabled := False;
      end;

     { If MT[9] = False then
      Begin
      FrmMain.submenuConfiguraesdeDados1.Enabled := False;
      end;

      If MT[10] = False then
      Begin
      FrmMain.submenuMudarVisual1.Enabled := False;
      end;}

      {If MT[11] = False then
      Begin
      FrmMain.submenuBackupdeDados1.Enabled := False;
      end;}

      If MT[12] = False then
      Begin
      FrmMain.submenuCadastrodeUsurios1.Enabled := False;
      end;

      if MT[14] = False then
      begin
        Application.MessageBox('USUÁRIO NÃO TEM PERMISSÃO' + #13#10 + 
          'PARA EXCLUIR REGISTRO.', 'ATENÇÃO !', MB_OK + MB_ICONSTOP);
        Exit;  
      end;

       //...MUDANÇA DA SENHA INICIAL....
      IF EdSenha.Text = '123' then
      begin
          MessageDlg('MUDE SUA SENHA !', mtInformation, [mbOk], 0);
          FrmMudarSenha.show;
      end
      else

         if EdSenha.Text <> '123' then
         begin
         Vusi:= Uppercase(EdNome.Text);
         with FrmMain.stbBarra do
         Panels[0].Text := '  Usuário ---> '+Vusi;
         FrmLogin.Hide;
         FrmMain.Show;
         end;
end;
end;
end.



