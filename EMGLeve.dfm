inherited FrmEMGLeve: TFrmEMGLeve
  Tag = 9999
  Left = 623
  Top = 327
  Caption = #24613#35386#27298#20663#32026#25976#30906#35469
  ClientHeight = 198
  ClientWidth = 265
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 181
    Width = 265
  end
  object Button1: TButton [1]
    Left = 176
    Top = 144
    Width = 75
    Height = 25
    Caption = #30906#35469
    TabOrder = 1
    OnClick = Button1Click
  end
  object RGEMGLEVE: TRadioGroup [2]
    Left = 8
    Top = 16
    Width = 249
    Height = 105
    Caption = #30906#35469#27298#20663#32026#25976
    Columns = 2
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #32048#26126#39636
    Font.Style = []
    Items.Strings = (
      #19968#32026
      #20108#32026
      #19977#32026
      #22235#32026
      #20116#32026)
    ParentFont = False
    TabOrder = 2
  end
end
