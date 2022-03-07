unit UConsultaProdutoVendasBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmConsultaProdutoVendasBalcao = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProdutoVendasBalcao: TFrmConsultaProdutoVendasBalcao;

implementation

uses Base, UVendasnoBalcao;

{$R *.dfm}

procedure TFrmConsultaProdutoVendasBalcao.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaProdutoVendasBalcao.DBGrid1DblClick(Sender: TObject);
begin
     if FmVendasBalcao.DBGrid1.Columns.Items[12].Field.Text = '1' then
     begin
     showmessage('PEDIDO JÁ FOI FECHADO, DELETE O ITEM NO PEDIDO!');
     btnFecharClick(self);
     exit;
     end;

      if FmVendasBalcao.DBGrid1.Columns.Items[2].Field.Text <> '' then
     begin
     if MessageDlg('OS CAMPOS ESTÃO PREENCHIDOS ...SUBSTITUIR ?',mtConfirmation, [mbYes, mbNo], 0)= mrYes then
       begin
       DMDados.Tbitens.Edit;
       FmVendasBalcao.DBGrid1.Columns.Items[2].Field.Text:= DBGrid1.Columns.Items[0].Field.Text;
       FmVendasBalcao.DBGrid1.Columns.Items[3].Field.Text:= DBGrid1.Columns.Items[1].Field.Text;
 //     FmPedidos.DBGrid1.Columns.Items[4].Field.Text:= DBGrid1.Columns.Items[2].Field.Text;
 //      FmPedidos.DBGrid1.Columns.Items[6].Field.Text:= DBGrid1.Columns.Items[3].Field.Text;
       FmVendasBalcao.DBGrid1.Columns.Items[12].Field.Text:= '0';
       FmVendasBalcao.DBGrid1.SelectedIndex:= 4;
       btnFecharClick(self);
       end else
     exit;
     btnFecharClick(self);
     end;
     ///se não estiver preenchidos...bla bla bla ...MAMO...
     if FmVendasBalcao.DBGrid1.Columns.Items[2].Field.Text = '' then
     begin
     DMDados.Tbitens.Edit;
     FmVendasBalcao.DBGrid1.Columns.Items[2].Field.Text:= DBGrid1.Columns.Items[0].Field.Text;
     FmVendasBalcao.DBGrid1.Columns.Items[3].Field.Text:= DBGrid1.Columns.Items[1].Field.Text;
//     FmPedidos.DBGrid1.Columns.Items[4].Field.Text:= DBGrid1.Columns.Items[2].Field.Text;
//     FmPedidos.DBGrid1.Columns.Items[6].Field.Text:= DBGrid1.Columns.Items[3].Field.Text;
     FmVendasBalcao.DBGrid1.Columns.Items[12].Field.Text:= '0';
     FmVendasBalcao.DBGrid1.SelectedIndex:= 4;
     btnFecharClick(self);
     end;
end;

procedure TFrmConsultaProdutoVendasBalcao.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
 DBGrid1DblClick(self);
end;

end.
