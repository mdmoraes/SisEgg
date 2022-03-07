unit URelatorioVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFrmRelatorioVendas = class(TForm)
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
    Query1: TQuery;
    Query1IT_REF: TStringField;
    Query1IT_DESCRICAO: TStringField;
    Query1QTDOVO: TFloatField;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioVendas: TFrmRelatorioVendas;

implementation

uses Base, UConsultadeVendas;

{$R *.dfm}

end.
