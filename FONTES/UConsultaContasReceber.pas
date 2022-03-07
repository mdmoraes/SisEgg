unit UConsultaContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvRadioButton, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExControls, JvDBLookup, Buttons, DB, DBTables,
  JvBDEQuery, Mask, JvExMask, JvToolEdit, JvMaskEdit;

type
  TFrmConsultaContasReceber = class(TForm)
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
    tbQuery1CLIENTE: TStringField;
    Query1DATAPARCELA: TDateField;
    cbbCliente: TComboBox;
    Query1STATUS: TBooleanField;
    tbQuery1VALORTOTAL: TFloatField;
    edtPendencia: TJvMaskEdit;
    lblPendenteGeral: TLabel;
    qryTotPendencia: TQuery;
    btn1: TButton;
    tbQuery1TOTALPARCELA: TFloatField;
    btnCalcula: TButton;
    lblcmbCliente: TLabel;
    lblContador: TLabel;
    edCodCliente: TEdit;
    btn2: TButton;
    tbQuery1NUM_NFPEDIDO: TIntegerField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbPendenteClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rbQuitadoClick(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
    procedure btnCalculaClick(Sender: TObject);
    procedure cbbClienteChange(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbClienteCloseUp(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaContasReceber: TFrmConsultaContasReceber;
  totPendencia: Double;
  sCombo : string;

implementation

uses Base, UContasaReceberNew;

{$R *.dfm}

procedure TFrmConsultaContasReceber.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConsultaContasReceber.btnPesquisarClick(Sender: TObject);
begin
    btn2Click(Sender);


    if lblcmbCliente.Caption = '  <TODOS>  ' then
    begin
    sCombo := '%';
    end
    else
    sCombo := lblcmbCliente.Caption; //-- CODIGO ANTERIOR ATÉ 12 09 2015

//    sCombo := edCodCliente.Text;



    if rbQuitado.Checked = True then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT A.CLIENTE, A.NUM_NFPEDIDO, A.VALORTOTAL, B.TOTALPARCELA, B.DATAPARCELA, B.STATUS');
    Query1.SQL.Add('FROM CPRMASTER A, CPRDETALHE B');
    Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND STATUS = TRUE AND A.CLIENTE LIKE (:VARCLIENTE)');
    Query1.ParamByName('VARCLIENTE').AsString := sCombo;

//   Query1.SQL.Add('ORDER BY A.NUM_NFPEDIDO DESC, B.DATAPARCELA');  ....22/04/2015

    Query1.SQL.Add('ORDER BY A.CLIENTE, B.DATAPARCELA');
    Query1.Prepare;
    Query1.Open;
    end;


    if rbPendente.Checked = True then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT A.CLIENTE, A.NUM_NFPEDIDO, A.VALORTOTAL, B.TOTALPARCELA, B.DATAPARCELA, B.STATUS');
    Query1.SQL.Add('FROM CPRMASTER A, CPRDETALHE B');
    Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND STATUS = False AND A.CLIENTE LIKE (:VARCLIENTE)');
    Query1.ParamByName('VARCLIENTE').AsString := sCombo;
//  Query1.SQL.Add('ORDER BY A.NUM_NFPEDIDO DESC, B.DATAPARCELA');

    Query1.SQL.Add('ORDER BY A.CLIENTE, B.DATAPARCELA');
    Query1.Prepare;
    Query1.Open;
    end;


    if rbTodos.Checked = True then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT A.CLIENTE, A.NUM_NFPEDIDO, A.VALORTOTAL, B.TOTALPARCELA, B.DATAPARCELA, B.STATUS');
    Query1.SQL.Add('FROM CPRMASTER A, CPRDETALHE B');
    Query1.SQL.Add('WHERE A.ID_CPG = B.CONTROLE AND A.CLIENTE LIKE (:VARCLIENTE)');
    Query1.ParamByName('VARCLIENTE').AsString := sCombo;
//    Query1.SQL.Add('ORDER BY A.NUM_NFPEDIDO DESC, B.DATAPARCELA');

    Query1.SQL.Add('ORDER BY A.CLIENTE, B.DATAPARCELA');
    Query1.Prepare;
    Query1.Open;
    end;

    lblContador.Visible := True;
    lblContador.Caption := 'Total : ' + IntToStr(Query1.RecordCount);


//    if Query1.RecordCount=0 then
//      Begin
//        MessageBox(Handle, 'NENHUMA INFORMAÇÃO ENCONTRADA,' + #13#10 +
//        'PARA A PESQUISA ESCOLHIDA !', 'ATENÇÃO !!!',
//        MB_OK + MB_ICONINFORMATION);
//        Exit;
//      End;
end;

procedure TFrmConsultaContasReceber.FormShow(Sender: TObject);
begin
   DmDados.tbCPRMaster.Edit;
   DmDados.tbCPRMaster.Post;
   DmDados.tbCPRMaster.Refresh;

   dmdados.tbCPRDetalhe.Edit;
   dmdados.tbCPRDetalhe.Post;
   dmdados.tbCPRDetalhe.Refresh;

    //atualizar tabela cprdetalhe
    DmDados.tbCPRDetalhe.First;
    while not DmDados.tbCPRDetalhe.Eof do
    begin
    DmDados.tbCPRDetalhe.Edit;
    DmDados.tbCPRDetalheTotalParcela.Value:= DmDados.tbCPRDetalheTotVrGrade.Value;
    DmDados.tbCPRDetalhe.Post;
    dmdados.tbCPRDetalhe.Next;
    end;



   
   rbPendente.Checked := True;
//   rbTodos.Checked := True;
   btnPesquisarClick(Self);

   lblContador.Visible := False;

//   qryTotPendencia.Close;
//   qryTotPendencia.close;
//   qryTotPendencia.Active:=False;
//   qryTotPendencia.Active:=True;
//   qryTotPendencia.Open;

end;

procedure TFrmConsultaContasReceber.rbPendenteClick(Sender: TObject);
begin
btnPesquisarClick(Sender);
btnCalculaClick(Sender);
end;

procedure TFrmConsultaContasReceber.btn1Click(Sender: TObject);
var
  soma: Double;
begin
  //executar a Qry
   if cbbCliente.Text = '  <TODOS>  ' then
    begin
    sCombo := '%';
    end
    else
   sCombo := cbbCliente.Text;

    qryTotPendencia.Close;
    qryTotPendencia.ParamByName('VARCLIENTE').AsString := sCombo;
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
  qryTotPendencia.EnableControls;
end;

procedure TFrmConsultaContasReceber.rbQuitadoClick(Sender: TObject);
begin
btnPesquisarClick(Sender);
btnCalculaClick(Sender);
end;

procedure TFrmConsultaContasReceber.rbTodosClick(Sender: TObject);
begin
btnPesquisarClick(Sender);
btnCalculaClick(Sender);
end;

procedure TFrmConsultaContasReceber.btnCalculaClick(Sender: TObject);
var
  soma: Double;

begin
          if lblcmbCliente.Caption = '  <TODOS>  ' then
          begin
          sCombo := '%';
          end
          else
          sCombo := lblcmbCliente.Caption;

//          sCombo := edCodCliente.Text;

          if rbQuitado.Checked = True then
          begin
          qryTotPendencia.Close;
          qryTotPendencia.SQL.Clear;
          qryTotPendencia.sql.Text := 'SELECT A.CLIENTE, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPRMASTER A, CPRDETALHE B WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = TRUE AND A.CLIENTE LIKE (:VARCLIENTE) GROUP BY A.CLIENTE';
          qryTotPendencia.ParamByName('VARCLIENTE').AsString := sCombo;
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
          qryTotPendencia.sql.Text := 'SELECT A.CLIENTE, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPRMASTER A, CPRDETALHE B WHERE A.ID_CPG = B.CONTROLE AND B.STATUS = FALSE AND A.CLIENTE LIKE (:VARCLIENTE) GROUP BY A.CLIENTE';
          qryTotPendencia.ParamByName('VARCLIENTE').AsString := sCombo;
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
          qryTotPendencia.sql.Text := 'SELECT A.CLIENTE, SUM(B.TOTALPARCELA) AS TOTALPENDENCIA FROM CPRMASTER A, CPRDETALHE B WHERE A.ID_CPG = B.CONTROLE AND A.CLIENTE LIKE (:VARCLIENTE) GROUP BY A.CLIENTE';
          qryTotPendencia.ParamByName('VARCLIENTE').AsString := sCombo;
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

procedure TFrmConsultaContasReceber.cbbClienteChange(Sender: TObject);
var
  codCliente: string;
  nomeCliente: string;
begin
lblcmbCliente.Caption := cbbCliente.Text;

//nomeCliente:= lblcmbCliente.Caption;
//
//if DmDados.TbClientes.Locate('CLI_CLIENTE', nomeCliente, [])then
//begin
//  codCliente := DmDados.TbClientesCli_Codigo.AsString;
//  edCodCliente.Text := codCliente;
//end
//else
//ShowMessage('Código deste Cliente não encontrado');
//Exit;


rbQuitado.Checked := True;
rbPendente.Checked := True;

end;

procedure TFrmConsultaContasReceber.JvDBGrid1DblClick(Sender: TObject);
begin
//   DmDados.tbCPRMaster.First;
   if DmDados.tbCPRMaster.Locate('Num_NFPEDIDO', JvDBGrid1.Columns.Items[0].Field.Text, []) then
   begin
   Close;
   end else
   ShowMessage('Pedido não Encontrado !');

end;

procedure TFrmConsultaContasReceber.FormActivate(Sender: TObject);
begin
    DmDados.TbClientes.First;
    cbbCliente.Clear;
    cbbCliente.Items.Add('  <TODOS>  ');
    While not DmDados.TbClientes.Eof do
    begin
    cbbCliente.Items.Add(DmDados.TbClientesCli_Cliente.Value);
    DmDados.TbClientes.Next;
    end;


//    cbbCliente.Text:=  '  <TODOS>  ';
//    lblcmbCliente.Caption:= '  <TODOS>  ';
//    btnPesquisarClick(Sender);
//    btnCalculaClick(Sender);


end;

procedure TFrmConsultaContasReceber.JvDBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if query1.FieldByName('STATUS').Value = true then
  if (Column.index = 4) then
  JvDBGrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;
  JvDBGrid1.BooleanEditor := True;
// // JvDBGrid1.Columns.Items[6].Alignment:= taCenter;
//
//  if query1.FieldByName('STATUS').Value = false then
//  if (Column.index = 4) then
//  JvDBGrid1.Canvas.Brush.Color:= clRed;
//  JvDBGrid1.BooleanEditor := True;
////  dbgrid1.Columns.Items[6].Alignment:= taCenter;
//
//{  if query1.FieldByName('PAGO3').Value = true then
//  if (Column.index = 9) then
//  dbgrid1.Canvas.Brush.Color:= $00FF4242;  //clBlue;
//
//  if query1.FieldByName('PAGO3').Value = false then
//  if (Column.index = 9) then
//  dbgrid1.Canvas.Brush.Color:= clRed; }
//
//  JvDBGrid1.DefaultDrawDataCell(Rect, JvDBGrid1.columns[datacol].field, State);

end;

procedure TFrmConsultaContasReceber.JvDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
//if Tabela.FieldByName ('Salario').Value >= 10000 then

//if DmDados.tbCPRDetalhe.FieldByName('STATUS').Value = True then
//begin
//JvDBGrid1.Canvas.Font.Color := clBlue;
////JvDBGrid1.Canvas.Font.Style := [fsBold];
//end;
//JvDBGrid1.DefaultDrawDataCell(Rect, Field, State);
//

if Query1.FieldByName('STATUS').Value = True then
begin
JvDBGrid1.Canvas.Font.Color := clBlue;
end;
JvDBGrid1.DefaultDrawDataCell(Rect, Field, State);


if Query1.FieldByName('STATUS').Value = False then
begin
JvDBGrid1.Canvas.Font.Color := clRed;
end;
JvDBGrid1.DefaultDrawDataCell(Rect, Field, State);


//if DmDados.tbCPRDetalhe.FieldByName('STATUS').Value = False then
//begin
//JvDBGrid1.Canvas.Font.Color := clRed;
////JvDBGrid1.Canvas.Font.Style := [fsBold];
//end;
//JvDBGrid1.DefaultDrawDataCell(Rect, Field, State);

end;


procedure TFrmConsultaContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:= caFree;
end;

procedure TFrmConsultaContasReceber.cbbClienteCloseUp(Sender: TObject);
begin
//rbQuitado.Checked := True;
//rbPendente.Checked := True;

btn2Click(Sender);
end;

procedure TFrmConsultaContasReceber.btn2Click(Sender: TObject);
var
  codCliente: Integer;
  nomeCliente: string;
begin
nomeCliente:= lblcmbCliente.Caption;

if DmDados.TbClientes.Locate('CLI_CLIENTE', nomeCliente, [])then
begin
  codCliente := DmDados.TbClientesCli_Codigo.Value;
  edCodCliente.Text := IntToStr(codCliente);
end
else
ShowMessage('Código deste Cliente não encontrado');
Exit;
end;

end.
