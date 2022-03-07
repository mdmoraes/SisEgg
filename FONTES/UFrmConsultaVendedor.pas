unit UFrmConsultaVendedor;   //da Tela Clientes....

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TFrmConsultaVendedor = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaVendedor: TFrmConsultaVendedor;

implementation

uses Base, UCadClie;

{$R *.dfm}

procedure TFrmConsultaVendedor.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmConsultaVendedor.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrmConsultaVendedor.Edit1Change(Sender: TObject);
begin
DmDados.tbVendedores.IndexName:= 'idxNome';
DmDados.tbVendedores.FindNearest([Edit1.text]);
end;

procedure TFrmConsultaVendedor.DBGrid1DblClick(Sender: TObject);
//var
//NVendedor: String;
begin
 //   if DmDados.TbClientes.State = dsInsert then
    begin
    FrmCadClie.edVendedor.Text:= DBGrid1.Columns.Items[1].Field.Text;
    btnFecharClick(self);
    END;

(*    if DmDados.TbClientes.State = dsEdit then
  //  NVendedor:= DBGrid1.Columns.Items[1].Field.Text;
    if FrmCadClie.edVendedor.Text <> '' then
    begin
    NVendedor:= DBGrid1.Columns.Items[1].Field.Text;
        if MessageDlg('DESEJA ALTERAR O VENDEDOR DESTE CLIENTE?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
        DmDados.tbVendedores.Locate('Nome', FrmCadClie.edVendedor.Text, []);
        DmDados.TVendedorDetail.Locate('RSocial', FrmCadClie.edNomeCliente.Text, []);
        DmDados.TVendedorDetail.Delete;
        FrmCadClie.edVendedor.Text := NVendedor;
        //.................................
        DmDados.tbVendedores.Locate('Nome', FrmCadClie.edVendedor.Text, []);
        DmDados.TVendedorDetail.Append;
        DmDados.TVendedorDetail.Edit;
        DmDados.TVendedorDetailCod_Ven_D.Value:= DmDados.tbVendedoresId_Vendedor.Value;
        DmDados.TVendedorDetailRSocial.AsString:= FrmCadClie.edNomeCliente.Text;
        DmDados.TVendedorDetailNFantasia.AsString:= FrmCadClie.edNomeFantasia.Text;
        DmDados.TVendedorDetailTel.AsString:= FrmCadClie.edTelCom.Text;
        DmDados.TVendedorDetailData_Ult_Compra.AsString:= FrmCadClie.edultimacompra.Text;
        DmDados.TVendedorDetail.Post;
        btnFecharClick(self);
        end
    else
    Abort;
    end;
 //   begin
 //   DmDados.TbClientes.Cancel;
    btnFecharClick(self); *)
end;

procedure TFrmConsultaVendedor.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
    {if Key = #13 then
    begin
    DBGrid1DblClick(self);
    close;
    end; }
end;

end.
