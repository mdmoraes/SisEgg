unit UEntradadeProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls, JvgPage,
  StdCtrls, DBCtrls, ExtCtrls, JvExControls, JvDBLookup, Buttons,
  Mask, JvExMask, JvToolEdit, JvDBControls, ActnList, DB, DateUtils;

type
  TFrmEntradaProduto = class(TForm)
    pnlDados: TPanel;
    pnl1: TPanel;
    grp1: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    pnlConfirma: TPanel;
    btnConfirmar: TSpeedButton;
    pnlControle: TPanel;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    btnSbConsultaProduto: TSpeedButton;
    btnCompras: TSpeedButton;
    btnBtincluir: TBitBtn;
    btnBtnAltera: TBitBtn;
    btnBtExcluir: TBitBtn;
    btnBtSaida: TBitBtn;
    btnCancelar: TSpeedButton;
    JvDBDateEdit1: TJvDBDateEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbNumNFPedido: TDBEdit;
    lbl5: TLabel;
    dbValorTotalEntrada: TDBEdit;
    dbID_PRODUTOENTRADA: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    actAtulizaEstoque: TActionList;
    actAtualiza_Estoque: TAction;
    dbchkLancado: TDBCheckBox;
    btnContasaPagar: TSpeedButton;
    grp2: TGroupBox;
    lbl1: TLabel;
    lbl6: TLabel;
    btnBuscaForma: TSpeedButton;
    dbPrazo: TDBEdit;
    pnlCalendario: TPanel;
    lblFechar: TLabel;
    cal1: TMonthCalendar;
    btn2: TSpeedButton;
    dbForma: TDBLookupComboBox;
    procedure btnProcuraClick(Sender: TObject);
    procedure btnBtnAlteraClick(Sender: TObject);
//    procedure btnSbDesisteClick(Sender: TObject);
    procedure btnBtSaidaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure edFornecedorChange(Sender: TObject);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBtincluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnBtExcluirClick(Sender: TObject);
    procedure dbNumNFPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnComprasClick(Sender: TObject);
    procedure JvDBGrid1EditButtonClick(Sender: TObject);
    procedure JvDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAtualiza_EstoqueExecute(Sender: TObject);
    procedure btnContasaPagarClick(Sender: TObject);
    procedure JvDBGrid1Enter(Sender: TObject);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure btnBuscaFormaClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure dbFormaCloseUp(Sender: TObject);
    procedure cal1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntradaProduto: TFrmEntradaProduto;

implementation

uses Base, UConsultadeComprasEfetuadas, UConsultaProdutosCadastrados,
  UContasaPagarNew, UFrmFormasPagamento, UCadastroFormasPagamentoNew,
  u_parcelamento, UConsultaContasPagar;

{$R *.dfm}

procedure TFrmEntradaProduto.btnProcuraClick(Sender: TObject);
begin
//grpPesquisaFornecedor.Visible := True;
//edFornecedor.SetFocus;
end;

procedure TFrmEntradaProduto.btnBtnAlteraClick(Sender: TObject);
begin
 pnlDados.Enabled := True;
 pnlConfirma.visible := True;
 pnlControle.Visible:= False;

end;

procedure TFrmEntradaProduto.btnBtSaidaClick(Sender: TObject);
begin
  pnlDados.Enabled := False;
  Close;
end;

procedure TFrmEntradaProduto.btnCancelarClick(Sender: TObject);
begin
DmDados.tbEntradaProdutoMaster.Cancel;
pnlDados.Enabled := False;
pnlControle.Visible := True;
pnlConfirma.Visible:= False;
//grpPesquisaFornecedor.Visible := False;
end;

procedure TFrmEntradaProduto.JvDBGrid2DblClick(Sender: TObject);
begin
//DmDados.tblEntradaProdutoMaster.Edit;
//dbFORNECEDOR.Text:= JvDBGrid2.Columns.Items[0].Field.Text;
//grpPesquisaFornecedor.Visible:= False;
end;

procedure TFrmEntradaProduto.edFornecedorChange(Sender: TObject);
begin
//  dmdados.Tbfornecedores.FindNearest([edFornecedor.Text]);
end;

procedure TFrmEntradaProduto.JvDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

//if (Key = vk_escape) then
// grpPesquisaFornecedor.Visible:= False;
//
// if Key = vk_return then
// JvDBGrid2DblClick(Self);
end;

