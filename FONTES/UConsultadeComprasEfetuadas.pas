unit UConsultadeComprasEfetuadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  DBCtrls;

type
  TFrmConsultaComprasEfetuadas = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    DataI: TDateTimePicker;
    DataF: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    btnFiltrar: TSpeedButton;
    btnFechar: TSpeedButton;
    Label3: TLabel;
    btnRelatorio: TSpeedButton;
    comboTipo: TComboBox;
    Query1VLRUNIT: TFloatField;
    Query1DATA_ENTRADA: TDateField;
    tbQuery1FORNECEDOR: TStringField;
    tbQuery1REFERENCIA: TStringField;
    tbQuery1DESCRICAO: TStringField;
    tbQuery1UNIDADE: TStringField;
    Query1QTD: TFloatField;
    qrySoma: TQuery;
    grp2: TGroupBox;
    lbltotqtd: TLabel;
    lblTotalValor: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lblTotalUN: TLabel;
    tblQuery1TOTALITEM: TFloatField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaComprasEfetuadas: TFrmConsultaComprasEfetuadas;
  somaUN, somaCX, somaValor : Double;


implementation

uses Base, URelComprasEfetuadas;

{$R *.dfm}

procedure TFrmConsultaComprasEfetuadas.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaComprasEfetuadas.btnFiltrarClick(Sender: TObject);
//var
//  somaUN, somaCX : Double;
begin
    somaCX := 0;
    somaUN := 0;
    somaValor := 0;

    Query1.Close;
    Query1.ParamByName('VarDataI').AsDate:=DataI.Date;
    Query1.ParamByName('VarDataF').AsDate:=DataF.Date;
    Query1.ParamByName('VarRef').AsString:=comboTipo.Text;
    Query1.Prepare;
    Query1.Open;

//-----------------------
//    Query1.First;
//    while not Query1.Eof do
//    begin
//    somaUn := somaUn + Query1.fieldbyname('QTD').AsFloat;
//
//    end;

      Query1.First;
      while not Query1.Eof do
      begin

          somaValor := somaValor + Query1.fieldbyname('TOTALITEM').AsFloat;


          if (Query1.FieldByName('UNIDADE').AsString = 'CX') and (Query1.fieldbyname('QTD').AsFloat > 0) then
          begin
          somaCX:= somaCX + Query1.fieldbyname('QTD').AsFloat;
          //Query1.Next;
          end else


          if (Query1.FieldByName('UNIDADE').AsString = 'UN') and (Query1.fieldbyname('QTD').AsFloat > 0) then
          begin
          SomaUN:= SomaUN + Query1.fieldbyname('QTD').AsFloat;
          //Query1.Next;

          end;
      Query1.Next;
      end;

       lbltotqtd.Caption := FormatFloat('#,##0.00' ,somaCX);
       lblTotalUN.Caption := FormatFloat('#,##0.00' ,somaUN);

       lblTotalValor.Caption := 'R$' + ' ' + FormatFloat('#,##0.00', somaValor);


end;

procedure TFrmConsultaComprasEfetuadas.FormShow(Sender: TObject);
begin
DataI.Date:= Date - 10;
DataF.Date:= Date;

     //CARREGA O COMBOBOX COM OS TIPOS DE OVOS
     comboTipo.Clear;
     comboTipo.Items.Add('%');
     dmdados.Tbprodutos.first;
     while not dmdados.Tbprodutos.eof do
     begin
        comboTipo.Items.Add(dmdados.TbprodutosPro_Ref.AsString);
        dmdados.Tbprodutos.next;
     end;
     comboTipo.itemindex:=0;
end;

procedure TFrmConsultaComprasEfetuadas.FormActivate(Sender: TObject);
begin
(*  //CARREGA O COMBOBOX COM OS TIPOS DE OVOS
  while not dmdados.Tbprodutos.Eof do
  begin
  comboTipo.Items.Add(dmdados.tbprodutos.fieldbyname('Pro_Ref').AsString);
  dmdados.Tbprodutos.Next;
  end;  *)
end;

procedure TFrmConsultaComprasEfetuadas.btnRelatorioClick(Sender: TObject);
begin
    TRY
    application.CreateForm(TFrmRelComprasEfetuadas, FrmRelComprasEfetuadas);
    FrmRelComprasEfetuadas.lblrotulorelatorio.Caption:=
    'RELATÓRIO: MOVIMENTAÇÃO DE COMPRAS';

    FrmRelComprasEfetuadas.lblrotuloperiodo.Caption:=
    'NO PERÍODO DE:  ' + DateToStr(DataI.Date)+ '  À  ' + DateToStr(DataF.Date);

    FrmRelComprasEfetuadas.lblTotalUN.Caption:= 'TOTAL UN: ' + lblTotalUN.Caption;

    FrmRelComprasEfetuadas.lblTotalCX.Caption:= 'TOTAL CX: ' + lbltotqtd.Caption;

    FrmRelComprasEfetuadas.lblVrTotal.Caption:= 'TOTAL GERAL: ' + lblTotalValor.Caption;


    FrmRelComprasEfetuadas.QuickRep1.Preview;
    FINALLY
    FrmRelComprasEfetuadas.Free;
    end;
end;

procedure TFrmConsultaComprasEfetuadas.Query1CalcFields(DataSet: TDataSet);
begin

//DEU MÉRDA.....
//Query1.Fields[TotalRef].AsFloat := (Query1.Fields['Qtd'].AsInteger * Query1.Fields['VLRUNIT'].AsFloat);
//.('TotalRef').AsFloat:= Query1.para;;
end;

end.
