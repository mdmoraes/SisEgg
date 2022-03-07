unit UAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, RXCtrls, DBCtrls, RxGIF, Animate, GIFCtrl;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    SecretPanel1: TSecretPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    RxGIFAnimator1: TRxGIFAnimator;
    Label5: TLabel;
    procedure ProgramIconClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation


{$R *.DFM}



procedure TAboutBox.ProgramIconClick(Sender: TObject);
begin
     SecretPanel1.visible := True;
end;
procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
Close;
end;

end.

