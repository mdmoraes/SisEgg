unit UQrLabelCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
    TQRLabelFormCliente = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    MasterTableCliente: TTable;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRLabelFormCliente: TQRLabelFormCliente;

implementation

uses Base;

{$R *.DFM}

end.
