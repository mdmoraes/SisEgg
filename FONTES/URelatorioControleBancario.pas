unit URelatorioControleBancario;

interface
                           
uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables, QRExport;

type                    
    TQrControleBancario = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QrSubDetailFooter: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    lblPeriodo: TQRLabel;
    QRShape3: TQRShape;
    QRBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    lblTotEntrada: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText28: TQRDBText;
    lblTotSaida: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    lblSaldo: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRWMFFilter1: TQRWMFFilter;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
  private

  public

  end;

var
  QrControleBancario: TQrControleBancario;

implementation

        uses UFluxodeCaixa, Base, UControleBancario;

{$R *.DFM}

end.