procedure TFrmEntradaProduto.lblFecharClick(Sender: TObject);
begin
  //grpPesquisaFornecedor.Visible:= False;

  pnlCalendario.Visible := False;
end;

procedure TFrmEntradaProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if (Key = vk_Escape) then
//grpPesquisaFornecedor.Visible:= False;

//if (Key = vk_return) then
//dbFORNECEDOR.Text:= JvDBGrid2.Columns.Items[0].Field.Text;
//grpPesquisaFornecedor.Visible:= False;
//dbNumNFPedido.SetFocus;
end;

procedure TFrmEntradaProduto.edFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
// if key in [38,40] then
//  begin
//  JvDBGrid2.SetFocus;


// and (edFornecedor.Focused = True) then;
//grpPesquisaFornecedor.Visible:= False;
end;

procedure TFrmEntradaProduto.btnBtincluirClick(Sender: TObject);
var
it:integer;
begin
       pnlDados.Enabled := True;
       pnlConfirma.visible := True;
       pnlControle.Visible:= False;

       try      
          DmDados.tbEntradaProdutoMaster.DisableControls;
          try
          DMDados.tbEntradaProdutoMaster.IndexName:= 'idx_ID_PRODUTOENTRADA';
          DMDados.tbEntradaProdutoMaster.First;
          DMDados.tbEntradaProdutoMaster.Last;

          if DMDados.tbEntradaProdutoMaster['ID_PRODUTOENTRADA']<> null then
          it := DMDados.tbEntradaProdutoMaster['ID_PRODUTOENTRADA']
          else
          it:= 0;

          DMDados.tbEntradaProdutoMaster.Insert;
          DMDados.tbEntradaProdutoMaster['ID_PRODUTOENTRADA'] := it + 1;
          DmDados.tbEntradaProdutoMaster['DATA_ENTRADA']:= DateToStr(Now);
          finally
          DMDados.tbEntradaProdutoMaster.EnableControls;
          end;
       finally
       end;
       JvDBLookupCombo1.SetFocus;
//       dbFORNECEDOR.SetFocus;
end;

procedure TFrmEntradaProduto.btnConfirmarClick(Sender: TObject);
var
it:integer;
begin

