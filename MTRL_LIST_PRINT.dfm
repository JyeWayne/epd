inherited FrmMTRLListPrint: TFrmMTRLListPrint
  Tag = 9999
  Left = 415
  Top = 283
  Caption = 'FrmMTRLListPrint'
  ClientHeight = 197
  ClientWidth = 359
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 15
    Top = 40
    Width = 68
    Height = 20
    Caption = #26085#26399#21312#38291':'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 15
    Top = 88
    Width = 68
    Height = 20
    Caption = #26178#38291#21312#38291':'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
  end
  inherited MySBar: TStatusBar
    Top = 180
    Width = 359
  end
  object BBTNTQRY: TBitBtn [3]
    Left = 128
    Top = 139
    Width = 75
    Height = 25
    Caption = #26597#35426
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BBTNTQRYClick
  end
  object BBtnCLOSE: TBitBtn [4]
    Left = 256
    Top = 139
    Width = 75
    Height = 25
    Caption = #38626#38283
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BBtnCLOSEClick
  end
  object DateTimePicker1: TDateTimePicker [5]
    Left = 96
    Top = 36
    Width = 121
    Height = 28
    Date = 42388.712630844910000000
    Time = 42388.712630844910000000
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker [6]
    Left = 219
    Top = 36
    Width = 121
    Height = 28
    Date = 42388.712724062500000000
    Time = 42388.712724062500000000
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object MaskEdit1: TMaskEdit [7]
    Left = 96
    Top = 84
    Width = 55
    Height = 28
    EditMask = '!90:00;0;_'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 5
  end
  object MaskEdit2: TMaskEdit [8]
    Left = 160
    Top = 84
    Width = 53
    Height = 28
    EditMask = '!90:00;0;_'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    MaxLength = 5
    ParentFont = False
    TabOrder = 6
  end
end
