object Form1: TForm1
  Left = 126
  Top = 109
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 22
    Top = 108
    Width = 465
    Height = 193
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 16
    Width = 73
    Height = 21
    CalAlignment = dtaLeft
    Date = 38910.595900787
    Time = 38910.595900787
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 102
    Top = 15
    Width = 73
    Height = 21
    CalAlignment = dtaLeft
    Date = 38910.595900787
    Time = 38910.595900787
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 2
  end
  object Query1: TQuery
    DatabaseName = 'Debora'
    Left = 344
    Top = 8
  end
  object DataSource1: TDataSource
    Left = 403
    Top = 11
  end
end
