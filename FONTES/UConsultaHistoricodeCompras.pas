unit UConsultaHistoricodeCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, DB,
  DBTables, Gauges;

type
  TFrmConsultadeHistoricodeCompras = class(TForm)
    grp1: TGroupBox;
    dtpFinal: TDateTimePicker;
    btnOK: TSpeedButton;
    lbl3: TLabel;
    Painel1: TPanel;
    dbgrid: TDBGrid;
    Query1: TQuery;
    ds1: TDataSource;
    btn1: TSpeedButton;
    dtpUDCompra: TDateTimePicker;
    lbl2: TLabel;
    Query1cli_codigo: TIntegerField;
    Query1cli_cliente: TStringField;
    Query1cli_ultimacompra: TDateField;
    lblTotal: TLabel;
    btnAtualizar: TSpeedButton;
    Query2: TQuery;
    Gauge1: TGauge;
    Query2DATA: TDateField;
    Query2PED_CLIENTE: TStringField;
    procedure btnOKClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure dbgridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultadeHistoricodeCompras: TFrmConsultadeHistoricodeCompras;

implementation

uses Base, UCadClie;

{$R *.dfm}

procedure TFrmConsultadeHistoricodeCompras.btnOKClick(Sender: TObject);
//var
//  numdias: integer;
begin
//numdias:= StrToInt(edDias.Text);
//dtpFinal.Date:= StrToDate(edDias.Text);
//dtpFinal.Date:= dtpFinal.Date-numdias;
dtpFinal.Date := dtpUDCompra.Date;

dtpFinal.Format := 'MM/dd/yyyy';

//    //////
//    if edDias.Text = '' then
//    Begin
//    ShowMessage('ESCOLHA UM Nº DE DIAS PRIMEIRO!!!');
//    abort;
//    end
//    else
    Query1.Close;
    Query1.ParamByName('VarData').AsDate:= dtpFinal.Date;
//    Query1.ParamByName('VarVendedor').AsString:= Edit1.Text+'%';
    Query1.Prepare;
    Query1.Open;

    lblTotal.Caption:= 'Total de: '+ IntToStr(Query1.RecordCount);
 //   End;
    if Query1.RecordCount=0 then
      Begin
       ShowMessage('Nenhuma Informação foi Encontrada neste período!');
      End;
end;

procedure TFrmConsultadeHistoricodeCompras.btn1Click(Sender: TObject);
begin
close;
end;

procedure TFrmConsultadeHistoricodeCompras.FormShow(Sender: TObject);
begin
dtpFinal.Date:= date;
dtpUDCompra.Date:= date;
end;

procedure TFrmConsultadeHistoricodeCompras.btnAtualizarClick(
  Sender: TObject);
begin
//    Query2.Close;
//    Query2.Open;


    Gauge1.Progress:=0;
    Gauge1.MaxValue:= Query2.RecordCount;
    Query2.First;
    while not Query2.Eof do
    begin
    dmdados.TbClientes.Locate('Cli_Cliente', Query2.fieldbyname('PED_CLIENTE').AsString, []);
    dmdados.TbClientes.Edit;
    dmdados.TbClientesCli_UltimaCompra.Value:=
    Query2.fieldbyname('DATA').Value;
    dmdados.TbClientes.Post;
    Query2.Next;
    Gauge1.Progress:=Gauge1.Progress+1;
    end;
  ShowMessage('Processo Atualizado com Sucesso!');
end;

procedure TFrmConsultadeHistoricodeCompras.dbgridDblClick(Sender: TObject);
begin
  dmdados.TbClientes.Locate('Cli_Codigo',dbgrid.Columns.Items[0].Field.text, []);
      try
      Application.CreateForm(TFrmCadClie, FrmCadClie);
      FrmCadClie.ShowModal;
      finally
      FrmCadClie.Free;
      end;
end;

end.
