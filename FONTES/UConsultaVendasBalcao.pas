unit UConsultaVendasBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TFrmConsultaVendasBalcao = class(TForm)
    dbgrd1: TDBGrid;
    edt1: TEdit;
    Label1: TLabel;
    btnFechar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaVendasBalcao: TFrmConsultaVendasBalcao;

implementation

uses Base;

{$R *.dfm}

procedure TFrmConsultaVendasBalcao.FormShow(Sender: TObject);
begin
DMDados.Tbpedidos.IndexName:= 'IPed_B';
Edt1.SetFocus;
end;

procedure TFrmConsultaVendasBalcao.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmConsultaVendasBalcao.edt1Change(Sender: TObject);
begin
DMDados.Tbpedidos.FindNearest([Edt1.Text]);
end;

end.
