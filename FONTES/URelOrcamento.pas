unit URelOrcamento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, DB, DBTables;

type
    TQrOrcamento = class(TQuickRep)
    QRSubDetail1: TQRSubDetail;
    QrSubDetailFooter: TQRBand;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    edValorTotal: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel26: TQRLabel;
    qrdbtxtPed_Forma: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel10: TQRLabel;
    RotuloDoc1: TQRLabel;
    QRShape1: TQRShape;
    QryPedidos: TQuery;
    QryPedidosPed_Numero: TIntegerField;
    QryPedidosPed_data: TDateField;
    QryPedidosPed_Empresa: TStringField;
    QryPedidosIt_Numero: TIntegerField;
    QryPedidosIt_Ref: TStringField;
    QryPedidosIt_Descricao: TStringField;
    QryPedidosIt_Unid: TStringField;
    QryPedidosIt_Valor: TCurrencyField;
    QryPedidosIt_Quantidade: TFloatField;
    QryPedidosValorItem: TCurrencyField;
    RotuloDoc2: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText3: TQRDBText;
    QryPedidosIt_TipoEmb: TStringField;
    QryPedidosIt_VrEmbalagem: TCurrencyField;
    QRShape6: TQRShape;
    qrdbFechado: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qrdbPed_Forma: TQRDBText;
    QRExprMemoParcelas: TQRExprMemo;
    QRShape2: TQRShape;
    qrlblTotCX: TQRLabel;
    qrlblTotBD: TQRLabel;
    qrlblTotDZ: TQRLabel;
    qrlblTotUN: TQRLabel;
    QRShape5: TQRShape;
  private

  public

  end;

var
  QrOrcamento: TQrOrcamento;

implementation

        uses base;  //qr Quick Report

{$R *.DFM}

end.
