unit UPedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
//  RXDBCtrl, RXCtrls, Variants, DB, DBIProcs, DBTables, ActnList, Menus,
  Variants, DB, DBIProcs, DBTables, ActnList, Menus,
  JvExMask, JvToolEdit, JvDBControls, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  JvComponentBase, JvFormAutoSize, JvExControls, JvCalendar,
  ComCtrls, DateUtils;

type
  TFmPedidos = class(TForm)
    PainelTitulo: TPanel;
    PainelControle: TPanel;
    PainelDados: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Btincluir: TBitBtn;
    BtnAltera: TBitBtn;
    BtExcluir: TBitBtn;
    PainelCabecalho: TPanel;
    PainelItens: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    btNota: TBitBtn;
    SbConsultaPedidos: TSpeedButton;
    btnPesquisaCliente: TSpeedButton;
    DBEdit1: TDBEdit;
    editNomeClientePedido: TDBEdit;
    DBEdit3: TDBEdit;
    edNomeVendedorPedido: TDBEdit;
    DBText2: TDBText;
    btnRecalculaLucro: TBitBtn;
    QryRef: TQuery;
    recalcPedido: TButton;
    btnreccomiss: TButton;
    ActionList1: TActionList;
    AtualizaQtdExterna: TAction;
    ExtornaExterna: TAction;
    SomaTotalExterna: TAction;
    SomaLucroExterna: TAction;
    CalculaLucroEx: TAction;
    CalculaVrEmba: TAction;
    TotalizaVrEmba: TAction;
    FiltroExterna: TAction;
    lblTotalReg: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    btnOvos: TSpeedButton;
    btnEmba: TSpeedButton;
    AtualizaConvEstoque: TAction;
    btnAtualizaEstoque: TSpeedButton;
    TotalizaCxs: TAction;
    MainMenu1: TMainMenu;
    menuConsultas: TMenuItem;
    submenuClientes: TMenuItem;
    dbPedExt: TDBEdit;
    edt1: TEdit;
    btn1: TButton;
    edDataPedido: TJvDBDateEdit;
    dbFechado: TDBEdit;
    edtFaturados: TEdit;
    dbtxtPed_Numero: TDBText;
    qryContador: TQuery;
    qryContadorMaxE: TIntegerField;
    dbPed_CodCliente: TDBEdit;
    edtClienteGrid: TEdit;
    lbl1: TLabel;
    dbchkLancado: TDBCheckBox;
    btnContasaPagar: TSpeedButton;
    actAtualizaEstoque: TAction;
    actAtualizaStatus: TAction;
    lblRef: TLabel;
    btnAcionaF4: TButton;
    JvFormAutoSize1: TJvFormAutoSize;
    grp1: TGroupBox;
    lbl3: TLabel;
    lbl2: TLabel;
    dbPrazo: TDBEdit;
    btnBuscaForma: TSpeedButton;
    dbPed_TotEmba: TDBEdit;
    lbl4: TLabel;
    dbPed_VrFinal: TDBEdit;
    lbl5: TLabel;
    qryUNI: TQuery;
    pnlCalendario: TPanel;
    lblFechar: TLabel;
    btn2: TSpeedButton;
    cal1: TMonthCalendar;
    dbForma: TDBLookupComboBox;
    PainelConfirma: TPanel;
    sbDesistir: TSpeedButton;
    btnSbConfirmar: TSpeedButton;
    btnFatura: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtSaidaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure BtDesisteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btNotaClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure sbDesistirClick(Sender: TObject);
    procedure btnSbConfirmarClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SbConsultaPedidosClick(Sender: TObject);
    procedure btConsultaEstoqueClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure btnPesquisaClienteClick(Sender: TObject);
    procedure editNomeClientePedidoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure btnCalculodeDatasClick(Sender: TObject);
    procedure edVr1Exit(Sender: TObject);
    procedure edValor2Exit(Sender: TObject);
    procedure edVr1Click(Sender: TObject);
    procedure dbVencimento1Click(Sender: TObject);
    procedure edSegParcClick(Sender: TObject);
    procedure dbDtPgt1Click(Sender: TObject);
    procedure edValor2Click(Sender: TObject);
    procedure edValor3Click(Sender: TObject);
    procedure btnCalculo1Click(Sender: TObject);
    procedure btnCalculo2Click(Sender: TObject);
    procedure btnCalcula3dataClick(Sender: TObject);
    procedure btn2DataClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRecalculaLucroClick(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormRefresh(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure recalcPedidoClick(Sender: TObject);
    procedure RxLabel10Click(Sender: TObject);
    procedure RxLabel10DblClick(Sender: TObject);
    procedure edComissaoClick(Sender: TObject);
    procedure btnFaturaClick(Sender: TObject);
    procedure btnCalculadoraClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure edValor3Exit(Sender: TObject);
    procedure edValor3Change(Sender: TObject);
    procedure edVr1Change(Sender: TObject);
    procedure edValor2Change(Sender: TObject);
    procedure btnreccomissClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnDescClick(Sender: TObject);
    procedure btnAcresClick(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure btnAtualizaEstoqueClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AtualizaQtdExternaExecute(Sender: TObject);
    procedure SomaLucroExternaExecute(Sender: TObject);
    procedure SomaTotalExternaExecute(Sender: TObject);
    procedure CalculaLucroExExecute(Sender: TObject);
    procedure CalculaVrEmbaExecute(Sender: TObject);
    procedure TotalizaVrEmbaExecute(Sender: TObject);
    procedure ExtornaExternaExecute(Sender: TObject);
    procedure FiltroExternaExecute(Sender: TObject);
    procedure rdOvosClick(Sender: TObject);
    procedure rdEmbaClick(Sender: TObject);
    procedure btnOvosClick(Sender: TObject);
    procedure btnEmbaClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure AtualizaConvEstoqueExecute(Sender: TObject);
    procedure dbVencimento1Exit(Sender: TObject);
    procedure edSegParcExit(Sender: TObject);
    procedure TotalizaCxsExecute(Sender: TObject);
    procedure submenuClientesClick(Sender: TObject);
    procedure dbVencimento1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dbVencimento1Enter(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnContasaPagarClick(Sender: TObject);
    procedure actAtualizaEstoqueExecute(Sender: TObject);
    procedure actAtualizaStatusExecute(Sender: TObject);
    procedure btnAcionaF4Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure btnBuscaFormaClick(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure dbFormaCloseUp(Sender: TObject);
    procedure cal1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);  //20082006
  private
    { Private declarations }
  public
    { Public declarations }
//    function FormataData(data:String):TDateTime;
  end;

var
  FmPedidos: TFmPedidos;
  it: Integer;

implementation

uses Base, URelOrcamento, UConsultaEstoque, UPesquisaNomeCliente,
  UFrmFormasPagamento, Interno,
  UProcuraNomeClientePedido, UProcuraporClienteouPedido, UVendedores,
  UConsultaProduto, UFaturados, UCalculadora, UConsultaEstoqueEmbalagens,
  Ucic_cgc, Rotina, UConsultadeFaturadosPendentes, UListaPedidos,
  UContasaReceberNew, UEstoque, UConsultaProdutosCadastrados,
  UConsultaContasReceber, UCadastroFormasPagamentoNew, u_parcelamento;
//     uses Base, consultaPedidos, RelPedidos;
//insuficiente

{$R *.DFM}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

function FormataData(data:String):TDateTime;
  begin     //   11/22/4444
//    Result:= StrToDate(copy(data,9,2)+'/'+copy(data,6,2)+'/'+copy(data,3,2))
    Result:= StrToDate(copy(data,1,2)+'/'+copy(data,3,2)+'/'+copy(data,5,4))
  end;

procedure TFmPedidos.SpeedButton5Click(Sender: TObject);
begin

end;
///////////21/08/2006

procedure TFmPedidos.FormRefresh(Sender: TObject);
begin

end;

////////

procedure TFmPedidos.SpeedButton1Click(Sender: TObject);
begin
    DmDados.tbPedidos.First;
end;

procedure TFmPedidos.SpeedButton2Click(Sender: TObject);
begin
    DmDados.tbPedidos.Prior;
end;

procedure TFmPedidos.SpeedButton3Click(Sender: TObject);
begin
     DmDados.tbPedidos.Next;
end;

procedure TFmPedidos.SpeedButton4Click(Sender: TObject);
begin
DmDados.tbPedidos.last;
end;

procedure TFmPedidos.BtincluirClick(Sender: TObject);
var
it:integer;
begin
    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=true;
    try
    DmDados.Tbpedidos.DisableControls;
          try
          DMDados.tbPedidos.IndexName:= 'idxPedNumero';
          DMDados.tbPedidos.First;
          DMDados.tbPedidos.Last;
          if DMDados.tbPedidos['Ped_numero']<> null then
          it := DMDados.tbPedidos['Ped_numero']
          else
          it:= 0;

          DMDados.tbPedidos.Insert;
          DMDados.tbPedidos['Ped_numero'] := it + 1;
          DmDados.Tbpedidos['Ped_Data']:=DateToStr(Now);
          DmDados.Tbpedidos['Fechado']:= 'N';
          finally
          DmDados.Tbpedidos.EnableControls;
          end;
    finally
    end;
editNomeClientePedido.SetFocus;
end;

procedure TFmPedidos.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma.Visible:=True;
//    DmDados.BancoDados.StartTransaction;
    DmDados.Tbpedidos.Edit;
//    DBEdit4.Text:= '';
//    btnRecalculaLucroClick(self);
    editNomeClientePedido.SetFocus;
end;

procedure TFmPedidos.BtExcluirClick(Sender: TObject);
begin
      //if (dmdados.Tbitens.RecordCount > 0) and (DmDados.TbpedidosFechado.Value = 'N') then
      if (DmDados.TbpedidosFechado.Value = 'N') then
      begin
      ExtornaExternaExecute(self);
      dmdados.Tbitens.Filter:= 'It_Numero='+QuotedStr(DBEdit1.Text);
      dmdados.Tbitens.Filtered:= true;
      DeleteAll(dmdados.Tbitens);
      dmdados.Tbitens.Filtered:= false;
      Dmdados.tbPedidos.Delete;
      end

      else
      Application.MessageBox('Pedido já fechado, não pode ser Excluído',
     'ATENÇÃO !', MB_OK + MB_ICONSTOP);

      PainelConfirma.Visible:=False;
      PainelDados.Enabled:= False;
      PainelControle.Visible:=True;

end;

procedure TFmPedidos.BtSaidaClick(Sender: TObject);
begin
    Close;
end;

procedure TFmPedidos.BtConfirmaClick(Sender: TObject);
begin
//    DmDados.BancoDados.Commit;
//    DMDados.Tbpedidos.Post;
//    PainelConfirma.Visible:=False;     //Marcos False
//    PainelDados.enabled:=False;        //Marcos False
//    PainelControle.Visible:=True;
end;

procedure TFmPedidos.BtDesisteClick(Sender: TObject);
begin
        DmDados.Tbpedidos.Cancel;
//        DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;
        PainelDados.Enabled:= False;
        PainelControle.Visible:=True;
end;

procedure TFmPedidos.BitBtn2Click(Sender: TObject);
begin
// PainelTitulo.SetFocus;
//    btnFoco.SetFocus;
    Close;
//    btnAtualizaEstoque.Visible:= False;
end;

procedure TFmPedidos.btNotaClick(Sender: TObject);
var
  valorParcela : Double;
  somaCX, somaBD, SomaDZ, SomaUN : Double;
//  numPedido: Integer;
begin

      try
      Application.CreateForm(TQrOrcamento,QrOrcamento);
      DmDados.tbClientes.Locate('Cli_Codigo', dbPed_CodCliente.Text, []);
//    DmDados.Tbpedidos.IndexName:='idxPedNumero';
      DmDados.Tbpedidos.SetRange([DBEdit1.Text],[DBEdit1.Text]);

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Fisica' then
          begin
          QrOrcamento.RotuloDoc1.Caption:= 'CPF: ' + DmDados.TbClientesCli_Cpf.Value;
          QrOrcamento.RotuloDoc2.Caption:= 'RG : ' + DMDados.TbClientesCli_Rg.Value;
          END;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Juridica' then
          begin
          QrOrcamento.RotuloDoc1.Caption:= 'CNPJ: ' + DmDados.TbClientesCli_CGC.Value;
          QrOrcamento.RotuloDoc2.Caption:= 'I.E.: ' + DMDados.TbClientesCli_Inscricao.Value;
          end;

      QrOrcamento.QryPedidos.ParamByName('VarPed_Num').AsInteger:= StrToInt(DBEdit1.Text);
      QrOrcamento.QryPedidos.Prepare;
      QrOrcamento.QryPedidos.Open;


      //IMPRIMINDO O TOTAL DE CX / BD / DZ / UN NO RODAPÉ DO RELATÓRIO
      somaCX := 0;
      somaBD := 0;
      SomaDZ := 0;
      SomaUN := 0;


      qryUNI.Close;
      qryUNI.SQL.Clear;
      qryUNI.SQL.Add('SELECT B.IT_REF, B.IT_UNID, B.IT_QUANTIDADE FROM PEDIDOS A, ITENS B');
      qryUNI.SQL.Add('WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_NUMERO =:VarNumPed');
      qryUNI.ParamByName('VarNumPed').AsInteger := StrToInt(DBEdit1.Text);
      qryUNI.Prepare;
      qryUNI.Open;


      qryUNI.First;
      while not qryUNI.Eof do
      begin
//          somaCX := 0;
//          somaBD := 0;         //dando erro na soma das unidades  -- FOI COLOCADO ACIMA , NÃO PODE FICAR DENTRO DO LAÇO...
//          SomaDZ := 0;
//          SomaUN := 0;

          if (qryUNI.FieldByName('it_unid').AsString = 'CX') and (qryUNI.fieldbyname('it_quantidade').AsFloat > 0) then
          begin
          somaCX:= somaCX + qryUNI.fieldbyname('it_quantidade').AsFloat;
          qryUNI.Next;
          QrOrcamento.qrlblTotCX.Enabled := True;
          QrOrcamento.qrlblTotCX.Caption := FloatToStr(somaCX) + ' CX';
          end
            else

          if (qryUNI.FieldByName('it_unid').AsString = 'BD') and (qryUNI.fieldbyname('it_quantidade').AsFloat >= 0) then
          begin
          somaBD:= somaBD + qryUNI.fieldbyname('it_quantidade').AsFloat;
          qryUNI.Next;
          QrOrcamento.qrlblTotBD.Enabled := True;
          QrOrcamento.qrlblTotBD.Caption := FloatToStr(somaBD) + ' BD';
          end else

          if (qryUNI.FieldByName('it_unid').AsString = 'DZ') and (qryUNI.fieldbyname('it_quantidade').AsFloat >= 0) then
          begin
          SomaDZ:= SomaDZ + qryUNI.fieldbyname('it_quantidade').AsFloat;
          qryUNI.Next;
          QrOrcamento.qrlblTotDZ.Enabled := True;
          QrOrcamento.qrlblTotDZ.Caption := FloatToStr(SomaDZ) + ' DZ';
          end else

          if (qryUNI.FieldByName('it_unid').AsString = 'UN') and (qryUNI.fieldbyname('it_quantidade').AsFloat >= 0) then
          begin
          SomaUN:= SomaUN + qryUNI.fieldbyname('it_quantidade').AsFloat;
          qryUNI.Next;
          QrOrcamento.qrlblTotUN.Enabled := True;
          QrOrcamento.qrlblTotUN.Caption := FloatToStr(SomaUN) + ' UN';
          end;

      end;

      //IMPRIMINDO AS PARCELAS NO RELATÓRIO....
      DmDados.tbCPRMaster.Locate('Num_NFPEDIDO', DmDados.TbpedidosPed_Numero.Value, []);

   //   if DmDados.TbpedidosPed_Forma.Value = 'Vista' then
   //   QrOrcamento.qrdbPed_Forma.Enabled := False;;;

     // if DmDados.tbCPRDetalheValorParcela.IsNull = False then
     // begin

          dmdados.tbCPRDetalhe.First;
          while not DmDados.tbCPRDetalhe.Eof do
          begin
//          valorParcela:= DmDados.tbCPRDetalheTotalParcela.Value;
//            QrOrcamento.QRLabelParcelas.Lines.Add(DmDados.tbCPRDetalheDataParcela.AsString +' - ' + 'R$'+ ' '+ FormatFloat('#,##0.00', valorParcela));
//            QrOrcamento.QRExprMemoParcelas.Lines.Add(DmDados.tbCPRDetalheDataParcela.AsString +' - ' + 'R$'+ ' '+ FormatFloat('#,##0.00', valorParcela));

          QrOrcamento.QRExprMemoParcelas.Lines.Add(DmDados.tbCPRDetalheDataParcela.AsString +' - ' + 'R$'+ ' '+ FormatFloat('#,##0.00', DmDados.tbCPRDetalheTotalParcela.Value));

          DmDados.tbCPRDetalhe.Next;
          end;
     // end;

      //Abre a bomba do Relatório chatu......
      QrOrcamento.Preview;
      QrOrcamento.QryPedidos.Close;
      DmDados.Tbpedidos.CancelRange;
//      DmDados.Tbpedidos.IndexName:='';
      finally
      QrOrcamento.Free;
      end;
end;


procedure TFmPedidos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBDateEdit1.SetFocus;
end;

procedure TFmPedidos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmPedidos.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
//    if Key = #13 then DBEdit4.SetFocus;
end;

procedure TFmPedidos.sbDesistirClick(Sender: TObject);
begin

          if (DmDados.TbpedidosFechado.Value = 'S') then
          begin
          DmDados.Tbpedidos.Cancel;
          PainelConfirma.Visible:=False;
          PainelDados.Enabled:=False;
          PainelControle.Visible:=True;
          Exit;
          end

          else
          if (DmDados.TbpedidosFechado.Value = 'N') then
          begin
          dmdados.Tbitens.Filter:= 'It_Numero='+QuotedStr(DBEdit1.Text);
          dmdados.Tbitens.Filtered:= true;
          DeleteAll(dmdados.Tbitens);
          dmdados.Tbitens.Filtered:= false;
          DmDados.Tbpedidos.Delete;

          PainelConfirma.Visible:=False;
          PainelDados.Enabled:=False;
          PainelControle.Visible:=True;
          end;

end;


procedure TFmPedidos.btnSbConfirmarClick(Sender: TObject);
var
it: Integer;
begin
   if (editNomeClientePedido.Text = '') then
   begin
     Application.MessageBox('VOCÊ NÃO PODE CONFIRMAR ' + #13#10 +
       'UM PEDIDO SEM UM CLIENTE !!!.', 'NÃO PERMITIDO !!!', MB_OK + MB_ICONSTOP);
     Exit;
   end;

   if DmDados.Tbitens.RecordCount = 0 then
   begin
   Application.MessageBox('VOCÊ NÃO PODE CONFIRMAR ' + #13#10 +
     'UM PEDIDO SEM ITENS CADASTRADOS !!!.', 'NÃO PERMITIDO !!!', MB_OK +
     MB_ICONSTOP);
   Exit;
   end;

   if (dbForma.Text = '') or (dbPrazo.Text = '')  then
        begin
        messageDlg(' A FORMA DE PAGTº E O PRAZO, NÃO PODEM FICAR EM BRANCO !',mterror,[mbok],0);
        exit;
        end;

   BEGIN
    DmDados.Tbpedidos.Edit;
        dmdados.Tbitens.First;
        while not dmdados.Tbitens.Eof do
        begin
   //     CalculaLucroExExecute(self);
        CalculaVrEmbaExecute(Self);
        //AtualizaQtdExternaExecute(self);
//        dmdados.Tbitens.Edit;
//        dmdados.TbitensStatus.Value:= 1;
//        dmdados.Tbitens.Post;
        dmdados.Tbitens.Next;
        end;

    SomaTotalExternaExecute(self);
 //   SomaLucroExternaExecute(self);
    TotalizaVrEmbaExecute(self);
   // TotalizaCxsExecute(self);
    actAtualizaEstoqueExecute(Self);
//    actAtualizaStatusExecute(self);

   // AtualizaConvEstoqueExecute(self);
   DmDados.Tbpedidos.Edit;
   DmDados.TbpedidosFechado.Value := 'S';
   dmdados.TbpedidosPed_VrFinal.Value:=
   (dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value);
   dmdados.Tbpedidos.Post;


    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
   END;

          //ROTINA GRAVA DADOS EM CONTAS A Receber
          if dmdados.TbpedidosLancado.Value = False then
          begin
          DMDados.tbCPRMaster.IndexName:= 'I_IDCPG';
          DMDados.tbCPRMaster.First;
          DMDados.tbCPRMaster.Last;
          if DMDados.tbCPRMaster['ID_CPG']<> null then
          it := DMDados.tbCPRMaster['ID_CPG']
          else
          it:= 0;
          DMDados.tbCPRMaster.Insert;
          DMDados.tbCPRMaster['ID_CPG'] := it + 1;
          DmDados.tbCPRMaster['DataInclusao']:= DateToStr(Now);


          DmDados.tbCPRMasterCliente.Value :=
          DmDados.TbpedidosPed_Cliente.Value;

          dmdados.tbCPRMasterValorTotal.Value:=
          DmDados.TbpedidosPed_VrFinal.Value;

          dmdados.tbCPRMasterValorTotalFixo.Value:=
          DmDados.TbpedidosPed_VrFinal.Value;

          dmdados.tbCPRMasterID_Cliente.Value:=
          DmDados.TbpedidosPed_CodCliente.Value;

          DmDados.tbCPRMasterNum_NFPEDIDO.Value:=
          DmDados.TbpedidosPed_Numero.Value;

          DmDados.tbCPRMaster.Edit;
          DmDados.tbCPRMaster.Post;
          end;

          if dmdados.TbpedidosLancado.Value = False then
          begin
          FrmGerarParcelamentos.edOrigem.Text := 'Pedido';

          FrmGerarParcelamentos.edForma.Text := dbprazo.Text;

          FrmGerarParcelamentos.edValorTotal.Text := DmDados.TbpedidosPed_VrFinal.AsString;
          FrmGerarParcelamentos.edPrazo.Text := DmDados.TbpedidosPed_Forma.AsString;

          FrmGerarParcelamentos.Show;
          FrmGerarParcelamentos.btnLimparClick(Sender);
          FrmGerarParcelamentos.btnGerarParcelaClick(Sender);
          end;

          //ROTINA RELANÇAR CONTAS A RECEBER, CASO HAJA ALTERAÇÃO NO PEDIDO EFETUADO.
          if (dmdados.TbpedidosLancado.Value = True) then
          begin
          DMDados.tbCPRMaster.First;
          //DmDados.tbCPRMaster.Locate('Num_NFPEDIDO', dbPedExt.Text, []);

          DmDados.tbCPRMaster.Locate('Num_NFPEDIDO', DmDados.TbpedidosPed_Numero.Value, []);

          DmDados.tbCPRMaster.Edit;
          DmDados.tbCPRMasterCliente.Value :=
          DmDados.TbpedidosPed_Cliente.Value;

          dmdados.tbCPRMasterID_Cliente.Value:=
          DmDados.TbpedidosPed_CodCliente.Value;

          dmdados.tbCPRMasterValorTotal.Value:=
          DmDados.TbpedidosPed_VrFinal.Value;

          dmdados.tbCPRMasterValorTotalFixo.Value:=
          DmDados.TbpedidosPed_VrFinal.Value;
          dmdados.tbCPRMaster.Post;

          //APAGAR TODOS OS REGISTROS DO DETALHE
              DmDados.tbCPRDetalhe.First;
              while not (DmDados.tbCPRDetalhe.Eof) do
              begin
                DmDados.tbCPRDetalhe.Delete;
                DmDados.tbCPRDetalhe.Next;
              end;
          // RECALCULAR PARCELAMENTOS E LANÇAR EM CONTAS A RECEBER
          FrmGerarParcelamentos.edOrigem.Text := 'Pedido';
          FrmGerarParcelamentos.edForma.Text := dbprazo.Text;
//          DBEdit3.Text:= FloatToStr(StringToFloat(DBEdit3.Text));
//          FrmGerarParcelamentos.edValorTotal.Text := DBEdit3.Text;

          FrmGerarParcelamentos.edValorTotal.Text := DmDados.TbpedidosPed_VrFinal.AsString;
          FrmGerarParcelamentos.edPrazo.Text := DmDados.TbpedidosPed_Forma.AsString;

          FrmGerarParcelamentos.Show;

          FrmGerarParcelamentos.btnLimparClick(Sender);
          FrmGerarParcelamentos.btnGerarParcelaClick(Sender);
          end;

          DmDados.Tbpedidos.Edit;
          dmdados.TbpedidosLancado.Value := True;
          dmdados.Tbpedidos.Post;
end;

procedure TFmPedidos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBGrid1.SetFocus;
end;

procedure TFmPedidos.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
//   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmPedidos.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 //   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmPedidos.SbConsultaPedidosClick(Sender: TObject);
begin
//    try
//    Application.CreateForm(TFrmProcuraporClienteouPedido,FrmProcuraporClienteouPedido);
//    FrmProcuraporClienteouPedido.Showmodal;
//    finally
//    FrmProcuraporClienteouPedido.Free;
//    end;


    try
    Application.CreateForm(TFormListadePedidos,FormListadePedidos);
    FormListadePedidos.Showmodal;
    finally
    FormListadePedidos.Free;
    end;
end;

procedure TFmPedidos.btConsultaEstoqueClick(Sender: TObject);
begin
//try
//   Application.CreateForm(TFrmConsultaEstoque,FrmConsultaEstoque);
//   FrmConsultaEstoque.Show;
//   finally
//   FrmConsultaEstoque.Free;
//   end;

//FrmConsultaEstoque.Show;
end;

procedure TFmPedidos.DBEdit1Change(Sender: TObject);
begin
DmDados.TbClientes.FindNearest([DBEdit1.text]);
end;

procedure TFmPedidos.edClienteChange(Sender: TObject);
begin
//DmDados.TbClientes.FindNearest([edCliente.text]);
end;

procedure TFmPedidos.btnPesquisaClienteClick(Sender: TObject);
begin
//    if dbPedExt.Text = '' then
//    begin
//      Application.MessageBox('NÃO É POSSÍVEL CADASTRAR UM PEDIDO,' + #13#10 +
//        'SEM UM NÚMERO DE PEDIDO, CLICK EM' + #13#10 +
//        'DESISTIR, E INCLUA UM NOVO PEDIDO!', 'ERRO !!!', MB_OK + MB_ICONSTOP);
//      Exit;
//    end;

        if dbchkLancado.Checked = True then
        begin
        Application.MessageBox('Pedido já foi Fechado, impossível mudar o Nome' +
          #13#10 + 'do Cliente, para Mudar o Nome Exclua esse ' + #13#10 +
          'Pedido e Crie um Novo.', 'ATENÇÃO !', MB_OK + MB_ICONWARNING);

        Exit;
        end;



    try
    Application.CreateForm(TFrmProcuraNomeClientePedido, FrmProcuraNomeClientePedido);
    FrmProcuraNomeClientePedido.ShowModal;
    finally
    FrmProcuraNomeClientePedido.Free;
    end;
end;

procedure TFmPedidos.editNomeClientePedidoChange(Sender: TObject);
begin
//DBEdit2.Text:= edNomeCliente.Caption;
//btnFaturaClick(SELF);
end;

procedure TFmPedidos.FormShow(Sender: TObject);
begin
      cal1.Date := Date;

//      if (edtClienteGrid.Text = 'cliente') or (edtClienteGrid.Text = 'contas') then
//      begin
//      ActionList1.State:= asSuspended;
//      end
//      else
//      if edtFaturados.Text = 'Fatura' then
//      begin
//      dmdados.Tbpedidos.Filtered:= False;
//      dmdados.Tbpedidos.Locate('Ped_E', FrmConsultadeFaturadosPendentes.DBGrid1.Columns.Items[0].Field.Text, []);
//      end
//      else
//      if edtFaturados.Text = '' then
//      begin
//      FiltroExternaExecute(self);
//      lblTotalReg.Caption:= IntToStr(DMDados.Tbpedidos.RecordCount);
//      end;
//FormRefresh(Sender);  //atualiza na Rede.....

DmDados.Tbpedidos.Last;
end;
                   //atualiza ...base
procedure TFmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     if edtFaturados.Text = 'Fatura' then
//     FrmConsultadeFaturadosPendentes.btnAtualizaClick(Self);
//
//     edtFaturados.Text:= '';
//     edtFaturados.Clear;
//

end;

procedure TFmPedidos.DBGrid1EditButtonClick(Sender: TObject);
begin
    Try
    Application.CreateForm(TConsultaProduto, ConsultaProduto);
    ConsultaProduto.ShowModal;
    Finally
    ConsultaProduto.Free;
    end;
end;

procedure TFmPedidos.DBGrid1ColExit(Sender: TObject);
begin

(*    If DMDados.Tbprodutos.Locate('Pro_Ref', DBGrid1.Columns.Items[2].Field.Text,[]) Then
        Begin
          dmdados.Tbpedidos.Edit;
          DMDados.Tbitens.Edit;
//          DBGrid1.Columns.Items[3].Field.Text:=DMDados.TbprodutosPro_Descricao.Value;
//          if DBGrid1.Columns.Items[7].Field.Text <> '' then
 //         CalculaLucroExExecute(self);
 //         CalculaVrEmbaExecute(self);
 //         TotalizaVrEmbaExecute(self);
          end;

   //DAR BAIXA NO ESTOQUE PARA DUZIA - DZ
   if DBGrid1.Columns.Items[7].Field.text = '' then
   begin
   dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - dmdados.TbitensIt_Quantidade.Value;
     dmdados.tbprodutos.Post;
     end;


        //DAR BAIXA NO ESTOQUE PARA UNIDADE - UN

     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'UN' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdAtUnidade.Value:=
     dmdados.TbprodutosPro_QtdAtUnidade.Value-Dmdados.TbitensIt_Quantidade.Value;
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA BANDEJA - BD
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:=
     dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 2.5);
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA CAIXA - CX
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:=
     dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 30);
     dmdados.tbprodutos.Post;
     end;

      // BAIXA NO ESTOQUE DE EMBALAGENS - POUPA
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - dmdados.TbitensIt_Quantidade.Value;
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - (2.5 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - (30 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      // BAIXA NO ESTOQUE DE EMBALAGENS - PVC
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (0.004 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (0.010 * dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (0.125*dmdados.TbitensIt_Quantidade.Value);
      dmdados.TEmbalagens.Post;
      end; *)



/////////////////////////////////

      (* //CALCULAR VALOR DA EMBALAGEM
        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'DZ') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcDz.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'BD') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcBd.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'CX') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcCx.Value);
        end;



        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'DZ') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaDz.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'BD') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaBd.Value);
        end;

        IF (FmPedidos.dbgrid1.Columns.Items[4].Field.text = 'CX') and
        (FmPedidos.dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:=
        (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaCx.Value);
        end; *)