//    if ((Trim(edit2.text) = '') or (Trim(edit2.text) = '') then

        if (Trim(dbForma.Text) = '') or (Trim(dbPrazo.Text) = '') then
        begin
          Application.MessageBox('FORMA DE PAGAMENTO OU PRAZO,' +
            #13#10 + 'NÃO PODEM FICAR EM BRANCO !!!', 'Atenção', MB_OK
            + MB_ICONWARNING);
        Exit;
        end;

         if (Trim(JvDBLookupCombo1.Text) = '') then
         begin
         Application.MessageBox('VOCÊ NÃO PODE CONFIRMAR ' + #13#10 +
        'UMA ENTRADA SEM UM FORNECEDOR !!!.', 'NÃO PERMITIDO !!!', MB_OK + MB_ICONSTOP);
     Exit;
   end;



   if DmDados.tblEntradaProdutoDetalhe.RecordCount = 0 then
   begin
   Application.MessageBox('VOCÊ NÃO PODE CONFIRMAR ' + #13#10 +
     'UMA ENTRADA SEM ITENS CADASTRADOS !!!.', 'NÃO PERMITIDO !!!', MB_OK +
     MB_ICONSTOP);
   Exit;
   end;


        begin
        DmDados.tbEntradaProdutoMaster.Edit;
        DmDados.tbEntradaProdutoMaster.Post;
        ShowMessage('DADOS GRAVADOS!!');

        actAtualiza_EstoqueExecute(Self);

        pnlDados.Enabled := False;
        pnlControle.Visible := True;
        pnlConfirma.Visible:= False;
        end;


          // .......................................................
          //ROTINA GRAVA DADOS EM CONTAS A PAGAR
          if dmdados.tbEntradaProdutoMasterLancado.Value = False then
          begin
          DMDados.tbCPGMaster.IndexName:= 'idx_ID_CPG';
          DMDados.tbCPGMaster.First;
          DMDados.tbCPGMaster.Last;
          if DMDados.tbCPGMaster['ID_CPG']<> null then
          it := DMDados.tbCPGMaster['ID_CPG']
          else
          it:= 0;
          DMDados.tbCPGMaster.Insert;
          DMDados.tbCPGMaster['ID_CPG'] := it + 1;
          DmDados.tbCPGMaster['DataInclusao']:= DateToStr(Now);

          DmDados.tbCPGMasterFornecedor.Value:=
          DmDados.tbEntradaProdutoMasterFORNECEDOR.Value;

          dmdados.tbCPGMasterValorTotal.Value:=
          DmDados.tbEntradaProdutoMasterVALORNOTE.Value;

          dmdados.tbCPGMasterValorTotalFixo.Value:=
          DmDados.tbEntradaProdutoMasterVALORNOTE.Value;

          DmDados.tbCPGMasterNum_NFPEDIDO.Value:=
          DmDados.tbEntradaProdutoMasterNUM_NOTA.Value;

          DmDados.tbCPGMaster.Edit;
          DmDados.tbCPGMaster.Post;
          end;

          //-> LANÇAR PARCELAMENTO NA GRID DETALHES DE CONTAS A PAGAR.
          if dmdados.tbEntradaProdutoMasterLancado.Value = False then
          begin
          FrmGerarParcelamentos.edOrigem.Text := 'Produto';

          FrmGerarParcelamentos.edForma.Text := dbprazo.Text;
          FrmGerarParcelamentos.edValorTotal.Text := DmDados.tbEntradaProdutoMasterVALORNOTE.AsString;
          FrmGerarParcelamentos.edPrazo.Text := dmdados.tbEntradaProdutoMasterForma.AsString;

          FrmGerarParcelamentos.Show;
          FrmGerarParcelamentos.btnLimparClick(Sender);
          FrmGerarParcelamentos.btnGerarParcelaClick(Sender);
          end;


          //2014-06-07 - Rotina relançar contas a pagar - caso haja alteração na Entrada de produtos.
          if dmdados.tbEntradaProdutoMasterLancado.Value = True then
          begin
              DMDados.tbCPGMaster.First;
              DmDados.tbCPGMaster.Locate('ID_CPG', dbID_PRODUTOENTRADA.Text, []);

              DmDados.tbCPGMaster.Edit;

              DmDados.tbCPGMasterFornecedor.Value:=
              DmDados.tbEntradaProdutoMasterFORNECEDOR.Value;

              dmdados.tbCPGMasterValorTotal.Value:=
              DmDados.tbEntradaProdutoMasterVALORNOTE.Value;

              dmdados.tbCPGMasterValorTotalFixo.Value:=
              DmDados.tbEntradaProdutoMasterVALORNOTE.Value;

              DmDados.tbCPGMasterNum_NFPEDIDO.Value:=
              DmDados.tbEntradaProdutoMasterNUM_NOTA.Value;

              DmDados.tbCPGMaster.Edit;
              DmDados.tbCPGMaster.Post;
              DmDados.tbCPGMaster.Edit;


          //APAGAR TODOS OS REGISTROS DA GRADE DETALHE EM CONTAS A PAGAR E RELANÇAR.

              DmDados.tbCPGDetalhe.First;
              while not (DmDados.tbCPGDetalhe.Eof) do
              begin
                DmDados.tbCPGDetalhe.Delete;
                DmDados.tbCPGDetalhe.Next;
              end;



              // RECALCULAR PARCELAMENTOS E LANÇAR EM CONTAS A PAGAR
              FrmGerarParcelamentos.edOrigem.Text := 'Produto';
              FrmGerarParcelamentos.edForma.Text := dbprazo.Text;
              FrmGerarParcelamentos.edValorTotal.Text := DmDados.tbEntradaProdutoMasterVALORNOTE.AsString;
              FrmGerarParcelamentos.edPrazo.Text := dmdados.tbEntradaProdutoMasterForma.AsString;
              FrmGerarParcelamentos.Show;
              FrmGerarParcelamentos.btnLimparClick(Sender);
              FrmGerarParcelamentos.btnGerarParcelaClick(Sender);
          end;

          dmdados.tbEntradaProdutoMaster.edit;
          dmdados.tbEntradaProdutoMasterLancado.Value := True;
          dmdados.tbEntradaProdutoMaster.post;



end;

procedure TFrmEntradaProduto.btn3Click(Sender: TObject);
begin
 if DmDados.tbEntradaProdutoMaster.Bof = True then
 begin
 ShowMessage('VOCE ESTÁ NO PRIMEIRO REGISTRO !');
 end
 else
 DmDados.tbEntradaProdutoMaster.First;
