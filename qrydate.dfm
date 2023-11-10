inherited Frmqrydate: TFrmqrydate
  Tag = 9999
  Left = 355
  Top = 140
  BorderIcons = [biSystemMenu]
  Caption = 'Frmqrydate'
  ClientHeight = 503
  ClientWidth = 903
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 486
    Width = 903
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 903
    Height = 345
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 903
      Height = 45
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvSpace
      BorderWidth = 1
      TabOrder = 0
      object Label1: TLabel
        Left = 32
        Top = 16
        Width = 63
        Height = 14
        Caption = #36215#22987#26085#26399':'
      end
      object Label2: TLabel
        Left = 232
        Top = 16
        Width = 63
        Height = 14
        Caption = #25130#27490#26085#26399':'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 100
        Top = 9
        Width = 105
        Height = 27
        Date = 40904.806958692130000000
        Time = 40904.806958692130000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = DateTimePicker1Change
      end
      object DateTimePicker2: TDateTimePicker
        Left = 300
        Top = 9
        Width = 113
        Height = 27
        Date = 40904.807059247690000000
        Time = 40904.807059247690000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = BitBtn1Click
      end
      object BitBtn1: TBitBtn
        Left = 812
        Top = 9
        Width = 76
        Height = 28
        Caption = #26597#35426
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = BitBtn1Click
      end
      object CHBDept: TCheckBox
        Left = 469
        Top = 15
        Width = 124
        Height = 17
        Caption = #26412#31185
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 640
        Top = 9
        Width = 91
        Height = 28
        Caption = #30906#35469
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn2Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 45
      Width = 444
      Height = 300
      Align = alLeft
      Caption = #38272#35386
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object sgopd: TStringGrid
        Left = 2
        Top = 18
        Width = 440
        Height = 280
        Align = alClient
        ColCount = 8
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = sgopdClick
        OnDrawCell = sgopdDrawCell
        OnMouseDown = sgopdMouseDown
        ColWidths = (
          23
          76
          228
          80
          64
          64
          64
          64)
      end
    end
    object OPDTree: TTreeView
      Left = 600
      Top = 112
      Width = 218
      Height = 72
      AutoExpand = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Indent = 19
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 444
      Top = 45
      Width = 459
      Height = 300
      Align = alClient
      Caption = #20303#38498
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object SGIPD: TStringGrid
        Left = 2
        Top = 18
        Width = 455
        Height = 280
        Align = alClient
        ColCount = 7
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = sgopdClick
        OnDrawCell = sgopdDrawCell
        OnMouseDown = sgopdMouseDown
        ColWidths = (
          23
          71
          80
          178
          69
          64
          64)
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 345
    Width = 903
    Height = 141
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 903
      Height = 141
      Align = alClient
      TabOrder = 0
    end
  end
end
