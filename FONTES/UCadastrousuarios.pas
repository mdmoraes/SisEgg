unit UCadastrousuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask, ComCtrls, DB, RxDBComb,
  ToolEdit, RXDBCtrl;

type
  TUsuarioForm = class(TForm)
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit7: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Button1: TButton;
    TrackBar1: TTrackBar;
    Panel1: TPanel;
    Status: TLabel;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    Area: TRxDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure ExitEnter(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
  private
    Procedure AtualizaNivel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsuarioForm: TUsuarioForm;

implementation

uses UDMUsuario, Ufunctions, USenhasdeAcesso;

{$R *.DFM}

procedure TUsuarioForm.BitBtn1Click(Sender: TObject);
begin
    Release;
end;

procedure TUsuarioForm.ExitEnter(Sender: TObject; var Key: Char);
Begin
    if Key = Chr(VK_RETURN) then begin
     Key := #0;
     Perform(WM_NEXTDLGCTL,0,0);
    End;
End;

procedure TUsuarioForm.Button1Click(Sender: TObject);
begin
     Close; //     Release;
end;

procedure TUsuarioForm.ATualizaNivel;
Var Mensagem: Array[0..3] of string;
Begin
//   Mensagem[0]:= 'Acesso ao sistema negado';
   Mensagem[0]:= 'Acesso ao sistema negado';
//   Mensagem[2]:= 'Consultas e Alterações';
   Mensagem[3]:= 'Somente Consulta de Estoque';
   Mensagem[1]:= 'Acesso a todos os recursos';
   Mensagem[2]:= 'Somente Cadastros e Pedidos';
   Status.Caption := Mensagem[TrackBar1.Position];

End;

procedure TUsuarioForm.TrackBar1Change(Sender: TObject);
begin
  If (DMSenha.TUsuario.State <> dsEdit) and (DMSenha.TUsuario.State <> dsInsert) Then
           DMSenha.TUsuario.Edit;
  DbEdit8.text :=  IntToStr(TrackBar1.position);
  AtualizaNIvel;
end;

procedure TUsuarioForm.DBEdit8Change(Sender: TObject);
begin
     //Caso menor que 0
    { If StrToInt(Dbedit8.Text)<0 then
        DbEdit8.text := inttostr(0);

     // Caso maior que 2
     If StrToInt(Dbedit8.Text)>2 then
      Else DbEdit8.Text := intToStr(2);}

     // Atualiza a barra e a mensagem
      TrackBar1.Position := StrToInt(DbEdit8.Text);
      AtualizaNivel;

end;

end.
