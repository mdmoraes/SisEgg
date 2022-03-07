unit UContasaReceberNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExMask, JvToolEdit, JvDBControls, Mask, DBCtrls, ExtCtrls,
  ComCtrls, DB, JvExControls, JvDBLookup, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, DBSumLst;

type
  TFrmContasaReceberNew = class(TForm)
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
    lbl7: TLabel;
    dbValorTotalFixo1: TDBText;
    dbID_CPG: TDBEdit;
    lbl6: TLabel;
    dbTipoEntrada: TDBLookupComboBox;
    btn2: TSpeedButton;
    dbID_Cliente: TDBEdit;
    lbl8: TLabel;
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
  FrmContasaReceberNew: TFrmContasaReceberNew;

implementation

uses Base, UEntradadeProduto, UPedidos, UConsultaContasReceber,
  UFrmRelatorioContasReceber;

{$R *.dfm}

procedure TFrmContasaReceberNew.btnConfirmarClick(Sender: TObject);
var
   sNomeCliente : string;
begin
sNomeCliente := JvDBLookupCombo1.Text;

                DmDados.tbCPRDetalhe.First;
//                if DmDados.tbCPRDetalheTotalParcela.IsNull = True then
//                begin
                while not DmDados.tbCPRDetalhe.Eof do
                begin
                DmDados.tbCPRDetalhe.Edit;
                DmDados.tbCPRDetalheTotalParcela.Value:= DmDados.tbCPRDetalheTotVrGrade.Value;
                DmDados.tbCPRDetalhe.Post;
                dmdados.tbCPRDetalhe.Next;
                end;
//                end;

                DmDados.tbCPRMaster.Edit;
                DmDados.tbCPRMaster.Post;

                DmDados.tbCPRDetalhe.Edit;
                DmDados.tbCPRDetalhe.Post;

                DmDados.tbCPRDetalhe.FlushBuffers;
                FrmContasaReceberNew.Refresh;

                //......colocado em 20042015
//                DmDados.tbCPRMaster.Active := False;
//                DmDados.tbCPRMaster.Active := True;
//
//                DmDados.tbCPRDetalhe.Active := False;
//                DmDados.tbCPRDetalhe.Active := true;

                //.......



                ShowMessage('DADOS GRAVADOS!!');
                pnlDados.Enabled := False;
                pnlControle.Visible := True;
                pnlConfirma.Visible:= False;
//              grpPesquisaFornecedor.Visible := False;

sNomeCliente := JvDBLookupCombo1.Text;

// DmDados.tbCPRMaster.First;
 DmDados.tbCPRMaster.Locate('Cliente', sNomeCliente, [loPartialKey]);



end;

procedure TFrmContasaReceberNew.btnCancelarClick(Sender: TObject);
begin
pnlDados.Enabled := False;
pnlControle.Visible := True;
pnlConfirma.Visible:= False;
DmDados.tbCPRMaster.Cancel;
end;

procedure TFrmContasaReceberNew.btnBtnAlteraClick(Sender: TObject);
begin
DmDados.tbCPRMaster.Edit;
pnlDados.Enabled := True;
pnlControle.Visible := False;
pnlConfirma.Visible:= True;
end;

procedure TFrmContasaReceberNew.btnBtSaidaClick(Sender: TObject);
begin
close;
end;

procedure TFrmContasaReceberNew.btn3Click(Sender: TObject);
begin
 if DmDados.tbCPRMaster.Bof = True then
 begin
 ShowMessage('VOCE ESTÁ NO PRIMEIRO REGISTRO !');
 end
 else
 DmDados.tbCPRMaster.First;
end;

procedure TFrmContasaReceberNew.btn4Click(Sender: TObject);
begin
 if DmDados.tbCPRMaster.Bof = True then
 begin
 ShowMessage('VOCE ESTÁ NO PRIMEIRO REGISTRO !');
 end
 else
 DmDados.tbCPRMaster.Prior;
end;

procedure TFrmContasaReceberNew.btn5Click(Sender: TObject);
begin
 if DmDados.tbCPRMaster.Eof = True then
 begin
 ShowMessage('VOCE ESTÁ NO ÚLTIMO REGISTRO !');
 end
 else
 DmDados.tbCPRMaster.Next;

end;

procedure TFrmContasaReceberNew.btn6Click(Sender: TObject);
begin
  if DmDados.tbCPRMaster.Eof = True then
   begin
   ShowMessage('VOCE ESTÁ NO ÚLTIMO REGISTRO !');
   end
   else
   DmDados.tbCPRMaster.Last;
end;

procedure TFrmContasaReceberNew.btnBtExcluirClick(Sender: TObject);
begin
      case MessageBoxW(Handle, 'DESEJA EXCLUIR ESTE REGISTRO.. ?', 'ATENÇÃO !!!',
      MB_OKCANCEL + MB_ICONWARNING) of
      IDOK:
        begin
        DmDados.tbCPRMaster.Delete;
        end;
      IDCANCEL:
        begin
        Exit;
        end;
      end;
end;

procedure TFrmContasaReceberNew.btnBtincluirClick(Sender: TObject);
var
it:integer;
begin
       pnlDados.Enabled := True;
       pnlConfirma.visible := True;
       pnlControle.Visible:= False;

       try
          DmDados.tbCPRMaster.DisableControls;
          try
          DMDados.tbCPRMaster.IndexName:= 'idx_ID_CPG';
          DMDados.tbCPRMaster.First;
          DMDados.tbCPRMaster.Last;

          if DMDados.tbCPRMaster['ID_CPG']<> null then
          it := DMDados.tbCPRMaster['ID_CPG']
          else
          it:= 0;

          DMDados.tbCPRMaster.Insert;
          DMDados.tbCPRMaster['ID_CPG'] := it + 1;
          DmDados.tbCPRMaster['DataInclusao']:= DateToStr(Now);
          finally
          DMDados.tbCPRMaster.EnableControls;
          end;
       finally
       end;
       JvDBLookupCombo1.SetFocus;

