unit UProcuraNomeClientePedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmProcuraNomeClientePedido = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    rdCodCliente: TRadioButton;
    RadioButton1: TRadioButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure rdCodClienteClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcuraNomeClientePedido: TFrmProcuraNomeClientePedido;

implementation

uses Base, UPedidos, UFaturados;

{$R *.dfm}

procedure TFrmProcuraNomeClientePedido.DBGrid1DblClick(Sender: TObject);
begin
dmdados.Tbpedidos.Edit;

if DBGrid1.Columns.Items[0].Field.Text = '' then
begin
   Application.MessageBox('CLIENTE NÃO POSSUE UM CÓDIGO,' + #13#10 +
    'FAVOR CADASTRAR ESTE CLIENTE  NOVAMENTE NO ' + #13#10 +
    'CADASTRO DE CLIENTE, PARA DEPOIS GERAR O PEDIDO !', 'ERRO', MB_OK + 
    MB_ICONSTOP);
    Exit;

end;

//DmDados.Tbpedidos.Edit;
FmPedidos.dbPed_CodCliente.Text:= DBGrid1.Columns.Items[0].Field.Text;
FmPedidos.editNomeClientePedido.Text:= DBGrid1.Columns.Items[1].Field.Text;
FmPedidos.edNomeVendedorPedido.Text:= DBGrid1.Columns.Items[2].Field.Text;
//DmDados.Tbpedidos.Post;
//DmDados.Tbpedidos.Edit;



//FmPedidos.dbForma.
//FmPedidos.dbForma.Text := DBGrid1.Columns.Items[3].Field.Text;
//FmPedidos.dbPrazo.Text := DBGrid1.Columns.Items[4].Field.Text;
//FmPedidos.btnBuscaFormaClick(Self);
//FmPedidos.comboEmpresa.SetFocus;
//FmPedidos.btnFaturaClick(self);
btnFecharClick(self);
end;

procedure TFrmProcuraNomeClientePedido.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmProcuraNomeClientePedido.Edit1Change(Sender: TObject);
begin
//DMDados.TbClientes.IndexFieldNames:= 'Cli_Cliente';
DMDados.TbClientes.FindNearest([Edit1.Text]);
end;

procedure TFrmProcuraNomeClientePedido.FormShow(Sender: TObject);
begin
dmdados.TbClientes.IndexName:= 'ICli_Cliente';
Edit1.SetFocus;
end;

procedure TFrmProcuraNomeClientePedido.RadioButton1Click(Sender: TObject);
begin
//dmdados.TbClientes.IndexName:= 'ICli_Cliente';
//Edit1.SetFocus;
end;

procedure TFrmProcuraNomeClientePedido.rdCodClienteClick(Sender: TObject);
begin
//dmdados.TbClientes.IndexName:= 'ICli_Codigo';
//Edit1.SetFocus;
end;

procedure TFrmProcuraNomeClientePedido.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    begin
    DBGrid1DblClick(self);
    close;
    end;
end;

end.
