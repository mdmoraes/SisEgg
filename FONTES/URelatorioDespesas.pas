unit URelatorioDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, DBTables, Buttons;

type
  TFrmRelatorioDespesas = class(TForm)
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btnImprimir: TSpeedButton;
    QryDespesas: TQuery;
    QryDespesasCod_Desp: TIntegerField;
    QryDespesasTipo_Desp: TStringField;
    QryDespesasValor_Desp: TCurrencyField;
    QryDespesasData_Desp: TDateField;
    QryDespesasObs: TStringField;
    btnFechar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioDespesas: TFrmRelatorioDespesas;

implementation

{$R *.dfm}

end.
