unit UConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Db, DBTables, ExtDlgs, ExtCtrls;


type
  TFormDadosEmpresa = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    Memo1: TMemo;
    Image1: TDBImage;
    open1: TOpenPictureDialog;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    btnAtivarSkin: TButton;
    btnDesativeSkin: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure Memo2Click(Sender: TObject);
    procedure btnAtivarSkinClick(Sender: TObject);
    procedure open1Close(Sender: TObject);
    procedure btnDesativeSkinClick(Sender: TObject);
    procedure open1Show(Sender: TObject);
    procedure open1SelectionChange(Sender: TObject);
    procedure open1IncludeItem(const OFN: TOFNotifyEx;
      var Include: Boolean);
    procedure open1TypeChange(Sender: TObject);
    procedure open1CanClose(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
  ST:string;

    { Public declarations }
  end;

var
  FormDadosEmpresa: TFormDadosEmpresa;

implementation

uses UMain;

{$R *.DFM}

procedure TFormDadosEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {if key=#13 then begin
   key:=#0;
     Perform(WM_nextdlgctl,0,0);}

//end;
end;

procedure TFormDadosEmpresa.SpeedButton1Click(Sender: TObject);
begin
     if btnDesativeSkin.Caption = 'Desativar' then
     begin
     Showmessage('DESATIVAR O SKIN PRIMEIRO!');
     exit;
     end;
//     else
        IF (open1.Execute) THEN
        begin
        image1.Picture.LoadFromFile(open1.FileName);
        btnDesativeSkin.Caption:= 'Desativar';
        end;
end;

procedure TFormDadosEmpresa.BitBtn1Click(Sender: TObject);
begin

  image1.Picture.SaveToFile (extractfilepath(paramstr(0)) + '\Dados\logo.bmp');
  SHOWMESSAGE('REINICIE O SISTEMA, PARA APLICAR AS ALTERAÇÕES !');

 // memo1.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\Dados\Cabeçalho.txt');
 // memo2.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\Dados\Rodapé.txt');
 // memo3.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\Dados\N_Ministro.txt');
 // memo4.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\Dados\N_Secretario.txt');
 // memo5.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\Dados\C_Ministro.txt');
 // memo6.Lines.SaveToFile(extractfilepath(paramstr(0)) + '\Dados\C_Secretario.txt');
//  MessageBox(Application.Handle,pchar('Voce precisa reiniciar o Sistema para que alterações tenham efeito.'),
            //     'Aviso de Alteração',MB_ICONSTOP);
end;

procedure TFormDadosEmpresa.FormShow(Sender: TObject);
begin
   btnDesativeSkin.Caption:= 'Desativar';
  if fileexists (extractfilepath(paramstr(0)) + '\Dados\logo.bmp') then
  image1.Picture.loadfromfile(extractfilepath(paramstr(0)) + '\Dados\logo.bmp');
  {if fileexists (extractfilepath(paramstr(0)) + '\Dados\Cabeçalho.txt') then
   memo1.lines.loadfromfile (extractfilepath(paramstr(0)) + '\Dados\Cabeçalho.txt');
  if fileexists (extractfilepath(paramstr(0)) + '\Dados\Rodapé.txt') then
   memo2.lines.loadfromfile (extractfilepath(paramstr(0)) + '\Dados\Rodapé.txt');
  if fileexists (extractfilepath(paramstr(0)) + '\Dados\N_Ministro.txt') then
   memo3.lines.loadfromfile (extractfilepath(paramstr(0)) + '\Dados\N_Ministro.txt');
  if fileexists (extractfilepath(paramstr(0)) + '\Dados\N_Secretario.txt') then
   memo4.lines.loadfromfile (extractfilepath(paramstr(0)) + '\Dados\N_Secretario.txt');
  if fileexists (extractfilepath(paramstr(0)) + '\Dados\C_Ministro.txt') then
   memo5.lines.loadfromfile (extractfilepath(paramstr(0)) + '\Dados\C_Ministro.txt');
  if fileexists (extractfilepath(paramstr(0)) + '\Dados\C_Secretario.txt') then
   memo6.lines.loadfromfile (extractfilepath(paramstr(0)) + '\Dados\C_Secretario.txt');}
end;

procedure TFormDadosEmpresa.Memo1Click(Sender: TObject);
begin
showmessage('FUNÇÃO DESABILITADA !');
EXIT;
end;

procedure TFormDadosEmpresa.Memo2Click(Sender: TObject);
begin
showmessage('FUNÇÃO DESABILITADA !');
EXIT;
end;

procedure TFormDadosEmpresa.btnAtivarSkinClick(Sender: TObject);
begin
//if not FrmMain.SkinData1.Active Then FrmMain.SkinData1.Active := True;
end;

procedure TFormDadosEmpresa.open1Close(Sender: TObject);
begin
btnAtivarSkinClick(self);
end;

procedure TFormDadosEmpresa.btnDesativeSkinClick(Sender: TObject);
begin
//FrmMain.SkinData1.Active := False;
//btnDesativeSkin.Caption:= 'OK';
end;

procedure TFormDadosEmpresa.open1Show(Sender: TObject);
begin
btnDesativeSkin.Caption:= 'Desativar';
//FrmMain.SkinData1.Active := False;
//Showmessage('SKIN SERÁ DESATIVADO POR MOMENTO!');
//btnDesativeSkin.SetFocus;
//btnDesativeSkinClick(self);}

end;

procedure TFormDadosEmpresa.open1SelectionChange(Sender: TObject);
begin
btnDesativeSkin.Caption:= 'Desativar';
//btnDesativeSkinClick(self);
end;

procedure TFormDadosEmpresa.open1IncludeItem(const OFN: TOFNotifyEx;
  var Include: Boolean);
begin
//if FrmMain.SkinData1.Active = True Then FrmMain.SkinData1.Active := False;
end;

procedure TFormDadosEmpresa.open1TypeChange(Sender: TObject);
begin
//if FrmMain.SkinData1.Active = True Then FrmMain.SkinData1.Active := False;
end;

procedure TFormDadosEmpresa.open1CanClose(Sender: TObject;
  var CanClose: Boolean);
begin
btnDesativeSkin.Caption:= 'Desativar';
end;

end.
