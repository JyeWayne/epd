inherited FrmRDShift: TFrmRDShift
  Left = 336
  Top = 226
  Caption = 'FrmRDShift'
  ClientWidth = 1012
  OldCreateOrder = True
  Scaled = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Width = 1012
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1012
    Height = 77
    Align = alTop
    TabOrder = 1
    object Label6: TLabel
      Left = 587
      Top = 23
      Width = 96
      Height = 15
      Caption = #25509#29677#20027#27835#37291#24107
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 419
      Top = 23
      Width = 96
      Height = 15
      Caption = #20132#29677#20027#27835#37291#24107
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 928
      Top = 24
      Width = 75
      Height = 29
      Caption = #38626#38283
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 843
      Top = 42
      Width = 75
      Height = 27
      Caption = #35036#21360
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 747
      Top = 8
      Width = 75
      Height = 27
      Caption = #20132#29677
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object cbbChangecode: TComboBox
      Left = 587
      Top = 43
      Width = 142
      Height = 22
      ItemHeight = 14
      TabOrder = 3
      Text = #35531#36984#25799
    end
    object CBLOUTDOC: TComboBox
      Left = 419
      Top = 43
      Width = 142
      Height = 22
      ItemHeight = 14
      TabOrder = 4
      Text = #35531#36984#25799
    end
    object BtnSave: TBitBtn
      Left = 747
      Top = 42
      Width = 75
      Height = 27
      Caption = #26283#23384
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 401
      Height = 75
      Align = alLeft
      Caption = #30149#20154#28165#21934#26597#35426#26781#20214
      TabOrder = 6
      object Label4: TLabel
        Left = 9
        Top = 22
        Width = 40
        Height = 15
        Caption = #21312#22495':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 161
        Top = 22
        Width = 72
        Height = 15
        Caption = #37291#24107#20195#30908':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object cbArea: TComboBox
        Left = 9
        Top = 41
        Width = 135
        Height = 24
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
        Text = #35531#36984#25799
        Items.Strings = (
          #35531#36984#25799
          #23142#31185#21312
          #23567#20818#21312
          #37325#30151#21312
          #36629#30151#21312
          #30041#35264'1'#21312
          #30041#35264'2'#21312)
      end
      object CBBdoc: TComboBox
        Left = 160
        Top = 41
        Width = 145
        Height = 24
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 1
        Text = #35531#36984#25799
      end
      object Button1: TButton
        Left = 319
        Top = 39
        Width = 67
        Height = 25
        Caption = #26597#35426
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object BitBtn4: TBitBtn
      Left = 843
      Top = 10
      Width = 75
      Height = 27
      Caption = #28165#21934#21015#21360
      TabOrder = 7
      OnClick = BitBtn4Click
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 77
    Width = 1012
    Height = 576
    Align = alClient
    BorderWidth = 2
    Caption = 'Panel2'
    TabOrder = 2
    object SGShift: TStringGrid
      Left = 3
      Top = 29
      Width = 1006
      Height = 544
      Align = alClient
      ColCount = 17
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
      OnClick = SGShiftClick
      OnSelectCell = SGShiftSelectCell
    end
    object Panel32: TPanel
      Left = 3
      Top = 3
      Width = 1006
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Color = 16508624
      TabOrder = 1
      object Btnsex: TBitBtn
        Tag = 1
        Left = 26
        Top = 0
        Width = 35
        Height = 25
        Caption = #24615#21029
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnsexClick
      end
      object BtnMed: TBitBtn
        Left = 640
        Top = 0
        Width = 48
        Height = 25
        Caption = #29992#34277
        Enabled = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object Btnbed: TBitBtn
        Tag = 3
        Left = 96
        Top = 0
        Width = 56
        Height = 25
        Caption = #24202#34399
        Enabled = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnsexClick
      end
      object Btnchrno: TBitBtn
        Tag = 4
        Left = 151
        Top = 0
        Width = 71
        Height = 25
        Caption = #30149#27511#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnsexClick
      end
      object Btnchrname: TBitBtn
        Tag = 5
        Left = 222
        Top = 0
        Width = 77
        Height = 25
        Caption = #22995#21517
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BtnsexClick
      end
      object BtnRty: TBitBtn
        Tag = 2
        Left = 61
        Top = 0
        Width = 35
        Height = 25
        Caption = #27298#20663
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BtnsexClick
      end
      object BtnRCir: TBitBtn
        Tag = 12
        Left = 495
        Top = -1
        Width = 0
        Height = 27
        Hint = 'CbbROrderCir'
        Caption = #38971#29575
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object BtnRemain: TBitBtn
        Tag = 14
        Left = 379
        Top = 0
        Width = 75
        Height = 25
        Caption = #20572#30041'(H)'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = BtnsexClick
      end
      object btnage: TBitBtn
        Tag = 15
        Left = 299
        Top = 0
        Width = 80
        Height = 25
        Caption = #24180#40801
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BtnsexClick
      end
      object BtnDiag: TBitBtn
        Left = 454
        Top = 0
        Width = 186
        Height = 25
        Caption = #35386#26039'/'#35413#20272
        Enabled = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object Btnchk: TBitBtn
        Left = 688
        Top = 0
        Width = 43
        Height = 25
        Caption = #27298#26597
        Enabled = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object BtnShift: TBitBtn
        Left = 731
        Top = 0
        Width = 166
        Height = 25
        Caption = #20132#29677#20107#38917'/'#24314#35696
        Enabled = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object Btnsle: TBitBtn
        Left = 2
        Top = 1
        Width = 23
        Height = 25
        Caption = #36984
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = BtnsleClick
      end
      object BtnShiftnote: TBitBtn
        Left = 897
        Top = 0
        Width = 90
        Height = 25
        Hint = 'CbbROrderYN'
        Caption = #20633#35387
        Enabled = False
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
    end
    object Memtex: TMemo
      Left = 584
      Top = 80
      Width = 241
      Height = 150
      Lines.Strings = (
        'Memo1')
      TabOrder = 2
      Visible = False
      OnExit = MemtexExit
    end
    object PNLMEDLIST: TPanel
      Left = 3
      Top = 72
      Width = 982
      Height = 441
      BevelInner = bvRaised
      BevelOuter = bvLowered
      BevelWidth = 2
      BorderWidth = 2
      TabOrder = 3
      Visible = False
      object Panel6: TPanel
        Left = 6
        Top = 6
        Width = 970
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          970
          21)
        object SpeedButton1: TSpeedButton
          Left = 945
          Top = 0
          Width = 23
          Height = 22
          Anchors = [akRight, akBottom]
          Caption = 'X'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 7
          Top = 4
          Width = 7
          Height = 14
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -14
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 416
          Top = 0
          Width = 190
          Height = 19
          Anchors = [akRight, akBottom]
          Caption = #21015#21360#20013#35531#31245#31561'.......'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Visible = False
        end
      end
      object SGmedshift: TStringGrid
        Left = 6
        Top = 27
        Width = 970
        Height = 408
        Align = alClient
        ColCount = 1
        FixedCols = 0
        RowCount = 2
        TabOrder = 1
        OnDblClick = SGmedshiftDblClick
        RowHeights = (
          24
          24)
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOLink
    Parameters = <>
    Left = 472
    Top = 149
  end
end
