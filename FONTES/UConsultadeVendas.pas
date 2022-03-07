unit UConsultadeVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, DB, DBTables;

type
  TFrmConsultadeVendas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btnRelatorio: TSpeedButton;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultadeVendas: TFrmConsultadeVendas;

implementation

uses URelatorioVendas;

{$R *.dfm}

procedure TFrmConsultadeVendas.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultadeVendas.FormShow(Sender: TObject);
begin
DataI.Date:= Date;
DataF.Date:= Date;
end;

procedure TFrmConsultadeVendas.btnRelatorioClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmRelatorioVendas, FrmRelatorioVendas);
    FrmRelatorioVendas.Query1.Close;
    FrmRelatorioVendas.Query1.ParamByName('VARDATAI').AsDate:=DataI.Date;
    FrmRelatorioVendas.Query1.ParamByName('VARDATAF').AsDate:=DataF.Date;
    FrmRelatorioVendas.Query1.Prepare;
    FrmRelatorioVendas.Query1.Open;

    if FrmRelatorioVendas.Query1.RecordCount=0 then
      Begin
       ShowMessage('NENHUMA VENDA FOI EFETUADA NO PERÍODO INFORMADO!');
      End;

    FrmRelatorioVendas.lblrotulorelatorio.Caption:=
    'RELATÓRIO DE VENDAS POR PERÍODO!';

    FrmRelatorioVendas.lblrotuloperiodo.Caption:=
    'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);

    FrmRelatorioVendas.QuickRep1.Preview;
    FrmRelatorioVendas.Query1.Close;
    finally
    FrmRelatorioVendas.Free;
    end;
end;

end.
