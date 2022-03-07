unit URelacaoClientesporDiaSemana;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmRelacaoClientesporDiaSemana = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    btnFechar: TBitBtn;
    btnFiltrar: TBitBtn;
    Query1CLI_CLIENTE: TStringField;
    Query1CLI_NFANTASIA: TStringField;
    Query1CLI_ENDERECO: TStringField;
    Query1CLI_ENDNUMERO: TStringField;
    Query1CLI_BAIRRO: TStringField;
    Query1CLI_CIDADE: TStringField;
    Query1CLI_ESTADO: TStringField;
    Query1CLI_CEP: TStringField;
    Query1CLI_FONE1: TStringField;
    Query1CLI_CELULAR: TStringField;
    Query1CLI_SEGUNDA: TStringField;
    Query1CLI_TERCA: TStringField;
    Query1CLI_QUARTA: TStringField;
    Query1CLI_QUINTA: TStringField;
    Query1CLI_SEXTA: TStringField;
    Query1CLI_SABADO: TStringField;
    btnImprimir: TSpeedButton;
    lbltotaldeclientes: TLabel;
    Query1CLI_CGC: TStringField;
    Query1CLI_INSCRICAO: TStringField;
    Query1CLI_CPF: TStringField;
    Query1CLI_RG: TStringField;
    Query1Cli_RotaSegunda: TFloatField;
    Query1Cli_RotaTerca: TFloatField;
    Query1Cli_RotaQuarta: TFloatField;
    Query1Cli_RotaQuinta: TFloatField;
    Query1Cli_RotaSexta: TFloatField;
    Query1Cli_RotaSabado: TFloatField;
    Query1Cli_RotaDomingo: TFloatField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelacaoClientesporDiaSemana: TFrmRelacaoClientesporDiaSemana;

implementation

uses Base, URelClientesporSemana;

{$R *.dfm}

procedure TFrmRelacaoClientesporDiaSemana.btnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrmRelacaoClientesporDiaSemana.btnFiltrarClick(Sender: TObject);
begin
(*    Query1.Close;
//    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text+'%';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open; *)
/////////////////////////////////////
    if ComboBox1.Text = 'Segunda' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_SEGUNDA like (:VarDia) ORDER BY Cli_RotaSegunda';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;

    if ComboBox1.Text = 'Terça' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_TERCA like (:VarDia) ORDER BY Cli_RotaTerca';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;


    //QUARTA-FEIRA
    if ComboBox1.Text = 'Quarta' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_QUARTA like (:VarDia) ORDER BY Cli_RotaQuarta';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;


    //QUINTA-FEIRA
    if ComboBox1.Text = 'Quinta' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_QUINTA like (:VarDia) ORDER BY Cli_RotaQuinta';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;

    //SEXTA-FEIRA
    if ComboBox1.Text = 'Sexta' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_SEXTA like (:VarDia) ORDER BY Cli_RotaSexta';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;

    //SÁBADO
    if ComboBox1.Text = 'Sábado' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_SABADO like (:VarDia) ORDER BY Cli_RotaSabado';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;

     //DOMINGO
    if ComboBox1.Text = 'Domingo' then
    begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Text:='SELECT * FROM CLIENTES WHERE CLI_DOMINGO like (:VarDia) ORDER BY Cli_RotaDomingo';
    Query1.ParamByName('VarDia').AsString:= ComboBox1.Text;
    Query1.Prepare;
    Query1.Open;
    end;
    



    IF ComboBox1.Text = 'Segunda' then
    dbgrid1.Columns.Items[0].Visible:= True
    ELSE
    dbgrid1.Columns.Items[0].Visible:= FALSE;

    IF ComboBox1.Text = 'Terça' then
    dbgrid1.Columns.Items[1].Visible:= True
    ELSE
    dbgrid1.Columns.Items[1].Visible:= fALSE;

    IF ComboBox1.Text = 'Quarta' then
    dbgrid1.Columns.Items[2].Visible:= True
    ELSE
    dbgrid1.Columns.Items[2].Visible:= False;

    IF ComboBox1.Text = 'Quinta' then
    dbgrid1.Columns.Items[3].Visible:= True
    ELSE
    dbgrid1.Columns.Items[3].Visible:= False;


    IF ComboBox1.Text = 'Sexta' then
    dbgrid1.Columns.Items[4].Visible:= True
    ELSE
    dbgrid1.Columns.Items[4].Visible:= False;


    IF ComboBox1.Text = 'Sábado' then
    dbgrid1.Columns.Items[5].Visible:= True
    else
    dbgrid1.Columns.Items[5].Visible:= false;

    if Query1.RecordCount = 0 then
    Begin
    ShowMessage('NENHUMA INFORMAÇÃO FOI ENCONTRADA, PARA ESSE DIA!');
    End;
    lbltotaldeclientes.Visible:= True;
    lbltotaldeclientes.Caption:= 'Total de Clientes:'+IntToStr(Query1.RecordCount);
end;

procedure TFrmRelacaoClientesporDiaSemana.ComboBox1CloseUp(
  Sender: TObject);
begin
//lblClientesSemana.Caption:= ComboBox1.Text;
end;

procedure TFrmRelacaoClientesporDiaSemana.btnImprimirClick(
  Sender: TObject);
begin
      try
      application.CreateForm(TFrmRelClientesporSemana, FrmRelClientesporSemana);
      FrmRelClientesporSemana.lblRotuloRel.Caption:=
      'RELAÇÃO DE CLIENTES DE: ' + ComboBox1.Text;
      FrmRelClientesporSemana.lblTotalClientes.Caption:=
      lbltotaldeclientes.Caption;

      IF ComboBox1.Text = 'Segunda' then
      FrmRelClientesporSemana.lblSegunda.Enabled:= True;

      IF ComboBox1.Text = 'Terça' then
      FrmRelClientesporSemana.lblTerca.Enabled:= True;

      IF ComboBox1.Text = 'Quarta' then
      FrmRelClientesporSemana.lblQuarta.Enabled:= True;

      IF ComboBox1.Text = 'Quinta' then
      FrmRelClientesporSemana.lblQuinta.Enabled:= True;

      IF ComboBox1.Text = 'Sexta' then
      FrmRelClientesporSemana.lblSexta.Enabled:= True;

      IF ComboBox1.Text = 'Sábado' then
      FrmRelClientesporSemana.lblSabado.Enabled:= True;

      IF ComboBox1.Text = 'Domingo' then
      FrmRelClientesporSemana.lblDomingo.Enabled:= True;


      FrmRelClientesporSemana.QuickRep1.Preview;
      finally
      FrmRelClientesporSemana.Free;
      end;
end;

end.
