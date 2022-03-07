unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Menus, StdCtrls, Buttons, ExtDlgs,
  JvComponentBase,
  JvBalloonHint, JvFormAutoSize, DB, DBTables;
  

type
  TFrmMain = class(TForm)
    stbBarra: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    menuCadastro1: TMenuItem;
    menuPedido1: TMenuItem;
    menuConsultas1: TMenuItem;
    menuFinanceiro1: TMenuItem;
    menuRelatrios1: TMenuItem;
    menuSegurana1: TMenuItem;
    menuSobreoSistema1: TMenuItem;
    menuSair1: TMenuItem;
    submenuClientes1: TMenuItem;
    submenuFornecedores1: TMenuItem;
    submenuVendedores1: TMenuItem;
    submenuFuncionrios1: TMenuItem;
    submenuProdutos1: TMenuItem;
    submenuUnidadedeMedidas1: TMenuItem;
    submenuFormasdePagamento1: TMenuItem;
    submenuGerarPedido1: TMenuItem;
    submenuRelClientes1: TMenuItem;
    submenuRelFornecedores1: TMenuItem;
    submenuRelProdutos1: TMenuItem;
    submenuCadastrodeUsurios1: TMenuItem;
    submenuAniversariantes1: TMenuItem;
    submenuFluxodeCaixa: TMenuItem;
    GroupBox1: TGroupBox;
    btnOK: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    btnCancelar: TButton;
    Image1: TImage;
    submenuDespesas: TMenuItem;
    submenuInventriodeEstoque: TMenuItem;
    submenuRankingdeProdutos: TMenuItem;
    submenuEstoque: TMenuItem;
    submenuRanking: TMenuItem;
    submenuItensmaisvendidos: TMenuItem;
    submenumelhoresClientes1: TMenuItem;
    submenuEmbalagens1: TMenuItem;
    submenuClientesporDiadaSemana: TMenuItem;
    submenuFaturadosPendntes: TMenuItem;
    submenuVendaBalcao: TMenuItem;
    submenuBoletos: TMenuItem;
    submenuVendas: TMenuItem;
    submenuGraficodoEstoque: TMenuItem;
    SubmenutabeladePreosBalcao: TMenuItem;
    N1: TMenuItem;
    submenuConsultaVendas: TMenuItem;
    menuGerencialConsultadeAtivoPassivo: TMenuItem;
    submenuVendasdeItensporperiodo: TMenuItem;
    submenuConsultaDataltimaCompra: TMenuItem;
    N2: TMenuItem;
    submenuContasaPagar: TMenuItem;
    submenuContasaReceber1: TMenuItem;
    JvBalloonHint1: TJvBalloonHint;
    submenuCadProdutos1: TMenuItem;
    JvFormAutoSize1: TJvFormAutoSize;
    img1: TImage;
    menuSuporte: TMenuItem;
    N3: TMenuItem;
    submenuCadastroTipodeEntrada: TMenuItem;
    submenuCadastroTipodeSada: TMenuItem;
    Query2: TQuery;
    tblQuery2REF: TStringField;
    tblQuery2DESCRICAO: TStringField;
    tblQuery2UN: TStringField;
    tblQuery2ESTOQUE: TFloatField;
    MenuMenuCadastrodePerdas: TMenuItem;
    MenuMenuMovimentacaodeCompras: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure menuSair1Click(Sender: TObject);
    procedure submenuMudarVisual1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CarregarSkin;
    procedure LeIni(var Caminho: String);
    procedure GravaIni(Caminho: String);
    procedure menuSobreoSistema1Click(Sender: TObject);
    procedure submenuConfiguraesdeDados1Click(Sender: TObject);
    procedure submenuCadastrodeUsurios1Click(Sender: TObject);
    procedure submenuClientes1Click(Sender: TObject);
    procedure submenuFornecedores1Click(Sender: TObject);
    procedure submenuVendedores1Click(Sender: TObject);
    procedure submenuProdutos1Click(Sender: TObject);
    procedure submenuUnidadedeMedidas1Click(Sender: TObject);
    procedure submenuFormasdePagamento1Click(Sender: TObject);
    procedure submenuGerarPedido1Click(Sender: TObject);
    procedure submenuEstoque1Click(Sender: TObject);
    procedure submenuNecessidadedeCompras1Click(Sender: TObject);
    procedure submenuFaturamento1Click(Sender: TObject);
    procedure submenuRelClientes1Click(Sender: TObject);
    procedure submenuFuncionrios1Click(Sender: TObject);
    procedure submenuRelProdutos1Click(Sender: TObject);
    procedure submenuRelFornecedores1Click(Sender: TObject);
    procedure submenuFrotas1Click(Sender: TObject);
    procedure submenuCombustvel1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure submenuPorVendedor1Click(Sender: TObject);
    procedure submenutodosVendedores1Click(Sender: TObject);
    procedure submenuFluxodeCaixaClick(Sender: TObject);
    procedure submenuDespesasClick(Sender: TObject);
