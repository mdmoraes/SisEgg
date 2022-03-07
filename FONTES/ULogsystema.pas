unit ULogsystema;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBIndex, Db, Grids, DBGrids;

type
  TLogSys = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DLog: TDataSource;
    DBIndexCombo1: TDBIndexCombo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogSys: TLogSys;

implementation

uses UDMUsuario, Ufunctions, USenhasdeAcesso;

{$R *.DFM}



procedure TLogSys.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TLogSys.Button3Click(Sender: TObject);
begin
//If (MessageBox(Handle,
//        'Você não tem Permissão para esta operação !!',
//        'SEGURANÇA', 1) = IdOK )
//       Then
        If DmSenha.TUsuarioNivelSeguranca.Value = 1 then
        Begin
         DmSenha.Tlog.DisableControls;
         DmSenha.TLog.first;
        Repeat
          DmSenha.TLog.delete;
           DmSenha.Tlog.Next;
         Until DmSenha.Tlog.Eof;
         DmSenha.Tlog.EnableControls;
        End;

end;

procedure TLogSys.FormShow(Sender: TObject);
begin
     // Pega o nome dos usuários para criar o filtro
     DMSenha.TUsuario.First;
     ComboBox1.Items.Add('<Sem filtro>');
     Repeat
       ComboBox1.Items.Add(DmSenha.TUsuarioApelido.Value);
       DMSenha.TUsuario.Next;
     Until  DMSenha.TUsuario.Eof;
end;

procedure TLogSys.ComboBox1Change(Sender: TObject);
begin
   DmSenha.TLog.Filtered := False; // Retira qualquer filtro
   If ComboBox1.itemindex>0 Then
    Begin
      DmSenha.TLog.Filter := 'Usuario=' +''''+Combobox1.Text+'''';
      DmSenha.Tlog.Filtered := True;
    End;
end;

end.
