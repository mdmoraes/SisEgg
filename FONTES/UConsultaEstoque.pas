unit UConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids, DBCtrls;
//  RXCtrls;

type
  TFrmConsultaEstoque = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaEstoque: TFrmConsultaEstoque;

implementation

uses Base;

{$R *.dfm}

procedure TFrmConsultaEstoque.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmConsultaEstoque.Edit1Change(Sender: TObject);
begin
//Query1.Locate('Pro_Ref',[loPartialKey]);
//Query1.Locate('Pro_Ref');
//DmDados.Tbprodutos.IndexName:= 'idxPro_Ref';
//DmDados.Tbprodutos.FindNearest([Edit1.Text]);
//DmDados.Tbprodutos.IndexName:= '';
//DmDados.Tbprodutos.FindNearest([Edit1.Text]);
//tbConsultaEstoque.FindNearest([Edit1.Text]);
//DBGrid1.SetFocus;

end;

procedure TFrmConsultaEstoque.FormShow(Sender: TObject);
begin
dmdados.Tbprodutos.Active:= False;
dmdados.Tbprodutos.Active:= true;

//if DmDados.TbprodutosPro_QtdAtUnidade.Value = 0 then
//DBGrid1.Columns.Items[2].Field.Text:= '';
//Pro_QtdAtUnidade

end;

end.
