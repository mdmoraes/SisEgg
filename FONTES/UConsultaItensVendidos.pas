unit UConsultaItensVendidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, Buttons, DB, DBTables,
  Gauges;

type
  TFrmConsultaItensVendidos = class(TForm)
    lbl1: TLabel;
    dtpDataI: TDateTimePicker;
    lbl2: TLabel;
    dtpDataF: TDateTimePicker;
    lbl3: TLabel;
    comboTipo: TComboBox;
    btnFiltrar: TSpeedButton;
    grp1: TGroupBox;
    dbgrid: TDBGrid;
    btnFechar: TSpeedButton;
    qryUNI: TQuery;
    ds1: TDataSource;
    grp2: TGroupBox;
    lbltotqtd: TLabel;
    lblTotalValor: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lblTotalUN: TLabel;
    tblUNIIT_REF: TStringField;
    tblUNIQTD: TFloatField;
    qryUNIVALOR: TCurrencyField;
    chkMostrarUN: TCheckBox;
    tblUNIIT_UN_GERAL: TStringField;
    lbl8: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure chkMostrarUNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaItensVendidos: TFrmConsultaItensVendidos;
  somaUN, somaDZ, somaBD, somaCX, CXTotal, somaValor : Double;

implementation

uses Base, UMain;

{$R *.dfm}

procedure TFrmConsultaItensVendidos.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaItensVendidos.FormShow(Sender: TObject);
begin
dtpDataI.Date:= Date;
dtpDataF.Date:= Date;

     ////CARREGA O COMBOREF COM AS REFERENCIA
     comboTipo.Clear;
     comboTipo.Items.Add(' <TODAS> ');
     DmDados.Tbprodutos.IndexName := 'idxPro_Ref';
     dmdados.Tbprodutos.first;
     while not dmdados.Tbprodutos.eof do
     begin
        comboTipo.Items.Add(dmdados.TbprodutosPro_Ref.AsString);
        dmdados.Tbprodutos.next;
     end;
     comboTipo.itemindex:=0;


     chkMostrarUN.Checked:= False;


end;


procedure TFrmConsultaItensVendidos.btnFiltrarClick(Sender: TObject);
VAR
    comboRef: string;
begin
  //IMPRIMINDO O TOTAL DE CX / BD / DZ / UN NO RODAPÉ DO RELATÓRIO
 // somaUN, somaDZ, somaBD, somaCX, CXTotal : Integer;
          somaCX := 0;
          somaBD := 0;
          somaDZ := 0;
          somaUN := 0;
          CXTotal := 0;
          somaValor := 0;

     if comboTipo.Text = ' <TODAS> ' then
     begin
     comboRef := '%';
     end
     else
     comboRef := comboTipo.Text;


      qryUNI.Close;
      qryUNI.SQL.Clear;
      qryUNI.SQL.Add('SELECT B.IT_REF, B.IT_UN_GERAL, SUM(B.IT_QTDOVO)/360 AS QTD, SUM(B.IT_QUANTIDADE * B.IT_VALOR) AS VALOR FROM PEDIDOS A, ITENS B');
      qryUNI.SQL.Add('WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_DATA BETWEEN :VARDATAINI AND :VARDATAFIM AND B.IT_REF LIKE :VARREF');
      qryUNI.SQL.Add('GROUP BY B.IT_REF, B.IT_UN_GERAL');
      qryUNI.SQL.Add('ORDER BY B.IT_UN_GERAL, B.IT_REF');
      qryUNI.ParamByName('VARDATAINI').AsDate := dtpDataI.Date;
      qryUNI.ParamByName('VARDATAFIM').AsDate := dtpDataF.Date;
      qryUNI.ParamByName('VARREF').AsString := comboRef;
      qryUNI.Prepare;
      qryUNI.Open;


      qryUNI.First;
      while not qryUNI.Eof do
      begin

          somaValor := somaValor + qryUNI.fieldbyname('VALOR').AsFloat;


          if (qryUNI.FieldByName('IT_UN_GERAL').AsString = 'CX') and (qryUNI.fieldbyname('QTD').AsFloat > 0) then
          begin
          somaCX:= somaCX + qryUNI.fieldbyname('QTD').AsFloat;
          //qryUNI.Next;
          end else


          if (qryUNI.FieldByName('IT_UN_GERAL').AsString = 'UN') and (qryUNI.fieldbyname('QTD').AsFloat > 0) then
          begin
          SomaUN:= SomaUN + qryUNI.fieldbyname('QTD').AsFloat;
          //qryUNI.Next;

          end;
      qryUNI.Next;
      end;

       lbltotqtd.Caption := FormatFloat('#,##0.00' ,somaCX);
       lblTotalUN.Caption := FormatFloat('#,##0.00' ,somaUN);

       lblTotalValor.Caption := 'R$' + ' ' + FormatFloat('#,##0.00', somaValor);

end;

procedure TFrmConsultaItensVendidos.chkMostrarUNClick(Sender: TObject);
begin
     if chkMostrarUN.Checked = True then
     dbgrid.Columns[1].Visible := true
     else
     dbgrid.Columns[1].Visible := False;

end;

end.
