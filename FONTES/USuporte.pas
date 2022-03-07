unit USuporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, ComCtrls, JvExComCtrls,
  JvProgressBar, JvDBProgressBar, Buttons, StdCtrls, JvExControls,
  JvgProgress, Gauges;

type
  TFrmSuporte = class(TForm)
    prgbar: TJvDBProgressBar;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    btnExecutar: TSpeedButton;
    btn1: TBitBtn;
    lblMensagem: TLabel;
    tbCopia: TTable;
    Gauge1: TGauge;
    lblContador: TLabel;
    QueryCopiar: TQuery;
    tbCopiaQueryCopiarCLIENTE: TStringField;
    tbQueryCopiarID_CLIENTE: TIntegerField;
    tbCopiaID_CPG: TIntegerField;
    tbCopiaCliente: TStringField;
    tbCopiaID_Cliente: TIntegerField;
    procedure btn1Click(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSuporte: TFrmSuporte;

implementation

uses Base;

{$R *.dfm}

procedure TFrmSuporte.btn1Click(Sender: TObject);
begin
    close;
end;

procedure TFrmSuporte.btnExecutarClick(Sender: TObject);
begin
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := tbCopia.RecordCount;

   //       DmDados.TbClientes.IndexFieldNames := ('CLI_CLIENTE');
       //   DmDados.tbCPRMaster.IndexName :=
          tbCopia.First;

          while not tbCopia.Eof do
          begin
             DmDados.TbClientes.Locate('CLI_CLIENTE', dbgrd1.Columns.Items[1].Field.Text, []);
             DmDados.tbCPRMaster.Edit;
             dmdados.tbCPRMasterID_Cliente.Value:= DmDados.TbClientesCli_Codigo.Value;

          dmdados.tbCPRMaster.Post;
          tbCopia.Next;
          Gauge1.Progress:=Gauge1.Progress + 1;
          DmDados.tbCPRMaster.Close;
          DmDados.tbCPRMaster.Open;
          end;
    lblMensagem.Caption := 'Processo terminado !';
    lblContador.Caption := 'TOTAL DE REGISTROS PROCESSADOS : ' + IntToStr(tbCopia.RecordCount);
end;


procedure TFrmSuporte.FormCreate(Sender: TObject);
//var
//QDir : String;

begin
//    QDir := 'C:\WINDOWS\TEMP';
//
//    If not(DirectoryExists(QDir)) then
//    ForceDirectories(QDir);
//
//    Session.PrivateDir := QDir;
end;

end.
