inherited FrmPkgSet: TFrmPkgSet
  Tag = 9999
  Left = 175
  Top = 172
  Caption = 'FrmPkgSet'
  ClientHeight = 632
  ClientWidth = 990
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 615
    Width = 990
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 216
    Width = 990
    Height = 399
    Align = alClient
    TabOrder = 1
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 988
      Height = 397
      Align = alClient
      ColCount = 3
      DataSource = DataSource1
      PanelHeight = 49
      PanelWidth = 323
      TabOrder = 0
      RowCount = 8
      SelectedColor = clSkyBlue
      object DBText1: TDBText
        Left = 44
        Top = 24
        Width = 276
        Height = 21
        DataField = 'GROUP_NAME'
        DataSource = DataSource1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clMaroon
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
        OnDblClick = DBText1DblClick
      end
      object DBText2: TDBText
        Left = 182
        Top = 6
        Width = 134
        Height = 14
        DataField = 'GROUP_CODE'
        DataSource = DataSource1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 142
        Top = 4
        Width = 40
        Height = 15
        Caption = #32068#21029':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 3
        Top = 25
        Width = 40
        Height = 15
        Caption = #21517#31281':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 40
        Top = 4
        Width = 98
        Height = 17
        DataField = 'clas'
        DataSource = DataSource1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 3
        Top = 5
        Width = 35
        Height = 14
        Caption = #39006#21029':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 0
    Top = 97
    Width = 990
    Height = 119
    Align = alTop
    Caption = #20786#23384#36984#38917
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #27161#26999#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object ChkSub: TCheckBox
      Left = 24
      Top = 29
      Width = 129
      Height = 17
      Caption = 'Subjective'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object ChkObj: TCheckBox
      Left = 24
      Top = 58
      Width = 129
      Height = 17
      Caption = 'Objective'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object ChkICD9: TCheckBox
      Left = 24
      Top = 86
      Width = 129
      Height = 17
      Caption = 'Assessment'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object ChkMed: TCheckBox
      Left = 180
      Top = 29
      Width = 104
      Height = 17
      Caption = #29992#34277
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CHKFee: TCheckBox
      Left = 180
      Top = 58
      Width = 104
      Height = 17
      Caption = #34389#32622
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CHKPlan: TCheckBox
      Left = 180
      Top = 86
      Width = 97
      Height = 17
      Caption = 'Plan'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object BitnOk: TBitBtn
      Left = 663
      Top = 21
      Width = 81
      Height = 34
      Caption = #20462#25913
      Default = True
      ModalResult = 1
      TabOrder = 6
      Visible = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitCancel: TBitBtn
      Left = 888
      Top = 21
      Width = 81
      Height = 34
      Caption = #38626#38283
      TabOrder = 7
      OnClick = BitCancelClick
      Kind = bkCancel
    end
    object BitBtn1: TBitBtn
      Left = 775
      Top = 21
      Width = 81
      Height = 34
      Caption = #21034#38500
      TabOrder = 8
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object CBOrder: TCheckBox
      Left = 313
      Top = 29
      Width = 104
      Height = 17
      Caption = #25944#36848#37291#20196
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CBExper: TCheckBox
      Left = 313
      Top = 58
      Width = 104
      Height = 17
      Caption = #27298#39511
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object CBCheck: TCheckBox
      Left = 313
      Top = 86
      Width = 113
      Height = 17
      Caption = #27298#26597
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object CBXray: TCheckBox
      Left = 458
      Top = 29
      Width = 95
      Height = 17
      Caption = #25918#23556
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object CBMrt: TCheckBox
      Left = 458
      Top = 58
      Width = 97
      Height = 17
      Caption = #34907#26448
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object BitBtn2: TBitBtn
      Left = 663
      Top = 68
      Width = 81
      Height = 34
      Caption = #26032#22686
      TabOrder = 14
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 663
      Top = 21
      Width = 81
      Height = 34
      Caption = #20462#25913
      TabOrder = 15
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 0
    Width = 990
    Height = 97
    Align = alTop
    TabOrder = 3
    object RGPAKG: TRadioGroup
      Left = 8
      Top = 1
      Width = 169
      Height = 88
      Caption = #22871#39184#39006#21029
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #27161#26999#39636
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        #20840#38498#22871#39184
        #31185#22871#39184
        #20491#20154#22871#39184)
      ParentFont = False
      TabOrder = 0
      OnClick = RGPAKGClick
    end
    object GroupBox1: TGroupBox
      Left = 428
      Top = 19
      Width = 425
      Height = 61
      Caption = #22871#39184#21517#31281
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object edtPkgName: TEdit
        Left = 32
        Top = 25
        Width = 378
        Height = 27
        MaxLength = 30
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 196
      Top = 19
      Width = 200
      Height = 61
      Caption = #22871#39184#32068#21029
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object EDTGRPNO: TEdit
        Left = 30
        Top = 25
        Width = 144
        Height = 27
        MaxLength = 8
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    Left = 528
    Top = 264
  end
end
