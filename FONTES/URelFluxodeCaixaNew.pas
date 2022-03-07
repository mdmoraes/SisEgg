unit URelFluxodeCaixaNew;

interface
                           
uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables, QRExport;

type                    
    TQrFluxoCaixa = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QrSubDetailFooter: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrdbtxtPED_CLIENTE: TQRDBText;
    qrdbtxtTOTAL: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    lblPeriodo: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    lblTotEntrada: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    qrdbtxtFORNECEDOR: TQRDBText;
    qrdbtxtTOTAL1: TQRDBText;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRWMFFilter1: TQRWMFFilter;
    QRBand3: TQRBand;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    qrdbtxtCLIENTE: TQRDBText;
    qrdbtxtTOTAL2: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    lblTotContasPagar: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    GroupFooterBand2: TQRBand;
    QRLabel11: TQRLabel;
    lblContasReceber: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    lblSaldo: TQRLabel;
    QRBand1: TQRBand;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    lbl3: TQRLabel;
    QRShape5: TQRShape;
    QRSubDetail4: TQRSubDetail;
    qrdbCLIENTE: TQRDBText;
    qrdbTOTAL: TQRDBText;
    QRBand2: TQRBand;
    lbl4: TQRLabel;
    lblTotalPerdas: TQRLabel;
    lbl6: TQRLabel;
    qrdbREF: TQRDBText;
  private

  public

  end;

var
  QrFluxoCaixa: TQrFluxoCaixa;

implementation

        uses UFluxodeCaixa;

{$R *.DFM}

end.