//end;
end;

procedure TFmPedidos.btnCalculodeDatasClick(Sender: TObject);
var
  st1, st2, st3: string;
begin
    if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;


//  edPrimParc.Text:= DateToStr(now);
//
//  if edPrimParc.Text <> '' then
//  st1:= edPrimParc.Text;
//
//  if inputquery('Cálculo de data',
//    'Este cálculo mostra qual dia do mês será de uma data a "X" dias. Digite a data inicial:',
//    st1) then
//    if inputquery('Cálculo de data', 'Desta data a quantos dias? Digite o nº de dias:',
//      st2) then
//
//      st3 := DateToStr(strtodate(st1) + strtofloat(st2));
//      DmDados.Tbpedidos.Edit;
//      edPrimParc.Text:= st3;
//      DmDados.Tbpedidos.Post;
//
//      ShowMessage(formatdatetime('dd/mm/yyyy', strtodate(st3)) +
//    ' (' + formatdatetime('dddd', strtodate(st3)) + ')');
//      edVr1.SetFocus;
end;

procedure TFmPedidos.edVr1Exit(Sender: TObject);
begin
{    if edVr1.Text <> '' then
    begin
    dmdados.Tbpedidos.edit;
    dmdados.TbpedidosPago1.Value:= False;
  //  edSegParc.SetFocus;
    dmdados.Tbpedidos.Post;
    end; }
