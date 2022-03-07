unit UEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  Buttons, StrUtils, Math;

type
  TFrmEstoque = class(TForm)
    JvDBGrid1: TJvDBGrid;
    qry1: TQuery;
    ds1: TDataSource;
    lbl1: TLabel;
    btnFechar: TSpeedButton;
    tbqry1REFERENCIA: TStringField;
    tbqry1DESCRICAO: TStringField;
    tbqry1UNIDADE: TStringField;
    qry1ESTOQUE: TFloatField;
    lblData: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Function Arredondar(value: double;casas : integer): double;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstoque: TFrmEstoque;

implementation

uses Base;

{$R *.dfm}

function TBRound(Value: Extended; Decimals: integer): Extended;
var
Factor, Fraction: Extended;
begin
Factor := IntPower(10, Decimals);
{ A convers�o para string e depois para float evita
   erros de arredondamentos indesej�veis. }
Value := StrToFloat(FloatToStr(Value * Factor));
Result := Int(Value);
Fraction := Frac(Value);
if Fraction >= 0.5 then
   Result := Result + 1
else if Fraction <= -0.5 then
   Result := Result + 1;
Result := Result / Factor;
end;



Function TFrmEstoque.Arredondar(value: double;casas : integer): double;
Var
fracao, Total:real;
decimal:string;
begin
   try
   fracao:=Frac(value); //Retorna a parte fracion�ria de um n�mero
   decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2)); //decimal recebe a parte decimal
//Enquanto o tamanho da variavel decimal for maior que o n�mero de casas fa�a
      while length(decimal) > casas do
      begin
      //Verifica se o �ltimo digito da vari�vel decimal � maior que 5
      if strtoint(RightStr(decimal,1))>5 then
      begin
      //Descarta o �ltimo digito da vari�vel Decimal
      decimal:=leftstr(decimal,length(decimal)-1);
      //Soma o valor n�mero da variavel decimal + 1
      decimal:=floattostr(strtofloat(decimal) + 1);
      end
   else
   decimal:=leftstr(decimal,length(decimal)-1); //Descarta o �ltimo digito da vari�vel Decimal
   end;
result:=(int(value) + (strtofloat(decimal)/100)); //devolve o resultado para a fun��o
except
Raise Exception.Create('Erro no arredondamento');
   end;
end;


procedure TFrmEstoque.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmEstoque.FormShow(Sender: TObject);
Var
valor :Real;
begin
      DmDados.tbEstoque.First;
      while not dmdados.tbEstoque.Eof do
      begin
      Valor:= DmDados.tbEstoqueQtd.Value;
      valor:= Trunc(valor * 100)/100;
      DmDados.tbEstoque.Edit;
      dmdados.tbEstoqueQtd.Value:= valor;
      DmDados.tbEstoque.Post;
      DmDados.tbEstoque.Next;
      end;



//        qry1.Active:= False;
//        qry1.Active:= True;
        lblData.Caption := DateToStr(Date);
//        // grava Query na Tabela Estoque
//        qry1.First;
//        while not qry1.Eof do
//        begin
//        if  DmDados.tbEstoque.Locate('Ref', qry1.fieldByName('REFERENCIA').AsString, []) then
//        BEGIN
//        DMDADOS.tbEstoque.Edit;
//        DmDados.tbEstoqueRef.Value:=
//        qry1.fieldbyName('REFERENCIA').AsString;
//
//        DmDados.tbEstoqueDescricao.Value:=
//        qry1.fieldByName('DESCRICAO').AsString;
//
//        DmDados.tbEstoqueQtd.Value:=
//        qry1.fieldByName('ESTOQUE').AsInteger;
//
//        DmDados.tbEstoqueUn.Value:=
//        qry1.fieldByName('UNIDADE').AsString;
//        dmdados.tbEstoque.Post;
//        end else
//
//        if not DmDados.tbEstoque.Locate('Ref', qry1.fieldByName('REFERENCIA').AsString, []) then
//        begin
//        dmdados.tbEstoque.Append;
//        DMDADOS.tbEstoque.Edit;
//        DmDados.tbEstoqueRef.Value:=
//        qry1.fieldbyName('REFERENCIA').AsString;
//
//        DmDados.tbEstoqueDescricao.Value:=
//        qry1.fieldByName('DESCRICAO').AsString;
//
//        DmDados.tbEstoqueQtd.Value:=
//        qry1.fieldByName('ESTOQUE').AsInteger;
//
//        DmDados.tbEstoqueUn.Value:=
//        qry1.fieldByName('UNIDADE').AsString;
//        dmdados.tbEstoque.Post;
//        end;
//
//        qry1.Next;
//        end;
//
//        DmDados.tbEstoque.IndexFieldNames := 'Ref';
end;

end.
