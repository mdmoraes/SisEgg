unit UMudarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmMudarSenha = class(TForm)
    edMudaSenha: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    edConfirmeSenha: TEdit;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMudarSenha: TFrmMudarSenha;

implementation

uses UDMUsuario, ULogin, Base, UMain;

{$R *.dfm}

procedure TFrmMudarSenha.SpeedButton1Click(Sender: TObject);
begin
if edMudaSenha.Text = '' then
begin
showmessage('DIGITE UMA SENHA, CAMPO NÃO PODE FICAR EM BRANCO !');
edMudaSenha.SetFocus;
EXIT;
END;

if edConfirmeSenha.Text <> edMudaSenha.Text then
begin
showmessage('SENHA NÃO CONFERE!... VERIFIQUE !');
edConfirmeSenha.Text:= '';
edConfirmeSenha.SetFocus;
exit;
end;

dmdados.TPermissoes.Edit;
dmdados.TPermissoesSenha.AsString:= edMudaSenha.Text;
dmdados.TPermissoes.Post;
showmessage('SENHA ALTERADA COM SUCESSO! ..REINICIE O SISTEMA.!');
Application.Terminate;
//Close;
end;

procedure TFrmMudarSenha.FormShow(Sender: TObject);
begin
//PARA LOCALIZAR O REGISTRO DE USUÁRIO EM QUESTÃO .... MaMo
DMdados.TPermissoes.Locate('Usuario', FrmLogin.EdNome.Text, []);
end;

end.
