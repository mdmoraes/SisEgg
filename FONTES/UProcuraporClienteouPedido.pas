unit UProcuraporClienteouPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TFrmProcuraporClienteouPedido = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    btnFechar: TButton;
    GroupBox1: TGroupBox;
    rdCliente: TRadioButton;
    rdPedido: TRadioButton;
    Label1: TLabel;
    rb1: TRadioButton;
    qry1: TQuery;
    ds1: TDataSource;
    qry1ped_numero: TIntegerField;
    qry1ped_e: TIntegerField;
    qry1ped_cliente: TStringField;
    qry1ped_data: TDateField;
    procedure rdClienteClick(Sender: TObject);
    procedure rdPedidoClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcuraporClienteouPedido: TFrmProcuraporClienteouPedido;

implementation

uses Base, UPedidos;

{$R *.dfm}

procedure TFrmProcuraporClienteouPedido.rdClienteClick(Sender: TObject);
begin
DMDados.Tbpedidos.IndexName:= 'idxPed_Cliente';
Edit1.SetFocus;
end;

procedure TFrmProcuraporClienteouPedido.rdPedidoClick(Sender: TObject);
begin
DMDados.Tbpedidos.IndexName:= 'IPed_E';
Edit1.SetFocus;
end;

procedure TFrmProcuraporClienteouPedido.Edit1Change(Sender: TObject);
begin
if rdCliente.Checked = True then
qry1.Locate('ped_cliente',Edit1.Text,[loPartialKey])



//DMDados.Tbpedidos.FindNearest([Edit1.Text]);
end;

procedure TFrmProcuraporClienteouPedido.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmProcuraporClienteouPedido.DBGrid1DblClick(Sender: TObject);
begin
btnFecharClick(self);
end;

procedure TFrmProcuraporClienteouPedido.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
rdPedidoClick(self);
FmPedidos.FiltroExternaExecute(Self);
end;

procedure TFrmProcuraporClienteouPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DMDados.Tbpedidos.IndexName:= '';
end;

procedure TFrmProcuraporClienteouPedido.rb1Click(Sender: TObject);
begin
DMDados.Tbpedidos.IndexName:= 'idxPedNumero';
Edit1.SetFocus;
end;

end.
