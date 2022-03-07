unit URelatorioVendasExternas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmRelatorioVendasExternas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    rotulorelatorio: TQRLabel;
    rotuloclienteoutodos: TQRLabel;
    QRSysData1: TQRSysData;
    qrdbPED_CLIENTE: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    qrdbIT_DESCRICAO: TQRDBText;
    rotuloperiodo: TQRLabel;
    qrdbIT_UN_GERAL: TQRDBText;
    QRLabel1: TQRLabel;
    qrdbVALOR: TQRDBText;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    lblTotalUN: TQRLabel;
    lblTotalCX: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioVendasExternas: TFrmRelatorioVendasExternas;

implementation

//uses UConsultaVendasAcumuladas;

{$R *.dfm}

end.
