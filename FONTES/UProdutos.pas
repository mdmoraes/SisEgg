unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, Mask, ExtDlgs, Db,
  DBTables, Math, ActnList;


type
  TFmProdutos = class(TForm)
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
    BtSaida: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    editDescricao: TDBEdit;
    Label3: TLabel;
    editQtCritica: TDBEdit;
    editPCusto: TDBEdit;
    SbConsultaProduto: TSpeedButton;
    Label8: TLabel;
    editReferencia: TDBEdit;
    comboUnidade: TDBLookupComboBox;
    editEntrada: TDBEdit;
    editPVenda: TDBEdit;
    dbTextDataCadastro: TDBText;
    Label12: TLabel;
    DBText1: TDBText;
    GroupBox1: TGroupBox;
    editQtAtual: TDBEdit;
    Label4: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    Image1: TImage;
    GroupBox2: TGroupBox;
    valor1: TDBEdit;
    data1: TDBEdit;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    data2: TDBEdit;
    Label17: TLabel;
    valor2: TDBEdit;
    Label18: TLabel;
    data3: TDBEdit;
    Label19: TLabel;
    valor3: TDBEdit;
    Label20: TLabel;
    data4: TDBEdit;
    Label21: TLabel;
    valor4: TDBEdit;
    Label22: TLabel;
    precomedio: TDBEdit;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    edPrecomeiaDZ: TDBEdit;
    Label9: TLabel;
    edPrecoDZ: TDBEdit;
    Label24: TLabel;
    edPrecoDZemeia: TDBEdit;
    Label25: TLabel;
    edPrecoBD: TDBEdit;
    Label26: TLabel;
    edPrecoCX: TDBEdit;
    Label27: TLabel;
    edPrecoquartoDZ: TDBEdit;
    Label28: TLabel;
    edPrecoUN: TDBEdit;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    btnPesquisaFor: TSpeedButton;
    Label30: TLabel;
    btnCompras: TSpeedButton;
    edQtdEntrada: TEdit;
    edFornecedor: TEdit;
    lbl1: TLabel;
    dbPro_Data1: TDBEdit;
    lbl2: TLabel;
    dbPro_Data2: TDBEdit;
    lbl3: TLabel;
    dbPro_Data3: TDBEdit;
    lbl4: TLabel;
    dbPro_Data4: TDBEdit;
    Painelconfirma: TPanel;
    btnSbDesiste: TSpeedButton;
    btn1: TSpeedButton;
    actlst1: TActionList;
    actZerador: TAction;
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
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure editDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure editQtAtualKeyPress(Sender: TObject; var Key: Char);
    procedure editQtCriticaKeyPress(Sender: TObject; var Key: Char);
    procedure editPCustoKeyPress(Sender: TObject; var Key: Char);
    procedure comboFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure btnSbDesisteClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure SbConsultaProdutoClick(Sender: TObject);
    procedure editPVendaExit(Sender: TObject);
    procedure editQtCriticaExit(Sender: TObject);
    procedure editEntradaExit(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure editReferenciaChange(Sender: TObject);
    procedure editReferenciaEnter(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaForClick(Sender: TObject);
    procedure editReferenciaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editQtAtualClick(Sender: TObject);
    procedure editLucroClick(Sender: TObject);
    procedure editEntradaClick(Sender: TObject);
    procedure btnCopiaForClick(Sender: TObject);
    procedure valor1Exit(Sender: TObject);
    procedure valor2Exit(Sender: TObject);
    procedure valor3Exit(Sender: TObject);
    procedure valor4Exit(Sender: TObject);
    procedure editPCustoExit(Sender: TObject);
    procedure editQtAtualChange(Sender: TObject);
    procedure dbQtdUNExit(Sender: TObject);
    procedure dbQtdDZExit(Sender: TObject);
    procedure btnComprasClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbDataEntradaClick(Sender: TObject);
    procedure editReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actZeradorExecute(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmProdutos: TFmProdutos;

implementation
     uses Base, UConsultaProduto, UPesquisaFornecedorparaProduto,
  UConsultadeComprasEfetuadas;

{$R *.DFM}

function TBRound(Value: Extended; Decimals: integer): Extended;
var
Factor, Fraction: Extended;
begin
Factor := IntPower(10, Decimals);
{ A conversão para string e depois para float evita
   erros de arredondamentos indesejáveis. }
Value := StrToFloat(FloatToStr(Value * Factor));
Result := Int(Value);
Fraction := Frac(Value);
if Fraction >= 0.5 then
   Result := Result + 1
else if Fraction <= -0.5 then
   Result := Result + 1;
Result := Result / Factor;
end;

function Acima(const X:Extended): Integer;
begin
  Result := Integer(Trunc(X));
  If Frac(X) > 0 then Inc(Result);
end;

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

procedure TFmProdutos.SpeedButton1Click(Sender: TObject);
begin
    DmDados.Tbprodutos.First;
//    actZeradorExecute(Self);
end;

procedure TFmProdutos.SpeedButton2Click(Sender: TObject);
begin
    DmDados.Tbprodutos.Prior;
//    actZeradorExecute(Self);
end;

procedure TFmProdutos.SpeedButton3Click(Sender: TObject);
begin
     DmDados.Tbprodutos.Next;
 //    actZeradorExecute(Self);
end;

procedure TFmProdutos.SpeedButton4Click(Sender: TObject);
begin
      DmDados.Tbprodutos.last;
 //     actZeradorExecute(Self);
end;

procedure TFmProdutos.BtincluirClick(Sender: TObject);
var
ST: string;
begin
//showmessage('SISTEMA APENAS DEMONSTRAÇÃO');

//   ST:= '';
     ST:= uppercase(ST);
    if inputquery('Cadastrar Produto', 'Entre com o nº da Referência:', ST) then
  //  begin
  //  if st <> '' then  //extra campos
     begin
        if DMDados.Tbprodutos.Locate('Pro_Ref', uppercase(ST), []) then
        begin
        MessageDLg('Produto já cadastrado!',mtInformation,[mbOK],0);
        PainelDados.Enabled:=True;
        Painelconfirma.Visible:=true;
        PainelControle.Visible:= False;
        editDescricao.SetFocus;
//        editEntrada.SetFocus;
       // ShowMessage('Produto já cadastrado!');
        abort;
       // SbDesisteClick(self);
        end;
     end;
     if ST = '' then
     Begin
     abort;
     end;

    //else
   // begin
    DmDados.TbInformativo.Open;
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Produto.Value:=
    DmDados.TbInformativoInf_Produto.Value+1;
    DmDados.TbInformativo.post;
    PainelDados.Enabled:=True;
 //   PainelControle.Visible:=False;
//    DmDados.BancoDados.StartTransaction;
    DmDados.Tbprodutos.Append;
    dmdados.Tbprodutos.Edit;   //modo edição 22/03/2010
    DmDados.TbprodutosPro_Codigo.Value:=
    Dmdados.TbInformativoInf_Produto.Value;
    Painelconfirma.Visible:=true;
    PainelControle.Visible:= False;
    editReferencia.Text:= ST;
    DmDados.Tbprodutos['Pro_DadaCadastro']:= DateToStr(Now);
   // end;
end;

procedure TFmProdutos.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=True;
//    DmDados.BancoDados.StartTransaction;
    DmDados.Tbprodutos.Edit;
    editEntrada.Text:= '';
    editDescricao.SetFocus;
//    DbEdit1.setfocus;
end;

procedure TFmProdutos.BtExcluirClick(Sender: TObject);
begin
  try
      if Application.MessageBox('Deseja eliminar este Registro?','Eliminação de Registro',
        MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN DmDados.Tbprodutos.Delete;//EMITE MESSAGEM DE ELIMINAÇÃO DE REGISTRO.
  Except
        on E:Exception do
     Begin
           If Pos('dmdados.Tbprodutos',E.Message)<>0 then
           Application.MessageBox('Todos os produtos já foram Excluidos!','Aviso',48);
           Abort;
     end;
   end;
end;

procedure TFmProdutos.BtSaidaClick(Sender: TObject);
begin
    PainelTitulo.SetFocus;
    Close;
end;

procedure TFmProdutos.BtConfirmaClick(Sender: TObject);
begin
  Try
    DmDados.Tbprodutos.Post;
//    DmDados.BancoDados.Commit;
    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
    Except
        on E:Exception do
     Begin
           If Pos('Pro_Descrição',E.Message)<>0 then ShowMessage('O Campo Descrição não pode ser nulo');
     end;
   end;
end;

procedure TFmProdutos.BtDesisteClick(Sender: TObject);
begin
        DmDados.Tbprodutos.Cancel;
  //      DmDados.BancoDados.Rollback;
        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFmProdutos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit2.SetFocus;
end;

procedure TFmProdutos.editDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
//// if Key = #13 then DBEdit3.SetFocus;
//if (editReferencia.Text <>'') and (editDescricao.Text <> '') then
//  Application.MessageBox('DESCRIÇÃO JÁ CADASTRADA,' + #13#10 +
//    'NÃO PODE SER ALTERADA !!!', 'A T E N Ç Ã O !!!', MB_OK + MB_ICONSTOP);
//  Abort;
end;

procedure TFmProdutos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
//    if Key = #13 then DBEdit4.SetFocus;
end;

procedure TFmProdutos.editQtAtualKeyPress(Sender: TObject; var Key: Char);
begin
////   if Key = #13 then DBEdit5.SetFocus;
//   if (editReferencia.Text <>'') and (editDescricao.Text <> '') then
//  Application.MessageBox('REFERÊNCIA JÁ CADASTRADA,' + #13#10 +
//    'NÃO PODE SER ALTERADA !!!', 'A T E N Ç Ã O !!!', MB_OK + MB_ICONSTOP);
//  Abort;
end;

procedure TFmProdutos.editQtCriticaKeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBEdit6.SetFocus;
end;

procedure TFmProdutos.editPCustoKeyPress(Sender: TObject; var Key: Char);
begin
//   if Key = #13 then DBLookupComboBox1.SetFocus;
end;

procedure TFmProdutos.comboFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
//   if Key = #13 then DBEdit1.SetFocus;
end;

procedure TFmProdutos.btnSbDesisteClick(Sender: TObject);
begin
        DmDados.Tbprodutos.Cancel;
        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFmProdutos.btn1Click(Sender: TObject);
//var                     //BOTÃO CONFIRMA...
//dz,a,b: Real;
//QtdEntrada: Integer;
begin
 //   QtdEntrada:= StrToInt(edQtdEntrada.Text);

    if comboUnidade.Text = '' then
    begin
    showmessage('O CAMPO UNIDADE NÃO PODE FICAR EM BRANCO!');
    Exit;
    end;

//    if edFornecedor.Text = '' then
//    begin
//    showmessage('O CAMPO FORNECEDOR NÃO PODE FICAR EM BRANCO!');
//    Exit;
//    end;
//
//     //GRAVANDO ENTRADA EM UNIDADES NA TABELA DETAILPRODUTO
//    dmdados.TDetailProduto.Append;
//
//    if comboUnidade.Text = 'UN' then
//    begin
//    dmdados.TDetailProduto.Edit;
//    dmdados.TDetailProdutoQtdUN.AsString:= edQtdEntrada.Text;
//    dmdados.TDetailProdutoDataEntrada.AsString:= DatetoStr(now);
//    dmdados.TDetailProdutoTipoRef.AsString:= editReferencia.Text;
//    dmdados.TDetailProdutoTipoUN.AsString:= comboUnidade.Text;
//    dmdados.TDetailProdutoTipoDescricao.AsString:= editDescricao.Text;
//    dmdados.TDetailProdutoFornecedor.AsString:= edFornecedor.Text;
//    dmdados.TDetailProduto.Edit;
//    dmdados.TDetailProduto.Post;
//    end else
//    if comboUnidade.Text = 'CX' then
//    BEGIN
//    dz:= StrToFloat(edQtdEntrada.Text);
//    dz:= dz*30;
//    dmdados.TDetailProdutoQtdDZ.AsString:= edQtdEntrada.Text;
//    dmdados.TDetailProduto.Edit;
//    dmdados.TDetailProdutoQtdDZ.Value:= dz;
//    dmdados.TDetailProdutoDataEntrada.AsString:= DatetoStr(now);
//    dmdados.TDetailProdutoTipoRef.AsString:= editReferencia.Text;
//    dmdados.TDetailProdutoTipoUN.AsString:= comboUnidade.Text;
//    dmdados.TDetailProdutoTipoDescricao.AsString:= editDescricao.Text;
//    dmdados.TDetailProdutoFornecedor.AsString:= edFornecedor.Text;
//    dmdados.TDetailProduto.Edit;
//    dmdados.TDetailProduto.Post;
//    END;
//
//    //GRAVANDO ENTRADA EM UNIDADES TABELA PRODUTOS
//      if comboUnidade.Text = 'UN' then
//      begin
//      dmdados.Tbprodutos.Edit;
//      dmdados.TbprodutosPro_QtdAtUnidade.Value:=
//      (dmdados.TbprodutosPro_QtdAtUnidade.Value +  QtdEntrada);
//      DmDados.Tbprodutos.Post;
//      end;
//
//    //GRAVANDO ENTRADA EM CAIXAS NA TABELA PRODUTOS
//      if comboUnidade.Text = 'CX' then
//      begin
//      DmDados.Tbprodutos.Edit;
//      DmDados.TbprodutosPro_QtdAtCaixa.Value:=
//      (DmDados.TbprodutosPro_QtdAtCaixa.Value + QtdEntrada);
//
////      b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
////      b:= Trunc(b * 1)/1;
////      dmdados.TbprodutosPro_QtdAtCaixa.Value:= b;
////      DmDados.Tbprodutos.Post;
//
//      //Arredontamento do campo QtdAtBandeja.
////      dmdados.Tbprodutos.Edit;
////      dmdados.TbprodutosPro_QtdAtBandeja.Value:=
////      (DmDados.TbprodutosPro_QtdAtCaixa.Value * 2.5);
//
////      a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
////      a:= Trunc(a * 1)/1;
////      dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
//
//      //Arredontamento do campo QtdAtDZ.
////      DmDados.Tbprodutos.Edit;
////      DmDados.TbprodutosPro_QtdeAtual.Value:=
////      (DmDados.TbprodutosPro_QtdAtCaixa.Value * 30);
////      DmDados.Tbprodutos.Post;
//
////      a:=  dmdados.TbprodutosPro_QtdeAtual.Value;
////      a:= Trunc(a * 1)/1;
////      dmdados.TbprodutosPro_QtdeAtual.Value:= a;
//      end;
//
//
//      edQtdEntrada.Text:= '';
//      edFornecedor.Text:= '';


      dmdados.Tbprodutos.Edit;
      dmdados.Tbprodutos.Post;
      PainelConfirma.Visible:=False;
      PainelDados.enabled:=False;
      PainelControle.Visible:=True;
end;

procedure TFmProdutos.SbConsultaProdutoClick(Sender: TObject);
begin
   try
   Application.CreateForm(TConsultaProduto,ConsultaProduto);
   ConsultaProduto.Showmodal;
   finally
   ConsultaProduto.Free;
   end;

end;

procedure TFmProdutos.editPVendaExit(Sender: TObject);
begin
(*{   dmdados.Tbprodutos.Edit;
   DmDados.TbprodutosPro_Lucro.Value:= DmDados.TbprodutosPro_PrecoVenda.Value-DmDados.TbprodutosPro_PrecoCusto.Value;
   if DmDados.TbprodutosPro_PrecoCusto.Value > DmDados.TbprodutosPro_PrecoVenda.Value then
   begin
   messagedlg ('Preço de custo é maior que o preço de venda, Verifique!',mterror,[mbok],0);
   Abort;
   end;

   dmdados.Tbprodutos.Edit;
   dmdados.TbprodutosPro_VrComissao.AsCurrency:=
(dmdados.TbprodutosPro_PrecoVenda.AsCurrency * dmdados.TbprodutosPro_PerComissao.AsCurrency)/100;*)


end;

procedure TFmProdutos.editQtCriticaExit(Sender: TObject);
begin
//    DmDados.TbprodutosPro_QtdeAtual.Value:=
//   (DmDados.TbprodutosPro_QtdeAtual.Value+DmDados.TbprodutosPro_Entrada.Value);
end;

procedure TFmProdutos.editEntradaExit(Sender: TObject);
//var
//a,b: Real;
begin

//        if comboUnidade.Text = 'DZ' Then
//        begin
//        //DmDados.TbprodutosPro_QtdeAtual:= DmDados.TbprodutosPro_QtdeAtual+DmDados.TbprodutosPro_Entrada.Value;
//        dmdados.Tbprodutos.Edit;
//        DmDados.TbprodutosPro_QtdeAtual.Value := DmDados.TbprodutosPro_QtdeAtual.Value+DmDados.TbprodutosPro_Entrada.Value;
//
//        a:= DmDados.TbprodutosPro_QtdeAtual.Value;
//        a:= Trunc(a * 1)/1;
//        DmDados.TbprodutosPro_QtdeAtual.Value:= a;
//
//        dmdados.TbprodutosPro_QtdAtBandeja.Value:=
//        DmDados.TbprodutosPro_QtdeAtual.Value / 2.5;
//        //Arredontamento do campo QtdAtBandeja.
//        a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
//        a:= Trunc(a * 1)/1;
//        dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
//           //...............................
//        dmdados.TbprodutosPro_QtdAtCaixa.Value:=
//        DmDados.TbprodutosPro_QtdeAtual.Value / 30;
//        //Arredontamento do campo QtdAtCaixa
//        b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
//        b:= Trunc(b * 1)/1;
//        dmdados.TbprodutosPro_QtdAtCaixa.Value:= b;
//        end else
//        if comboUnidade.Text = 'UN' THEN
//        dmdados.TbprodutosPro_QtdAtUnidade.Value:=
//        dmdados.TbprodutosPro_QtdAtUnidade.Value + DmDados.TbprodutosPro_Entrada.Value;

end;

procedure TFmProdutos.DBEdit1Click(Sender: TObject);
begin
showmessage('Não mude este Número');
end;

procedure TFmProdutos.editReferenciaChange(Sender: TObject);
begin
//DmDados.Tbprodutos.FindNearest([editReferencia.Text]); //marcos
end;

procedure TFmProdutos.editReferenciaEnter(Sender: TObject);
begin
//DmDados.Tbprodutos.FindNearest([editReferencia.Text]); //marcos
end;

procedure TFmProdutos.btnSelecionarClick(Sender: TObject);
begin
{    if (OpenPictureDialog1.execute) then
    begin
    DMDados.Tbprodutos.Edit;
    dbFoto.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;}
end;

procedure TFmProdutos.btnLimparClick(Sender: TObject);
begin
   // DMDados.Tbprodutos.Edit;
   // DMDados.Tbprodutos.fieldbyname('Pro_Foto').clear;
end;

procedure TFmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     BtSaidaClick(SELF);
//     if DMDados.Tbprodutos.Modified then
//     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
//    + MB_YESNO) = IDYES then
//       DMDados.Tbprodutos.Post
//      else
//      DMDados.Tbprodutos.Cancel;
end;

procedure TFmProdutos.btnPesquisaForClick(Sender: TObject);
begin
//    try
//    Application.CreateForm(TFrmPesquisaFornecedor, FrmPesquisaFornecedor);
//    FrmPesquisaFornecedor.ShowModal;
//    Finally
//    FrmPesquisaFornecedor.Free;
//    end;
end;

procedure TFmProdutos.editReferenciaExit(Sender: TObject);
//var
//RecLocal: TBookMark;
//RecAtual: String;
begin
//RecAtual:= editReferencia.Text;
//RecLocal:= DMDados.Tbprodutos.GetBookmark;

 //if Table1.State = dsInsert then
 //   if Table2.Findkey([Table1Name.Value]) then
 //     raise Exception.Create('Registro já existente');



{if DMDados.Tbprodutos.State in [dsInsert] then
If DMDados.Tbprodutos.Locate('Pro_Ref', editReferencia.Text,[]) Then
    Begin
//    RecAtual:= editReferencia.Text;
//    RecLocal:= DMDados.Tbprodutos.GetBookmark;
      MessageDlg('Produto já Cadastrado, Verifique!', mtInformation,[mbOK],0);
      DMDados.Tbprodutos.Cancel;
      DMDados.Tbprodutos.IndexName:= 'IPro_Codigo';
      DMDados.Tbprodutos.Last;
      DMDados.Tbprodutos.Delete;
//     DMDados.Tbprodutos.GotoBookmark(RecLocal);
      SbDesisteClick(self);
      end;

      If not DMDados.Tbprodutos.Locate('Pro_Ref', editReferencia.Text,[]) Then
      begin
      DMDados.Tbprodutos.Edit;
      end;
//    DMDados.Tbprodutos.Locate('Pro_Ref', RecAtual,[]);
    //  exit;
   // end;
//    DMDados.Tbprodutos.FreeBookmark(RecLocal);}
end;

procedure TFmProdutos.FormShow(Sender: TObject);
//var
//  a: Real;
begin
//DMDados.Tbprodutos.IndexName:= 'IPro_Codigo';
//DMDados.Tbprodutos.IndexName:= 'IdxPro_Ref';
//edQtdEntrada.Text:= '';
//edFornecedor.Text:= '';
//actZeradorExecute(Self);
//a:= StrToFloat(editQtAtual.Text);
//a:= Trunc(a);

//editQtAtual.Text:= FloatToStr(a);
end;

procedure TFmProdutos.editQtAtualClick(Sender: TObject);
begin
//showmessage('CAMPO PREENCHIDO PELO SISTEMA');
//abort;
end;

procedure TFmProdutos.editLucroClick(Sender: TObject);
begin
//showmessage('CAMPO PREENCHIDO PELO SISTEMA');
end;

procedure TFmProdutos.editEntradaClick(Sender: TObject);
begin
//editEntrada.Text:= '';
end;

procedure TFmProdutos.btnCopiaForClick(Sender: TObject);
begin
  { btnCopiaFor.Visible:= False;
   Dmdados.Tbprodutos.First;
   while not Dmdados.Tbprodutos.Eof do
   begin
   dmdados.Tbfornecedores.Locate('For_Razao', edFornecedor.Text, []);
   if not Dmdados.TFornecedorDetail.Locate('Ref', editReferencia.Text, []) then
    begin
    dmdados.TFornecedorDetail.Append;
    dmdados.TFornecedorDetail.Edit;
    dmdados.TFornecedorDetailCod_ForDetail.Value:= dmdados.TbfornecedoresFor_Codigo.Value;
    dmdados.TFornecedorDetailRef.AsString:= editReferencia.Text;
    dmdados.TFornecedorDetailDescricao.AsString:= editDescricao.Text;
    dmdados.TFornecedorDetailUnid.AsString:= comboUnidade.Text;
    editPCusto.Text:= FloatToStr(StringToFloat(editPCusto.Text));
    dmdados.TFornecedorDetailValor.AsString:= editPCusto.Text;
    dmdados.TFornecedorDetail.Post;
    end;
    Dmdados.Tbprodutos.Next;
   end;}

end;

procedure TFmProdutos.valor1Exit(Sender: TObject);
begin
//calculo de média
{dmdados.Tbprodutos.Edit;
dmdados.TbprodutosPro_PrecoMedio.Value:=
(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
dmdados.TbprodutosPro_Valor3.Value + dmdados.TbprodutosPro_Valor4.Value) / 4;}

//if (dmdados.Tbprodutospro_valor2.AsString = '') and
//(dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:= dmdados.TbprodutosPro_Valor1.Value;
//end else
//if (dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value) /2;
//end else
//
//if (dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
//dmdados.TbprodutosPro_Valor3.Value)/3;
//end;


end;

procedure TFmProdutos.valor2Exit(Sender: TObject);
begin
//if (dmdados.Tbprodutospro_valor2.AsString = '') and
//(dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:= dmdados.TbprodutosPro_Valor1.Value;
//end else
//if (dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value) /2;
//end else
//
//if (dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
//dmdados.TbprodutosPro_Valor3.Value)/3;


{dmdados.Tbprodutos.Edit;
dmdados.TbprodutosPro_PrecoMedio.Value:=
(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
dmdados.TbprodutosPro_Valor3.Value + dmdados.TbprodutosPro_Valor4.Value) / 4}
end;

procedure TFmProdutos.valor3Exit(Sender: TObject);
begin
//if (dmdados.Tbprodutospro_valor2.AsString = '') and
//(dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:= dmdados.TbprodutosPro_Valor1.Value;
//end else
//if (dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value) /2;
//end else
//
//if (dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
//dmdados.TbprodutosPro_Valor3.Value)/3;


{dmdados.Tbprodutos.Edit;
dmdados.TbprodutosPro_PrecoMedio.Value:=
(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
dmdados.TbprodutosPro_Valor3.Value + dmdados.TbprodutosPro_Valor4.Value) / 4}
end;

procedure TFmProdutos.valor4Exit(Sender: TObject);
begin
//if (dmdados.Tbprodutospro_valor2.AsString = '') and
//(dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:= dmdados.TbprodutosPro_Valor1.Value;
//end else
//if (dmdados.Tbprodutospro_valor3.AsString = '') and
//(dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value) /2;
//end else
//
//if (dmdados.Tbprodutospro_valor4.AsString = '') then
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
//dmdados.TbprodutosPro_Valor3.Value)/3;
//end else
//begin
//dmdados.Tbprodutos.Edit;
//dmdados.TbprodutosPro_PrecoMedio.Value:=
//(dmdados.TbprodutosPro_Valor1.Value + dmdados.TbprodutosPro_Valor2.Value +
//dmdados.TbprodutosPro_Valor3.Value + dmdados.TbprodutosPro_Valor4.Value) / 4;
//end;
end;


procedure TFmProdutos.editPCustoExit(Sender: TObject);
//var
//PCusto: Real;
begin
//PCusto:= StrToFloat(editPCusto.Text);
//PCusto:= Acima(PCusto);
//editPCusto.Text:= floatToStr(PCusto);
//editPCusto.Text:= FloatToStr(StringToFloat(editPCusto.Text));
//editPCusto.Text:= FormatFloat('00000.00', StrToFloat(editPCusto.Text));
//Edit4.Text:= FormatFloat('00000.00', StrToFloat(Edit4.Text));
//
//PCusto:= TBRound(PCusto);

end;

procedure TFmProdutos.editQtAtualChange(Sender: TObject);
//var
//a,b: Real;
begin
//DMDADOS.Tbprodutos.Edit;
//
//a:= DmDados.TbprodutosPro_QtdeAtual.Value;
//a:= Trunc(a * 1)/1;
//DmDados.TbprodutosPro_QtdeAtual.Value:= a;
//
//dmdados.TbprodutosPro_QtdAtBandeja.Value:=
//DmDados.TbprodutosPro_QtdeAtual.Value / 2.5;
////Arredontamento do campo QtdAtBandeja.
//a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
//a:= Trunc(a * 1)/1;
//dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
//   //...............................
//dmdados.TbprodutosPro_QtdAtCaixa.Value:=
//DmDados.TbprodutosPro_QtdeAtual.Value / 30;
////Arredontamento do campo QtdAtCaixa
//b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
//b:= Trunc(b * 1)/1;
//dmdados.TbprodutosPro_QtdAtCaixa.Value:= b;
//DMDADOS.Tbprodutos.Post;
end;

procedure TFmProdutos.dbQtdUNExit(Sender: TObject);
begin
(*   //      if comboUnidade.Text = 'UN' THEN
        dmdados.Tbprodutos.Edit;
        dmdados.TbprodutosPro_QtdAtUnidade.Value:=
        dmdados.TbprodutosPro_QtdAtUnidade.Value + dmdados.TDetailProdutoQtdUN.Value;
        dmdados.TDetailProdutoQtdDZ.Value:= 0;
        dmdados.TDetailProdutoDataEntrada.Value:= Date;  *)
//             Pro_QtdAtUnidade
end;

procedure TFmProdutos.dbQtdDZExit(Sender: TObject);
//var
//a,b: Real;
begin

 //       if comboUnidade.Text = 'DZ' Then
 //       begin
        //DmDados.TbprodutosPro_QtdeAtual:= DmDados.TbprodutosPro_QtdeAtual+DmDados.TbprodutosPro_Entrada.Value;
   (*     dmdados.Tbprodutos.Edit;
        DmDados.TbprodutosPro_QtdeAtual.Value := DmDados.TbprodutosPro_QtdeAtual.Value+dmdados.TDetailProdutoQtdDZ.Value;

        dmdados.TbprodutosPro_QtdAtBandeja.Value:=
        DmDados.TbprodutosPro_QtdeAtual.Value / 2.5;
        //Arredontamento do campo QtdAtBandeja.
        a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
        a:= Trunc(a * 100)/100;
        dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
           //...............................
        dmdados.TbprodutosPro_QtdAtCaixa.Value:=
        DmDados.TbprodutosPro_QtdeAtual.Value / 30;
        //Arredontamento do campo QtdAtCaixa
        b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
        b:= Trunc(b * 100)/100;
        dmdados.TbprodutosPro_QtdAtCaixa.Value:= b;
      {  end else
        if comboUnidade.Text = 'UN' THEN
        dmdados.TbprodutosPro_QtdAtUnidade.Value:=
        dmdados.TbprodutosPro_QtdAtUnidade.Value + dmdados.TDetailProdutoQtdUN.Value; }
        dmdados.TDetailProdutoDataEntrada.Value:= Date; *)

end;

procedure TFmProdutos.btnComprasClick(Sender: TObject);
begin
    //
end;

procedure TFmProdutos.SpeedButton6Click(Sender: TObject);
begin
//dmdados.TDetailProduto.First;
end;

procedure TFmProdutos.SpeedButton7Click(Sender: TObject);
begin
//dmdados.TDetailProduto.Prior;
end;

procedure TFmProdutos.SpeedButton8Click(Sender: TObject);
begin
//dmdados.TDetailProduto.Next;
end;

procedure TFmProdutos.SpeedButton9Click(Sender: TObject);
begin
//dmdados.TDetailProduto.Last;
end;

procedure TFmProdutos.btnIncluirClick(Sender: TObject);
begin
//GroupBox4.Enabled:= True;
//dmdados.TDetailProduto.Append;
end;

procedure TFmProdutos.btnAlterarClick(Sender: TObject);
begin
//GroupBox4.Enabled:= True;
//dmdados.TDetailProduto.Edit;
end;

procedure TFmProdutos.btnGravarClick(Sender: TObject);
//var
//a,b: Real;
begin
//    //GRAVANDO ENTRADA EM UNIDADES NA TABELA DETAILPRODUTO
//    dmdados.TDetailProduto.Append;
//    dmdados.TDetailProdutoQtdUN.AsString:= dbQtdUN.Text;
//    dmdados.TDetailProdutoQtdDZ.AsString:= dbQtdDZ.Text;
//    dmdados.TDetailProdutoDataEntrada.AsString:= DatetoStr(now);
//    dmdados.TDetailProdutoFornecedor.AsString:= edFornecedor.Text;
//    dmdados.TDetailProduto.Post;

(*    //GRAVANDO ENTRADA EM UNIDADES
      dmdados.Tbprodutos.Edit;
      dmdados.TbprodutosPro_QtdAtUnidade.Value:=
      dmdados.TbprodutosPro_QtdAtUnidade.Value + dmdados.TDetailProdutoQtdUN.Value;

    //GRAVANDO ENTRADA EM DUZIAS
      dmdados.Tbprodutos.Edit;
      DmDados.TbprodutosPro_QtdeAtual.Value := DmDados.TbprodutosPro_QtdeAtual.Value+dmdados.TDetailProdutoQtdDZ.Value;

      dmdados.TbprodutosPro_QtdAtBandeja.Value:=
      DmDados.TbprodutosPro_QtdeAtual.Value / 2.5;
      //Arredontamento do campo QtdAtBandeja.
      a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
      a:= Trunc(a * 100)/100;
      dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
         //...............................
      dmdados.TbprodutosPro_QtdAtCaixa.Value:=
      DmDados.TbprodutosPro_QtdeAtual.Value / 30;
      //Arredontamento do campo QtdAtCaixa
      b:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
      b:= Trunc(b * 100)/100;
      dmdados.TbprodutosPro_QtdAtCaixa.Value:= b; *)
    {  end else
      if comboUnidade.Text = 'UN' THEN
      dmdados.TbprodutosPro_QtdAtUnidade.Value:=
      dmdados.TbprodutosPro_QtdAtUnidade.Value + dmdados.TDetailProdutoQtdUN.Value; }


//showmessage('DADOS GRAVADOS!');
//GroupBox4.Enabled:= False;
end;

procedure TFmProdutos.btnExcluirClick(Sender: TObject);
begin
(*  try
      if Application.MessageBox('Deseja Excluir este Registro?','Eliminação de Registro',
        MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL)=ID_YES THEN DmDados.TDetailProduto.Delete;//EMITE MESSAGEM DE ELIMINAÇÃO DE REGISTRO.
  Except
        on E:Exception do
     Begin
           If Pos('DmDados.TDetailProduto',E.Message)<>0 then
           Application.MessageBox('Todos os registros já foram Excluidos!','Aviso',48);
           Abort;
     end;
   end;
//GroupBox4.Enabled:= False; *)
end;

procedure TFmProdutos.btnCancelarClick(Sender: TObject);
begin
//dmdados.TDetailProduto.Cancel;
//GroupBox4.Enabled:= False;
end;

procedure TFmProdutos.dbDataEntradaClick(Sender: TObject);
begin
//showmessage('DATA PREENCHIDA PELO SISTEMA, AO GRAVAR !');
end;

procedure TFmProdutos.editReferenciaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (editReferencia.Text <>'') and (editDescricao.Text <> '') then
  Application.MessageBox('REFERÊNCIA JÁ CADASTRADA,' + #13#10 +
    'NÃO PODE SER ALTERADA !!!', 'A T E N Ç Ã O !!!', MB_OK + MB_ICONSTOP);
  Abort;
end;

procedure TFmProdutos.editDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//   if (editReferencia.Text <>'') and (editDescricao.Text <> '') then
//  Application.MessageBox('DESCRIÇÃO JÁ CADASTRADA,' + #13#10 +
//    'NÃO PODE SER ALTERADA !!!', 'A T E N Ç Ã O !!!', MB_OK + MB_ICONSTOP);
//  Abort;
end;

procedure TFmProdutos.actZeradorExecute(Sender: TObject);
begin
//       if comboUnidade.Text = 'UN' then
//       begin
//       dmdados.Tbprodutos.Edit;
//       DmDados.TbprodutosPro_QtdeAtual.Value:= 0;
//       DmDados.TbprodutosPro_QtdAtBandeja.Value:= 0;
//       DmDados.TbprodutosPro_QtdAtCaixa.Value:=0;
//       DmDados.Tbprodutos.Post;
//       dmdados.Tbprodutos.Edit;
//       end;
//
//       if comboUnidade.Text <> 'UN' then
//       begin
//       dmdados.Tbprodutos.Edit;
//       DmDados.TbprodutosPro_QtdAtUnidade.Value:= 0;
//       DmDados.Tbprodutos.Post;
//       dmdados.Tbprodutos.Edit;
//       end;

end;

procedure TFmProdutos.DBEdit2Change(Sender: TObject);
//var
//a,b: Real;  //EVENTO ONCHANGE NO CAMPO QTD EM CAIXA - 26/10/2012
begin
////Arredontamento do campo QtdCX.
//DMDADOS.Tbprodutos.Edit;
////dmdados.TbprodutosPro_QtdAtBandeja.Value:=
////(DmDados.TbprodutosPro_QtdAtCaixa.Value * 12);
//a:=  dmdados.TbprodutosPro_QtdAtCaixa.Value;
//a:= Trunc(a * 1)/1;
//dmdados.TbprodutosPro_QtdAtCaixa.Value:= a;
//
//
//
////Arredontamento do campo QtdAtBandeja.
//DMDADOS.Tbprodutos.Edit;
//dmdados.TbprodutosPro_QtdAtBandeja.Value:=
//(DmDados.TbprodutosPro_QtdAtCaixa.Value * 12);
//a:=  dmdados.TbprodutosPro_QtdAtBandeja.Value;
//a:= Trunc(a * 1)/1;
//dmdados.TbprodutosPro_QtdAtBandeja.Value:= a;
//
////Arredontamento do campo QtdAtDZ.
//DMDADOS.Tbprodutos.Edit;
//dmdados.TbprodutosPro_QtdeAtual.Value:=
//(DmDados.TbprodutosPro_QtdAtCaixa.Value * 30);
//b:=  dmdados.TbprodutosPro_QtdeAtual.Value;
//b:= Trunc(b * 1)/1;
//dmdados.TbprodutosPro_QtdeAtual.Value:= b;
//DMDADOS.Tbprodutos.Post;

end;

end.