//    procedure submenuControledePrestacoesClick(Sender: TObject);
    procedure submenuInventriodeEstoqueClick(Sender: TObject);
    procedure submenuRankingdeProdutosClick(Sender: TObject);
    procedure submenuEtiquetasClientes1Click(Sender: TObject);
    procedure submenuEtiquetasFornecedores1Click(Sender: TObject);
    procedure submenuEmpresasClick(Sender: TObject);
    procedure submenuEstoqueClick(Sender: TObject);
    procedure submenuVendedoresSinteticoClick(Sender: TObject);
    procedure submenutotalizacoesdoEstoqueClick(Sender: TObject);
    procedure submenuItensmaisvendidosClick(Sender: TObject);
    procedure submenumelhoresClientes1Click(Sender: TObject);
    procedure submenuPendenciasClick(Sender: TObject);
    procedure submenuEmbalagens1Click(Sender: TObject);
    procedure submenuClientesporDiadaSemanaClick(Sender: TObject);
    procedure submenuFaturadosPendntesClick(Sender: TObject);
    procedure submenuVendaBalcaoClick(Sender: TObject);
    procedure submenuBoletosClick(Sender: TObject);
    procedure submenuvendasExternas1Click(Sender: TObject);
    procedure submenuvendasBalcaoClick(Sender: TObject);
    procedure submenuGraficodoEstoqueClick(Sender: TObject);
    procedure SubmenutabeladePreosBalcaoClick(Sender: TObject);
    procedure submenuConsultaVendasClick(Sender: TObject);
    procedure GerencialContasPagarClick(Sender: TObject);
    procedure menuFinanceiro1Click(Sender: TObject);
    procedure menuGerencialConsultadeAtivoPassivoClick(Sender: TObject);
    procedure submenuVendasdeItensporperiodoClick(Sender: TObject);
    procedure submenuFaturamentoporPeriodoClick(Sender: TObject);
    procedure submenuConsultaDataltimaCompraClick(Sender: TObject);
    procedure submenuContasaPagarClick(Sender: TObject);
    procedure submenuContasaReceber1Click(Sender: TObject);
    procedure submenuCadProdutos1Click(Sender: TObject);
    procedure menuSuporteClick(Sender: TObject);
    procedure submenuCadastroTipodeEntradaClick(Sender: TObject);
    procedure submenuCadastroTipodeSadaClick(Sender: TObject);
    procedure MenuMenuCadastrodePerdasClick(Sender: TObject);
    procedure MenuMenuMovimentacaodeComprasClick(Sender: TObject);
    procedure submenuVendasClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  Caminho : String;
  ss: string;
//  LeIni: TIniFile;

  end;

var
  FrmMain: TFrmMain;
  Caminho : String;
  ss: string;
//  somaCX, SomaUN : Integer;
  somaCX, SomaUN : Double;
//  LeIni: TIniFile;
implementation

uses UAboutMydas, UConfiguracoes, UFrmPermissoes, UFornecedores,
  UCadastroUnidades, UCalculadora, UCalendario_legal, UConsultaEstoque,
  UConsultaProduto, UFrmNecessidadedeCompra, UPedidos, UProdutos,
  UVendedores, UFrmFormasPagamento, UFaturamento, URelClientes,
  URelFornecedores, URelLucros, URelOrcamento, URelProdutos,
  UCadCli, UCadClie, UCadstrodeFuncionarios, UDMUsuario, Base,
  UCadastrodeCombustivel, IniFiles,
  UCalculoComissoVendedores, UCalculoComissoporVendedores,
  UCalculoComissoVendedoresTodos, UFluxodeCaixa, UCadastrodeDespesas,
