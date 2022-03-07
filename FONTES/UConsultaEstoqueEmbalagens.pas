unit UConsultaEstoqueEmbalagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons;

type
  TFrmConsultaEstoqueEmbalagens = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaEstoqueEmbalagens: TFrmConsultaEstoqueEmbalagens;

implementation

uses Base;

{$R *.dfm}

procedure TFrmConsultaEstoqueEmbalagens.btnFecharClick(Sender: TObject);
begin
close;
end;

end.
