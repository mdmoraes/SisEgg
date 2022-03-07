unit UPesquisaFornecedorparaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmPesquisaFornecedor = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    Label1: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaFornecedor: TFrmPesquisaFornecedor;

implementation

uses Base, UFornecedores, UProdutos;

{$R *.dfm}

procedure TFrmPesquisaFornecedor.btnFecharClick(Sender: TObject);
begin
//DBGrid1DblClick(self);
Close;
end;

procedure TFrmPesquisaFornecedor.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrmPesquisaFornecedor.DBGrid1DblClick(Sender: TObject);
begin
DMDados.Tbprodutos.Edit;
FmProdutos.edFornecedor.Text:= DBGrid1.Columns.Items[0].Field.Text;
btnFecharClick(self);
end;

procedure TFrmPesquisaFornecedor.Edit1Change(Sender: TObject);
begin
DMDados.Tbfornecedores.IndexName:= 'idxFor_Razao';
DMDados.Tbfornecedores.FindNearest([Edit1.Text]);
//DBGrid1.SetFocus;
end;

end.