//  UControledePrestacoes, URelLevantamentodeEstoque, URankingdeProdutos,
  UQrLabelCliente, UQrLabelFornecedor, UCadastroEmpresas, URelEstoque,
  UConsultaComissoesVendedoresSintetico, UConsultaTotalizacoesProduto,
  URankingVendasdeProdutos, URankingClientes, UFaturados,
  UCadastroEmbalagens, URelacaoClientesporDiaSemana,
  UConsultadeFaturadosPendentes, UVendasnoBalcao, UConsultaVendaBalcao,
  UConsultaVendasExternas, UGraficos, UTabeladePrecosBalcao,
  UConsultadeVendas, UContasaPagar, USenhaAcessoGerencial,
  UConsutltaAtivoPassivo, UCalculoFaturamentoPerodo,
  UConsultaHistoricodeCompras, URelLevantamentodeEstoque,
  UEntradadeProduto, UContasaPagarNew, UContasaReceberNew, UEstoque,
  UCadastroFormasPagamentoNew, USuporte, UCadastroTipoSaida,
  UCadastroTipoEntrada, UAtualizaQtdOvo, UConsultaContasReceber,
  UCadastrodePerdas, UConsultadeComprasEfetuadas;

{$R *.dfm}

procedure TFrmMain.Timer1Timer(Sender: TObject);
begin
stbBarra.panels[1].Text:= datetostr(date);
stbBarra.panels[2].Text:= timetostr(time);
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
      GroupBox1.Visible:= False;
      stbBarra.panels[1].Text:= datetostr(date);
      stbBarra.panels[2].Text:= timetostr(time);
      if fileexists (extractfilepath(paramstr(0)) + '\Dados\logo.bmp') then
      begin
      Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '\Dados\logo.bmp');
      end;
end;

procedure TFrmMain.menuSair1Click(Sender: TObject);
begin
         case MessageBoxW(Handle, 'DESEJA SAIR DO SISTEMA... ?',
           'ATENÇÃO !!!', MB_OKCANCEL + MB_ICONQUESTION) of
           IDOK:
             begin
             Application.Terminate;
             end;
           IDCANCEL:
             begin
             Exit;
             end;
         end;



end;

procedure TFrmMain.submenuMudarVisual1Click(Sender: TObject);
begin
//GroupBox1.Visible:= True;
//label1.Caption := 'Total de '+IntToStr(ListBox1.Items.Count)+' skins'
end;

procedure TFrmMain.Button3Click(Sender: TObject);
var
  Procurar : TSearchRec;
  Arquivos: Integer;
begin
  Label2.Visible:= True;
  Edit1.Visible:= True;
//  ListBox1.Visible:= True;
  Arquivos := 0;
  Arquivos := Arquivos + faDirectory;
  Arquivos := Arquivos + faArchive;
  Arquivos := Arquivos + faAnyFile;

    if FindFirst(Caminho, Arquivos, Procurar) = 0 then
    begin
      repeat
        if (Procurar.Attr and Arquivos) = Procurar.Attr then
        ListBox1.Items.Add(Procurar.Name);
      until FindNext(Procurar) <> 0;
      FindClose(Procurar);
    end;
//   label1.Caption := 'Total de '+IntToStr(ListBox1.Items.Count)+' skins'
end;

procedure TFrmMain.btnOKClick(Sender: TObject);
begin
GroupBox1.Visible:= False;
end;

procedure TFrmMain.btnCancelarClick(Sender: TObject);
begin
//CarregarSkin();
end;

procedure TFrmMain.ListBox1Click(Sender: TObject);
//r
// i : integer;
// ss:string;                label1
begin
 { i  := ListBox1.ItemIndex;
  ss := Copy(Caminho,1,Pos('*.skn',Caminho)-2)+'\'+ListBox1.items.strings[i];
  Edit1.Text := ss;
  SkinData1.SkinFile := ss;
  if not SkinData1.Active Then SkinData1.Active := True; }
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
// Caminho := ExtractFilePath(Application.ExeName) + 'skins\*.skn';
//  LeIni(ss);
//  CarregarSkin();
//  if not SkinData1.Active Then SkinData1.Active := True;
end;

// Proc CARREGASKIN
procedure TFrmMain.CarregarSkin;
{var
  i : integer;
  Skin : string;
  ss: string;  }
// LeIni: TIniFile;
begin
{  LeIni(Skin);
  i := ListBox1.ItemIndex;
  ss := Skin;
//  Skin := ss;
  SkinData1.SkinFile := ss;
  if not SkinData1.Active Then SkinData1.Active := True;}
end;

procedure TFrmMain.LeIni(var Caminho: String);
//var
//  ArqIni : tIniFile;
begin
{  ArqIni := TIniFile.Create('C:\Mydas Estoque\Skin.Ini');
  Try
    Caminho := ArqIni.ReadString('Informação', 'Caminho', Caminho);
  Finally
    ArqIni.Free;
  end; }
end;

