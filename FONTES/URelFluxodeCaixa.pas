unit URelFluxodeCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelFluxodeCaixa = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    lblRotuloRel: TQRLabel;
    lblPeriodo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    lblTotEntrada: TQRLabel;
    QRLabel7: TQRLabel;
    lblTotSaida: TQRLabel;
    QRLabel9: TQRLabel;
    lblSaldo: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFluxodeCaixa: TFrmRelFluxodeCaixa;

implementation

uses Base, UFluxodeCaixa;

{$R *.dfm}

end.
