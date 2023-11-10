inherited FrmDitto: TFrmDitto
  Tag = 9999
  Left = 353
  Top = 156
  Caption = 'FrmDitto'
  ClientHeight = 686
  ClientWidth = 1002
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 669
    Width = 1002
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 360
    Height = 669
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object Sgfete: TStringGrid
      Left = 1
      Top = 1
      Width = 358
      Height = 667
      Align = alClient
      ColCount = 9
      DefaultRowHeight = 21
      FixedCols = 0
      RowCount = 2
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnDblClick = SgfeteDblClick
      ColWidths = (
        74
        77
        73
        74
        64
        64
        64
        64
        64)
    end
  end
  object Panel3: TPanel [2]
    Left = 360
    Top = 0
    Width = 642
    Height = 669
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 640
      Height = 146
      Align = alTop
      Caption = 'Panel4'
      TabOrder = 0
      object StringGrid1: TStringGrid
        Left = 1
        Top = 1
        Width = 638
        Height = 144
        Align = alClient
        DefaultRowHeight = 21
        FixedCols = 0
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = StringGrid1DblClick
        OnDblClick = StringGrid1DblClick
        OnMouseDown = StringGrid1MouseDown
        ColWidths = (
          33
          91
          464
          411
          64)
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 147
      Width = 640
      Height = 243
      Align = alTop
      TabOrder = 1
      object RichEdit1: TRichEdit
        Left = 104
        Top = 0
        Width = 531
        Height = 56
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object RichEdit2: TRichEdit
        Left = 104
        Top = 56
        Width = 531
        Height = 63
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object RichEdit3: TRichEdit
        Left = 104
        Top = 120
        Width = 531
        Height = 59
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 2
      end
      object RichEdit4: TRichEdit
        Left = 104
        Top = 181
        Width = 531
        Height = 58
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 3
      end
      object CheckBox2: TCheckBox
        Left = 7
        Top = 2
        Width = 88
        Height = 18
        Caption = 'Subjective'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object CheckBox3: TCheckBox
        Left = 7
        Top = 60
        Width = 80
        Height = 17
        Caption = 'Objective'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object CheckBox4: TCheckBox
        Left = 7
        Top = 123
        Width = 80
        Height = 17
        Caption = 'Plan'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object CheckBox5: TCheckBox
        Left = 7
        Top = 185
        Width = 91
        Height = 17
        Caption = 'Assessment'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object SButs: TBitBtn
        Left = 72
        Top = 23
        Width = 25
        Height = 25
        Caption = #21034
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = SButsClick
      end
      object SButo: TBitBtn
        Left = 72
        Top = 84
        Width = 25
        Height = 25
        Caption = #21034
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = SButsClick
      end
      object SButsp: TBitBtn
        Left = 72
        Top = 145
        Width = 25
        Height = 25
        Caption = #21034
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = SButsClick
      end
      object SButA: TBitBtn
        Left = 72
        Top = 207
        Width = 25
        Height = 25
        Caption = #21034
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = SButsClick
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 390
      Width = 640
      Height = 229
      ActivePage = TabSheet4
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TabSheet1: TTabSheet
        Hint = #34277#21697
        Caption = #34277#21697
        object StringGrid2: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          ColCount = 15
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet2: TTabSheet
        Hint = #34907#26448
        Caption = #34907#26448
        ImageIndex = 1
        object StringGrid3: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          ColCount = 8
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet3: TTabSheet
        Hint = #25991#23383#37291#22225
        Caption = #25991#23383#37291#22225
        ImageIndex = 2
        object StringGrid4: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet4: TTabSheet
        Hint = #34389#32622
        Caption = #34389#32622
        ImageIndex = 3
        object StringGrid5: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          ColCount = 9
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet5: TTabSheet
        Hint = #27298#39511
        Caption = #27298#39511
        ImageIndex = 4
        object StringGrid6: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          ColCount = 13
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet6: TTabSheet
        Hint = #27298#26597
        Caption = #27298#26597
        ImageIndex = 5
        object StringGrid7: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          ColCount = 14
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
      object TabSheet7: TTabSheet
        Hint = #25918#23556
        Caption = #25918#23556
        ImageIndex = 6
        object StringGrid8: TStringGrid
          Left = 0
          Top = 0
          Width = 632
          Height = 199
          Align = alClient
          ColCount = 14
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 2
          TabOrder = 0
          OnClick = StringGrid1DblClick
          OnDblClick = StringGrid6DblClick
          OnMouseDown = StringGrid1MouseDown
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 619
      Width = 640
      Height = 49
      Align = alBottom
      TabOrder = 3
      DesignSize = (
        640
        49)
      object BitBtn1: TBitBtn
        Left = 238
        Top = 10
        Width = 84
        Height = 29
        Anchors = [akRight, akBottom]
        Caption = #20840#36984
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 440
        Top = 10
        Width = 84
        Height = 29
        Anchors = [akRight, akBottom]
        Caption = #24118#20837
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 339
        Top = 10
        Width = 84
        Height = 29
        Anchors = [akRight, akBottom]
        Caption = #21462#28040#20840#36984
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 542
        Top = 10
        Width = 84
        Height = 29
        Anchors = [akRight, akBottom]
        Caption = #38364#38281
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object btnRePrint: TBitBtn
        Left = 120
        Top = 10
        Width = 77
        Height = 29
        Caption = #35036#21360
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = btnRePrintClick
      end
      object BtnDCord: TBitBtn
        Left = 14
        Top = 10
        Width = 77
        Height = 29
        Caption = #21034#38500
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnClick = BtnDCordClick
      end
    end
  end
end
