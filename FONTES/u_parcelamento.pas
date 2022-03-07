unit u_parcelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Grids, DBGrids, DateUtils, ComCtrls,
  Buttons, DBTables, DbiProcs;

type
  TFrmGerarParcelamentos = class(TForm)
    btnGerarParcela: TButton;
    ListBox1: TListBox;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1parcela: TIntegerField;
    ClientDataSet1vencimento: TDateTimeField;
    ClientDataSet1valor_parcela: TCurrencyField;
    DBGrid1: TDBGrid;
    Button2: TButton;
    edForma: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    edValorTotal: TEdit;
    ClientDataSet1n_parcela: TStringField;
    btnFechar: TBitBtn;
    btnLimpar: TSpeedButton;
    btnCopiar: TBitBtn;
    edPrazo: TEdit;
    edOrigem: TEdit;
    procedure btnGerarParcelaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGerarParcelamentos: TFrmGerarParcelamentos;

implementation

uses Base, UPedidos, UContasaPagarNew, UContasaReceberNew,
  UEntradadeProduto;

{$R *.dfm}

procedure TFrmGerarParcelamentos.btnGerarParcelaClick(Sender: TObject);
Var
   Data: TDateTime;
   ParcVenc: String;
   I, NP, NPPos: Integer;
   Parcela, Resto: Currency;
   NParcelas: Array[1..500] of Currency;
   DTDaysParcelas: Array[1..500] of String;
   Total: Currency;
   ValorParc: String;
