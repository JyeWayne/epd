inherited FrmXRayOrder: TFrmXRayOrder
  Left = 15
  Top = 10
  Caption = 'FrmXRayOrder'
  ClientHeight = 680
  ClientWidth = 1003
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 663
    Width = 1003
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 265
    Height = 663
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 0
      Top = 309
      Width = 265
      Height = 3
      Cursor = crVSplit
      Align = alBottom
    end
    object RadioGroup1: TRadioGroup
      Left = 0
      Top = 0
      Width = 265
      Height = 137
      Align = alTop
      Caption = #39006#22411
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 137
      Width = 265
      Height = 172
      Align = alClient
      Caption = #38283#31435#38917#30446
      TabOrder = 1
      object SgPreOrder: TStringGrid
        Left = 2
        Top = 16
        Width = 261
        Height = 154
        Align = alClient
        ColCount = 8
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 2
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #32048#26126#39636
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        TabOrder = 0
        OnDblClick = SgPreOrderDblClick
        ColWidths = (
          3
          3
          2
          266
          5
          5
          5
          64)
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 570
      Width = 265
      Height = 93
      Align = alBottom
      TabOrder = 2
      object Label4: TLabel
        Left = 31
        Top = 41
        Width = 56
        Height = 14
        Caption = #26178'    '#38291
      end
      object Label3: TLabel
        Left = 31
        Top = 10
        Width = 56
        Height = 14
        Caption = #22519#34892#26085#26399
      end
      object BitBtn1: TBitBtn
        Left = 176
        Top = 65
        Width = 66
        Height = 22
        Caption = #38626#38283
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 102
        Top = 65
        Width = 66
        Height = 22
        Caption = #30906#35469
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object DateTimePicker2: TDateTimePicker
        Left = 97
        Top = 37
        Width = 141
        Height = 24
        Date = 40696.430299849540000000
        Format = 'HH:mm:ss'
        Time = 40696.430299849540000000
        Kind = dtkTime
        TabOrder = 2
      end
      object DateTimePicker1: TDateTimePicker
        Left = 98
        Top = 7
        Width = 141
        Height = 24
        Date = 40696.430132743060000000
        Time = 40696.430132743060000000
        TabOrder = 3
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 312
      Width = 265
      Height = 258
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object Splitter1: TSplitter
        Left = 0
        Top = 119
        Width = 265
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 122
        Width = 265
        Height = 136
        Align = alBottom
        Caption = 'Object'
        TabOrder = 0
        object mymemo: TMemo
          Left = 2
          Top = 16
          Width = 261
          Height = 118
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 265
        Height = 119
        Align = alClient
        Caption = 'Subject'
        TabOrder = 1
        object Memo1: TMemo
          Left = 2
          Top = 16
          Width = 261
          Height = 101
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 265
    Top = 0
    Width = 738
    Height = 663
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    ParentColor = True
    TabOrder = 2
    object Panel3: TPanel
      Left = 0
      Top = 109
      Width = 738
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 21
        Top = 7
        Width = 70
        Height = 14
        Caption = #20381#38498#20839#20195#30908
      end
      object Label2: TLabel
        Left = 217
        Top = 7
        Width = 70
        Height = 14
        Caption = #20381#38917#30446#21517#31281
      end
      object EdtFeeCode: TEdit
        Left = 98
        Top = 4
        Width = 106
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EdtFeeCodeChange
        OnKeyDown = EdtFeeNameKeyDown
      end
      object EdtFeeName: TEdit
        Left = 294
        Top = 4
        Width = 239
        Height = 21
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = EdtFeeNameChange
        OnKeyDown = EdtFeeNameKeyDown
      end
      object CheckBox1: TCheckBox
        Left = 644
        Top = 7
        Width = 69
        Height = 15
        Caption = #20381#39006#22411
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 2
        Visible = False
      end
      object CheckBox2: TCheckBox
        Left = 553
        Top = 7
        Width = 72
        Height = 15
        Caption = #20381#37096#20301
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
    end
    object SGOrder: TStringGrid
      Left = 0
      Top = 137
      Width = 738
      Height = 526
      Align = alClient
      ColCount = 8
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 2
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #32048#26126#39636
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
      ParentFont = False
      TabOrder = 1
      OnDblClick = SGOrderDblClick
      ColWidths = (
        2
        49
        73
        452
        2
        132
        2
        64)
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 0
      Width = 738
      Height = 109
      Align = alTop
      Caption = #37096#20301
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object CBXPath: TCheckListBox
        Left = 2
        Top = 17
        Width = 734
        Height = 90
        OnClickCheck = CBXPathClickCheck
        Align = alClient
        BorderStyle = bsNone
        Columns = 3
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ItemHeight = 15
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnClick = CBXPathClick
        OnMouseDown = CBXPathMouseDown
      end
    end
  end
end
