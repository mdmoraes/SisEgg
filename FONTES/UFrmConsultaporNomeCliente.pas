unit UFrmConsultaporNomeCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TFrmConsultaNomeCliente = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btnFechar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaNomeCliente: TFrmConsultaNomeCliente;

implementation

uses Base;

{$R *.dfm}

procedure TFrmConsultaNomeCliente.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmConsultaNomeCliente.Edit1Change(Sender: TObject);
begin
//DmDados.TbClientes.IndexName:= 'IdxCliRazao';
DmDados.TbClientes.FindNearest([Edit1.Text]);
//DmDados.TbClientes.IndexName:= '';
//btnFechar.SetFocus;
end;

procedure TFrmConsultaNomeCliente.FormShow(Sender: TObject);
begin
Edit1.Color:= clInfoBk;
Edit1.SetFocus;
end;

end.
