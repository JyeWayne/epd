inherited FrmLabOrder: TFrmLabOrder
  Left = 188
  Top = 45
  Caption = 'FrmLabOrder'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel [1]
    Left = 0
    Top = 148
    Width = 986
    Height = 505
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 231
      Height = 503
      Align = alLeft
      BorderWidth = 3
      ParentColor = True
      TabOrder = 0
      object SGPreOrder: TStringGrid
        Left = 4
        Top = 4
        Width = 223
        Height = 209
        Align = alClient
        ColCount = 6
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
          2
          2
          2
          220
          64
          64)
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 213
        Width = 223
        Height = 174
        Align = alBottom
        Caption = #35498#26126
        TabOrder = 1
        object mymemo: TMemo
          Left = 2
          Top = 16
          Width = 219
          Height = 156
          Align = alClient
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 4
        Top = 387
        Width = 223
        Height = 112
        Align = alBottom
        TabOrder = 2
        object Label1: TLabel
          Left = 7
          Top = 14
          Width = 56
          Height = 14
          Caption = #22519#34892#26085#26399
        end
        object Label4: TLabel
          Left = 7
          Top = 53
          Width = 56
          Height = 14
          Caption = #26178'    '#38291
        end
        object BitBtn1: TBitBtn
          Left = 150
          Top = 84
          Width = 66
          Height = 22
          Caption = #38626#38283
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 75
          Top = 84
          Width = 66
          Height = 22
          Caption = #30906#23450
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 70
          Top = 11
          Width = 141
          Height = 24
          Date = 40696.430132743060000000
          Time = 40696.430132743060000000
          TabOrder = 2
        end
        object DateTimePicker2: TDateTimePicker
          Left = 70
          Top = 49
          Width = 141
          Height = 24
          Date = 40696.430299849540000000
          Format = 'HH:mm:ss'
          Time = 40696.430299849540000000
          Kind = dtkTime
          TabOrder = 3
        end
      end
    end
    object SGLabOrder: TStringGrid
      Left = 232
      Top = 1
      Width = 753
      Height = 503
      Align = alClient
      ColCount = 6
      DefaultRowHeight = 21
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect]
      TabOrder = 1
      OnDblClick = SGLabOrderDblClick
      OnDrawCell = SGLabOrderDrawCell
      ColWidths = (
        74
        80
        78
        466
        3
        40)
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 986
    Height = 148
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 3
    Caption = 'Panel3'
    ParentColor = True
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 3
      Top = 3
      Width = 229
      Height = 142
      Align = alLeft
      Caption = #32068#21029
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object CBLabGroup: TCheckListBox
        Left = 2
        Top = 17
        Width = 225
        Height = 123
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #32048#26126#39636
        Font.Style = []
        ItemHeight = 13
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnClick = CBLabGroupClick
        OnMouseDown = CBLabGroupMouseDown
      end
    end
    object Panel5: TPanel
      Left = 232
      Top = 3
      Width = 751
      Height = 142
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel5'
      ParentColor = True
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 751
        Height = 111
        Align = alClient
        Caption = #27298#39636
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object CBLabSample: TCheckListBox
          Left = 2
          Top = 17
          Width = 747
          Height = 92
          Align = alClient
          BorderStyle = bsNone
          Columns = 4
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          ItemHeight = 13
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          OnClick = CBLabSampleClick
          OnMouseDown = CBLabGroupMouseDown
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 111
        Width = 751
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label2: TLabel
          Left = 7
          Top = 7
          Width = 56
          Height = 14
          Caption = #38498#20839#20195#30908
        end
        object Label3: TLabel
          Left = 175
          Top = 7
          Width = 56
          Height = 14
          Caption = #38917#30446#21517#31281
        end
        object CheckBox1: TCheckBox
          Left = 422
          Top = 7
          Width = 67
          Height = 15
          Caption = #20381#32068#21029
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 496
          Top = 7
          Width = 71
          Height = 15
          Caption = #20381#27298#39636
          TabOrder = 1
        end
        object EdtFeeCode: TEdit
          Left = 68
          Top = 4
          Width = 85
          Height = 22
          CharCase = ecUpperCase
          TabOrder = 2
          OnChange = EdtFeeCodeChange
          OnKeyDown = EdtFeeCodeKeyDown
        end
        object EdtFeeName: TEdit
          Left = 235
          Top = 4
          Width = 171
          Height = 22
          TabOrder = 3
          OnChange = EdtFeeNameChange
          OnKeyDown = EdtFeeCodeKeyDown
        end
        object CheckBox3: TCheckBox
          Left = 570
          Top = 6
          Width = 105
          Height = 17
          Caption = #21487#24613#20316#38917#30446
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #27161#26999#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = CheckBox3Click
        end
        object cbgroup: TCheckBox
          Left = 683
          Top = 5
          Width = 56
          Height = 17
          Caption = #24613#35386
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = cbgroupClick
        end
      end
    end
  end
end
