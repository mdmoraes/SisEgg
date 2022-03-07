unit UCadastroEmbalagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmCadastroEmbalagens = class(TForm)
    GroupBox1: TGroupBox;
    edEntradaKG: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edEntradaPoupa: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    btnSair: TBitBtn;
    btnAlterar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCalcelar: TSpeedButton;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit7Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCalcelarClick(Sender: TObject);
    procedure edEntradaKGExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edEntradaPoupaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure DBEdit5Click(Sender: TObject);
    procedure DBEdit9Click(Sender: TObject);
    procedure DBEdit10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Click(Sender: TObject);
    procedure DBEdit13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroEmbalagens: TFrmCadastroEmbalagens;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCadastroEmbalagens.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TFrmCadastroEmbalagens.DBEdit3Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA.');
ABORT;
end;

procedure TFrmCadastroEmbalagens.DBEdit7Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA.');
ABORT;
end;

procedure TFrmCadastroEmbalagens.btnAlterarClick(Sender: TObject);
begin
dmdados.TEmbalagens.Edit;
edEntradaKG.SetFocus;
end;

procedure TFrmCadastroEmbalagens.btnGravarClick(Sender: TObject);
begin
dmdados.TEmbalagens.Edit;
dmdados.TEmbalagens.Post;
showmessage('DADOS GRAVADOS');
dmdados.TEmbalagens.Edit;
dmdados.TEmbalagensEntradaPvc.AsString:= '';
dmdados.TEmbalagensEntradaPoupa.AsString:= '';
dmdados.TEmbalagens.Post;
//edEntradaKG.Text:= '';
//edEntradaPoupa.Text:= '';
end;

procedure TFrmCadastroEmbalagens.btnCalcelarClick(Sender: TObject);
begin
dmdados.TEmbalagens.Cancel;
end;

procedure TFrmCadastroEmbalagens.edEntradaKGExit(Sender: TObject);
var
a: Real;
begin
dmdados.TEmbalagens.Edit;   // QtdAtualPvc
dmdados.TEmbalagensQtdAtualPvc.Value:=
dmdados.TEmbalagensQtdAtualPvc.Value + dmdados.TEmbalagensEntradaPvc.Value;

a:=  dmdados.TEmbalagensQtdAtualPvc.Value;
a:= Trunc(a * 100)/100;
dmdados.TEmbalagensQtdAtualPvc.Value:= a;
dmdados.TEmbalagens.Post;
end;

procedure TFrmCadastroEmbalagens.FormShow(Sender: TObject);
begin
edEntradaKG.Text:= '';
edEntradaPoupa.Text:= '';
end;

procedure TFrmCadastroEmbalagens.edEntradaPoupaExit(Sender: TObject);
var
a: Real;
begin
dmdados.TEmbalagens.Edit;
dmdados.TEmbalagensQtdAtualPoupa.Value:=
dmdados.TEmbalagensQtdAtualPoupa.Value + dmdados.TEmbalagensEntradaPoupa.Value;
//Arredonda casas decimais para 2 dígitos
a:=  dmdados.TEmbalagensQtdAtualPoupa.Value;
a:= Trunc(a * 100)/100;  // Var>> a: Real
dmdados.TEmbalagensQtdAtualPoupa.Value:= a;
dmdados.TEmbalagens.Post;
end;

procedure TFrmCadastroEmbalagens.FormActivate(Sender: TObject);
begin
edEntradaKG.Text:= '';
edEntradaPoupa.Text:= '';
end;

procedure TFrmCadastroEmbalagens.DBEdit4Exit(Sender: TObject);
begin
//
dmdados.TEmbalagens.Edit;
dmdados.TEmbalagensValorPvcDz.Value:=
(dmdados.TEmbalagensValorPvc.Value /256) + 0.015;
//(dmdados.TEmbalagensValorPvc.Value /256) + 0.005 + dmdados.TEmbalagensValorEtiqueta.Value;

dmdados.TEmbalagensValorPvcBd.Value:=
dmdados.TEmbalagensValorPvcDz.Value * 2.5;

dmdados.TEmbalagensValorPvcCx.Value:=
dmdados.TEmbalagensValorPvcDz.Value * 30;
end;

procedure TFrmCadastroEmbalagens.DBEdit1Change(Sender: TObject);
begin
{dmdados.TEmbalagens.Edit;
dmdados.TEmbalagensValorPvcDz.Value:=
((dmdados.TEmbalagensValorPvc.Value /256) + 0.010) * 30;}
end;

procedure TFrmCadastroEmbalagens.DBEdit8Exit(Sender: TObject);
begin
dmdados.TEmbalagens.Edit;
dmdados.TEmbalagensValorPoupaDz.Value:=
dmdados.TEmbalagensValorPoupa.Value;

dmdados.TEmbalagensValorPoupaBd.Value:=
dmdados.TEmbalagensValorPoupa.Value * 2.5;

dmdados.TEmbalagensValorPoupaCx.Value:=
dmdados.TEmbalagensValorPoupa.Value * 30;
end;

procedure TFrmCadastroEmbalagens.DBEdit1Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA');
abort;
GroupBox2.SetFocus;
end;

procedure TFrmCadastroEmbalagens.DBEdit5Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA');
abort;
GroupBox2.SetFocus;
end;

procedure TFrmCadastroEmbalagens.DBEdit9Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA');
GroupBox1.SetFocus;
abort;
end;

procedure TFrmCadastroEmbalagens.DBEdit10Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA');
GroupBox1.SetFocus;
abort;
end;

procedure TFrmCadastroEmbalagens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   { if DMDados.TEmbalagens.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.TEmbalagens.Post
      else
      DMDados.TEmbalagens.Cancel;}
end;

procedure TFrmCadastroEmbalagens.DBEdit11Exit(Sender: TObject);
begin
{dmdados.TEmbalagens.Edit;
dmdados.TEmbalagensValorPvcDz.Value:=
(dmdados.TEmbalagensValorPvc.Value /256) + 0.005 + dmdados.TEmbalagensValorEtiqueta.Value;

dmdados.TEmbalagensValorPvcCx.Value:=
dmdados.TEmbalagensValorPvcDz.Value * 30; }
end;

procedure TFrmCadastroEmbalagens.DBEdit12Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA');
abort;
GroupBox2.SetFocus;
end;

procedure TFrmCadastroEmbalagens.DBEdit13Click(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA');
abort;
GroupBox2.SetFocus;
end;

end.
