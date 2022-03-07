unit URelLevantamentodeEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFrmRelLevantamentodeEstoque = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    qrdbPRO_REF: TQRDBText;
    qrdbPRO_REF1: TQRDBText;
    qrdbPRO_REF2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    lblRotuloRel: TQRLabel;
    QRSysData3: TQRSysData;
    Query1: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelLevantamentodeEstoque: TFrmRelLevantamentodeEstoque;

implementation

uses Base;

{$R *.dfm}

end.
