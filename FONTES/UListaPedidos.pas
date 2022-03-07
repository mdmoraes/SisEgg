unit UListaPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, Buttons, StdCtrls, DB, DBTables,
  JvExDBGrids, JvDBGrid, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit;

type
  TFormListadePedidos = class(TForm)
    grpListadeProdutos: TGroupBox;
    LabelFechar: TLabel;
    btnFiltar: TSpeedButton;
    btnCopiar: TSpeedButton;
    grp1: TGroupBox;
    qry1: TQuery;
    ds1: TDataSource;
    dbgrd2: TJvDBGrid;
    yulFindEdit1: TJvDBFindEdit;
    chk1: TCheckBox;
    grp2: TGroupBox;
    rbcodigo: TRadioButton;
    rbproduto: TRadioButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    chkMarcarTodos: TCheckBox;
    qry1Pedido: TIntegerField;
    qry1Cliente: TStringField;
    qry1Data: TDateField;
    qry1Ped_Geral: TIntegerField;
    btn1: TSpeedButton;
    edt1: TEdit;
    procedure dblokup1CloseUp(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure LabelFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chk1Click(Sender: TObject);
    procedure rbcodigoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure chkMarcarTodosClick(Sender: TObject);
    procedure dbgrd2TitleClick(Column: TColumn);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure dbgrd2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure yulFindEdit1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadePedidos: TFormListadePedidos;

implementation

uses Base, UPedidos;



{$R *.dfm}

procedure TFormListadePedidos.dblokup1CloseUp(Sender: TObject);
begin
btnFiltarClick(Self);
end;

procedure TFormListadePedidos.btnCopiarClick(Sender: TObject);
//var
//idx :integer;
begin

//  if dbgrd2.SelectedRows.Count = 0 then
//  begin
//  ShowMessage('É NECESSÁRIO SELECIONAR PELO MENOS UM ITEM !');
//  Abort;
//  end
//  else
//    with DBGrd2.DataSource do
//    if DBGrd2.SelectedRows.Count > 0 then
//
//      for Idx :=0 to DBGrd2.SelectedRows.Count-1 do
//      begin
//        //Codigo, Unidade, Produto, ValorUnit
//
////      codigoproduto, unidade, descricao, Pvenda
//
//      //  fdados.tabelaexportadora.GotoBookmark(pointer(DBGrd2.SelectedRows.Items[Idx]));
//        qry1.GotoBookmark(pointer(DBGrd2.SelectedRows.Items[Idx]));
//        DMRatio.TBItens.Edit;
//        DMRatio.TBItens.Append;
//        DMRatio.TBItens.FieldByName('Codigo').Value:=
//        qry1.FieldByName('codigoproduto').Value;
//
//        DMRatio.TBItens.FieldByName('Unidade').Value:=
//        qry1.FieldByName('unidade').Value;
//
//        DMRatio.TBItens.FieldByName('Produto').Value:=
//        qry1.FieldByName('descricao').Value;
//
//        DMRatio.TBItens.FieldByName('ValorUnit').Value:=
//        qry1.FieldByName('Pvenda').Value;
//
//        DMRatio.TBItens.FieldByName('Grupo').Value:=
//        qry1.FieldByName('grupo').Value;
//
////        fdados.tabelareceptora.FieldByName('PROFISSAO').Value := fdados.tabelaexportadora.FieldByName('PROFISSAO').Value;
////        fdados.tabelareceptora.FieldByName('SALARIO').Value := fdados.tabelaexportadora.FieldByName('SALARIO').Value;
//
//        DMRatio.TBItens.Edit;
//        DMRatio.TBItens.Post;
//      end;
//
////Fdados.tabelareceptora.ApplyUpdates(0);
//
//
//
//
//
//
//
////..............................................
////        qry1.First;
////        while not qry1.Eof do
////        begin  // 3  6  7  8
////        DMRatio.TBItens.Edit;
////        DMRatio.TBItens.Insert;
////        FrmEmissaodePedido.DBGrd1.Columns.Items[2].Field.Text:= dbgrd2.Columns.Items[0].Field.Text;
////        FrmEmissaodePedido.DBGrd1.Columns.Items[5].Field.Text:= dbgrd2.Columns.Items[1].Field.Text;
////        FrmEmissaodePedido.DBGrd1.Columns.Items[4].Field.Text:= dbgrd2.Columns.Items[3].Field.Text;
////        FrmEmissaodePedido.DBGrd1.Columns.Items[6].Field.Text:= dbgrd2.Columns.Items[2].Field.Text;
////        FrmEmissaodePedido.DBGrd1.Columns.Items[3].Field.Text:= '0';
////        FrmEmissaodePedido.DBGrd1.Columns.Items[7].Field.Text:= '0';
////        FrmEmissaodePedido.DBGrd1.Columns.Items[8].Field.Text:= '0';
////        FrmEmissaodePedido.DBGrd1.Columns.Items[9].Field.Text:= '0';
////        DMRatio.TBItens.Post;
////        qry1.Next;
////        end;
////    end;
//
////     FrmEmissaodePedido.dbgrd1.DataSource.DataSet.First;
////     FrmEmissaodePedido.dbgrd1.SelectedField := FrmEmissaodePedido.dbgrd1.Columns[3].Field;
////     FrmEmissaodePedido.dbgrd1.SetFocus;
//     close;
end;

procedure TFormListadePedidos.btnFiltarClick(Sender: TObject);
//  var
//  contador: Integer;
//  codigos: string;
begin
//    begin
//      codigos := '';
//      With Dbgrd2 do
//      Begin
//        for contador := 0 to Pred(SelectedRows.Count) do
//        Begin
//          //posiciona nos registros selecionados do DBGrid
//          ds1.Dataset.Bookmark := SelectedRows[contador];
//
//          //executar operações com o registro atual      codigos := codigos +
////            ds1.DataSet.FieldByName('ID').AsString + ',';
//        end;
//      end;
//      codigos := Copy(codigos,1,Length(codigos)-1);
////      ShowMessage(codigos);
//    end;
//
//    qry1.Close;
//    qry1.ParamByName('varRep').AsString:= edtRepresentada.Text;
//    qry1.Prepare;
//    qry1.Open;

end;

procedure TFormListadePedidos.LabelFecharClick(Sender: TObject);
begin
  Close;

//    grpListadeProdutos.Visible:= false;
//    FrmEmissaodePedido.pnlNav.Visible:= True;
//    FrmEmissaodePedido.pnlConfirma.Visible:= True;
end;

procedure TFormListadePedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  Close;
end;

procedure TFormListadePedidos.chk1Click(Sender: TObject);
begin
 if chk1.Checked then
    yulFindEdit1.FindMode := fmAnyPos
  else
    yulFindEdit1.FindMode := fmFirstPos;
    yulFindEdit1.ResetFilter;
end;

procedure TFormListadePedidos.rbcodigoClick(Sender: TObject);
begin
//// if length(combobox1.Items[ComboBox1.ItemIndex]) > 0 then
////  begin
////    yulFindEdit1.DataField := combobox1.Items[ComboBox1.ItemIndex];
//    if rbcodigo.Checked = True then
//    yulFindEdit1.DataField := qry1codigoproduto.AsString;
//                              qry1ped_numero.
//    if rbproduto.Checked = True then
//    yulFindEdit1.DataField := qry1descricao.AsString;

end;

procedure TFormListadePedidos.FormShow(Sender: TObject);
   var
  i: Integer;
begin
  qry1.Open;
  for i := 0 to qry1.FieldDefs.Count - 1 do
    ComboBox1.Items.Add(qry1.FieldDefs.Items[i].Name);

  if ComboBox1.Items.Count > 0 then
    ComboBox1.ItemIndex := 0;

  if length(combobox1.Items[ComboBox1.ItemIndex]) > 0 then
    yulFindEdit1.DataField := combobox1.Items[ComboBox1.ItemIndex]
  else
    Showmessage('Nenhum campo foi selecionado.');
end;

procedure TFormListadePedidos.ComboBox1Change(Sender: TObject);
begin
  if length(combobox1.Items[ComboBox1.ItemIndex]) > 0 then
      begin
        yulFindEdit1.DataField := combobox1.Items[ComboBox1.ItemIndex];
        if qry1.FieldList.FieldByName(yulFindEdit1.DataField) is TDateField then
          yulFindEdit1.EditMask := '!99/99/9999;1;_'
        else
          yulFindEdit1.EditMask := '';
      end
  else
    ShowMessage('Nenhum campo foi selecionado !!!');
    yulFindEdit1.Text := '';
end;

procedure TFormListadePedidos.chkMarcarTodosClick(Sender: TObject);
Var ABookmark: TBookmark;
Begin
//  if chkMarcarTodos.Checked = True then
//  begin
//  chkMarcarTodos.Caption:= 'Marcar Todos';
//  if (qry1.BOF and qry1.EOF) then Exit;
//
//  qry1.DisableControls;
//  Dbgrd2.Options := dbgrd2.Options + [dgMultiselect];
//
//  try
//
//    ABookmark := qry1.GetBookmark;
//
//    try
//
//      qry1.First;
//
//      while not qry1.EOF do begin
//
//         dbgrd2.SelectedRows.CurrentRowSelected := True;
//
//         qry1.Next;
//
//      end;
//
//    finally
//
//      try
//
//         qry1.GotoBookmark(ABookmark);
//
//      except
//
//      end;
//
//       qry1.FreeBookmark(ABookmark);
//
//    end;
//
//  finally
//
//    qry1.EnableControls;
//
//  end;
//  end;
//
//  if chkMarcarTodos.Checked = False then
//  begin
//  chkMarcarTodos.Caption := 'Desmarcar Todos';
//  if (qry1.BOF and qry1.EOF) then Exit;
//  qry1.DisableControls;
//  Dbgrd2.Options := dbgrd2.Options + [dgMultiselect];
//
//  try
//
//    ABookmark := qry1.GetBookmark;
//
//    try
//
//      qry1.First;
//
//      while not qry1.EOF do begin
//
//         dbgrd2.SelectedRows.CurrentRowSelected := False;
//
//         qry1.Next;
//
//      end;
//
//    finally
//
//      try
//
//         qry1.GotoBookmark(ABookmark);
//
//      except
//
//      end;
//
//       qry1.FreeBookmark(ABookmark);
//
//    end;
//
//  finally
//
//    qry1.EnableControls;
//
//  end;
//  end;
end;

procedure TFormListadePedidos.dbgrd2TitleClick(Column: TColumn);
//var
//   campo:string;
begin
//
//   campo:=column.fieldname;
//
//   application.processmessages;
//
//   qry1.sql.clear;
//
//   Qry1.sql.add('select * from Pedidos order by '+campo);
//
//   if not Qry1.Prepared then
//
//     Qry1.Prepare;
//
//   Qry1.Open;

end;

procedure TFormListadePedidos.dbgrd2DblClick(Sender: TObject);
begin
//qry1.Locate('ped_numero', dbgrd2.Columns.Items[0].Field.Text, []);
DmDados.Tbpedidos.Locate('Ped_numero', dbgrd2.Columns.Items[0].Field.Text, []);
close;
end;

procedure TFormListadePedidos.dbgrd2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
  dbgrd2DblClick(Self);

end;

procedure TFormListadePedidos.yulFindEdit1Change(Sender: TObject);
begin
////Query.Locate('campo onde ira porcurar',Texto a buscar,[loPartialKey])
//   if ComboBox1.Text = 'Ped_Geral' then
//   begin
//   qry1.Locate('Ped_Geral', yulFindEdit1.Text, []);
//   end
//   else
//   if ComboBox1.Text = 'Pedido' then
//   qry1.Locate('Pedido', yulFindEdit1.Text, []);

end;

procedure TFormListadePedidos.btn1Click(Sender: TObject);
begin
//    if ComboBox1.Text = 'Ped_Geral' then
//    qry1.Locate('Ped_Geral', dbgrd2.Columns.Items[0].Field.Text, [loPartialKey]);
////    Query.Locate('campo onde ira porcurar',Texto a buscar,[loPartialKey])

//   if ComboBox1.Text = 'Ped_Geral' then
//   with qry1 do
//   begin
//   Close;
//   SQL.Clear;
//   Params.Clear;
//   SQL.Add('SELECT Ped_Numero as Ped_Geral, ped_e as Pedido, ped_cliente as Cliente, ped_data as Data from pedidos');
////   SQL.Add('WHERE ped_cliente <> VENDA BALCÃO');
//   SQL.Add('WHERE ped_cliente <> :BALCAO');
//   Params.CreateParam ( ftstring, 'Nome_Parametro', ptUnknown);
//   ParamByName ('Nome_Parametro').AsString := edt1.Text;
//   SQL.Add('Order by Ped_Geral');
//   Open;
//   end;
//
//   with Query1 do
//begin
//   Close;
//   SQL.Clear;
//   Params.Clear;
//   SQL.Add('SELECT * FROM Clientes');
//   SQL.Add('WHERE Cli_Nome = :Nom');
//   Params.CreateParam ( ftstring, 'Nome_Parametro', ptUnknown);
//   ParamByName ('Nome_Parametro').AsString := Edit1.Text;
//   Open;
//end;
//
//


end;

end.
