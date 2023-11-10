object FrmNurseEisai: TFrmNurseEisai
  Left = 229
  Top = 131
  Width = 1002
  Height = 718
  Caption = 'FrmNurseEisai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 3
    Top = 0
    Width = 980
    Height = 673
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 978
      Height = 214
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel7: TPanel
        Left = 714
        Top = 0
        Width = 264
        Height = 214
        Align = alRight
        TabOrder = 0
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 262
          Height = 212
          Align = alClient
          Brush.Color = clGradientActiveCaption
        end
        object BitnClose: TBitBtn
          Left = 83
          Top = 151
          Width = 110
          Height = 30
          Caption = #38626#38283
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitnCloseClick
        end
        object BitBtn1: TBitBtn
          Left = 82
          Top = 56
          Width = 111
          Height = 49
          Caption = #23384#27284
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = #26032#32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 714
        Height = 214
        Align = alClient
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 712
          Height = 25
          Align = alTop
          TabOrder = 0
          object Btnordercode: TBitBtn
            Left = 1
            Top = 0
            Width = 118
            Height = 25
            Caption = #20195#30908
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Btnordername: TBitBtn
            Left = 118
            Top = 0
            Width = 467
            Height = 25
            Caption = #21517#31281
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Btnorderins: TBitBtn
            Left = 584
            Top = 0
            Width = 49
            Height = 25
            Caption = #20581
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Btnorderqty: TBitBtn
            Left = 632
            Top = 0
            Width = 49
            Height = 25
            Caption = #25976#37327
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object SGTreat: TStringGrid
          Left = 1
          Top = 26
          Width = 712
          Height = 136
          Align = alClient
          ColCount = 8
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          TabOrder = 1
          ColWidths = (
            80
            396
            80
            69
            64
            64
            64
            64)
        end
        object Panel9: TPanel
          Left = 1
          Top = 162
          Width = 712
          Height = 51
          Align = alBottom
          TabOrder = 2
          object Shape3: TShape
            Left = 1
            Top = 1
            Width = 710
            Height = 49
            Align = alClient
            Brush.Color = clMoneyGreen
            Pen.Style = psClear
          end
          object Label2: TLabel
            Left = 9
            Top = 19
            Width = 117
            Height = 15
            Caption = #26597#35426#24050#35336#20729#36039#26009':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label1: TLabel
            Left = 401
            Top = 19
            Width = 37
            Height = 15
            Caption = #25628#23563':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object CBEisaiList: TComboBox
            Left = 134
            Top = 13
            Width = 139
            Height = 27
            AutoComplete = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Serif'
            Font.Style = []
            ItemHeight = 19
            ParentFont = False
            TabOrder = 0
            Text = #35531#36984#25799
            OnChange = CBEisaiListChange
          end
          object CBEisaiList1: TComboBox
            Left = 268
            Top = 16
            Width = 13
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'CBEisaiList1'
            Visible = False
          end
          object ChkBFee: TCheckBox
            Left = 330
            Top = 7
            Width = 57
            Height = 17
            Caption = #34389#32622
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = ChkBFeeClick
          end
          object ChkBEisai: TCheckBox
            Left = 331
            Top = 29
            Width = 57
            Height = 17
            Caption = #34907#26448
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 3
            OnClick = ChkBEisaiClick
          end
          object EDFeeSearch: TEdit
            Left = 443
            Top = 13
            Width = 186
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyDown = EDFeeSearchKeyDown
            OnKeyUp = EDFeeSearchKeyUp
          end
        end
      end
    end
    object SGEisaOrder: TStringGrid
      Left = 1
      Top = 290
      Width = 978
      Height = 382
      Align = alClient
      ColCount = 24
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 1
      OnDblClick = SGEisaOrderDblClick
      OnDrawCell = SGEisaOrderDrawCell
      OnEnter = SGEisaOrderEnter
      OnSelectCell = SGEisaOrderSelectCell
    end
    object Panel4: TPanel
      Left = 1
      Top = 257
      Width = 978
      Height = 33
      Align = alTop
      TabOrder = 2
      object BtnDel: TBitBtn
        Left = 0
        Top = 6
        Width = 41
        Height = 27
        Caption = 'DC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object BtnName: TBitBtn
        Left = 40
        Top = 6
        Width = 382
        Height = 27
        Caption = #21517#31281
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Btnqty: TBitBtn
        Left = 421
        Top = 6
        Width = 44
        Height = 27
        Caption = #25976#37327
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object BtnFeeName: TBitBtn
        Left = 509
        Top = 6
        Width = 124
        Height = 27
        Caption = #34389#32622#38917#30446
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object BtnIns: TBitBtn
        Left = 464
        Top = 6
        Width = 45
        Height = 27
        Caption = #20581
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object CBBMtrlYN: TComboBox
      Left = 352
      Top = 403
      Width = 64
      Height = 21
      Hint = 'SGEisaOrder'
      ItemHeight = 13
      TabOrder = 3
      Visible = False
      OnClick = CBBMtrlYNClick
      OnExit = CBBMtrlYNClick
      Items.Strings = (
        'N_'#20581#20445
        'Y_'#33258#36027
        'G_'#20581'('#21547')'
        'H_'#33258'('#21547')')
    end
    object EdTSGMTRL: TEdit
      Left = 248
      Top = 405
      Width = 72
      Height = 21
      Hint = 'SGEisaOrder'
      TabOrder = 4
      Visible = False
      OnExit = EdTSGMTRLExit
    end
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 323
      Top = 294
      Width = 665
      Height = 375
      Color = clBtnFace
      DataSource = DSFEEBASIC
      PanelHeight = 25
      PanelWidth = 648
      ParentColor = False
      TabOrder = 5
      RowCount = 15
      SelectedColor = clAqua
      Visible = False
      object DBText1: TDBText
        Left = 110
        Top = 2
        Width = 534
        Height = 21
        DataField = 'FEE_NAME'
        DataSource = DSFEEBASIC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
        OnClick = DBText1Click
      end
      object DBText2: TDBText
        Left = 2
        Top = 2
        Width = 107
        Height = 21
        DataField = 'FEE_CODE'
        DataSource = DSFEEBASIC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = DBText1Click
      end
    end
    object CoolBar1: TCoolBar
      Left = 1
      Top = 215
      Width = 978
      Height = 42
      Bands = <
        item
          Control = ToolBar1
          ImageIndex = -1
          MinHeight = 35
          Width = 974
        end>
      object ToolBar1: TToolBar
        Left = 9
        Top = 0
        Width = 961
        Height = 35
        ButtonHeight = 28
        ButtonWidth = 55
        Caption = 'ToolBar1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        ShowCaptions = True
        TabOrder = 0
        object ToolButton1: TToolButton
          Left = 0
          Top = 2
          Hint = 'OFTEN '
          Caption = #24120#29992
          ImageIndex = 0
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 55
          Top = 2
          Width = 4
          Caption = 'ToolButton2'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object ToolButton3: TToolButton
          Left = 59
          Top = 2
          Hint = 'NEEDLE'
          Caption = #27880#23556
          ImageIndex = 1
          OnClick = ToolButton1Click
        end
        object ToolButton4: TToolButton
          Left = 114
          Top = 2
          Width = 4
          Caption = 'ToolButton4'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object ToolButton5: TToolButton
          Left = 118
          Top = 2
          Hint = 'BLOOD'
          Caption = #36664#34880
          ImageIndex = 2
          OnClick = ToolButton1Click
        end
        object ToolButton6: TToolButton
          Left = 173
          Top = 2
          Width = 4
          Caption = 'ToolButton6'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object ToolButton7: TToolButton
          Left = 177
          Top = 2
          Hint = 'IVDRIPS'
          Caption = #24171#28006
          ImageIndex = 3
          OnClick = ToolButton1Click
        end
        object ToolButton8: TToolButton
          Left = 232
          Top = 2
          Width = 4
          Caption = 'ToolButton8'
          ImageIndex = 4
          Style = tbsSeparator
        end
        object ToolButton9: TToolButton
          Left = 236
          Top = 2
          Hint = 'OXYGEN'
          Caption = #27687#27683
          ImageIndex = 4
          OnClick = ToolButton1Click
        end
        object ToolButton29: TToolButton
          Left = 291
          Top = 2
          Width = 4
          Caption = 'ToolButton29'
          ImageIndex = 15
          Style = tbsSeparator
        end
        object ToolButton11: TToolButton
          Left = 295
          Top = 2
          Hint = 'EMERGENCY'
          Caption = #25554#31649
          ImageIndex = 5
          OnClick = ToolButton1Click
        end
        object ToolButton12: TToolButton
          Left = 350
          Top = 2
          Width = 4
          Caption = 'ToolButton12'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton13: TToolButton
          Left = 354
          Top = 2
          Hint = 'CATHETERIZE'
          Caption = #23566#23615
          ImageIndex = 6
          OnClick = ToolButton1Click
        end
        object ToolButton14: TToolButton
          Left = 409
          Top = 2
          Width = 4
          Caption = 'ToolButton14'
          ImageIndex = 7
          Style = tbsSeparator
        end
        object ToolButton15: TToolButton
          Left = 413
          Top = 2
          Hint = 'NASOGATRIC'
          Caption = #40763#32963#31649
          ImageIndex = 7
          OnClick = ToolButton1Click
        end
        object ToolButton16: TToolButton
          Left = 468
          Top = 2
          Width = 4
          Caption = 'ToolButton16'
          ImageIndex = 8
          Style = tbsSeparator
        end
        object ToolButton17: TToolButton
          Left = 472
          Top = 2
          Hint = 'TRACHEOSTOMY'
          Caption = #27683#20999
          ImageIndex = 8
          OnClick = ToolButton1Click
        end
        object ToolButton18: TToolButton
          Left = 527
          Top = 2
          Width = 4
          Caption = 'ToolButton18'
          ImageIndex = 9
          Style = tbsSeparator
        end
        object ToolButton19: TToolButton
          Left = 531
          Top = 2
          Hint = 'CVP'
          Caption = 'CVP'
          ImageIndex = 9
          OnClick = ToolButton1Click
        end
        object ToolButton21: TToolButton
          Left = 586
          Top = 2
          Width = 4
          ImageIndex = 11
          Style = tbsSeparator
        end
        object ToolButton20: TToolButton
          Left = 590
          Top = 2
          Hint = 'ASCITES'
          Caption = #25277#33145#27700
          ImageIndex = 10
          OnClick = ToolButton1Click
        end
        object ToolButton22: TToolButton
          Left = 645
          Top = 2
          Width = 4
          Caption = 'ToolButton22'
          ImageIndex = 11
          Style = tbsSeparator
        end
        object ToolButton23: TToolButton
          Left = 649
          Top = 2
          Hint = 'CHESTTUBE'
          Caption = #33016#31649
          ImageIndex = 11
          OnClick = ToolButton1Click
        end
        object ToolButton24: TToolButton
          Left = 704
          Top = 2
          Width = 4
          Caption = 'ToolButton24'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object ToolButton25: TToolButton
          Left = 708
          Top = 2
          Hint = 'BONESURGICAL'
          Caption = #39592#22806#31185
          ImageIndex = 12
          OnClick = ToolButton1Click
        end
        object ToolButton26: TToolButton
          Left = 763
          Top = 2
          Width = 4
          Caption = 'ToolButton26'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton27: TToolButton
          Left = 767
          Top = 2
          Hint = 'SPUTUM'
          Caption = #25277#30192
          ImageIndex = 13
          OnClick = ToolButton1Click
        end
        object ToolButton10: TToolButton
          Left = 822
          Top = 2
          Width = 4
          Caption = 'ToolButton10'
          ImageIndex = 14
          Style = tbsSeparator
        end
        object ToolButton28: TToolButton
          Left = 826
          Top = 2
          Hint = 'OTHER'
          Caption = #20854#20182
          ImageIndex = 14
          OnClick = ToolButton1Click
        end
        object ToolButton30: TToolButton
          Left = 881
          Top = 2
          Width = 4
          Caption = 'ToolButton30'
          ImageIndex = 15
          Style = tbsSeparator
        end
        object ToolButton31: TToolButton
          Left = 885
          Top = 2
          Hint = 'FEEITEM '
          Caption = #34389#32622
          ImageIndex = 15
          OnClick = ToolButton1Click
        end
      end
    end
  end
  object DSFEEBASIC: TDataSource
    DataSet = DM.QryNunsefee
    Left = 939
    Top = 321
  end
  object Tmrqry: TTimer
    Interval = 250
    OnTimer = TmrqryTimer
    Left = 907
    Top = 321
  end
end
