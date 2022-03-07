unit URelComissaoTodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelatorioComissaoTodos = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    lblTotaldosPedidos: TQRLabel;
    lblTotPedidosrodape: TQRLabel;
    lblRotulototcom: TQRLabel;
    lblTotComrodape: TQRLabel;
    QRSysData2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioComissaoTodos: TFrmRelatorioComissaoTodos;

implementation

uses UCalculoComissoVendedoresTodos;

{$R *.dfm}

end.
