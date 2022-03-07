unit URelatoriodeDespesas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, DBTables, ExtCtrls;

type
  TFrmRelatoriodeDespesas = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QryDespesas: TQuery;
    QryDespesasCod_Desp: TIntegerField;
    QryDespesasTipo_Desp: TStringField;
    QryDespesasValor_Desp: TCurrencyField;
    QryDespesasData_Desp: TDateField;
    QryDespesasObs: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    LblRotulo: TQRLabel;
    QRSysData1: TQRSysData;
    Image1: TQRImage;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatoriodeDespesas: TFrmRelatoriodeDespesas;

implementation

//uses UDespesas, UDMUsuario;

{$R *.dfm}

end.
