unit UCadastroTipoEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmCadastroTipoEntrada = class(TForm)
    dbgrd1: TDBGrid;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTipoEntrada: TFrmCadastroTipoEntrada;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCadastroTipoEntrada.btnFecharClick(Sender: TObject);
begin
     CLOSE;
end;

end.
