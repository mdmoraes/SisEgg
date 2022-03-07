unit UConfigImpDuplicata;

interface

uses
  inifiles, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, QuickRpt, Qrctrls, Spin, Buttons, ComCtrls, ActnList;

type
  Tfimpcheque = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    rdvalor: TRadioButton;
    rdmunicipio: TRadioButton;
    rddia: TRadioButton;
    rdmes: TRadioButton;
    rdano: TRadioButton;
    rdportador: TRadioButton;
    rdextenso: TRadioButton;
    Panel13: TPanel;
    lpv: TLabel;
    lph: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton12: TSpeedButton;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    saltura: TSpinEdit;
    slargura: TSpinEdit;
    barv: TScrollBar;
    barh: TScrollBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Editvalor: TEdit;
    Editextenso: TEdit;
    Editportador: TEdit;
    Button1: TButton;
    Editmunicipio: TEdit;
    Editdia: TEdit;
    Editmes: TEdit;
    Editano: TEdit;
    Quickimpcheque: TQuickRep;
    QRBand1: TQRBand;
    lvalor: TQRLabel;
    lextenso: TQRLabel;
    lportador: TQRLabel;
    lmunicipio: TQRLabel;
    ldia: TQRLabel;
    lmes: TQRLabel;
    lano: TQRLabel;
    ActionList1: TActionList;
    cabrir: TAction;
    cgravar: TAction;
    campos: TAction;
    procedure Button1Click(Sender: TObject);
    procedure EditvalorExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure salturaChange(Sender: TObject);
    procedure slarguraChange(Sender: TObject);
    procedure barhChange(Sender: TObject);
    procedure barvChange(Sender: TObject);
    procedure rdvalorClick(Sender: TObject);
    procedure rdextensoClick(Sender: TObject);
    procedure rdportadorClick(Sender: TObject);
    procedure rdmunicipioClick(Sender: TObject);
    procedure rddiaClick(Sender: TObject);
    procedure rdmesClick(Sender: TObject);
    procedure rdanoClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure cabrirExecute(Sender: TObject);
    procedure cgravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure camposExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimpcheque: Tfimpcheque;

implementation
       
uses uajuda, Funcoes;
{$R *.DFM}

procedure Tfimpcheque.Button1Click(Sender: TObject);
begin
  camposexecute(self);
  Quickimpcheque.preview;
end;

procedure Tfimpcheque.EditvalorExit(Sender: TObject);
begin
  editextenso.Text := Extenso(strtofloat(editvalor.Text));
  editdia.Text := formatdatetime('dd', date);
  editmes.Text := formatdatetime('mmmm', date);
  editano.Text := formatdatetime('yyyy', date);
  editvalor.Text := format('%n', [strtofloat(editvalor.Text)]);
end;

procedure Tfimpcheque.FormKeyPress(Sender: TObject; var Key: char);
begin
  if key = #13 then 
  begin
    key := #0;
    Perform(WM_nextdlgctl, 0,0);
  end 
  else if key = #27 then 
    Perform(WM_nextdlgctl, 1,0);
end;

procedure Tfimpcheque.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = vk_f1 then 
  begin
    application.CreateForm(tfajuda, fajuda);
    fajuda.Memo1.Lines.LoadFromFile(extractfilepath(ParamStr(0)) +
      '\ajuda\ajudaimpcheque.txt');
    fajuda.Show;
  end;
end;

procedure Tfimpcheque.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then 
  begin
    camposexecute(self);
    windowstate := wsmaximized;
  end 
  else
    windowstate := wsnormal;
end;

procedure Tfimpcheque.salturaChange(Sender: TObject);
begin
  Quickimpcheque.Page.Length := saltura.Value;
  qrband1.size.Height := saltura.Value;
end;

procedure Tfimpcheque.slarguraChange(Sender: TObject);
begin
  quickimpcheque.Page.Width := slargura.Value;
end;

procedure Tfimpcheque.barhChange(Sender: TObject);
begin
  lph.Caption := floattostr(barh.position);

  if rdvalor.Checked = True then
    lvalor.Left := barh.Position;

  if rdextenso.Checked = True then
    lextenso.Left := barh.Position;

  if rdportador.Checked = True then
    lportador.Left := barh.Position;

  if rdmunicipio.Checked = True then
    lmunicipio.Left := barh.Position;

  if rddia.Checked = True then
    ldia.Left := barh.Position;

  if rdmes.Checked = True then
    lmes.Left := barh.Position;

  if rdano.Checked = True then
    lano.Left := barh.Position;
end;

procedure Tfimpcheque.barvChange(Sender: TObject);
begin
  lpv.Caption := floattostr(barv.position);

  if rdvalor.Checked = True then
    lvalor.top := barv.Position;

  if rdextenso.Checked = True then
    lextenso.top := barv.Position;

  if rdportador.Checked = True then
    lportador.top := barv.Position;

  if rdmunicipio.Checked = True then
    lmunicipio.top := barv.Position;

  if rddia.Checked = True then
    ldia.top := barv.Position;

  if rdmes.Checked = True then
    lmes.top := barv.Position;

  if rdano.Checked = True then
    lano.top := barv.Position;
end;

procedure Tfimpcheque.rdvalorClick(Sender: TObject);
begin
  barh.Position := lvalor.Left;
  barv.Position := lvalor.top;
end;

