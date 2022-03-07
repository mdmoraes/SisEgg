unit UFrmConsultaFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TFrmProcuraporNomeFornecedor = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcuraporNomeFornecedor: TFrmProcuraporNomeFornecedor;

implementation

uses Base, UFornecedores;

{$R *.dfm}

procedure TFrmProcuraporNomeFornecedor.Edit1Change(Sender: TObject);
begin
//DmDados.TbClientes.IndexName:= 'IdxCliRazao';
//DmDados.TbClientes.FindNearest([Edit1.Text]);
//DmDados.TbClientes.IndexName:= '';

DmDados.TbFornecedores.FindNearest([Edit1.Text]);
end;

procedure TFrmProcuraporNomeFornecedor.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmProcuraporNomeFornecedor.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.
