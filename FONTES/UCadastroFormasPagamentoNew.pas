unit UCadastroFormasPagamentoNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons;

type
  TFrmCadFormasPagamentoNew = class(TForm)
    grp1: TGroupBox;
    grp2: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    btnFechar: TButton;
    edForma: TEdit;
    edPrazo: TEdit;
    btnCopiar: TSpeedButton;
    btnCadCliente: TSpeedButton;
    edId: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid2CellClick(Column: TColumn);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnCadClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFormasPagamentoNew: TFrmCadFormasPagamentoNew;

implementation

uses Base, UConsultaClientesFormaPagto, UCadClie, UPedidos,
  UEntradadeProduto;

 

{$R *.dfm}

procedure TFrmCadFormasPagamentoNew.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCadFormasPagamentoNew.JvDBGrid1CellClick(Column: TColumn);
begin
//edForma.Text := '';
//edPrazo.Text := '';
//edForma.Text := JvDBGrid1.Columns.Items[1].Field.Text;
end;

procedure TFrmCadFormasPagamentoNew.JvDBGrid2CellClick(Column: TColumn);
begin
//edPrazo.Text := '';
//JvDBGrid2.Options := JvDBGrid2.Options - [dgEditing];
//edPrazo.Text := JvDBGrid2.Columns.Items[2].Field.Text;
end;

procedure TFrmCadFormasPagamentoNew.btnCopiarClick(Sender: TObject);
begin
    if edId.Text = 'Cliente' then
    begin
    DmDados.TbClientes.Edit;
    FrmCadClie.dbForma.Text := JvDBGrid1.Columns.Items[1].Field.Text;
    JvDBGrid2.Options := JvDBGrid2.Options - [dgEditing];
    FrmCadClie.dbPrazo.Text := JvDBGrid2.Columns.Items[2].Field.Text;
    DmDados.TbClientes.Post;
    DmDados.TbClientes.Edit;
    close;
    end;


    if edId.Text = 'Pedido' then
    begin
    DmDados.Tbpedidos.Edit;
//    FmPedidos.dbForma.Text := JvDBGrid1.Columns.Items[1].Field.Text;
//    JvDBGrid2.Options := JvDBGrid2.Options - [dgEditing];
 //   FmPedidos.dbPrazo.Text := JvDBGrid2.Columns.Items[2].Field.Text;
    DmDados.Tbpedidos.Post;
    DmDados.Tbpedidos.Edit;
    close;
    end;


    if edId.Text = 'Entrada' then
    begin
    DmDados.tbEntradaProdutoMaster.Edit;
//    FrmEntradaProduto.dbForma.Text := JvDBGrid1.Columns.Items[1].Field.Text;
//    JvDBGrid2.Options := JvDBGrid2.Options - [dgEditing];
//    FrmEntradaProduto.dbPrazo.Text := JvDBGrid2.Columns.Items[2].Field.Text;
    DmDados.tbEntradaProdutoMaster.Post;
    DmDados.tbEntradaProdutoMaster.Edit;
    close;
    end;


    if edId.Text = '' then
      Application.MessageBox('Função habilitada somente para' + #13#10 +
      'copiar formas de pagamentos',
      'ATENÇÃO !!!', MB_OK +
      MB_ICONINFORMATION);


end;

procedure TFrmCadFormasPagamentoNew.btnCadClienteClick(Sender: TObject);
begin
//FrmConsultaClientesFormaPagto.Show;
end;

end.
