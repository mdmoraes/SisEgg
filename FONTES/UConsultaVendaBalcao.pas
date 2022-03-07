unit UConsultaVendaBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, DB, DBTables;

type
  TFrmConsultaVendaBalcao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    btnVisualizar: TSpeedButton;
    btnFechar: TSpeedButton;
    Query1: TQuery;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaVendaBalcao: TFrmConsultaVendaBalcao;

implementation

uses URelatorioVendasBalcao;

{$R *.dfm}

procedure TFrmConsultaVendaBalcao.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaVendaBalcao.FormShow(Sender: TObject);
begin
DataI.Date:= Date -30;
DataF.Date:= Date;
end;

procedure TFrmConsultaVendaBalcao.btnVisualizarClick(Sender: TObject);
begin
    Try
    Application.CreateForm(TFrmRelatorioVendasBalcao, FrmRelatorioVendasBalcao);
    Query1.Close;
    Query1.ParamByName('VarDataI').AsDate:=DataI.Date;
    Query1.ParamByName('VarDataF').AsDate:=DataF.Date;
    Query1.Prepare;
    Query1.Open;

    if Query1.RecordCount=0 then
      Begin
       ShowMessage('NENHUMA INFORMAÇÃO ENCONTRADA, PARA ESSE PERÍODO!');
      End;

    FrmRelatorioVendasBalcao.rotulorelatorio.Caption:= 'RELATÓRIO: VENDAS BALCÃO';
    FrmRelatorioVendasBalcao.rotuloperiodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
    FrmRelatorioVendasBalcao.QuickRep1.Preview;
  //  QryRel.Close;
    Finally
    FrmRelatorioVendasBalcao.Free;
    end;

end;

end.
