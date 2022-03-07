unit UGraficos;

interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, TeEngine, TeeProcs, Chart,DBChart, DB, DBTables,
  Buttons, Series;

type
  TFmGraficos = class(TForm)
    DBChart1 : TDBChart;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Table1: TTable;
    Table1Pro_Codigo: TIntegerField;
    Table1Pro_Descricao: TStringField;
    Table1Pro_Unidade: TStringField;
    Table1Pro_QtdeAtual: TFloatField;
    Table1Pro_QtdeCritica: TFloatField;
    Table1Pro_PrecoCusto: TCurrencyField;
    Series1: TBarSeries;
    Table1Pro_Ref: TStringField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmGraficos: TFmGraficos;

implementation

uses Base;

{$R *.DFM}

procedure TFmGraficos.BitBtn1Click(Sender: TObject);
begin
    close;
end;

end.
