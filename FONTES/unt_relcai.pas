unit unt_relcai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  Tfrmrelcai = class(TForm)
    Qrprelcai: TQuickRep;
    titulo: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape14: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    LBLDATA: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape15: TQRShape;
    qrycai: TQuery;
    qrycaiCAI_CODI: TFloatField;
    qrycaiCAI_DATA: TDateField;
    qrycaiCAI_DC11: TStringField;
    qrycaiCAI_DESC: TStringField;
    qrycaiCAI_VALO: TCurrencyField;
    qrycaiCAI_LANC: TStringField;
    lblsubt: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelcai: Tfrmrelcai;

implementation

{$R *.DFM}

end.
