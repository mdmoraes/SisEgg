unit UContasaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, Buttons;

type
  TFrmContasapagar = class(TForm)
    Panel1: TPanel;
    painelDados: TPanel;
    Label5: TLabel;
    edFavorecido: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    memoObs: TDBMemo;
    Label7: TLabel;
    PainelEdicao: TPanel;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConsultar: TSpeedButton;
    PainelNav: TPanel;
    btnPrimeiro: TSpeedButton;
    btnAnterior: TSpeedButton;
    btnProximo: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnFechar: TBitBtn;
    PainelConfirma: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit6: TDBEdit;
    btnPesquisa: TSpeedButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasapagar: TFrmContasapagar;

implementation

uses Base, UConsultaContasaPagar, UMain, UPesquisaCheque;

{$R *.dfm}

procedure TFrmContasapagar.btnNovoClick(Sender: TObject);
var
it:integer;
begin
PainelConfirma.Visible:= True;
PainelEdicao.Visible:= False;
PainelDados.Enabled:= true;

       try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
          dmdados.TContasPagar.DisableControls;
          try
          dmdados.TContasPagar.IndexName:= 'ICodCP';
          dmdados.TContasPagar.First;
          dmdados.TContasPagar.Last;

          if dmdados.TContasPagar['CodCP']<> null then
          it := dmdados.TContasPagar['CodCP']
          else
          it:= 0;

          dmdados.TContasPagar.Insert;
          dmdados.TContasPagar['CodCP'] := it + 1;
          dmdados.TContasPagar.Edit;
          dmdados.TContasPagarQuitado.AsString:= 'NAO';
          
          edFavorecido.SetFocus;
          finally
          dmdados.TContasPagar.EnableControls;
          end;
       finally
       end;

end;

procedure TFrmContasapagar.btnAlterarClick(Sender: TObject);
begin
PainelEdicao.Visible:= false;
PainelConfirma.Visible:= true;
PainelDados.Enabled:= true;
dmdados.TContasPagar.Edit;

end;

procedure TFrmContasapagar.btnCancelarClick(Sender: TObject);
begin
PainelEdicao.Visible:= true;
PainelConfirma.Visible:= False;
PainelDados.Enabled:= False;
dmdados.TContasPagar.Cancel;
end;

procedure TFrmContasapagar.btnExcluirClick(Sender: TObject);
begin
        if MessageDlg('DESEJA EXCLUIR O REGISTRO ATUAL ?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
        dmdados.TContasPagar.Delete;
        end
        else
        abort;
end;

procedure TFrmContasapagar.btnGravarClick(Sender: TObject);
begin
PainelEdicao.Visible:= True;
PainelConfirma.Visible:= False;
PainelDados.Enabled:= False;
dmdados.TContasPagar.Post;
showmessage('DADOS GRAVADOS !');
end;

procedure TFrmContasapagar.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmContasapagar.btnPrimeiroClick(Sender: TObject);
begin
dmdados.TContasPagar.First;
end;

procedure TFrmContasapagar.btnAnteriorClick(Sender: TObject);
begin
dmdados.TContasPagar.Prior;
end;

procedure TFrmContasapagar.btnProximoClick(Sender: TObject);
begin
dmdados.TContasPagar.Next;
end;

procedure TFrmContasapagar.btnUltimoClick(Sender: TObject);
begin
dmdados.TContasPagar.Last;
end;

procedure TFrmContasapagar.btnConsultarClick(Sender: TObject);
begin

    TRY
    application.CreateForm(TFrmConsultaContasPagarPendentes, FrmConsultaContasPagarPendentes);
    FrmConsultaContasPagarPendentes.ShowModal;
    finally
    FrmConsultaContasPagarPendentes.Free;
    end;

end;

procedure TFrmContasapagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//FrmMain.menuFinanceiro1.Enabled:= FALSE;
end;

procedure TFrmContasapagar.btnPesquisaClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmPesquisaCheque, FrmPesquisaCheque);
      FrmPesquisaCheque.ShowModal;
      finally
      FrmPesquisaCheque.Free;
      end;
end;

end.
