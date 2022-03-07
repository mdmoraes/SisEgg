unit UConsultaPedidosparaBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, DBCtrls, Buttons, StdCtrls, Mask,
  ToolEdit, CurrEdit, ExtCtrls;

type
  TFrmConsultaPedidosparaGerarBoletos = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1PED_NUMERO: TIntegerField;
    Query1PED_DATA: TDateField;
    Query1PED_CLIENTE: TStringField;
    Query1PED_VRFINAL: TCurrencyField;
    dbLkpCliente: TDBLookupComboBox;
    btnFiltrar: TSpeedButton;
    btnFechar: TSpeedButton;
    GroupBox1: TGroupBox;
    btnSomar: TSpeedButton;
    btnLancar: TSpeedButton;
    Panel1: TPanel;
    lblPedido1: TLabel;
    lblPedido2: TLabel;
    lblPedido3: TLabel;
    lblPedido4: TLabel;
    lblPedido5: TLabel;
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaPedidosparaGerarBoletos: TFrmConsultaPedidosparaGerarBoletos;

implementation

uses Base, UPedidos;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

procedure TFrmConsultaPedidosparaGerarBoletos.btnFiltrarClick(
  Sender: TObject);
begin
    Query1.Close;
    Query1.ParamByName('VARCLIENTE').AsString:= dbLkpCliente.Text;
    Query1.Prepare;
    Query1.Open;
end;

procedure TFrmConsultaPedidosparaGerarBoletos.btnFecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFrmConsultaPedidosparaGerarBoletos.DBGrid1DblClick(
  Sender: TObject);

begin
    if edVr1.Text = '' then
    begin
    edVr1.Text:= DBGrid1.Columns.Items[3].Field.Text;
    lblPedido1.Visible:= true;
    lblPedido1.Caption:= DBGrid1.Columns.Items[0].Field.Text;
    dmdados.Tbpedidos.Locate('Ped_Numero',DBGrid1.Columns.Items[0].Field.Text, []);
    dmdados.Tbpedidos.Edit;
    dmdados.TbpedidosBoletoGerado.Value:= True;
    dmdados.Tbpedidos.Post;
    end
    else
    if edVr2.Text = '' then
    begin
    edVr2.Text:=DBGrid1.Columns.Items[3].Field.Text;
    lblPedido2.Visible:= True;
    lblPedido2.Caption:= DBGrid1.Columns.Items[0].Field.Text;
    dmdados.Tbpedidos.Locate('Ped_Numero',DBGrid1.Columns.Items[0].Field.Text, []);
    dmdados.Tbpedidos.Edit;
    dmdados.TbpedidosBoletoGerado.Value:= True;
    dmdados.Tbpedidos.post;
    end
    else
    if edVr3.Text = '' then
    begin
    edVr3.Text:=DBGrid1.Columns.Items[3].Field.Text;
    lblPedido3.Visible:= true;
    lblPedido3.Caption:= DBGrid1.Columns.Items[0].Field.Text;
    dmdados.Tbpedidos.Locate('Ped_Numero',DBGrid1.Columns.Items[0].Field.Text, []);
    dmdados.Tbpedidos.Edit;
    dmdados.TbpedidosBoletoGerado.Value:= True;
    dmdados.Tbpedidos.Post;
    end
    else
    if edVr4.Text = '' then
    begin
    edVr4.Text:=DBGrid1.Columns.Items[3].Field.Text;
    lblPedido4.Visible:= true;
    lblPedido4.Caption:= DBGrid1.Columns.Items[0].Field.Text;
    dmdados.Tbpedidos.Locate('Ped_Numero',DBGrid1.Columns.Items[0].Field.Text, []);
    dmdados.Tbpedidos.Edit;
    dmdados.TbpedidosBoletoGerado.Value:= True;
    dmdados.Tbpedidos.Post;
    end
    else
    if edVr5.Text = '' then
    begin
    edVr5.Text:=DBGrid1.Columns.Items[3].Field.Text;
    lblPedido5.Visible:= true;
    lblPedido5.Caption:= DBGrid1.Columns.Items[0].Field.Text;
    dmdados.Tbpedidos.Locate('Ped_Numero',DBGrid1.Columns.Items[0].Field.Text, []);
    dmdados.Tbpedidos.Edit;
    dmdados.TbpedidosBoletoGerado.Value:= True;
    dmdados.Tbpedidos.Post;
    end;

