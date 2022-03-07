unit UCalculoComissoVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables;

type
  TFrmCalculoComissaoVendedores = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculoComissaoVendedores: TFrmCalculoComissaoVendedores;

implementation

uses UProcuraVendedorComissao, Base;

{$R *.dfm}

procedure TFrmCalculoComissaoVendedores.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCalculoComissaoVendedores.rdPorVendedorClick(
  Sender: TObject);
begin
Edit1.Text := '';
Edit1.Visible:= True;
btnProcurar.Visible:= True;
end;

procedure TFrmCalculoComissaoVendedores.rdTodosClick(Sender: TObject);
begin
Edit1.Visible:= False;
btnProcurar.Visible:= False;
end;

procedure TFrmCalculoComissaoVendedores.btnProcurarClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmProcuraVendedorComissao, FrmProcuraVendedorComissao);
    FrmProcuraVendedorComissao.ShowModal;
    Finally;
    FrmProcuraVendedorComissao.Free;
    end;
end;

procedure TFrmCalculoComissaoVendedores.btnAplicarClick(Sender: TObject);
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
    QryComissao.ParamByName('VarVendedor').AsString:= Edit1.Text+'%';
    QryComissao.Prepare;
    QryComissao.Open;
 //   End;
    if QryComissao.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada neste período!');
      End;
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




end.
