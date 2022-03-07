unit UConsultaClientesFormaPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TFrmConsultaClientesFormaPagto = class(TForm)
    grp3: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    btnFechar: TBitBtn;
    edNome: TEdit;
    lbl1: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure edNomeChange(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaClientesFormaPagto: TFrmConsultaClientesFormaPagto;

implementation

uses Base, UCadClie;

{$R *.dfm}

procedure TFrmConsultaClientesFormaPagto.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConsultaClientesFormaPagto.edNomeChange(Sender: TObject);
begin
DmDados.TbClientes.IndexName := 'ICli_Cliente';
DmDados.TbClientes.FindNearest([edNome.Text]);
end;

procedure TFrmConsultaClientesFormaPagto.JvDBGrid3DblClick(
  Sender: TObject);
begin
DmDados.TbClientes.Edit;
dmdados.tbClientesCli_Forma.Value:=
DmDados.tbFormaPagtoMasterFormas.Value;

dmdados.tbClientesCli_Prazo.Value:=
DmDados.tbFormaPagtoDetalhePrazos.Value;
DmDados.TbClientes.Post;

end;

end.
