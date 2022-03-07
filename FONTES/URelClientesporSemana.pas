unit URelClientesporSemana;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmRelClientesporSemana = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lblRotuloRel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    lblTotalClientes: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lblSegunda: TQRDBText;
    lblTerca: TQRDBText;
    lblQuarta: TQRDBText;
    lblQuinta: TQRDBText;
    lblSabado: TQRDBText;
    lblSexta: TQRDBText;
    QRShape2: TQRShape;
    lblDomingo: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelClientesporSemana: TFrmRelClientesporSemana;

implementation

uses Base, URelacaoClientesporDiaSemana;

{$R *.dfm}

end.
