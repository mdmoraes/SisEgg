unit URankingdeProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, Buttons;

type
  TFrmRankingdeProdutos = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    lblRotuloRel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lblPeriodo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    Query1: TQuery;
    Query1IT_REF: TStringField;
    Query1IT_DESCRICAO: TStringField;
    Query1QUANT: TFloatField;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRankingdeProdutos: TFrmRankingdeProdutos;

implementation

uses Base, URelLevantamentodeEstoque;

{$R *.dfm}

procedure TFrmRankingdeProdutos.SpeedButton1Click(Sender: TObject);
begin
//FrmRankingdeProdutos.lblRotuloRel.Caption:= 'RANKING DE PRODUTOS';
//quickRep1.Preview;
end;

end.