end;

procedure TFrmEntradaProduto.btn4Click(Sender: TObject);
begin
 if DmDados.tbEntradaProdutoMaster.Bof = True then
 begin
 ShowMessage('VOCE ESTÁ NO PRIMEIRO REGISTRO !');
 end
 else
 DmDados.tbEntradaProdutoMaster.Prior;
end;

procedure TFrmEntradaProduto.btn5Click(Sender: TObject);
begin
 if DmDados.tbEntradaProdutoMaster.Eof = True then
 begin
 ShowMessage('VOCE ESTÁ NO ÚLTIMO REGISTRO !');
 end
 else
 DmDados.tbEntradaProdutoMaster.Next;

end;

procedure TFrmEntradaProduto.btn6Click(Sender: TObject);
begin
 if DmDados.tbEntradaProdutoMaster.Eof = True then
 begin
 ShowMessage('VOCE ESTÁ NO ÚLTIMO REGISTRO !');
 end
 else
 DmDados.tbEntradaProdutoMaster.Last;
end;

procedure TFrmEntradaProduto.btnBtExcluirClick(Sender: TObject);
begin
    case MessageBoxW(Handle, 'DESEJA EXCLUIR ESTA ENTRADA.. ?', 'ATENÇÃO !!!',
      MB_OKCANCEL + MB_ICONWARNING) of
      IDOK:
        begin
        DmDados.tbEntradaProdutoMaster.Delete;
        end;
      IDCANCEL:
        begin
        Exit;
        end;
    end;

end;

procedure TFrmEntradaProduto.dbNumNFPedidoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
dbNumNFPedido.SetFocus;
end;

procedure TFrmEntradaProduto.btnComprasClick(Sender: TObject);
begin
      TRY
      application.CreateForm(TFrmConsultaComprasEfetuadas, FrmConsultaComprasEfetuadas);
      FrmConsultaComprasEfetuadas.ShowModal;
      finally
      FrmConsultaComprasEfetuadas.Free;
      end;
end;

procedure TFrmEntradaProduto.JvDBGrid1EditButtonClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmConsultaProdutosCadastrados, FrmConsultaProdutosCadastrados);
    FrmConsultaProdutosCadastrados.ShowModal;
    finally
    FrmConsultaProdutosCadastrados.Free;
    end;
end;

procedure TFrmEntradaProduto.JvDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F4) and (JvDBGrid1.SelectedIndex = 2) then
    try
    Application.CreateForm(TFrmConsultaProdutosCadastrados, FrmConsultaProdutosCadastrados);
    FrmConsultaProdutosCadastrados.ShowModal;
    finally
    FrmConsultaProdutosCadastrados.Free;
    end;

end;

procedure TFrmEntradaProduto.actAtualiza_EstoqueExecute(Sender: TObject);

begin
//         DmDados.tbEstoque.First;
//         while not DmDados.tbEstoque.Eof do
//         begin

                DmDados.tblEntradaProdutoDetalhe.First;
                while not DmDados.tblEntradaProdutoDetalhe.Eof do
                begin
                          DmDados.tbEstoque.First;
                          if not DmDados.tbEstoque.Locate('Ref', DmDados.tbEntradaProdutoDetalheREFERENCIA.Value, [loPartialkey]) then
                          begin
                          DmDados.tbEstoque.Append;
                          DmDados.tbEstoque.Edit;
                          DmDados.tbEstoqueRef.AsString:= DmDados.tbEntradaProdutoDetalheREFERENCIA.Value;

                          dmdados.tbEstoqueDescricao.AsString:=
                          DmDados.tbEntradaProdutoDetalheDESCRICAO.Value;

                          DmDados.tbEstoqueUn.Value:=
                          dmdados.tbEntradaProdutoDetalheUNIDADE.Value;

                          DmDados.tbEstoqueQtd.Value:=
                          (DmDados.tbEstoqueQtd.Value + DmDados.tblEntradaProdutoDetalheQTD.Value);
                          DmDados.tbEstoque.Post;
                          end
                          else
                          if DmDados.tbEstoque.Locate('Ref', DmDados.tbEntradaProdutoDetalheREFERENCIA.Value, [loPartialKey]) then
                          begin
                          DmDados.tbEstoque.Edit;
