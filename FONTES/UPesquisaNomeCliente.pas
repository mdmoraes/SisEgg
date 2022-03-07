unit UPesquisaNomeCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls;

type
  TFrmPequisaClienteVendas = class(TForm)
    DBGrid1: TDBGrid;
    edCliente: TEdit;
    btnFechar: TButton;
    GroupBox1: TGroupBox;
    rdRSocial: TRadioButton;
    rdNFantasia: TRadioButton;
    edPegaNome: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure rdRSocialClick(Sender: TObject);
    procedure rdNFantasiaClick(Sender: TObject);
    procedure rdPFisicaClick(Sender: TObject);
    procedure btnRSocialClick(Sender: TObject);
    procedure btnFantasiaClick(Sender: TObject);
    procedure btnFisicaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure rdCodClienteClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPequisaClienteVendas: TFrmPequisaClienteVendas;

implementation

uses Base,UPedidos;

{$R *.dfm}

procedure TFrmPequisaClienteVendas.btnFecharClick(Sender: TObject);
begin
//DmDados.TbClientes.Filtered:= False;
//DmDados.TbClientes.IndexFieldNames:= 'Cli_Codigo';
//DmDados.TbClientes.FindNearest([edPegaNome.Text]);
Close;
//DmDados.TbClientes.Filtered:= False;
end;

procedure TFrmPequisaClienteVendas.edClienteChange(Sender: TObject);
begin

      {if rdRSocial.Checked = True then
      begin  }
//      DmDados.TbClientes.IndexName:= 'ICli_Cliente';
      DmDados.TbClientes.FindNearest([edCliente.Text]);
    //  end;

         { if rdNFantasia.Checked = True then
          begin
          DmDados.TbClientes.IndexName:= 'INFantasia';
          edCliente.SetFocus;
          DmDados.TbClientes.FindNearest([edCliente.Text]);
          end;

      if rdPFisica.Checked = True then
      begin
      DmDados.TbClientes.IndexName:= 'INomeFisica';
      edCliente.SetFocus;
      DmDados.TbClientes.FindNearest([edCliente.Text]);
      end;}
end;

procedure TFrmPequisaClienteVendas.FormShow(Sender: TObject);
begin
//btnRSocialClick(self);
//rdCodCliente.Checked:= True;
//rdRSocial.Checked:= True;
edCliente.SetFocus;
end;

procedure TFrmPequisaClienteVendas.DBGrid1DblClick(Sender: TObject);
begin
{edCodCarta.Text := InttoStr(DM.tlbCartasCod_carta.Value);

if rdRSocial.Checked = True then
edPegaNome.Text:= DmDados.TbClientesCli_Razao.Value;

if rdNFantasia.Checked = True then
edPegaNome.Text:= DmDados.TbClientesCli_NFantasia.Value;

if rdPFisica.Checked = True then
edPegaNome.Text:= DmDados.TbClientesCli_NomeFisica.Value;}
btnFecharClick(SELF);

//FmPedidos.editNomeClientePedido.Text := DmDados.TbClientesCli_Razao.Value;
//FmPedidos.edNomeVendedorPedido.Text:= DmDados.TbClientesCli_Vendedor.Value;
//FmPedidos.DBLookupComboBox1.Text:= StrtoInt(DmDados.TbClientesCli_Razao.Value);
//FmPedidos.DBText1.DataField:= DmDados.TbClientesCli_Razao.Value;
//InttoStr(tlbCartasCod_carta.Value);
end;

procedure TFrmPequisaClienteVendas.rdRSocialClick(Sender: TObject);
begin
//btnRSocialClick(self);
DMDados.TbClientes.IndexName:= 'ICli_Cliente';
edCliente.SetFocus;
end;

procedure TFrmPequisaClienteVendas.rdNFantasiaClick(Sender: TObject);
begin
//btnFantasiaClick(self);
DMDados.TbClientes.IndexName:= 'ICli_NFantasia';
edCliente.SetFocus;
end;

procedure TFrmPequisaClienteVendas.rdPFisicaClick(Sender: TObject);
begin
//btnFisicaClick(self);
end;

procedure TFrmPequisaClienteVendas.btnRSocialClick(Sender: TObject);
//Var
//Texto : String;
begin
{Texto:= 'Fisica';
DmDados.TbClientes.Filtered:= False;
DmDados.TbClientes.Filter := 'Cli_PessoaFJ <>'+QuotedStr(Texto);
DmDados.TbClientes.Filtered := True;
DBGrid1.SelectedIndex := 0;
DmDados.TbClientes.IndexName:= 'IdxCliRazao';
DmDados.TbClientes.First;
edCliente.SetFocus;}
//DmDados.TbClientes.Filtered := False;
end;

