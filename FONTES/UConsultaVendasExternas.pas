unit UConsultaVendasExternas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DB, DBTables, JvExStdCtrls, JvEdit,
  JvDBSearchEdit;

type
  TFrmConsultaVendasExternas = class(TForm)
    GroupBox1: TGroupBox;
    DataI: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DataF: TDateTimePicker;
    Label3: TLabel;
    btnVisualizar: TSpeedButton;
    btnFechar: TSpeedButton;
    btnProcurarCliente: TSpeedButton;
    Query1: TQuery;
    tblQuery1PED_CLIENTE: TStringField;
    tblQuery1IT_REF: TStringField;
    tblQuery1IT_UN_GERAL: TStringField;
    tblQuery1QTD: TFloatField;
    Query1VALOR: TCurrencyField;
    comboTipo: TComboBox;
    tblQuery1IT_DESCRICAO: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnProcurarClienteClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaVendasExternas: TFrmConsultaVendasExternas;
  sComboCliente : string;
  somaUN, somaCX : Double;

implementation

uses Base, URelatorioVendasExternas, UConsultaClientesparaVendasExternas;

{$R *.dfm}

procedure TFrmConsultaVendasExternas.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaVendasExternas.btnProcurarClienteClick(
  Sender: TObject);
begin
      TRY
      application.CreateForm(TFrmConsultaClienteVendasExternas, FrmConsultaClienteVendasExternas);
      FrmConsultaClienteVendasExternas.ShowModal;
      finally
      FrmConsultaClienteVendasExternas.Free;
      end;
end;

procedure TFrmConsultaVendasExternas.btnVisualizarClick(Sender: TObject);
//var
//Kgs: Real;
begin
 if comboTipo.Text = '' then
 begin
 Showmessage('ESCOLHA UM CLIENTE, OU  < TODOS >  PARA PESQUISAR!');
 abort;
 end;

 if comboTipo.Text = ' <TODOS> ' then
 begin
   sComboCliente := '%'
 end
 else
 sComboCliente := comboTipo.Text;


  somaCX := 0;
  somaUN := 0;


 Try
    Application.CreateForm(TFrmRelatorioVendasExternas, FrmRelatorioVendasExternas);
    Query1.Close;
    Query1.ParamByName('VarDataI').AsDate:=DataI.Date;
    Query1.ParamByName('VarDataF').AsDate:=DataF.Date;
    Query1.ParamByName('VARCLIENTE').AsString:= sComboCliente;
    Query1.Prepare;
    Query1.Open;

    if Query1.RecordCount=0 then
    Begin
    ShowMessage('NENHUMA INFORMAÇÃO ENCONTRADA, PARA ESSE PERÍODO!');
    End;

   Query1.First;
    while not Query1.Eof do
    begin

  //      somaValor := somaValor + Query1.fieldbyname('VALOR').AsFloat;


        if (Query1.FieldByName('IT_UN_GERAL').AsString = 'CX') and (Query1.fieldbyname('QTD').AsFloat > 0) then
        begin
        somaCX:= somaCX + Query1.fieldbyname('QTD').AsFloat;
        //Query1.Next;
        end else


        if (Query1.FieldByName('IT_UN_GERAL').AsString = 'UN') and (Query1.fieldbyname('QTD').AsFloat > 0) then
        begin
        SomaUN:= SomaUN + Query1.fieldbyname('QTD').AsFloat;
        //Query1.Next;

        end;
    Query1.Next;
    end;






    FrmRelatorioVendasExternas.rotulorelatorio.Caption:= 'RELATÓRIO: MOVIMENTAÇÃO DE VENDAS POR CLIENTES';

    if comboTipo.Text = ' <TODOS> ' then
    begin
    FrmRelatorioVendasExternas.rotuloclienteoutodos.Caption:= 'TODOS OS CLIENTES NESSE PERÍODO';
    end else
    FrmRelatorioVendasExternas.rotuloclienteoutodos.Caption:= 'CLIENTE:'+ ' ' +comboTipo.Text;
    FrmRelatorioVendasExternas.rotuloperiodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);

    FrmRelatorioVendasExternas.lblTotalUN.Caption := FormatFloat('#,##0.00' ,somaUN);
    FrmRelatorioVendasExternas.lblTotalCX.Caption := FormatFloat('#,##0.00' ,somaCX);

    // lbltotqtd.Caption := FormatFloat('#,##0.00' ,somaCX);
    //   lblTotalUN.Caption := FormatFloat('#,##0.00' ,somaUN);



    FrmRelatorioVendasExternas.QuickRep1.Preview;
  //  QryRel.Close;
    Finally
    FrmRelatorioVendasExternas.Free;
    end;

end;

procedure TFrmConsultaVendasExternas.FormShow(Sender: TObject);
begin
DataI.Date:= Date -30;
DataF.Date:= Date;

  ////CARREGA O COMBOCLIENTE COM OS CLIENTE
     comboTipo.Clear;
     comboTipo.Items.Add(' <TODOS> ');
     DmDados.TbClientes.IndexName := 'ICli_Cliente';
     dmdados.TbClientes.first;
     while not dmdados.TbClientes.eof do
     begin
        comboTipo.Items.Add(dmdados.TbClientesCli_Cliente.AsString);
        dmdados.TbClientes.next;
     end;
     comboTipo.itemindex:=0;



end;

procedure TFrmConsultaVendasExternas.Query1CalcFields(DataSet: TDataSet);
begin
//dmdados.Tbprodutos.Locate('Pro_Ref', Query1.fieldbyname('IT_REF').AsString,[]);
//Query1.FieldByName('Kgs').Value:=
//(Query1.fieldbyname('FARDO').Value * dmdados.TbprodutosPro_Coef.Value);
end;

end.
