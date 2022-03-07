unit UConsultaComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls;

type
  TFrmConsultaComissoes = class(TForm)
    Query1: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnAplicar: TButton;
    edTotal: TEdit;
    Label1: TLabel;
    Query1PED_DATA: TDateField;
    Query1VRCOMISSAO: TCurrencyField;
    procedure btnAplicarClick(Sender: TObject);
    procedure edTotalDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Soma;
  end;

var
  FrmConsultaComissoes: TFrmConsultaComissoes;
  Soma:Double;
implementation

uses UFluxodeCaixa, Base, UConsultaFaturamento;

{$R *.dfm}

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}
  if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
  begin
  if (s[i] = DecimalSeparator) and (not SeenDecimal) then
  begin
  t := s[i] + t;
  SeenDecimal := True;
  end
  else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
  begin
  t := s[i] + t;
  SeenSgn := True;
  end
  else if s[i] in ['0'..'9'] then
  begin
  t := s[i] + t;
  end;
  end;
  Result := StrToFloat(t);
end;

procedure TFrmConsultaComissoes.Soma;
var
Soma:Double;
begin
  Query1.DisableControls;
  Query1.First;
  soma := 0;
  While not Query1.Eof do begin
    soma:=soma+Query1.Fieldbyname('VRCOMISSAO').asFloat;
    Query1.Next;
  End;
  edTotal.Text:= 'R$' + ' ' + FormatFloat('#,##0.00', soma);
//  lblTotalValor.Caption:= Format('%8.2f', soma);
  Query1.EnableControls;
end;


procedure TFrmConsultaComissoes.btnAplicarClick(Sender: TObject);
begin
    Query1.Close;
    Query1.ParamByName('VarDataI').AsDate:=FrmFluxodeCaixa.DataI.Date;
    Query1.ParamByName('VarDataF').AsDate:=FrmFluxodeCaixa.DataF.Date;
    Query1.Prepare;
    Query1.Open;
    Soma;
end;

procedure TFrmConsultaComissoes.edTotalDblClick(Sender: TObject);
begin
DmDados.TFluxoCaixa.Append;
DmDados.TFluxoCaixa.Edit;
edTotal.Text:= FloatToStr(StringToFloat(edTotal.Text));
DmDados.TFluxoCaixaVrSaida.AsString:= edTotal.Text;
DmDados.TFluxoCaixaDescricaoSaida.AsString:= 'COMISSÕES DOS VENDEDORES';
DmDados.TFluxoCaixa.Post;
FrmConsultaComissoes.Close;
//FrmFluxodeCaixa.btnCalcula.Click;
FrmFluxodeCaixa.btnSaldo.Click;
end;

end.
