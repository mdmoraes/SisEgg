unit URelatorioContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Db, DBTables, qrpctrls;


type
  TRelatorioContasReceber = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    lblrotulorelatorio: TQRLabel;
    lblRotuloCliente: TQRLabel;
    lblPeriodo: TQRLabel;
    QRSysData1: TQRSysData;
    lblqrlbl2: TQRLabel;
    lblqrlbl3: TQRLabel;
    lblqrlbl4: TQRLabel;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    lbl3: TQRLabel;
    lbl4: TQRLabel;
    lbl5: TQRLabel;
    lbl6: TQRLabel;
    QRShape1: TQRShape;
    lbl7: TQRLabel;
    Detail: TQRBand;
    qrdbDATAINCLUSAO: TQRDBText;
    qrdbDATAPARCELA: TQRDBText;
    qrdbDATAPAGTO: TQRDBText;
    qrdbDATAINCLUSAO1: TQRDBText;
    qrdbDATAPAGTO1: TQRDBText;
    qrdbVALORPARCELA: TQRDBText;
    qrdbVALORPARCELA1: TQRDBText;
    qrdbVALORPARCELA2: TQRDBText;
    qrdbNUM_NFPEDIDO: TQRDBText;
    lblqrlbl1: TQRLabel;
    GroupFooter: TQRPBand;
    QRGroup1: TQRGroup;
    qrdbFORNECEDOR: TQRDBText;
    QRExpr2: TQRExpr;
    qry1: TQuery;
    tblqry1CLIENTE: TStringField;
    qry1DATAINCLUSAO: TDateField;
    tblqry1TIPOSAIDA: TStringField;
    qry1DATAPARCELA: TDateField;
    tblqry1VALORPARCELA: TFloatField;
    qry1DATAPAGTO: TDateField;
    tblqry1VRJUROS: TFloatField;
    tblqry1VRMORA: TFloatField;
    tblqry1TOTALPARCELA: TFloatField;
    qry1ID_CPG: TIntegerField;
    ds1: TDataSource;
    Tbqry1NUM_NFPEDIDO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatorioContasReceber: TRelatorioContasReceber;

implementation

uses Base, UFrmRelatorioContasReceber, UContasaReceberNew;

{$R *.dfm}

end.
