inherited FrmUsePkg: TFrmUsePkg
  Left = 315
  Top = 247
  Caption = 'FrmUsePkg'
  ClientHeight = 644
  ClientWidth = 999
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter [0]
    Left = 261
    Top = 0
    Height = 627
  end
  inherited MySBar: TStatusBar
    Top = 627
    Width = 999
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 261
    Height = 627
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 259
      Height = 120
      Align = alTop
      Caption = #22871#39184#39006#22411
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ItemIndex = 2
      Items.Strings = (
        #20840#38498#20849#29992
        #31185#20849#29992
        #37291#24107#23560#29992)
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object CheckListBox1: TListBox
      Left = 1
      Top = 121
      Width = 259
      Height = 505
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnClick = CheckListBox1Click
    end
    object cbbdept: TComboBox
      Left = 104
      Top = 56
      Width = 145
      Height = 22
      ItemHeight = 14
      TabOrder = 2
      Text = 'cbbdept'
      Visible = False
      OnChange = cbbdeptChange
    end
    object cbbdr: TComboBox
      Left = 104
      Top = 88
      Width = 145
      Height = 22
      ItemHeight = 14
      TabOrder = 3
      Text = 'cbbdr'
      OnChange = cbbdrChange
    end
    object ListBox1: TListBox
      Left = 32
      Top = 136
      Width = 201
      Height = 81
      ItemHeight = 14
      TabOrder = 4
      Visible = False
    end
  end
  object Panel2: TPanel [3]
    Left = 264
    Top = 0
    Width = 735
    Height = 627
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 735
      Height = 586
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabWidth = 90
      object TabSheet1: TTabSheet
        Hint = #25991#23383
        Caption = #25991#23383
        object StringGrid1: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 9
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
          ColWidths = (
            101
            289
            64
            64
            64
            64
            64
            64
            64)
        end
      end
      object TabSheet2: TTabSheet
        Hint = #34277#21697
        Caption = #34277#21697
        ImageIndex = 1
        object StringGrid2: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 10
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
          OnSelectCell = StringGrid2SelectCell
          ColWidths = (
            101
            289
            64
            64
            64
            64
            64
            64
            64
            64)
        end
      end
      object TabSheet3: TTabSheet
        Hint = #34389#32622
        Caption = #34389#32622
        ImageIndex = 2
        object StringGrid3: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 11
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
          ColWidths = (
            101
            289
            64
            64
            64
            64
            64
            64
            64
            64
            64)
        end
      end
      object TabSheet4: TTabSheet
        Hint = #35386#26039
        Caption = #35386#26039
        ImageIndex = 3
        object StringGrid4: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 11
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
          ColWidths = (
            101
            289
            157
            136
            64
            64
            64
            64
            64
            64
            64)
        end
      end
      object TabSheet5: TTabSheet
        Hint = #25918#23556
        Caption = #25918#23556
        ImageIndex = 4
        object StringGrid5: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 11
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet6: TTabSheet
        Hint = #27298#39511
        Caption = #27298#39511
        ImageIndex = 5
        object StringGrid6: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 11
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet7: TTabSheet
        Hint = #27298#26597
        Caption = #27298#26597
        ImageIndex = 6
        object StringGrid7: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 11
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet8: TTabSheet
        Hint = #34907#26448
        Caption = #34907#26448
        ImageIndex = 7
        object StringGrid8: TStringGrid
          Left = 0
          Top = 0
          Width = 727
          Height = 555
          Align = alClient
          ColCount = 11
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid1DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 586
      Width = 735
      Height = 41
      Align = alBottom
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 608
        Top = 8
        Width = 75
        Height = 25
        Caption = #38626#38283
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 528
        Top = 8
        Width = 75
        Height = 25
        Caption = #20351#29992
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
  end
end
