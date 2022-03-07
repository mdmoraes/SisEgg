unit UVendasnoBalcao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  Variants, DB, DBIProcs, DBTables, ActnList;

type
  TFmVendasBalcao = class(TForm)
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
    Label4: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    btNota: TBitBtn;
    SbConsultaPedidos: TSpeedButton;
    edDataPedido: TDBEdit;
    btnPesquisaCliente: TSpeedButton;
    DBEdit1: TDBEdit;
    editNomeClientePedido: TDBEdit;
    lokcomboFormaPag: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    PainelConfirma: TPanel;
    SbDesistir: TSpeedButton;
    SbConfirmar: TSpeedButton;
    edNomeVendedorPedido: TDBEdit;
    DBText2: TDBText;
    btnRecalculaLucro: TBitBtn;
    QryRef: TQuery;
    recalcPedido: TButton;
    btnreccomiss: TButton;
    btnAtualizaEstoque: TSpeedButton;
    ActionList1: TActionList;
    somartotal: TAction;
    somalucro: TAction;
    AtualizaEstoque: TAction;
    CalculaLucro: TAction;
    edVrdaVenda: TDBEdit;
    Edit1: TEdit;
    Devolve: TAction;
    AlteraQtd: TAction;
    gboxTabeladeprecos: TGroupBox;
    lblmeiaDZ: TLabel;
    lblDZ: TLabel;
    lblDZemeia: TLabel;
    lblBD: TLabel;
    lblCX: TLabel;
    btnFecharGBox: TSpeedButton;
    btnPrecos: TSpeedButton;
    FiltroBalcao: TAction;
    lblquartoDZ: TLabel;
    lblUN: TLabel;
    lblTotalReg: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    SpeedButton5: TSpeedButton;
    AtualizaConvEstoque: TAction;
    dbPedB: TDBEdit;
    dbFechado: TDBEdit;
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
    procedure SbDesistirClick(Sender: TObject);
    procedure SbConfirmarClick(Sender: TObject);
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
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure btnRecalculaLucroClick(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormRefresh(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  //  procedure recalcPedidoClick(Sender: TObject);
    procedure RxLabel10Click(Sender: TObject);
    procedure RxLabel10DblClick(Sender: TObject);
    procedure edComissaoClick(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure btnreccomissClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnDescClick(Sender: TObject);
    procedure btnAcresClick(Sender: TObject);
    procedure edPrecoAVChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure btnAtualizaEstoqueClick(Sender: TObject);
    procedure somartotalExecute(Sender: TObject);
    procedure somalucroExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AtualizaEstoqueExecute(Sender: TObject);
    procedure CalculaLucroExecute(Sender: TObject);
    procedure edValorRecebidoExit(Sender: TObject);
    procedure DevolveExecute(Sender: TObject);
    procedure AlteraQtdExecute(Sender: TObject);
    procedure btnFecharGBoxClick(Sender: TObject);
    procedure edDZ1Click(Sender: TObject);
    procedure edDZemeia1Click(Sender: TObject);
    procedure edBD1Click(Sender: TObject);
    procedure edCX1Click(Sender: TObject);
    procedure edMeiaDZClick(Sender: TObject);
    procedure edDZClick(Sender: TObject);
    procedure edDZemeiaClick(Sender: TObject);
    procedure edBDClick(Sender: TObject);
    procedure edCXClick(Sender: TObject);
    procedure btnPrecosClick(Sender: TObject);
    procedure FiltroBalcaoExecute(Sender: TObject);
    procedure edQuartoDZClick(Sender: TObject);
    procedure edUNClick(Sender: TObject);
    procedure rdOvosClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure AtualizaConvEstoqueExecute(Sender: TObject);  //20082006
  private
    { Private declarations }
  public
    { Public declarations }
    // Totalização...
//    procedure SomaLucro;
//    procedure SomaPedido;
  end;

var
  FmVendasBalcao: TFmVendasBalcao;
//  SomaLucro:Double;
  SomaPedido:Double;

implementation

uses Base, UConsultaEstoque,
  UFrmFormasPagamento, Interno,
  UProcuraporClienteouPedido,
  UCalculadora, UConsultaProdutoVendasBalcao, UProcuraNomeClientePedido,
  UTabeladePrecosBalcao, Rotina, UConsultaVendasBalcao;

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

procedure TFmVendasBalcao.FormRefresh(Sender: TObject);
begin
//DmDados.Tbpedidos.Refresh;  //Atualiza dados via Rede  ...MAMO...
//Table1.Refresh;
//...
//TableN.Refresh;
end;

////////

procedure TFmVendasBalcao.SpeedButton1Click(Sender: TObject);
begin
    DmDados.tbPedidos.First;
 //   edValorRecebido.Text:= '';
//    edTroco.Text:= '';
//    edTroco.Font.Color:= clBlue;
end;

procedure TFmVendasBalcao.SpeedButton2Click(Sender: TObject);
begin
//    DmDados.tbPedidos.Prior;
//    edValorRecebido.Text:= '';
//    edTroco.Text:= '';
//    edTroco.Font.Color:= clBlue;
end;

procedure TFmVendasBalcao.SpeedButton3Click(Sender: TObject);
begin
//     DmDados.tbPedidos.Next;
//     edValorRecebido.Text:= '';
//     edTroco.Text:= '';
//     edTroco.Font.Color:= clBlue;

end;

procedure TFmVendasBalcao.SpeedButton4Click(Sender: TObject);
begin
//DmDados.tbPedidos.last;
//edValorRecebido.Text:= '';
//edTroco.Text:= '';
//edTroco.Font.Color:= clBlue;
end;

procedure TFmVendasBalcao.BtincluirClick(Sender: TObject);
//var
//  it: Integer;
begin
//    dmdados.Tbpedidos.Filtered := False;
//          // Abilitação dos paineis
//    PainelDados.Enabled:=True;
//    PainelControle.Visible:=False;
//    Painelconfirma.Visible:=true;
//    DmDados.Tbpedidos.Edit;
//      try      //EVENTO ACUMULADOR DE REGISTROS ...MAMO...
//          DmDados.Tbpedidos.DisableControls;
//          try
////          dmdados.Tbpedidos.Filtered := False;
//          DMDados.tbPedidos.IndexName:= 'idxPedNumero';
//      //    DMDados.tbPedidos.First;
//          DMDados.tbPedidos.Last;
//          if DMDados.tbPedidos['Ped_numero']<> null then
//          it := DMDados.tbPedidos['Ped_numero']
//          else
//          it:= 0;
//          DMDados.tbPedidos.Insert;
//          DMDados.tbPedidos['Ped_numero'] := it + 1;
//          DmDados.Tbpedidos['Ped_Data']:=DateToStr(Now);
//          DmDados.Tbpedidos['Ped_Cliente']:= 'VENDA BALCÃO';
//          DmDados.Tbpedidos['Ped_ForPaga']:= 'Á VISTA';
//
//          //.......................
//          FiltroBalcaoExecute(self);
//          DmDados.Tbpedidos.Last;
//          DmDados.Tbpedidos.Edit;
//          DmDados.Tbpedidos['Ped_B']:= DmDados.Tbpedidos.RecordCount +1;
//          DmDados.Tbpedidos['Fechado']:= 'N';
//          //.................
//
//
//          //.......................
//          DBGrid1.SetFocus;
////          DBGrid1.OnEditButtonClick(SELF);
//          finally
//          DMDados.tbPedidos.EnableControls;
//          end;
//      finally
//      end;
end;

procedure TFmVendasBalcao.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    PainelConfirma.Visible:=True;
//    DmDados.BancoDados.StartTransaction;
//    DmDados.Tbpedidos.Edit;
//    DBEdit4.Text:= '';
//    btnRecalculaLucroClick(self);
    editNomeClientePedido.SetFocus;
end;

procedure TFmVendasBalcao.BtExcluirClick(Sender: TObject);
begin
      // EXTORNAR OS ITENS PARA A TABELA PRODUTOS
   if Application.MessageBox('Deseja excluir este Registro ?','Eliminação de Registro',
   MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN
   begin
      if dmdados.Tbitens.RecordCount > 0 then
      begin
      DevolveExecute(self);
      dmdados.Tbitens.Filter:= 'It_Numero='+QuotedStr(DBEdit1.Text);
      dmdados.Tbitens.Filtered:= true;
      DeleteAll(dmdados.Tbitens);
      dmdados.Tbitens.Filtered:= false;
      end;
      Dmdados.tbPedidos.Delete;
   end else
   exit;

end;

procedure TFmVendasBalcao.BtSaidaClick(Sender: TObject);
begin
    Close;
end;

procedure TFmVendasBalcao.BtConfirmaClick(Sender: TObject);
begin
//    DmDados.BancoDados.Commit;
    DMDados.Tbpedidos.Post;
    PainelConfirma.Visible:=False;     //Marcos False
    PainelDados.enabled:=False;        //Marcos False
    PainelControle.Visible:=True;
end;

procedure TFmVendasBalcao.BtDesisteClick(Sender: TObject);
begin
        DmDados.Tbpedidos.Cancel;
//        DmDados.BancoDados.Rollback;

        PainelConfirma.Visible:=False;      //Marcos True;
        PainelDados.Enabled:= False;        //Marcos True;
        PainelControle.Visible:=True;
end;

procedure TFmVendasBalcao.BitBtn2Click(Sender: TObject);
begin
//    PainelTitulo.SetFocus;
//    btnFoco.SetFocus;
    dmdados.Tbpedidos.Filtered := False;
    Close;
//    btnAtualizaEstoque.Visible:= False;
end;

procedure TFmVendasBalcao.btNotaClick(Sender: TObject);
begin
(*      try
      Application.CreateForm(TQrOrcamento,QrOrcamento);
  //    dmdados.tbEmpresas.Locate('Nome_Empresa', comboEmpresa.Text, []);
//      DmDados.tbClientes.Locate('Cli_Cliente', editNomeClientePedido.Text, []);
//      DmDados.tbVendedores.Locate('Nome', edNomeVendedorPedido.Text, []);
      DmDados.Tbpedidos.IndexName:='idxPedNumero';
      DmDados.Tbpedidos.SetRange([DBEdit1.Text],[DBEdit1.Text]);

        {  If DmDados.TbClientesCli_PessoaFJ.Value = 'Fisica' then
          begin
          QrOrcamento.RotuloDoc1.Caption:= 'CPF: ' + DmDados.TbClientesCli_Cpf.Value;
          QrOrcamento.RotuloDoc2.Caption:= 'RG : ' + DMDados.TbClientesCli_Rg.Value;
          END;

          If DmDados.TbClientesCli_PessoaFJ.Value = 'Juridica' then
          begin
          QrOrcamento.RotuloDoc1.Caption:= 'CNPJ: ' + DmDados.TbClientesCli_CGC.Value;
          QrOrcamento.RotuloDoc2.Caption:= 'I.E.: ' + DMDados.TbClientesCli_Inscricao.Value;
          end;

  {        if comboEmpresa.Text <> '' then
          begin
          QrOrcamento.rotuloatendimento.Caption:= 'Central de Atendimento: ' + dmdados.tbEmpresasTelefone.Value;
          QrOrcamento.rotuloweb.Caption:= 'WEB: ' + dmdados.tbEmpresasEmail.Value;
          end;}
      QrOrcamento.QryPedidos.ParamByName('VarPed_Num').AsInteger:= StrToInt(DBEdit1.Text);
      QrOrcamento.QryPedidos.Prepare;
      QrOrcamento.QryPedidos.Open;
      ////////////////////
    {  if DBEdit4.Text = '' then
      begin
      QrOrcamento.lblTotal.Enabled:= False;
      QrOrcamento.lblDescontode.Enabled:= False;
      QrOrcamento.edValorTotal.Enabled:= False;
      QrOrcamento.edValorDesconto.Enabled:= False;
      QrOrcamento.edDescontoporcento.Enabled:= False;
      end;}



      //MARCAÇÃO DE X PARA O DIA DA SEMANA...

     { if dmdados.TbClientesCli_Segunda.Value <> '' then
      qrorcamento.XSEG.Enabled:= True;

      if dmdados.TbClientesCli_Terca.Value <> '' then
      qrorcamento.XTER.Enabled:= true;

      if dmdados.TbClientesCli_Quarta.Value <> '' then
      qrorcamento.XQUA.Enabled:= true;

      if dmdados.TbClientesCli_Quinta.Value <> '' then
      qrorcamento.XQUI.Enabled:= true;

      if dmdados.TbClientesCli_Sexta.Value <> '' then
      qrorcamento.XSEX.Enabled:= true;

      if dmdados.TbClientesCli_Sabado.Value <> '' then
      qrorcamento.XSAB.Enabled:= true; }

      //Abre a bomba do Relatório chatu......
      QrOrcamento.Preview;
      QrOrcamento.QryPedidos.Close;
      DmDados.Tbpedidos.IndexName:='';
      finally
      QrOrcamento.Free;
      end;  *)
end;


procedure TFmVendasBalcao.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBDateEdit1.SetFocus;
end;

procedure TFmVendasBalcao.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmVendasBalcao.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
//    if Key = #13 then DBEdit4.SetFocus;
end;

procedure TFmVendasBalcao.SbDesistirClick(Sender: TObject);
begin
          if dbFechado.Text = 'N' then
          begin
          dmdados.Tbitens.Filter:= 'It_Numero='+QuotedStr(DBEdit1.Text);
          dmdados.Tbitens.Filtered:= true;
          DeleteAll(dmdados.Tbitens);
          dmdados.Tbitens.Filtered:= false;
          DmDados.Tbpedidos.Delete;
          PainelConfirma.Visible:=False;   //Marcos True;
          PainelDados.Enabled:=False;     //Marcos True;
          PainelControle.Visible:=True;
          end
          else
          if dbFechado.Text = 'S' then
          begin
          DmDados.Tbpedidos.Cancel;
          PainelConfirma.Visible:=False;   //Marcos True;
          PainelDados.Enabled:=False;     //Marcos True;
          PainelControle.Visible:=True;
          end;
end;

procedure TFmVendasBalcao.SbConfirmarClick(Sender: TObject);
begin
   if MessageDlg('CONFIRMA O FECHAMENTO DESTE PEDIDO ?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   BEGIN //CONFIRMA PEDIDO
    DmDados.Tbpedidos.Edit;
    dmdados.Tbitens.First;
    while not dmdados.Tbitens.Eof do
    begin
    CalculaLucroExecute(self);
    AtualizaEstoqueExecute(self);
    dmdados.Tbitens.Edit;
    dmdados.TbitensStatus.Value:= 1;
    dmdados.Tbitens.Post;
    dmdados.Tbitens.Next;
    end;
    somartotalExecute(self);
    somalucroExecute(self);
    DmDados.Tbpedidos.Edit;
    DmDados.Tbpedidos['Fechado']:= 'S';
    DmDados.Tbpedidos.Post;
   // DmDados.Tbpedidos.Refresh;
    lblTotalReg.Caption:= IntToStr(DMDados.Tbpedidos.RecordCount);

    AtualizaConvEstoqueExecute(self);
    PainelConfirma.Visible:=False;     //Marcos True;
    PainelDados.enabled:=False;     //Marcos True;
    PainelControle.Visible:=True;
   END //CONFIRMA PEDIDO
   ELSE
   EXIT;
end;

procedure TFmVendasBalcao.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBGrid1.SetFocus;
end;

procedure TFmVendasBalcao.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
//   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmVendasBalcao.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 //   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmVendasBalcao.SbConsultaPedidosClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmConsultaVendasBalcao,FrmConsultaVendasBalcao);
    FrmConsultaVendasBalcao.Showmodal;
    finally
    FrmConsultaVendasBalcao.Free;
    end;
end;

procedure TFmVendasBalcao.btConsultaEstoqueClick(Sender: TObject);
begin
//try
//   Application.CreateForm(TFrmConsultaEstoque,FrmConsultaEstoque);
//   FrmConsultaEstoque.Show;
//   finally
//   FrmConsultaEstoque.Free;
//   end;

//FrmConsultaEstoque.Show;
end;

procedure TFmVendasBalcao.DBEdit1Change(Sender: TObject);
begin
//DmDados.TbClientes.FindNearest([DBEdit1.text]);
//FiltroBalcaoExecute(self);
end;

procedure TFmVendasBalcao.edClienteChange(Sender: TObject);
begin
//DmDados.TbClientes.FindNearest([edCliente.text]);
end;

procedure TFmVendasBalcao.btnPesquisaClienteClick(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmProcuraNomeClientePedido, FrmProcuraNomeClientePedido);
    FrmProcuraNomeClientePedido.ShowModal;
    finally
    FrmProcuraNomeClientePedido.Free;
    end;
end;

procedure TFmVendasBalcao.editNomeClientePedidoChange(Sender: TObject);
begin
//DBEdit2.Text:= edNomeCliente.Caption;
//btnFaturaClick(SELF);
end;

procedure TFmVendasBalcao.FormShow(Sender: TObject);
begin
  FiltroBalcaoExecute(self);
  dmdados.Tbpedidos.Last;

  //DBText2.Visible:= False;
  //FormRefresh(Sender);  //atualiza na Rede.....
end;

procedure TFmVendasBalcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
(*     BitBtn2Click(self);
     if DMDados.Tbpedidos.Modified then
//     begin
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
     begin
       DMDados.Tbpedidos.Edit;
       DMDados.Tbpedidos.Post;
     end
      else
     DMDados.Tbpedidos.Cancel;
//     end;
     ///PARA A TABELA ITENS

{     BitBtn2Click(self);
     if DMDados.Tbitens.Modified then
     begin
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DmDados.Tbitens.Edit;
       DMDados.Tbitens.Post
      else
     DMDados.Tbpedidos.Cancel;
     end;}   *)
     dmdados.Tbpedidos.Filtered := False;
end;

procedure TFmVendasBalcao.DBGrid1EditButtonClick(Sender: TObject);
//var
//meiaDZ:Double;
begin
    //VERIFICANDO SE UNIDADE ESTÁ PREENCHIDA...
    if (DbGrid1.SelectedIndex = 7) and (dbgrid1.Columns.Items[4].Field.text = '') then
    begin
    showmessage('CAMPO UNIDADE ESTÁ VAZIO!');
    Exit;
    end
    else

    if DbGrid1.SelectedIndex = 7 then
    begin
    gboxTabeladeprecos.Visible:= True;
    dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);

//    edUN.Text:= dmdados.TbprodutosPro_PrecoUN.AsString;
//    edQuartoDZ.Text:= dmdados.TbprodutosPro_PrecoquartoDZ.AsString;
//    edMeiaDZ.Text:= dmdados.TbprodutosPro_PrecomeiaDZ.AsString;
//    edDZ.Text:= dmdados.TbprodutosPro_PrecoDZ.AsString;
//    edDZemeia.Text:= dmdados.TbprodutosPro_PrecoDZemeia.AsString;
//    edBD.Text:= dmdados.TbprodutosPro_PrecoBD.AsString;
//    edCX.Text:= dmdados.TbprodutosPro_PrecoCX.AsString;
    end;
//    else

    if DbGrid1.SelectedIndex = 2 then
    Try
    Application.CreateForm(TFrmConsultaProdutoVendasBalcao, FrmConsultaProdutoVendasBalcao);
    FrmConsultaProdutoVendasBalcao.ShowModal;
    Finally
    FrmConsultaProdutoVendasBalcao.Free;
    end;
end;

procedure TFmVendasBalcao.DBGrid1ColExit(Sender: TObject);
begin
//     if DBGrid1.Columns.Items[7].Field.text = '' then
//     begin
 //    AtualizaEstoqueExecute(self);
//     end;

    //ATUALIZA SOMATOTAL
 //   if (DBGrid1.Columns.Items[7].Field.text <> '') and
 //    (DBGrid1.Columns.Items[9].Field.text = '')then
//     if DBGrid1.SelectedIndex > 7 then
//     begin
//     CalculaLucroExecute(self);
//     somalucroExecute(self);
//     end;


//    somartotalExecute(self);



   //CALCULA LUCRO DO ITEM
//    if DBGrid1.SelectedIndex > 6 then
//    CalculaLucroExecute(self);

end;

procedure TFmVendasBalcao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (KEY = vk_Down) or (key = vk_right) Then
//  CalculaVrEmbaExecute(self);
//  TotalizaVrEmbaExecute(self);
     somartotalExecute(self);



  (* //VERIFICANDO SE UNIDADE ESTÁ PREENCHIDA...
    if (DbGrid1.SelectedIndex = 7) and (dbgrid1.Columns.Items[4].Field.text = '') then
    begin
    showmessage('CAMPO UNIDADE ESTÁ VAZIO!');
    exit;
    dmdados.Tbitens.Edit;
    dbgrid1.Columns.Items[7].Field.text:= '';
    end; *)

  //ENTER COMO TAB NO GRID.....
  if KEY = vk_Return Then
  DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1;

  //  if Key = vk_Tab then
//  CalculaLucroExecute(self);

  //RETORNAR O ITEM PARA O ESTOQUE, SE USAR CTRL + DEL....
     if ((Shift = [ssCtrl]) and (key = vk_delete)) THEN
      if MessageDlg('ATENÇÃO ! SE CONFIRMAR SIM!  VC. DEVE APAGAR O REGISTRO ' +#13+
                    'POIS O ITEM JÁ FOI DEVOLVIDO AO ESTOQUE' +#13+
                    'SE NÃO !!!...,  CLIQUE  <NÃO> E DEPOIS <CANCELA>',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      BEGIN
      DevolveExecute(self);
//      dmdados.Tbprodutos.Locate('Pro_Ref', DBGrid1.Columns.Items[2].Field.text, []); //then
      //begin
//      DMDADOS.Tbprodutos.Edit;
//      DMDADOS.TbprodutosPro_QtdeAtual.Value:= DMDADOS.TbprodutosPro_QtdeAtual.Value + dmdados.TbitensIt_Quantidade.Value;
//      DMDADOS.tbprodutos.Post;
      //SHOWMESSAGE('O ITEM SERÁ DEVOLVIDO AO ESTOQUE! CONFIRMA EXCLUIR ?');
      END

      ELSE
      EXIT;
         if dmdados.Tbitens.State = dsEdit then
         if dbgrid1.SelectedIndex = 2 then
         if (DBGrid1.Columns.Items[2].Field.Text <> '') AND
         (DBGrid1.Columns.Items[12].Field.Text = '1') AND
         (KEY <> VK_LEFT) AND (KEY <> VK_RIGHT) AND
         (KEY <> VK_TAB) AND (KEY <> VK_UP) AND (KEY <> VK_DOWN) then
          begin
          showmessage('PARA ALTERAR A REFERÊNCIA,' +#13+
                      'DELETE ESSE ITEM PRIMEIRO,' +#13+
                      'E DEPOIS CADASTRE O NOVO');
          DMDados.Tbitens.Cancel;
          EXIT;
          END;
//recalcPedidoClick(self);
//btnRecalculaLucroClick(self);
end;

{procedure TFmVendasBalcao.SomaLucro;
var
SomaLucro: double;
begin
      with DmDados.Tbitens do
      begin
            SomaLucro := 0;
            DisableControls;
            first;
            while not eof do
            begin
            SomaLucro:= SomaLucro + DmDados.TbitensValorLucro.Value ;
            next;
            end;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_Lucro').asfloat := SomaLucro;
dmdados.Tbpedidos.post;
dmdados.Tbitens.EnableControls;
//end;

end; }

procedure TFmVendasBalcao.DBEdit4Change(Sender: TObject);
begin
//DmDados.Tbpedidos.Edit;
//dmdados.TbpedidosPed_VrFinal.Value:=
//dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value;

{DmDados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value;}
//DmDados.TbpedidosPed_Lucro.AsCurrency:= DmDados.TbpedidosPed_Lucro.AsCurrency - DmDados.TbpedidosPed_VrDesconto.AsCurrency;
end;

procedure TFmVendasBalcao.DBEdit4Click(Sender: TObject);
begin
{    if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end; }
end;

procedure TFmVendasBalcao.FormActivate(Sender: TObject);
begin
//Application.OnActivate := FormRefresh;   //atualização na Rede
end;

procedure TFmVendasBalcao.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

//if DbGrid1.SelectedIndex = 2 then
//Key := AnsiUpperCase(Key)[1];  //20/08/2006 - TUDO MAIÚSCULO NA GRID

//PROC ALTERAÇÃO DE QUANTIDADE.....
                 //if DbGrid1.SelectedIndex = 6 then
                 //if dmdados.TbitensIt_Quantidade.IsNull = False then
                 //if DBGrid1.Columns.Items[6].Field.text <> '' then

if DbGrid1.Columns.Items[12].Field.Text = '1' then
begin
SbDesistirClick(Sender);
showmessage('VENDA JÁ FECHADA !' +#13+
            'SE QUISER ALTERAR DADOS DELETE' +#13+
            'A LINHA TODA E CADASTRE NOVOS DADOS!');
end;

{begin
if (Key=VK_ESCAPE) and (Printer.Printing) then
begin
Printer.Abort;
MessageDlg('Impressão abortada', mtInformation, [mbOK],0);
end;
end; }



//application.MessageBox('O Campo Nome deve ser prenchido','Atenção',64);




                 // 19082008 - dmdados.Tbprodutos.Locate('Pro_Ref', Dbgrid1.Columns.Items[2].Field.Text, []);
{    if dbgrid1.Columns.Items[12].Field.text = '1' then
    if MessageDlg('DESEJA ALTERAR DADOS DESTE ITEM ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      BEGIN
      SHOWMESSAGE('DELETE ESTE ITEM PRIMEIRO!');
      dmdados.Tbitens.Cancel;
      END else
      exit; }
end;

procedure TFmVendasBalcao.DBGrid1Exit(Sender: TObject);
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

procedure TFmVendasBalcao.DBGrid1CellClick(Column: TColumn);
begin
if DbGrid1.Columns.Items[12].Field.Text = '1' then
begin
showmessage('VENDA JÁ FECHADA !' +#13+
            'SE QUISER ALTERAR DADOS DELETE' +#13+
            'A LINHA TODA E CADASTRE NOVOS DADOS!');
exit;
end;

    //        ShowMessage(' A T E N Ç Ã O  !!! ' +#13+
    //  ' PRODUTO INSUFICIENTE NO ESTOQUE ' + #13+
    //  ' VERIFIQUE ');

(*//PROC ALTERAÇÃO DE QUANTIDADE.....
if DbGrid1.SelectedIndex = 6 then
//if dmdados.TbitensIt_Quantidade.IsNull = False then
if DbGrid1.Columns.Items[6].Field.Text <> '' then
if MessageDlg('DESEJA ALTERAR A QUANTIDADE DESTE ITEM ?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      BEGIN
      DevolveExecute(self);
      DMDADOS.Tbpedidos.Edit;
      DMDados.Tbitens.edit;
      DBGrid1.Columns.Items[6].Field.text:= '';
      END
      ELSE
      DbGrid1.SelectedIndex:= 7;
      EXIT;

      if DBGrid1.Columns.Items[6].Field.text <> '' then
      begin
      dmdados.Tbitens.Prior;
      dmdados.Tbitens.Next;
      DbGrid1.SelectedIndex:= 7;
      showmessage('QUANTIDADE ALTERADA!');
      end;*)
end;

{procedure TFmVendasBalcao.SomaPedido;
var
SomaPedido: double;
begin
      with DmDados.Tbitens do
      begin
            SomaPedido := 0;
            DisableControls;
            first;
            while not eof do
            begin
            SomaPedido:= SomaPedido + dmdados.TbitensValoritem.Value ;
            next;
            end;
            enablecontrols;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_VrFinal').asfloat := SomaPedido;
dmdados.Tbpedidos.post;
end; }

procedure TFmVendasBalcao.RxLabel10Click(Sender: TObject);
begin
if DBText2.Visible = True then
DBText2.Visible:= False;
end;

procedure TFmVendasBalcao.RxLabel10DblClick(Sender: TObject);
begin
if DBText2.Visible = False then
DBText2.Visible:= True;
end;

procedure TFmVendasBalcao.edComissaoClick(Sender: TObject);
begin
showmessage('CAMPO PREENCHIDO PELO SISTEMA!');
end;

procedure TFmVendasBalcao.chk1Click(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;}

end;

procedure TFmVendasBalcao.chk2Click(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;}
end;

procedure TFmVendasBalcao.chk3Click(Sender: TObject);
begin
    {if DBEdit3.Text = '' then
    begin
    MessageDlg('PREENCHA O PEDIDO PRIMEIRO!', mtInformation,[mbOK],0);
    exit;
    end;}
end;

procedure TFmVendasBalcao.btnreccomissClick(Sender: TObject);
//var
//totcomiss: double;
begin
 (*     with DmDados.Tbitens do
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
//end;  *)
end;

procedure TFmVendasBalcao.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = VK_ESCAPE then
//gboxTabelaPrecos.Visible:= False;
end;

procedure TFmVendasBalcao.DBGrid1DblClick(Sender: TObject);
begin
(*      if DbGrid1.SelectedIndex = 7 then
      begin
      dmdados.Tbprodutos.Locate('Pro_Ref', DBGrid1.Columns.Items[2].Field.Text,[]);
      gboxTabelaPrecos.Visible:= True;
      lblRef.Caption:= dmdados.TbprodutosPro_Ref.AsString;
      lblDescricao.Caption:= dmdados.TbprodutosPro_Descricao.AsString;
      end;  *)
END;

procedure TFmVendasBalcao.btnDescClick(Sender: TObject);
begin
{dmdados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
(dmdados.TbpedidosPed_VrFinal.Value - dmdados.TbpedidosPed_VrDesconto.Value);

dmdados.TbpedidosPed_Lucro.Value:=
(dmdados.TbpedidosPed_Lucro.Value - dmdados.TbpedidosPed_VrDesconto.Value); }
end;

procedure TFmVendasBalcao.btnAcresClick(Sender: TObject);
begin
{dmdados.Tbpedidos.Edit;
//dmdados.TbpedidosPed_VrFinal.AsString:= '';
dmdados.TbpedidosPed_VrFinal.Value:=
(dmdados.TbpedidosPed_VrFinal.Value + dmdados.TbpedidosPed_VrDesconto.Value);

dmdados.TbpedidosPed_Lucro.Value:=
(dmdados.TbpedidosPed_Lucro.Value + dmdados.TbpedidosPed_VrDesconto.Value); }
end;

procedure TFmVendasBalcao.edPrecoAVChange(Sender: TObject);
//var
//PDuzia, PBandeja, PCaixa: Real;
//num: Real;
begin
(*PDuzia:= StrToFloat(edPrecoAV.Text);
PBandeja:= (PDuzia * 2.5);
edPBandeja.Text:= FloatToStr(PBandeja);
//num:= StrToInt(edPBandeja.Text);
//edPBandeja.Text:=formatfloat('#,##0.00', num);
//edPBandeja.Text:= FloatToStr(StringToFloat(edPBandeja.Text));
PCaixa:= (PDuzia * 30);
edPCaixa.Text:= FloatToStr(PCaixa);  *)
end;

procedure TFmVendasBalcao.SpeedButton6Click(Sender: TObject);
begin
(*PCusto:= StrToFloat(edPrecoAP.Text);
PBandeja:= StrToFloat(edPBandeja.Text);
VLucroBandeja:= PBandeja -(PCusto * 2.5);

  if DbGrid1.SelectedIndex = 7 then
  begin
  dmdados.Tbitens.Edit;
//  DbGrid1.Columns.Items[4].Field.Text:= 'BD';
  DbGrid1.Columns.Items[7].Field.Text:= edPBandeja.Text;
  DbGrid1.Columns.Items[9].Field.Text:= FloatToStr(VLucroBandeja);
  gboxTabelaPrecos.Visible:= False;
  end; *)
end;

procedure TFmVendasBalcao.SpeedButton7Click(Sender: TObject);
begin
(*PCusto:= StrToFloat(edPrecoAP.Text);
PCaixa:= StrToFloat(edPCaixa.Text);
VLucroCaixa:= PCaixa - (PCusto * 30);


  if DbGrid1.SelectedIndex = 7 then
  begin
  dmdados.Tbitens.Edit;
//  DbGrid1.Columns.Items[4].Field.Text:= 'CX';
  DbGrid1.Columns.Items[7].Field.Text:= edPCaixa.Text;
//  VLucroCaixa:= StringToFloat(VLucroCaixa);

//editPCusto.Text:= FloatToStr(StringToFloat(editPCusto.Text));
  DbGrid1.Columns.Items[9].Field.Text:= FloatToStr(VLucroCaixa);
  DbGrid1.Columns.Items[9].Field.Text:=
  FloatToStr(StringToFloat(DbGrid1.Columns.Items[9].Field.Text));
  gboxTabelaPrecos.Visible:= False;
  end;  *)
end;

procedure TFmVendasBalcao.DBEdit2Change(Sender: TObject);
begin
{DmDados.Tbpedidos.Edit;
dmdados.TbpedidosPed_VrFinal.Value:=
dmdados.TbpedidosPed_Valor.Value + dmdados.TbpedidosPed_TotEmba.Value;}
end;

procedure TFmVendasBalcao.btnAtualizaEstoqueClick(Sender: TObject);
begin
(*    dmdados.Tbpedidos.First;
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
   btnAtualizaEstoque.Visible:= False;  *)
end;

procedure TFmVendasBalcao.somartotalExecute(Sender: TObject);
var
SomaPedido: double;
begin
      with DmDados.Tbitens do
      begin
            SomaPedido := 0;
            DisableControls;
            first;
            while not eof do
            begin
            SomaPedido:= SomaPedido + dmdados.TbitensValoritem.Value ;
            next;
            end;
            enablecontrols;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_VrFinal').asfloat := SomaPedido;
dmdados.Tbpedidos.post;
end;

procedure TFmVendasBalcao.somalucroExecute(Sender: TObject);
var
SomaLucro: double;
begin
      with DmDados.Tbitens do
      begin
            SomaLucro := 0;
            DisableControls;
            first;
            while not eof do
            begin
            SomaLucro:= SomaLucro + dmdados.TbitensValorLucro.Value ;
            next;
            end;
            enablecontrols;
      end;
dmdados.Tbpedidos.Edit;
dmdados.Tbpedidos.FieldByName ('Ped_Lucro').asfloat := SomaLucro;
end;

procedure TFmVendasBalcao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if not odd(DbGrid1.DataSource.DataSet.RecNo) then
    if not (gdSelected in State) then
      With DBGrid1 do
      begin
        Canvas.Brush.Color:= $00EFFAE5; //cor verde claro
        Canvas.FillRect(Rect);          //pinta a célula
        DefaultDrawDataCell(Rect,Column.Field,State); //pinta o texto
      end;
end;

procedure TFmVendasBalcao.AtualizaEstoqueExecute(Sender: TObject);
begin
   dmdados.Tbprodutos.Locate('Pro_Ref', Dbgrid1.Columns.Items[2].Field.Text, []);
   if DBGrid1.Columns.Items[12].Field.text = '0' then
   begin

     //DAR BAIXA NO ESTOQUE PARA MEIA DUZIA - 1/4 DZ - Meia Duzia
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = '¼ DZ' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value/4);
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA MEIA DUZIA - 1/2 DZ - Meia Duzia
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = '½ DZ' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value/2);
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA UNIDADE - UN
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = 'UN' THEN
     Begin
     dmdados.Tbprodutos.Edit;
//     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - dmdados.TbitensIt_Quantidade.Value;
     dmdados.TbprodutosPro_QtdAtUnidade.Value:= dmdados.TbprodutosPro_QtdAtUnidade.Value-Dmdados.TbitensIt_Quantidade.Value;
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA DUZIA - DZ
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = 'DZ' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - dmdados.TbitensIt_Quantidade.Value;
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA DUZIA - (DZ 1/2- 1 Duzia e Meia)
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = 'DZ ½' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 1.5);
     dmdados.tbprodutos.Post;
     end;


     //DAR BAIXA NO ESTOQUE PARA BANDEJA - BD
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = 'BD' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:=
     dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 2.5);
     dmdados.tbprodutos.Post;
     end;

     //DAR BAIXA NO ESTOQUE PARA CAIXA - CX
     if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = 'CX' THEN
     Begin
     dmdados.Tbprodutos.Edit;
     dmdados.TbprodutosPro_QtdeAtual.Value:=
     dmdados.TbprodutosPro_QtdeAtual.Value - (dmdados.TbitensIt_Quantidade.Value * 30);
     dmdados.tbprodutos.Post;
     end;

   end;
end;

procedure TFmVendasBalcao.CalculaLucroExecute(Sender: TObject);
begin

    dmdados.Tbprodutos.Locate('Pro_Ref', dmdados.TbitensIt_Ref.Value, []);

    //CALCULA ITEM LUCRO PARA MEIA DUZIA
    if DBGrid1.Columns.Items[4].Field.Text = '½ DZ' then
    begin
    dmdados.Tbitens.Edit;
    dmdados.TbitensIt_Lucro.Value:=
    (dmdados.TbitensIt_Valor.Value - (dmdados.TbprodutosPro_PrecoMedio.Value/2));
    dmdados.Tbitens.Post;

    {dmdados.TbitensValorLucro.Value:=
    (dmdados.TbitensIt_Quantidade.Value * dmdados.TbitensIt_Lucro.Value);
    dmdados.Tbitens.Post;}
    END;

    //CALCULA ITEM LUCRO PARA DUZIA
    if DBGrid1.Columns.Items[4].Field.Text = 'DZ' then
    begin
    dmdados.Tbitens.Edit;
    dmdados.TbitensIt_Lucro.Value:=
    (dmdados.TbitensIt_Valor.Value - dmdados.TbprodutosPro_PrecoMedio.Value);
    dmdados.Tbitens.Post;

    {dmdados.TbitensValorLucro.Value:=
    (dmdados.TbitensIt_Quantidade.Value * dmdados.TbitensIt_Lucro.Value);
    dmdados.Tbitens.Post;}
    end;


    //CALCULA ITEM LUCRO PARA DUZIA E MEIA
    if DBGrid1.Columns.Items[4].Field.Text = 'DZ ½' then
    begin
    dmdados.Tbitens.Edit;
    dmdados.TbitensIt_Lucro.Value:=
    (dmdados.TbitensIt_Valor.Value - (dmdados.TbprodutosPro_PrecoMedio.Value*1.5));
    dmdados.Tbitens.Post;
    END;


    //CALCULA ITEM LUCRO PARA BANDEJA - BD
    if DBGrid1.Columns.Items[4].Field.Text = 'BD' then
    begin
    dmdados.Tbitens.Edit;
    dmdados.TbitensIt_Lucro.Value:=
    (dmdados.TbitensIt_Valor.Value - (dmdados.TbprodutosPro_PrecoMedio.Value*2.5));
    dmdados.Tbitens.Post;
    END;


    //CALCULA ITEM LUCRO PARA CAIXA - CX
    if DBGrid1.Columns.Items[4].Field.Text = 'CX' then
    begin
    dmdados.Tbitens.Edit;
    dmdados.TbitensIt_Lucro.Value:=
    (dmdados.TbitensIt_Valor.Value - (dmdados.TbprodutosPro_PrecoMedio.Value*30));
    dmdados.Tbitens.Post;
    END;
end;

procedure TFmVendasBalcao.edValorRecebidoExit(Sender: TObject);
//var
//a,b: Real;
begin
(*edVrdaVenda.Text:= FloatToStr(StringToFloat(edVrdaVenda.Text));
a:= StrtoFloat(edVrdaVenda.Text);

edValorRecebido.Text:= FloatToStr(StringToFloat(edValorRecebido.Text));
b:= StrtoFloat(edValorRecebido.Text);

//edTroco.Text:= FloatToStr(StringToFloat(edTroco.Text));
//c:= StrtoFloat(edTroco.Text);

edTroco.Text:= FloatToStr(b-a);

if edTroco.Text < IntToStr(0) then
edTroco.Font.Color:= clRed
else
edTroco.Font.Color:= clBlue;


Edit1.SetFocus;
edVrdaVenda.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', a);


//DBEdit3.Text:= FloatToStr(StringToFloat(DBEdit3.Text));
//edVr1.Text:= FloatToStr(StringToFloat(edVr1.Text));
//VrFinal:= StrToFloat(DBEdit3.Text);

//edTroco.Text:= FloatToStr(StringToFloat(edTroco.Text));
//edTroco.Text:= FloatToStr(c); *)
end;

procedure TFmVendasBalcao.DevolveExecute(Sender: TObject);
begin

      //DEVOLVE ITENS AO ESTOQUE

    //   DmDados.Tbprodutos.FindKey([dmdados.TbitensIt_Ref.Value]);
         dmdados.Tbprodutos.Locate('Pro_Ref', Dbgrid1.Columns.Items[2].Field.Text, []);

         //DAR BAIXA NO ESTOQUE PARA MEIA DUZIA - 1/4 DZ - Meia Duzia
         if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = '¼ DZ' THEN
         Begin
         dmdados.Tbprodutos.Edit;
         dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value+(dmdados.TbitensIt_Quantidade.Value/4);
         dmdados.tbprodutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = '½ DZ' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value/2);
         Dmdados.tbProdutos.Post;
     //    dmdados.Tbitens.Delete;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'UN' then
         begin
         Dmdados.tbprodutos.Edit;
     //    Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value);
         dmdados.TbprodutosPro_QtdAtUnidade.Value:= dmdados.TbprodutosPro_QtdAtUnidade.Value+Dmdados.TbitensIt_Quantidade.Value;
         Dmdados.tbProdutos.Post;
       //  dmdados.Tbitens.Delete;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'DZ' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value);
         Dmdados.tbProdutos.Post;
       //  dmdados.Tbitens.Delete;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'DZ ½' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value*1.5);
         Dmdados.tbProdutos.Post;
       //  dmdados.Tbitens.Delete;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'BD' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value*2.5);
         Dmdados.tbProdutos.Post;
      //   dmdados.Tbitens.Delete;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'CX' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value*30);
         Dmdados.tbProdutos.Post;
      //   Dmdados.tbItens.Delete;
         end;
end;

procedure TFmVendasBalcao.AlteraQtdExecute(Sender: TObject);
begin
     dmdados.Tbprodutos.Locate('Pro_Ref', Dbgrid1.Columns.Items[2].Field.Text, []);

         if FmVendasBalcao.DBGrid1.Columns.Items[4].Field.text = '¼ DZ' THEN
         Begin
         dmdados.Tbprodutos.Edit;
         dmdados.TbprodutosPro_QtdeAtual.Value:= dmdados.TbprodutosPro_QtdeAtual.Value+(dmdados.TbitensIt_Quantidade.Value/4);
         dmdados.tbprodutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = '½ DZ' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value/2);
         Dmdados.tbProdutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'UN' then
         begin
         Dmdados.tbprodutos.Edit;
     //    Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value);
         dmdados.TbprodutosPro_QtdAtUnidade.Value:= dmdados.TbprodutosPro_QtdAtUnidade.Value+Dmdados.TbitensIt_Quantidade.Value;
         Dmdados.tbProdutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'DZ' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value);
         Dmdados.tbProdutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'DZ ½' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value*1.5);
         Dmdados.tbProdutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'BD' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value*2.5);
         Dmdados.tbProdutos.Post;
         end
         else
         if DBGrid1.Columns.Items[4].Field.Text = 'CX' then
         begin
         Dmdados.tbprodutos.Edit;
         Dmdados.tbProdutosPro_QtdeAtual.Value:= Dmdados.tbProdutosPro_QtdeAtual.Value+(Dmdados.TbitensIt_Quantidade.Value*30);
         Dmdados.tbProdutos.Post;
         end;
end;

procedure TFmVendasBalcao.btnFecharGBoxClick(Sender: TObject);
begin
gboxTabeladeprecos.Visible:= False;
end;

procedure TFmVendasBalcao.edDZ1Click(Sender: TObject);
begin
dmdados.Tbitens.Edit;
///dbgrid1.Columns.Items[7].Field.text:= edDZ.Text;
gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edDZemeia1Click(Sender: TObject);
begin
dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edDZemeia.Text;
gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edBD1Click(Sender: TObject);
begin
dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edBD.Text;
gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edCX1Click(Sender: TObject);
begin
dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edCX.Text;
gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edMeiaDZClick(Sender: TObject);
begin
//if lblmeiaDZ.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edMeiaDZ.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edDZClick(Sender: TObject);
begin
//if lblDZ.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edDZ.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edDZemeiaClick(Sender: TObject);
begin
//if lblDZemeia.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edDZemeia.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edBDClick(Sender: TObject);
begin
//if lblBD.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edBD.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edCXClick(Sender: TObject);
begin
//if lblCX.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edCX.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.btnPrecosClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmTabeladePrecosBalcao, FrmTabeladePrecosBalcao);
    FrmTabeladePrecosBalcao.ShowModal;
    finally
    FrmTabeladePrecosBalcao.Free;
    end;
end;

procedure TFmVendasBalcao.FiltroBalcaoExecute(Sender: TObject);
Var
     Texto : String;
begin
     Texto:= 'VENDA BALCÃO';
     dmdados.Tbpedidos.Filter := 'Ped_Cliente = '+QuotedStr(Texto);
     dmdados.Tbpedidos.Filtered := True;
end;

procedure TFmVendasBalcao.edQuartoDZClick(Sender: TObject);
begin
//if lblquartoDZ.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edQuartoDZ.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.edUNClick(Sender: TObject);
begin
//if lblUN.Caption <> dbgrid1.Columns.Items[4].Field.text then
//begin
//showmessage('VALOR INCORRETO PARA ESTA UNIDADE!!!');
//exit;
//end
//else
//dmdados.Tbitens.Edit;
//dbgrid1.Columns.Items[7].Field.text:= edUN.Text;
//gboxTabeladeprecos.Visible:= false;
end;

procedure TFmVendasBalcao.rdOvosClick(Sender: TObject);
begin
     { try
      application.CreateForm(TFrmConsultaEstoque, FrmConsultaEstoque);
      FrmConsultaEstoque.ShowModal;
      finally
      FrmConsultaEstoque.Free;
      end; }
end;

procedure TFmVendasBalcao.SpeedButton5Click(Sender: TObject);
begin
      try
      application.CreateForm(TFrmConsultaEstoque, FrmConsultaEstoque);
      FrmConsultaEstoque.ShowModal;
      finally
      FrmConsultaEstoque.Free;
      end;
end;

procedure TFmVendasBalcao.AtualizaConvEstoqueExecute(Sender: TObject);
var
a,b: Real;
begin
    dmdados.Tbprodutos.DisableControls;
    dmdados.Tbprodutos.First;
    while not dmdados.Tbprodutos.Eof do
    begin
    dmdados.Tbprodutos.Edit;
    dmdados.TbprodutosPro_QtdAtBandeja.Value:=
    (dmdados.TbprodutosPro_QtdeAtual.Value / 2.5);

    //Arredontamento do campo QtdAtBandeja.
    a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
    a:= Trunc(a * 100)/100;
    dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;


    dmdados.TbprodutosPro_QtdAtCaixa.Value:=
    (dmdados.TbprodutosPro_QtdeAtual.Value / 30);

    //Arredontamento do campo QtdAtCaixa
    b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
    b:= Trunc(b * 100)/100;
    dmdados.TbprodutosPro_QtdAtCaixa.Value:= b;
    dmdados.Tbprodutos.Post;
    dmdados.Tbprodutos.Next;
    end;
    dmdados.Tbprodutos.EnableControls;
end;

end.

