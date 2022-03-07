unit URelComissaoporVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelatorioComissaoporVendedor = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lblTitulo: TQRLabel;
    lblPeriodo: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    lblTotaldosPedidos: TQRLabel;
    lblTotPedidosrodape: TQRLabel;
    lblRotulototcom: TQRLabel;
    lblTotComrodape: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    lblNomeVendedor: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioComissaoporVendedor: TFrmRelatorioComissaoporVendedor;

implementation

uses UCalculoComissoporVendedores;

{$R *.dfm}

end.
