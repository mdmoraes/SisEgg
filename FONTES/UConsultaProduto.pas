unit UConsultaProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, DB, Buttons;

type
  TConsultaProduto = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    GroupBox2: TGroupBox ;
    rdRef: TRadioButton;
    rdDescricao: TRadioButton;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure rdRefClick(Sender: TObject);
    procedure rdDescricaoClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaProduto: TConsultaProduto;

implementation

uses Base, UPedidos;

{$R *.DFM}

procedure Exibe(Sender: TObject);
begin

end;

procedure TConsultaProduto.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TConsultaProduto.Edit1Change(Sender: TObject);
begin
//DmDados.Tbprodutos.IndexName:= 'idxPro_Ref';
DmDados.Tbprodutos.FindNearest([Edit1.Text]);
//DmDados.Tbprodutos.IndexName:= '';
end;

procedure TConsultaProduto.FormShow(Sender: TObject);
begin
rdRef.Checked:= True;    //ativa o filtro por Referência.
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
     if FmPedidos.DBGrid1.Columns.Items[13].Field.Text = '1' then
     begin
     showmessage('VENDA JÁ CONCLUÍDA, EXCLUA A REF. TODA' +#13+
                 'PARA CADASTRAR NOVOS DADOS !');
     btnFecharClick(self);
     exit;
     end;


     if FmPedidos.DBGrid1.Columns.Items[2].Field.Text <> '' then
     begin
     if MessageDlg('OS CAMPOS ESTÃO PREENCHIDOS ...SUBSTITUIR ?',mtConfirmation, [mbYes, mbNo], 0)= mrYes then
       begin
       DMDados.Tbitens.Edit;
       FmPedidos.DBGrid1.Columns.Items[2].Field.Text:= DBGrid1.Columns.Items[0].Field.Text;
       FmPedidos.DBGrid1.Columns.Items[3].Field.Text:= DBGrid1.Columns.Items[1].Field.Text;

       if DBGrid1.Columns.Items[2].Field.Text = 'UN' then
       FmPedidos.DBGrid1.Columns.Items[4].Field.Text:= 'UN';

       FmPedidos.DBGrid1.Columns.Items[13].Field.Text:= '0';
       FmPedidos.DBGrid1.SelectedIndex:= 4;
       btnFecharClick(self);
       end else
     exit;
     btnFecharClick(self);
     end;
     ///se não estiver preenchidos...bla bla bla ...MAMO...
     if FmPedidos.DBGrid1.Columns.Items[2].Field.Text = '' then
     begin
     DMDados.Tbitens.Edit;
     FmPedidos.DBGrid1.Columns.Items[2].Field.Text:= DBGrid1.Columns.Items[0].Field.Text;
     FmPedidos.DBGrid1.Columns.Items[3].Field.Text:= DBGrid1.Columns.Items[1].Field.Text;

     if DBGrid1.Columns.Items[2].Field.Text = 'UN' then
     FmPedidos.DBGrid1.Columns.Items[4].Field.Text:= 'UN';

     FmPedidos.DBGrid1.Columns.Items[13].Field.Text:= '0';
//     FmPedidos.DBGrid1.Columns.Items[4].Field.Text:= DBGrid1.Columns.Items[2].Field.Text;
//     FmPedidos.DBGrid1.Columns.Items[6].Field.Text:= DBGrid1.Columns.Items[3].Field.Text;
     FmPedidos.DBGrid1.SelectedIndex:= 4;
     btnFecharClick(self);
     end;
end;

procedure TConsultaProduto.rdRefClick(Sender: TObject);
begin
DMDados.Tbprodutos.IndexName:= 'idxPro_Ref';
Edit1.SetFocus;
end;

procedure TConsultaProduto.rdDescricaoClick(Sender: TObject);
begin
DMDados.Tbprodutos.IndexName:= 'idxDescricao';
Edit1.SetFocus;
end;

procedure TConsultaProduto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
// if key = #13 then
// DBGrid1DblClick(self);
end;

procedure TConsultaProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  DBGrid1DblClick(Self);

  if Key = vk_escape then
  Close;
  
end;

end.