// PROC GRAVAINI
procedure TFrmMain.GravaIni(Caminho: String);
//var
//ArqIni : TIniFile;
//Caminho: String;
begin
{Caminho:= Edit1.Text;
ArqIni := TIniFile.Create('C:\Mydas Estoque\Skin.Ini');
  Try
  ArqIni.WriteString('Informação', 'Caminho', Caminho);
  Finally
  ArqIni.Free;
  end; }
end;
/////////
/////////

procedure TFrmMain.menuSobreoSistema1Click(Sender: TObject);
begin
     try
     Application.CreateForm(TAboutBoxMydas, AboutBoxMydas);
     AboutBoxMydas.showmodal;
     finally
     AboutBoxMydas.free;
     end;
end;

procedure TFrmMain.submenuConfiguraesdeDados1Click(Sender: TObject);
begin
{     try
     Application.CreateForm(TFormDadosEmpresa, FormDadosEmpresa);
     FormDadosEmpresa.showmodal;
     finally
     FormDadosEmpresa.free;
     end;}
end;

procedure TFrmMain.submenuCadastrodeUsurios1Click(Sender: TObject);
begin
    try
     Application.CreateForm(TFrmControledePermissoes, FrmControledePermissoes);
     FrmControledePermissoes.showmodal;
     finally
     FrmControledePermissoes.free;
     end;
end;

procedure TFrmMain.submenuClientes1Click(Sender: TObject);
begin
      try
      Application.CreateForm(TFrmCadClie, FrmCadClie);
      FrmCadClie.ShowModal;
      finally
      FrmCadClie.Free;
      end;
end;
           
procedure TFrmMain.submenuFornecedores1Click(Sender: TObject);
begin
   Try
   Application.CreateForm(TFmfornecedores, Fmfornecedores);
   Fmfornecedores.ShowModal;
   finally
   Fmfornecedores.Free;
   end;
end;

procedure TFrmMain.submenuVendedores1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmVendedores, FrmVendedores);
    FrmVendedores.ShowModal;
    finally
    FrmVendedores.Free;
    end;
end;

procedure TFrmMain.submenuProdutos1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrmEntradaProduto, FrmEntradaProduto);
  FrmEntradaProduto.ShowModal;
  finally
  FrmEntradaProduto.Free;
  end;



//  Application.CreateForm(TFmProdutos, FmProdutos);
//  FmProdutos.ShowModal;
//  Finally
//  FmProdutos.Free;
  
end;

procedure TFrmMain.submenuUnidadedeMedidas1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFrmCadastroUnidades, FrmCadastroUnidades);
  FrmCadastroUnidades.ShowModal;
  finally
  FrmCadastroUnidades.Free;
  end;
end;

procedure TFrmMain.submenuFormasdePagamento1Click(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmCadFormasPagamentoNew, FrmCadFormasPagamentoNew);
   FrmCadFormasPagamentoNew.ShowModal;
   Finally
   FrmCadFormasPagamentoNew.Free;
   end;
end;

procedure TFrmMain.submenuGerarPedido1Click(Sender: TObject);
begin
  Try
  Application.CreateForm(TFmPedidos, FmPedidos);
  FmPedidos.ShowModal;
  Finally
  FmPedidos.Free;
  end;
end;

procedure TFrmMain.submenuEstoque1Click(Sender: TObject);
begin
   Try
   Application.CreateForm(TFrmEstoque, FrmEstoque);
   FrmEstoque.ShowModal;
   Finally
   FrmEstoque.Free;
   end;
end;
      
procedure TFrmMain.submenuNecessidadedeCompras1Click(Sender: TObject);
begin
   Try
   Application.CreateForm(TFrmNecessidadedeCompras, FrmNecessidadedeCompras);
   FrmNecessidadedeCompras.ShowModal;
   Finally
   FrmNecessidadedeCompras.Free;
   end;
end;

procedure TFrmMain.submenuFaturamento1Click(Sender: TObject);
begin
{    Try
    Application.CreateForm(TFrmFaturamento, FrmFaturamento);
    FrmFaturamento.ShowModal;
    Finally
    FrmFaturamento.Free;
    end;}
end;

procedure TFrmMain.submenuRelClientes1Click(Sender: TObject);
begin
   Try
   Application.CreateForm(TQrCliente, QrCliente);
   DMDados.TbClientes.IndexName:= 'ICli_Cliente';
   QrCliente.Preview;
   Finally
   QrCliente.Free;
   end;
   DMDados.TbClientes.IndexName:= '';
end;