procedure Tfimpcheque.rdextensoClick(Sender: TObject);
begin
  barh.Position := lextenso.Left;
  barv.Position := lextenso.top;
end;

procedure Tfimpcheque.rdportadorClick(Sender: TObject);
begin
  barh.Position := lportador.Left;
  barv.Position := lportador.top;
end;

procedure Tfimpcheque.rdmunicipioClick(Sender: TObject);
begin
  barh.Position := lmunicipio.Left;
  barv.Position := lmunicipio.top;
end;

procedure Tfimpcheque.rddiaClick(Sender: TObject);
begin
  barh.Position := ldia.Left;
  barv.Position := ldia.top;
end;

procedure Tfimpcheque.rdmesClick(Sender: TObject);
begin
  barh.Position := lmes.Left;
  barv.Position := lmes.top;
end;

procedure Tfimpcheque.rdanoClick(Sender: TObject);
begin
  barh.Position := lano.Left;
  barv.Position := lano.top;
end;

procedure Tfimpcheque.SpeedButton12Click(Sender: TObject);
begin
  Quickimpcheque.PreviewModal;
end;

procedure Tfimpcheque.cabrirExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
  barh.Position := lvalor.Left;
  barv.Position := lvalor.top;
  lph.Caption := floattostr(barh.position);
  lpv.Caption := floattostr(barh.position);

  Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'cheque.ini');

  // Valores dos componentes

  SAltura.Value := Ini.ReadInteger('Sal', 'Sal', 73);
  SLargura.Value := Ini.ReadInteger('Sla', 'Sla', 190);

  // configura a página

  Quickimpcheque.Page.Width := SLargura.Value;
  Quickimpcheque.Page.Length := SAltura.Value;
  qrband1.size.Height := saltura.Value;

  // poição equerda

  lvalor.Left := Ini.ReadInteger('lvalor1', 'lvalor1', lvalor.Left);
  lextenso.Left := Ini.ReadInteger('lextenso1', 'lextenso1', lextenso.Left);
  lmunicipio.Left := Ini.ReadInteger('lmunicipio', 'lmunicipio', lmunicipio.Left);
  lportador.Left := Ini.ReadInteger('lportador', 'lportador', lportador.Left);
  ldia.Left := Ini.ReadInteger('ldia', 'ldia', ldia.Left);
  lmes.Left := Ini.ReadInteger('lmes', 'lmes', lmes.Left);
  lano.Left := Ini.ReadInteger('lano', 'lano', lano.Left);

  // Posição topo

  lvalor.top := Ini.ReadInteger('tvalor1', 'tvalor1', lvalor.top);
  lextenso.top := Ini.ReadInteger('textenso1', 'textenso1', lextenso.top);
  lmunicipio.top := Ini.ReadInteger('tmunicipio', 'tmunicipio', lmunicipio.top);
  lportador.top := Ini.ReadInteger('tportador', 'tportador', lportador.top);
  ldia.top := Ini.ReadInteger('tdia', 'tdia', ldia.top);
  lmes.top := Ini.ReadInteger('tmes', 'tmes', lmes.top);
  lano.top := Ini.ReadInteger('tano', 'tano', lano.top);

  Ini.Free;
end;

procedure Tfimpcheque.cgravarExecute(Sender: TObject);
var
  Ini: TiniFile;
begin
  Ini := TiniFile.Create(ExtractFilePath(ParamStr(0)) + 'cheque.ini');

  // Valores dos componentes a gravar

  Ini.WriteInteger('Sal', 'Sal', SAltura.Value);
  Ini.WriteInteger('Sla', 'Sla', SLargura.Value);

  // poição equerda

  Ini.WriteInteger('lvalor1', 'lvalor1', lvalor.Left);
  Ini.WriteInteger('lextenso1', 'lextenso1', lextenso.Left);
  Ini.WriteInteger('lportador', 'lportador', lportador.Left);
  Ini.WriteInteger('lmunicipio', 'lmunicipio', lmunicipio.Left);
  Ini.WriteInteger('ldia', 'ldia', ldia.Left);
  Ini.WriteInteger('lmes', 'lmes', lmes.Left);
  Ini.WriteInteger('lano', 'lano', lano.Left);

  // Posição topo

  Ini.WriteInteger('tvalor1', 'tvalor1', lvalor.top);
  Ini.WriteInteger('textenso1', 'textenso1', lextenso.top);
  Ini.WriteInteger('tportador', 'tportador', lportador.top);
  Ini.WriteInteger('tmunicipio', 'tmunicipio', lmunicipio.top);
  Ini.WriteInteger('tdia', 'tdia', ldia.top);
  Ini.WriteInteger('tmes', 'tmes', lmes.top);
  Ini.WriteInteger('tano', 'tano', lano.top);
  Ini.Free;
end;

procedure Tfimpcheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cgravarexecute(self);
end;

procedure Tfimpcheque.FormCreate(Sender: TObject);
begin
  cabrirexecute(self);
end;

procedure Tfimpcheque.camposExecute(Sender: TObject);
begin
  lvalor.Caption := editvalor.Text;
  lextenso.Caption := editextenso.Text;
  lportador.Caption := editportador.Text;
  lmunicipio.Caption := editmunicipio.Text;
  ldia.Caption := editdia.Text;
  lmes.Caption := editmes.Text;
  lano.Caption := editano.Text;
end;

end.
