unit URelComprasEfetuadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFrmRelComprasEfetuadas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lblrotulorelatorio: TQRLabel;
    lblrotuloperiodo: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    qrdbtxtUNIDADE: TQRDBText;
    lblTotalUN: TQRLabel;
    lblTotalCX: TQRLabel;
    lblVrTotal: TQRLabel;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    qrdbUNIDADE: TQRDBText;
    qrdbUNIDADE1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelComprasEfetuadas: TFrmRelComprasEfetuadas;

implementation

uses Base, UConsultadeVendas, UConsultadeComprasEfetuadas;

{$R *.dfm}

end.
