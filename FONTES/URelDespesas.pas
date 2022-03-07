unit URelDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type                    
  TFrmRelDespesas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lblTituloRel: TQRLabel;
    lblPeriodoRel: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    Query1: TQuery;
    Query1DESCRICAO: TStringField;
    Query1DATA_DESP: TDateField;
    Query1VALOR: TCurrencyField;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelDespesas: TFrmRelDespesas;

implementation

uses Base;

{$R *.dfm}

end.
