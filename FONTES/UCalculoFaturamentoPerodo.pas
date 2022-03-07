unit UCalculoFaturamentoPerodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, Buttons;

type
  TFrmCalculoFaturamentoPeriodo = class(TForm)
    dbgrid: TDBGrid;
    Qry1: TQuery;
    ds1: TDataSource;
    Qry1ped_data: TDateField;
    Qry1it_quantidade: TFloatField;
    Qry1it_ref: TStringField;
    Qry1it_valor: TCurrencyField;
    Qry1it_unid: TStringField;
    Qry1TotalLucro: TFloatField;
    Qry1Lucro: TFloatField;
    btnExexQry: TSpeedButton;
    grp1: TGroupBox;
    lbl1: TLabel;
    dtpDataI: TDateTimePicker;
    dtpDataF: TDateTimePicker;
    btnCalcula: TSpeedButton;
    btnFechar: TSpeedButton;
    Qry1it_lucro: TCurrencyField;
    Qry1vrLucro: TFloatField;
    procedure btnExexQryClick(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculoFaturamentoPeriodo: TFrmCalculoFaturamentoPeriodo;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCalculoFaturamentoPeriodo.btnExexQryClick(Sender: TObject);
begin
    Qry1.Close;
    Qry1.ParamByName('VarDataI').AsDate:=dtpDataI.Date;
    Qry1.ParamByName('VarDataF').AsDate:=dtpDataF.Date;
    Qry1.Prepare;
    Qry1.Open;

end;

procedure TFrmCalculoFaturamentoPeriodo.btnCalculaClick(Sender: TObject);
begin
    Qry1.First;
    while Qry1.Eof do
    begin
    dmdados.Tbprodutos.Locate('Pro_Ref' , dbgrid.Columns.Items[0].Field.text, []);
    dbgrid.Columns.Items[4].Field.text:= dmdados.TbprodutosPro_PrecoMedio.AsString;
//    Qry1vrLucro.Value:= dmdados.TbprodutosPro_PrecoMedio.Value;
    Qry1.Next;
    end;
end;

procedure TFrmCalculoFaturamentoPeriodo.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmCalculoFaturamentoPeriodo.FormShow(Sender: TObject);
begin
dtpDataI.Date:= date - 10;
dtpDataF.Date:= date;
end;

end.
