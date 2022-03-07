unit UCadastrodeCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Grids, DBGrids, StdCtrls;

type
  TFrmCadastrodeCombustivel = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    btnFoco: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrodeCombustivel: TFrmCadastrodeCombustivel;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCadastrodeCombustivel.SpeedButton1Click(Sender: TObject);
begin
Panel1.SetFocus;
//btnFoco.SetFocus;
Close;
end;

procedure TFrmCadastrodeCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     SpeedButton1Click(self);

     if DMDados.TCombustivel.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.TCombustivel.Post
      else
      DMDados.TCombustivel.Cancel;
end;

end.
