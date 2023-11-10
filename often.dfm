inherited Frmoften: TFrmoften
  Left = 165
  Top = 0
  Caption = 'Frmoften'
  ClientHeight = 690
  ClientWidth = 991
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 673
    Width = 991
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 991
    Height = 66
    Align = alTop
    TabOrder = 1
    DesignSize = (
      991
      66)
    object BitBtn1: TBitBtn
      Left = 767
      Top = 22
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20351#29992
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 863
      Top = 22
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #38626#38283
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 217
      Height = 64
      Align = alLeft
      Caption = #38917#30446
      Columns = 2
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Items.Strings = (
        #31185
        #20491#20154)
      ParentFont = False
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object GroupBox1: TGroupBox
      Left = 218
      Top = 1
      Width = 263
      Height = 64
      Align = alLeft
      Caption = #21517#31281#25628#23563
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Edit1: TEdit
        Left = 11
        Top = 22
        Width = 225
        Height = 23
        Color = 12449766
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyUp = Edit1KeyUp
      end
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 66
    Width = 991
    Height = 607
    ActivePage = TabSheet9
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TabWidth = 90
    OnChange = PageControl1Change
    object TabSheet4: TTabSheet
      Hint = 'StringGrid4_clbxICD9'
      Caption = #35386#26039
      ImageIndex = 3
      object StringGrid4: TStringGrid
        Left = 528
        Top = 176
        Width = 585
        Height = 105
        ColCount = 8
        RowCount = 2
        PopupMenu = PopupMenu1
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
          64)
      end
      object clbxICD9: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        ItemHeight = 25
        ParentFont = False
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet2: TTabSheet
      Hint = 'StringGrid2_clbxmed'
      Caption = #34277#21697
      ImageIndex = 1
      object StringGrid2: TStringGrid
        Left = 544
        Top = 144
        Width = 549
        Height = 121
        ColCount = 14
        RowCount = 2
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = StringGrid1DblClick
        OnDblClick = StringGrid1DblClick
        OnMouseDown = StringGrid1MouseDown
        OnMouseWheelDown = StringGrid2MouseWheelDown
        OnMouseWheelUp = StringGrid2MouseWheelUp
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
          64
          64
          64
          64)
      end
      object clbxmed: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet6: TTabSheet
      Hint = 'StringGrid6_clbxINS'
      Caption = #27298#39511
      ImageIndex = 5
      object StringGrid6: TStringGrid
        Left = 616
        Top = 104
        Width = 549
        Height = 105
        ColCount = 17
        RowCount = 2
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = StringGrid1DblClick
        OnDblClick = StringGrid1DblClick
        OnMouseDown = StringGrid1MouseDown
      end
      object clbxINS: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet5: TTabSheet
      Hint = 'StringGrid5_clbxXRAY'
      Caption = #25918#23556
      ImageIndex = 4
      object StringGrid5: TStringGrid
        Left = 576
        Top = 160
        Width = 397
        Height = 137
        ColCount = 17
        RowCount = 2
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = StringGrid1DblClick
        OnDblClick = StringGrid1DblClick
        OnMouseDown = StringGrid1MouseDown
      end
      object clbxXRAY: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet3: TTabSheet
      Hint = 'StringGrid3_clbxFEE'
      Caption = #34389#32622
      ImageIndex = 2
      object StringGrid3: TStringGrid
        Left = 568
        Top = 152
        Width = 429
        Height = 145
        ColCount = 10
        RowCount = 2
        PopupMenu = PopupMenu1
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
          64)
      end
      object clbxFEE: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet7: TTabSheet
      Hint = 'StringGrid7_clbxLAB'
      Caption = #27298#26597
      ImageIndex = 5
      object StringGrid7: TStringGrid
        Left = 512
        Top = 192
        Width = 485
        Height = 113
        ColCount = 17
        RowCount = 2
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = StringGrid1DblClick
        OnDblClick = StringGrid1DblClick
        OnMouseDown = StringGrid1MouseDown
      end
      object clbxLAB: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet1: TTabSheet
      Hint = 'StringGrid1_clbxSOAP'
      Caption = #25991#23383
      object StringGrid1: TStringGrid
        Left = 480
        Top = 120
        Width = 445
        Height = 113
        ColCount = 8
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        PopupMenu = PopupMenu1
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
          64)
        RowHeights = (
          24
          24)
      end
      object clbxSOAP: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet8: TTabSheet
      Hint = 'StringGrid8_clbxMTRL'
      Caption = #34907#26448
      ImageIndex = 7
      object StringGrid8: TStringGrid
        Left = 536
        Top = 136
        Width = 469
        Height = 129
        ColCount = 17
        RowCount = 2
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = StringGrid1DblClick
        OnDblClick = StringGrid1DblClick
        OnMouseDown = StringGrid1MouseDown
      end
      object clbxMTRL: TCheckListBox
        Left = 0
        Top = 0
        Width = 983
        Height = 572
        Align = alClient
        Columns = 3
        ItemHeight = 25
        PopupMenu = PopupMenu1
        Style = lbOwnerDrawFixed
        TabOrder = 1
        OnClick = clbxICD9Click
        OnMouseDown = clbxICD9MouseDown
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'ICD-10'
      ImageIndex = 8
      object Shape3: TShape
        Left = 0
        Top = 0
        Width = 983
        Height = 30
        Align = alTop
        Brush.Color = 12615680
        Pen.Style = psClear
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 30
        Width = 983
        Height = 542
        Align = alClient
        DataSource = DtSICD10
        PanelHeight = 38
        PanelWidth = 966
        TabOrder = 0
        RowCount = 14
        object DBText1: TDBText
          Left = 3
          Top = 3
          Width = 59
          Height = 17
          DataField = 'icd9_code'
          DataSource = DtSICD10
          OnClick = DBText1Click
        end
        object DBText2: TDBText
          Left = 72
          Top = 3
          Width = 71
          Height = 17
          DataField = 'ICD_CODE'
          DataSource = DtSICD10
        end
        object DBText3: TDBText
          Left = 152
          Top = 3
          Width = 483
          Height = 17
          DataField = 'CHN_FULL_DESC'
          DataSource = DtSICD10
        end
        object DBText5: TDBText
          Left = 644
          Top = 3
          Width = 38
          Height = 17
          Alignment = taCenter
          DataField = 'sex_type'
          DataSource = DtSICD10
        end
        object DBText6: TDBText
          Left = 698
          Top = 3
          Width = 43
          Height = 17
          Alignment = taCenter
          DataField = 'INF_FLAG'
          DataSource = DtSICD10
        end
        object DBText7: TDBText
          Left = 752
          Top = 3
          Width = 57
          Height = 17
          Alignment = taCenter
          DataField = 'AGE_TYPE'
          DataSource = DtSICD10
        end
        object DBText8: TDBText
          Left = 826
          Top = 3
          Width = 65
          Height = 17
          Alignment = taCenter
          DataField = 'RARE_FLAG'
          DataSource = DtSICD10
        end
        object DBText9: TDBText
          Left = 900
          Top = 3
          Width = 59
          Height = 17
          Alignment = taCenter
          DataField = 'slow_flag'
          DataSource = DtSICD10
        end
        object Shape4: TShape
          Left = 151
          Top = 26
          Width = 805
          Height = 23
          Brush.Color = 15591928
        end
        object DBText4: TDBText
          Left = 152
          Top = 29
          Width = 804
          Height = 17
          DataField = 'ENG_FULL_DESC'
          DataSource = DtSICD10
          Transparent = True
        end
      end
      object StaticText1: TStaticText
        Left = 4
        Top = 4
        Width = 60
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'ICD-9'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText2: TStaticText
        Left = 69
        Top = 4
        Width = 76
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'ICD-10'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText3: TStaticText
        Left = 150
        Top = 4
        Width = 486
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = #30142#30149#21517#31281
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText4: TStaticText
        Left = 641
        Top = 4
        Width = 44
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = #24615#21029
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText5: TStaticText
        Left = 690
        Top = 4
        Width = 53
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = #20659#26579#30149
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText6: TStaticText
        Left = 748
        Top = 4
        Width = 68
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = #24180#40801#38480#21046
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText7: TStaticText
        Left = 821
        Top = 4
        Width = 70
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = #32597#35211#30142#30149
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText8: TStaticText
        Left = 896
        Top = 4
        Width = 62
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = #24930#24615#30149
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 902
    Top = 124
    object N1: TMenuItem
      Caption = #21034#38500#27492#31558#36039#26009
      OnClick = N1Click
    end
  end
  object DtSICD10: TDataSource
    DataSet = ADOQuery1
    Left = 732
    Top = 30
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOLink
    Parameters = <>
    Left = 696
    Top = 32
  end
end