procedure TFrmMain.submenuFuncionrios1Click(Sender: TObject);
begin
    Try
    Application.CreateForm(TFrmCadastrodeFuncionarios,FrmCadastrodeFuncionarios);
    FrmCadastrodeFuncionarios.ShowModal;
    Finally
    FrmCadastrodeFuncionarios.Free;
    end;
end;

procedure TFrmMain.submenuRelProdutos1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFrmRelProdutos, FrmRelProdutos);
    FrmRelProdutos.QuickRepProdutos.Preview;
    Finally
    FrmRelProdutos.Free;
    end;
end;

procedure TFrmMain.submenuRelFornecedores1Click(Sender: TObject);
begin
     TRY
     Application.CreateForm(TQrFornecedores, QrFornecedores);
     DMDados.Tbfornecedores.IndexName:= 'idxFor_Razao';
     QrFornecedores.Preview;
     Finally
     QrFornecedores.Free;
     end;
     DMDados.Tbfornecedores.IndexName:= '';
end;

procedure TFrmMain.submenuFrotas1Click(Sender: TObject);
begin
{    try
    Application.CreateForm(TFrmControledeFrotas, FrmControledeFrotas);
    FrmControledeFrotas.ShowModal;
    finally
    FrmControledeFrotas.Free;
    end;}
end;

procedure TFrmMain.submenuCombustvel1Click(Sender: TObject);
begin
{    try
    Application.CreateForm(TFrmCadastrodeCombustivel, FrmCadastrodeCombustivel);
    FrmCadastrodeCombustivel.ShowModal;
    finally
    FrmCadastrodeCombustivel.Free;
    end;}
end;

procedure TFrmMain.Button4Click(Sender: TObject);
begin
//Edit1.Text := Copy(Caminho,1,Pos('*.skn',Caminho)-1);
Edit1.Text := Copy(Caminho,1,Pos('*.skn',Caminho)-2);
end;

procedure TFrmMain.submenuPorVendedor1Click(Sender: TObject);
begin
  {  Try
    Application.CreateForm(TFrmCalculoComissaoporVendedores, FrmCalculoComissaoporVendedores);
    FrmCalculoComissaoporVendedores.ShowModal;
    Finally;
    FrmCalculoComissaoporVendedores.Free;
    end; }
end;

procedure TFrmMain.submenutodosVendedores1Click(Sender: TObject);
begin
{    Try
    Application.CreateForm(TFrmCalculoComissaoVendedoresTodos, FrmCalculoComissaoVendedoresTodos);
    FrmCalculoComissaoVendedoresTodos.ShowModal;
    Finally;
    FrmCalculoComissaoVendedoresTodos.Free;
    end; }
end;

procedure TFrmMain.submenuFluxodeCaixaClick(Sender: TObject);
//var
//ST: string;
begin
(*    ST:= '';
    if inputquery('SENHA DE ACESSO', 'ENTRE COM A SENHA:', ST) then
    if st = '1782' then
    begin  *)

    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'Fluxo';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;

procedure TFrmMain.submenuDespesasClick(Sender: TObject);
begin
      Try
      Application.CreateForm(TFrmCadastrodeDespesas, FrmCadastrodeDespesas);
      FrmCadastrodeDespesas.ShowModal;
      Finally
      FrmCadastrodeDespesas.Free;
      end;
end;

//procedure TFrmMain.submenuControledePrestacoesClick(Sender: TObject);
//begin
//    {  Try
//      Application.CreateForm(TFrmControlePrestacoes, FrmControlePrestacoes);
//      FrmControlePrestacoes.ShowModal;
//      Finally
//      FrmControlePrestacoes.Free;
//      end;}
//end;

procedure TFrmMain.submenuInventriodeEstoqueClick(Sender: TObject);
begin
      try
      Application.CreateForm(TFrmRelLevantamentodeEstoque, FrmRelLevantamentodeEstoque);
//      FrmRelLevantamentodeEstoque.ShowModal;
      //DmDados.Tbprodutos.IndexName:= 'idxPro_Ref';
      FrmRelLevantamentodeEstoque.lblRotuloRel.Caption:= 'INVENTÁRIO   DE   ESTOQUE  -   ( FÍSICO )';
      FrmRelLevantamentodeEstoque.QuickRep1.Preview;
      finally
      FrmRelLevantamentodeEstoque.Free;
      end;
end;

procedure TFrmMain.submenuRankingdeProdutosClick(Sender: TObject);
begin
//      try
//      Application.CreateForm(TFrmRankingdeProdutos, FrmRankingdeProdutos);
//      FrmRankingdeProdutos.ShowModal;
//      finally
//      FrmRankingdeProdutos.Free;
//      end;
end;

