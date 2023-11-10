inherited FrmPreliminaryReport: TFrmPreliminaryReport
  Tag = 9999
  Left = 190
  Top = 213
  Caption = 'FrmPreliminaryReport'
  ClientHeight = 690
  ClientWidth = 974
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 673
    Width = 974
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 233
    Height = 673
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object SGRPTLIS: TStringGrid
      Left = 0
      Top = 50
      Width = 233
      Height = 623
      Align = alClient
      FixedCols = 0
      RowCount = 2
      PopupMenu = PMRPTDC
      TabOrder = 0
      OnClick = SGRPTLISClick
      OnDrawCell = SGRPTLISDrawCell
      OnMouseDown = SGRPTLISMouseDown
      ColWidths = (
        31
        107
        91
        74
        64)
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 50
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  '#21069#27425#22577#21578':'
      Color = 15591928
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel [2]
    Left = 233
    Top = 0
    Width = 741
    Height = 673
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    Color = 15591928
    TabOrder = 2
    object Shape1: TShape
      Left = 5
      Top = 5
      Width = 731
      Height = 334
      Align = alTop
      Brush.Color = 15591928
      Pen.Style = psClear
    end
    object Label4: TLabel
      Left = 24
      Top = 13
      Width = 110
      Height = 22
      Caption = #22577#21578#21028#35712#26178#38291' :'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 20
      Top = 312
      Width = 110
      Height = 22
      Caption = #21021#27493#22577#21578#32080#26524' :'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 399
      Top = 96
      Width = 110
      Height = 22
      Caption = #27298#26597#38917#30446#35498#26126' :'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 213
      Top = 13
      Width = 110
      Height = 22
      Caption = #22577#21578#21028#35712#37291#24107' :'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 12
      Top = 93
      Width = 76
      Height = 22
      Caption = #27298#26597#38917#30446' :'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DateTimePicker2: TDateTimePicker
      Left = 24
      Top = 41
      Width = 120
      Height = 28
      Date = 42270.773203344910000000
      Time = 42270.773203344910000000
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object MaskEdit2: TMaskEdit
      Left = 146
      Top = 41
      Width = 51
      Height = 28
      EditMask = '!90:00;0;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 2
    end
    object CHECKITEM: TMemo
      Left = 397
      Top = 123
      Width = 340
      Height = 167
      TabOrder = 3
    end
    object MemoREPORT_DESC: TMemo
      Left = 5
      Top = 339
      Width = 731
      Height = 329
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object STUser: TStaticText
      Left = 214
      Top = 41
      Width = 110
      Height = 29
      AutoSize = False
      BorderStyle = sbsSunken
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object SGlist: TStringGrid
      Left = 13
      Top = 126
      Width = 372
      Height = 165
      ColCount = 7
      FixedCols = 0
      RowCount = 2
      TabOrder = 5
      OnClick = SGlistClick
      OnDrawCell = SGlistDrawCell
      OnMouseDown = SGlistMouseDown
      ColWidths = (
        76
        215
        70
        64
        64
        64
        64)
    end
    object GroupBox1: TGroupBox
      Left = 383
      Top = 12
      Width = 354
      Height = 77
      TabOrder = 6
      object BitBtn1: TBitBtn
        Left = 28
        Top = 24
        Width = 101
        Height = 35
        Caption = #23384#27284
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn3: TBitBtn
        Left = 159
        Top = 24
        Width = 79
        Height = 35
        Caption = #28165#38500
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn3Click
      end
      object BitBtn2: TBitBtn
        Left = 266
        Top = 24
        Width = 71
        Height = 35
        Caption = #38626#38283
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn2Click
      end
    end
    object Button1: TButton
      Left = 680
      Top = 311
      Width = 51
      Height = 25
      Hint = 'Abdominal_ultrasound'
      Caption = #33145#36229
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 624
      Top = 311
      Width = 51
      Height = 25
      Hint = 'SHOCK'
      Caption = #20241#20811
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 568
      Top = 311
      Width = 51
      Height = 25
      Hint = 'RENAL'
      Caption = #33102#33247
      TabOrder = 9
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 512
      Top = 311
      Width = 51
      Height = 25
      Hint = 'FAST'
      Caption = 'FAST'
      TabOrder = 10
      OnClick = Button1Click
    end
  end
  object PMRPTDC: TPopupMenu
    Left = 320
    Top = 281
    object DC1: TMenuItem
      Caption = 'DC'#22577#21578
      OnClick = DC1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 937
    Top = 160
  end
  object QRHTMLFilter1: TQRHTMLFilter
    Left = 937
    Top = 128
  end
end
