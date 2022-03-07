unit UProcuraVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TFrmProcuraVendedor = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcuraVendedor: TFrmProcuraVendedor;

implementation

uses Base;

{$R *.dfm}

procedure TFrmProcuraVendedor.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmProcuraVendedor.DBGrid1DblClick(Sender: TObject);
begin
btnFecharClick(self);
end;

procedure TFrmProcuraVendedor.Edit1Change(Sender: TObject);
begin
DmDados.tbVendedores.IndexName:= 'idxNome';
DmDados.tbVendedores.FindNearest([Edit1.text]);
end;

procedure TFrmProcuraVendedor.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
