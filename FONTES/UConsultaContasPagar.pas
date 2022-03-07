unit UConsultaContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvRadioButton, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExControls, JvDBLookup, Buttons, DB, DBTables,
  JvBDEQuery, Mask, JvExMask, JvToolEdit, JvMaskEdit;

type
  TFrmConsultaContasPagar = class(TForm)
    grp1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    grp2: TGroupBox;
    rbQuitado: TJvRadioButton;
    rbPendente: TJvRadioButton;
    rbTodos: TJvRadioButton;
    lbl2: TLabel;
    btnFechar: TSpeedButton;
    Query1: TJvQuery;
    ds1: TDataSource;
    btnPesquisar: TSpeedButton;
    cbbFornecedor: TComboBox;
    edtPendencia: TJvMaskEdit;
    lblPendenteGeral: TLabel;
    qryTotPendencia: TQuery;
    btn1: TButton;
    tbQuery1FORNECEDOR: TStringField;
    tbQuery1NUM_NFPEDIDO: TStringField;
    tbQuery1VALORTOTAL: TFloatField;
    tbQuery1TOTALPARCELA: TFloatField;
    Query1DATAPARCELA: TDateField;
    Query1STATUS: TBooleanField;
    lblcmbFornecedor: TLabel;
    btnCalcula: TButton;
    lblContador: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbPendenteClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rbQuitadoClick(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure cbbFornecedorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbbFornecedorChange(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContasPagar: TFrmConsultaContasPagar;
  totPendencia: Double;
  sCombo : string;

implementation

uses Base, UContasaPagarNew;

{$R *.dfm}

procedure TFrmConsultaContasPagar.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConsultaContasPagar.btnPesquisarClick(Sender: TObject);
begin
    if lblcmbFornecedor.Caption = '  <TODOS>  ' then
    begin
    sCombo := '%';
    end
    else
//  sCombo := cbbFornecedor.Text;
    sCombo := lblcmbFornecedor.Caption;




    if rbQuitado.Checked = True then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT A.FORNECEDOR, A.NUM_NFPEDIDO, A.VALORTOTAL, B.TOTALPARCELA, B.DATAPARCELA, B.STATUS');
    Query1.SQL.Add('FROM CPGMASTER A, CPGDETALHE B');
    Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND STATUS = TRUE AND A.FORNECEDOR LIKE (:VARFORNECEDOR)');
    Query1.ParamByName('VARFORNECEDOR').AsString := sCombo;
    Query1.SQL.Add('ORDER BY A.NUM_NFPEDIDO, B.DATAPARCELA');
    Query1.Prepare;
    Query1.Open;
    end;


//    if ComboBox1.Text = 'Quinta' then
//    begin
//    Query1.Close;
//    Query1.SQL.Clear;
//    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_QUINTA like (:VarDia) ORDER BY Cli_RotaQuinta';
//    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
//    Query1.Prepare;
//    Query1.Open;
//    end;



    if rbPendente.Checked = True then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT A.FORNECEDOR, A.NUM_NFPEDIDO, A.VALORTOTAL, B.TOTALPARCELA, B.DATAPARCELA, B.STATUS');
    Query1.SQL.Add('FROM CPGMASTER A, CPGDETALHE B');
    Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND STATUS = False AND A.FORNECEDOR LIKE (:VARFORNECEDOR)');
    Query1.ParamByName('VARFORNECEDOR').AsString := sCombo;
    Query1.SQL.Add('ORDER BY A.NUM_NFPEDIDO, B.DATAPARCELA');
    Query1.Prepare;
    Query1.Open;
    end;


    if rbTodos.Checked = True then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT A.FORNECEDOR, A.NUM_NFPEDIDO, A.VALORTOTAL, B.TOTALPARCELA, B.DATAPARCELA, B.STATUS');
    Query1.SQL.Add('FROM CPGMASTER A, CPGDETALHE B');
    Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND A.FORNECEDOR LIKE (:VARFORNECEDOR)');
    Query1.ParamByName('VARFORNECEDOR').AsString := sCombo;
    Query1.SQL.Add('ORDER BY A.NUM_NFPEDIDO, B.DATAPARCELA');
    Query1.Prepare;
    Query1.Open;
    end;


    if Query1.RecordCount=0 then
      Begin
        MessageBox(Handle, 'NENHUMA INFORMAÇÃO ENCONTRADA,' + #13#10 +
        'PARA ESTA PESQUISA !', 'ATENÇÃO !!!',
        MB_OK + MB_ICONINFORMATION);
      End;

//    totPendencia:= 0;
//    dmdados.tbCPRDetalhe.First;
//
//    while not DmDados.tbCPRDetalhe.Eof do
//    if (DmDados.tbCPRDetalheStatus.Value = False) and DmDados.tbcpr then
//    begin
//    totPendencia:= totPendencia + DmDados.tbCPRDetalheTotalParcela.Value;
//    dmdados.tbCPRDetalhe.Next;
//    end;
//
////    edTotalPedidos.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//    edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', totPendencia);

      lblContador.Visible := True;
      lblContador.Caption := 'Total: ' + ' ' + IntToStr(Query1.RecordCount);
end;

procedure TFrmConsultaContasPagar.FormShow(Sender: TObject);
begin
//GRAVAR NO CAMPO TOTALPARCELA
DmDados.tbCPGDetalhe.First;
//       if DmDados.tbCPGDetalheTotalParcela.IsNull = True then
//       begin
while not DmDados.tbCPGDetalhe.Eof do
begin
DmDados.tbCPGDetalhe.Edit;
DmDados.tbCPGDetalheTotalParcela.Value:= DmDados.tbCPGDetalheTotVrGrade.Value;
DmDados.tbCPGDetalhe.Post;
dmdados.tbCPGDetalhe.Next;
end;



rbTodos.Checked := True;
btnPesquisarClick(Self);
lblContador.Visible := False;

//     cbbFornecedor.Text := lblcmbFornecedor.Caption;

//   if lblcmbFornecedor.Caption <> '' then
//   begin
//   cbbFornecedor.Text := lblcmbFornecedor.Caption;
//   end else


//    DmDados.Tbfornecedores.First;
//    cbbFornecedor.Clear;
//    cbbFornecedor.Items.Add('  <TODOS>  ');
//    While not DmDados.Tbfornecedores.Eof do
//    begin
//    cbbFornecedor.Items.Add(DmDados.TbfornecedoresFor_Razao.Value);
//    DmDados.Tbfornecedores.Next;
//    end;

end;

procedure TFrmConsultaContasPagar.rbPendenteClick(Sender: TObject);
begin
btnPesquisarClick(Sender);
btnCalculaClick(Sender);
//edtPendencia.Text := '';
end;

procedure TFrmConsultaContasPagar.btn1Click(Sender: TObject);
//var
//  soma: Double;
begin
//          if lblcmbFornecedor.Caption = '  <TODOS>  ' then
//          begin
//          sCombo := '%';
//          end
//          else
//          sCombo := lblcmbFornecedor.Caption;
//
//
//          if rbQuitado.Checked = True then
//          begin
//          qryTotPendencia.Close;
//          qryTotPendencia.SQL.Clear;
//          qryTotPendencia.sql.Text := 'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPGMASTER A, CPGDETALHE B WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = TRUE AND A.FORNECEDOR LIKE (:VARFORNECEDOR) GROUP BY A.FORNECEDOR';
//          qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
//          qryTotPendencia.Prepare;
//          qryTotPendencia.Open;
//
//          qryTotPendencia.DisableControls;
//                qryTotPendencia.First;
//                soma := 0;
//                  While not qryTotPendencia.Eof do
//                  begin
//                    soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
//                    qryTotPendencia.Next;
//                  End;
//                edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//                lblPendenteGeral.Visible := True;
//                lblPendenteGeral.Caption := 'QUITADO:';
//                qryTotPendencia.EnableControls;
//          end;
//
//          if rbPendente.Checked = True then
//          begin
//          qryTotPendencia.Close;
//          qryTotPendencia.SQL.Clear;
//          qryTotPendencia.sql.Text := 'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPGMASTER A, CPGDETALHE B WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = False AND A.FORNECEDOR LIKE (:VARFORNECEDOR) GROUP BY A.FORNECEDOR';
//          qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
//          qryTotPendencia.Prepare;
//          qryTotPendencia.Open;
//
//          qryTotPendencia.DisableControls;
//                qryTotPendencia.First;
//                soma := 0;
//                  While not qryTotPendencia.Eof do
//                  begin
//                    soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
//                    qryTotPendencia.Next;
//                  End;
//                edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//                lblPendenteGeral.Visible := True;
//                lblPendenteGeral.Caption := 'PENDENTE:';
//                qryTotPendencia.EnableControls;
//          end;
//
//          if rbTodos.Checked = True then
//          begin
//          qryTotPendencia.Close;
//          qryTotPendencia.SQL.Clear;
//          qryTotPendencia.sql.Text := 'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPGMASTER A, CPGDETALHE B WHERE A.ID_CPG = B.CONTROLE AND A.FORNECEDOR LIKE (:VARFORNECEDOR) GROUP BY A.FORNECEDOR';
//          qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
//          qryTotPendencia.Prepare;
//          qryTotPendencia.Open;
//
//          qryTotPendencia.DisableControls;
//                qryTotPendencia.First;
//                soma := 0;
//                  While not qryTotPendencia.Eof do
//                  begin
//                    soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
//                    qryTotPendencia.Next;
//                  End;
//                edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//                lblPendenteGeral.Visible := True;
//                lblPendenteGeral.Caption := 'GERAL:';
//                qryTotPendencia.EnableControls;
//          end;






//    qryTotPendencia.Close;
//    qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
//    qryTotPendencia.Prepare;
//    qryTotPendencia.Open;
//
//  if rbPendente.Checked = True then
//  begin
//      begin
//      qryTotPendencia.DisableControls;
//      qryTotPendencia.First;
//      soma := 0;
//        While not qryTotPendencia.Eof do
//        begin
//          soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
//          qryTotPendencia.Next;
//        End;
//      edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//      lblPendenteGeral.Visible := True;
//      lblPendenteGeral.Caption := 'PENDENTE:';
//      qryTotPendencia.EnableControls;
//      end;
//  end else
//  if rbQuitado.Checked = True then
//  begin
//      begin
//      qryTotPendencia.DisableControls;
//      qryTotPendencia.First;
//      soma := 0;
//        While not qryTotPendencia.Eof do
//        begin
//          soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
//          qryTotPendencia.Next;
//        End;
//      edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//      lblPendenteGeral.Visible := True;
//      lblPendenteGeral.Caption := 'PENDENTE:';
//      qryTotPendencia.EnableControls;
//      end;



end;

procedure TFrmConsultaContasPagar.rbQuitadoClick(Sender: TObject);
begin
btnPesquisarClick(Sender);
btnCalculaClick(Sender);
//edtPendencia.Text := '';
end;

procedure TFrmConsultaContasPagar.rbTodosClick(Sender: TObject);
begin
btnPesquisarClick(Sender);
btnCalculaClick(Sender);
//edtPendencia.Text := '';
end;

procedure TFrmConsultaContasPagar.JvDBGrid1DblClick(Sender: TObject);
begin
   DmDados.tbCPGMaster.First;
   if DmDados.tbCPGMaster.Locate('Num_NFPEDIDO', JvDBGrid1.Columns.Items[0].Field.Text, [loPartialKey]) then
   begin
   Close;
   end else
   ShowMessage('Pedido / Nota Fiscal não Encontrado !');
end;

procedure TFrmConsultaContasPagar.cbbFornecedorClick(Sender: TObject);
begin
//    DmDados.Tbfornecedores.First;
//    cbbFornecedor.Clear;
//    cbbFornecedor.Items.Add('  <TODOS>  ');
//    While not DmDados.Tbfornecedores.Eof do
//    begin
//    cbbFornecedor.Items.Add(DmDados.TbfornecedoresFor_Razao.Value);
//    DmDados.Tbfornecedores.Next;
//    end;
end;

procedure TFrmConsultaContasPagar.FormActivate(Sender: TObject);
begin
//     if lblcmbFornecedor.Caption <> '' then
//     begin
//     cbbFornecedor.Text := lblcmbFornecedor.Caption;
//     end else

    DmDados.Tbfornecedores.First;
    cbbFornecedor.Clear;
    cbbFornecedor.Items.Add('  <TODOS>  ');
    While not DmDados.Tbfornecedores.Eof do
    begin
    cbbFornecedor.Items.Add(DmDados.TbfornecedoresFor_Razao.Value);
    DmDados.Tbfornecedores.Next;
    end;
end;

procedure TFrmConsultaContasPagar.cbbFornecedorChange(Sender: TObject);
begin
lblcmbFornecedor.Caption := cbbFornecedor.Text;
end;

procedure TFrmConsultaContasPagar.btnCalculaClick(Sender: TObject);
var
  soma: Double;

begin
          if lblcmbFornecedor.Caption = '  <TODOS>  ' then
          begin
          sCombo := '%';
          end
          else
          sCombo := lblcmbFornecedor.Caption;


          if rbQuitado.Checked = True then
          begin
          qryTotPendencia.Close;
          qryTotPendencia.SQL.Clear;
          qryTotPendencia.sql.Text := 'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPGMASTER A, CPGDETALHE B WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = TRUE AND A.FORNECEDOR LIKE (:VARFORNECEDOR) GROUP BY A.FORNECEDOR';
          qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
          qryTotPendencia.Prepare;
          qryTotPendencia.Open;

          qryTotPendencia.DisableControls;
                qryTotPendencia.First;
                soma := 0;
                  While not qryTotPendencia.Eof do
                  begin
                    soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
                    qryTotPendencia.Next;
                  End;
                edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
                lblPendenteGeral.Visible := True;
                lblPendenteGeral.Caption := 'QUITADO:';
                edtPendencia.Font.Color := clBlack;
                qryTotPendencia.EnableControls;
          end;

          if rbPendente.Checked = True then
          begin
          qryTotPendencia.Close;
          qryTotPendencia.SQL.Clear;
          qryTotPendencia.sql.Text := 'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPGMASTER A, CPGDETALHE B WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = False AND A.FORNECEDOR LIKE (:VARFORNECEDOR) GROUP BY A.FORNECEDOR';
          qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
          qryTotPendencia.Prepare;
          qryTotPendencia.Open;

          qryTotPendencia.DisableControls;
                qryTotPendencia.First;
                soma := 0;
                  While not qryTotPendencia.Eof do
                  begin
                    soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
                    qryTotPendencia.Next;
                  End;
                edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
                lblPendenteGeral.Visible := True;
                lblPendenteGeral.Caption := 'PENDENTE:';
                edtPendencia.Font.Color := clRed;
                qryTotPendencia.EnableControls;
          end;

          if rbTodos.Checked = True then
          begin
          qryTotPendencia.Close;
          qryTotPendencia.SQL.Clear;
          qryTotPendencia.sql.Text := 'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPGMASTER A, CPGDETALHE B WHERE A.ID_CPG = B.CONTROLE AND A.FORNECEDOR LIKE (:VARFORNECEDOR) GROUP BY A.FORNECEDOR';
          qryTotPendencia.ParamByName('VARFORNECEDOR').AsString := sCombo;
          qryTotPendencia.Prepare;
          qryTotPendencia.Open;

          qryTotPendencia.DisableControls;
                qryTotPendencia.First;
                soma := 0;
                  While not qryTotPendencia.Eof do
                  begin
                    soma:=soma+qryTotPendencia.Fieldbyname('TOTALPENDENCIA').asFloat;
                    qryTotPendencia.Next;
                  End;
                edtPendencia.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
                lblPendenteGeral.Visible := True;
                lblPendenteGeral.Caption := 'GERAL:';
                edtPendencia.Font.Color := clBlack;
                qryTotPendencia.EnableControls;
          end;


end;

procedure TFrmConsultaContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
end;

end.
