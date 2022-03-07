unit UAbertura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, jpeg;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    StatusLabel: TLabel;
    Bar: TProgressBar;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

uses UDMUsuario;


{$R *.DFM}

procedure TSplashForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//     try
//         Application.CreateForm(TSenhaForm, SenhaForm);
//         SenhaForm.Show;
//     finally
//     SenhaForm.free;
//     end;
//Action:=cafree;
end;


procedure TSplashForm.Timer1Timer(Sender: TObject);
begin
// application.CreateForm (TSenhaForm, SenhaForm);
// SenhaForm.ShowModal;
// SenhaForm.Release;
// frmPrincipal.showmodal;
// frmPrincipal.release;
end;

procedure TSplashForm.FormShow(Sender: TObject);
begin
//if fileexists (extractfilepath(paramstr(0)) + '\Tabelas\logo.bmp') then begin
//     Image1.Picture.LoadFromFile(extractfilepath(paramstr(0)) + '\Tabelas\logo.bmp');
//     end;
end;

end.
