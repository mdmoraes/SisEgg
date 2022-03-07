unit UCalendario_legal;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Spin, Buttons, ExtCtrls, Grids, Calendar;

type
  TF_Calendario = class(TForm)
    BitBtnPrevMnth: TBitBtn;
    Calendar1: TCalendar;
    PanelMnth: TPanel;
    BitBtnNextMnth: TBitBtn;
    BitBtnChgStrtDay: TBitBtn;
    ButtonPrevYr: TButton;
    ButtonNextYr: TButton;
    ExpandBtn: TButton;
    ShrinkBtn: TButton;
    btntoday: TButton;
    BtnOneLine: TButton;
    procedure Calendar1Change(Sender: TObject);
    procedure BitBtnNextMnthClick(Sender: TObject);
    procedure BitBtnPrevMnthClick(Sender: TObject);
    procedure BitBtnChgStrtDayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonPrevYrClick(Sender: TObject);
    procedure ButtonNextYrClick(Sender: TObject);
    procedure ExpandBtnClick(Sender: TObject);
    procedure ShrinkBtnClick(Sender: TObject);
    procedure btntodayClick(Sender: TObject);
    procedure BtnOneLineClick(Sender: TObject);
    procedure BitBtnPrevMnthKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnNextMnthKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonPrevYrKeyPress(Sender: TObject; var Key: Char);
    procedure BtnOneLineKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonNextYrKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnChgStrtDayKeyPress(Sender: TObject; var Key: Char);
    procedure Calendar1KeyPress(Sender: TObject; var Key: Char);
    procedure btntodayKeyPress(Sender: TObject; var Key: Char);
    procedure ShrinkBtnKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Calendario: TF_Calendario;

implementation

{$R *.DFM}

Const
  MonthNames : array[1..12] of string =
   ('Janeiro','Fevereiro','Março','Abril','Maio','Junho',
    'Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');

procedure TF_Calendario.FormCreate(Sender: TObject);
begin
  panelMnth.caption := MonthNames[calendar1.month] + ' ' +
                       inttostr(calendar1.day) + ', ' +
                       inttostr(calendar1.year);
end;

procedure TF_Calendario.Calendar1Change(Sender: TObject);
begin
  panelMnth.caption := MonthNames[calendar1.month] + ' ' +
                       inttostr(calendar1.day) + ', ' +
                       inttostr(calendar1.year);
   if calendar1.calendardate = date
     then btntoday.enabled := false
     else btntoday.enabled := true;
end;

procedure TF_Calendario.BitBtnNextMnthClick(Sender: TObject);
begin
  calendar1.nextmonth;
end;

procedure TF_Calendario.BitBtnPrevMnthClick(Sender: TObject);
begin
  calendar1.prevmonth;
end;

procedure TF_Calendario.BitBtnChgStrtDayClick(Sender: TObject);
begin
  calendar1.startofweek := succ(calendar1.startofweek);
  if calendar1.startofweek >= 7 then
     calendar1.startofweek := 0;
end;

procedure TF_Calendario.ButtonPrevYrClick(Sender: TObject);
begin
  calendar1.prevyear;
  if ((calendar1.month = 2) and (calendar1.day = 29)) then
       calendar1.day := 28;
end;

procedure TF_Calendario.ButtonNextYrClick(Sender: TObject);
begin
  calendar1.nextyear;
  if ((calendar1.month = 2) and (calendar1.day = 29)) then
       calendar1.day := 28;
end;

procedure TF_Calendario.ExpandBtnClick(Sender: TObject);
begin
  F_Calendario.height:=267;
  F_Calendario.width := 345;
  expandbtn.visible := false;
  shrinkbtn.visible := true;
end;

procedure TF_Calendario.ShrinkBtnClick(Sender: TObject);
begin
  F_Calendario.height := 193;
  F_Calendario.width := 360;
  expandbtn.visible := true;
  shrinkbtn.visible := false;
end;

procedure TF_Calendario.BtnOneLineClick(Sender: TObject);
begin
  F_Calendario.height := 67;
  F_Calendario.width := 360;
  expandbtn.visible := true;
  shrinkbtn.visible := false;
end;

procedure TF_Calendario.btntodayClick(Sender: TObject);
begin
  calendar1.calendardate := date;
end;

procedure TF_Calendario.BitBtnPrevMnthKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.BitBtnNextMnthKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.ButtonPrevYrKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.BtnOneLineKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.ButtonNextYrKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.BitBtnChgStrtDayKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.Calendar1KeyPress(Sender: TObject; var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.btntodayKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #27 Then
   Close;
end;

procedure TF_Calendario.ShrinkBtnKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #27 Then
   Close;
end;

end.
