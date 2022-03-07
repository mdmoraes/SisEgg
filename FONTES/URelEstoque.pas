unit URelEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFrmRelatorioEstoque = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    lbl1: TQRLabel;
    lbl2: TQRLabel;
    lbl3: TQRLabel;
    lbl4: TQRLabel;
    qrdbREFERENCIA: TQRDBText;
    qrdbDESCRICAO: TQRDBText;
    qrdbUNIDADE: TQRDBText;
    qrdbESTOQUE: TQRDBText;
    lbl5: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    lblTotalUN: TQRLabel;
    lblTotalCX: TQRLabel;
    QRShape1: TQRShape;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure Query2AfterClose(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioEstoque: TFrmRelatorioEstoque;
  somaCX, SomaUN : Integer;
  
  controlacor: string;

implementation

uses Base, UMain;

{$R *.dfm}

procedure TFrmRelatorioEstoque.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  
      //Query2.Free;

end;

procedure TFrmRelatorioEstoque.QuickRep1AfterPreview(Sender: TObject);
begin
//Query2.Active:= Not Query2.Active;
end;

procedure TFrmRelatorioEstoque.Query2AfterClose(DataSet: TDataSet);
begin
//Query2.Active:= Not Query2.Active;
end;

procedure TFrmRelatorioEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Query2.Close;
//Query2.SQL.Clear;
end;

procedure TFrmRelatorioEstoque.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
// controlacor:='N';
end;

procedure TFrmRelatorioEstoque.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  if controlacor='S' then
//  begin
//     QRBand2.Color:=clSilver;
//     qrdbREFERENCIA.Color:=clSilver;
//     qrdbDESCRICAO.Color:=clSilver;
//     qrdbUNIDADE.Color:=clSilver;
//     qrdbESTOQUE.Color:=clSilver;
//
////     QRDBText1.Color:=clSilver;
////     QRDBText2.Color:=clSilver;
////     QRDBText3.Color:=clSilver;
//     controlacor:='N';
//  end else
//   if controlacor='N' then
//    begin
//       QRBand2.Color:=clWhite;
//       qrdbREFERENCIA.Color:=clWhite;
//     qrdbDESCRICAO.Color:=clWhite;
//     qrdbUNIDADE.Color:=clWhite;
//     qrdbESTOQUE.Color:=clWhite;
//
//
//
////       QRDBText1.Color:=clWhite;
////       QRDBText2.Color:=clWhite;
////       QRDBText3.Color:=clWhite;
//       controlacor:='S';
//    end;
end;

end.
