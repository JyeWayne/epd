inherited FrmTriage: TFrmTriage
  Tag = 9999
  Left = 271
  Top = 233
  Caption = #35703#29702#27298#20663#36039#26009
  ClientHeight = 411
  ClientWidth = 852
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 394
    Width = 852
  end
  object SGtriage: TStringGrid [1]
    Left = 0
    Top = 0
    Width = 329
    Height = 394
    Align = alLeft
    DefaultRowHeight = 21
    FixedCols = 0
    TabOrder = 1
    OnClick = SGtriageClick
  end
  object Button1: TButton [2]
    Left = 744
    Top = 360
    Width = 75
    Height = 25
    Caption = #38626#38283
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo_Triageman: TMemo [3]
    Left = 336
    Top = 0
    Width = 513
    Height = 353
    Lines.Strings = (
      'Memo_Triageman')
    ScrollBars = ssBoth
    TabOrder = 3
  end
end