end;

procedure TFmPedidos.edValor2Exit(Sender: TObject);
begin
{    if edValor2.Text <> '' then
    begin
    dmdados.Tbpedidos.edit;
    dmdados.TbpedidosPago2.Value:= False;
    dmdados.Tbpedidos.Post;
    end;}
end;

procedure TFmPedidos.edVr1Click(Sender: TObject);
begin
 {   if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmPedidos.dbVencimento1Click(Sender: TObject);
begin
   { if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmPedidos.edSegParcClick(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmPedidos.dbDtPgt1Click(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmPedidos.edValor2Click(Sender: TObject);
begin
   { if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;}
end;

procedure TFmPedidos.edValor3Click(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmPedidos.btnCalculo1Click(Sender: TObject);
begin
//  if DBEdit3.Text = '' then
//    begin
//    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
//    exit;
//    end;
//DBEdit3.Text:= FloatToStr(StringToFloat(DBEdit3.Text));
//edVr1.Text:= FloatToStr(StringToFloat(edVr1.Text));
//VrFinal:= StrToFloat(DBEdit3.Text);
//Vr1:= StrToFloat(edVr1.Text);
//DMDados.Tbpedidos.Edit;
//edValor2.Text:= FloatToStr(VrFinal - Vr1);
//DMDados.Tbpedidos.Post;
////edSegParc.SetFocus;
end;

procedure TFmPedidos.btnCalculo2Click(Sender: TObject);
//var
//VrFinal, Vr1, Vr2: Real;
begin
(*    if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;
DBEdit3.Text:= FloatToStr(StringToFloat(DBEdit3.Text));
VrFinal:= StrToFloat(DBEdit3.Text);
edVr1.Text:= FloatToStr(StringToFloat(edVr1.Text));
edValor2.Text:= FloatToStr(StringToFloat(edValor2.Text));
Vr1:= StrToFloat(edVr1.Text);
Vr2:= StrToFloat(edValor2.Text);
DMDados.Tbpedidos.Edit;
edValor3.Text:= FloatToStr(VrFinal - Vr1 -Vr2);
DMDados.Tbpedidos.Post;
//edParcTerc.SetFocus;  *)
end;

procedure TFmPedidos.btnCalcula3dataClick(Sender: TObject);
begin
//    if DBEdit3.Text = '' then
//    begin
//    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
//    exit;
//    end;
//
//  if edSegParc.Text <> '' then
//  st11:= edSegParc.Text;

{  if inputquery('Cálculo da 3ª data',
    'Este cálculo mostra qual dia do mês será de uma data a "X" dias. Digite a data inicial:',
    st11) then
    if inputquery('Cálculo de 3ª data', 'Desta data a quantos dias? Digite o nº de dias:',
      st12) then

      st13 := DateToStr(strtodate(st11) + strtofloat(st12));
      DmDados.Tbpedidos.Edit;
      edParcTerc.Text:= st13;
      DmDados.Tbpedidos.Post;

      ShowMessage(formatdatetime('dd/mm/yyyy', strtodate(st13)) +
      ' (' + formatdatetime('dddd', strtodate(st13)) + ')');
      edValor3.SetFocus;  }
end;

procedure TFmPedidos.btn2DataClick(Sender: TObject);
begin
//    if DBEdit3.Text = '' then
//    begin
//    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
//    exit;
//    end;
//
//if edPrimParc.Text <> '' then
//stdata2:= edPrimParc.Text;
////edSegParc.Text:= edPrimParc.Text;

//if inputquery('Cálculo da 2ª data',
//    'Este cálculo mostra qual dia do mês será de uma data a "X" dias. Digite a data inicial:',
//    stdata2) then
//    if inputquery('Cálculo de 2ª data', 'Desta data a quantos dias? Digite o nº de dias:',
//      stdias2) then
//
//      stresultado2 := DateToStr(strtodate(stdata2) + strtofloat(stdias2));
//      DmDados.Tbpedidos.Edit;
//      edSegParc.Text:= stresultado2;
//      DmDados.Tbpedidos.Post;
//
//      ShowMessage(formatdatetime('dd/mm/yyyy', strtodate(stresultado2)) +
//    ' (' + formatdatetime('dddd', strtodate(stresultado2)) + ')');
//      edValor2.SetFocus;
end;

procedure TFmPedidos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ENTER COMO TAB NO GRID.....
  if (KEY = vk_Down) or (key = vk_left) Then
//  CalculaVrEmbaExecute(self);
//  TotalizaVrEmbaExecute(self);
  SomaTotalExternaExecute(self);

  if KEY = vk_Return Then
  DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1;

    //volta o foco pro inicio e insere registro
       {   if key = vk_tab then
          if DBGrid1.Columns.Items[6].Field.Text <> '' then
          begin
          dmdados.Tbitens.Next;
          dmdados.Tbitens.Append;
          DBGrid1.SelectedIndex:= 2;
          end;}


  //RETORNAR O ITEM PARA O ESTOQUE, SE USAR CTRL + DEL....
     if ((Shift = [ssCtrl]) and (key = vk_delete)) THEN
      if MessageDlg('ATENÇÃO ! SE CONFIRMAR SIM!  VC. DEVE APAGAR O REGISTRO ' +#13+
                    'POIS O ITEM JÁ FOI DEVOLVIDO AO ESTOQUE' +#13+
                    'SE NÃO !!!...,  CLIQUE  <NÃO> E DEPOIS <CANCELA>',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      BEGIN
      ExtornaExternaExecute(self);
      //SHOWMESSAGE('O ITEM SERÁ DEVOLVIDO AO ESTOQUE! CONFIRMA EXCLUIR ?');
      END

      ELSE
      EXIT;
         if dmdados.Tbitens.State = dsEdit then
         if dbgrid1.SelectedIndex = 2 then
         if (DBGrid1.Columns.Items[13].Field.Text = '1') AND
         (KEY <> VK_LEFT) or (KEY <> VK_RIGHT) or
         (KEY <> VK_TAB) or (KEY <> VK_UP) or (KEY <> VK_DOWN) then
          begin
          showmessage('PARA ALTERAR A REFERÊNCIA,' +#13+
                      'DELETE ESSE ITEM PRIMEIRO,' +#13+
                      'E DEPOIS CADASTRE O NOVO');
          DMDados.Tbitens.Cancel;
          EXIT;
          END;


    if (Key = vk_F4) and (DBGrid1.SelectedIndex = 2) then
    Try
    Application.CreateForm(TConsultaProduto, ConsultaProduto);
    ConsultaProduto.ShowModal;
    Finally
    ConsultaProduto.Free;
    end;


//recalcPedidoClick(self);
//btnRecalculaLucroClick(self);
end;

procedure TFmPedidos.btnRecalculaLucroClick(Sender: TObject);
var
valtot: double;
begin
      with DmDados.Tbitens do
      begin
            valtot := 0;
//            DisableControls;      btnRecalculaLucroClick
            first;
            while not eof do
            begin
            valtot:= valtot + DmDados.TbitensValorLucro.Value ;
            next;
            end;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_Lucro').asfloat := valtot;
dmdados.Tbpedidos.post;
//dmdados.Tbitens.EnableControls;
//end;

end;

procedure TFmPedidos.DBEdit4Change(Sender: TObject);
begin
{DmDados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value+
dmdados.TbpedidosPed_VrDesconto.Value; }

{DmDados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value;}
//DmDados.TbpedidosPed_Lucro.AsCurrency:= DmDados.TbpedidosPed_Lucro.AsCurrency - DmDados.TbpedidosPed_VrDesconto.AsCurrency;
end;

procedure TFmPedidos.DBEdit4Click(Sender: TObject);
begin
{    if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmPedidos.FormActivate(Sender: TObject);
begin
//Application.OnActivate := FormRefresh;   //atualização na Rede
end;

procedure TFmPedidos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//if DbGrid1.SelectedIndex = 2 then
//Key := AnsiUpperCase(Key)[1];  //20/08/2006 - TUDO MAIÚSCULO NA GRID


//PROC ALTERAÇÃO DE QUANTIDADE.....
      if DbGrid1.Columns.Items[13].Field.Text = '1' then
      begin
//      SbDesistir
      SbDesistirClick(Sender);
      showmessage('VENDA JÁ FECHADA !' +#13+
                  'SE QUISER ALTERAR DADOS DELETE' +#13+
                  'A LINHA TODA E CADASTRE NOVOS DADOS!');
      end;
end;

procedure TFmPedidos.DBGrid1Exit(Sender: TObject);
begin
  {  QryRef.Close;
    QryRef.ParamByName('VarNumPed').AsInteger:= StrToInt(DBEdit1.Text);
    QryRef.Prepare;
    QryRef.Open;
    While not QryRef.Eof do
    begin
        if QryRef.Locate('It_Ref', DBGrid1.Columns.Items[2].Field.Text, []) then
          begin
          showmessage('ITEM JÁ CADASTRADO !');
          exit;
        //  QryRef.Next;
         END;
    QryRef.Next;
    end;}   //NAUM FUNCIONOU ESSA BOMBA !!.....(COMO EU QUERIA...)
end;

procedure TFmPedidos.DBGrid1CellClick(Column: TColumn);
begin

  if dbgrid1.Columns.Items[13].Field.text = '1' then
  BEGIN
  SHOWMESSAGE('VENDA JÁ FECHADA !' +#13+
              'DELETE ESTE ITEM PRIMEIRO');
  editNomeClientePedido.SetFocus;
  exit;
  end;

(*//PROC ALTERAÇÃO DE QUANTIDADE.....
//if (DbGrid1.SelectedIndex = 6) and (dbgrid1.Columns.Items[7].Field.text <> '') then
if (DbGrid1.SelectedIndex in [2,4,5,6]) and (dbgrid1.Columns.Items[7].Field.text <> '') then
if (dmdados.TbitensIt_Quantidade.IsNull = False) or
   (dmdados.TbitensIt_Unid.IsNull = false) or
   (dmdados.TbitensIt_TipoEmb.IsNull = false) then
if MessageDlg('DESEJA ALTERAR DADOS DESTE ITEM ?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      BEGIN
      SHOWMESSAGE('DELETE ESTE ITEM PRIMEIRO');
      exit;
      END
      ELSE
      EXIT; *)
end;

procedure TFmPedidos.recalcPedidoClick(Sender: TObject);
var
valtotped: Real;   //ERA DOUBLE  15/04/2014
begin
      with DmDados.Tbitens do
      begin
            valtotped := 0;
            DisableControls;
            first;
            while not eof do
            begin
            valtotped:= valtotped + dmdados.TbitensValoritem.Value ;
            next;
            end;
            enablecontrols;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_Valor').asfloat := valtotped;
dmdados.Tbpedidos.post;
end;

procedure TFmPedidos.RxLabel10Click(Sender: TObject);
begin
if DBText2.Visible = True then
DBText2.Visible:= False;
end;

procedure TFmPedidos.RxLabel10DblClick(Sender: TObject);
begin
if DBText2.Visible = False then
DBText2.Visible:= True;
end;

procedure TFmPedidos.edComissaoClick(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA!');
end;

procedure TFmPedidos.btnFaturaClick(Sender: TObject);
  var
   sNomeCliente : string;
begin
   if Trim(editNomeClientePedido.text) = '' then
   begin
       ShowMessage('Escolha um Cliente primeiro !');
       Exit;
   end;

   btnContasaPagarClick(Sender);

//   sNomeCliente := editNomeClientePedido.Text;
//   try
//   Application.CreateForm(TFrmConsultaContasReceber, FrmConsultaContasReceber);
//   FrmConsultaContasReceber.cbbCliente.Text := sNomeCliente;
// //  FrmConsultaContasReceber.rbPendente.Checked := True;
//   FrmConsultaContasReceber.lblcmbCliente.Caption := sNomeCliente;
//   FrmConsultaContasReceber.ShowModal;
//   finally
//   FrmConsultaContasReceber.Free;
//   end;
end;

procedure TFmPedidos.btnCalculadoraClick(Sender: TObject);
begin
        try
        application.CreateForm(TFormCalculadora,FormCalculadora);
        FormCalculadora.ShowModal;
        finally
        FormCalculadora.Free;
        end;
end;

procedure TFmPedidos.chk1Click(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;}

end;

procedure TFmPedidos.chk2Click(Sender: TObject);
begin
   { if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }

end;

procedure TFmPedidos.chk3Click(Sender: TObject);
begin
   { if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;}

end;

procedure TFmPedidos.edValor3Exit(Sender: TObject);
begin
{    if edValor3.Text <> '' then
    begin
    dmdados.Tbpedidos.edit;
    dmdados.TbpedidosPago3.Value:= False;
//    dmdados.Tbpedidos.Post;
    end; }
end;

procedure TFmPedidos.edValor3Change(Sender: TObject);
begin
{   if edValor3.Text <> '' then
    begin
  //  edComissao.SetFocus;
    dmdados.Tbpedidos.edit;
    dmdados.TbpedidosPago3.Value:= False;
    dmdados.Tbpedidos.Post;
    end;}
end;

procedure TFmPedidos.edVr1Change(Sender: TObject);
begin
{    if edVr1.Text <> '' then
    begin
    dmdados.Tbpedidos.edit;
    dmdados.TbpedidosPago1.Value:= False;
    dmdados.Tbpedidos.Post;
    end;}
end;

procedure TFmPedidos.edValor2Change(Sender: TObject);
begin
{    if edVr1.Text <> '' then
    begin
    dmdados.Tbpedidos.edit;
    dmdados.TbpedidosPago2.Value:= False;
    dmdados.Tbpedidos.Post;
    end;}
end;

procedure TFmPedidos.btnreccomissClick(Sender: TObject);
var
totcomiss: double;
begin
      with DmDados.Tbitens do
      begin
            totcomiss := 0;
//            DisableControls;      btnRecalculaLucroClick
            first;
            while not eof do
            begin
//            totcomiss:= totcomiss + DmDados.TbitensValorLucro.Value ;
            totcomiss:= totcomiss + DmDados.TbitensTotComissao.Value ;
            next;
            end;
end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_VrComissao').asfloat := totcomiss;
dmdados.Tbpedidos.post;
//dmdados.Tbitens.EnableControls;
//end;

end;

procedure TFmPedidos.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = VK_ESCAPE then
//gboxTabelaPrecos.Visible:= False;
end;

procedure TFmPedidos.DBGrid1DblClick(Sender: TObject);
begin
//      if DbGrid1.SelectedIndex = 7 then
//      begin
//      dmdados.Tbprodutos.Locate('Pro_Ref', DBGrid1.Columns.Items[2].Field.Text,[]);
//      gboxTabelaPrecos.Visible:= True;
//      lblRef.Caption:= dmdados.TbprodutosPro_Ref.AsString;
//      lblDescricao.Caption:= dmdados.TbprodutosPro_Descricao.AsString;
//    //  edPrecoAP.Text:= dmdados.TbprodutosPro_VendaAP1.AsString;
//      edPrecoAP.Text:= dmdados.TbprodutosPro_PrecoMedio.AsString;
//      edPrecoAV.Text:= '';
//      edPBandeja.Text:= '';
//      edPCaixa.Text:= '';
//
//      //edPrecoAV.Text:= dmdados.TbprodutosPro_VendaAV1.AsString;
//      end;
END;

procedure TFmPedidos.btnDescClick(Sender: TObject);
begin
{dmdados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
(dmdados.TbpedidosPed_VrFinal.Value - dmdados.TbpedidosPed_VrDesconto.Value);

dmdados.TbpedidosPed_Lucro.Value:=
(dmdados.TbpedidosPed_Lucro.Value - dmdados.TbpedidosPed_VrDesconto.Value);}
end;

procedure TFmPedidos.btnAcresClick(Sender: TObject);
begin
{dmdados.Tbpedidos.Edit;
//dmdados.TbpedidosPed_VrFinal.AsString:= '';
dmdados.TbpedidosPed_VrFinal.Value:=
(dmdados.TbpedidosPed_VrFinal.Value + dmdados.TbpedidosPed_VrDesconto.Value);

dmdados.TbpedidosPed_Lucro.Value:=
(dmdados.TbpedidosPed_Lucro.Value + dmdados.TbpedidosPed_VrDesconto.Value);}
end;
                        
procedure TFmPedidos.DBEdit2Change(Sender: TObject);
begin
{DmDados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value;}
end;

procedure TFmPedidos.btnAtualizaEstoqueClick(Sender: TObject);
begin
    dmdados.Tbpedidos.First;
    while not dmdados.Tbpedidos.Eof do
    begin
    dmdados.Tbitens.First;
    while not dmdados.Tbitens.Eof do
    begin
      //DAR BAIXA NO ESTOQUE PARA DUZIA - DZ
    if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ' THEN
    Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - dmdados.TbitensIt_Quantidade.Value;
     dmdados.tbprodutos.Post;
    end;

     //DAR BAIXA NO ESTOQUE PARA BANDEJA - BD
    if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:=
     dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 2.5);
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA CAIXA - CX
     if FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:=
     dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 30);
     dmdados.tbprodutos.Post;
     end;

      // BAIXA NO ESTOQUE DE EMBALAGENS - POUPA
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - 1;
      dmdados.TEmbalagens.Post;
      end;

     { if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - 2.5;
      dmdados.TEmbalagens.Post;
      end; }

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - 30;
      dmdados.TEmbalagens.Post;
      end;
      // BAIXA NO ESTOQUE DE EMBALAGENS - PVC
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - 0.004;
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - 0.010;
      dmdados.TEmbalagens.Post;
      end;

      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - 0.125;
      dmdados.TEmbalagens.Post;
      end;
      dmdados.Tbitens.Next;
      end;
   dmdados.Tbpedidos.Next;
   end;
   btnAtualizaEstoque.Visible:= False;
end;

procedure TFmPedidos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    //PINTANDO A GRID...GRID ZEBRADA...
    if not odd(DbGrid1.DataSource.DataSet.RecNo) then
    if not (gdSelected in State) then
      With DBGrid1 do
      begin
        Canvas.Brush.Color:= $00EFFAE5; //cor verde claro
        Canvas.FillRect(Rect);          //pinta a célula
        DefaultDrawDataCell(Rect,Column.Field,State); //pinta o texto
      end;
end;

procedure TFmPedidos.AtualizaQtdExternaExecute(Sender: TObject);
begin
 //   dmdados.Tbprodutos.Locate('Pro_Ref', Dbgrid1.Columns.Items[2].Field.Text, []);

    DmDados.tbEstoque.Locate('Ref', Dbgrid1.Columns.Items[2].Field.Text, []);
   if DBGrid1.Columns.Items[13].Field.text = '0' then
     begin
     DmDados.tbEstoque.Edit;
     DmDados.tbEstoqueQtd.Value := (DmDados.tbEstoqueQtd.Value - Dmdados.TbitensIt_QtdOvo.Value/360);
     DmDados.tbEstoque.Post;
     end;


      // BAIXA NO ESTOQUE DE EMBALAGENS - POUPA
      if (DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
//      dmdados.TEmbalagensQtdAtualPoupa.Value - 1;
      dmdados.TEmbalagensQtdAtualPoupa.Value - dmdados.TbitensIt_Quantidade.Value;
      dmdados.TEmbalagens.Post;
      end;

      //PARA BANDEJA, NÃO É DADA BAIXA EM EMBALAGEM,  SE FOR POUPA !!!.
     { if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - 2.5;
      dmdados.TEmbalagens.Post;
      end; }

      if (DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - (dmdados.TbitensIt_Quantidade.Value * 30);
      dmdados.TEmbalagens.Post;
      end;

      // BAIXA NO ESTOQUE DE EMBALAGENS - PVC
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (dmdados.TbitensIt_Quantidade.Value * 0.004);
      dmdados.TEmbalagens.Post;
      end;

      if (DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (dmdados.TbitensIt_Quantidade.Value * 0.010);
      dmdados.TEmbalagens.Post;
      end;

      if (DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value - (dmdados.TbitensIt_Quantidade.Value * 0.125);
      dmdados.TEmbalagens.Post;
      end;
   
end;

procedure TFmPedidos.SomaLucroExternaExecute(Sender: TObject);
var
valtot: double;
begin
      with DmDados.Tbitens do
      begin
            valtot := 0;
//            DisableControls;      btnRecalculaLucroClick
            first;
            while not eof do
            begin
            valtot:= valtot + DmDados.TbitensValorLucro.Value ;
            next;
            end;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_Lucro').asfloat := valtot;
//dmdados.Tbpedidos.post;
end;


procedure TFmPedidos.SomaTotalExternaExecute(Sender: TObject);
var
valtotped: Real;  // Era double 2014-04-15 
begin
      with DmDados.Tbitens do
      begin
            valtotped := 0;
            DisableControls;
            first;
            while not eof do
            begin
            valtotped:= valtotped + dmdados.TbitensValoritem.Value ;
            next;
            end;
            enablecontrols;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_Valor').Value := valtotped;
end;

procedure TFmPedidos.CalculaLucroExExecute(Sender: TObject);
begin
//    dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);
//
//    //CALCULA ITEM LUCRO PARA UNIDADE 'UN' E ALHO
//    if DBGrid1.Columns.Items[4].Field.Text = 'UN' then
//    begin
//    dmdados.Tbitens.Edit;
//    dmdados.TbitensIt_Lucro.Value:=
//    (dmdados.TbitensIt_Valor.Value - dmdados.TbprodutosPro_PrecoMedio.Value);
//    dmdados.Tbitens.Post;
//    end;
//
//    //CALCULA ITEM LUCRO PARA DUZIA
//    if DBGrid1.Columns.Items[4].Field.Text = 'DZ' then
//    begin
//    dmdados.Tbitens.Edit;
//    dmdados.TbitensIt_Lucro.Value:=
//    (dmdados.TbitensIt_Valor.Value - dmdados.TbprodutosPro_PrecoMedio.Value);
//    dmdados.Tbitens.Post;
//
//    {dmdados.TbitensValorLucro.Value:=
//    (dmdados.TbitensIt_Quantidade.Value * dmdados.TbitensIt_Lucro.Value);
//    dmdados.Tbitens.Post;}
//    end;
//
//    //CALCULA ITEM LUCRO PARA BANDEJA - BD
//    if DBGrid1.Columns.Items[4].Field.Text = 'BD' then
//    begin
//    dmdados.Tbitens.Edit;
//    dmdados.TbitensIt_Lucro.Value:=
//    (dmdados.TbitensIt_Valor.Value - (dmdados.TbprodutosPro_PrecoMedio.Value*2.5));
//    dmdados.Tbitens.Post;
//    END;
//
//    //CALCULA ITEM LUCRO PARA CAIXA - CX
//    if DBGrid1.Columns.Items[4].Field.Text = 'CX' then
//    begin
//    dmdados.Tbitens.Edit;
//    dmdados.TbitensIt_Lucro.Value:=
//    (dmdados.TbitensIt_Valor.Value - (dmdados.TbprodutosPro_PrecoMedio.Value*30));
//    dmdados.Tbitens.Post;
//    END;

end;

procedure TFmPedidos.CalculaVrEmbaExecute(Sender: TObject);
begin

       dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);

       if dbgrid1.Columns.Items[5].Field.text = '' then
       begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= 0;
       end
       else

       IF (dbgrid1.Columns.Items[4].Field.text = 'DZ') and
        (dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= dmdados.TEmbalagensValorPvcDz.Value;
     //   (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcDz.Value);
        end;

        IF (dbgrid1.Columns.Items[4].Field.text = 'BD') and
        (dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= dmdados.TEmbalagensValorPvcBd.Value;
      //  (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcBd.Value);
        end;

        IF (dbgrid1.Columns.Items[4].Field.text = 'CX') and
        (dbgrid1.Columns.Items[5].Field.text = 'PVC')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= dmdados.TEmbalagensValorPvcCx.Value;
        //(dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPvcCx.Value);
        end;

        //CALCULA VALOR DE EMBALAGEM PARA POUPA

        IF (dbgrid1.Columns.Items[4].Field.text = 'DZ') and
        (dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= dmdados.TEmbalagensValorPoupaDz.Value;
       // (dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaDz.Value);
        end;

        IF (dbgrid1.Columns.Items[4].Field.text = 'BD') and
        (dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= dmdados.TEmbalagensValorPoupaBd.Value;
        //(dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaBd.Value);
        end;

        IF (dbgrid1.Columns.Items[4].Field.text = 'CX') and
        (dbgrid1.Columns.Items[5].Field.text = 'Poupa')  then
        begin
        dmdados.Tbitens.Edit;
        dmdados.TbitensIt_VrEmbalagem.Value:= dmdados.TEmbalagensValorPoupaCx.Value;
        //(dmdados.TbitensIt_Quantidade.Value * dmdados.TEmbalagensValorPoupaCx.Value);
        end;
end;

procedure TFmPedidos.TotalizaVrEmbaExecute(Sender: TObject);
var
ValorEmba: Double;
begin
//  tbItens.DisableControls;
  Dmdados.tbItens.First;
  ValorEmba:= 0;
        while not(Dmdados.tbItens.Eof) do
        Begin
        ValorEmba:= ValorEmba+Dmdados.TbitensTotalEmba.Value;
        Dmdados.TbItens.Next;
        end;
        Dmdados.tbPedidos.Edit;
        Dmdados.TbpedidosPed_TotEmba.Value:= ValorEmba;
//        tbPedidos.post;
    //    tbItens.EnableControls;
end;

procedure TFmPedidos.ExtornaExternaExecute(Sender: TObject);
begin
//   //DEVOLVER AO ESTOQUE PARA DUZIA - DZ

     DmDados.tbEstoque.Locate('Ref', Dbgrid1.Columns.Items[2].Field.Text, []);
     if DBGrid1.Columns.Items[13].Field.text = '1' then
     begin
     DmDados.tbEstoque.Edit;
     DmDados.tbEstoqueQtd.Value := (DmDados.tbEstoqueQtd.Value + Dmdados.TbitensIt_QtdOvo.Value/360);
     DmDados.tbEstoque.Post;
     end;



// dmdados.Tbprodutos.Locate('Pro_Ref', Dbgrid1.Columns.Items[2].Field.Text, []);
//
//
//       //DAR BAIXA NO ESTOQUE PARA UNIDADE - UN
//     if DBGrid1.Columns.Items[4].Field.text = 'UN' THEN
//     Begin
//     dmdados.Tbprodutos.Edit;
//     dmdados.TbprodutosPro_QtdAtUnidade.Value:= dmdados.TbprodutosPro_QtdAtUnidade.Value+Dmdados.TbitensIt_Quantidade.Value;
//     dmdados.tbprodutos.Post;
//     end;
//
//     if DBGrid1.Columns.Items[4].Field.text = 'DZ' THEN
//     Begin
//     dmdados.Tbprodutos.Edit;
//     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value + dmdados.TbitensIt_Quantidade.Value;
//     dmdados.tbprodutos.Post;
//     end;
//
//     //DEVOLVER AO ESTOQUE PARA BANDEJA - BD
//     if DBGrid1.Columns.Items[4].Field.text = 'BD' THEN
//     Begin
//     dmdados.Tbprodutos.Edit;
//     dmdados.TbprodutosPro_QtdeAtual.Value:=
//     dmdados.TbprodutosPro_QtdeAtual.Value + (dmdados.TbitensIt_Quantidade.Value * 2.5);
//     dmdados.tbprodutos.Post;
//     end;
//
//     //DEVOLVER AO ESTOQUE PARA CAIXA - CX
//     if DBGrid1.Columns.Items[4].Field.text = 'CX' THEN
//     Begin
//     dmdados.Tbprodutos.Edit;
//     dmdados.TbprodutosPro_QtdeAtual.Value:=
//     dmdados.TbprodutosPro_QtdeAtual.Value + (dmdados.TbitensIt_Quantidade.Value * 30);
//     dmdados.tbprodutos.Post;
//     end;



      // DEVOLVER AO ESTOQUE DE EMBALAGENS - POUPA
      if (DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value + dmdados.TbitensIt_Quantidade.Value;
      dmdados.TEmbalagens.Post;
      end;

     { if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (FmPedidos.DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value - 2.5;
      dmdados.TEmbalagens.Post;
      end; }

      if (DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (DBGrid1.Columns.Items[5].Field.text = 'Poupa') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPoupa.Value:=
      dmdados.TEmbalagensQtdAtualPoupa.Value + (dmdados.TbitensIt_Quantidade.Value * 30);
      dmdados.TEmbalagens.Post;
      end;

      // DEVOLVER AO ESTOQUE DE EMBALAGENS - PVC
      if (FmPedidos.DBGrid1.Columns.Items[4].Field.text = 'DZ') AND
      (DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value + (dmdados.TbitensIt_Quantidade.Value * 0.004);
      dmdados.TEmbalagens.Post;
      end;

      if (DBGrid1.Columns.Items[4].Field.text = 'BD') AND
      (DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value + (dmdados.TbitensIt_Quantidade.Value * 0.010);
      dmdados.TEmbalagens.Post;
      end;

      if (DBGrid1.Columns.Items[4].Field.text = 'CX') AND
      (DBGrid1.Columns.Items[5].Field.text = 'PVC') then
      begin
      dmdados.TEmbalagens.Edit;
      dmdados.TEmbalagensQtdAtualPvc.Value:=
      dmdados.TEmbalagensQtdAtualPvc.Value + (dmdados.TbitensIt_Quantidade.Value * 0.125);
      dmdados.TEmbalagens.Post;
      end;
end;

procedure TFmPedidos.FiltroExternaExecute(Sender: TObject);
Var
     Texto : String;
begin
     Texto:= 'VENDA BALCÃO';
     dmdados.Tbpedidos.Filter := 'Ped_Cliente <> '+QuotedStr(Texto);
     dmdados.Tbpedidos.Filtered := True;
     DmDados.Tbpedidos.Last;
end;

procedure TFmPedidos.rdOvosClick(Sender: TObject);
begin
      {try
      application.CreateForm(TFrmConsultaEstoque, FrmConsultaEstoque);
      FrmConsultaEstoque.ShowModal;
      finally
      FrmConsultaEstoque.Free;
      end; }

end;

procedure TFmPedidos.rdEmbaClick(Sender: TObject);
begin
   { try
    application.CreateForm(TFrmConsultaEstoqueEmbalagens, FrmConsultaEstoqueEmbalagens);
    FrmConsultaEstoqueEmbalagens.ShowModal;
    finally
    FrmConsultaEstoqueEmbalagens.Free;
    end; }
end;

procedure TFmPedidos.btnOvosClick(Sender: TObject);
begin
   Try
   Application.CreateForm(TFrmEstoque, FrmEstoque);
   FrmEstoque.ShowModal;
   Finally
   FrmEstoque.Free;
   end;
end;

procedure TFmPedidos.btnEmbaClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmConsultaEstoqueEmbalagens, FrmConsultaEstoqueEmbalagens);
      FrmConsultaEstoqueEmbalagens.ShowModal;
      finally
      FrmConsultaEstoqueEmbalagens.Free;
      end;
end;

procedure TFmPedidos.SpeedButton8Click(Sender: TObject);
//var
//a,b: Real;
begin
(*a:= StrToFloat(edDescAcres.Text);
edDescAcres.Text:= FloatToStr(-a);
edDescAcres.Text:= FloatToStr(StringToFloat(edDescAcres.Text));
dmdados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrDesconto.AsString:= edDescAcres.Text; }
//SbConfirmarClick(self); *)
end;

procedure TFmPedidos.SpeedButton9Click(Sender: TObject);
begin
(*edDescAcres.Text:= edDescAcres.Text;
edDescAcres.Text:= FloatToStr(StringToFloat(edDescAcres.Text));
dmdados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrDesconto.AsString:= edDescAcres.Text;
//SbConfirmarClick(self); *)
end;

procedure TFmPedidos.AtualizaConvEstoqueExecute(Sender: TObject);
//var
//a,b: Real;
begin
//    dmdados.Tbprodutos.DisableControls;
//    dmdados.Tbprodutos.First;
//    while not dmdados.Tbprodutos.Eof do
//    begin
//    dmdados.Tbprodutos.Edit;
//    dmdados.TbprodutosPro_QtdAtBandeja.Value:=
//    (dmdados.TbprodutosPro_QtdeAtual.Value / 2.5);
//    //Arredontamento do campo QtdAtBandeja.
//    a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
//    a:= Trunc(a * 100)/100;
//    dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
//
//
//    dmdados.TbprodutosPro_QtdAtCaixa.Value:=
//    (dmdados.TbprodutosPro_QtdeAtual.Value / 30);
//    //Arredontamento do campo QtdAtCaixa
//    b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
//    b:= Trunc(b * 100)/100;
//    dmdados.TbprodutosPro_QtdAtCaixa.Value:= b;
//    dmdados.Tbprodutos.Post;
//    dmdados.Tbprodutos.Next;
//    end;
//    dmdados.Tbprodutos.EnableControls;
end;
procedure TFmPedidos.dbVencimento1Exit(Sender: TObject);
begin
//Label2.Caption:=formatdatetime('dddd,d  "de"  mmmm "de"  yyyy',date);;
//tbFormataDATA
//FormatDateTime('dd"/"mm"/"yyyy', Date);
//edPrimParc.Text:= FormatDateTime(edPrimParc.Text);
//if edPrimParc.Text <> '' then
//edPrimParc.Text := tbFormataDATA(edPrimParc.Text);
end;

procedure TFmPedidos.edSegParcExit(Sender: TObject);
begin
//if edSegParc.Text <> '' then
//edDt2pagto.Text := edSegParc.Text;
end;

procedure TFmPedidos.TotalizaCxsExecute(Sender: TObject);
var
TotCx: Real;
begin //  arredon
//executa a totalização de venda de ovos em <cxs>
//  Dmdados.tbItens.DisableControls;
//  Dmdados.tbItens.First;
//  TotCx:= 0;
//        while not(Dmdados.tbItens.Eof) do
//        Begin
//        TotCx:= TotCx+Dmdados.TbitensIt_QtdOvo.Value;
//        Dmdados.TbItens.Next;
//        end;
//        Dmdados.tbPedidos.Edit;
//        TotCx:= (TotCx/30);
//        //Arredonda casas decimais para 2 dígitos
//  //      a:=  dmdados.TEmbalagensQtdAtualPoupa.Value;
//        TotCx:= Trunc(TotCx * 100)/100;  // Var>> a: Real
////        dmdados.TEmbalagensQtdAtualPoupa.Value:= a;
//
//        Dmdados.TbpedidosTotalCxs.Value:= TotCx;
//
////        tbPedidos.post;
//        Dmdados.tbItens.EnableControls;
////TotalCxs
end;

procedure TFmPedidos.submenuClientesClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmPequisaClienteVendas, FrmPequisaClienteVendas);
   FrmPequisaClienteVendas.ShowModal;
   finally
   FrmPequisaClienteVendas.Free;
   end;
end;

procedure TFmPedidos.dbVencimento1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//DmDados.Tbpedidos.Edit;
//if key = vk_Delete then
//DmDados.Tbpedidos.FieldByName('Vencimento1').Clear;
//DmDados.Tbpedidos.Post;
//dmdados.Tbpedidos.Edit;
//ShowMessage('campo limpo');
//////Table1.FieldByName('Data').Clear;


end;

procedure TFmPedidos.FormCreate(Sender: TObject);
begin
//Shortdateformat:= 'dd/mm/yyyy';
end;

procedure TFmPedidos.dbVencimento1Enter(Sender: TObject);
begin
//edPrimParc.Text:= DateToStr(FormataData(edPrimParc.Text));
//edPrimParc.Text:= Shortdateformat(edPrimParc.Text);
//ShortDateFormat(StrToDate(edPrimParc.Text));

//ShortDateFormat := 'dd/mm/yyyy';
//maskedit2.Text:=datetostr(date);

end;

procedure TFmPedidos.btn1Click(Sender: TObject);
begin
 //         FiltroExternaExecute(Self);
  //        DmDados.Tbpedidos.Last;
      //    dbPedExt.Text:= IntToStr(DmDados.Tbpedidos.RecordCount + 1);
//          DmDados.Tbpedidos.Edit;
   //       DmDados.Tbpedidos.First;
   //       edt1.Text:= IntToStr(DmDados.Tbpedidos.RecordCount);
//          DmDados.Tbpedidos['Ped_E']:= DmDados.Tbpedidos.RecordCount +1;
          //.................
end;

procedure TFmPedidos.btnContasaPagarClick(Sender: TObject);
  var
   sNomeCliente : string;
begin
   sNomeCliente := editNomeClientePedido.Text;
   try
   Application.CreateForm(TFrmConsultaContasReceber, FrmConsultaContasReceber);
   FrmConsultaContasReceber.cbbCliente.Text := sNomeCliente;
   FrmConsultaContasReceber.lblcmbCliente.Caption := sNomeCliente;
   FrmConsultaContasReceber.ShowModal;
   finally
   FrmConsultaContasReceber.Free;
   end;
end;
  {Try
  Application.CreateForm(TFrmConsultaContasReceber, FrmConsultaContasReceber);
  FrmConsultaContasReceber.ShowModal;
  Finally
  FrmConsultaContasReceber.Free;
  end;}

//end;

procedure TFmPedidos.actAtualizaEstoqueExecute(Sender: TObject);
//var
//  sRef : string;
begin
    //     sRef := dmdados.TbitensIt_Ref.AsString;
//         dmdados.Tbitens.DisableControls;
//         DmDados.Tbitens.First;
//         while not dmdados.Tbitens.Eof do
//         begin
//         DmDados.tbEstoque.First;
//           if (DBGrid1.Columns.Items[13].Field.Text = '0') and (DmDados.tbEstoque.Locate('Ref', dmdados.TbitensIt_Ref.Value, [loPartialKey])) then
//         //  begin
//           DmDados.tbEstoque.Edit;
//           DmDados.tbEstoqueQtd.Value:=
//           DmDados.tbEstoqueQtd.Value - DmDados.TbitensIt_Quantidade.Value;
//           DmDados.tbEstoque.Post;
//
//           dmdados.Tbitens.Edit;
//           dmdados.TbitensStatus.Value:= 1;
//           dmdados.Tbitens.Post;
//
//         //  end;
//         DmDados.Tbitens.Next;
//         end;
//         dmdados.Tbitens.EnableControls;


           DmDados.Tbitens.First;
           while not DmDados.Tbitens.Eof do
           begin
           DmDados.tbEstoque.First;
               if (DBGrid1.Columns.Items[13].Field.Text = '0') and (DmDados.tbEstoque.Locate('Ref', dmdados.TbitensIt_Ref.Value, [loPartialKey])) then
               //DAR BAIXA NO ESTOQUE PARA UNIDADE - UN
               Begin
               DmDados.tbEstoque.Edit;
               DmDados.tbEstoqueQtd.Value := (DmDados.tbEstoqueQtd.Value - DmDados.TbitensIt_QtdOvo.Value/360);
               DmDados.tbEstoque.Post;
               end;


//               //DAR BAIXA NO ESTOQUE PARA DUZIA - DZ
//               if DBGrid1.Columns.Items[4].Field.text = 'DZ' THEN
//               Begin
//               DmDados.tbEstoque.Edit;
//               DmDados.tbEstoqueQtd.Value:= DmDados.tbEstoqueQtd.Value - (dmdados.TbitensIt_Quantidade.Value /30);
//               DmDados.tbEstoque.Post;
//               end;
//
//               //DAR BAIXA NO ESTOQUE PARA BANDEJA - BD
//               if DBGrid1.Columns.Items[4].Field.text = 'BD' THEN
//               Begin
//               DmDados.tbEstoque.Edit;
//               DmDados.tbEstoqueQtd.Value:= DmDados.tbEstoqueQtd.Value - (dmdados.TbitensIt_Quantidade.Value / 12);
//               DmDados.tbEstoque.Post;
//               end;
//
//               //DAR BAIXA NO ESTOQUE PARA CAIXA - CX
//               if DBGrid1.Columns.Items[4].Field.text = 'CX' THEN
//               Begin
//               DmDados.tbEstoque.Edit;
//               DmDados.tbEstoqueQtd.Value := (DmDados.tbEstoqueQtd.Value - Dmdados.TbitensIt_Quantidade.Value);
//               DmDados.tbEstoque.Post;
//               end;
           DmDados.Tbitens.Next;
           end;


end;

procedure TFmPedidos.actAtualizaStatusExecute(Sender: TObject);
begin
//        DmDados.Tbitens.First;
//        while not DmDados.Tbitens.Eof do
//        begin
//        if DBGrid1.Columns.Items[13].Field.text = '0' then
//        dmdados.Tbitens.Edit;
//        dmdados.TbitensStatus.Value:= 1;
//        dmdados.Tbitens.Post;
//        dmdados.Tbitens.Next;
//        end;
end;


procedure TFmPedidos.btnAcionaF4Click(Sender: TObject);
begin
////   if (DBGrid1.SelectedIndex = 2) and (DmDados.Tbitens.State in [dsInsert]) then
//    if (DBGrid1.SelectedIndex = 2) and (DBGrid1.Columns.Items[2].Field.Text = '') then
//    try
//    Application.CreateForm(TFrmConsultaProdutosCadastrados, FrmConsultaProdutosCadastrados);
//    FrmConsultaProdutosCadastrados.ShowModal;
//    finally
//    FrmConsultaProdutosCadastrados.Free;
//    end;
end;

procedure TFmPedidos.DBGrid1ColEnter(Sender: TObject);
begin
keybd_event(VK_F4, 0, 0, 0);
end;

procedure TFmPedidos.btnBuscaFormaClick(Sender: TObject);
begin
 try
  Application.CreateForm(TFrmCadFormasPagamentoNew, FrmCadFormasPagamentoNew);
  FrmCadFormasPagamentoNew.edId.Text:= 'Pedido';
  FrmCadFormasPagamentoNew.ShowModal;
  finally
  FrmCadFormasPagamentoNew.Free;
  end;
end;

procedure TFmPedidos.lblFecharClick(Sender: TObject);
begin
pnlCalendario.Visible := False;
end;

procedure TFmPedidos.btn2Click(Sender: TObject);
begin
pnlCalendario.Visible := True;
end;

procedure TFmPedidos.cal1Click(Sender: TObject);
//var dia:string;
//var
//data :integer;
//data1, data2 : TDateTime;
begin
     //   10/01/2000
//dia:=copy(datetostr(Cal1.Date),1,2);
//dbPrazo.text:=dia;

//Edit1.Text := IntToStr(DaysBetween(dtInicial.Date,
//      dtFinal.Date));
//data1 := Date;
//data2 := cal1.Date;
//
//if (data2 < data1) then
//begin
//    Application.MessageBox('DATA ESCOLHIDA É ANTERIOR À' + #13#10 +
//      'DATA ATUAL.', 'ATENÇÃO !', MB_OK + MB_ICONSTOP);
//    Exit;
//
//end;
//
////data:= (data2 - data1);
//if (data1 = data2) then
//begin
//dbPrazo.Text := '00';
//end
//else
//dbPrazo.Text := IntToStr(DaysBetween(data1, data2));
//pnlCalendario.Visible := False;


//cal1DblClick(Self);

end;

procedure TFmPedidos.dbFormaCloseUp(Sender: TObject);
begin
 if dbForma.Text = 'Vista' then
 begin
 dbPrazo.Text := '00';
 end
 else
 dbPrazo.Text := '';

end;

procedure TFmPedidos.cal1DblClick(Sender: TObject);
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

        //data:= (data2 - data1);
        if (data1 = data2) then
        begin
        dbPrazo.Text := '00';
        end
        else
        dbPrazo.Text := IntToStr(DaysBetween(data1, data2));
        pnlCalendario.Visible := False;
end;


procedure TFmPedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = vk_return then
     cal1DblClick(Sender);
end;

end.

