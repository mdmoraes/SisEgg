unit UContasaPagarNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExMask, JvToolEdit, JvDBControls, Mask, DBCtrls, ExtCtrls,
  ComCtrls, DB, JvExControls, JvDBLookup, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, DBSumLst,
  JvBaseEdits;

type
  TFrmContasaPagarNew = class(TForm)
    pnlDados: TPanel;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    dbNumNFPedido: TDBEdit;
    dbValorTotalEntrada: TDBEdit;
    dbID_PRODUTOENTRADA: TDBEdit;
    grp1: TGroupBox;
    pnlConfirma: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    pnlControle: TPanel;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn6: TSpeedButton;
    btnSbConsultaProduto: TSpeedButton;
    btnBtincluir: TBitBtn;
    btnBtnAltera: TBitBtn;
    btnBtExcluir: TBitBtn;
    btnBtSaida: TBitBtn;
    JvDBLookupCombo1: TJvDBLookupCombo;
    lbl1: TLabel;
    dbmmoObs: TDBMemo;
    btn1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    dbValorTotalFixo: TDBText;
    lbl6: TLabel;
    btn2: TSpeedButton;
    dbTipoEntrada: TDBLookupComboBox;
    lbl7: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBtnAlteraClick(Sender: TObject);
    procedure btnBtSaidaClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnBtExcluirClick(Sender: TObject);
    procedure btnBtincluirClick(Sender: TObject);
    procedure AdvSmoothCalendar1Click(Sender: TObject);
    procedure AdvSmoothCalendar1CurrentDayClick(Sender: TObject;
      var Allow: Boolean);
    procedure cal1Click(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1ColExit(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure dtpicker1Change(Sender: TObject);
    procedure dtpicker1DropDown(Sender: TObject);
    procedure dtpicker1Exit(Sender: TObject);
    procedure JvDBGrid1Exit(Sender: TObject);
    procedure dbNumNFPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure btnSbConsultaProdutoClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContasaPagarNew: TFrmContasaPagarNew;

implementation

uses Base, UEntradadeProduto, UConsultaContasaPagar, UConsultaContasPagar,
  URelatorioContasPagar;

{$R *.dfm}

procedure TFrmContasaPagarNew.btnConfirmarClick(Sender: TObject);
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
         //       end;


                DmDados.tbCPGMaster.Edit;
                DmDados.tbCPGMaster.Post;
                ShowMessage('DADOS GRAVADOS!!');
                pnlDados.Enabled := False;
                pnlControle.Visible := True;
                pnlConfirma.Visible:= False;
//              grpPesquisaFornecedor.Visible := False;

end;

procedure TFrmContasaPagarNew.btnCancelarClick(Sender: TObject);
begin
pnlDados.Enabled := False;
pnlControle.Visible := True;
pnlConfirma.Visible:= False;
DmDados.tbCPGMaster.Cancel;
end;

procedure TFrmContasaPagarNew.btnBtnAlteraClick(Sender: TObject);
begin
DmDados.tbCPGMaster.Edit;
pnlDados.Enabled := True;
pnlControle.Visible := False;
pnlConfirma.Visible:= True;
end;

procedure TFrmContasaPagarNew.btnBtSaidaClick(Sender: TObject);
begin
close;
end;

procedure TFrmContasaPagarNew.btn3Click(Sender: TObject);
begin
 if DmDados.tbCPGMaster.Bof = True then
 begin
 ShowMessage('VOCE ESTÁ NO PRIMEIRO REGISTRO !');
 end
 else
 DmDados.tbCPGMaster.First;
end;

procedure TFrmContasaPagarNew.btn4Click(Sender: TObject);
begin
 if DmDados.tbCPGMaster.Bof = True then
 begin
 ShowMessage('VOCE ESTÁ NO PRIMEIRO REGISTRO !');
 end
 else
 DmDados.tbCPGMaster.Prior;
end;

procedure TFrmContasaPagarNew.btn5Click(Sender: TObject);
begin
 if DmDados.tbCPGMaster.Eof = True then
 begin
 ShowMessage('VOCE ESTÁ NO ÚLTIMO REGISTRO !');
 end
 else
 DmDados.tbCPGMaster.Next;

end;

procedure TFrmContasaPagarNew.btn6Click(Sender: TObject);
begin
   if DmDados.tbCPGMaster.Eof = True then
   begin
   ShowMessage('VOCE ESTÁ NO ÚLTIMO REGISTRO !');
   end
   else
   DmDados.tbCPGMaster.Last;
end;

procedure TFrmContasaPagarNew.btnBtExcluirClick(Sender: TObject);
begin
      case MessageBoxW(Handle, 'DESEJA EXCLUIR ESTA ENTRADA.. ?', 'ATENÇÃO !!!',
      MB_OKCANCEL + MB_ICONWARNING) of
      IDOK:
        begin
        DmDados.tbCPGMaster.Delete;
        end;
      IDCANCEL:
        begin
        Exit;
        end;
      end;
end;

procedure TFrmContasaPagarNew.btnBtincluirClick(Sender: TObject);
var
it:integer;
begin
       pnlDados.Enabled := True;
       pnlConfirma.visible := True;
       pnlControle.Visible:= False;

       try
          DmDados.tbCPGMaster.DisableControls;
          try
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
          finally
          DMDados.tbCPGMaster.EnableControls;
          end;
       finally
       end;
       JvDBLookupCombo1.SetFocus;

end;

procedure TFrmContasaPagarNew.AdvSmoothCalendar1Click(Sender: TObject);
begin
//JvDBGrid1.Columns.Items[3].Field.Text:= DateToStr(AdvSmoothCalendar1.CurrentDay);
//AdvSmoothCalendar1.Visible:= False;
end;

procedure TFrmContasaPagarNew.AdvSmoothCalendar1CurrentDayClick(
  Sender: TObject; var Allow: Boolean);
begin
//JvDBGrid1.Columns.Items[3].Field.Text:= DateToStr(AdvSmoothCalendar1.CurrentDay);
//AdvSmoothCalendar1.Visible:= False;
end;

procedure TFrmContasaPagarNew.cal1Click(Sender: TObject);
begin
// JvDBGrid1.Columns.Items[3].Field.Text:= DateToStr(cal1.Date);
// cal1.Visible:= False;
end;

procedure TFrmContasaPagarNew.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
// if (gdFocused in State) then
//  begin
//    if (Column.Field.FieldName = 'DataParcela') then
//    with dtpicker1 do
//    begin
//      Left := Rect.Left + JvDBGrid1.Left + 1;
//      Top := Rect.Top + JvDBGrid1.Top + 1;
//      Width := Rect.Right - Rect.Left + 2;
//      Width := Rect.Right - Rect.Left + 2;
//      Height := Rect.Bottom - Rect.Top + 2;
//
//      Visible := True;
//    end;
end;

procedure TFrmContasaPagarNew.JvDBGrid1ColExit(Sender: TObject);
begin
//  DmDados.tbCPGDetalhe.Edit;
// if JvDBGrid1.SelectedField.FieldName = 'DataParcela' then
//    DmDados.tbCPGDetalhe.Post;
// //   DmDados.tbCPGDetalhe.Edit;
//    dtpicker1.Visible := False;
//

end;

procedure TFrmContasaPagarNew.JvDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
//  if (key = Chr(9)) then Exit;
//
//  if (JvDBGrid1.SelectedField.FieldName = 'DataParcela') then
//  begin
//    dtpicker1.SetFocus;
//    SendMessage(dtpicker1.Handle, WM_Char, word(Key), 0);
//  end
end;

procedure TFrmContasaPagarNew.dtpicker1Change(Sender: TObject);
begin
// if JvDBGrid1.DataSource.State in [dsEdit, dsInsert] then
//  DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;

// if DmDados.tbCPGDetalhe.State in [dsEdit, dsInsert] then
//DataSource.State in [dsEdit, dsInsert] then
//  DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;
end;

procedure TFrmContasaPagarNew.dtpicker1DropDown(Sender: TObject);
begin
//JvDBGrid1.DataSource.Edit;
end;

procedure TFrmContasaPagarNew.dtpicker1Exit(Sender: TObject);
begin
//DmDados.tbCPGDetalhe.Edit;
//DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;
//DmDados.tbCPGDetalhe.Post;
//dmdados.tbCPGDetalhe.AutoRefresh:= True;
////DmDados.tbCPGDetalhe.Edit;

end;

procedure TFrmContasaPagarNew.JvDBGrid1Exit(Sender: TObject);
begin
// DmDados.tbCPGDetalhe.Edit;
// DmDados.tbCPGDetalhe.Post;
// DmDados.tbCPGDetalhe.Edit;
end;

procedure TFrmContasaPagarNew.dbNumNFPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if DmDados.tbCPGMasterNum_NFPEDIDO.IsNull = False then
    begin
    MessageBoxW(Handle, 'CAMPO JÁ PREENCHIDO PELO SISTEMA,' + #13#10 +
      'NÃO PODE MAIS SER ALTERADO !', 'ERRO !!', MB_OK + MB_ICONSTOP);
    Abort;
    end;
end;

procedure TFrmContasaPagarNew.JvDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
dbNumNFPedido.SetFocus;
end;

procedure TFrmContasaPagarNew.btn1Click(Sender: TObject);
begin
     if DmDados.tbEntradaProdutoMaster.Locate('NUM_NOTA', dbNumNFPedido.Text, []) then
     begin
     try
      Application.CreateForm(TFrmEntradaProduto, FrmEntradaProduto);
      FrmEntradaProduto.ShowModal;
      finally
      FrmEntradaProduto.Free;
      end;
     end else
     MessageBoxW(Handle, 'PEDIDO NÃO ENCONTRADO!', 'ATENÇÃO !!!', MB_OK +
     MB_ICONSTOP);


end;

procedure TFrmContasaPagarNew.JvDBGrid1ColEnter(Sender: TObject);
begin
//      if (DmDados.tbCPGDetalheDataParcela.IsNull = False) and (JvDBGrid1.SelectedIndex = 3) then
//      begin
//          case MessageBox(Handle, 'Deseja alterar esta data ?', 'ATENÇÃO !!!',
//            MB_OKCANCEL + MB_ICONQUESTION) of
//            IDOK:
//              begin
//              DmDados.tbCPGDetalhe.Edit;
//              end;
//            IDCANCEL:
//              begin
//              Abort;
//              end;
//          end;
//      end;




// if (JvDBGrid1.DataSource.State in [dsEdit, dsInsert]) and (JvDBGrid1.SelectedIndex = 3) then
//     begin
//     DmDados.tbCPGDetalhe.edit;
//     dtpicker1.Date:= Date;
//     DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;
//     end;

end;

procedure TFrmContasaPagarNew.DBGridEh1CellClick(Column: TColumnEh);
begin
//DBGridEh1.SelectedIndex := 4;
end;

procedure TFrmContasaPagarNew.DBGridEh1Columns3EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
 //   DBGridEh1.SelectedIndex := 4;
end;

procedure TFrmContasaPagarNew.btnSbConsultaProdutoClick(Sender: TObject);
var
  sNomeFornecedor : string;
begin
     sNomeFornecedor := JvDBLookupCombo1.Text;

      FrmConsultaContasPagar:= TFrmConsultaContasPagar.create ( application );

      FrmConsultaContasPagar.cbbFornecedor.Text := sNomeFornecedor;
      FrmConsultaContasPagar.lblcmbFornecedor.Caption := sNomeFornecedor;

      try
      FrmConsultaContasPagar.ShowModal
      finally
      FrmConsultaContasPagar.Release;
      FrmConsultaContasPagar := nil;
      end;
end;

procedure TFrmContasaPagarNew.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);
end;

procedure TFrmContasaPagarNew.btn2Click(Sender: TObject);
begin
  //chama o relatório contas a pagar
  try
  Application.CreateForm(TfrmRelContasPagar, frmRelContasPagar);
  frmRelContasPagar.ShowModal;
  finally
  frmRelContasPagar.Free;
  end;


end;

end.                                    
