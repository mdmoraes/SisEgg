unit URelContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelatorioContasPagar = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    lblrotulorelatorio: TQRLabel;
    lblRotuloFornecedor: TQRLabel;
    lblPeriodo: TQRLabel;
    QRSysData1: TQRSysData;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrdbDATAINCLUSAO: TQRDBText;
    qrdbDATAPARCELA: TQRDBText;
    qrdbDATAPAGTO: TQRDBText;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    qrdbDATAINCLUSAO1: TQRDBText;
    lbl3: TQRLabel;
    qrdbDATAPAGTO1: TQRDBText;
    lbl4: TQRLabel;
    lbl5: TQRLabel;
    lbl6: TQRLabel;
    qrdbVALORPARCELA: TQRDBText;
    qrdbVALORPARCELA1: TQRDBText;
    qrdbVALORPARCELA2: TQRDBText;
    QRShape1: TQRShape;
    lbl7: TQRLabel;
    qrdbNUM_NFPEDIDO: TQRDBText;
    QRGroup1: TQRGroup;
    qrdbFORNECEDOR1: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioContasPagar: TFrmRelatorioContasPagar;

implementation

uses URelatorioContasapagar, Base, URelatorioContasPagar;

{$R *.dfm}

end.
