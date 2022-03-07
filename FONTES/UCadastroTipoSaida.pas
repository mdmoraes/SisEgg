unit UCadastroTipoSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmCadastroTipoSaida = class(TForm)
    dbgrd1: TDBGrid;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTipoSaida: TFrmCadastroTipoSaida;

implementation

uses Base;

{$R *.dfm}

procedure TFrmCadastroTipoSaida.btnFecharClick(Sender: TObject);
begin
     CLOSE;
end;

end.
