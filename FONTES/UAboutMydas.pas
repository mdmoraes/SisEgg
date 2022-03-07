unit UAboutMydas;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBCtrls, jpeg,
  OleCtrls, JvExControls, JvgLabel;

type
  TAboutBoxMydas = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    Panel2: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    JvgLabel1: TJvgLabel;
    img1: TImage;
    procedure ProgramIconClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBoxMydas: TAboutBoxMydas;

implementation


{$R *.DFM}



procedure TAboutBoxMydas.ProgramIconClick(Sender: TObject);
begin
//     SecretPanel1.visible := True;
end;
procedure TAboutBoxMydas.OKButtonClick(Sender: TObject);
begin
Close;
end;

procedure TAboutBoxMydas.FormCreate(Sender: TObject);
begin
//shockwaveflash1.LoadMovie(0,'C:\Sistema Unilixo\logo Midas System.swf');
end;                                             

end.