procedure TFrmPequisaClienteVendas.btnFantasiaClick(Sender: TObject);
//var
//Texto : String;
begin
{Texto:= 'Fisica';
DmDados.TbClientes.Filtered:= False;
DmDados.TbClientes.Filter := 'Cli_PessoaFJ <>'+QuotedStr(Texto);
DmDados.TbClientes.Filtered := True;
DBGrid1.SelectedIndex := 1;
DmDados.TbClientes.IndexName:= 'INFantasia';
DmDados.TbClientes.First;
edCliente.SetFocus;}
//DmDados.TbClientes.Filtered := False;
end;

procedure TFrmPequisaClienteVendas.btnFisicaClick(Sender: TObject);
//var
//Texto : String;
begin
{Texto:= 'Fisica';
DmDados.TbClientes.Filtered:= False;
DmDados.TbClientes.Filter := 'Cli_PessoaFJ ='+QuotedStr(Texto);
DmDados.TbClientes.Filtered := True;
DBGrid1.SelectedIndex := 2;
DmDados.TbClientes.IndexName:= 'INomeFisica';
DmDados.TbClientes.First;
edCliente.SetFocus;}
//DmDados.TbClientes.Filtered := False;
end;

procedure TFrmPequisaClienteVendas.DBGrid1CellClick(Column: TColumn);
begin
//edPegaNome.Text:= DBGrid1.SelectedRows.Items;
end;

procedure TFrmPequisaClienteVendas.rdCodClienteClick(Sender: TObject);
begin
DMDados.TbClientes.IndexName:= 'ICli_SeqRota';
edCliente.SetFocus;
end;

procedure TFrmPequisaClienteVendas.ComboBox1Change(Sender: TObject);
begin
 IF ComboBox1.Text = 'Segunda' then
 begin
 dbgrid1.Columns.Items[0].Visible:= True;
 dmdados.TbClientes.IndexName:= 'ICli_RotaSegunda';
 dbgrid1.Columns.Items[1].Visible:= False;
 dbgrid1.Columns.Items[2].Visible:= False;
 dbgrid1.Columns.Items[3].Visible:= False;
 dbgrid1.Columns.Items[4].Visible:= False;
 dbgrid1.Columns.Items[5].Visible:= False;
 end else

 IF ComboBox1.Text = 'Terça' then
 begin
 dbgrid1.Columns.Items[1].Visible:= True;
 dmdados.TbClientes.IndexName:= 'ICli_RotaTerca';
 dbgrid1.Columns.Items[0].Visible:= False;
 dbgrid1.Columns.Items[2].Visible:= False;
 dbgrid1.Columns.Items[3].Visible:= False;
 dbgrid1.Columns.Items[4].Visible:= False;
 dbgrid1.Columns.Items[5].Visible:= False;
 end else

 IF ComboBox1.Text = 'Quarta' then
 begin
 dbgrid1.Columns.Items[2].Visible:= True;
 dmdados.TbClientes.IndexName:= 'ICli_RotaQuarta';
 dbgrid1.Columns.Items[0].Visible:= False;
 dbgrid1.Columns.Items[1].Visible:= False;
 dbgrid1.Columns.Items[3].Visible:= False;
 dbgrid1.Columns.Items[4].Visible:= False;
 dbgrid1.Columns.Items[5].Visible:= False;
 end else

 IF ComboBox1.Text = 'Quinta' then
 begin
 dbgrid1.Columns.Items[3].Visible:= True;
 dmdados.TbClientes.IndexName:= 'ICli_RotaQuinta';
 dbgrid1.Columns.Items[0].Visible:= False;
 dbgrid1.Columns.Items[1].Visible:= False;
 dbgrid1.Columns.Items[2].Visible:= False;
 dbgrid1.Columns.Items[4].Visible:= False;
 dbgrid1.Columns.Items[5].Visible:= False;
 end else

 IF ComboBox1.Text = 'Sexta' then
 begin
 dbgrid1.Columns.Items[4].Visible:= True;
 dmdados.TbClientes.IndexName:= 'ICli_RotaSexta';
 dbgrid1.Columns.Items[0].Visible:= False;
 dbgrid1.Columns.Items[1].Visible:= False;
 dbgrid1.Columns.Items[2].Visible:= False;
 dbgrid1.Columns.Items[3].Visible:= False;
 dbgrid1.Columns.Items[5].Visible:= False;
 end else

 IF ComboBox1.Text = 'Sabado' then
 begin
 dbgrid1.Columns.Items[5].Visible:= True;
 dmdados.TbClientes.IndexName:= 'ICli_RotaSabado';
 dbgrid1.Columns.Items[0].Visible:= False;
 dbgrid1.Columns.Items[1].Visible:= False;
 dbgrid1.Columns.Items[2].Visible:= False;
 dbgrid1.Columns.Items[3].Visible:= False;
 dbgrid1.Columns.Items[4].Visible:= False;
 end;

end;

end.




