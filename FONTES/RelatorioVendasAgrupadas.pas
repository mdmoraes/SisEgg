{ :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  :: QuickReport 3.0 for Delphi 3.0/4.0/5.0                  ::
  ::                                                         ::
  :: Simple report for grouping data                         ::
  ::                                                         ::
  :: Copyright (c) 1995-1999 QuSoft AS                       ::
  :: All Rights Reserved                                     ::
  ::                                                         ::
  :: web: http://www.qusoft.com  fax: +47 22 41 74 91        ::
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }
unit RelatorioVendasAgrupadas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, QuickRpt, Qrctrls;

type
  TfrmGrouping = class(TForm)
    QuickRep1: TQuickRep;
    MasterQry: TQuery;
    DetailBand1: TQRBand;
    qrdbped_numero: TQRDBText;
    QRGroup1: TQRGroup;
    qrdbped_cliente: TQRDBText;
    DataSource1: TDataSource;
    QRSubDetail1: TQRSubDetail;
    qrdbit_ref: TQRDBText;
    qrdbit_descricao: TQRDBText;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    SummaryBand1: TQRBand;
    QRExpr3: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qryMasterQryped_numero: TIntegerField;
    tblMasterQryped_cliente: TStringField;
    tblMasterQryit_ref: TStringField;
    tblMasterQryit_descricao: TStringField;
    MasterQrytotal: TCurrencyField;
    qrdbit_descricao1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrouping: TfrmGrouping;

implementation

{$R *.DFM}

end.
