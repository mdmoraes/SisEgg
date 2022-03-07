unit UPesquisaProdutoparaVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids, DBCtrls;


type
  TFrmPesquisaProduto = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    rdRef: TRadioButton;
    rdDescricao: TRadioButton;
    procedure btnFecharClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdRefClick(Sender: TObject);
    procedure rdDescricaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaProduto: TFrmPesquisaProduto;

implementation

uses Base;

{$R *.dfm}

procedure TFrmPesquisaProduto.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmPesquisaProduto.Edit1Change(Sender: TObject);
begin
DmDados.Tbprodutos.FindNearest([Edit1.Text]);
//ConsultaEstoque.FindNearest([Edit1.Text]);
end;

procedure TFrmPesquisaProduto.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
rdRef.Checked:= True;
end;

procedure TFrmPesquisaProduto.rdRefClick(Sender: TObject);
begin
DMDados.Tbprodutos.IndexName:= 'idxPro_Ref';
Edit1.SetFocus;
end;

procedure TFrmPesquisaProduto.rdDescricaoClick(Sender: TObject);
begin
DMDados.Tbprodutos.IndexName:= 'idxDescricao';
Edit1.SetFocus;
end;

end.