//                          DmDados.tbEstoqueRef.AsString:= DmDados.tbEntradaProdutoDetalheREFERENCIA.Value;
//
//                          dmdados.tbEstoqueDescricao.AsString:=
//                          DmDados.tbEntradaProdutoDetalheDESCRICAO.Value;
//
//                          DmDados.tbEstoqueUn.Value:=
//                          dmdados.tbEntradaProdutoDetalheUNIDADE.Value;

                          DmDados.tbEstoqueQtd.Value:=
                          (DmDados.tbEstoqueQtd.Value + DmDados.tblEntradaProdutoDetalheQTD.Value);
                          DmDados.tbEstoque.Post;
                          end;
                DmDados.tblEntradaProdutoDetalhe.Next;
                end;
//         DmDados.tbEstoque.Next;
//         end;
end;

procedure TFrmEntradaProduto.btnContasaPagarClick(Sender: TObject);
var
   sNomeFornecedor : string;

begin
   sNomeFornecedor := JvDBLookupCombo1.Text;
     try

     Application.CreateForm(TFrmConsultaContasPagar, FrmConsultaContasPagar);
     FrmConsultaContasPagar.cbbFornecedor.Text := sNomeFornecedor;
     FrmConsultaContasPagar.lblcmbFornecedor.Caption := sNomeFornecedor;
     FrmConsultaContasPagar.ShowModal;
     finally
     FrmConsultaContasPagar.Free;
     end;

end;

procedure TFrmEntradaProduto.JvDBGrid1Enter(Sender: TObject);
begin



// if (DmDados.tblentradaProdutoDetalhe.State in [dsInsert]) and (JvDBGrid1.SelectedIndex = 2) then
//   //and (JvDBGrid1.Columns.Items[2].Field.Text = '') then
//    try
//    Application.CreateForm(TFrmConsultaProdutosCadastrados, FrmConsultaProdutosCadastrados);
//    FrmConsultaProdutosCadastrados.ShowModal;
//    finally
//    FrmConsultaProdutosCadastrados.Free;
//    end;

end;

procedure TFrmEntradaProduto.JvDBGrid1ColEnter(Sender: TObject);
begin
keybd_event(VK_F4, 0, 0, 0);
end;

procedure TFrmEntradaProduto.btnBuscaFormaClick(Sender: TObject);
begin
//  try
//  Application.CreateForm(TFrmCadFormasPagamentoNew, FrmCadFormasPagamentoNew);
//  FrmCadFormasPagamentoNew.edId.Text:= 'Entrada';
//  FrmCadFormasPagamentoNew.ShowModal;
//  finally
//  FrmCadFormasPagamentoNew.Free;
//  end;
end;

procedure TFrmEntradaProduto.btn2Click(Sender: TObject);
begin
pnlCalendario.Visible := True;
end;

procedure TFrmEntradaProduto.cal1Click(Sender: TObject);
//var
//data :integer;
//data1, data2 : TDateTime;
begin
//data1 := Date;
//data2 := cal1.Date;
//
//        if (data2 < data1) then
//        begin
//            Application.MessageBox('DATA ESCOLHIDA É ANTERIOR À' + #13#10 +
//              'DATA ATUAL.', 'ATENÇÃO !', MB_OK + MB_ICONSTOP);
//            Exit;
//
//        end;
//
//        if (data1 = data2) then
//        begin
//        dbPrazo.Text := '00';
//        end
//        else
//        dbPrazo.Text := IntToStr(DaysBetween(data1, data2));
//        pnlCalendario.Visible := False;
end;

procedure TFrmEntradaProduto.dbFormaCloseUp(Sender: TObject);
begin
if dbForma.Text = 'Vista' then
 begin
 dbPrazo.Text := '00';
 end
 else
 dbPrazo.Text := '';

end;

procedure TFrmEntradaProduto.cal1DblClick(Sender: TObject);
var
data :integer;
data1, data2 : TDateTime;
begin
data1 := Date;
data2 := cal1.Date;

        if (data2 < data1) then
        begin
            Application.MessageBox('DATA ESCOLHIDA É ANTERIOR À' + #13#10 +
              'DATA ATUAL.', 'ATENÇÃO !', MB_OK + MB_ICONSTOP);
            Exit;

        end;

        if (data1 = data2) then
        begin
        dbPrazo.Text := '00';
        end
        else
        dbPrazo.Text := IntToStr(DaysBetween(data1, data2));
        pnlCalendario.Visible := False;


end;

end.
