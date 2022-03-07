unit URelatorioVendasAgrupadasNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, JvCursor, qrpctrls;

type
  TFrmRelatorioVendasAgrupadasNovo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioVendasAgrupadasNovo: TFrmRelatorioVendasAgrupadasNovo;

implementation

{$R *.dfm}

end.
