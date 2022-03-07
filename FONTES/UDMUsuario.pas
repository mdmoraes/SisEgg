unit UDMUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDMSenha = class(TDataModule)
    TUsuario: TTable;
    DUsuario: TDataSource;
    TLog: TTable;
    TLogData: TDateTimeField;
    TLogUsuario: TStringField;
    TLogUsuarioCOntrole: TIntegerField;
    TLogOperacao: TStringField;
    TLogSeveridade: TIntegerField;
    TUsuarioNome: TStringField;
    TUsuarioApelido: TStringField;
    TUsuarioCodigoControle: TAutoIncField;
    TUsuarioCodigoGrupo: TIntegerField;
    TUsuarioFuncao: TStringField;
    TUsuarioDepartamento: TStringField;
    TUsuarioDataCadastro: TDateField;
    TUsuarioExpirarEm: TDateField;
    TUsuarioForcarTrocaSenha: TBooleanField;
    TUsuarioPermitirMultiploLogon: TBooleanField;
    TUsuarioPermitirVerLog: TBooleanField;
    TUsuarioNivelSeguranca: TIntegerField;
    TUsuarioSenhaPrivada: TStringField;
    TUsuarioLog: TMemoField;
    TUsuarioRamal: TStringField;
    TUsuarioOnline: TBooleanField;
    TUsuarioTelefone: TStringField;
    TUsuarioBip: TStringField;
    TUsuarioOnLineStatus: TStringField;
    procedure TProcessoCalcFields(DataSet: TDataSet);
    procedure TProcessoBeforeEdit(DataSet: TDataSet);
    procedure TUsuarioCalcFields(DataSet: TDataSet);
    procedure DUsuarioDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSenha: TDMSenha;

implementation

//uses Ufunctions,
//Uses UProcessos;
{$R *.DFM}


procedure TDMSenha.TProcessoCalcFields(DataSet: TDataSet);
begin
// TProcessoNomeVirtual.Value := TPRocessoPro_OutraParteNom.Value +' X '+ TProcessoNomeCliente.value
end;

procedure TDMSenha.TProcessoBeforeEdit(DataSet: TDataSet);
begin
//  If ProcessosForm.Visible then ProcessosForm.Grava.Enabled := true;
end;


procedure TDMSenha.TUsuarioCalcFields(DataSet: TDataSet);
begin
//  If TUsuarioOnline.Value then    TUsuarioOnLineStatus.value := '* * * On Line * * * ' else
//    TUsuarioOnLineStatus.value := 'offline'
end;

procedure TDMSenha.DUsuarioDataChange(Sender: TObject; Field: TField);
begin
//UsuarioForm.AutoScroll;
//UsuarioForm.TrackBar1.Position:= UsuarioForm.ActiveControl;
//UsuarioForm.TrackBar1.Position:= Status.Caption := Mensagem[TrackBar1.Position];
end;

end.