procedure TFrmMain.submenuEtiquetasClientes1Click(Sender: TObject);
begin
      try
      Application.CreateForm(TQRLabelFormCliente, QRLabelFormCliente);
      QRLabelFormCliente.QuickRep1.Preview;
      finally
      QRLabelFormCliente.Free;
      end;
end;

procedure TFrmMain.submenuEtiquetasFornecedores1Click(Sender: TObject);
begin
      try
      Application.CreateForm(TQRLabelFormFornecedore, QRLabelFormFornecedore);
      QRLabelFormFornecedore.QuickRep1.Preview;
      finally
      QRLabelFormFornecedore.Free;
      end;
end;

procedure TFrmMain.submenuEmpresasClick(Sender: TObject);
begin
{try
application.CreateForm(TFrmCadastrodeEmpresas, FrmCadastrodeEmpresas);
FrmCadastrodeEmpresas.ShowModal;
finally
FrmCadastrodeEmpresas.Free;
end;}
end;

procedure TFrmMain.submenuEstoqueClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmRelatorioEstoque, FrmRelatorioEstoque);
       //IMPRIMINDO O TOTAL DE CX / UN NO RODAPÉ DO RELATÓRIO.....
              somaCX := 0;
              SomaUN := 0;

              Query2.Close;
              Query2.SQL.Clear;
              Query2.SQL.Add('SELECT REF, DESCRICAO, UN, SUM(QTD) AS ESTOQUE FROM ESTOQUE');
              Query2.SQL.Add('WHERE REF is not null');
              Query2.SQL.Add('GROUP BY REF, DESCRICAO, UN');
              Query2.SQL.Add('ORDER BY UN DESC, REF');
              Query2.Prepare;
              Query2.Open;

              Query2.First;
              while not Query2.Eof do
              begin

                      if Query2.FieldByName('UN').AsString = 'CX' then  //03032015 and (Query2.fieldbyname('ESTOQUE').AsInteger >= 0) then
                      begin
                       //   somaCX:= somaCX + Query2.fieldbyname('ESTOQUE').AsInteger;
                          somaCX:= somaCX + Query2.fieldbyname('ESTOQUE').AsFloat;
                       //   Query2.Next;
                      end else

                      if Query2.FieldByName('UN').AsString = 'UN' then   // 03032015 and (Query2.fieldbyname('ESTOQUE').AsInteger >= 0) then
                      begin
                        //  SomaUN:= SomaUN + Query2.fieldbyname('ESTOQUE').AsInteger;
                          SomaUN:= SomaUN + Query2.fieldbyname('ESTOQUE').AsFloat;
                        //  Query2.Next;
                      end;
              Query2.Next;
              end;


              FrmRelatorioEstoque.lblTotalUN.Enabled := True;
              FrmRelatorioEstoque.lblTotalUN.Caption := 'TOTAL (UN): ' + FloatToStr(SomaUN);

              FrmRelatorioEstoque.lblTotalCX.Enabled := True;

         //     edTotalPedidos.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);

//              FrmRelatorioEstoque.lblTotalCX.Caption := 'TOTAL (CX): ' + FloatToStr(somaCX);


              FrmRelatorioEstoque.lblTotalCX.Caption := 'TOTAL (CX): ' + FormatFloat('#,##0.00', somaCX);


      FrmRelatorioEstoque.QuickRep1.Preview;
      finally
      FrmRelatorioEstoque.Free;
      end;
end;

procedure TFrmMain.submenuVendedoresSinteticoClick(Sender: TObject);
begin
      {  try
        application.CreateForm(TFrmConsultaComissoesVendedoresSintetico, FrmConsultaComissoesVendedoresSintetico);
        FrmConsultaComissoesVendedoresSintetico.ShowModal;
        finally
        FrmConsultaComissoesVendedoresSintetico.Free;
        end; }
end;

procedure TFrmMain.submenutotalizacoesdoEstoqueClick(Sender: TObject);
begin
     { try
      application.CreateForm(TFrmConsultaTotalProdutos, FrmConsultaTotalProdutos);
      FrmConsultaTotalProdutos.ShowModal;
      finally
      FrmConsultaTotalProdutos.Free;
      end; }
end;

procedure TFrmMain.submenuItensmaisvendidosClick(Sender: TObject);
begin

        try
        application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
        FrmSenhadeAcessoGerencial.Label4.Caption:= 'Itens';
        FrmSenhadeAcessoGerencial.ShowModal;
        finally
        FrmSenhadeAcessoGerencial.Free;
        end;
