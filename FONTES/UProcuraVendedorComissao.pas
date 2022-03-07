unit UProcuraVendedorComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls;

type
  TFrmProcuraVendedorComissao = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TSpeedButton;
    Edit1: TEdit;
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
  FrmProcuraVendedorComissao: TFrmProcuraVendedorComissao;

implementation

uses Base, UCalculoComissoporVendedores;

{$R *.dfm}

procedure TFrmProcuraVendedorComissao.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmProcuraVendedorComissao.FormShow(Sender: TObject);
begin
DMDados.tbVendedores.IndexName:= 'idxNome';
Edit1.SetFocus;
end;

procedure TFrmProcuraVendedorComissao.DBGrid1DblClick(Sender: TObject);
begin
FrmCalculoComissaoporVendedores.Edit1.Text:= DBGrid1.Columns.Items[0].Field.Text;
btnFecharClick(self);
end;

procedure TFrmProcuraVendedorComissao.Edit1Change(Sender: TObject);
begin
DmDados.tbVendedores.FindNearest([Edit1.Text]);
end;

end.
