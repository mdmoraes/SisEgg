unit UFrmIntervaloRelFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RXCtrls, ComCtrls, ExtCtrls;

type
  TFrmIntervaloRelFaturamento = class(TForm)
    Panel1: TPanel;
    Data1: TDateTimePicker;
    Data2: TDateTimePicker;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    btnCancelar: TBitBtn;
    btnImprimir: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Data1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIntervaloRelFaturamento: TFrmIntervaloRelFaturamento;

implementation

uses URelLucros;

{$R *.dfm}

procedure TFrmIntervaloRelFaturamento.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFrmIntervaloRelFaturamento.btnImprimirClick(Sender: TObject);
begin
     Try
      Application.CreateForm(TFrmRelLucros, FrmRelLucros);
     With  FrmRelLucros do
       Begin
      //   If QryRelFaturamento.RecordCount=0 then
      //   ShowMessage('Não Existe Valores Neste Período Informado!');
         QryRelFaturamento.Close;
         QryRelFaturamento.ParamByName('VarDataI').AsDate:=Data1.Date;
         QryRelFaturamento.ParamByName('VarDataF').AsDate:=Data2.Date;
         QryRelFaturamento.Prepare;
         QryRelFaturamento.Open; //abre a
         FrmRelLucros.lblRotuloPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(Data1.Date)+ '  À  ' + DateToStr(Data2.Date);
         QuickRepRelLucros.Preview;
     //    QryRelFaturamento.Close;
       end;

       If FrmRelLucros.QryRelFaturamento.RecordCount=0 then
       begin
       ShowMessage('Não Existe Valores Neste Período Informado!');
       end;
      Finally
    FrmRelLucros.Free;
end;
end;

procedure TFrmIntervaloRelFaturamento.Data1CloseUp(Sender: TObject);
begin
  if data1.date>data2.date then
  Begin
    ShowMessage('A Data Inicial não Pode ser maior que a Data Final!');
    data1.date:=data2.date;

  end;
end;
end.
