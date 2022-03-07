unit URankingVendasdeProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, Buttons, StdCtrls, Grids, DBGrids, DBTables;

type
  TFrmRankingvendasdeProdutos = class(TForm)
    Query1: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    brnFechar: TSpeedButton;
    Query1IT_REF: TStringField;
    Query1QUANT: TFloatField;
    Query1VALOR: TCurrencyField;
    btnAplicar: TSpeedButton;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    rdQuant: TRadioButton;
    rdLucro: TRadioButton;
    Label3: TLabel;
    Label4: TLabel;
    btnRelatorio: TSpeedButton;
    tblQuery1IT_DESCRICAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure brnFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure rdQuantClick(Sender: TObject);
    procedure rdLucroClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRankingvendasdeProdutos: TFrmRankingvendasdeProdutos;

implementation

uses Base, UProdutos, URelRankingProdutos;

{$R *.dfm}

procedure TFrmRankingvendasdeProdutos.FormShow(Sender: TObject);
begin
DataI.Date:=Date-30;
DataF.Date:=Date;
//rdLucro.Font.Color:= clBlack;
//rdQuant.Font.Color:= clBlack;
end;

procedure TFrmRankingvendasdeProdutos.btnAplicarClick(Sender: TObject);
//var
//ref: string;
begin
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('SELECT B.IT_REF, B.IT_DESCRICAO, SUM(B.IT_QUANTIDADE) AS QUANT, SUM(B.IT_QUANTIDADE*B.IT_VALOR) AS VALOR FROM PEDIDOS A, ITENS B');
Query1.SQL.Add('WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_DATA >=:VARDATAI AND A.PED_DATA <=:VARDATAF');
Query1.SQL.Add('GROUP BY B.IT_REF, B.IT_DESCRICAO');
Query1.SQL.Add('ORDER BY QUANT DESC');
Query1.ParamByName('VARDATAI').AsDate:=DataI.Date;
Query1.ParamByName('VARDATAF').AsDate:=DataF.Date;
Query1.Prepare;
Query1.Open;
end;

procedure TFrmRankingvendasdeProdutos.brnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmRankingvendasdeProdutos.DBGrid1DblClick(Sender: TObject);
begin
//      if DBGrid1.SelectedIndex = 0 then
//      if not dmdados.Tbprodutos.Locate('Pro_Ref', dbgrid1.Columns.Items[0].Field.Text, []) THEN
//      begin
//      showmessage('ITEM NÃO EXISTE MAIS NO ESTOQUE!');
//      EXIT;
//      END
//      ELSE
//          try
//          Application.CreateForm(TFmProdutos, FmProdutos);
//          FmProdutos.ShowModal;
//          finally
//          FmProdutos.Free;
//          end;
end;

procedure TFrmRankingvendasdeProdutos.rdQuantClick(Sender: TObject);
begin
//rdLucro.Font.Color:= clBlack;
//rdQuant.Font.Color:= clRed;

end;

procedure TFrmRankingvendasdeProdutos.rdLucroClick(Sender: TObject);
begin
////rdLucro.Font.Color:= clRed;
////rdQuant.Font.Color:= clBlack;
//Query1.Close;
//Query1.SQL.Clear;
//Query1.SQL.Add('SELECT B.IT_REF, SUM(B.IT_QUANTIDADE) AS QUANT,  SUM(B.IT_QUANTIDADE*B.IT_VALOR) AS VALOR, FROM PEDIDOS A, ITENS B');
//Query1.SQL.Add('WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_DATA >=:VARDATAI AND A.PED_DATA <=:VARDATAF');
//Query1.SQL.Add('GROUP BY B.IT_REF, B.IT_DESCRICAO');
//Query1.SQL.Add('ORDER BY LUCRO DESC');
//Query1.ParamByName('VARDATAI').AsDate:=DataI.Date;
//Query1.ParamByName('VARDATAF').AsDate:=DataF.Date;
//Query1.Prepare;
//Query1.Open;
end;

procedure TFrmRankingvendasdeProdutos.btnRelatorioClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmRelRankingProdutos,FrmRelRankingProdutos);
      FrmRelRankingProdutos.lblTitulo.Caption:= 'RELATÓRIO: RANKING DE PRODUTOS';
      FrmRelRankingProdutos.lblPeriodo.Caption:= 'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);
      FrmRelRankingProdutos.QuickRep1.Preview;
      finally
      FrmRelRankingProdutos.Free;
      end;
end;

end.