end;

procedure TFrmConsultaPedidosparaGerarBoletos.btnSomarClick(
  Sender: TObject);
var
vr1, vr2, vr3, vr4, vr5: Double;
//vr1: Double;
begin
if edVr1.Text <> '' then
vr1:= StrToFloat(edVr1.Text);

if edVr2.Text <> '' then
vr2:= StrToFloat(edVr2.Text);

if edVr3.Text <> '' then
vr3:= StrToFloat(edVr3.Text);

if edVr4.Text <> '' then
vr4:= StrToFloat(edVr4.Text);

if edVr5.Text <> '' then
vr5:= StrToFloat(edVr5.Text);

//if (vr1 > 0) or (vr2 > 0) or (vr3 > 0) or (vr4 > 0) or (vr5 > 0) then
edTotalPedidos.Text:= FloatToStr(vr1+vr2+vr3+vr4+vr5);
end;

procedure TFrmConsultaPedidosparaGerarBoletos.FormShow(Sender: TObject);
begin
if edVr1.Text = '' then edVr1.Text:= '0';
if edVr2.Text = '' then edVr2.Text:= '0';
if edVr3.Text = '' then edVr3.Text:= '0';
if edVr4.Text = '' then edVr4.Text:= '0';
if edVr5.Text = '' then edVr5.Text:= '0';
end;

procedure TFrmConsultaPedidosparaGerarBoletos.btnLancarClick(
  Sender: TObject);
var
it: Integer;
begin
    dmdados.TPendenciasBoleto.IndexName:= 'ICodigo';
    dmdados.TPendenciasBoleto.First;
    dmdados.TPendenciasBoleto.Last;
    if dmdados.TPendenciasBoleto['Codigo']<> null then
    it := dmdados.TPendenciasBoleto['Codigo']
       else
       it:= 0;
       dmdados.TPendenciasBoleto.Insert;
       dmdados.TPendenciasBoleto.Edit;
       dmdados.TPendenciasBoleto['Codigo'] := it + 1;
//       dmdados.TPendenciasBoletoNumPed.AsString:= DBEdit1.Text;
       dmdados.TPendenciasBoletoDataPed.AsString:= DateToStr(now);
       dmdados.TPendenciasBoletoCliente.AsString:= dbLkpCliente.Text;
       dmdados.TPendenciasBoletoFormaPgto.AsString:= 'BOLETO';

       if lblPedido1.Caption <> '' then
       dmdados.TPendenciasBoletoNumPed.AsString:= lblPedido1.Caption;
       if lblPedido2.Caption <> '' then
       dmdados.TPendenciasBoletoNumPed2.AsString:= lblPedido2.Caption;
       if lblPedido3.Caption <> '' then
       dmdados.TPendenciasBoletoNumPed3.AsString:= lblPedido3.Caption;
       if lblPedido4.Caption <> '' then
       dmdados.TPendenciasBoletoNumPed4.AsString:= lblPedido4.Caption;
       if lblPedido5.Caption <> '' then
       dmdados.TPendenciasBoletoNumPed5.AsString:= lblPedido5.Caption;
       
       edTotalPedidos.Text:= FloatToStr(StringToFloat(edTotalPedidos.Text));
       dmdados.TPendenciasBoletoVrTotPed.AsString:= edTotalPedidos.Text;
       dmdados.TPendenciasBoletoVr1.AsString:= edTotalPedidos.Text;
       close;
end;

end.
