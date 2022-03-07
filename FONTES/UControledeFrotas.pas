unit UControledeFrotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RXCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids,
  IndexDBGrid, Buttons, ComCtrls, ExtDlgs;

type
  TFrmControledeFrotas = class(TForm)
    Panel1: TPanel;
    PainelControle: TPanel;
    PaInelDados: TPanel;
    PainelConfirma: TPanel;
    RxLabel1: TRxLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edVeiculo: TDBEdit;
    edModelo: TDBEdit;
    edPlaca: TDBEdit;
    edIpva: TDBEdit;
    edFabricacao: TDBEdit;
    edComsumo: TDBEdit;
    comboCombustivel: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    IndexDBGrid1: TIndexDBGrid;
    SbDesiste: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Btincluir: TBitBtn;
    BtnAltera: TBitBtn;
    BtExcluir: TBitBtn;
    SbConsultaProduto: TSpeedButton;
    BtSaida: TBitBtn;
    btnFoco: TButton;
    DBText1: TDBText;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    tabFrente: TTabSheet;
    tabDireita: TTabSheet;
    tabEsquerda: TTabSheet;
    tabTraseira: TTabSheet;
    tabFInterna: TTabSheet;
    tabPiso: TTabSheet;
    tabDireitaInt: TTabSheet;
    tabEsqueraInt: TTabSheet;
    dbFrente: TDBImage;
    dbDireita: TDBImage;
    dbEsquerda: TDBImage;
    dbTraseira: TDBImage;
    dbFInterna: TDBImage;
    dbPiso: TDBImage;
    dbDireitaInt: TDBImage;
    dbEsquerdaInt: TDBImage;
    btnFofoDireita: TSpeedButton;
    btnLimparFrente: TSpeedButton;
    btnFotoDireita: TSpeedButton;
    btnLimparDireita: TSpeedButton;
    btnEsquerda: TSpeedButton;
    btnLimparEsquerda: TSpeedButton;
    btnTraseira: TSpeedButton;
    btnLimparTraseira: TSpeedButton;
    btnFotoFInterna: TSpeedButton;
    btnLimparFInterna: TSpeedButton;
    btnFotoPiso: TSpeedButton;
    btnLimparPiso: TSpeedButton;
    btnFotoEsquerdaInt: TSpeedButton;
    btnLimparEsquerdaInt: TSpeedButton;
    btnFotoDireitaInt: TSpeedButton;
    btnLimparDireitaInt: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure BtSaidaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtincluirClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure SbDesisteClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnFofoDireitaClick(Sender: TObject);
    procedure btnLimparFrenteClick(Sender: TObject);
    procedure btnFotoDireitaClick(Sender: TObject);
    procedure btnLimparDireitaClick(Sender: TObject);
    procedure btnEsquerdaClick(Sender: TObject);
    procedure btnLimparEsquerdaClick(Sender: TObject);
    procedure btnLimparTraseiraClick(Sender: TObject);
    procedure btnTraseiraClick(Sender: TObject);
    procedure btnFotoFInternaClick(Sender: TObject);
    procedure btnLimparFInternaClick(Sender: TObject);
    procedure btnFotoPisoClick(Sender: TObject);
    procedure btnLimparPisoClick(Sender: TObject);
    procedure btnFotoDireitaIntClick(Sender: TObject);
    procedure btnLimparDireitaIntClick(Sender: TObject);
    procedure btnFotoEsquerdaIntClick(Sender: TObject);
    procedure btnLimparEsquerdaIntClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IndexDBGrid1ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControledeFrotas: TFrmControledeFrotas;

implementation

uses Base, ULogin, UCadastrodeCombustivel;

{$R *.dfm}

procedure TFrmControledeFrotas.BtSaidaClick(Sender: TObject);
begin
Panel1.SetFocus;
//btnFoco.SetFocus;
Close;
end;

procedure TFrmControledeFrotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     BtSaidaClick(self);
     if DMDados.TFrota_Master.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.TFrota_Master.Post
      else
      DMDados.TFrota_Master.Cancel;
end;

procedure TFrmControledeFrotas.BtincluirClick(Sender: TObject);
begin
    DmDados.TbInformativo.Edit;
    DmDados.TbInformativoInf_Frota.value:=
    DmDados.TbInformativoInf_Frota.Value+1;
    Dmdados.TbInformativo.post;

    // Abilitação dos paineis
    PainelDados.Enabled:=True;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=true;

