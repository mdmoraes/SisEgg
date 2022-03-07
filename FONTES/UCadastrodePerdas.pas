unit UCadastrodePerdas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExMask, JvToolEdit, JvDBControls, StdCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmCadastrodePerdas = class(TForm)
    PainelDados: TPanel;
    dbData: TJvDBDateEdit;
    dbID: TDBEdit;
    dbValordaPerda: TDBEdit;
    dbgrd1: TDBGrid;
    PainelConfirma: TPanel;
    btnDesistir: TSpeedButton;
    btnSbConfirmar: TSpeedButton;
    PainelControle: TPanel;
    btnBtincluir: TBitBtn;
    btnBtnAltera: TBitBtn;
    btnBtExcluir: TBitBtn;
    btn5: TBitBtn;
    dbnvgr1: TDBNavigator;
    lbl1: TLabel;
    lbl2: TLabel;
    dbmmoObs: TDBMemo;
    lbl3: TLabel;
    procedure btn5Click(Sender: TObject);
    procedure btnBtincluirClick(Sender: TObject);
    procedure btnBtnAlteraClick(Sender: TObject);
    procedure btnBtExcluirClick(Sender: TObject);
    procedure btnDesistirClick(Sender: TObject);
    procedure btnSbConfirmarClick(Sender: TObject);
    procedure dbgrd1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrodePerdas: TFrmCadastrodePerdas;

implementation

uses Base, UMain, Rotina, UBuscaProdutoPerda;

{$R *.dfm}

procedure TFrmCadastrodePerdas.btn5Click(Sender: TObject);
begin
  close;
end;

procedure TFrmCadastrodePerdas.btnBtincluirClick(Sender: TObject);
var
  it: Integer;
begin
    dmdados.tbPerdaMaster.Filtered := False;
          // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=true;
    try
          DmDados.tbPerdaMaster.DisableControls;
      try
          DMDados.tbPerdaMaster.IndexName:= 'IDMASTER';
          DMDados.tbPerdaMaster.First;
          DMDados.tbPerdaMaster.Last;

          if DMDados.tbPerdaMaster['ID']<> null then
          it := DMDados.tbPerdaMaster['ID']
          else
          it:= 0;

          DMDados.tbPerdaMaster.Insert;
          DMDados.tbPerdaMaster['ID'] := it + 1;
          DmDados.tbPerdaMaster['DATA']:=DateToStr(Now);

          DmDados.tbPerdaMaster.Last;
          DmDados.tbPerdaMaster.Edit;


      DmDados.tbPerdaMaster.Post;
//      editNomeClientePedido.SetFocus;
      finally
      DMDados.tbPerdaMaster.EnableControls;
      end;
    finally
    end;

end;

procedure TFrmCadastrodePerdas.btnBtnAlteraClick(Sender: TObject);
begin
PainelDados.Enabled:=TRUE;
PainelControle.Visible:=False;
PainelConfirma.Visible:=True;
DmDados.tbPerdaMaster.Edit;
end;

procedure TFrmCadastrodePerdas.btnBtExcluirClick(Sender: TObject);
begin
   // EXTORNAR OS ITENS PARA A TABELA PRODUTOS
   if Application.MessageBox('Deseja excluir este Registro ?','Eliminação de Registro',
   MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN
   begin
      if dmdados.tbPerdaDetalhe.RecordCount > 0 then
      begin
      dmdados.tbPerdaDetalhe.Filter:= 'Controle='+QuotedStr(dbID.Text);
      dmdados.tbPerdaDETALHE.Filtered:= true;
      DeleteAll(dmdados.tbPerdaDetalhe);
      dmdados.tbPerdaDetalhe.Filtered:= false;
      end;
      Dmdados.tbPerdaMaster.Delete;
end;

end;

procedure TFrmCadastrodePerdas.btnDesistirClick(Sender: TObject);
begin
DmDados.tbPerdaMaster.Cancel;
dmdados.tbPerdaDetalhe.Cancel;
PainelConfirma.Visible:=False;
PainelDados.Enabled:=False;
PainelControle.Visible:=True;
end;

procedure TFrmCadastrodePerdas.btnSbConfirmarClick(Sender: TObject);
begin
dmdados.tbPerdaMaster.Edit;
dmdados.tbPerdaMaster.Post;
DmDados.tbPerdaDetalhe.Edit;
dmdados.tbPerdaDetalhe.Post;

Application.MessageBox('Dados Gravados.', 'CONFIRMAÇÃO !', MB_OK + 
  MB_ICONINFORMATION);



PainelConfirma.Visible:=False;   //Marcos True;
PainelDados.Enabled:=False;     //Marcos True;
PainelControle.Visible:=True;


end;

procedure TFrmCadastrodePerdas.dbgrd1EditButtonClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmBuscaProdutoPerda, FrmBuscaProdutoPerda);
   FrmBuscaProdutoPerda.ShowModal;
   finally
   FrmBuscaProdutoPerda.Free;
   end;
end;

end.
