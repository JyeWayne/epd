inherited FrmInsertIcInfor: TFrmInsertIcInfor
  Tag = 9999
  Left = 315
  Top = 215
  Caption = 'FrmInsertIcInfor'
  ClientHeight = 89
  ClientWidth = 519
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 72
    Width = 519
  end
  object ProgressBar1: TProgressBar [1]
    Left = 0
    Top = 47
    Width = 519
    Height = 25
    Align = alBottom
    Smooth = True
    TabOrder = 1
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 519
    Height = 47
    Align = alClient
    Caption = 'Panel1'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
