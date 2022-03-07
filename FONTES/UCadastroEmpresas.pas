unit UCadastroEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFrmCadastrodeEmpresas = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TSpeedButton;
    DBNavigator1: TDBNavigator;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrodeEmpresas: TFrmCadastrodeEmpresas;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCadastrodeEmpresas.btnFecharClick(Sender: TObject);
begin
CLOSE;
end;

end.
