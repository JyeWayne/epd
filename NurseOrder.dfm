inherited FrmNurseOrder: TFrmNurseOrder
  Left = 337
  Top = 118
  Caption = 'FrmNurseOrder'
  ClientHeight = 811
  ClientWidth = 1171
  Menu = MainMenu1
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 794
    Width = 1171
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 0
    Width = 1171
    Height = 160
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 806
      Height = 160
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = True
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 10
        Width = 72
        Height = 16
        Caption = #30149' '#27511' '#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 38
        Width = 72
        Height = 16
        Caption = #36523#20998#35657#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 41
        Top = 66
        Width = 40
        Height = 16
        Caption = #22995#21517':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 41
        Top = 94
        Width = 40
        Height = 16
        Caption = #24180#40801':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 325
        Top = 0
        Width = 2
        Height = 160
        Align = alRight
        Shape = bsRightLine
      end
      object Label6: TLabel
        Left = 220
        Top = 10
        Width = 40
        Height = 16
        Caption = #24615#21029':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 220
        Top = 38
        Width = 96
        Height = 16
        Caption = #39636#37325':     Kg'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 220
        Top = 66
        Width = 40
        Height = 16
        Caption = #34880#22411':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object LblBLOOD_TYPE: TLabel
        Left = 260
        Top = 68
        Width = 28
        Height = 13
        Caption = 'ab+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtIdno: TEdit
        Left = 81
        Top = 35
        Width = 125
        Height = 22
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edtIdno'
      end
      object edtName: TEdit
        Left = 81
        Top = 63
        Width = 125
        Height = 22
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'edtName'
      end
      object edtAge: TEdit
        Left = 81
        Top = 91
        Width = 125
        Height = 22
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = 'edtAge'
      end
      object Panel5: TPanel
        Left = 327
        Top = 0
        Width = 479
        Height = 160
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object Shape1: TShape
          Left = 0
          Top = 48
          Width = 479
          Height = 112
          Align = alBottom
          Brush.Color = 11650799
          Pen.Color = clMaroon
          Pen.Style = psClear
          Shape = stRoundRect
        end
        object Label10: TLabel
          Left = 3
          Top = 88
          Width = 45
          Height = 16
          Caption = 'GCS_E'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 39
          Top = 114
          Width = 9
          Height = 16
          Caption = 'V'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 39
          Top = 140
          Width = 9
          Height = 16
          Caption = 'M'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 100
          Top = 88
          Width = 34
          Height = 16
          Caption = #39636#28331
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 100
          Top = 114
          Width = 34
          Height = 16
          Caption = #33032#25615
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 100
          Top = 140
          Width = 34
          Height = 16
          Caption = #21628#21560
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 236
          Top = 61
          Width = 34
          Height = 16
          Caption = #34880#22739
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 236
          Top = 140
          Width = 34
          Height = 16
          Caption = #34880#31958
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 236
          Top = 114
          Width = 34
          Height = 16
          Caption = #34880#27687
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 162
          Top = 88
          Width = 9
          Height = 16
          Caption = '.'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 306
          Top = 61
          Width = 9
          Height = 16
          Caption = '/'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 8
          Top = 58
          Width = 40
          Height = 15
          Caption = #26085#26399':'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 399
          Top = 55
          Width = 64
          Height = 15
          Caption = #28204#37327#26178#38291
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          OnClick = Label24Click
        end
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 479
          Height = 47
          Align = alTop
          Brush.Color = 15591928
          Pen.Color = clGreen
          Shape = stRoundRect
        end
        object Label15: TLabel
          Left = 10
          Top = 7
          Width = 32
          Height = 15
          Caption = #27298#20663
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 10
          Top = 24
          Width = 32
          Height = 15
          Caption = #36039#26009
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Lbtreage: TLabel
          Left = 61
          Top = 4
          Width = 17
          Height = 37
          Alignment = taCenter
          Caption = '2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -33
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 164
          Top = 143
          Width = 30
          Height = 11
          Caption = #27425'/'#20998
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 311
          Top = 143
          Width = 30
          Height = 11
          Caption = 'mg/dl'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 317
          Top = 122
          Width = 6
          Height = 12
          Caption = '%'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 170
          Top = 117
          Width = 30
          Height = 11
          Caption = #27425'/'#20998
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 236
          Top = 88
          Width = 34
          Height = 16
          Caption = #30140#30171
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label30: TLabel
          Left = 307
          Top = 91
          Width = 12
          Height = 11
          Caption = #20998
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 198
          Top = 91
          Width = 12
          Height = 11
          Caption = #24230
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 347
          Top = 64
          Width = 24
          Height = 11
          Caption = 'mmHg'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CMBoxDateRecordVI: TComboBox
          Left = 52
          Top = 53
          Width = 172
          Height = 23
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ItemHeight = 15
          ParentFont = False
          TabOrder = 0
          Text = #36984#24050#28204#36039#26009#35531#36984
          OnChange = CMBoxDateRecordVIChange
        end
        object CmBEVM_G: TComboBox
          Left = 51
          Top = 85
          Width = 39
          Height = 22
          Hint = 'EVM_G'
          ItemHeight = 14
          TabOrder = 1
          Items.Strings = (
            '4'
            '3'
            '2'
            '1'
            'C')
        end
        object CMBEVM_C: TComboBox
          Left = 51
          Top = 111
          Width = 39
          Height = 22
          Hint = 'EVM_C'
          ItemHeight = 14
          TabOrder = 2
          Items.Strings = (
            '5'
            '4'
            '3'
            '2'
            '1'
            'E'
            'T'
            'A')
        end
        object CMBEVM_S: TComboBox
          Left = 50
          Top = 137
          Width = 40
          Height = 22
          Hint = 'EVM_S'
          ItemHeight = 14
          TabOrder = 3
          Items.Strings = (
            '6'
            '5'
            '4'
            '3'
            '2'
            '1')
        end
        object MEDTBR: TMaskEdit
          Left = 136
          Top = 136
          Width = 24
          Height = 25
          Hint = 'BR'
          EditMask = '!99;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 7
        end
        object MDETHR: TMaskEdit
          Left = 136
          Top = 110
          Width = 32
          Height = 25
          Hint = 'HR'
          EditMask = '!999;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 6
        end
        object MEDTBT: TMaskEdit
          Left = 136
          Top = 84
          Width = 24
          Height = 25
          Hint = 'BT'
          EditMask = '!99;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 4
        end
        object MEDTBPH: TMaskEdit
          Left = 273
          Top = 57
          Width = 33
          Height = 25
          Hint = 'BPH'
          EditMask = '!999;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 8
        end
        object MEDTBT2: TMaskEdit
          Left = 171
          Top = 84
          Width = 24
          Height = 25
          Hint = 'BT2'
          EditMask = '!99;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 5
        end
        object MEDTBPL: TMaskEdit
          Left = 314
          Top = 57
          Width = 31
          Height = 25
          Hint = 'BPL'
          EditMask = '!999;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 9
        end
        object MEDTBS: TMaskEdit
          Left = 273
          Top = 136
          Width = 33
          Height = 25
          Hint = 'BS'
          EditMask = '!999;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 12
        end
        object MEDTSPO2: TMaskEdit
          Left = 273
          Top = 110
          Width = 33
          Height = 25
          Hint = 'SPO2'
          EditMask = '!999;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 11
        end
        object BtnVitasignUpdate: TBitBtn
          Left = 388
          Top = 131
          Width = 75
          Height = 25
          Caption = #26356#26032
          TabOrder = 15
          OnClick = BtnVitasignInsertClick
        end
        object BtnVitasignInsert: TBitBtn
          Left = 388
          Top = 100
          Width = 75
          Height = 25
          Caption = #26032#22686
          TabOrder = 14
          OnClick = BtnVitasignInsertClick
        end
        object MEdtMeasuring: TMaskEdit
          Left = 420
          Top = 72
          Width = 43
          Height = 22
          EditMask = '!90:00;0;_'
          MaxLength = 5
          TabOrder = 13
        end
        object sgBioinf: TStringGrid
          Left = 100
          Top = 1
          Width = 284
          Height = 45
          BorderStyle = bsNone
          ColCount = 4
          Ctl3D = True
          DefaultColWidth = 70
          DefaultRowHeight = 20
          Enabled = False
          FixedCols = 0
          RowCount = 2
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 16
        end
        object MEdtPAIN: TMaskEdit
          Left = 273
          Top = 84
          Width = 27
          Height = 25
          Hint = 'PAIN'
          EditMask = '!99;0;_'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 10
        end
        object CmBid: TComboBox
          Left = 215
          Top = 82
          Width = 18
          Height = 22
          ItemHeight = 14
          TabOrder = 17
          Text = 'CmBid'
          Visible = False
        end
      end
      object edtchrno: TEdit
        Left = 81
        Top = 6
        Width = 125
        Height = 24
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = 'edtchrno'
      end
      object edtSex: TEdit
        Left = 260
        Top = 7
        Width = 28
        Height = 22
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Text = 'edtSex'
      end
      object edtweth: TEdit
        Left = 260
        Top = 35
        Width = 40
        Height = 22
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Text = 'edtweth'
      end
      object RGpPatid: TRadioGroup
        Left = 79
        Top = 114
        Width = 127
        Height = 41
        Columns = 2
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        Items.Strings = (
          #20581#20445
          #33258#36027)
        ParentFont = False
        TabOrder = 7
      end
    end
    object Panel8: TPanel
      Left = 806
      Top = 0
      Width = 365
      Height = 160
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        365
        160)
      object Label11: TLabel
        Left = 304
        Top = 3
        Width = 40
        Height = 16
        Caption = #35703#29702':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object ImgMed: TImage
        Left = 274
        Top = 2
        Width = 30
        Height = 30
        Hint = #26377#36942#25935#21490
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        Transparent = True
        OnClick = ImgMedClick
      end
      object Image_AMI: TImage
        Left = 304
        Top = 2
        Width = 30
        Height = 30
        Anchors = [akTop, akRight]
        Stretch = True
        Transparent = True
      end
      object ImgMDRO: TImage
        Left = 334
        Top = 2
        Width = 30
        Height = 30
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        Transparent = True
      end
      object ImgTemperature: TImage
        Left = 213
        Top = 2
        Width = 30
        Height = 30
        Hint = #20170#26085#26377#30331#37636#30332#29138
        Anchors = [akTop, akRight]
        Stretch = True
        Transparent = True
      end
      object ImgSkin: TImage
        Left = 182
        Top = 2
        Width = 30
        Height = 30
        Hint = #27492#30149#20154#23481#26131#36300#20498
        Anchors = [akTop, akRight]
        Stretch = True
        Transparent = True
        OnClick = ImgSkinClick
      end
      object ImgSex: TImage
        Left = 244
        Top = 2
        Width = 30
        Height = 30
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        Transparent = True
      end
      object ImgBoold: TImage
        Left = 182
        Top = 33
        Width = 30
        Height = 30
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        Transparent = True
      end
      object ImgFALL: TImage
        Left = 214
        Top = 33
        Width = 30
        Height = 30
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        Transparent = True
      end
      object Button3: TButton
        Left = 238
        Top = 125
        Width = 90
        Height = 30
        Anchors = [akTop, akRight]
        Caption = #38626#38283
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button3Click
      end
      object CBUser: TComboBox
        Left = 306
        Top = 24
        Width = 153
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
        Visible = False
        OnChange = CBUserChange
      end
      object Button1: TButton
        Left = 238
        Top = 66
        Width = 90
        Height = 50
        Anchors = [akTop, akRight]
        Caption = #23384#27284
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
      object CkBAll: TCheckBox
        Left = 2
        Top = 142
        Width = 57
        Height = 17
        Caption = #20840#37096
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CkBAllClick
      end
      object DBImage1: TDBImage
        Left = 97
        Top = 104
        Width = 0
        Height = 9
        TabOrder = 4
      end
      object Edit1: TEdit
        Left = 160
        Top = 162
        Width = 2
        Height = 22
        TabOrder = 5
        Text = 'Edit1'
      end
      object CkBtraumaNo: TCheckBox
        Left = 2
        Top = 96
        Width = 135
        Height = 17
        Caption = #37325#22823#28797#23475#32232#34399
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = CkBtraumaNoClick
      end
      object CMBTraumaNo: TComboBox
        Left = 2
        Top = 117
        Width = 183
        Height = 22
        Enabled = False
        ItemHeight = 14
        TabOrder = 7
      end
    end
  end
  object SGNuresCHK: TStringGrid [2]
    Left = 0
    Top = 241
    Width = 1171
    Height = 553
    Align = alClient
    ColCount = 22
    DefaultRowHeight = 35
    FixedCols = 0
    FixedRows = 0
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #32048#26126#39636
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    ParentShowHint = False
    PopupMenu = POPMMEDDC
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 0
    OnClick = SGNuresCHKClick
    OnDrawCell = SGNuresCHKDrawCell
    OnMouseDown = SGNuresCHKMouseDown
    OnMouseMove = SGNuresCHKMouseMove
    OnMouseWheelDown = SGNuresCHKMouseWheelDown
    OnMouseWheelUp = SGNuresCHKMouseWheelUp
    ColWidths = (
      64
      77
      106
      281
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
      64
      64
      64
      64
      64
      64
      64)
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 200
    Width = 1171
    Height = 41
    Align = alTop
    TabOrder = 3
    object PnlDate: TPanel
      Left = 0
      Top = 0
      Width = 76
      Height = 41
      Caption = #26085#26399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = PnlDateClick
    end
    object PnlTime: TPanel
      Left = 76
      Top = 0
      Width = 43
      Height = 41
      Caption = #26178#38291
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = PnlDateClick
    end
    object PnlCHKOper: TPanel
      Left = 119
      Top = 0
      Width = 71
      Height = 41
      Caption = #30906#35469'('#32773')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = PnlCHKOperClick
    end
    object PnlClass: TPanel
      Left = 264
      Top = 21
      Width = 54
      Height = 19
      Caption = #39006#21029
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = PnlDateClick
    end
    object PnlSdate: TPanel
      Left = 318
      Top = 0
      Width = 79
      Height = 41
      Caption = #38283#22987#26085#26399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = PnlDateClick
    end
    object Pnlorder: TPanel
      Left = 501
      Top = 0
      Width = 257
      Height = 41
      Caption = #37291#22225
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object PnlQty: TPanel
      Left = 758
      Top = 0
      Width = 32
      Height = 41
      Caption = #25976#37327
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object PnlPath: TPanel
      Left = 790
      Top = 0
      Width = 55
      Height = 41
      Caption = #36884#24465
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object PnlCir: TPanel
      Left = 845
      Top = 0
      Width = 59
      Height = 41
      Caption = #38971#29575
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object Pnlodoc: TPanel
      Left = 904
      Top = 0
      Width = 62
      Height = 41
      Caption = #38283#21934#37291#24107
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Pnlins: TPanel
      Left = 966
      Top = 0
      Width = 19
      Height = 41
      Caption = #20581
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object PnlEnddate: TPanel
      Left = 397
      Top = 0
      Width = 79
      Height = 41
      Caption = #22519#34892#26085#26399
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = PnlDateClick
    end
    object CmbSOFLAG: TComboBox
      Left = 264
      Top = 0
      Width = 54
      Height = 22
      ItemHeight = 14
      TabOrder = 12
      Text = #20840#36984
      OnChange = CmbSOFLAGChange
      Items.Strings = (
        #20840#36984
        #34277#22225
        #34389#32622)
    end
    object PnlExeOper: TPanel
      Left = 190
      Top = 0
      Width = 74
      Height = 41
      Caption = #22519#34892'('#32773')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = PnlExeOperClick
    end
    object PnlDC: TPanel
      Left = 476
      Top = 0
      Width = 25
      Height = 41
      Caption = 'DC'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
  end
  object LBMed: TListBox [4]
    Left = 288
    Top = 379
    Width = 81
    Height = 54
    Color = clScrollBar
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #32048#26126#39636
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      '0900'
      '1300'
      '1800')
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = LBMedClick
  end
  object EdtCir: TEdit [5]
    Left = 415
    Top = 392
    Width = 105
    Height = 21
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'EdtCir'
    Visible = False
  end
  object CoolBar1: TCoolBar [6]
    Left = 0
    Top = 160
    Width = 1171
    Height = 40
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 33
        Width = 1167
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 1154
      Height = 33
      BorderWidth = 1
      ButtonHeight = 25
      ButtonWidth = 79
      Caption = 'ToolBar1'
      EdgeInner = esNone
      EdgeOuter = esNone
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object ToolButton10: TToolButton
        Left = 0
        Top = 2
        Caption = #34907#26448#35336#20729
        ImageIndex = 5
        OnClick = ToolButton10Click
      end
      object ToolButton11: TToolButton
        Left = 79
        Top = 2
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton20: TToolButton
        Left = 87
        Top = 2
        Hint = 'CARERECORDER'
        Caption = #35703#29702#35352#37636
        ImageIndex = 7
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 166
        Top = 2
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 174
        Top = 2
        Hint = 'FOUNDATION'
        Caption = #36523#39636#35413#20272
        ImageIndex = 1
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Left = 253
        Top = 2
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 261
        Top = 2
        Hint = 'CONTINUE'
        Caption = #30041#35264#35413#20272
        ImageIndex = 2
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Left = 340
        Top = 2
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 348
        Top = 2
        Hint = 'FALLASSESS'
        Caption = #36300#20498#35413#20272
        ImageIndex = 3
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Left = 427
        Top = 2
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 435
        Top = 2
        Hint = 'PRESSURESOREASSESS'
        Caption = #22739#30241#35413#20272
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton17: TToolButton
        Left = 514
        Top = 2
        Width = 8
        Caption = 'ToolButton17'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object ToolButton21: TToolButton
        Left = 522
        Top = 2
        Hint = 'EDUCATION'
        Caption = #34907#25945#25351#23566
        ImageIndex = 8
        OnClick = ToolButton1Click
      end
      object ToolButton18: TToolButton
        Left = 601
        Top = 2
        Width = 8
        Caption = 'ToolButton18'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton16: TToolButton
        Left = 609
        Top = 2
        Caption = #30149#31243#32000#37636
        ImageIndex = 7
        OnClick = ToolButton16Click
      end
      object ToolButton19: TToolButton
        Left = 688
        Top = 2
        Width = 8
        Caption = 'ToolButton19'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton13: TToolButton
        Left = 696
        Top = 2
        Hint = 'CROSSEMERGENCY'
        Caption = 'ISBAR'
        ImageIndex = 5
        OnClick = ToolButton1Click
      end
      object ToolButton14: TToolButton
        Left = 775
        Top = 2
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton15: TToolButton
        Left = 783
        Top = 2
        Caption = #30149#20154#36039#26009
        ImageIndex = 6
        OnClick = ToolButton15Click
      end
      object ToolButton22: TToolButton
        Left = 862
        Top = 2
        Width = 8
        Caption = 'ToolButton22'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton23: TToolButton
        Left = 870
        Top = 2
        Caption = #24613#35386#27298#20663
        ImageIndex = 7
        OnClick = ToolButton23Click
      end
      object ToolButton8: TToolButton
        Left = 949
        Top = 2
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 957
        Top = 2
        Hint = #32004#26463#35413#20272
        Caption = #32004#26463#35413#20272
        ImageIndex = 8
        OnClick = ToolButton1Click
      end
    end
  end
  object pnldelymed: TPanel [7]
    Left = 368
    Top = 360
    Width = 465
    Height = 273
    BiDiMode = bdLeftToRight
    Color = clTeal
    Ctl3D = True
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    Visible = False
    object Panel2: TPanel
      Left = 5
      Top = 7
      Width = 453
      Height = 258
      BorderStyle = bsSingle
      TabOrder = 0
      object Rdgdelaymed: TRadioGroup
        Left = 1
        Top = 1
        Width = 447
        Height = 177
        Align = alTop
        Caption = #26410#22519#34892#21407#22240
        Columns = 2
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        Items.Strings = (
          #35531#20551#26410#32102
          #30149#20154#25298#26381#26410#32102#34277
          #31105#39135#26410#32102#34277
          #34880#22739#20559#20302#26410#32102#34277
          #34880#31958#20559#20302#26410#32102#34277
          #36820#23478#26381#29992
          #26283#20572#20351#29992
          #27298#26597#26410#32102#34277
          #36817#24120#35215#26178#38291#26410#32102#34277
          #20854#20182)
        ParentFont = False
        TabOrder = 0
        OnClick = RdgdelaymedClick
      end
      object Btnchk: TButton
        Left = 160
        Top = 218
        Width = 75
        Height = 25
        Caption = #30906#35469
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnchkClick
      end
      object Button5: TButton
        Left = 252
        Top = 218
        Width = 75
        Height = 25
        Caption = #21462#28040
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button5Click
      end
      object BtnExit: TButton
        Left = 344
        Top = 218
        Width = 75
        Height = 25
        Caption = #38626#38283
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BtnExitClick
      end
      object Edtdelaymed: TEdit
        Left = 8
        Top = 184
        Width = 433
        Height = 24
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
    end
  end
  inherited Timer2: TTimer
    Left = 880
    Top = 288
  end
  object POPMMEDDC: TPopupMenu
    Left = 672
    Top = 272
    object DC1: TMenuItem
      Caption = #24310#36978#32102#34277
      OnClick = DC1Click
    end
    object N1: TMenuItem
      Caption = #21462#28040#24310#36978
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21462#28040#22519#34892
      OnClick = N2Click
    end
    object N6: TMenuItem
      Caption = #35079#35069#37291#22225
      OnClick = N6Click
    end
  end
  object DtSImage: TDataSource
    Left = 1005
    Top = 96
  end
  object ImageListforPat: TImageList
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 1005
    Top = 64
    Bitmap = {
      494C01010C000E00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3E9F900CFC0BD00C1B5
      AB00D9D1D200BCB5C200C3B3D200CBBDD500CCC6C700C6C8B500C0C6A700CAD2
      B400C1C2B900CBC9CF00BAB4C700C2BDD200BDB7C200D1C9C900DBC8B900CFC1
      A400CDCBA200C9D6A800BDD5AD00BCCFB600C7C2C300C2AFC200D5BFDC00C7B7
      D600BCBDD100BCBDC700DDCBCA00FFFEF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7B0A000C7B0A000C7B0A000C7B0
      A000C7B0A000C7B0A000C7B0A000C7B0A000C7B0A000C7B0A000C7B0A000C3AC
      9C00B8A19100B69F8F00A38C7D007964550077615500755F5300766054007A65
      560080695A00856E5E008C73630092796900967D6D00A88E7E00BEA59500C7B0
      A000C6AF9F00C7B0A000C7B0A000C7B0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFFF00757281000B0500000A08
      00000000030000000F00000015000400110005000100070A0000020D00000009
      000000050000000F170000011400000017000000140000000E00000006000008
      010000140200000D0000000D0000000A00000002060009091900100014000B00
      0E00000009000001020027241C00D9D1C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3AB9900C3AB9900C3AB9900C3AB
      9900B79D8C00B0968500B3988400AB907C00AB907C00A78B7A00A18776009C82
      71009A806F00957D6B0092796900A68F7F00C0A99900C3AB9900C1AA9A00C1AA
      9A00C1AA9A00C0A99900AC9482009D837200A1877600CBB8B000F3F1F100AC91
      7D00AB907C00AC917D00AC907F00C1AA9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFFCFF0047545C0000030000000D
      05000014170000031200000016000400140009020900080C0600000600000008
      0000003C3F0000535E00004D5F000047630000456F000043710000416E000047
      6D0000496A0000425B00004A5800005D660000343E0000020B00090007001900
      0300050100000009000000090000BBD6BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDA59300BDA59300BDA59300BDA4
      9400BDA49400BAA39300BCA49200BDA59300BCA39300BBA29200BDA59300BDA4
      9400BDA49400BDA59300BCA49200BDA59300BDA59300BDA59300BDA59300BDA5
      9300BDA59300BDA59300BDA59300BDA59300EEEBE600F1F2F000FAFAFA00EBE3
      E400BCA39300BDA49400BDA49400BCA492000000000000000000000000000000
      000000000000FEFEFE000000000000000000FFFFFE00FFFEFE00000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE000000
      000000000000000000000000000000000000FFFFFE0000000000000000000000
      000000000000000000000000000000000000EAFDFF0042575900000600002454
      4E0053ACB0002B7E8D00000F2E00000014000000070000010100000203000E4E
      530043C8D6002FD3E60034CFE60042D5F50038C9F70046D1FF0048CDFF0045C2
      FC004EC5FD0046CCFC0029D3F5002ED9F1003AC5D50000414B00000008001603
      06000804000005120200000A0000A1CCB1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B79F8D00B79F8D00B79F8D00B79F
      8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F
      8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F
      8D00B79F8D00B79F8D00B79D8D00F1F3F400EFF0EE00FFFFFF00F5F5F500FDFD
      FD00B79D8F00B79F8D00B79F8D00B79F8D000000000000000000000000000000
      000000000000000000009F9FC40010006F00000000000000000000000000A6A6
      CD000E006A00F5F4F80008006900F1EDF0008B8ABE001C06710000000000433C
      94008C7DB2000000000008006B00C9C1D5000000000000000000000000000000
      000000000000000000000000000000000000EEFFFF00506B680000060100509F
      9C0055E1E7004FDAEA0000334C00000015000008110000000700000919001B61
      78003CD8F50013CDEC002AC7E8003FD4F6002DCCF2002FD1FB0030CBF90030C7
      FA0039CFFF002DD4FF0008D1F80001CEED0020D5EB0026A7BA00001E2F000000
      0A0009060F0000000000000A0500A7CBBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1988800B1988800B1988800B198
      8800B1988800B1988800B1988800B1988800B1988800B1988800B1988800B198
      8800B1988800B1988800B1988800B1988800B1998700B3998800B1998700B198
      8800B1988800B2998900B09A8800F1F1F100F6F6F600FCFCFC00FFFFFF00F6F6
      F600F0EBEC00B1988800B1988800B19888000000000000000000000000000000
      000000000000000000000000000000006B008F7FB400D7D5E300DDDDE6002317
      8C004C3594000000000000006500F7F2F100372F990000007100FAF4F400271F
      8F007D6BB1000000000000006800C5BBD4000000000000000000000000000000
      000000000000000000000000000000000000F2F7F50042555200000908003390
      93002BD0D9002BD8E800087A9100000E230000010B0000000A00000015000B52
      770024C9F00011CDF6001FACD1000B86A600098FA7000D91A8001890AD001E92
      B500158EB6000087AE00009CC20018C4E80020D0EE002DC8E2002991A8000016
      2A0000000E000000090000000400ADBDBC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC948200AC948200AC948200AC94
      8200AC948200AC948200AC948200AC948200AC948200AC948200AC948200AC94
      8200AC948200AC948200AC938300AD938200FFFFFE00FEFEFE00FCFCFC00F9FA
      F800AD938300AF938200F1F1F100EEEEEE00F4F4F400F9F9F900FDFDFD00F7F7
      F700EAEDEB00AC948200AC948200AC9482000000000000000000000000000000
      000000000000FEFFFF00000000005653A70000007A0000006B00020074000000
      7900D1C7D900FCFFFF0000006700F0E9F100000071001E0B8800B0A3C9002F2A
      9500806EB2000000000000006900C6BCD5000000000000000000000000000000
      000000000000000000000000000000000000FFFDFC004F4F4F0000030700003C
      470029CEDF0018CDE2002EB8CE00000D1F0000000A0000000E0000001A002169
      930035D3FF0025D0FE00056F980000001C0000060D0000070400000307000001
      090000000D0000001400000B2A000041650052CFF50030CCEF0037D9F600006B
      8700000018000304180005000600CDC0C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000080800000FF
      FF0000000000000000000080800000FFFF0000FFFF00000000000080800000FF
      FF00008080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A98F7E00A98F7E00A98F7E00A98F
      7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F
      7E00A98F7E00A98F7E00FCF9F400FFFFFF00FEFEFE00FBFBFB00F8F8F800F6F6
      F600F3F3F300F1F1F100EFF0EE00EDEDED00F1F2F000F5F5F500F9F9F900F5F5
      F500E3DFDE00A98F7E00A98F7E00A98F7E000000000000000000000000000000
      0000000000000000000000000000D0D5E60000006600000000008887C4001200
      730000000000F6FCFF0000006C00A9A1C700160078009B9CCC005E499F00352E
      96008070B2000000000000006900C7BDD5000000000000000000000000000000
      000000000000000000000000000000000000FFECEE007B6A6E0000000A000013
      250027B6D10023C9E60043D4EA00004B5E0000000A0000000C00000019001466
      8F0021C2EF0022C7F200116C91000000140000050200000800000C0100000C00
      00000004030000040D000000140000002100186A930053D8FD0015C1DD0039CD
      E500134D630000000A0006000100CEC3BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000080
      800000FFFF000000000000FFFF0000FFFF000000000000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF000080800000FFFF0000000000000000000000
      000000000000000000000000000000000000A3897800A48A7900A48A7900A48A
      7900A48A7900A48A7900A48A7900A48A7900A48A7900A48A7900A48A7900A48A
      7900A48A7900A3887A00FFFFFF00FEFEFE00FBFBFB00F8F8F800F6F6F600F3F3
      F300F1F1F100EEEFED00EDEEEC00ECECEC00EFEDED00F2F2F200F6F6F600F2F3
      F100F0EDE900A48A7900A48A7900A48A79000000000000000000000000000000
      00000000000000000000FEFEFE00000000000F0380009E91C20007007C009482
      B90000000000F7FBFF0000006F00524799006651A200EBF2F8000C0071003C2F
      9800806FB2000000000000006A00C6BDD5000000000000000000000000000000
      000000000000000000000000000000000000FFF8FE0070515A0000000B000001
      19000D6E92004AC9EF0046CFE9002D8FA10000000A0008000E00000016000267
      870025D1F5001DCAEB0016758F0000010E00000200000E0C0200020300000003
      0000000E0C0000020800080721000000190000082E001D77990059E0F40063DF
      EA001F565B000005000000130000B3C8A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000080800000FFFF000000000000FFFF000000000000FFFF000080800000FF
      FF00008080000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000009D7F6C009E836F00A0867500A086
      7500A0867500A08675009F877300A0867500A0867500A0867500A0867500A086
      7500A1897300FDFFFE00FEFEFE00FBFBFB00F8F8F800F6F6F600F3F3F300F1F1
      F100EEEFED00F0EBEC00A0877300A0867500A08675009F877500A0867500A087
      73009F8775009F8775009F8672009E806D000000000000000000000000000000
      00000000000000000000FEFFFF00000000009092C30003007E0000006D000000
      000000000000F8FBFE000000740007008100B2A5C80000000000050077000B00
      83008474B5000000000000006A00C7BCD4000000000000000000000000000000
      000000000000000000000000000000000000FFF7FF006F50590000000B000000
      16000038600056BFE80041D0EB0040B4C5000319250000000A0000011400006B
      820023D2ED0024CDE8001E7B9000000C18000002010000020000000502000031
      3100003C41000036440000314F00062E5100000C30000029460025808F003684
      8A00082B270000060000000B0000B2D3B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000080800000FFFF0000000000000000000080800000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF000080800000FFFF000000
      000000000000000000000000000000000000A0826F00A0826F00A0826F00A082
      6F00A0826F00A0826F009D8372009D8372009D8372009D8372009A8570009C83
      7300FCFEFF00FEFEFE00FAFAFA00F7F7F700F5F5F500F2F2F200F0F0F000EEEE
      EE00EFEDEC009D8372009D8372009E8473009E8473009F847000A0826F00A082
      6F00A0826F00A0826F00A0826F00A0826F000000000000000000000000000000
      0000000000000000000000000000000000000000000000005F005B4796000000
      000000000000F4F9FC000000600000006000FDFAFB00000000004E479C000000
      69007D6EAA000000000000005500C2B7CF000000000000000000000000000000
      000000000000000000000000000000000000FFF8FF0067525A0000010C000000
      12000002270041A3CB0029CEE7003ED4E5001A505B0000010A00000612000074
      84002AD2E9002CC8DF0010667A0000000D0000030600000203000452590045C0
      CE0030D0E8002FD8F70028C1E6004CCEF30043A5C30000192D0000010D000001
      04000200000016170E0000060000B0CDBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000080800000FFFF000080800000FFFF000000000000FFFF00008080000000
      00000080800000FFFF000080800000FFFF000080800000FFFF00008080000000
      000000000000000000000000000000000000A3867100A3867100A3867100A386
      7100A3867100A4867300A0867500A1877600A1877600A187760081F5FC00FFFF
      FF00FDFDFD00FAFAFA00F7F7F700F4F4F400F2F2F200F1F1F100EEEFED00ECEC
      EC00A0867600A1877600A1877600A1877600A1877600A1877600A3867100A386
      7100A3867100A3867100A3867100A38671000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF9FD005D565900000509000006
      140000001C001071950013C8E20026D8EB003D92A10000091400000712000068
      740030CDE10042D3EC0021758E00000B1D000000070000060C001068790052D7
      F30031D5FF0010CAFA0009CEFA0027DCFF0059E1FB000033440000000B000B00
      01000E000000170D0D0000000300BFC6C9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000000000000000000000000000FFFF000080
      800000FFFF0000FFFF0000FFFF000080800000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000A6887500A6887500A6887500A688
      7500A6887500A48A7900A48A7900A48A7900A48A7900A3897800AA897900FCFC
      FC00FAFAFA00F8F8F800F5F5F500F2F2F200F0F0F000EEEEEE00ECECEC00E2E0
      E000B3A09300A48A7900A48A7900A48A7900A58B7A00A78B7A00A6887500A688
      7500A6887500A6887500A6887500A68875000000000000000000000000000000
      000000000000000000000000000000000000FFFEFF0000000000FFFFFE00FFFE
      FD00FFFFFE000000000000000000F5F5F8008E8BC2002A299800000077000000
      6E00000053007878A00000000000FFFEFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00555A590000030000000D
      110000001500003B5C0008C6E3000DD1E9003FB0C40000102000000D1A000067
      76003FD0E60046D3EE0010698B000000190000000D0000000D00002B4800267B
      A8002994CE00008ECB0007C2F50000B9E10020C3DC00003E4E00000D1A00110B
      1600070006000C00070013000B00DFBDD5000000000000000000000000000000
      00000000000000FFFF000080800000FFFF00008080000000000000FFFF0000FF
      FF00000000000000000000808000000000000080800000000000008080000000
      00000080800000000000008080000000000000808000000000000000000000FF
      FF0000000000000000000000000000000000A88A7700A88A7700A88A7700A88A
      7700A88A7700A88E7D00A88E7D00A88E7D00A88E7D00A88E7D00A88E7D00F9F9
      F900F7F7F700F5F3F200F2F2F200EFEFEF00EDEDED00ECEDEB00ECECEC00E2E0
      E000E2E0E000A98F7E00A98F7E00A98F7E00A98F7E00A88E7D00A98F7E00A88A
      7700A88A7700A88A7700A88A7700A88A77000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACD8002E2EAD0000009C000000B1000001BB000007BA000105
      AE000000930000005600B6B5D300000000000000000000000000000000000000
      000000000000000000000000000000000000F8FFFF00515B5500000500000007
      030000001000001B3A0016C4E80015CFF1003CB2CF0000112800000B1E000C65
      790040D1EA0030CCEA0000779E0000153700000F210000132700000F3100000D
      3D0000023E0000124C0000A2D40014D9FF002DD5ED0000455900000011000000
      0A00000007000C0009001E031300D7B4C8000000000000000000000000000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF00000000000080800000808000000000000080800000000000008080000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000AB8D7A00AB8D7A00AB8D7A00AB8D
      7A00AB8D7A00AB918000AC928100AC928100AC928100AC928100AC928100AD91
      8000AB928200AC928100EFEFEF00EDEDED00ECECEC00ECECEC00ECECEC00E2E0
      E000E2E0E000DDDADC00AC928100AC928100AC928100AC928100AC928100AB8D
      7A00AB8D7A00AB8D7A00AB8D7A00AB8D7A000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FFFFFE00DDE0
      EF001729C5000116D400172EE2001A39E7000B31E400071FD3000520D700070E
      BF000207AF0000007B007272AE00000000000000000000000000000000000000
      000000000000000000000000000000000000F5FFFD00565B52000C0400000B02
      000000000C00001839002EB8E30031CCFA0050B7DE0000123300000019000B56
      700030CDE70015D4F50018CAF30002AAD30025CAE50021B9D20023A1C40030A8
      D2002AAEDD0015B1DC000BCBF00003C1DE0039CEE80000465E00000012000005
      1200000003000002000001040000BCBEB2000000000000000000000000000000
      00000000000000FFFF000080800000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      000000000000000000000080800000FFFF000080800000FFFF00008080000000
      000000000000000000000000000000000000AC8E7B00AC8E7B00AC8E7B00AC8E
      7B00AE948300AF958400AF958400AF958400AF958400AF958400AF958400AF95
      8400B0958100AE958100EDEDED00ECECEC00ECECEC00ECECEC00ECEDEB00E2E0
      E000E0E0E000F1F1F100BCA89D00BAA39300B3958200AF968200AF968200AC8E
      7B00AD8F7C00AD8F7C00AD8F7C00AD8F7C000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00EDEEF4001730
      D7005874FC007088FB005A79FA00345AF300123DEC000A2FEB000B1FDF000515
      D5000006BD00000084007D7EAF00000000000000000000000000000000000000
      000000000000000000000000000000000000F4FFF700565C51000E0900000701
      000000000B00002546003AABD60042C9F50041A6CC0000103100000320002869
      85004BD8F30015C8E7001FD1FA001BCFF80017CCEC0025CDEC0042CEF30056D7
      FE003DC6ED0038CFF40018C6E40033D5F10051CCE60000384F00000012000000
      0B00000003000006000000060000C0CEBC000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000808000000000000080800000000000008080000000
      0000008080000000000000FFFF000080800000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000AF917E00AF917E00AF917E00AF91
      7E00B4998500B4998500B4998500B59A8500F6F8F800C3B0A100F6F4F400EFF1
      F100F6F5F700EDEDED00ECECEC00ECECEC00ECECEC00ECECEC00ECEDEB00E1E1
      E100ECEDEB00EDEDED00E8E8E800E2E0E000E2E0E000E0E0E000BA9A8700B69A
      8900AE907D00AE907D00AE907D008B6C57000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C5FD7007C91
      FE00A1B0FE007D95FB005371FC001F43F5000C37F600092DF7000817DD00020E
      D0000000B50000007E00ADADC900000000000000000000000000000000000000
      000000000000000000000000000000000000FDFFF7004F584E00000501000007
      0C0000001200001F3D004BB7D60055D6F10039A7BF000021370000031A000033
      4C003FA0BA0042BDD9004BC9EC0035B7DC003FC2E30041BEDD0048B8DC004CB7
      DD0045B6DE003FB6DD003BBCDD004BC2DC003D97AF0000132800000011000200
      0A000A0007000A00040000000100C0C4C5000000000000000000000000000000
      0000008080000000000000000000000000000080800000FFFF00000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      000000000000000000000080800000FFFF000080800000FFFF00008080000000
      00000000000000000000000000000000000077583F00B0927F00AF917E00B59A
      8600B89D8900B89D8900B89D8900B99F8700F6F6F600F4F4F400F3F3F300FCFC
      FC00F1F1F100EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00EBEBEB00E9E9
      E900F1F1F100E9E9E900FBFBFB00F2F2F200E2E0E000E3E1E100B99D8C00B99D
      8C00AF917E00AF917E00A0816A00785940000000000000000000000000000000
      00000000000000000000000000000000000000000000BEC5E9003956F1009EAD
      FF008A9CFA004F6BFB002245F7001B41FA001941FC000D30FA00060DD2000203
      C5000202B30000007900D4D3DD00FDFEFB000000000000000000000000000000
      000000000000000000000000000000000000FFFFF500595A5100000003000008
      1700000019000023410039B2CC003DC7DE0043BDD30000142B00000018000000
      180000183000001C3600001D3B000024410000152F00001E3800001E3D000024
      480000224700002A4E0000224300001D380000182B000001110000000B000000
      0700040006000C01090004000400B9B7BD000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000080800000000000008080000000
      0000008080000000000000FFFF0000FFFF0000FFFF000080800000FFFF000000
      000000000000000000000000000000000000795A41007B5C4300B0927F00BCA0
      8F00BCA08F00BCA08F00BCA08F00F5F5F500F2F2F200F1F1F100FFFFFF00F7F7
      F700F4F4F400F1F1F100EFF0EE00ECECEC00ECECEC00ECECEC00E1E1E100EFEF
      EF00F7F7F700FAFAFA00EAEAEA00EEEEEE00FDFDFD00E2E0E000E0E0E000C7B1
      A500BEA38F00896A53007C5E45007A5C4300000000000000000000000000FEFE
      FE0000000000000000000000000000000000000000003042D100455FF300637B
      FC004B6AFD002448F8002148FA003155FA003452F8000E25DF000811DA000102
      BF000303B00000007400E2E2E400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF1006C5C55000D0005000000
      0F0000001C000014380031CAEB0032D9FA001FABCA0000103000000424000000
      1D000000180000081D000001180000091E0000081900000E1F00000118000000
      1B0000001D000003230000001D00000219000004140000081100001215000011
      100000020300000101000C090B00CFC9CA000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000080
      8000000000000080800000808000000000000080800000000000008080000000
      000000808000000000000000000000FFFF000080800000FFFF000000000000FF
      FF00000000000000000000000000000000007A5C43007D5F460081634800BFA4
      9000BEA69000F7F7F700F5F5F500F3F2F400F1F1F100FAFAFA00F3F3F300F2F2
      F200F6F7F500F2F2F200EFEFEF00EDEDED00ECECEC00ECECEC00E6E6E600F2F2
      F200F9F9F900E1E1E100F1F1F100FFFFFF00FAFAFA00FEFEFE00E2E2E200E0E0
      E000C8AA970082634A007F6047007C5D4400000000000000000000000000FEFE
      FE00000000000000000000000000F1F2F300DCD5C9002A29A5004064FF00405C
      F6002848F0002144F200395AFB005D79FB006480FF001E31E3000708CE000000
      BD000806A20000007600F8FAFB00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF8006C5A5B0000000A003354
      6E003189AE000993BE0026D7FF0003B9E70030C4F3001187B6003791BA003E8F
      B20028859E00399CB0003190A3002E8D9C002988920031919E00298B9D003397
      AF002485A6003193B5002A8CAE003195B200329BB0002D96A30023898E002781
      8200246465000007090000000600BFBBC1000000000000000000000000000000
      0000000000000000000000FFFF000080800000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000007B5C43007F604700CEAE9700D2B2
      9B00C0A79300D2C2B100F5F3F200FFFFFF00FEFEFE00FFFFFF00F9F9F900F9F9
      F900F7F7F700F3F3F300F1F2F000EDEDED00ECECEC00ECECEC00E7E7E700F4F4
      F400FBFBFB00FEFEFE00FFFFFF00E9E9E900F5F5F500E0E0E000E2E0E000E2E0
      E000E0E1DD0083654A00816249007C5E45000000000000000000000000000000
      000000000000000000000000000000000000D8A25300F5A340004447BD002440
      E7001632DC002649F6004C69F9008698FB008CA0FE003455F9000005CC000404
      B3000502A7000000800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEEF7005A5662000000150053BF
      DE0023CBF40005CBFF0000BAF90014CBFF0015ADF4003CCAFF0035CDFF002CD1
      F80024D7F20020D8EA0021D7E30027D9E40034E3ED0033DEEC0027D3E90032DB
      FA0027CAF1002DCAF6002EC7F4003CD8FF002CD1F20024CFE70030DDED004AE4
      EF005BCEDB00002B3B0000061A00B4B8D0000000000000000000000000000000
      000000000000000000000080800000FFFF000080800000FFFF00008080000000
      0000000000000000000000808000000000000080800000000000008080000000
      00000080800000FFFF000080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007D5F460080624700D0B09900D3B3
      9C00F3F5F500F1F1F100F3F1F000FFFFFF00FAFAFA00F3F3F300F7F7F700FBFB
      FB00F7F7F700F4F4F400F1F1F100EEEEEE00ECECEC00C6AC9B00E3E5E600F2F2
      F200FAFAFA00E0E0E000E8E8E800FCFCFC00FEFEFE00FFFFFF00E6E6E600E0DF
      E100DACEC400CDAD960083654A007F6146000000000000000000000000000000
      0000000000000000000000000000F8FBF600DC943300FFBB5C00E69A33005236
      7C000325CE001028D3004663F2008698F7009CAFFE003F5BF7000001C1000606
      B40002009C0000008300FFFFFB00FAFAF9000000000000000000000000000000
      000000000000000000000000000000000000FFFCFF004D545D00000212002492
      AC003BDAFE0023DBFF0013C6FF0010BDFF0020C3FF0039DFFF000ABCED0006B9
      E00031DDF90021D0E4001FD9E40024DDE70033DAE70027CBDE0018C7E10016CD
      EF001DD4FE0018CCFD0018C1F40016BBEC0023C7F1002CCCEE003CDAF20044CE
      E0004AB2C3000020320000031900B2B4CC000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF00008080000000000000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000080800000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007F604700C9A99200D1B19A00D5B6
      9D00DAB8A100F1EFEF00FFFFFE00FEFEFE00FFFFFF00FAFAFA00FCFCFC00FBFB
      FB00F7F7F700F4F4F400F1F1F100EEEEEE00E5E2DA00CCB09F00CCB19D00F3F1
      F100F8F8F800FCFCFC00FDFDFD00F6F6F600EFEFEF00DFDFDF00E3E1E100E2E0
      E000E0E0E000E2E0DF0085674C00816249000000000000000000000000000000
      0000000000000000000000000000EBE4D600EBA74D00FFC98000EDA74700B56C
      0600140B9A000121C5003655EA006F84F600859AFD003855F1000505C8000201
      B60000009E004748A50000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F7FFF3004A5B4E00000A08000008
      1200003F5700004163001C91B80037CCF4000FC7EB0005C2E1000089A6000046
      630005516E0000435B00004F5D000048540000445A00003E5B00005D7C00007C
      A00025C5EF002DD1FE0029BFEE000B8DBC0000436E0000446900033C5B000B36
      4B000923330000000A0000000700C6BEC8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000080800000FF
      FF000080800000FFFF000000000000FFFF000080800000FFFF000000000000FF
      FF000080800000FFFF000080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007F614600CEAE9700D3B39C00D6B6
      9F00F2F0F000F0EEED00F1F1F100FBFBFB00FFFFFF00F5F5F500EDEDED00F9F9
      F900F6F6F600F3F3F300F0F1EF00EDEBEA00D2B5A000CFB4A000CFB4A000D0B5
      A100F4F3F500FAFAFA00FAFAFA00F6F6F600EBEBEB00FAFAFA00FFFFFF00E2DF
      E100D2BAA400D1AE9A00CBAB9400816249000000000000000000000000000000
      0000000000000000000000000000F0F0E600E6A24A00FFD18F00EEA64A00B46A
      0700663725000000B2001333CF003351F4002F47EE001427DC000402C6000000
      B20000008D00F3F3F40000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000EDFFF000495E4800000400001012
      12000000080000000F00002136002DA0B40025D9E50015DBE7000EBBCB00002F
      450000001B000000190000061C00000318000008230000001C0000002200000F
      33000089B10022C7F2003DD6FF001D9DC800000D350000052900000015000203
      1700020007000900030005000000CEC9C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000080
      800000FFFF000000000000FFFF000080800000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      00000000000000000000000000000000000081634800D0B09900D3B39C00F0F0
      F000EDEDED00FFFFFF00FFFFFF00F6F6F600FAFAFA00F8F8F800F7F7F700F6F6
      F600F4F4F400F2F2F200EDEEEC00D0B7A300D3B8A400D3B8A400D3B8A400D4B9
      A500D2B9A500F2F2F200F4F5F300EEEEEE00FFFFFF00F6F6F600E0E0E000E0E0
      E000DEE0E000E2DFE100CBAC950083654A000000000000000000000000000000
      0000000000000000000000000000F5FEFF00C3873600FCCC8600E9A54C00B670
      16008C4E0000341B53000208B90040319000563F7F00120DB8000E18CE000C0C
      A700CDCCDD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDFFF200475D4A00010E00000004
      000000010000000507000002090000262D0022B8B9001ADADA001EE1E8000DB0
      BF0000405F00001D430000244800003153000029470000345000002E4E00002C
      5000005D830000ABD40023D3FB002FCDF1002BA5C30000102900000011000009
      1200000001000002000000050000BFCABA000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000080800000FF
      FF0000808000000000000080800000FFFF000080800000FFFF00000000000000
      00000080800000FFFF000080800000FFFF000000000000000000000000000000
      000000000000000000000000000000000000CCAC9500D0B09900D4B49D00D7B8
      A300DDBBA300E3C1A400FDFFFF00FFFFFF00F6F6F600EDEDED00F6F7F500F4F4
      F400F2F3F100E5DFD400D5BCA800D5BCA800D5BCA800D5BCA800D5BCA800D5BC
      A800D5BCA800D5BBAA00ECECEC00E9E9E900E5E5E500F4F4F400FFFFFF00E1D5
      CB00D3B39C00D3BDAB00CBAC9500B79980000000000000000000000000000000
      00000000000000000000FEFFFF0000000000DDCFAF00DA882300F2AC5100C680
      2600A35C01008448000035186400B6630000ECB14400301771002945FF006571
      D70000000000F2F3F300ECEDEC00F9F9F9000000000000000000000000000000
      000000000000000000000000000000000000F7FDFC004F565300010702000002
      00000001000005050500000003000002080000484D0021BAC10027E1EC001DCD
      E4003BBAE0005EC6F5004CB5E60049B8E60046BFDF0040C7E3002FC1E40017BA
      E0000DC4EB0014D5FC0015D6F80019C6E6003EC7E10021809400001624000000
      0700000100000308000000060000AFC5B3000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCAD9600D0B09900D4B49D00E9DF
      D800FEFEFE00FFFFFF00F8F8F800F1F1F100F2F2F200F2F2F200F3F4F200F4F2
      F200DABFAB00DBC0AC00DABFAB00DABFAB00DABFAB00DABFAB00DABFAB00DABF
      AB00DABFAB00E5C6AD00E7C9AE00E0E0E000F6F6F600F0F0F000FFFFFF00FFFF
      FF00E2E0E000D0B09900CCAC9500C8A992000000000000000000000000000000
      00000000000000000000FEFFFF00FEFEFE0000000000DBC9A500AB600500CF8A
      2C00E19A3300683E2F0000009C00A3671E00F4C47C0030106C00203DFB000D2F
      E500EDF0F7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF3FF00614862000D000F000500
      08000000060006050E0007000B000000100000001600035D7B0032C0E30036DE
      FF0018BCF00026C6FF002EC9FF0032CAFF003AD0F80039D2F30031D3F60027D6
      FE0016D4FD0009D0F60007CEEF001DCDEB0053DBF5004FA8BD00001325000000
      0800020006000202020000080000B6D3CA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAAB9600EBEDEE00EEECEB00E9EB
      EB00FFFFFF00FAFAFA00F4F4F400F7F7F700EFEFEF00F0F0F000E1C3A800DEC3
      AF00DCC3AF00DDC4B000DDC4B000DDC4B000DDC4B000DDC4B000DDC4B000DCC3
      AF00E2C4AB00E5C7AC00E5C7AC00E6C5AB00F1F1F100FFFFFF00FBFBFB00E0E0
      E000E0DFE100E2E0E000CBAC9500C6AA92000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BEB4A100C87A
      1B00F7B25D004959D7000724D500A26C4F00ECC18F00893B0000461D50007870
      A9000000000000000000FEFEFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFF0FF006C4A6900190014001100
      0D0004000600020004000700060002000B0000001700000223000051770039C3
      ED0036D2FF0029C6F80024A9E200229DCF002CA9C80028A6BF0028A4C20027A8
      C9001DA7CB0016A5C5001BABC70032B6CD00349AAC001F63700000010A000206
      0B00070001000700000000010000B3BDB7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBAB9400E7DDD600D4B49D00D5B6
      9F00FDFDFD00F9F9F900FFFFFF00F2F2F200E3C3A600E4C3A900E2C0A800DDBE
      A500E0C7B300E2C7B300E2C7B300E0C7B300E0C7B300E0C7B300E0C7B300E1C2
      A900E3C1A900E2C4A900E2C4A900E2C3AA00E1C0A600FCF4ED00F5F8F600F4F4
      F400D5B39C00E2DFE100E2E0E000C8A992000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3DDD200B96E
      0B00DEBD82005E70DD0086A1FF00A47E7700E8BB8600CF882300EBAD5000BA76
      2C0081340000DDCEB60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF3FF00674D5B00150003001702
      0100120400000B02000007010000040001000000090000000F0000051B001B71
      890040A7C000136E89000008290000001900000E1B0000111900000E1C00000B
      1F0000081E0000071C000007170000091100000D0F0000080300000500000004
      00000E020000210A020026080300E4C1BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9AA9300CEAE9700D2B39A00FFFF
      FE00FCFCFC00FEFEFE00EEECEB00DFC0A700E1C0A600E1C0A600DEBFA600DDBB
      A300D9BAA100E4CBB700E6CBB700E6CBB700E6CBB700E6CBB700DEBEA700DDBE
      A500DFC1A600E2C0A800E2C1A700DFC1A600DDBEA500DDBBA300D7B99E00FEFE
      FE00E3E1E000CBAD9A00CBAB9400C7A891000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE00ECE2
      CE00F6E7CF007C95F500535CC600DAB59100C3967B000411C0006379DD00E4DD
      D500F3E7D100F1EFEA00F7F9F900FCFCFC000000000000000000000000000000
      000000000000000000000000000000000000FFF9FF006E656800070100000702
      00000E0700000E0700000D0900000C0704000B00080001000D0000000E000003
      120000050D0000060C00000007001A0C12000000010000010000020003000900
      06001000070015000B0014010A000A0203000002000006120600000D00000006
      0000090500001300000022000000EDC0C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8A99400CBAB9400FFFFFF00FAFF
      FD00E9ECEA00D8B9A000DDBBA300DCBDA400DDBEA500DCBEA300DBBCA300D9BA
      A100D7B89F00D4B49D00E8CFBB00E8CFBB00E8CFBB00D7B8A300D8B9A000DBBC
      A300DCBEA300DDBEA500DDBEA500DDBEA500DBBCA300D9BAA100D6B69F00D3B3
      9C00E5E4E600E2E0E000C8A99200C5A691000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFFFF00BD937A00C5884C00F4D3A2003B46BE000F2DE30094A4F600FFFF
      FE00FBFDFF00FAFAFB00F8F8F800FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000F4FFFF00A8B9B5004F6D6200405A
      4C00515B4E0055574B0055554F00554F500061505D00604D5E00655566005C5C
      6800244342003E5E530060635400514A3B005B5D5700525B58004E5656004D52
      5500514F55005850570062545A0064595B0054504F004B554F003D544C003F59
      530056686900565961007B6B7C00FFF4FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7A89100EEEBED00ECECEC00D0B1
      9A00D4B49D00D6B79E00D8B9A000DABBA200DABBA200D9BAA100D9BAA100D7B8
      9F00D5B69D00D3B39C00CFAF9800EBD2BE00D0B39E00D4B49D00D6B69F00D8B9
      A000DABBA200DBBCA300DBBCA300DABBA200D9BAA100D7B89F00D5B69D00D2B2
      9B00CFAF9800DFE1E100C8A99400C6A591000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0EDEC00BA874B00E8D7B300F3EFE3006E84F4002A45E9007F91DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAFFFD00E4FFFE00D5FFF400DAFF
      F500F3FFF700FDFFF800FFFFFE00FFFAFF00FFF9FF00FFF6FF00FFEBFC00FFF7
      FF00F4FFFC00F1FFF400FBFEE400FFFFED00FFFFF800F6FFFC00F3FFFF00F1FF
      FF00F8FEFF00FAF9FD00FFF7FD00FFFDFF00FFFEFF00F8FFFE00EAFFFF00E0FF
      FF00DCF9FE00E6F7FF00FDF7FF00FEEFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5A69100C8A99200CDAD9600CFAE
      9A00D2B29B00D4B49D00D6B69F00D6B79E00D7B89F00D6B79E00D6B5A100D4B5
      9C00D3B39C00D0B09900CDAD9600D2B09200CFAE9A00D1B19A00D3B39C00D6B6
      9F00D8B9A000D8B9A000D7B89F00D8B9A000D7B89F00D5B59E00D2B29B00D0B0
      9900CDAD9600CAAA9300C7A89100C3A28E000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FE0000000000FCFFFF00FCFFFF0000000000FFFFFC00FBFDFA00FBFDFB00FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8CDCD00C8CCCD00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00BABEBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F7F7F700F4F4F400F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F4F4F400F7F7F700FBFBFB00FEFEFE00000000000000
      000000000000000000000000000000000000DFECEE00D6E8EB00D7E8EB00D6E8
      EB00D7E8EB00D6E6E900D2E3E500D7E8EB00D7E8EB00D7E9EB00D7E8EB00D7E8
      EB00D7E8EB00D8E8EB00D7E8EB00D7E8EC00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00F7F7F700EAEAEA00DCDCDC00D3D3D300CFCFCF00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CFCFCF00D3D3D300DCDCDC00EAEAEA00F7F7F700FDFDFD000000
      000000000000000000000000000000000000DBEDEE00D7E7EC00D9E9E800919A
      9E0045474C00303035003D3D3D0065696900B8C3C700D7E9EA00D6E8EB00D7E8
      EB00D7E7EA00D7E8EB00D8E8EB00D7E8EB00D7E9EA00D7E8EB00D6E7EA00D7E8
      EB00D7E7ED00D7E9EB00D6E8E900D7E8EA00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F7F7F700E3E3E300B8B7B700908F8F00807F7E007B7B79007B7B
      79007B7B79007B7B79007B7B7900767678006A6A770064647800656579006565
      790065657900656579006A6A7B007B7B8400ACACAE00E1E1E100F7F7F700FEFE
      FE0000000000000000000000000000000000DDEDED00BCCBCE004B4F52003D3E
      42008182820089888B00757577003133350038383B00959E9E00D5E6E800D7E8
      EB00D8E8EB00D7E8EB00D8E8EB00D7E8EB00D7E8EA00D6E7EA00D7E8EB00D7E8
      EB00D7E9EC00D7E8EB00D7E8EC00D9E8EC00D7E7EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC3
      CD00333434003235350032353500323535003235350032353500323535003235
      3500323535003235350032353500323535003235350032353500323535003235
      350032353500323535003235350032353500323535003235350033343500355E
      6700000000000000000000000000000000000000000000000000000000003334
      3400323535003235350032353500323535003235350032353500323535003235
      3500323535003235350032353500323535003235350032353500323535003235
      3500323535003235350032353500323535003235350033343500355E6700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FBFBFB00E8E8E800ACACAB007A7977007E7B75008D89810098938B009994
      8B0099948B0099948B0099948B007B787F0043417B002A2A89002B2B8F002B2B
      8F002B2B8F002B2B8F002B2B850032327400504F6F009E9EA300E6E6E600FBFB
      FB0000000000000000000000000000000000DEEBEC0054565C003E3C3F00E7E7
      EF009C95F6005851F000A7A4F800DCDBE1002E2B2E003F3D3E00A7B0B200D4E7
      EA00D7E8EB00D7E8EB00D5E7EA00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D8E9
      EC00D8E5ED00D6E8EC00D7E9EA00D7E8EB00D7E8EA00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000F7F7F700C2C2C2007E7D7A00908B8100B1ACA000C0BAAD00C6C0B300C6C0
      B300C6C0B300C6C0B300C6C0B3009E999F00504F9C002E2EB4003030BC003030
      BC003030BC003030BC002F2FB7002B2BA900252588004F4F7300B5B5B700F7F7
      F70000000000000000000000000000000000B0BBBD0030303300DFDEDF006963
      F200241CEC00251CEB00261EEB007571F200B2B3B30026252800777A7C00D4E6
      E900D7E8EB00D6E8E900D7E8EB00D7E8EB00D7E8EB00D7E8EB00D6E7EA00D7E7
      EC0096A09F00D5E5EA00D7E8EB00D6E8EC00D7E9EC00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000F4F4F400A1A0A0008E8B8400C0BBAF00CBC6B900CBC6B900CBC6B900CBC6
      B900CBC6B900CBC6B900CBC6B900A19DA5005150A3002E2EBD003030C6003030
      C6003030C6003030C6003030C6003030C6002D2DBC002F2F890088889600F4F4
      F40000000000000000000000000000000000919B9C0055545A00E6E5F400241C
      EE00241CEB00231BED00221CED00251AEE00C6C8DF003131340066666700D6E7
      EA00D7E8EB00D4E8E900C4D1D400CCDCDF00D5E6E900D7E8EB00D7E8EB00CAD9
      E400514E7200C4D2D400D7E9E900D6E6EC00C9D8DB00D1E1E300D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FDFD
      FD00D5D5D50092928F00B6B2AB00DDD8CE00DFDAD000DFDAD000DFDAD000DFDA
      D000DFDAD000DFDAD000DFDAD000B4B0BA006665B7004848D4004B4BDE004B4B
      DE004B4BDE004B4BDE004B4BDE004B4BDE004B4BDC004343B80086869E00F4F4
      F4000000000000000000000000000000000093979D0056555800E2E1F600231C
      EC00251CEC00241CEB00251BED00241CEC00C7C5DD003230360064676700D5E6
      E900D7E7EB00D3E4EA00868CA30069696900888D8B00BDCBCD00D8E7EC0097A0
      E400332DBF00ABB6B700D6E8EB00CCD8DE006C6F7E00C2CFD900D7E8EA00D6E8
      EB00D7E8EB00D5E9EB00D7E8EA00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000DDDD
      DD009999990093918E00CBC8C200ECE8E000F2EEE800F4F1EA00F1EDE600EFEB
      E400EFEBE300EEEAE300EEEAE300C5C2CA008685C5007776E3007C7BEE007C7C
      EE007D7CEF007E7DF1008080F4007F7EF1007B7AEB006E6DCD009191A700F7F7
      F70000000000000000000000000000000000B3BFC10034343800E5E4E5005C57
      F100221DEA00231CEC00231EED006A63F200B5B5B700282729007D818400D9E7
      E900D7E8EB00CEE1EC004C47EB00342FBA004746800057546200767A7A005250
      D400261EE70081869800C1CFD0005D5D8600332CC700C2CEE000D8E8EA00D6E8
      EC00D7E8EB00D2E2E500CDDCE000BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000B4B4
      B4008C8C8C0092919400BCBBBA00ECEAE400FAF9F500FEFEFB00FCFAF700FAF8
      F500F9F8F400F9F7F400F9F7F400DCDADF00B9B8DC00BDBCF300C5C4F800C6C5
      F900C7C6F900C9C8FB00C8C7FE00BCBAF900ABAAEA00908FBD00A4A4AC00FBFB
      FB0000000000000000000000000000000000DCE9EE004D50510041454500D9D7
      EA00453FED00231CEC00726BF100BDBDCB002D2D3100413E3E00B8C5C600D4E7
      EC00D7E8ED00D7E7ED00868CEB00251CEE00241CE9002A23D8003C38A0002820
      E200241DEA005350870059557F002A21DC003633D500C4D5DF00CCDBDE00ABB2
      B500818886006B6B6C00AFB9BB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      670000000000000000000000000000000000000000000000000086A6AF00222E
      310000AEDA0000C7F90000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000C4
      F50000C0F00000C7F90000CCFF0000CCFF0000CCFF0000CCFF0000C0F00000AE
      DA0000B5E20000C6F70000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A5A5
      A5009B9B9B009393A500A1A0B400D7D5D500F3F1EE00FCFBFA00FFFFFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAE9EB00E0DEE900F2F2FD00FAFAFF00FAFA
      FF00FBFBFF00FAF9FE00F3F1FA00E0DFEF00C0BFD2009C9CA400CFCFD000FEFE
      FE0000000000000000000000000000000000DFEDEF00B7C4C900424448006C6B
      6E005853EF00251CED009290E800424145003B393C009CA5A600CEDDEB00979F
      B40063657300696B6B006A6B7B002820E000231DEA00241CEC00231BEC00251C
      ED00231BED00332CC000241FE600221DEB003029CE0067666E00535065004C47
      7B0044408B00433EAF00BFCDE900BBC4C600000000000000000065656500222A
      2C000E1517000040500000576D000089AB0000BAE80000CCFF0000CCFF0000B4
      E10000576D00005A700000B5E20000CCFF0000CCFF0000B6E300005E7600003E
      4D0000769400008FB300004A5D0000576D0000A7D10000CCFF00186172001727
      2A003A3A3A000000000000000000000000000000000000000000222A2C000C10
      110000020300000C0F00003B4A000096BC0000C7F90000C7F900008DB0000025
      2E00001A2000000C0F0000BAE80000CCFF0000CCFF00006A8500001C23000034
      4100000F130000323E0000B7E50000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A5A5
      A500A5A5A500A1A1BC00B1B0CF00C5C5D000C1C2CA00D5D5D400E4E2DE00E5E3
      E100E5E3E100E5E3E100E5E3E100CECCCD00BFBDC900CDCCE000D3D3E700D3D3
      E700D3D3E700D1D0E500C9C8DA00B4B4BE009B9B9E00BDBDBD00F7F7F700FEFE
      FE0000000000000000000000000000000000DCEDEE00D8E7EA00ABB8BC005553
      56005852EF00241CEB008885DD00302E3200686B6A00D0E3E400CDDEEA004E4A
      EB00271EE900251FE5002F27CF002921DD00231CED00251CEB00251DEC00231C
      EC00221CED00251CEB00241BED00251DEC00271EE4002820E300261CE900291C
      ED00231CEB00979EEB00D7E7EB00BBC4C6000000000000000000040404004E62
      67001722250000678100005A710000283200001D2400008CAF0000CAFD000032
      3F00004C5F00004D600000495B0000CCFF0000BCEB0000101400005A70000066
      7F0000070900000E110000667F000035420000647D0000B6E40002080A001829
      2D005F5F5F00000000000000000000000000000000000000000015191B00FFFF
      FF00FFFFFF00CFCFCF0080808000000E1200002E390000374500000F13008080
      8000FFFFFF00003F4F000086A80000CCFF0000CCFF00001B22009F9F9F00FFFF
      FF00FFFFFF00003441000086A70000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A7A7
      A700ACACAC00B1B1C300BBBCDB00A8AFD2008E96B300A9ABB000B8B7B800B4B4
      C200A6AAC100AFABB200D1C1BA00D5CCC900CDCAD000D0C5D100CEB6C200C2A3
      B200B293A400A58E9F00A69CA800918E930085858500C7C7C700EDEDED00FAFA
      FA00FEFEFE00000000000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CED008985DD00302E3200686B6B00D1E2E500D7E8EB00D7E8
      EB00848AEB002822EA003630EE00B6B4F800C9C8F9008682F4003831ED00A09D
      F7009893F6003F38ED00231DEB00241BED002B23EC00534CF0003229ED00241D
      EB00787CE100D7E8EB00D7E8EB00BBC4C6000000000000000000020202000000
      0000E0E0E000D0D0D00000000000000000009F9F9F00030907001B534100040B
      0900BFBFBF00BFBFBF000715110026735A000F2E24000A1D1700000000000000
      0000010202000001010000000000133A2D000E2B22000F2E24000B1912000000
      000060606000000000000000000000000000000000000000000018201E000001
      00000717120011332800CFCFCF00EFEFEF001132270080808000EFEFEF00DFDF
      DF000A1D1700030A0800133A2D0007171200040E0B0001050400000000000000
      0000BFBFBF00133A2D0003080600040E0B00040D0A00060C0800192C1D00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A8A8
      A800B4B4B400B9BAC0009EA0BB008187B200888FAC00A6A8AF00A7A8AE009193
      AD00777CA40089859700C1AAA400E9D3CA00FCF1E800FFF3E600FAD7C700E2AC
      9F00BF8E8500B4968D00BBAFA400ACA69B0083807A008D8C8B00C9C9C900EEEE
      EE00FBFBFB00FEFEFE000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CEB008684DB00303031006B6A6B00D1E1E600CFE0E200BCC9
      CF00808589004A4581004841E600A09CF800625CF200DAD8FC00B7B5FA00C1BD
      F900D0CFFB008F8AF600251DEC00241DEC00B6B4F800F2F1FD00DBD7FB003430
      BF005D5A5B00959F9F00CDDCDE00B9C3C6000000000000000000020302000000
      00001A2912000101010000010000131F0D00F0F0F0008F8F8F00080E06000507
      0300BFBFBF00C0C0C000090F06002A431D0003050200CFCFCF00FEFEFE000000
      00000203010001010000000000001A29120010190B0003040300BFBFBF00C0C0
      C0001818180000000000000000000000000000000000000000006F9881002224
      2000080D06000101010010190B00CFCFCF00FFFFFF00EFEFEF00131F0D000406
      0200131E0D002B451E000D1509005F5F5F00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00EFEFEF00DFDFDF00BFBFBF00BFBFBF00BFBFBF008F8F8F0006090500FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AAAA
      AA00BBBBBB00B1B1BE008788AD00686E9E006E759B009D9FAC00A0A0AD007C7C
      9F006066940063698C00948C9400C8B0A800EAD3CA00FAF0E700FCE9DC00E8C5
      B800D3BAB200D7CEC500D2CDC100C4BEB100ACA69B00837F79008E8D8C00CCCC
      CC00F2F2F200FDFDFD000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00241BEB008884DE00312E33005D5D5D008387860062637D00413E
      9800312BC4002A21DD00241CEB003831EE00B3AFF900C1BDF900B5B3F700ABA6
      F700BEBDF9008985F400241BED003D36EE00E9E7FC004A43EF007470F3002B24
      DC003B36A7005253600075777800A9B0B2000000000000000000020302000000
      00001A4D0000164100002A7D0000091C0000174400000000000007150000030A
      0000BFBFBF00C0C0C000091C0000102F0000133A0000EFEFEF00205F00000000
      00000205000000010000000000001A4D0000040D0000101E0900000000000E19
      1B007373730000000000000000000000000000000000000000006F9881000E10
      0D0060606000DFDFDF00FFFFFF00A0A0A0001A4D0000EFEFEF00030A00001D57
      00003399000033990000040C000003090000194C0000194C0000194C0000194C
      0000194C0000194C0000194C0000194C0000194C00000306020000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ABAB
      AB00C2C2C200ADAEC600898AC100737AB9005363A000858EAB00A2A2BA008485
      BB006F76B4004D5D9900757D9900A99FA500C1ABAC00E0CBC200E4D5CD00E7DA
      D400F2ECE900F2EFEA00E4E0D600D2CDC100C4BEB100ACA69B0082807A009595
      9400DBDBDB00F9F9F9000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CEC008885DD002E30330051507F005754E200241DEB00251C
      EA00241CEB00221DEA00302AED004B45EE00DDDBFB006B67F3008882F500E7E6
      FC00FBFBFE004D48EF00231BED00433BEF00E5E4FC005952F100645DF100261E
      EC00241CEB002820E9008E96E600BBC4C6000000000000000000020302000000
      00001A4D0000164100003399000025700000040B000000000000174400000206
      0000BFBFBF00C0C0C00007150000050E0000EFEFEF001A4D00001A4D00000000
      000002050000000100000000000020600000133A0000EFEFEF008F8F8F00070D
      0E00E2E2E2000000000000000000000000000000000000000000638773000F12
      0E000D270000FFFFFF00103000000308000002060000C0C0C0008F8F8F000819
      000021630000226600000207000090909000FFFFFF00D0D0D000D0D0D000F0F0
      F000C0C0C000F0F0F000E0E0E000C0C0C000FFFFFF00C0C0C00000010000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ADAD
      AD00C8C8C800BBBBD700B6B6E100ADAFDD006675B8008492B500B3B3CF00B6B6
      E100AAACDA006171B3007785A900A7A6BD00B5ABBF00CAB7B100CEC2BC00EAE7
      E200FCFCFA00FCFBF900F2EFEA00E4E0D600D2CDC100C4BEB100A9A498008280
      7B00B4B4B400F6F6F6000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CED008884DC002F2E32005F617700B5BFE500A2ABEB007276
      EA004642EB00231DED007873F200D4D2FC00DFDEFB008885F500E8E7FC008A87
      F400FDFDFF00645EF200241BED00231CED008883F300CAC6FC009693F600261E
      EC003D39E5008F99EA00BDCAEB00BBC4C6000000000000000000020302000000
      00001A4D00001641000033990000319400000001000000000000818181000205
      0000BFBFBF00C0C0C0000205000080808000DFDFDF00040B00001A4D00000000
      00000205000000010000000000000000000000000000000000007F7F7F000407
      0800D7D7D7000000000000000000000000000000000000000000131916000D0F
      0C000D260000BFBFBF00BFBFBF000D2600000D260000194C0000EFEFEF000D26
      00000D270000061300000611000000010000FFFFFF001643000016430000CFCF
      CF000D260000CFCFCF00205F00000D260000FFFFFF0000000000141D1200FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AEAE
      AE00CDCDCD00CDCEE000C8C9E800AFB6E1008694C900A8B1C700C4C4D600C6C7
      E600AEB5DF007F8EC2009AA3B900B5B5C700B6B7D500AAAAC100B3B2B900E0DE
      D700F4F2EC00FCFCFA00FCFBF900F3F0EA00E4E0D700D2CDC100C1BCAF00958F
      88009E9D9C00F5F5F5000000000000000000DEECED00D7E8EC00ADBABD005554
      57005853F100241CEC008985DE002F2F3200696B6B00D2E3E400D9E8EB00D4E8
      EB008386BB00241CEC002A22EC008D88F500948FF700352EEE006D68F200C9C6
      FB00BFBBFA004E49EF00B0ACF9005551EF00251BEC00241BEC00241CEB003832
      B4005B5C6000A2ABAE00D2E1E400B9C4C6000000000000000000020302000000
      00001A4D000016410000339900002C83000000010000000000001A4D00000205
      0000BFBFBF00BFBFBF00061300000000000013390000050E00001A4D00000000
      00000205000000010000000000001A4D0000000100000D180700F0F0F0001A2F
      34004848480000000000000000000000000000000000000000001C262100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F00091B000001040000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000203010031472B00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AFAF
      AF00D2D2D200DFE0E400D0D1E200BAC0DB00BCC3D600D0D2D700CCCCD300ACAD
      CA008B91BE00969DBB00B9BBC200BBBBC2009FA1BC008388B0009296AA00C0BF
      BD00E1DED800F4F2ED00FDFCFB00FCFBFA00F6F4F000E7E4DC00CFCABF00A29D
      9400A1A09E00F7F7F7000000000000000000DDECEE00D6E7EB00AFBAC1005554
      57005953F000241CEB008985DE002E2F3300696B6C00D0E2E500D8E7ED00A9B5
      C0002B25DB00261CEA00251CEE00241DEC00251BED00251DEB00251DEC002922
      ED00281FED005D57EF00B4AFF6007773F300261BED00241DEB00241CEF00251D
      EB003934AC005B56570084888700BBC4C6000000000000000000020302000000
      00001A4D00001641000031920000123700000D27000000000000103100000308
      0000BFBFBF00BFBFBF00AFAFAF00BFBFBF00030900000E2900001A4D00000000
      00000205000000010000000000001A4D00000E2B000004080300B0B0B000BFBF
      BF00141414000000000000000000000000000000000000000000030404000000
      000000000000000000001A4D0000DFDFDF0000000000000100008F8F8F007F7F
      7F000000000000000000143B0000030A00009F9F9F00030A0000102F0000BFBF
      BF00BFBFBF00BFBFBF007F7F7F00030900009F9F9F00040702002A3D2500FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000B0B0
      B000D6D6D600DDDDDD00C3C3C300B0B0B000B9B9B900D2D2D200C1C1CF009293
      B9007177A9007980A900AEB0BF00B2B2C0008889AD00696F9F006D749A009C9D
      A900C5C4BF00E1DED700F6F3EE00FEFDFB00FFFFFF00F5F3EF00DCD7CF00A3A1
      9A00B0AFAE00FBFBFB000000000000000000DEEDEE00D7E8EB00ADBBBD005354
      57005852F100251CEC008885DD002E2F3300696B6A00D3E2E500C6D4EB004D4B
      E1003A33EC003F3CEB004D4BEC004F4EEB002C23EC00231BED00241DED00241C
      EC00241DEB002820EE006966F0003730EE00241CEC00261CEC00241CED00231B
      ED00251CEA003B38C7009399B400AAB3B4000000000000000000020302000000
      00001A4D0000040D0000050E0000040B0000CFCFCF00EFEFEF00050F0000040D
      0000BFBFBF00DFDFDF00000000000D270000174600000F2E00001A4D00000000
      00000206000000010000000000001A4D0000040C000002030100CFCFCF00BFBF
      BF0013131300000000000000000000000000000000000000000007090800FFFF
      FF000D26000008190000040B0000EFEFEF001339000006110000010200000000
      0000FFFFFF000D26000012360000030A0000AFAFAF00CFCFCF00A0A0A000205F
      0000194C00005F5F5F00BFBFBF008F8F8F00BFBFBF00000000000F160D00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AFAF
      AF00D7D7D700D1D1D1009B9B9B008D8D8D0085858500BBBBBB00B9BAD3008F90
      C700787FBD005968A700929CB900B0B0C9008B8BC300747BB90050609D007F88
      A500B4B3B100BAB8B500D9D6CF00EFEDE800F6F5F200EFEDEA00CCC8C300A3A2
      A000D8D8D700FEFEFE000000000000000000DEECEE00D8E8EB00ADBABF005354
      56005851F000231BEC008985DD00302F310069696B00D0E2E500D7E8ED00DBE7
      EB00D7E8EB00D5E8EB00D8E8EB00B8C7ED002E27EB00231CEC00261FEB00241C
      EC00241CEB00261EEB00281CED00241CEC00221DED003934AE006F6FA300959E
      EA008084ED007374EC006C6CEC00BBC4C6000000000000000000020302000000
      0000DFDFDF00BFBFBF00BFBFBF0000000000EFEFEF00101A0B00121D0D000507
      0300BFBFBF00000000009F9F9F00070B05002E4920000F180B001A2912000000
      0000020301000001000000000000BFBFBF0080808000CFCFCF00000000001A2F
      340043434300000000000000000000000000000000000000000007090800FFFF
      FF00203316001A2912001A29120016231000192812001A2912001A2912001A29
      1200FFFFFF000D150900080D06007F7F7F00192812004040400090909000131E
      0E00BFBFBF00060A050000000000131E0E005F5F5F00BFBFBF0006090500FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ADAD
      AD00CDCDCD00C9C9C900A9A9A900B9B9B9008E8E8E00B4B4B400C4C4E000B9B9
      E400B0B2E0006A7ABD00909EC100BFBFDC00B9B9E500AEB0DE005F6FB2007D8B
      AE00B5B5B5009E9C9C00AAA8A700B5B5B100C0BDBB00B7B7B400ABAAA900CDCD
      CD00FAFAFA00000000000000000000000000DDEBEF00D7E8EB00ADBBBD005554
      56006E6CF200443DEE009593DD002F2E3300686B6B00D3E3E400D7E7EC00D5E8
      EC00D7E8EB00D8E7EC00D8E8EC00B6C1EC002922EB003B36ED00A8B2EA00423D
      EB00231BEC007678D500848BE9002D26EC00251BED00271FE10063647100D5E4
      EA00D7E8EB00D7E8EB00D7E8EB00BBC4C600000000000000000003030200C0C0
      C000C0C0C000C0C0C000C0C0C0001A271300070A05000C1108002D432100080C
      060090909000C0C0C000070B05001E2D1600344D2600121A0D00141D0E00C0C0
      C0000406030001020100C0C0C000C0C0C000C0C0C000A0A0A000181F0E00080E
      0F00CDCDCD000000000000000000000000000000000000000000090A0800C0C0
      C000C0C0C000C0C0C000C0C0C000DFDFDF00EFEFEF00C0C0C000C0C0C000C0C0
      C000C0C0C0000A0F0700070A05007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBF000C0F0700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ABAB
      AB00C2C2C200C4C4C400B5B5B500A7A7A7009B9B9B00C8C8C800D7D8E900CED0
      EE00B6BDE7008E9CD000B5BED400D1D2E300CCCEED00B2B9E4008392C600A4AD
      C300BEBEBE00A8A8A800DCDCDC00BEBEBD00B8B7B700C1C1C000E1E1E100FDFD
      FD0000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00ACB6EB00332AEE00B2BEEA00D8E7EA006A6D
      EB00251EEB00A7B1D400D5E8EB00A8B1E9003D37EC00261DEB0047449700A4AE
      B100D7E8EA00D9E8EB00D7E8EB00BBC4C6000000000000000000504840000806
      0500160B0000160B00001A0D0000381C00008C460000CC660000CC6600007239
      0000231200002010000062310000C1600000CC66000083420000251200002110
      0000763B0000643200001D0E0000180C00001A0D0000140D0500211B13002C4E
      570000000000000000000000000000000000000000000000000041423C000706
      0500110800001209000001000000BFBFBF00663300000A050000150A0000150A
      0000150A000032190000562B00001C0E0000341A0000331A0000331A00004C26
      0000FFFFFF0041200000341A0000341A0000341A0000170F0600251D1400FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AAAA
      AA00BEBEBE00C9C9C900C2C2C200BEBEBE00C5C5C500D8D8D800DDDEE500BEBF
      DD009AA0CF00ACB2D200D7D9E100DADBE200B8B9D700949AC800A3A9C900C9CB
      D300C4C4C400ABABAB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00A6B1EA00B3BEEB00D6E8EC00D7E8E900999F
      EB00322BE500C4D3D900D7E7EC00D5E8EC00C4D3EC00686BEB00504EE400B0BD
      C100D8E7EC00D6E9EB00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000291400000201000012090000964B0000CC660000CC66
      0000CC660000CC660000CC660000AA5500008B46000088440000864300000603
      00000D0600000F0800008A4500008A4500008D4600005B3917004D3D2A00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A9A9
      A900B9B9B900C1C1C100AEAEAE00A1A1A100ABABAB00C8C8C800C3C3D1009B9C
      C3007C82B6008991BC00C7C9D900CDCDDB009B9CC300797EB200838AB500BCBE
      CE00CACACA00ADADAD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D8E9EC00D7E9EB00D7E8EB00D5E8EB00BDCB
      EB00858BEB00D6E9EB00D8E9E900D7E8EB00D7E8EB00D9E8EB00929CEB00D4E4
      EB00D9E8EB00D6E8EC00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000AC560000A7540000C7640000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CB66
      0000C0600000C1600000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A8A8
      A800B2B2B200A9A9A9008D8D8D00929292007D7D7D00A4A4A400ADAEC7008C8D
      C500787FBE005E6DAD00A3ACCB00C2C2DC009495CD007B82C1005A6AA90099A2
      C100D0D0D000AEAEAE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D6E9EA00D6E9EB00D7E8EA00D9E8EA00D5E6
      EB00D0E1EB00D6E9EA00D4E7EA00D6E9EA00D8E7EB00D6E7EA00D8E8EB00DAE7
      ED00D5E8EB00D7E8EB00D7E8EC00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A7A7
      A700ADADAD00A3A3A3009F9F9F00C9C9C9008F8F8F0095959500B0B0CD00B5B5
      E100AEB0DE006878BB0093A1C500C5C5E100BDBDE800B2B4E2006676B800909E
      C300D4D4D400AFAFAF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D8E8ED00D6E9EB00D7E8EB00D7E8
      EB00D7E9EA00D6E8EA00D8E7EB00D6E8EB00D7E8ED00D6E8EB00D6E7EB00D5E7
      EA00D8E9EB00D7E8EB00D8E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A8A8
      A800A8A8A800A6A6A600A0A0A0009D9D9D0088888800A2A2A200BABBCD00C0C2
      E000ACB3DD008492C600AAB3C900C8C9DB00C7C9E700B0B7E1008A98CC00B7C0
      D600D2D2D200B1B1B10000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEBEE00D7E7EC00ADBABE005454
      5600FFFFFF00FCFFFE00E5E5E5002E2F33006A6A6B00D1E1E600D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000B6B6
      B6009B9B9B00A8A8A800A5A5A500A1A1A100A5A5A500B7B7B700C0C1C500B8BA
      CB00A8AEC900ADB4C700C5C7CC00CCCDD100C2C4D500B1B7D200B9C0D300CCCE
      D200B8B8B800BCBCBC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBEBEE00D7E8EA00ADB9BD003D3B
      3E00DCDADB00FAFBFA00B5B4B500262729006E707000D3E3E600D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000DEDE
      DE00A4A4A4009A9A9A00A5A5A500AAAAAA00ACACAC00AEAEAE00AFAFAF00B1B1
      B100B3B3B300B5B5B500B7B7B700B9B9B900BCBCBC00BFBFBF00BCBCBC00ACAC
      AC00ACACAC00DEDEDE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFECEE00D9E8EB00D6E7EA004D52
      57002724290025252800262328003A3D4100A3ACAD00D5E9EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000C3B09E003433
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300503C2A00365D
      67000000000000000000000000000000000000000000000000008B8E81003333
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300503F2D00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FDFD
      FD00DEDEDE00B8B8B800A8A8A800A6A6A600A6A6A600A6A6A600A6A6A600A7A7
      A700A7A7A700A7A7A700A8A8A800A8A8A800A9A9A900AAAAAA00ACACAC00BABA
      BA00DFDFDF00FDFDFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D5E7EA00D4E8EB00CCDC
      DF00ABB8BC00A7B4B700ADB9BC00C9D9DB00D6E7EA00D8E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0EDEF00D9EAEC00DBE9EC00DAE9
      EC00D8E9EC00D9E9EC00DAE9EB00DAE9EB00D8E9EC00D8EBEC00D9E9EC00D9E9
      EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9
      EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9
      EC00D9E9EC00D9E9EC00D9E9EC00BBC6C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000F4F4F400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9C3C400B9C3C400B9C3C400B9C3
      C400B9C3C400B9C3C400B9C3C400BAC2C500B7C3C300B7C3C300B9C3C300BAC2
      C500BAC3C400BAC3C500B9C3C400B7C3C400B7C3C400BAC3C400B9C3C400B7C3
      C300B7C3C200BAC3C500B7C3C300BAC3C500B9C3C300BAC3C400B7C3C500B9C3
      C400B9C3C400BAC0C500B7C3C400B4BABA000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00F9F9F900F5F5F500F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F5F5
      F500F9F9F900FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECEC000000
      0000E4E4E400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D7EBEA00D7EAEB00DAEAED00D8E9EC00D0D6E300C6BD
      D600AE81B700A056A4009638960091238F0090238E00933797009F56A400AF80
      B900C5BED700D0D8E300DBE9EC00D8E9EC00D8E9EC00DAE9ED00D9EAED00DAE9
      EC00D8E9EC00D8E8EE00D9E9ED00BBC6C6000000000000000000000000000000
      00000000000000000000FEFEFE00F8F8F800E8E8E800D8D8D800D1D1D100D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D2D2
      D200D8D8D800E7E7E700F8F8F800FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00F1F1F100E8E8E800E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E4E4E400E4E4E400E5E5E500F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C4C300FEFE
      FE00D9D9D800E4E3E300E4E3E300E4E3E300E4E3E300E4E3E300E4E3E300DDDD
      DD00D3D3D200C5C4C300B9B7B500B5B4B000B4B2AF00ABA9A500BAB9B700BDBC
      BB00C9C8C700F1F1F10000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D9E9EE00D7EAEB00D4DEE800B494BE0098449B009827
      98009A1F99009F1F9E00A31FA200A51FA300A41FA400A51FA200A01F9E009A1E
      98009828950097459B00B593BE00D4DEE800D8E9EB00D9EAED00D9E9EB00D7E9
      EC00D9E8EE00D8EAEB00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000F1F1F100CCCCCD00939398006B6C7A00616779005F68
      7E005F687E005F687E005F687E005F687E005F687E005F687E005F687E006268
      7C006B6C7A0092929700CACACB00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200D1D1D100A5A4A00086857E007A786E00737266007372
      6600737266007372660073726600737266007372660073726600737266007372
      66007A786E0079776D007371650075726700B6B5B30000000000000000000000
      0000000000000000000000000000000000000000000000000000BEBDBB00C6C5
      C400C4C3C200BEBDBB00B5B3B000B1ADA900B4B0A900B4B1AA00B3B0A900B4AF
      A700A8A29B009F9A9000948D8300736D6400968F8700A89F90007D776E00413E
      3B00706D6800908C87009A979200A7A5A200ACAAA700AFADAA00B0AFAC00D8D8
      D80000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D9E9EC00D9E7EB00C3BED4009B559F008F1D8D009B1D9A00A51F
      A400AC20AC00B121AF00B520B400B421B500B620B600B220B500B220B200AD1F
      AD00A31FA4009A1E9A008F1E8F009A559E00C3BCD500D5E7EB00D9E9EB00D8EA
      ED00D7E9EC00D9E8EB00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000B7B7BA0057586C002B33570016265800263C79003754
      950037549500375495003754950037549500375495003754950037549500273E
      7C0017285C002A32570054546A00B5B5B8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBBBB800716E5E005F593E00574F2D00645C3500797045007970
      4500797045007970450079704500797045007970450079704500797045007970
      4500655C35005A522B006B623700645B330098968C0000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBBB800BCBA
      B800B1ACA500B1ADA400A6A097009E988C007B756D0076736700C8C1B600EEE6
      DA00EEE6DA00EEE6DA00F1E9DD00FBF3E700F6EEE200D5D0C700CCC3B400CCC3
      B400CAC1B200C7BEAF00C2B9AA00BBB2A300B3AA9B00706C6400494642007B76
      710098969100A3A29E00F9F9F90000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D9E9EE00B6A1C50090369100931B9200A11DA100AC20AB00B51F
      B500BA21BA00BD21BE00BF22BF00C022C000BF22C000BE21C000BE21BF00B920
      BA00B320B300AD1EAD00A11CA000921B91008F379100B7A2C400D9E8ED00DAE8
      ED00D9EAEB00D8E9EC00D7E9EC00BBC6C6000000000000000000000000000000
      000000000000000000008E909B00263267002A3F7D002C4683004C67A5006884
      C4006884C4006884C4006884C4006884C4006884C4006884C4006884C4004E69
      A7002E4885002C417F00263369008A8D99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B9A91006B643C0082794C0081794C00A2996C00C6BD8F00C6BD
      8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD
      8F00A29A6D008C835700A49C6E00918B6200A5A39A0000000000000000000000
      00000000000000000000000000000000000000000000DBDBDA0099948B00C2BB
      AF00EEE6DA00EEE6DA00EEE6DA00F0E8DC00FAF2E600F5EDE100E4DED200F6F3
      EE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EBEBEB00E8E8EA00DDDDFF00E1E1
      FF00F2F2F400FCFCFC00FEFEFE00F3F3F200DBD5CB00CCC3B400CBC2B300C9C0
      B100C6BDAE00BCB3A400F4F4F40000000000D9E9EC00D8E9EC00D8E9EC00D9E9
      EC00D7E9EC00B69FC20085278400941B92009F1C9E00AD1EAC00B820B700BB21
      BE00C221C200C022C100C322C500C322C500C222C400C223C500C222C300C021
      C100BB21BD00B720B600AC1EAF00A01DA100901B930086248500B4A0C100D6E9
      EC00D8E9EB00DAE8ED00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000989CA700475D8F004E67A30047609B005D78B400738F
      CD00738FCD00738FCD00738FCD00738FCD00738FCD00738FCD00738FCD005F7A
      B60049639D00516AA600475F91009599A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A59D0091896500A59D73009A936800B1A97E00CBC29600CBC2
      9600CBC29600CBC29600CBC29600CBC29600CBC29600CBC29600CBC29600CBC2
      9600B2AA7F009B936900A1996E008B876400AAA9A20000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200CEC6BA00EEE6
      DA00F5F3EF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00D6CDD500C4C4FE009899D800FEFE
      FE00FEFEFE00FEFEFE00E9E9E900C1C4C400E6E5E500F2F2F200F5F5F500FCFC
      FC00E5E5E500BBBABA00FEFEFE0000000000D9E9EB00D8E9EC00D5EAEB00D9E9
      EC00C0B9D00088328A008E1B8E009C1C9E005810590062116100B21FB500BC23
      BF00C023C300C223C400C223C500C322C500C224C500C422C500C323C500BF23
      C200BE23C100BA20BC00B41FB600AB1EAD009F1C9F008F1B8F0087338A00C0B9
      CF00D8E9EE00D9E8ED00D9E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000A3A6AE004F608C005269A200536BA3006983BC007D99
      D4007D99D4007D99D4007D99D4007D99D4007D99D4007D99D4007D99D4006B85
      BE00556DA500546BA40050628E00A0A4AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADACA7008C856800A29B7300A19A7300B7B08800CEC69D00CEC6
      9D00CEC69D00CDC69C00CCC59B00CDC69C00CEC69D00CEC69D00CEC69D00CEC6
      9D00B8B18900A29B73009E976F0087826700B0B0AB0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200CDC6BB00EEE6
      DA00E9E2D800EBE4DB00EDE7DE00EFE9E100F1ECE400F2EEE700F3F0E900F7F4
      EF00FBFAF800FEFEFE00FEFEFE00FEFEFE00CACEFF00AFB7FF007B7ED400BCAC
      B300FEFEFE00DCDCDC00D3FFFF00A1FFFF0043DCFF00BFBEBE00DFDFDF00EAEA
      EA00F4F4F400FBFBFB000000000000000000D8E9EC00D8E9EB00D7EAEB00CDD2
      DF0088438D0088188700961B9A00981A9C001704170001000300310932008D1A
      8F00B920BC00C024C200C423C700C324C600C422C600C124C500C123C400C122
      C500BE22C100BB22BD00B620B800AF1FB500A71CA700971A9A00881987008942
      8C00CDD3DE00D7EBEC00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000AEB0B60057648900576CA1005F75AA00738CC30086A2
      DB0086A2DB0086A2DB0086A2DB0086A2DB0086A2DB0086A2DB0086A2DB00748E
      C6006077AD00586DA30058668A00ACAFB4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B4B00088836C009F987400A7A07C00BDB69100D1CAA400D1CA
      A400D1CAA400C2BB9600B1AB8600C1BA9500D1CAA400D1CAA400D1CAA400D1CA
      A400BDB69100A7A07C009C95710085816B00B8B7B40000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D4CCC000EEE6
      DA00E0D9CF00E1DACF00E2DBD000E3DCD100E4DDD200E5DED300E5DFD400E6E0
      D500E8E2D700E9E4DA00EBE6DD00EDE8E000A3A8FF009BA3FF004145CC00A099
      A000EDEDED00F6F6F600C9FFFF007DFFFF0027DDFE00ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00D7E9EE00D7EBEA00A684
      B0007E157E00911993009F1BA200A81DAC0088188C001F061F00010001000C03
      0C00470C4900A51DA600C123C400C125C500C123C400C123C400C024C300BF22
      C300BD22C200BA21BE00B721BB00B020B500A91CAD009F1AA200901891007D18
      7C00A584AF00DAE9EC00D7E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000B8B9BD00606C89005E71A3006C81B4007D96CC008DA8
      E0008DA8E0008DA8E0008CA7DF008CA7DF008DA8E0008DA8E0008DA8E0007E98
      CF006D82B6005F71A400616C8B00B7B9BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBA00888470009D977700ADA68600C3BC9A00D5CEAB00D5CE
      AB00CBC4A100ADA6850098927300AAA48300C9C29F00D5CEAB00D5CEAB00D5CE
      AB00C3BC9A00ADA686009C95750087847100C1C0BE0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D5CCBF00EFE7
      DB00D9D2C700DAD3C800DBD4C900DCD5CA00DCD5CB00DDD6CB00DED7CC00DFD8
      CD00E0D9CE00E1DACF00E1DBD000E2DCD1009A9BFF007878EF007578DA009E98
      9D000000000000000000B2FEFE0063FEFE0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D7EAEB00D7E9ED00D2DDE5008638
      88008516860097199900A01CA500AC1DAF00B21FB5009D1DA000360A37000402
      030000000000150516006E147000B020B300BF22C300C023C500BF24C300BD24
      C200BC22C200B521BA009C1C9F00A71EAB00AB1DB100A41CA600981999008516
      850086388700D3DEE500D9E9ED00BBC6C6000000000000000000000000000000
      00000000000000000000C5C6C8006E758E006879A8007D92C4008BA6DC0092AE
      E40092AEE40087A2D800718CC1007692C7008DA8DE0092AEE40092AEE4008CA6
      DD007D93C5006879A8006B748D00C3C4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C7C5008B8878009F997D00B9B39500CFC9A900D8D2B200D3CD
      AD00B6B19200A5A08500ACA89200A49F8600B2AC8D00D0CAAA00D8D2B200D8D2
      B200CFC9A900B9B395009F997D008B897A00CACAC90000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D5CCBF00F3EB
      DF00CBC5BA00D4CDC200D5CEC300D6CFC400D6CFC400D7D0C500D8D1C600D8D1
      C600D9D2C700DAD3C800DAD4C900DBD4C9009A9BFF00595FDE004349CD009E98
      9D000000000000000000A8F4F40063FEFE0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8E8EE00D9E9EC00AC93B6007A16
      7A008C188C009B199E00A61BA900AB1EAF00B21FB500B521BB00AB1FAF005A0F
      5C0007020600010001000601060029072A0082188400BA22BF00BD23C200BE23
      C200BD23C200951C9800150316007F168300AE1DB000A61BA9009A199D008D18
      8E007C157900AA93B500D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000D1D1D200798094007080AD00889FD10098B3E80098B3
      E8008BA5DA006F89BB00617AAB00637DAE007791C40090ABDF0098B3E80098B3
      E800889FD1006F80AD00797F9300D0D0D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3D3D200908F8300A19C8300C3BEA300DAD5B700DAD4B700C1BB
      9F00A7A28600AEAB9A00B1B2B100ABAA9E00A8A28600BBB69900D7D2B400DCD6
      B900DAD5B700C4BFA300A19D8300918F8400D5D5D40000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D5CCBE00E5DD
      D100E0D9CE00CFC8BE00CFC9BE00D0C9BF00D1CABF00D1CAC000D2CBC000D2CC
      C100D3CCC100D4CDC200D4CEC300D5CEC3009A9BFF005464DF005462D4009E98
      9D0000000000000000009BE7E7007AFFFF0037E4FF00ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00D5E3E900854488008013
      7E00911792009D189F00A81BA900AD1FB100B21FB700B420BA00BA22BF00BD22
      C2006D14700012031200010101000200000005000500480E4800A21EA600BC23
      C100BB24C100A71FAC00050105005E126000AD1EB100A81BA9009E19A0009117
      920080157D0087438900D4E3E800BBC6C6000000000000000000000000000000
      00000000000000000000DDDEDE00858999007688B5008DA6D8009DB8EC008EA8
      DB00738BBB007087B4007589B5007085B1006E85B4007992C30093AEE0009EB9
      EC008EA7D8007688B500858A9900DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1E1E10097968E00A6A18A00C9C4AB00DFDAC000CBC6AB00A9A4
      8A00B4AF9500B7B7B100959BB300ABADB100B7B39A00A7A28800C4BFA400DDD8
      BE00DFDAC000CAC5AC00A6A28B0097968E00E1E1E10000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D6CDBF00D3CB
      BF00EEE6DA00C9C3B900CAC4BA00CBC4BA00CBC5BB00CCC5BB00CCC6BC00CDC7
      BC00CEC7BD00CEC8BD00CFC8BE00D0C9BE009A9BFE003737CF004044CC009E98
      9D00000000000000000096E1E1006CFEFE0024E0FF00ABACAC00000000000000
      000000000000000000000000000000000000D8EAED00CBCCDB00781E76008414
      8100961693009F19A1008C179000A11BA400B320B600B721BB00B922BD00BB22
      BF00BA23BF009A1C9E002306240000000100000000000301030023072400A21F
      A600BC22C100B31FB900250827002F083000AC1DB000A71BA900A119A1009416
      940086138300771F7300CACCD900BBC6C6000000000000000000000000000000
      00000000000000000000EDEDED009193A0007C8FBC0096B0E30096B0E1007B92
      C0007D92BD008699C1007584AA007A8AB0008599C200788EB9007F97C50099B3
      E40097B1E4007D90BD008F93A000EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF009E9D9700ACA89300D3CFB700E1DDC500C7C2AA00B0AC
      9400C5C0A900AFB1B700808AB2009CA2B700BFBDAF00B2AD9500BCB7A000DCD7
      C000E3DEC700D5D0B900ADA994009D9D9700EEEEEE0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D8CFC100DAD0
      C300EEE6DA00C4BEB400C4BEB500C5BFB600C6C0B600C6C0B700C7C1B700C8C1
      B800C8C2B800C9C3B900CAC3B900CAC4BA009A9BFF003636CE00000094009E98
      9D0000000000000000009DE8E80062FDFD0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000DAE9ED00BEB9CD00781975008713
      8400961594009A17980021061E002506260077147800AC1EAD00BB21BE00BC23
      BF00AC1FAF0075157A001B061B00020000000101000001010000020100004D0D
      4F00BA22BD00B822BB00440C47000E030D00A41CA200A81AA900A318A1009715
      940086138400771A7400BFB9CD00BBC6C6000000000000000000000000000000
      00000000000000000000F8F8F8009CA0A8007286AD008BA5D60090A9D700859B
      C5008DA0C7008393B7008793B6008693B6008797BC008DA0C6008196C00090A9
      D7008CA5D6007386AE009CA0A900F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00A5A4A000ABA89600D6D2BE00D9D5C000C7C3AD00BAB5
      9F00BDBAA9009FA4B5008490BD00909ABE00B1B2B400C2BDA700BCB8A200D0CC
      B700E1DDC900DAD6C200ADAA9700A4A39F00FAFAFA0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200DAD1C300DCD2
      C500F2EADE00B6B0A700BEB8AF00BFB9B000C0BAB000C1BAB100C1BBB200C2BC
      B300C3BDB300C3BDB400C4BEB500C5BFB500A5ACFF004B57D90000009F009E98
      9D000000000000000000A9F3F30067FFFF0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8E8ED00B7AAC5007B1575008812
      84009514930096159400490B490007010600090109002D092C007C167E007014
      7200270727000401040000000000020000000101000001000000020100000802
      090086178700B420B800450D46000200020075137400A51BA500A2189F009A15
      9400881284007A147400B7AAC500BBC6C6000000000000000000000000000000
      00000000000000000000FDFDFD00C4C5C8007B869D007086AF008095BE008699
      BF007B8BAF007E8BAD009DA9CB0096A2C4007A88AA008393B6008A9CC0007F95
      BC007085AE007B869D00C4C5C800FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B9B8B7009C998C00B7B3A100B4AF9C00ADA89400B7B3
      9E00B7B6B000969EB900929ECC00909CC800A1A6B700C2BFB100B3AF9A00B2AE
      9A00BFBBA900BCB8A6009E9B8E00B8B7B5000000000000000000000000000000
      00000000000000000000000000000000000000000000D4CDC300DCD3C500DED3
      C700DBD3C700EEE6DA00B6AFA500B7B0A600B8B1A700B9B2A900BAB3AA00BBB5
      AB00BCB6AC00BDB7AD00BEB8AE00BFB8AF009A9BFF003636D20000009E00B4A1
      AA000000000000000000ACF8F80063FFFF0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00B6A1C000781071008913
      840097149100A2179D00A419A400741272002106200002010300030103000300
      02000301020010030F003C0B3B005F1261000A020A0001000000000003000101
      0000130411004B0D4D0001000200180417008A168800A619A500A1179E009714
      93008913840077117200B4A1C000BBC6C6000000000000000000000000000000
      00000000000000000000FEFEFE00F3F3F300C5C6C9009BA0AA007E889C005E75
      99005B6F98007984A9008A94BA008A94B900747FA500586E9B00526F9D006D7D
      9700979DA800C5C7CA00F3F3F300FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3E3E300AFAEAC009A98910097938800A09C8B00B7B3
      9F00A2A4AA007983AA007985B5007783B3007D86A900A7A8AA00AFAC99009D9A
      8B009A988D009B989100AFAEAB00E4E3E3000000000000000000000000000000
      00000000000000000000000000000000000000000000D6CFC500DFD6C800E1D6
      CA00E1D8CB00EEE6DA009B948900ADA59A00AEA69B00AFA89D00B0A99E00B2AA
      A000B3ACA100B4ADA200B5AEA400B6AFA5009697FB002F2FCA0000009800B19F
      A800D1D1D00000000000B1FDFD0063FFFF0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8EAEB00B3A1BF00781071008711
      8100961390009E169A00A618A200A919A8009B189A00520D5200080208000101
      0000490D49009A1C9B00B720B700B820B9003107310001010000000100000100
      020000000100000101001F0521008E178C00AB1AA700A418A1009F169A009513
      8D008812820078107000B4A1C000BBC6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D2D40074879E00365C
      93004E669C008790B900929AC300929AC300858EB8004F659B00254D8E00526E
      9400BDC1C600FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000D4D4D400BCBCBA00ABABA7009797
      94007D829E00707BAC00727EB100727EB100707BAC007B819D0094949500B0AF
      AC00BFBFBD00D5D5D500F0F0F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D1C800E1D9CC00E3DA
      CE00E3DCCF00E4DCD000EEE6DA00968D8200A49C8F00A59D9000A69E9200A79F
      9300A9A19500AAA29600ABA39700ACA499006C6DD1002535AE0000006D00AC9A
      A200B2ABA000BCBCBA00B3FFFF006DFAFF0020DEFE00ABACAC00000000000000
      000000000000000000000000000000000000D8E8EE00B9AAC50072126F008311
      7D0090128C009A1595009E169A00A61BA400AC1BA800AD1CAE00851686009819
      9700B81FB800B920BD00BB21BD00BB21BD0089188B0009020900000101000201
      0200000000002806270094189200A91CA900A51CA3009F159B009A1496009012
      8C0082107C0076126F00B7A9C400BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000EDEDED008B98A8003667A4003160
      A4006B80B300A0A8D2009CA4D0009BA3CF009DA5D0007C86B700385A9B002256
      9D007A8CA300E8E8E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDCDC008A8E
      9E007C86B3008D99CC0094A0D300939FD2008A96CA007882B100898C9E00DEDE
      DF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D4CD00E3DCD000E5DD
      D200E6DFD400E7E1D600F3EBDF00EEE6DA00D5CDC1009B9284009E9487009F95
      88009F968900A0988A00A29A8D00A0998C0086817600EEE6DA00C4BFB500C9C4
      BB00BFBAAF00AFA89C007BC7C70022C6C6000082A700ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00BFB8CB0070186C00800F
      79008A12850093138E0096179600A01E9E00A31BA400A51AA700AA1CAC00AF1E
      B000B21EB400B51FB700B51FB700B720B600B31FB7002D082C00010201000000
      01002A082A008E179000A61AA600A31EA300A01D9F0099159500931390008A13
      86007E0F780071186C00BFB8CD00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000C8CBCE005E7BA0003B74BB00547C
      B80093A2CC00AFB7DD00A3ABD500A1A9D300A8B0D8009FA7D1005872AA002A5E
      A40055759E00C0C3C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00B0B2B8007B84
      A800919DD0009FABDC00A1ADDF009FABDE0098A4D8008894CA00747DA500ABAD
      B400FCFCFC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBD7D100E6DFD400E8E0
      D600E9E2D800EAE4DA00ECE5DC00EEE6DA00FFF9ED00EEE6DA00EEE6DA00EEE6
      DA00EEE6DA00EEE6DA00EEE6DA00F0E8DC00FFF7EB00D0CAC100BBB6AE00B8B3
      AA00BDB8B000C1BDB400C6C1B800C9C4BB00CCC7BD00CDC8BE00CDC8BE00CAC5
      BC00BAB7AF00B7B7B5000000000000000000D8E9EC00C8CCD800701A6D00790E
      7300841080008E118900971C95009E249C009F1D9F00A21AA100A51CA500AA1B
      A900AB1DAD00B01CB100AF1FB100AE1DAF006C136F0007020600000001003108
      30004C0C4B0018041900530F52009A1F9A009E269C00941692008D118B008310
      7D00790E74006F1A6D00C8CCD800BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000ACB2B9005276A3004379BC006F91
      C500B4BEE100BFC7E700B3BBDF00B0B8DD00B5BDE100AFB7DD007288B9003B6A
      AA00436DA200A6ADB60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000979BA700838F
      BE009DA9DA00A6B2E1009DA9DB009EAADC00A0ACDD00909CD2007883B8009093
      A400ECECEC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDAD600E8E2DB00E9E3
      DC00E9E3DD00EBE6DF00EEE9E100F0EBE300F0EBE400EBE8E400EBE7E200EDE7
      DE00EDE8E100F0EEEB00F2F2F200F4F4F4009495C2008E8EFE006264B600BDBD
      BD00E1E1E100ECECEC00F9F9F900FFFFFF00F9F9F900D4D3D000BBB5AE00B3AD
      A400B9B5AC00BAB6AC00FBFBFB0000000000D9E9EC00D4E2E9007D407F00710E
      6D007F107B0086118400972392009D2E9C009C239B009D1A9D009F1AA000A219
      A300A51BA700A71BA800AB1CAB008616880012031200010002003A0939007814
      7800030103000100010009030A007E217C009E2E9C008F168D00871084008010
      7B00700E6C007E408000D5E3E800BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000A2A9B200537AA8004879B7007E9B
      C900C8D0ED00C9D1ED00BCC4E400B8C0E200BCC4E500B6BEE2008094C0004A75
      B000406EA80099A3AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9DADB008F94A7009BA7
      D300AEBAE500A9B5E1009FABDB00A5B1E000A7B3E1009EAADC008995C900848A
      A000D4D4D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDBDA00E9E4E500E7E2
      E700E7E3E900ECE8E900F0ECE800F4F0EB00F4F0EA00EAE6E000B3B3B300F4F1
      EB00F5F1EB00F4F1EC00F5F3ED00F6F5F4009A9BFF00A2ADFF003D42C900C2B3
      BA00FEFEFE00FEFEFE00B3FFFF0070FFFF001FDEFF00C9C9C900F5F5F500F1F1
      F100D9D9D900E8E8E800F9F9F90000000000D8EAEB00D8E9EC00A791B1006B0F
      6700780F730082107E0091248E00A03B9F009E2E9D009A2099009B1A99009E1A
      9C00A0199F00A419A1009117900020052000050103003B0939009D199C008213
      8000040104000000000011040F00862F86009F389D008B15880080107E00780E
      73006C0F6800A891B100D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000A0A7B000577BA8004C78B0007891
      BD00B8C0DE00BCC4E100C6CEEA00C1C9E700ADB5D800A1A9D1007588B6004D76
      AF004372AA0096A1AE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBEC000848DA400AAB6
      DF00B1BDE700A3AFDA00A9B5E000ADB9E500A2AEDD00A2AEDE00939FD1007680
      9C00B9BABE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDCE000E4E1ED00DCD9
      F400DDDAF700E7E4F400EFEDEF00F2F0EE00F6F4F000E7E5E100B0B0B000F6F3
      EF00F6F3EF00F5F3EE00F5F2EE00F5F2EE00B6B6F400FFFFFF009EA0D9009F98
      9F00EAEAEA00E7E7E700B0FCFC0058FDFD0017D5FF00AEAFAF00E8E8E800EFEF
      EF00F5F5F500FCFCFC000000000000000000D9E8ED00D7E9EC00D2DBE6007932
      7700700D6C007C0E780086198200A34AA200A444A3009E2F9A009A2097009819
      97009A179700971498003307310005010400460B4700951593009B169C009716
      96005F115D00360E36006F276D00A54BA4009E3B9C00821280007D0F78006F0E
      6A0078327800D3DDE700D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000A4A9B1005B7DA500507AB000728B
      B700A6AECF00B0B8D700C8D0EB00C3CBE700A1A9CE008D96C000687EAE004E78
      B0004D75A9009EA7B10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A5A80076839C00A4B0
      D900A3AFDA009CA8D400ADB9E200ABB7E20094A0D000909CCF008995C7006976
      9400A4A6AB000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDCE400E1DFF4007E79
      9E00A9A6D600DCDAFF00EAE9F800F2F1F300F5F4F300E2E1DE0090909000F7F5
      F300F7F5F300F7F5F300F7F5F200F7F5F200F1F1FF00E7E7E700E6E6E8009E98
      9D000000000000000000BAD1D200A9D3D900A7C0C500ABACAC00000000000000
      000000000000000000000000000000000000D9E9EC00D8E8ED00D7EBEC009E80
      A500680C6500720E700080117C00A2479E00B15FAE00A94BA5009F359B009B24
      9700981A9300520B4F0009010800450A45009215910099179500971A9400991E
      97009B299900A43DA000AC57A900AF5FAB00942F8E007D0E7A00740C7000680E
      64009D7FA700D7E9EB00D9E9ED00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000ACB0B600617DA0005581B8007795
      C200B5C0DD00CAD2EB00D4DCF400CFD7F000BBC3E100A1ACD000718CB8005580
      B6005779A400ABB1B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989DA0006A7A9200A3B0
      D400B4C0E700B3BFE600BCC8ED00B7C3EA00A4B0DC009CA8D7008794C100616F
      8B009EA1A6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABD00E1DEF600B9B6
      E7009C98CD00D2D0FF00E0DEFF00EBE9FC00F1F0F700DAD9DC00C9C9C900F8F7
      F500F8F7F500F8F7F500F8F7F400F3F2EF00F1F1FF00E0E0EF00E6E6E8009E98
      9D000000000000000000C3D1D100C0C0C000B4BFBF00ABACAC00000000000000
      000000000000000000000000000000000000D6EAEB00D8E9EC00D8E8EE00CDD1
      DD00783B79006B0D6700770D72008D2B8800B46CB100B972B600B05CAE00A744
      A2009D3197005B1857005A135800931C8F00981C92009B2195009D299800A338
      9D00AA4EA700B567B200BC76B800A956A40081137C00770E72006B0D6800793B
      7B00CCD2DE00D7EAEB00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000B8BBBE00667F9D005E8AC100648D
      C3009DB5DA00D4DEF500DBE3F800D6DEF500CFD7F100A7B5D5007290BB005E88
      BC00627E9F00BDC0C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000969C9F005C7384009CAD
      C900CAD6F700CDD9FA00C9D5F800C5D1F400BECAF000B5C1EA008A99BE00596A
      81009BA0A3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900E6E4F500D4D2
      FB007571AD008C8AD600D8D6FF00DBDAFF00E5E5FF00CFCFDD00E1E0E500F4F2
      F300F6F4F300F6F5F400F1F0EF00EAE6E100E4E0ED00C5BFCC00D9D8DA009E98
      9D000000000000000000C3D1D100B5BEBF00B4BFBF00ABACAC00000000000000
      000000000000000000000000000000000000D9EAED00D8E9EC00D8E9EC00D8E9
      EB00BDB8CA00732872006D0C6900780D73009F479A00C188BF00C78DC300C07B
      BC00B566B100A852A100A2459C00A744A000A944A200AC4DA600B25CAD00B970
      B700C485BF00C78FC500B873B300861E8300770E71006F0C690072287100BCB7
      CB00D7E9EB00DAE9EC00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000D0D1D30073859B005F8AC0005889
      C600608CC6008CAAD400BACAE700CAD5EE00B2C0DD00859CC0006D8FBB00618A
      BD0071869F00D5D6D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000979FA1005A7C850083A4
      B100A0BCCD00A4BDD100A7BDD500ADC0DC00B3C3E500B0BEE5007E92B000506A
      78009BA2A4000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F5F5FE00DFDD
      F500CECCFB00C4C4E8007876DE009999E300DCDCFF00C5C4E500E6E4F400ECEA
      EC00EDEBE800EBEBEA00EDE9E400ABA9A600DACCCC00E3D5D500DED0D000C5C4
      C40000000000C9C5C500D9D8D800D8D5D500DEDDDD00FEFEFE00000000000000
      000000000000000000000000000000000000D9E9ED00D6E9EB00DBEAEC00D7E9
      EB00D8E8ED00AD9CB8006D1A6800710C6A0079117400A2539D00CA97C700D8AF
      D600D5ABD300D1A1CD00CD97C900CB92C700CB92C900CD9ACB00D5A5D000D8AE
      D500D5A9D100BD80BA008B258400790E7000700B6A006B196700AD9CBA00D8E9
      EB00D8EAEB00D8E9ED00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0009AA1AA005B7CA4005C8C
      C8005086CA004C81C300618BC3007392BE007591B8007393BB007396C2005F80
      AD008E99A700F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCC0C000768F910081AC
      AE008BB5B8008AB3B8008BB0B9008FB1BD0094B3C40093B0C5007294A2006880
      8400BDC0C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDBDB00E3E1
      E700DCDAF000CFCDF6009A98DD008787E1005858EB005F5EE600B9B8C500F1EF
      F300F2F0EC00E7E5E100CECAC500EAE8E300F1EFEA00B1B1B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9ED00AF9DB900762A73006E0C6700770B700098419100C28E
      BF00DAB7D800E5CAE300E6CFE500E8D0E700E7D0E700E7CDE500E0C5DE00D2A8
      CF00B16FAD0087218000770D6D006E0C6900752A7100AF9EBA00D7EAED00DBE9
      EB00D7E9ED00DAE9EB00D8E9ED00BBC6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDEDF008E98A400597B
      A6005184C4004B84CA00316CB40031619A005F81AC00799AC2006A8CB7006E81
      9B00C7C9CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000A6ADAD00819D
      A00094BCBE009CC4C7009CC4C70096C0C2008FB8BB0082ACAF0072929500A2AA
      AB00EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B3B3
      B200E1DCE000DED9E600D8D4EE00CDC9F300C8C4F000BEBCE000ACAAB800CAC7
      C900E0DDD600E7E3DD00EAE6E000EDE8E300B7B6B60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D6E7EB00BDB9CC00854A85006B0F6500710C6900821A
      7B0096409000B879B300CA99C500D0A5CD00CDA2CA00C38EBE00AD62A5008A2C
      83007A127200720D6A006A0E6500854B8600BEB9CD00D4E8E900D9EAEA00D8E7
      ED00D8EAEC00D9EAEB00D8E9EC00BBC6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E2E2009AA2
      AC0069809D005677A3003B679C00365D900058769E006983A30076869A00B6BA
      BE00F6F6F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E300A5AC
      AC0085989A0086A4A6008EB1B3008DB2B40085A5A700839A9B00A4ACAC00E3E3
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00D8D4D000D9D4D800DCD7E100DAD6E400DCD8E200E1DCDF00E4DF
      DB00E8E3DB00E8E4DC00E3DFD700C1C1C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8EAEB00D8E9EC00D1DDE400A78EB0007C387A007017
      6B006D0D6500710D6900730C6C00760C6D00740C6A00730B6B00720C6900700C
      670070196A007C377A00A78FB100D1DDE400D8E9EC00DAE9EC00DAE8ED00D6E9
      EC00D8EAEB00D7E9EC00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00CED0D200B4B9BF009FA7B100939CA700939AA400A2A7AE00CFD1D200F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEEE
      EE00C5C7C700A6ACAC009EA6A7009EA6A700A6ACAC00C5C7C700EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F4F4F400B1AFAE00D3CCC800BDB8B200B2B0
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E8ED00D8E9EC00D8E9ED00D9E9EC00D8E9EC00CDD6E000C0B9
      CC009D77A100834B8300742771006A1165006A13640073287000864985009C78
      A200C0B9CD00CDD7DF00DAE9ED00D8E9EC00DAE9EC00D7E9ED00D8E9ED00D8EA
      EB00D8E8EC00D9EAED00D8E9EC00BBC6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EB00DAE8EC00D8EAEC00D8E9ED00D8EAEB00D7EAEB00D9E8
      EE00D7E9EC00D8E9EC00D8E8EB00DAE9EC00DAE8EE00D9E9ED00D8E9EC00D9EA
      ED00D7E9EC00D8E8EC00D7E8EB00D8EAEC00D6EAEC00DAE9EC00D9E9EB00D7E9
      EC00D9EAED00D7E9EB00D7E9EC00BBC6C600424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000FFFFFFFF00000000FFFFFFFF
      00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FB3FDF7F
      00000000FFFFFFFF00000000FCE024FF00000000FFFEE3FF00000000FE0404FF
      00000000FF0403FF00000000FA0004FF00000000FF00007F00000000FE4804FF
      00000000FF00007F00000000FD0804FF00000000FF00001F00000000FD1844FF
      00000000FF00000F00000000FF9844FF00000000FC00000F00000000FFFFFFFF
      00000000F000000F00000000FF4602FF00000000F000000F00000000FFF801FF
      00000000F000001F00000000FF8001FF00000000F000000F00000000FF8001FF
      00000000F000000F00000000FFC001FF00000000E000000F00000000FF8000FF
      00000000E000000F00000000EF8001FF00000000E000000F00000000EE0001FF
      00000000F800001F00000000FF0003FF00000000F800007F00000000FE0000FF
      00000000F800007F00000000FE0002FF00000000F800007F00000000FE0002FF
      00000000FF80007F00000000FE0007FF00000000FF80007F00000000FD0008FF
      00000000FF8010FF00000000FC8007FF00000000FF841FFF00000000FFC00DFF
      00000000FFFE7FFF00000000FFC003FF00000000FFFFFFFF00000000FFC000FF
      00000000FFFFFFFF00000000FFF000FF00000000FFFFFFFF00000000FFF01FFF
      00000000FFFFFFFF00000000FFE90FFFFFFFFFFF00000000FFFFFFFFFFFFFFFF
      FC00003F00000000FFFFFFFFFFFFFFFFF800001F00000000FFFFFFFFFFFFFFFF
      F000000F00000000E000000FE0000007F000000F00000000E000000FC0000007
      F000000F00000000E000000FC0000007F000000F00000000E000000FC0000007
      E000000F00000000E000000FC0000007E000000F00000000E000000FC0000007
      E000000F00000000E000000FC0000007E000000F00000000C0000007C0000007
      E000000F00000000C0000007C0000007E000000700000000D3003217C0000007
      E000000300000000D0001207C0000007E000000300000000D0401227C0000007
      E000000300000000D0401207C0000007E000000300000000D04013C7C0000007
      E000000300000000D0411207C0000007E000000300000000D0401207C0000007
      E000000300000000D0021207C0000007E000000300000000D1041227C0000007
      E000000700000000C0000007C0000007E000000F00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000FFFFFFFFFFFFFFFF
      FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0003FFF00000000
      FE0001FFFFFFFFFFD0003FFF00000000FC0000FFF800007FC00003FF00000000
      FC0000FFF800007FC000000F00000000FC0000FFF800007FC000000100000000
      FC0000FFF800007F8000000100000000FC0000FFF800007F8000000100000000
      FC0000FFF800007F8000000300000000FC0000FFF800007F8000003F00000000
      FC0000FFF800007F80000C3F00000000FC0000FFF800007F80000C3F00000000
      FC0000FFF800007F80000C3F00000000FC0000FFF800007F80000C3F00000000
      FC0000FFF800007F80000C3F00000000FC0000FFF800007F80000C3F00000000
      FC0000FFFC0000FF80000C3F00000000FC0000FFFC0000FF8000043F00000000
      FF8003FFFE0001FF8000003F00000000FF0003FFFFC00FFF8000003F00000000
      FF0003FFFF8007FF8000000300000000FF0003FFFF8007FF8000000100000000
      FF0003FFFF8007FF8000000100000000FF0003FFFF8007FF8000000300000000
      FF0003FFFF8007FF80000C3F00000000FF0003FFFF8007FF80000C3F00000000
      FF0003FFFF8007FF80000C3F00000000FF0003FFFF8007FF8000083F00000000
      FF0003FFFF8007FFC0003FFF00000000FF8007FFFF8007FFE0007FFF00000000
      FFC007FFFFC00FFFF000FFFF00000000FFE00FFFFFE01FFFFC0FFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 288
    Top = 128
    object N5: TMenuItem
      Caption = #38626#38283
      OnClick = N5Click
    end
    object N3: TMenuItem
      Caption = #34907#26448
      object N4: TMenuItem
        Caption = #35336#20729#28165#21934
        Hint = 'FRM'
        OnClick = N4Click
      end
    end
    object N7: TMenuItem
      Caption = #20854#20182
      OnClick = N7Click
    end
  end
end