end;

procedure TFrmContasaReceberNew.AdvSmoothCalendar1Click(Sender: TObject);
begin
//JvDBGrid1.Columns.Items[3].Field.Text:= DateToStr(AdvSmoothCalendar1.CurrentDay);
//AdvSmoothCalendar1.Visible:= False;
end;

procedure TFrmContasaReceberNew.AdvSmoothCalendar1CurrentDayClick(
  Sender: TObject; var Allow: Boolean);
begin
//JvDBGrid1.Columns.Items[3].Field.Text:= DateToStr(AdvSmoothCalendar1.CurrentDay);
//AdvSmoothCalendar1.Visible:= False;
end;

procedure TFrmContasaReceberNew.cal1Click(Sender: TObject);
begin
// JvDBGrid1.Columns.Items[3].Field.Text:= DateToStr(cal1.Date);
// cal1.Visible:= False;
end;

procedure TFrmContasaReceberNew.JvDBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmContasaReceberNew.JvDBGrid1ColExit(Sender: TObject);
begin
//  DmDados.tbCPGDetalhe.Edit;
// if JvDBGrid1.SelectedField.FieldName = 'DataParcela' then
//    DmDados.tbCPGDetalhe.Post;
// //   DmDados.tbCPGDetalhe.Edit;
//    dtpicker1.Visible := False;
//

end;

procedure TFrmContasaReceberNew.JvDBGrid1KeyPress(Sender: TObject;
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

procedure TFrmContasaReceberNew.dtpicker1Change(Sender: TObject);
begin
// if JvDBGrid1.DataSource.State in [dsEdit, dsInsert] then
//  DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;

// if DmDados.tbCPGDetalhe.State in [dsEdit, dsInsert] then
//DataSource.State in [dsEdit, dsInsert] then
//  DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;
end;

procedure TFrmContasaReceberNew.dtpicker1DropDown(Sender: TObject);
begin
//JvDBGrid1.DataSource.Edit;
end;

procedure TFrmContasaReceberNew.dtpicker1Exit(Sender: TObject);
begin
//DmDados.tbCPGDetalhe.Edit;
//DmDados.tbCPGDetalheDataParcela.Value := dtpicker1.DateTime;
//DmDados.tbCPGDetalhe.Post;
//dmdados.tbCPGDetalhe.AutoRefresh:= True;
////DmDados.tbCPGDetalhe.Edit;
end;

procedure TFrmContasaReceberNew.JvDBGrid1Exit(Sender: TObject);
begin
// DmDados.tbCPGDetalhe.Edit;
// DmDados.tbCPGDetalhe.Post;
// DmDados.tbCPGDetalhe.Edit;
end;

procedure TFrmContasaReceberNew.dbNumNFPedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if DmDados.tbCPRMasterNum_NFPEDIDO.IsNull = False then
    begin
    MessageBoxW(Handle, 'CAMPO JÁ PREENCHIDO PELO SISTEMA,' + #13#10 +
      'NÃO PODE MAIS SER ALTERADO !', 'ERRO !!', MB_OK + MB_ICONSTOP);
    Abort;
    end;
end;

procedure TFrmContasaReceberNew.JvDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_Return then
dbNumNFPedido.SetFocus;
end;

procedure TFrmContasaReceberNew.btn1Click(Sender: TObject);
begin
//     if DmDados.Tbpedidos.Locate('Ped_E', dbNumNFPedido.Text, []) then

     if DmDados.Tbpedidos.Locate('Ped_E', dbNumNFPedido.Text, []) then
     begin
     try
      Application.CreateForm(TFmPedidos, FmPedidos);
      FmPedidos.edtClienteGrid.Text:= 'contas';
      FmPedidos.ShowModal;
     finally
      FmPedidos.Free;
     end;
     end else
     MessageBoxW(Handle, 'PEDIDO NÃO ENCONTRADO!', 'ATENÇÃO !!!', MB_OK +
     MB_ICONSTOP);
end;

procedure TFrmContasaReceberNew.JvDBGrid1ColEnter(Sender: TObject);
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

procedure TFrmContasaReceberNew.DBGridEh1CellClick(Column: TColumnEh);
begin
//DBGridEh1.SelectedIndex := 4;
end;

procedure TFrmContasaReceberNew.DBGridEh1Columns3EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
 //   DBGridEh1.SelectedIndex := 4;
end;

procedure TFrmContasaReceberNew.btnSbConsultaProdutoClick(Sender: TObject);
var
   sNomeCliente : string;
begin
      sNomeCliente := JvDBLookupCombo1.Text;
      FrmConsultaContasReceber:= TFrmConsultaContasReceber.create ( application );

      FrmConsultaContasReceber.cbbCliente.Text := sNomeCliente;
      FrmConsultaContasReceber.lblcmbCliente.Caption := sNomeCliente;

      try
      FrmConsultaContasReceber.ShowModal
      finally
      FrmConsultaContasReceber.Release;
      FrmConsultaContasReceber := nil;
      end;
end;

procedure TFrmContasaReceberNew.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);
end;

procedure TFrmContasaReceberNew.btn2Click(Sender: TObject);
begin
     Try
     Application.CreateForm(TFrmRelatorioContasReceber, FrmRelatorioContasReceber);
     FrmRelatorioContasReceber.ShowModal;
     finally
     FrmRelatorioContasReceber.Free;
     end;

end;

end.