//    DmDados.BancoDados.StartTransaction;
    DMDados.TFrota_Master.Append;
    DmDados.TFrota_MasterId_Frota.value:=
    DmDados.TbInformativoInf_Frota.Value;
//    DMDados.TFuncionario['Cli_DataCadastro']:= DateToStr(Now);
    edVeiculo.SetFocus;
end;

procedure TFrmControledeFrotas.BtnAlteraClick(Sender: TObject);
begin
    PainelDados.Enabled:=TRUE;
    PainelControle.Visible:=False;
    Painelconfirma.Visible:=True;
//    DmDados.BancoDados.StartTransaction;
    DmDados.TFrota_Master.Edit;
    edVeiculo.SetFocus;
end;

procedure TFrmControledeFrotas.BtExcluirClick(Sender: TObject);
begin
      If MT[14] = False  then
      Begin
      MessageDlg('SEU NÍVEL DE ACESSO NÃO PERMITE.', mtInformation, [mbOk], 0);
      exit;
      end
        else
        if MessageDlg('DESEJA EXCLUIR O REGISTRO ATUAL ?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
        DMDados.TFrota_Master.Delete;
        end;
end;

procedure TFrmControledeFrotas.SbDesisteClick(Sender: TObject);
begin
         DmDados.TFrota_Master.Cancel;
    //    DmDados.BancoDados.Rollback;
        PainelConfirma.Visible:=False;
        PainelDados.Enabled:=False;
        PainelControle.Visible:=True;
end;

procedure TFrmControledeFrotas.SpeedButton5Click(Sender: TObject);
begin
    DmDados.TFrota_Master.Edit;
    DmDados.TFrota_Master.Post;
 //   DmDados.BancoDados.Commit;
    PainelConfirma.Visible:=False;
    PainelDados.enabled:=False;
    PainelControle.Visible:=True;
end;

procedure TFrmControledeFrotas.SpeedButton1Click(Sender: TObject);
begin
DMDados.TFrota_Master.First;
end;

procedure TFrmControledeFrotas.SpeedButton2Click(Sender: TObject);
begin
DMDados.TFrota_Master.Prior;
end;

procedure TFrmControledeFrotas.SpeedButton3Click(Sender: TObject);
begin
DMDados.TFrota_Master.Next;
end;

procedure TFrmControledeFrotas.SpeedButton4Click(Sender: TObject);
begin
     DMDados.TFrota_Master.Last;
end;

procedure TFrmControledeFrotas.btnFofoDireitaClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbFrente.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparFrenteClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_Frente').clear;
end;

procedure TFrmControledeFrotas.btnFotoDireitaClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbDireita.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparDireitaClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_Direita').clear;
end;

procedure TFrmControledeFrotas.btnEsquerdaClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbEsquerda.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparEsquerdaClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_Esquerda').clear;
end;

procedure TFrmControledeFrotas.btnLimparTraseiraClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_Traseira').clear;
end;

procedure TFrmControledeFrotas.btnTraseiraClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbTraseira.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnFotoFInternaClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbFInterna.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparFInternaClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_FrenteInt').clear;
end;

procedure TFrmControledeFrotas.btnFotoPisoClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbPiso.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparPisoClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_Piso').clear;
end;

procedure TFrmControledeFrotas.btnFotoDireitaIntClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbDireitaInt.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparDireitaIntClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_DireitaInt').clear;
end;

procedure TFrmControledeFrotas.btnFotoEsquerdaIntClick(Sender: TObject);
begin
    if (OpenPictureDialog1.execute) then
    begin
    DMDados.TFrota_Master.Edit;
    dbEsquerdaInt.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    end;
end;

procedure TFrmControledeFrotas.btnLimparEsquerdaIntClick(Sender: TObject);
begin
    DMDados.TFrota_Master.Edit;
    DMDados.TFrota_Master.fieldbyname('Foto_EsquerdaInt').clear;
end;

procedure TFrmControledeFrotas.FormShow(Sender: TObject);
begin
//tabFrente.SetFocus;
//edVeiculo.SetFocus;
end;

procedure TFrmControledeFrotas.IndexDBGrid1ColEnter(Sender: TObject);
begin
//   DMDados.TFrota_Detail.Edit;
//    DBGrid1.Columns.Items[9].Field.Text <> '' then
//    DBGrid1.Columns.Items[10].Field.Text:= DBGrid1.Columns.Items[3].Field.Text;

end;

end.
