unit UConsultaProdutosCadastrados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  Buttons;

type
  TFrmConsultaProdutosCadastrados = class(TForm)
    JvDBGridConsulta: TJvDBGrid;
    btnFechar: TBitBtn;
    ed1: TEdit;
    lbl1: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBGridConsultaDblClick(Sender: TObject);
    procedure ed1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBGridConsultaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProdutosCadastrados: TFrmConsultaProdutosCadastrados;

implementation

uses Base, UEntradadeProduto;

{$R *.dfm}

procedure TFrmConsultaProdutosCadastrados.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaProdutosCadastrados.FormShow(Sender: TObject);
begin
dmdados.Tbprodutos.IndexFieldNames:= 'Pro_Ref';
ed1.SetFocus;
end;

procedure TFrmConsultaProdutosCadastrados.JvDBGridConsultaDblClick(
  Sender: TObject);
begin
   if FrmEntradaProduto.JvDBGrid1.Columns[2].Field.Text <> '' then
   BEGIN
         case MessageBoxW(Handle, 'PRODUTO JÁ CADASTRADO,' + #13#10 +
             'DESEJA SUBSTITUIR ?', 'ATENÇÃO !!!', MB_OKCANCEL + MB_ICONQUESTION) of
             IDOK:
              begin
              dmdados.tblEntradaProdutoDetalhe.Edit;
              FrmEntradaProduto.JvDBGrid1.Columns[2].Field.Text:=
              JvDBGridConsulta.Columns[0].Field.Text;

              FrmEntradaProduto.JvDBGrid1.Columns[3].Field.Text:=
              JvDBGridConsulta.Columns[1].Field.Text;

              FrmEntradaProduto.JvDBGrid1.Columns[4].Field.Text:=
              JvDBGridConsulta.Columns[2].Field.Text;

              FrmEntradaProduto.JvDBGrid1.SelectedIndex:= 5;

              close;

              end;
              IDCANCEL:
              begin
              CLOSE;
              Abort;
              end;
         end;
   end else
        dmdados.tblEntradaProdutoDetalhe.Edit;
        FrmEntradaProduto.JvDBGrid1.Columns[2].Field.Text:=
        JvDBGridConsulta.Columns[0].Field.Text;

        FrmEntradaProduto.JvDBGrid1.Columns[3].Field.Text:=
        JvDBGridConsulta.Columns[1].Field.Text;

        FrmEntradaProduto.JvDBGrid1.Columns[4].Field.Text:=
        JvDBGridConsulta.Columns[2].Field.Text;

        FrmEntradaProduto.JvDBGrid1.SelectedIndex:= 5;

        close;


end;

procedure TFrmConsultaProdutosCadastrados.ed1Change(Sender: TObject);
begin
DmDados.Tbprodutos.FindNearest([ed1.Text]);
end;

procedure TFrmConsultaProdutosCadastrados.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_down then // or vk_up then
JvDBGridConsulta.SetFocus;


if Key = vk_UP then // or vk_up then
JvDBGridConsulta.SetFocus;


if Key = vk_return then
JvDBGridConsultaDblClick(Self);


IF Key = VK_ESCAPE then
Close;
end;

procedure TFrmConsultaProdutosCadastrados.JvDBGridConsultaKeyPress(
  Sender: TObject; var Key: Char);
begin
//    if Key = #13 then
//    begin
//    JvDBGridConsultaDblClick(Self);
//    close;
//    end;
end;

end.
