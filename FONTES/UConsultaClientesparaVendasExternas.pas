unit UConsultaClientesparaVendasExternas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmConsultaClienteVendasExternas = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaClienteVendasExternas: TFrmConsultaClienteVendasExternas;

implementation

uses Base, UConsultaVendasExternas;

{$R *.dfm}

procedure TFrmConsultaClienteVendasExternas.btnFecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFrmConsultaClienteVendasExternas.FormShow(Sender: TObject);
begin
dmdados.TbClientes.IndexName:= 'ICli_Cliente';
Edit1.SetFocus;
end;

procedure TFrmConsultaClienteVendasExternas.DBGrid1DblClick(
  Sender: TObject);
begin
//FrmConsultaVendasExternas.Edit1.Text:= DBGrid1.Columns.Items[0].Field.text;
//btnFechar.Click;
end;

procedure TFrmConsultaClienteVendasExternas.Edit1Change(Sender: TObject);
begin
//dmdados.TbClientes.FindNearest([Edit1.Text]);
end;

procedure TFrmConsultaClienteVendasExternas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//dmdados.TbClientes.IndexName:= '';
end;

end.
