unit UCalculoComissoVendedoresTodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables;

type
  TFrmCalculoComissaoVendedoresTodos = class(TForm)
    GroupBox1: TGroupBox;
    Data1: TDateTimePicker;
    Data2: TDateTimePicker;
    Label1: TLabel;
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
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Soma;
    procedure Soma1;
  end;

var
  FrmCalculoComissaoVendedoresTodos: TFrmCalculoComissaoVendedoresTodos;
  Soma:Double;
  Soma1:Double;

implementation

uses UProcuraVendedorComissao, Base, URelComissaoTodos;

{$R *.dfm}

procedure TFrmCalculoComissaoVendedoresTodos.Soma;  //executa a soma de ENTRADA DE DÍZIMOS na Grid ...M...
var
Soma: Double;
//Soma
begin
  QryComissao.DisableControls;
  QryComissao.First;
  soma := 0;
  While not QryComissao.Eof do begin
    soma:=soma+QryComissao.Fieldbyname('PED_VRFINAL').asFloat;
    QryComissao.Next;
  End;
  edTotPedido.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryComissao.EnableControls;
end;

procedure TFrmCalculoComissaoVendedoresTodos.Soma1;
var
Soma1: Double;
//Soma
begin
  QryComissao.DisableControls;
  QryComissao.First;
  soma1 := 0;
  While not QryComissao.Eof do begin
    soma1:=soma1+QryComissao.Fieldbyname('VRCOMISSAO').asFloat;
    QryComissao.Next;
  End;
  edTotcomiss.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma1);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  QryComissao.EnableControls;
end;


procedure TFrmCalculoComissaoVendedoresTodos.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCalculoComissaoVendedoresTodos.rdPorVendedorClick(
  Sender: TObject);
begin
//Edit1.Text := '';
//Edit1.Visible:= True;
//btnProcurar.Visible:= True;
end;

procedure TFrmCalculoComissaoVendedoresTodos.rdTodosClick(Sender: TObject);
begin
//Edit1.Visible:= False;
//btnProcurar.Visible:= False;
end;

procedure TFrmCalculoComissaoVendedoresTodos.btnProcurarClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmProcuraVendedorComissao, FrmProcuraVendedorComissao);
    FrmProcuraVendedorComissao.ShowModal;
    Finally;
    FrmProcuraVendedorComissao.Free;
    end;
end;

procedure TFrmCalculoComissaoVendedoresTodos.btnAplicarClick(Sender: TObject);
//var
//Inicio, Final:String;
begin
//    Inicio:= DataI.
//    Inicio := DateToStr(DataInicial.Date);
//    Final := DateToStr(DataFinal.Date);
//    IF rdTodos.Checked = True then
//    begin
    QryComissao.Close;
    QryComissao.ParamByName('VarDataI').AsDate:=Data1.Date;
    QryComissao.ParamByName('VarDataF').AsDate:=Data2.Date;
//    QryComissao.ParamByName('VarVendedor').AsString:= Edit1.Text+'%';
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




procedure TFrmCalculoComissaoVendedoresTodos.btnImprimirClick(
  Sender: TObject);
begin
    Try
    Application.CreateForm(TFrmRelatorioComissaoTodos, FrmRelatorioComissaoTodos);
    FrmRelatorioComissaoTodos.lblTitulo.Caption:= 'RELATÓRIO DE COMISSÕES - TODOS VENDEDORES';
    FrmRelatorioComissaoTodos.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(Data1.Date)+ '  À  ' + DateToStr(Data2.Date);
    FrmRelatorioComissaoTodos.lblTotPedidosrodape.Caption:= edTotPedido.Text;
    FrmRelatorioComissaoTodos.lblTotComrodape.Caption:= edTotcomiss.Text;
    FrmRelatorioComissaoTodos.QuickRep1.Preview;
    Finally;
    FrmRelatorioComissaoTodos.Free;
    end;
end;
procedure TFrmCalculoComissaoVendedoresTodos.FormShow(Sender: TObject);
begin
Data1.Date:=Date-30;
Data2.Date:=Date;
end;

end.
