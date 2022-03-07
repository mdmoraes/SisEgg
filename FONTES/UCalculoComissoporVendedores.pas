unit UCalculoComissoporVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables;

type
  TFrmCalculoComissaoporVendedores = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Data1: TDateTimePicker;
    Data2: TDateTimePicker;
    Label1: TLabel;
    btnProcurar: TSpeedButton;
    btnAplicar: TSpeedButton;
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edTotPedido: TEdit;
    edTotcomiss: TEdit;
    btnImprimir: TSpeedButton;
    QryComissao: TQuery;
    dsQryComissao: TDataSource;
    QryComissaoPED_NUMERO: TIntegerField;
    QryComissaoPED_DATA: TDateField;
    QryComissaoPED_CLIENTE: TStringField;
    QryComissaoPED_VRFINAL: TCurrencyField;
    QryComissaoPED_COMISSAO: TIntegerField;
    QryComissaoPED_VENDEDOR: TStringField;
    QryComissaoVRCOMISSAO: TCurrencyField;
    procedure btnFecharClick(Sender: TObject);
    procedure rdPorVendedorClick(Sender: TObject);
    procedure rdTodosClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Data1CloseUp(Sender: TObject);
    procedure Data2CloseUp(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Soma;
    procedure Soma1;

  end;

var
  FrmCalculoComissaoporVendedores: TFrmCalculoComissaoporVendedores;
  Soma:Double;
  Soma1:Double;
implementation

uses UProcuraVendedorComissao, Base, URelComissaoporVendedor;

{$R *.dfm}

procedure TFrmCalculoComissaoporVendedores.Soma;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
Soma: Double;
//Soma
begin
  QryComissao.DisableControls;
  QryComissao.First;
  soma := 0;
  While not QryComissao.Eof do
  begin
    soma:=soma+QryComissao.Fieldbyname('PED_VRFINAL').asFloat;
    QryComissao.Next;
  End;
  edTotPedido.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryComissao.EnableControls;
end;

procedure TFrmCalculoComissaoporVendedores.Soma1;
var
Soma1: Double;
begin
  QryComissao.DisableControls;
  QryComissao.First;
  soma1 := 0;
  While not QryComissao.Eof do begin
    soma1:=soma1+QryComissao.Fieldbyname('VRCOMISSAO').asFloat;
//    soma:=soma+QryComissao.FieldValues('PED_VRFINAL').
    QryComissao.Next;
  End;
  edTotcomiss.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma1);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryComissao.EnableControls;
end;


procedure TFrmCalculoComissaoporVendedores.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCalculoComissaoporVendedores.rdPorVendedorClick(
  Sender: TObject);
begin
Edit1.Text := '';
Edit1.Visible:= True;
btnProcurar.Visible:= True;
end;

procedure TFrmCalculoComissaoporVendedores.rdTodosClick(Sender: TObject);
begin
Edit1.Visible:= False;
btnProcurar.Visible:= False;
end;

procedure TFrmCalculoComissaoporVendedores.btnProcurarClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmProcuraVendedorComissao, FrmProcuraVendedorComissao);
    FrmProcuraVendedorComissao.ShowModal;
    Finally;
    FrmProcuraVendedorComissao.Free;
    end;
end;

procedure TFrmCalculoComissaoporVendedores.btnAplicarClick(Sender: TObject);
//var
//Inicio, Final:String;
begin
    if Edit1.Text = '' then
    Begin
    ShowMessage('ESCOLHA UM VENDEDOR PRIMEIRO!!!');
    abort;
    end
    else
    QryComissao.Close;
    QryComissao.ParamByName('VarDataI').AsDate:=Data1.Date;
    QryComissao.ParamByName('VarDataF').AsDate:=Data2.Date;
    QryComissao.ParamByName('VarVendedor').AsString:= Edit1.Text+'%';
    QryComissao.Prepare;
    QryComissao.Open;
 //   End;
    if QryComissao.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada neste período!');
      End;
    Soma;
    Soma1;
end;

{With QryPedidos Do
  Begin
   Close;
   ParamByName('VarCliente').AsString:=Edit1.Text+'%';
   ParamByName('VarDataI').AsDate:=Data1.Date;
   ParamByName('VarDataF').AsDate:=Data2.Date;
   Prepare;
   Open;
  End;
if QryPedidos.RecordCount=0 then
  Begin
   ShowMessage('Nenhum Pedido foi Encontrado com esses Dados!');
  End;}




procedure TFrmCalculoComissaoporVendedores.Button1Click(Sender: TObject);
begin
//Soma;
end;

procedure TFrmCalculoComissaoporVendedores.btnImprimirClick(
  Sender: TObject);
begin
    Try
    Application.CreateForm(TFrmRelatorioComissaoporVendedor, FrmRelatorioComissaoporVendedor);
    FrmRelatorioComissaoporVendedor.lblTitulo.Caption:= 'RELATÓRIO DE COMISSÕES - POR VENDEDORES';
    FrmRelatorioComissaoporVendedor.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(Data1.Date)+ '  À  ' + DateToStr(Data2.Date);
    FrmRelatorioComissaoporVendedor.lblTotPedidosrodape.Caption:= edTotPedido.Text;
    FrmRelatorioComissaoporVendedor.lblTotComrodape.Caption:= edTotcomiss.Text;
    FrmRelatorioComissaoporVendedor.lblNomeVendedor.Caption:= Edit1.Text;
    FrmRelatorioComissaoporVendedor.QuickRep1.Preview;
    Finally;
    FrmRelatorioComissaoporVendedor.Free;
    end;
end;

procedure TFrmCalculoComissaoporVendedores.FormShow(Sender: TObject);
begin
Data1.Date:=Date-30;
Data2.Date:=Date;
end;

procedure TFrmCalculoComissaoporVendedores.Data1CloseUp(Sender: TObject);
begin
if Data1.date>Data2.date then
  Begin
    ShowMessage('A DATA INICIAL NÃO PODE SER MAIOR QUE A DATA FINAL!');
    Data1.date:=Data2.date;
  end;
end;

procedure TFrmCalculoComissaoporVendedores.Data2CloseUp(Sender: TObject);
begin
if Data2.date<Data1.date then
     Begin
     ShowMessage('A DATA FINAL NÃO PODE SER MENOR QUE A DATA INICIAL!');
     Data1.date:=Data2.date;
     end;
end;

procedure TFrmCalculoComissaoporVendedores.DBGrid1CellClick(
  Column: TColumn);
begin
//showmessage('DADOS NÃO PODEM SER ALTERADOS!');
end;

end.