begin
//   DataSource1.DataSet.Active := True;

   ClientDataSet1.Active := True;


 //   dbGrid1.DataSource.DataSet.Open;
 //   dbGrid1.DataSource.DataSet.ClearFields;

     if (edForma.Text = '') and (edValorTotal.Text = '') then
     begin
     Application.MessageBox('FORMA DE PAGAMENTO E VALOR NÃO PODEM FICAR ' +
       #13#10 + 'EM BRANCO.', 'ATENÇÃO !!!', MB_OK + MB_ICONWARNING);
     Exit;
     end;


      Data := DateTimePicker1.DateTime;
      ParcVenc := edForma.Text;//'25/35/42';
      NP := 0;
      Total := StrToCurr(edValorTotal.Text);
      // Percorre os vencimentos
      for I := 0 to Length(ParcVenc) do
      begin
           NPPos := Pos('/', ParcVenc);
           if Pos('/', ParcVenc) > 0 then
           begin
                Inc(NP);
                DTDaysParcelas[NP] := Copy(ParcVenc, 1, NPPos-1);
                Delete(ParcVenc, 1, NPPos);
           end;
      end;
      // Como sobra mais um copia este..
      if Length(ParcVenc) > 0 then
      begin
           Inc(NP);
           DTDaysParcelas[NP] := ParcVenc;
      end;

      // Determina a parcela
      Parcela := Total/NP;
      // Limita a precisão em dois digitos.. Delphi 3
  //31052014 -    Parcela := StrToFloat(FormatFloat('#,###.00', Parcela));
      Parcela := StrToFloat(FormatFloat('####.00', Parcela));
      // Pega o resto e joga na última parcela
      Resto := Total - (Parcela*NP);
      // Percorre as parcelas
      for I := 1 to NP do
      begin
           Data := Date + StrToInt(DTDaysParcelas[I]);
           ValorParc := FloatToStr(Parcela);
           if I < NP then
           begin
                ValorParc := FloatToStr(Parcela);
                ListBox1.Items.Add(FormatFloat('0.00',Parcela)+' - '+DateToStr(Data) + ' - ' + DTDaysParcelas[I] + ' Dias');
                ClientDataSet1.Append;
                ClientDataSet1parcela.AsInteger := StrToInt(DTDaysParcelas[I]);
                ClientDataSet1vencimento.AsDateTime := Data;
                ClientDataSet1valor_parcela.AsFloat := Parcela;
                ClientDataSet1n_parcela.AsString    := IntToStr(I) + 'º';
                ClientDataSet1.Post;
           end
           else
           begin
                Parcela := Parcela + Resto;
                ListBox1.Items.Add(FormatFloat('0.00',Parcela)+' - '+DateToStr(Data) + ' - ' + DTDaysParcelas[I] + ' Dias');
                ClientDataSet1.Append;
                ClientDataSet1parcela.AsInteger := StrToInt(DTDaysParcelas[I]);
                ClientDataSet1vencimento.AsDateTime := Data;
                ClientDataSet1valor_parcela.AsFloat := Parcela;
                ClientDataSet1n_parcela.AsString    := IntToStr(I) + 'º';
                ClientDataSet1.Post;
           end;
      end;

      ListBox1.Items.Add(IntToStr(NP)+' Parcelas');
end;

procedure TFrmGerarParcelamentos.Button2Click(Sender: TObject);
var
  data1, data2, data_apoio : String;
  i : integer;
begin
  data_apoio := '';
  ClientDataSet1.First;
  data1 := FormatDateTime('dd/mm/yyyy',DateTimePicker1.DateTime);
  while not(ClientDataSet1.Eof)do
  begin
    data2 := FormatDateTime('dd/mm/yyyy',ClientDataSet1vencimento.AsDateTime);
    ClientDataSet1.Next;
    if not(ClientDataSet1.Eof)then
      Edit2.Text := Edit2.Text + IntToStr(DaysBetween(StrToDate(data1),StrToDate(data2)))+ '/';
    if (ClientDataSet1.Eof)then
      Edit2.Text := Edit2.Text + IntToStr(DaysBetween(StrToDate(data1),StrToDate(data2)));
  end;
end;

procedure TFrmGerarParcelamentos.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmGerarParcelamentos.btnLimparClick(Sender: TObject);
begin
//edForma.Text := '';
//edValorTotal.Text := '';
ListBox1.Clear;
ClientDataSet1.EmptyDataSet;
end;

procedure TFrmGerarParcelamentos.btnCopiarClick(Sender: TObject);
begin
//GRAVA PARCELAMENTO EM CONTAS A RECEBER - VINDO DE PEDIDO
   if edOrigem.Text = 'Pedido' then
   begin
         ClientDataSet1.First;
         while not ClientDataSet1.Eof do
         begin
         DmDados.tbCPRDetalhe.Insert;
         DmDados.tbCPRDetalhe.Edit;
         DmDados.tbCPRDetalheDataParcela.Value := ClientDataSet1vencimento.Value;
         dmdados.tbCPRDetalheValorParcela.Value := ClientDataSet1valor_parcela.Value;
         DmDados.tbCPRDetalhe.Post;
         DmDados.tbCPRDetalhe.Refresh;
         DmDados.tbCPRDetalhe.Next;
         ClientDataSet1.Next;
         end;

          DmDados.tbCPRDetalhe.First;
          if DmDados.tbCPRDetalheTotalParcela.IsNull = True then
          begin
          while not DmDados.tbCPRDetalhe.Eof do
          begin
          DmDados.tbCPRDetalhe.Edit;
          DmDados.tbCPRDetalheTotalParcela.Value:= DmDados.tbCPRDetalheTotVrGrade.Value;
          //colocado em 20072014 - domingo
          if edPrazo.Text = 'Vista' then
          DmDados.tbCPRDetalheStatus.Value := True;
          DmDados.tbCPRDetalhe.Post;
          dmdados.tbCPRDetalhe.Next;
          end;
          end;

//          if edPrazo.Text = 'Vista' then
//          begin
//          DmDados.tbCPRDetalhe.Edit;
//          DmDados.tbCPRDetalheStatus.Value := True;
//          DmDados.tbCPRDetalhe.Post;
//          end;

          DmDados.tbCPRMaster.Edit;
          DmDados.tbCPRMaster.Post;

          DmDados.tbCPRDetalhe.Edit;
          DmDados.tbCPRDetalhe.Post;
        
    //      FrmContasaReceberNew.Refresh;


         close;
   end;

   if edOrigem.Text = 'Produto' then
   begin
            //GRAVA PARCELAMENTO EM CONTAS A PAGAR - VINDO DE ENTRADA DE PRODUTOS
         ClientDataSet1.First;
         while not ClientDataSet1.Eof do
         begin
         DmDados.tbCPGDetalhe.Insert;
         DmDados.tbCPGDetalhe.Edit;

         DmDados.tbCPGDetalheDataParcela.Value := ClientDataSet1vencimento.Value;

         dmdados.tbCPGDetalheValorParcela.Value := ClientDataSet1valor_parcela.Value;
         DmDados.tbCPGDetalhe.Post;
         DmDados.tbCPGDetalhe.Refresh;
         DmDados.tbCPGDetalhe.Next;
         ClientDataSet1.Next;
         end;

          DmDados.tbCPGDetalhe.First;
          if DmDados.tbCPGDetalheTotalParcela.IsNull = True then
          begin
          while not DmDados.tbCPGDetalhe.Eof do
          begin
          DmDados.tbCPGDetalhe.Edit;
          DmDados.tbCPGDetalheTotalParcela.Value:= DmDados.tbCPGDetalheTotVrGrade.Value;
          //colocado em 20072014 -domingo
          if edPrazo.Text = 'Vista' then
          DmDados.tbCPGDetalheStatus.Value := True;
          DmDados.tbCPGDetalhe.Post;
          dmdados.tbCPGDetalhe.Next;
          end;
          end;

//          if edPrazo.Text = 'Vista' then
//          begin
//          DmDados.tbCPGDetalhe.Edit;
//          DmDados.tbCPGDetalheStatus.Value := True;
//          DmDados.tbCPGDetalhe.Post;
//          end;


          DmDados.tbCPGMaster.Edit;
          DmDados.tbCPGMaster.Post;

          DmDados.tbCPRDetalhe.Edit;
          DmDados.tbCPRDetalhe.Post;

         close;
   end;

end;

procedure TFrmGerarParcelamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Action := caFree;   // Remove a instância do formulário quando fechado
end;

end.


