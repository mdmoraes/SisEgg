unit UCopiador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables;

type
  TFrmCopiador = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    btnExecuta: TButton;
    btnCopia: TButton;
    Label1: TLabel;
    Query1CLI_CLIENTE: TStringField;
    Query1CLI_NFANTASIA: TStringField;
    Query1CLI_FONE1: TStringField;
    Query1CLI_ULTIMACOMPRA: TDateField;
    procedure RadioButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnExecutaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCopiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCopiador: TFrmCopiador;

implementation

uses Base, UCadClie, UVendedores;

{$R *.dfm}

procedure TFrmCopiador.RadioButton1Click(Sender: TObject);
begin
//DMDados.Tbpedidos.IndexName:= 'idxPed_Cliente';
end;

procedure TFrmCopiador.Edit1Change(Sender: TObject);
begin
//DMDados.Tbpedidos.FindNearest([Edit1.Text]);
end;

procedure TFrmCopiador.DBGrid1DblClick(Sender: TObject);
begin
 (* DMDados.TClienteDetail.Edit;
  DMDados.TClienteDetail.Insert;
  FrmCadClie.IndexDBGrid1.Columns.Items[1].Field.Text:= FrmCadClie.edCodCliente.Text;
  FrmCadClie.IndexDBGrid1.Columns.Items[2].Field.Text:= DBGrid1.Columns.Items[0].Field.Text;
  FrmCadClie.IndexDBGrid1.Columns.Items[3].Field.Text:= DBGrid1.Columns.Items[1].Field.Text;
  FrmCadClie.IndexDBGrid1.Columns.Items[4].Field.Text:= DBGrid1.Columns.Items[2].Field.Text;
  DMDados.TClienteDetail.Post;*)
end;

procedure TFrmCopiador.btnExecutaClick(Sender: TObject);
begin
(*   DMDados.tbVendedores.First;
   while not DMDados.TbVendedores.Eof do
   begin
   Edit1.Text:= FrmVendedores.edNome.Text;
         Query1.Close;
         Query1.ParamByName('VARVENDEDOR').AsString:= Edit1.Text+'%';
         Query1.Prepare;
         Query1.Open;
         btnCopiaClick(self);
//         Label1.Caption:= IntToStr(Query1.RecordCount);
//         DBGrid1.SetFocus;
         DMDados.tbVendedores.Next;
  end;*)
end;

procedure TFrmCopiador.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrmCopiador.btnCopiaClick(Sender: TObject);
begin
(*  while not Query1.Eof do
  begin
  DMDados.TVendedorDetail.Open;
  DMDados.TVendedorDetail.Insert;
  DMDados.TVendedorDetail.Edit;
//  FrmVendedores.IndexDBGrid1.SetFocus;
  FrmVendedores.IndexDBGrid1.Columns.Items[1].Field.Text:= FrmVendedores.edCod.Text;
  FrmVendedores.IndexDBGrid1.Columns.Items[2].Field.Text:= DBGrid1.Columns.Items[0].Field.Text;
  FrmVendedores.IndexDBGrid1.Columns.Items[3].Field.Text:= DBGrid1.Columns.Items[1].Field.Text;
  FrmVendedores.IndexDBGrid1.Columns.Items[4].Field.Text:= DBGrid1.Columns.Items[2].Field.Text;
  FrmVendedores.IndexDBGrid1.Columns.Items[5].Field.Text:= DBGrid1.Columns.Items[3].Field.Text;
  DMDados.TVendedorDetail.Post;
  Query1.Next;
  end;*)
end;

end.
