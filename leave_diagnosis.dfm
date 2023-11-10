object Frmleave_diagnosis: TFrmleave_diagnosis
  Left = 351
  Top = 91
  Width = 882
  Height = 572
  BorderIcons = [biMinimize, biMaximize]
  Caption = #38626#38498#35386#26039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlIcd: TPanel
    Left = 344
    Top = 371
    Width = 834
    Height = 200
    Caption = 'pnlIcd'
    TabOrder = 0
    Visible = False
    object DBCIcd: TDBCtrlGrid
      Left = 3
      Top = 24
      Width = 822
      Height = 152
      DataSource = DSIcd
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #32048#26126#39636
      Font.Style = []
      PanelHeight = 19
      PanelWidth = 805
      ParentFont = False
      TabOrder = 0
      RowCount = 8
      SelectedColor = clAqua
      OnPaintPanel = DBCIcdPaintPanel
      object DBText1: TDBText
        Left = 4
        Top = 2
        Width = 53
        Height = 17
        DataField = 'icd9_code'
        DataSource = DSIcd
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        OnClick = DBText1Click
        OnDblClick = DBText1Click
      end
      object DBText2: TDBText
        Left = 60
        Top = 2
        Width = 477
        Height = 17
        DataField = 'ENG_FULL_DESC'
        DataSource = DSIcd
        OnClick = DBText1Click
        OnDblClick = DBText1Click
      end
      object DBText3: TDBText
        Left = 540
        Top = 2
        Width = 301
        Height = 17
        DataField = 'CHN_FULL_DESC'
        DataSource = DSIcd
        OnClick = DBText1Click
        OnDblClick = DBText1Click
      end
    end
    object pnlIcdT: TPanel
      Left = 1
      Top = 1
      Width = 832
      Height = 23
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      object Label12: TLabel
        Left = 9
        Top = 5
        Width = 32
        Height = 15
        Caption = #20195#30908
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 541
        Top = 5
        Width = 64
        Height = 15
        Caption = #20013#25991#21517#31281
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 62
        Top = 5
        Width = 64
        Height = 15
        Caption = #33521#25991#21517#31281
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 41
    Align = alTop
    TabOrder = 1
    OnMouseDown = Panel1MouseDown
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 152
      Height = 15
      Caption = #31532#19968#30908#28858#20027#35201#35386#26039#30908' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 662
      Top = 8
      Width = 75
      Height = 25
      Caption = #23436#25104
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 752
      Top = 8
      Width = 75
      Height = 25
      Caption = #21462#28040#23436#35386
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 234
    Width = 866
    Height = 132
    Align = alTop
    TabOrder = 2
    object SGTMP: TStringGrid
      Left = 305
      Top = 1
      Width = 560
      Height = 130
      Align = alClient
      Color = clSilver
      FixedCols = 0
      RowCount = 11
      TabOrder = 0
      ColWidths = (
        81
        416
        312
        3
        3)
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 304
      Height = 130
      Align = alLeft
      Alignment = taLeftJustify
      TabOrder = 1
      object Label2: TLabel
        Left = 3
        Top = 7
        Width = 51
        Height = 13
        Caption = #35386#26039#25551#36848':'
      end
      object MemLeavestr: TMemo
        Left = 1
        Top = 24
        Width = 302
        Height = 105
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object PnlICD10: TPanel
    Left = 72
    Top = 421
    Width = 574
    Height = 80
    TabOrder = 3
    Visible = False
    object DBCICD10: TDBCtrlGrid
      Left = 1
      Top = 24
      Width = 572
      Height = 55
      Align = alClient
      DataSource = DSICD10
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #32048#26126#39636
      Font.Style = []
      PanelHeight = 27
      PanelWidth = 555
      ParentFont = False
      TabOrder = 0
      RowCount = 2
      SelectedColor = clAqua
      object DBText41: TDBText
        Left = 4
        Top = 2
        Width = 109
        Height = 17
        DataField = 'icd9_code'
        DataSource = DSICD10
        OnClick = DBText41Click
      end
      object DBText42: TDBText
        Left = 452
        Top = 2
        Width = 85
        Height = 17
        DataField = 'ENG_FULL_DESC'
        DataSource = DSICD10
        OnClick = DBText41Click
      end
      object DBText43: TDBText
        Left = 108
        Top = 2
        Width = 317
        Height = 17
        DataField = 'CHN_FULL_DESC'
        DataSource = DSICD10
        OnClick = DBText41Click
      end
    end
    object Panel37: TPanel
      Left = 1
      Top = 1
      Width = 572
      Height = 23
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 1
      object Label81: TLabel
        Left = 14
        Top = 5
        Width = 24
        Height = 13
        Caption = #20195#30908
      end
      object Label82: TLabel
        Left = 106
        Top = 5
        Width = 48
        Height = 13
        Caption = #20013#25991#21517#31281
      end
      object Label83: TLabel
        Left = 454
        Top = 5
        Width = 64
        Height = 15
        Caption = #33521#25991#21517#31281
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 866
    Height = 193
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Diagnosis ICD-9'
      object SGIcd_leave: TStringGrid
        Left = 0
        Top = 0
        Width = 858
        Height = 165
        Align = alClient
        DefaultRowHeight = 27
        FixedCols = 0
        RowCount = 11
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        ScrollBars = ssNone
        TabOrder = 0
        OnDblClick = SGIcd_leaveDblClick
        OnDragDrop = SGIcd_leaveDragDrop
        OnDragOver = SGIcd_leaveDragOver
        OnDrawCell = SGIcd_leaveDrawCell
        OnEnter = SGIcd_leaveEnter
        OnExit = SGIcd_leaveExit
        OnKeyDown = SGIcd_leaveKeyDown
        OnKeyPress = SGIcd_leaveKeyPress
        OnKeyUp = SGIcd_leaveKeyUp
        OnMouseDown = SGIcd_leaveMouseDown
        OnSelectCell = SGIcd_leaveSelectCell
        ColWidths = (
          82
          416
          312
          2
          2)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ICD-10'
      ImageIndex = 1
      object SGICD10: TStringGrid
        Left = 0
        Top = 0
        Width = 858
        Height = 165
        Align = alClient
        ColCount = 9
        DefaultRowHeight = 27
        FixedCols = 0
        RowCount = 11
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = SGIcd_leaveDblClick
        OnDragDrop = SGIcd_leaveDragDrop
        OnDragOver = SGIcd_leaveDragOver
        OnDrawCell = SGIcd_leaveDrawCell
        OnEnter = SGIcd_leaveEnter
        OnExit = SGIcd_leaveExit
        OnKeyDown = SGIcd_leaveKeyDown
        OnKeyPress = SGIcd_leaveKeyPress
        OnKeyUp = SGIcd_leaveKeyUp
        OnMouseDown = SGIcd_leaveMouseDown
        OnSelectCell = SGIcd_leaveSelectCell
        ColWidths = (
          82
          416
          312
          2
          2
          2
          4
          4
          3)
      end
    end
  end
  object DSIcd: TDataSource
    DataSet = qryicd9
    OnDataChange = DSIcdDataChange
    Left = 584
    Top = 8
  end
  object qryicd9: TADOQuery
    Connection = DM.ADOLink
    Parameters = <>
    Left = 504
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 632
    Top = 8
  end
  object DSICD10: TDataSource
    Left = 440
    Top = 8
  end
end
