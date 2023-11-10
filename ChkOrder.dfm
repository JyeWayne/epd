inherited FrmChkOrder: TFrmChkOrder
  Left = 169
  Top = 33
  Caption = 'FrmChkOrder'
  ClientHeight = 661
  ClientWidth = 1006
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 644
    Width = 1006
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 1006
    Height = 137
    Align = alTop
    Caption = #27298#26597#23460
    TabOrder = 1
    object CBRoom: TCheckListBox
      Left = 2
      Top = 16
      Width = 1002
      Height = 119
      OnClickCheck = CBRoomClickCheck
      Align = alClient
      BorderStyle = bsNone
      Columns = 4
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      OnMouseDown = CBRoomMouseDown
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 137
    Width = 1006
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvSpace
    TabOrder = 2
    object Label1: TLabel
      Left = 25
      Top = 10
      Width = 80
      Height = 15
      Caption = #24555#36895#26597#35426' :'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 118
      Top = 10
      Width = 80
      Height = 15
      Caption = #20381#38498#20839#20195#30908
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 314
      Top = 10
      Width = 80
      Height = 15
      Caption = #20381#27298#26597#21517#31281
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object EdtFeeCode: TEdit
      Left = 203
      Top = 6
      Width = 106
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EdtFeeCodeChange
      OnKeyDown = EdtFeeCodeKeyDown
    end
    object EdtFeeName: TEdit
      Left = 399
      Top = 6
      Width = 282
      Height = 23
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = EdtFeeNameChange
    end
    object CheckBox1: TCheckBox
      Left = 699
      Top = 10
      Width = 99
      Height = 15
      Caption = #38480#23450#27298#26597#23460
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cbgroup: TCheckBox
      Left = 832
      Top = 10
      Width = 129
      Height = 17
      Caption = #24613#35386#24120#29992#27298#26597#23460
      Checked = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = cbgroupClick
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 172
    Width = 1006
    Height = 472
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 3
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 240
      Height = 470
      Align = alLeft
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 1
        Top = 229
        Width = 238
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clTeal
        ParentColor = False
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 238
        Height = 228
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 0
        object SGPreOrder: TStringGrid
          Left = 1
          Top = 1
          Width = 236
          Height = 226
          Align = alClient
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentFont = False
          TabOrder = 0
          OnDblClick = SGPreOrderDblClick
          ColWidths = (
            4
            3
            3
            149
            49)
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 438
        Width = 238
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 86
          Top = 4
          Width = 66
          Height = 22
          Caption = #30906#23450
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 161
          Top = 4
          Width = 66
          Height = 22
          Caption = #38626#38283
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 232
        Width = 238
        Height = 206
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 0
          Top = 102
          Width = 238
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = clActiveCaption
          ParentColor = False
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 238
          Height = 100
          Align = alTop
          Caption = 'Subject'
          TabOrder = 0
          object Memo1: TMemo
            Left = 2
            Top = 16
            Width = 234
            Height = 82
            Align = alClient
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 105
          Width = 238
          Height = 101
          Align = alBottom
          Caption = 'Object'
          TabOrder = 1
          object Memo2: TMemo
            Left = 2
            Top = 16
            Width = 234
            Height = 83
            Align = alClient
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
    object SGChkOrder: TStringGrid
      Left = 241
      Top = 1
      Width = 764
      Height = 470
      Align = alClient
      ColCount = 3
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
      TabOrder = 1
      OnDblClick = SGChkOrderDblClick
      ColWidths = (
        502
        108
        136)
    end
  end
end