end;

procedure TFrmMain.submenumelhoresClientes1Click(Sender: TObject);
begin
        try
        application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
        FrmSenhadeAcessoGerencial.Label4.Caption:= 'RankCli';
        FrmSenhadeAcessoGerencial.ShowModal;
        finally
        FrmSenhadeAcessoGerencial.Free;
        end;
end;

procedure TFrmMain.submenuPendenciasClick(Sender: TObject);
begin
{      try
      application.CreateForm(TFrmFaturados, FrmFaturados);
      FrmFaturados.ShowModal;
      finally
      FrmFaturados.Free;
      end; }
end;

procedure TFrmMain.submenuEmbalagens1Click(Sender: TObject);
begin
try
application.CreateForm(TFrmCadastroEmbalagens,FrmCadastroEmbalagens);
FrmCadastroEmbalagens.ShowModal;
finally
FrmCadastroEmbalagens.Free;
end;
end;

procedure TFrmMain.submenuClientesporDiadaSemanaClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmRelacaoClientesporDiaSemana, FrmRelacaoClientesporDiaSemana);
      FrmRelacaoClientesporDiaSemana.ShowModal;
      finally
      FrmRelacaoClientesporDiaSemana.Free;
      end;
end;

procedure TFrmMain.submenuFaturadosPendntesClick(Sender: TObject);
begin
      try
      application.CreateForm(TFrmConsultaContasReceber, FrmConsultaContasReceber);
      FrmConsultaContasReceber.ShowModal;
      finally
      FrmConsultaContasReceber.Free;
      end;
end;

procedure TFrmMain.submenuVendaBalcaoClick(Sender: TObject);
begin
        try
        application.CreateForm(TFmVendasBalcao, FmVendasBalcao);
        FmVendasBalcao.ShowModal;
    //    FmVendasBalcao.Btincluir.Click;
        finally
        FmVendasBalcao.Free;
        end;
end;

procedure TFrmMain.submenuBoletosClick(Sender: TObject);
begin
//      try
//      application.CreateForm(TFrmControlePrestacoes, FrmControlePrestacoes);
//      FrmControlePrestacoes.ShowModal;
//      finally
//      FrmControlePrestacoes.Free;
//      end;
end;

procedure TFrmMain.submenuvendasExternas1Click(Sender: TObject);
begin
    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'VendasExternas';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;
                       
procedure TFrmMain.submenuvendasBalcaoClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'VendasBalcao';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;

procedure TFrmMain.submenuGraficodoEstoqueClick(Sender: TObject);
begin
      try
      application.CreateForm(TFmGraficos, FmGraficos);
      FmGraficos.ShowModal;
      finally
      FmGraficos.Free;
      end;
end;

procedure TFrmMain.SubmenutabeladePreosBalcaoClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmTabeladePrecosBalcao, FrmTabeladePrecosBalcao);
    FrmTabeladePrecosBalcao.ShowModal;
    finally
    FrmTabeladePrecosBalcao.Free;
    end;
end;

procedure TFrmMain.submenuConsultaVendasClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'ConsVendas';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;

procedure TFrmMain.GerencialContasPagarClick(Sender: TObject);

begin
    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'Contas';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;

