unit RelAgrupamentoContasReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls;

type
  TFrmAgrupamentoContasReceber = class(TForm)
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgrupamentoContasReceber: TFrmAgrupamentoContasReceber;

implementation

uses UFrmRelatorioContasReceber, Base;

{$R *.DFM}

end.
