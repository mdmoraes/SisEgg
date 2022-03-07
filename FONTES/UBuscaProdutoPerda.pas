unit UBuscaProdutoPerda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmBuscaProdutoPerda = class(TForm)
    dbgrd1: TDBGrid;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscaProdutoPerda: TFrmBuscaProdutoPerda;

implementation

uses Base, UCadastrodePerdas;

{$R *.dfm}

procedure TFrmBuscaProdutoPerda.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmBuscaProdutoPerda.FormShow(Sender: TObject);
begin
dmdados.Tbprodutos.IndexName := 'idxPro_Ref';
end;

procedure TFrmBuscaProdutoPerda.dbgrd1DblClick(Sender: TObject);
begin
 DmDados.tbPerdaDetalhe.Edit;
 FrmCadastrodePerdas.dbgrd1.Columns[2].Field.Text :=
 dbgrd1.Columns[0].Field.Text;

 FrmCadastrodePerdas.dbgrd1.Columns[3].Field.Text :=
 dbgrd1.Columns[1].Field.Text;

 FrmCadastrodePerdas.dbgrd1.SelectedIndex := 5;

 Close;


end;

end.
