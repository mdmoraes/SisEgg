unit UFormAniversario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmAniversariantes = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    btnJaneiro: TSpeedButton;
    btnMaio: TSpeedButton;
    btnJunho: TSpeedButton;
    btnJulho: TSpeedButton;
    btnFevereiro: TSpeedButton;
    btnMarco: TSpeedButton;
    btnAbril: TSpeedButton;
    btnAgosto: TSpeedButton;
    btnSetembro: TSpeedButton;
    btnOutubro: TSpeedButton;
    btnNovembro: TSpeedButton;
    btnDezembro: TSpeedButton;
    btnImprirRel: TButton;
    btnFechar: TSpeedButton;
    Edit2: TEdit;
    procedure lblJaneiroClick(Sender: TObject);
    procedure lblFevereiroClick(Sender: TObject);
    procedure btnJaneiroClick(Sender: TObject);
    procedure btnImprirRelClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFevereiroClick(Sender: TObject);
    procedure btnMarcoClick(Sender: TObject);
    procedure btnAbrilClick(Sender: TObject);
    procedure btnMaioClick(Sender: TObject);
    procedure btnJunhoClick(Sender: TObject);
    procedure btnJulhoClick(Sender: TObject);
    procedure btnAgostoClick(Sender: TObject);
    procedure btnSetembroClick(Sender: TObject);
    procedure btnOutubroClick(Sender: TObject);
    procedure btnNovembroClick(Sender: TObject);
    procedure btnDezembroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAniversariantes: TfrmAniversariantes;

implementation

uses URelAniversariantes, UDMUsuario;

{$R *.dfm}

procedure TfrmAniversariantes.lblJaneiroClick(Sender: TObject);
begin
//lblJaneiro.Font.Color := clRed;
//Edit1.Text := '1';
end;

procedure TfrmAniversariantes.lblFevereiroClick(Sender: TObject);
begin
//lblFevereiro.Font.Color := clRed;
//Edit1.Text := '2';
end;

procedure TfrmAniversariantes.btnJaneiroClick(Sender: TObject);
begin
Edit1.Text := '01';
Edit2.Text := btnJaneiro.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnImprirRelClick(Sender: TObject);
begin
//VMes:= Edit1.Text;

Application.CreateForm(TFrmConsultaAniversariantes, FrmConsultaAniversariantes);
with FrmConsultaAniversariantes do
begin
QryAniversario.Close;
QryAniversario.sql.Clear ;
QryAniversario.sql.Add ('Select Nome, Dia_nasc, Mes_nasc from Cadastro');
QryAniversario.sql.Add ('Where (Mes_nasc = "'+Edit1.Text+'")');
QryAniversario.sql.Add ('order by Dia_Nasc');
QryAniversario.Open ;  // abrindo a Query
QRLabelMes.Caption := Edit2.Text;
QuickRep1.Preview;
end;
//if qconsultaaniversario.RecordCount = 0 then
//lblMensagem.Caption:= 'Não existe Aniversariantes neste Mês' else
//lblMensagem.Caption:= '';
//qconsultaaniversario.RecordCount > 0 then
//lblTotalNiver.Caption:= 'Total de Aniversariantes: ' +InttoStr(qconsultaaniversario.RecordCount);
//muito bla bla bla.....não vou usar essa bomba ....MaMo...
end;

procedure TfrmAniversariantes.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmAniversariantes.btnFevereiroClick(Sender: TObject);
begin
Edit1.Text := '02';
Edit2.Text := btnFevereiro.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnMarcoClick(Sender: TObject);
begin
Edit1.Text := '03';
Edit2.Text := btnMarco.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnAbrilClick(Sender: TObject);
begin
Edit1.Text := '04';
Edit2.Text := btnAbril.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnMaioClick(Sender: TObject);
begin
Edit1.Text := '05';
Edit2.Text := btnMaio.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnJunhoClick(Sender: TObject);
begin
Edit1.Text := '06';
Edit2.Text := btnJunho.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnJulhoClick(Sender: TObject);
begin
Edit1.Text := '07';
Edit2.Text := btnJulho.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnAgostoClick(Sender: TObject);
begin
Edit1.Text := '08';
Edit2.Text := btnAgosto.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnSetembroClick(Sender: TObject);
begin
Edit1.Text := '09';
Edit2.Text := btnSetembro.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnOutubroClick(Sender: TObject);
begin
Edit1.Text := '10';
Edit2.Text := btnOutubro.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnNovembroClick(Sender: TObject);
begin
Edit1.Text := '11';
Edit2.Text := btnNovembro.Caption;
btnImprirRelClick(self);
end;

procedure TfrmAniversariantes.btnDezembroClick(Sender: TObject);
begin
Edit1.Text := '12';
Edit2.Text := btnDezembro.Caption;
btnImprirRelClick(self);
end;

end.