procedure TFrmMain.menuFinanceiro1Click(Sender: TObject);
//var
//ST: string;
begin
(*    ST:= '';
    if inputquery('SENHA DE ACESSO', 'ENTRE COM A SENHA:', ST) then
    if st = 'ADMIN' then
    begin

    end
    else
    begin
        MessageDLg('SENHA INCORRETA, ACESSO NEGADO !',mtInformation,[mbOK],0);
   //     ST:= '';
        abort;
    end;
// end; *)
end;

procedure TFrmMain.menuGerencialConsultadeAtivoPassivoClick(
  Sender: TObject);
begin
    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'AP';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;

procedure TFrmMain.submenuVendasdeItensporperiodoClick(Sender: TObject);
begin
    try
    application.CreateForm(TFrmSenhadeAcessoGerencial, FrmSenhadeAcessoGerencial);
    FrmSenhadeAcessoGerencial.Label4.Caption:= 'VendaItens';
    FrmSenhadeAcessoGerencial.ShowModal;
    finally
    FrmSenhadeAcessoGerencial.Free;
    end;
end;

procedure TFrmMain.submenuFaturamentoporPeriodoClick(Sender: TObject);
begin
//     try
//     application.CreateForm(TFrmCalculoFaturamentoPeriodo, FrmCalculoFaturamentoPeriodo);
//     FrmCalculoFaturamentoPeriodo.ShowModal;
//     finally
//     FrmCalculoFaturamentoPeriodo.Free;
//     end;
end;

procedure TFrmMain.submenuConsultaDataltimaCompraClick(Sender: TObject);
begin
     try
     application.CreateForm(TFrmConsultadeHistoricodeCompras,FrmConsultadeHistoricodeCompras);
     FrmConsultadeHistoricodeCompras.ShowModal;
     finally
     FrmConsultadeHistoricodeCompras.Free;
     end;
end;

procedure TFrmMain.submenuContasaPagarClick(Sender: TObject);
begin
     try
     Application.CreateForm(TFrmContasaPagarNew, FrmContasaPagarNew);
     FrmContasaPagarNew.ShowModal;
     finally
     FrmContasaPagarNew.Free;
     end;
end;

procedure TFrmMain.submenuContasaReceber1Click(Sender: TObject);
begin
     try
     Application.CreateForm(TFrmContasaReceberNew, FrmContasaReceberNew);
     FrmContasaReceberNew.ShowModal;
     finally
     FrmContasaReceberNew.Free;
     end;
end;

procedure TFrmMain.submenuCadProdutos1Click(Sender: TObject);
begin
    try
    Application.CreateForm(TFmProdutos, FmProdutos);
    FmProdutos.ShowModal;
    finally
    FmProdutos.Free;
    end;
end;

procedure TFrmMain.menuSuporteClick(Sender: TObject);
begin
//     if (DmDados.TPermissoesSenha.Value <> 'omega') then
//     begin
//     Application.MessageBox('SEM PERMISSÃO PARA USAR O SUPORTE!',
//       'ACESSO NEGADO', MB_OK + MB_ICONSTOP);
//     Exit;
//     end
//     else
//     begin
//       try
//       Application.CreateForm(TFrmSuporte, FrmSuporte);
//       FrmSuporte.ShowModal;
//       finally
//       FrmSuporte.Free;
//       end;
//     end;



     if (DmDados.TPermissoesSenha.Value <> 'omega') then
     begin
     Application.MessageBox('SEM PERMISSÃO PARA USAR O SUPORTE!',
       'ACESSO NEGADO', MB_OK + MB_ICONSTOP);
     Exit;
     end
     else
     begin
//       try
//       Application.CreateForm(TFrmAtualizaQtdOvo, FrmAtualizaQtdOvo);
//       FrmAtualizaQtdOvo.ShowModal;
//       finally
//       FrmAtualizaQtdOvo.Free;
//       end;

         try
           Application.CreateForm(TFrmSuporte, FrmSuporte);
           FrmSuporte.ShowModal;
         finally
           FrmSuporte.Free;
         end;


     end;




end;

procedure TFrmMain.submenuCadastroTipodeEntradaClick(Sender: TObject);
begin
     try
     Application.CreateForm(TFrmCadastroTipoEntrada, FrmCadastroTipoEntrada);
     FrmCadastroTipoEntrada.ShowModal;
     finally
     FrmCadastroTipoEntrada.Free;
     end;
end;

procedure TFrmMain.submenuCadastroTipodeSadaClick(Sender: TObject);
begin
      try
     Application.CreateForm(TFrmCadastroTipoSaida, FrmCadastroTipoSaida);
     FrmCadastroTipoSaida.ShowModal;
     finally
     FrmCadastroTipoSaida.Free;
     end;
end;

procedure TFrmMain.MenuMenuCadastrodePerdasClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmCadastrodePerdas, FrmCadastrodePerdas);
    FrmCadastrodePerdas.ShowModal;
    finally
    FrmCadastrodePerdas.Free;
    end;

end;

procedure TFrmMain.MenuMenuMovimentacaodeComprasClick(Sender: TObject);
begin
      TRY
      application.CreateForm(TFrmConsultaComprasEfetuadas, FrmConsultaComprasEfetuadas);
      FrmConsultaComprasEfetuadas.ShowModal;
      finally
      FrmConsultaComprasEfetuadas.Free;
      end;
end;

procedure TFrmMain.submenuVendasClick(Sender: TObject);
begin
   try
   Application.CreateForm(TFrmConsultaVendasExternas, FrmConsultaVendasExternas);
   FrmConsultaVendasExternas.ShowModal;
   finally
   FrmConsultaVendasExternas.free;
   end;
end;

end.
