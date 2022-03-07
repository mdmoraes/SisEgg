unit UCadastroUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons;

type
  TFrmCadastroUnidades = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUnidades: TFrmCadastroUnidades;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCadastroUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if DMDados.tbUnidades.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.tbUnidades.Post
      else
      DMDados.tbUnidades.Cancel;
end;

procedure TFrmCadastroUnidades.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
