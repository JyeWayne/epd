inherited FrmTrauma: TFrmTrauma
  Tag = 9999
  Left = 294
  Top = 143
  BorderIcons = [biSystemMenu]
  Caption = 'FrmTrauma'
  ClientHeight = 732
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Height = -16
  Font.Name = 'Courier'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited MySBar: TStatusBar
    Top = 674
    Width = 957
  end
  object ScrollBox1: TScrollBox [1]
    Tag = 9999
    Left = 0
    Top = 0
    Width = 957
    Height = 674
    VertScrollBar.Position = 732
    Align = alClient
    TabOrder = 1
    OnMouseWheelDown = ScrollBox1MouseWheelDown
    OnMouseWheelUp = ScrollBox1MouseWheelUp
    object Pnlbasic: TPanel
      Left = 0
      Top = -732
      Width = 936
      Height = 108
      Align = alTop
      Color = clSkyBlue
      TabOrder = 0
      object Shape6: TShape
        Left = 1
        Top = 1
        Width = 934
        Height = 106
        Align = alClient
        Brush.Color = clSkyBlue
      end
      object Label1: TLabel
        Left = 34
        Top = 20
        Width = 45
        Height = 16
        Caption = 'Name:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 219
        Top = 20
        Width = 117
        Height = 16
        Caption = 'Chart number:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 466
        Top = 20
        Width = 36
        Height = 16
        Caption = 'Age:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 635
        Top = 20
        Width = 36
        Height = 16
        Caption = 'Sex:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 756
        Top = 20
        Width = 45
        Height = 16
        Caption = 'Date:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 34
        Top = 49
        Width = 153
        Height = 16
        Caption = 'Trauma mechanism:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 553
        Top = 79
        Width = 108
        Height = 16
        Caption = 'Event to ED:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object A_03_04_1_1: TLabel
        Left = 832
        Top = 79
        Width = 63
        Height = 16
        Caption = 'minutes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
      end
      object A_01_01_3_0: TEdit
        Left = 79
        Top = 20
        Width = 133
        Height = 17
        Hint = 'Name:'
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        Text = 'A_01_01_3_0'
      end
      object A_01_02_3_0: TEdit
        Left = 338
        Top = 20
        Width = 103
        Height = 18
        Hint = 'Chart number:'
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 1
        Text = 'A_01_02_3_0'
      end
      object A_01_03_3_0: TEdit
        Left = 503
        Top = 20
        Width = 121
        Height = 19
        Hint = 'Age:'
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        Text = 'A_01_03_3_0'
      end
      object A_01_04_3_0: TEdit
        Left = 671
        Top = 20
        Width = 62
        Height = 17
        Hint = 'Sex:'
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 3
        Text = 'A_01_04_3_0'
      end
      object A_01_05_3_1: TEdit
        Left = 800
        Top = 20
        Width = 99
        Height = 17
        Hint = 'Date:'
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 4
        Text = 'A_01_05_3_1'
      end
      object A_02_01_3_1: TEdit
        Left = 196
        Top = 49
        Width = 693
        Height = 24
        Hint = 'Trauma mechanism:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'A_02_01_3_1'
      end
      object A_03_01_2_0: TCheckBox
        Left = 34
        Top = 79
        Width = 119
        Height = 17
        Caption = 'First aid'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object A_03_02_2_0: TCheckBox
        Left = 196
        Top = 79
        Width = 322
        Height = 17
        Caption = 'Transferred from other hospital'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object A_03_03_3_0: TEdit
        Left = 665
        Top = 79
        Width = 157
        Height = 24
        Hint = 'Event to ED:_minutes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Text = 'A_03_03_3_0'
      end
    end
    object Pnlprimary: TPanel
      Left = 0
      Top = -624
      Width = 936
      Height = 692
      Align = alTop
      Caption = 'Pnlprimary'
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 934
        Height = 36
        Align = alTop
        Alignment = taLeftJustify
        BiDiMode = bdRightToLeft
        Color = clMoneyGreen
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #32048#26126#39636
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        object Shape3: TShape
          Left = 1
          Top = 1
          Width = 932
          Height = 34
          Align = alClient
          Brush.Color = clMoneyGreen
        end
        object B_01_01_1_1: TLabel
          Left = 8
          Top = 5
          Width = 140
          Height = 21
          Caption = 'Primary Survey'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 240
          Top = 8
          Width = 45
          Height = 16
          Caption = 'Time:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object B_02_01_3_1: TEdit
          Left = 288
          Top = 6
          Width = 96
          Height = 24
          Hint = 'Time:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'B_02_01_3_1'
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 37
        Width = 934
        Height = 87
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 24
          Top = 32
          Width = 60
          Height = 19
          Caption = 'Airway'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape2: TShape
          Left = 123
          Top = 1
          Width = 810
          Height = 85
          Align = alRight
          Brush.Color = 15134935
        end
        object Label12: TLabel
          Left = 600
          Top = 29
          Width = 36
          Height = 16
          Caption = 'Fix '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object B_03_07_1_1: TLabel
          Left = 828
          Top = 29
          Width = 18
          Height = 16
          Caption = 'cm'
        end
        object B_03_02_2_1: TCheckBox
          Left = 149
          Top = 4
          Width = 211
          Height = 17
          Caption = 'Patent, with O2 mask,'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object B_03_03_2_1: TCheckBox
          Left = 361
          Top = 4
          Width = 333
          Height = 17
          Caption = 'Neck collar for C-spine protection'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object B_03_04_2_0: TCheckBox
          Left = 149
          Top = 29
          Width = 304
          Height = 17
          Caption = 'Endotracheal tube intubation,Fr. '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object B_03_07_2_0: TCheckBox
          Left = 149
          Top = 54
          Width = 328
          Height = 17
          Caption = 'Surgical airway,Reason and method: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object B_03_05_3_0: TEdit
          Left = 457
          Top = 28
          Width = 137
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'B_03_05_3_0'
        end
        object B_03_06_3_0: TEdit
          Left = 630
          Top = 29
          Width = 193
          Height = 24
          Hint = 'Fix_cm'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'B_03_06_3_0'
        end
        object B_03_08_3_1: TEdit
          Left = 477
          Top = 54
          Width = 369
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = 'B_03_08_3_1'
        end
        object QRLabel7: TQRLabel
          Left = 127
          Top = 6
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            336.020833333333300000
            15.875000000000000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 124
        Width = 934
        Height = 172
        Align = alTop
        TabOrder = 2
        object B_04_01_1_1: TLabel
          Left = 16
          Top = 80
          Width = 80
          Height = 19
          Caption = 'Breathing'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 123
          Top = 1
          Width = 810
          Height = 170
          Align = alRight
          Brush.Color = 15134935
        end
        object B_04_02_1_1: TLabel
          Left = 128
          Top = 5
          Width = 73
          Height = 13
          Caption = 'Finding:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object B_04_03_1_0: TLabel
          Left = 148
          Top = 28
          Width = 144
          Height = 16
          Caption = 'Breathing sound:'
          Transparent = True
        end
        object Label13: TLabel
          Left = 356
          Top = 52
          Width = 9
          Height = 16
          Caption = '('
        end
        object Label14: TLabel
          Left = 474
          Top = 52
          Width = 9
          Height = 16
          Caption = ')'
        end
        object Label15: TLabel
          Left = 356
          Top = 76
          Width = 9
          Height = 16
          Caption = '('
        end
        object Label16: TLabel
          Left = 473
          Top = 76
          Width = 9
          Height = 16
          Caption = ')'
        end
        object B_04_17_1_1: TLabel
          Left = 523
          Top = 5
          Width = 91
          Height = 13
          Caption = 'Treatment:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 730
          Top = 28
          Width = 9
          Height = 16
          Caption = '('
        end
        object Label19: TLabel
          Left = 851
          Top = 28
          Width = 9
          Height = 16
          Caption = ')'
        end
        object Label20: TLabel
          Left = 731
          Top = 52
          Width = 9
          Height = 16
          Caption = '('
        end
        object Label21: TLabel
          Left = 851
          Top = 52
          Width = 9
          Height = 16
          Caption = ')'
        end
        object Label22: TLabel
          Left = 543
          Top = 76
          Width = 24
          Height = 13
          Caption = 'Fr.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 669
          Top = 76
          Width = 32
          Height = 13
          Caption = 'Fix '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 812
          Top = 76
          Width = 18
          Height = 16
          Caption = 'cm'
          Transparent = True
        end
        object Label25: TLabel
          Left = 541
          Top = 100
          Width = 261
          Height = 16
          Caption = 'Initial amount of chest tube:'
          Transparent = True
        end
        object Label26: TLabel
          Left = 883
          Top = 96
          Width = 18
          Height = 16
          Caption = 'cm'
          Transparent = True
        end
        object Label27: TLabel
          Left = 541
          Top = 124
          Width = 306
          Height = 16
          Caption = 'Content: Air, Fresh blood, others:'
          Transparent = True
        end
        object B_04_04_2_0: TCheckBox
          Left = 385
          Top = 28
          Width = 104
          Height = 17
          Caption = 'decrease,'
          TabOrder = 0
        end
        object B_04_05_2_0: TCheckBox
          Left = 261
          Top = 52
          Width = 101
          Height = 17
          Caption = 'crackles,'
          TabOrder = 1
        end
        object B_04_06_2_0: TCheckBox
          Left = 365
          Top = 52
          Width = 31
          Height = 17
          Caption = 'L,'
          TabOrder = 2
        end
        object B_04_07_2_0: TCheckBox
          Left = 396
          Top = 52
          Width = 32
          Height = 17
          Caption = 'R,'
          TabOrder = 3
        end
        object B_04_08_2_1: TCheckBox
          Left = 428
          Top = 52
          Width = 45
          Height = 17
          Caption = 'Bil.'
          TabOrder = 4
        end
        object B_04_09_2_0: TCheckBox
          Left = 128
          Top = 76
          Width = 229
          Height = 17
          Caption = 'Subcutaneous emphysema,'
          TabOrder = 5
        end
        object B_04_10_2_0: TCheckBox
          Left = 364
          Top = 76
          Width = 32
          Height = 17
          Caption = 'L,'
          TabOrder = 6
        end
        object B_04_11_2_0: TCheckBox
          Left = 395
          Top = 76
          Width = 33
          Height = 17
          Caption = 'R,'
          TabOrder = 7
        end
        object B_04_12_2_1: TCheckBox
          Left = 427
          Top = 76
          Width = 46
          Height = 17
          Caption = 'Bil.'
          TabOrder = 8
        end
        object B_04_13_2_0: TCheckBox
          Left = 128
          Top = 100
          Width = 193
          Height = 17
          Caption = 'Trachea deviation,'
          TabOrder = 9
        end
        object B_04_14_2_1: TCheckBox
          Left = 153
          Top = 124
          Width = 243
          Height = 17
          Caption = 'Jugular vein engorgement'
          TabOrder = 10
        end
        object B_04_15_2_0: TCheckBox
          Left = 128
          Top = 147
          Width = 210
          Height = 17
          Caption = 'Paradoxical movement,'
          TabOrder = 11
        end
        object B_04_16_2_1: TCheckBox
          Left = 335
          Top = 147
          Width = 180
          Height = 17
          Caption = 'Open pneumothorax'
          TabOrder = 12
        end
        object B_04_18_2_0: TCheckBox
          Left = 522
          Top = 28
          Width = 211
          Height = 17
          Caption = 'Needle decompression,'
          TabOrder = 13
        end
        object B_04_19_2_0: TCheckBox
          Left = 740
          Top = 28
          Width = 31
          Height = 17
          Caption = 'L,'
          TabOrder = 14
        end
        object B_04_20_2_0: TCheckBox
          Left = 773
          Top = 28
          Width = 32
          Height = 17
          Caption = 'R,'
          TabOrder = 15
        end
        object B_04_21_2_1: TCheckBox
          Left = 806
          Top = 28
          Width = 45
          Height = 17
          Caption = 'Bil.'
          TabOrder = 16
        end
        object B_04_22_2_0: TCheckBox
          Left = 522
          Top = 52
          Width = 207
          Height = 17
          Caption = 'Chest tube insertion,'
          TabOrder = 17
        end
        object B_04_23_2_0: TCheckBox
          Left = 740
          Top = 52
          Width = 31
          Height = 17
          Caption = 'L,'
          TabOrder = 18
        end
        object B_04_24_2_0: TCheckBox
          Left = 773
          Top = 52
          Width = 32
          Height = 17
          Caption = 'R,'
          TabOrder = 19
        end
        object B_04_25_2_1: TCheckBox
          Left = 806
          Top = 52
          Width = 45
          Height = 17
          Caption = 'Bil.'
          TabOrder = 20
        end
        object B_04_30_3_0: TCheckBox
          Left = 523
          Top = 148
          Width = 81
          Height = 17
          Caption = 'Others:'
          TabOrder = 21
        end
        object B_04_26_3_0: TEdit
          Left = 568
          Top = 76
          Width = 94
          Height = 21
          Hint = 'Fr.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          Text = 'B_03_05_3_0'
        end
        object B_04_27_3_1: TEdit
          Left = 702
          Top = 76
          Width = 102
          Height = 21
          Hint = 'Fix_cm'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          Text = 'B_03_06_3_0'
        end
        object B_04_28_3_1: TEdit
          Left = 801
          Top = 100
          Width = 79
          Height = 21
          Hint = 'Initial amount of chest tube:_cm'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
          Text = 'B_04_28_3_1'
        end
        object B_04_29_3_1: TEdit
          Left = 845
          Top = 124
          Width = 71
          Height = 21
          Hint = 'Content: Air, Fresh blood, others:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          Text = 'Edit3'
        end
        object B_04_31_3_1: TEdit
          Left = 605
          Top = 148
          Width = 112
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          Text = 'Edit3'
        end
        object B_04_32_2_0: TCheckBox
          Left = 297
          Top = 28
          Width = 78
          Height = 17
          Caption = 'normal'
          TabOrder = 27
        end
        object QRLabel6: TQRLabel
          Left = 128
          Top = 28
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            338.666666666666700000
            74.083333333333330000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 296
        Width = 934
        Height = 169
        Align = alTop
        TabOrder = 3
        object B_05_01_1_1: TLabel
          Left = 16
          Top = 88
          Width = 92
          Height = 19
          Caption = 'Circulation'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape7: TShape
          Left = 123
          Top = 1
          Width = 810
          Height = 167
          Align = alRight
          Brush.Color = 15134935
        end
        object Label29: TLabel
          Left = 152
          Top = 8
          Width = 24
          Height = 13
          Caption = 'HR:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 283
          Top = 8
          Width = 36
          Height = 16
          Caption = 'bpm,'
        end
        object Label31: TLabel
          Left = 318
          Top = 8
          Width = 24
          Height = 13
          Caption = 'BP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 449
          Top = 8
          Width = 36
          Height = 16
          Caption = 'mmHg'
        end
        object Label33: TLabel
          Left = 498
          Top = 8
          Width = 120
          Height = 13
          Caption = 'Pulse oximeter:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 725
          Top = 8
          Width = 135
          Height = 16
          Caption = '% O2 saturation'
        end
        object Label37: TLabel
          Left = 488
          Top = 59
          Width = 9
          Height = 16
          Caption = '('
        end
        object Label38: TLabel
          Left = 672
          Top = 59
          Width = 9
          Height = 16
          Caption = ')'
        end
        object Label41: TLabel
          Left = 320
          Top = 137
          Width = 36
          Height = 16
          Caption = 'U,WB'
        end
        object Label43: TLabel
          Left = 472
          Top = 137
          Width = 9
          Height = 16
          Caption = 'U'
        end
        object Label11: TLabel
          Left = 148
          Top = 59
          Width = 153
          Height = 16
          Caption = 'Pelvic stability:'
        end
        object Label35: TLabel
          Left = 397
          Top = 32
          Width = 45
          Height = 16
          Caption = 'FAST:'
        end
        object B_05_02_3_0: TEdit
          Left = 177
          Top = 8
          Width = 102
          Height = 21
          Hint = 'HR:_bpm,'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object B_05_03_3_1: TEdit
          Left = 343
          Top = 8
          Width = 102
          Height = 21
          Hint = 'BP:_mmHg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object B_05_04_3_1: TEdit
          Left = 619
          Top = 8
          Width = 102
          Height = 21
          Hint = 'Pulse oximeter:_% O2 saturation'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'B_05_04_3_1'
        end
        object B_05_05_2_1: TCheckBox
          Left = 128
          Top = 33
          Width = 249
          Height = 17
          Caption = 'Control external bleeding'
          TabOrder = 3
        end
        object B_05_09_2_0: TCheckBox
          Left = 312
          Top = 59
          Width = 85
          Height = 17
          Caption = 'Stable,'
          TabOrder = 4
        end
        object B_05_10_2_0: TCheckBox
          Left = 396
          Top = 59
          Width = 93
          Height = 17
          Caption = 'Unstable'
          TabOrder = 5
        end
        object B_05_11_2_0: TCheckBox
          Left = 499
          Top = 59
          Width = 82
          Height = 17
          Caption = 'vertical,'
          TabOrder = 6
        end
        object B_05_12_2_0: TCheckBox
          Left = 586
          Top = 59
          Width = 83
          Height = 17
          Caption = 'rotational'
          TabOrder = 7
        end
        object B_05_13_2_1: TCheckBox
          Left = 208
          Top = 85
          Width = 319
          Height = 17
          Caption = 'Pelvic sling for unstable pelvis'
          TabOrder = 8
        end
        object B_05_14_2_0: TCheckBox
          Left = 128
          Top = 111
          Width = 274
          Height = 17
          Caption = 'IV line, Fr.16 x2 or others:'
          TabOrder = 9
        end
        object B_05_15_3_1: TEdit
          Left = 399
          Top = 111
          Width = 111
          Height = 24
          Hint = 'others:'
          TabOrder = 10
          Text = 'B_05_15_3_1'
        end
        object B_05_16_2_1: TCheckBox
          Left = 545
          Top = 111
          Width = 256
          Height = 17
          Caption = 'N/S or L-R solution 2000ml'
          TabOrder = 11
        end
        object B_05_17_2_0: TCheckBox
          Left = 128
          Top = 137
          Width = 81
          Height = 17
          Caption = 'BT:PRBC'
          TabOrder = 12
        end
        object B_05_18_3_0: TEdit
          Left = 213
          Top = 137
          Width = 102
          Height = 21
          Hint = 'PRBC_U,'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          Text = 'B_03_06_3_0'
        end
        object B_05_19_3_1: TEdit
          Left = 359
          Top = 137
          Width = 111
          Height = 21
          Hint = 'WB_U'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Text = 'B_03_06_3_0'
        end
        object B_05_20_2_0: TCheckBox
          Left = 545
          Top = 139
          Width = 84
          Height = 17
          Caption = 'Others:'
          TabOrder = 15
        end
        object B_05_21_3_1: TEdit
          Left = 628
          Top = 139
          Width = 259
          Height = 24
          TabOrder = 16
          Text = 'Edit3'
        end
        object B_05_07_2_0: TCheckBox
          Left = 448
          Top = 32
          Width = 97
          Height = 17
          Caption = 'negative'
          TabOrder = 17
        end
        object B_05_08_2_0: TCheckBox
          Left = 552
          Top = 32
          Width = 97
          Height = 17
          Caption = 'positive'
          TabOrder = 18
        end
        object QRLabel3: TQRLabel
          Left = 130
          Top = 7
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            343.958333333333300000
            18.520833333333330000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 378
          Top = 33
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            1000.125000000000000000
            87.312500000000000000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = 129
          Top = 59
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            341.312500000000000000
            156.104166666666700000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 465
        Width = 934
        Height = 59
        Align = alTop
        TabOrder = 4
        object B_06_01_1_1: TLabel
          Left = 16
          Top = 22
          Width = 81
          Height = 19
          Caption = 'Disability'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape8: TShape
          Left = 123
          Top = 1
          Width = 810
          Height = 57
          Align = alRight
          Brush.Color = 15134935
        end
        object Label45: TLabel
          Left = 151
          Top = 10
          Width = 32
          Height = 13
          Caption = 'GCS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 261
          Top = 10
          Width = 64
          Height = 13
          Caption = ', Pupil:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object B_06_02_3_0: TEdit
          Left = 187
          Top = 10
          Width = 71
          Height = 21
          Hint = 'GCS:_,'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'E V M'
        end
        object B_06_03_3_1: TEdit
          Left = 327
          Top = 10
          Width = 55
          Height = 21
          Hint = 'Pupil:_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '_/_'
        end
        object B_06_04_2_0: TCheckBox
          Left = 398
          Top = 10
          Width = 163
          Height = 17
          Caption = 'Limbs weakness,'
          TabOrder = 2
        end
        object B_06_05_2_1: TCheckBox
          Left = 556
          Top = 10
          Width = 173
          Height = 17
          Caption = 'Limbs numbness'
          TabOrder = 3
        end
        object B_06_06_2_1: TCheckBox
          Left = 128
          Top = 37
          Width = 305
          Height = 17
          Caption = 'Not checked due to unconscious'
          TabOrder = 4
        end
        object QRLabel2: TQRLabel
          Left = 129
          Top = 10
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            341.312500000000000000
            26.458333333333330000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 524
        Width = 934
        Height = 167
        Align = alClient
        TabOrder = 5
        object B_07_01_1_1: TLabel
          Left = 17
          Top = 24
          Width = 76
          Height = 19
          Caption = 'Exposure'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape9: TShape
          Left = 123
          Top = 1
          Width = 810
          Height = 165
          Align = alRight
          Brush.Color = 15134935
        end
        object Label48: TLabel
          Left = 379
          Top = 107
          Width = 45
          Height = 16
          Caption = 'Burn:'
        end
        object Label49: TLabel
          Left = 512
          Top = 107
          Width = 54
          Height = 16
          Caption = '% TBSA'
        end
        object Label50: TLabel
          Left = 376
          Top = 136
          Width = 63
          Height = 16
          Caption = 'Degree:'
        end
        object Image1: TImage
          Left = 688
          Top = 8
          Width = 153
          Height = 153
          Stretch = True
        end
        object Label36: TLabel
          Left = 402
          Top = 30
          Width = 45
          Height = 16
          Caption = 'size:'
        end
        object Label39: TLabel
          Left = 404
          Top = 56
          Width = 81
          Height = 16
          Caption = 'location:'
        end
        object B_07_02_2_1: TCheckBox
          Left = 128
          Top = 8
          Width = 233
          Height = 17
          Caption = 'Complete undressing'
          TabOrder = 0
        end
        object B_07_03_2_1: TCheckBox
          Left = 128
          Top = 48
          Width = 233
          Height = 17
          Caption = 'Prevent hypothermia'
          TabOrder = 1
        end
        object B_07_04_2_1: TCheckBox
          Left = 128
          Top = 88
          Width = 233
          Height = 17
          Caption = 'Log-rolling maneuver'
          TabOrder = 2
        end
        object B_07_05_2_1: TCheckBox
          Left = 128
          Top = 128
          Width = 233
          Height = 17
          Caption = 'Digital examination'
          TabOrder = 3
        end
        object B_07_06_2_1: TCheckBox
          Left = 386
          Top = 8
          Width = 121
          Height = 17
          Caption = 'Open wound'
          TabOrder = 4
        end
        object B_07_07_2_1: TCheckBox
          Left = 387
          Top = 83
          Width = 248
          Height = 17
          Caption = 'Extremities deformity'
          TabOrder = 5
        end
        object B_07_08_3_1: TEdit
          Left = 424
          Top = 107
          Width = 86
          Height = 24
          Hint = 'Burn:_% TBSA'
          TabOrder = 6
          Text = 'B_07_08_3_1'
        end
        object B_07_09_3_1: TEdit
          Left = 440
          Top = 136
          Width = 121
          Height = 24
          Hint = 'Degree:_'
          TabOrder = 7
          Text = 'B_07_09_3_1'
        end
        object Button1: TButton
          Left = 848
          Top = 96
          Width = 75
          Height = 25
          Caption = #23384#22294#27284
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button1Click
        end
        object B_07_10_3_1: TEdit
          Left = 450
          Top = 28
          Width = 215
          Height = 24
          TabOrder = 9
          Text = 'B_07_10_3_1'
        end
        object B_07_11_3_1: TEdit
          Left = 490
          Top = 56
          Width = 175
          Height = 24
          TabOrder = 10
          Text = 'B_07_11_3_1'
        end
      end
    end
    object PnlAdjunct: TPanel
      Left = 0
      Top = 68
      Width = 936
      Height = 299
      Align = alTop
      Caption = 'PnlAdjunct'
      TabOrder = 2
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 934
        Height = 41
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Shape4: TShape
          Left = 1
          Top = 1
          Width = 932
          Height = 39
          Align = alClient
          Brush.Color = clMoneyGreen
        end
        object C_01_01_1_1: TLabel
          Left = 8
          Top = 9
          Width = 237
          Height = 21
          Caption = 'Adjunct of primary survey'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 294
          Top = 9
          Width = 40
          Height = 13
          Caption = 'Time:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object C_02_01_3_1: TEdit
          Left = 336
          Top = 9
          Width = 129
          Height = 21
          Hint = 'Time:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 42
        Width = 934
        Height = 125
        Align = alTop
        TabOrder = 1
        object LABEL53: TLabel
          Left = 62
          Top = 4
          Width = 271
          Height = 13
          Caption = 'Lab.data and positive finding:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object C_04_01_1_1: TLabel
          Left = 62
          Top = 27
          Width = 172
          Height = 13
          Caption = 'Trauma series X-ray'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label55: TLabel
          Left = 208
          Top = 51
          Width = 126
          Height = 16
          Caption = 'X-ray finding:'
        end
        object Label56: TLabel
          Left = 244
          Top = 75
          Width = 90
          Height = 16
          Caption = 'Treatment:'
        end
        object C_03_01_3_1: TEdit
          Left = 336
          Top = 4
          Width = 569
          Height = 24
          Hint = 'Lab.data and positive finding:_'
          TabOrder = 0
          Text = 'C_03_01_3_1'
        end
        object C_04_02_2_1: TCheckBox
          Left = 128
          Top = 51
          Width = 57
          Height = 17
          Caption = 'CXR'
          TabOrder = 1
        end
        object C_04_03_2_1: TCheckBox
          Left = 128
          Top = 75
          Width = 57
          Height = 17
          Caption = 'PXR'
          TabOrder = 2
        end
        object C_04_04_2_1: TCheckBox
          Left = 128
          Top = 99
          Width = 186
          Height = 17
          Caption = 'C-spine lat. view'
          TabOrder = 3
        end
        object C_04_07_3_1: TEdit
          Left = 335
          Top = 51
          Width = 561
          Height = 24
          Hint = 'X-ray finding:_'
          TabOrder = 4
          Text = 'C_04_07_3_1'
        end
        object C_04_08_3_1: TEdit
          Left = 335
          Top = 75
          Width = 561
          Height = 24
          Hint = 'Treatment:_'
          TabOrder = 5
          Text = 'C_04_08_3_1'
        end
        object C_04_05_2_1: TCheckBox
          Left = 335
          Top = 99
          Width = 98
          Height = 17
          Caption = 'NG tube'
          TabOrder = 6
        end
        object C_04_06_2_1: TCheckBox
          Left = 512
          Top = 99
          Width = 162
          Height = 17
          Caption = 'Foley catheter'
          TabOrder = 7
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 167
        Width = 934
        Height = 131
        Align = alClient
        TabOrder = 2
        object Label57: TLabel
          Left = 62
          Top = 8
          Width = 289
          Height = 13
          Caption = 'Impression after primary survey:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object C_06_01_1_1: TLabel
          Left = 62
          Top = 34
          Width = 361
          Height = 13
          Caption = 'Immediate treatment after primary survey'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object C_05_01_3_1: TEdit
          Left = 357
          Top = 8
          Width = 548
          Height = 24
          Hint = 'Impression after primary survey:_'
          TabOrder = 0
          Text = 'C_05_01_3_1'
        end
        object C_06_02_2_1: TCheckBox
          Left = 110
          Top = 61
          Width = 218
          Height = 17
          Caption = 'Emergency thoracotomy'
          TabOrder = 1
        end
        object C_06_06_2_1: TCheckBox
          Left = 640
          Top = 88
          Width = 73
          Height = 17
          Caption = 'Other:'
          TabOrder = 2
        end
        object C_06_03_2_1: TCheckBox
          Left = 333
          Top = 61
          Width = 255
          Height = 17
          Caption = 'Emergency pericardiotomy'
          TabOrder = 3
        end
        object C_06_04_2_1: TCheckBox
          Left = 615
          Top = 61
          Width = 214
          Height = 17
          Caption = 'Emergency laparotomy'
          TabOrder = 4
        end
        object C_06_05_2_1: TCheckBox
          Left = 110
          Top = 88
          Width = 528
          Height = 17
          Caption = 'Emergency TAE (pelvic fracture or craniofacial bleeding)'
          TabOrder = 5
        end
        object C_06_07_3_1: TEdit
          Left = 715
          Top = 88
          Width = 191
          Height = 24
          Hint = 'Other:_'
          TabOrder = 6
          Text = 'C_06_07_3_1'
        end
      end
    end
    object PnlSecondary: TPanel
      Left = 0
      Top = 367
      Width = 936
      Height = 329
      Align = alTop
      TabOrder = 3
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 934
        Height = 41
        Align = alTop
        Color = clMoneyGreen
        TabOrder = 0
        object Shape5: TShape
          Left = 1
          Top = 1
          Width = 932
          Height = 39
          Align = alClient
          Brush.Color = clMoneyGreen
        end
        object D_01_01_1_1: TLabel
          Left = 8
          Top = 10
          Width = 160
          Height = 21
          Caption = 'Secondary survey'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label60: TLabel
          Left = 288
          Top = 10
          Width = 40
          Height = 13
          Caption = 'Time:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
        object D_02_01_3_1: TEdit
          Left = 328
          Top = 10
          Width = 137
          Height = 21
          Hint = 'Time:_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'B_02_01_3_1'
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 42
        Width = 934
        Height = 116
        Align = alTop
        TabOrder = 1
        object Label61: TLabel
          Left = 147
          Top = 84
          Width = 207
          Height = 16
          Caption = 'Indication and finding:'
        end
        object Label8: TLabel
          Left = 148
          Top = 35
          Width = 360
          Height = 16
          Caption = 'Trauma mechanism and associated history:'
        end
        object D_03_01_2_1: TCheckBox
          Left = 128
          Top = 8
          Width = 388
          Height = 17
          Caption = 'History taking and physical examination'
          TabOrder = 0
        end
        object D_03_02_3_1: TEdit
          Left = 511
          Top = 33
          Width = 393
          Height = 24
          Hint = 'Trauma mechanism and associated history:_'
          TabOrder = 1
          Text = 'D_03_02_3_1'
        end
        object D_03_03_2_1: TCheckBox
          Left = 128
          Top = 58
          Width = 95
          Height = 17
          Caption = 'CT scans'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object D_03_04_2_1: TCheckBox
          Left = 225
          Top = 58
          Width = 123
          Height = 17
          Caption = 'Angiography'
          TabOrder = 3
        end
        object D_03_05_2_1: TCheckBox
          Left = 347
          Top = 58
          Width = 53
          Height = 17
          Caption = 'MRI'
          TabOrder = 4
        end
        object D_03_06_2_1: TCheckBox
          Left = 404
          Top = 58
          Width = 175
          Height = 17
          Caption = 'Additional X-rays'
          TabOrder = 5
        end
        object D_03_07_2_1: TCheckBox
          Left = 583
          Top = 58
          Width = 72
          Height = 17
          Caption = 'Other:'
          TabOrder = 6
        end
        object D_03_08_3_1: TEdit
          Left = 657
          Top = 58
          Width = 246
          Height = 24
          Hint = 'Other:_'
          TabOrder = 7
          Text = 'D_03_08_3_1'
        end
        object D_03_09_3_1: TEdit
          Left = 362
          Top = 84
          Width = 540
          Height = 24
          Hint = 'Indication and finding:_'
          TabOrder = 8
          Text = 'D_03_09_3_1'
        end
        object QRLabel1: TQRLabel
          Left = 107
          Top = 59
          Width = 17
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            283.104166666666700000
            156.104166666666700000
            44.979166666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #8251
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object Panel12: TPanel
        Left = 1
        Top = 158
        Width = 934
        Height = 170
        Align = alClient
        TabOrder = 2
        object D_04_01_1_1: TLabel
          Left = 48
          Top = 8
          Width = 118
          Height = 13
          Caption = 'ED Diagnosis:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object D_05_01_1_1: TLabel
          Left = 471
          Top = 8
          Width = 46
          Height = 13
          Caption = 'Plan:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 128
          Top = 147
          Width = 108
          Height = 16
          Caption = 'Initial ISS:'
        end
        object Label17: TLabel
          Left = 128
          Top = 24
          Width = 18
          Height = 16
          Caption = '1.'
        end
        object Label28: TLabel
          Left = 128
          Top = 48
          Width = 18
          Height = 16
          Caption = '2.'
        end
        object Label44: TLabel
          Left = 128
          Top = 72
          Width = 18
          Height = 16
          Caption = '3.'
        end
        object Label47: TLabel
          Left = 128
          Top = 96
          Width = 18
          Height = 16
          Caption = '4.'
        end
        object Label51: TLabel
          Left = 128
          Top = 120
          Width = 18
          Height = 16
          Caption = '5.'
        end
        object D_05_04_2_1: TCheckBox
          Left = 495
          Top = 48
          Width = 154
          Height = 17
          Caption = 'ICU admission'
          TabOrder = 0
        end
        object D_05_02_2_1: TCheckBox
          Left = 495
          Top = 24
          Width = 89
          Height = 17
          Caption = 'Surgery:'
          TabOrder = 1
        end
        object D_05_05_2_1: TCheckBox
          Left = 495
          Top = 72
          Width = 170
          Height = 17
          Caption = 'Ward admission'
          TabOrder = 2
        end
        object D_05_06_2_0: TCheckBox
          Left = 495
          Top = 96
          Width = 176
          Height = 17
          Caption = 'Angioembolization:'
          TabOrder = 3
        end
        object D_05_08_2_1: TCheckBox
          Left = 495
          Top = 120
          Width = 144
          Height = 17
          Caption = 'Expire or AAD'
          TabOrder = 4
        end
        object D_05_09_2_0: TCheckBox
          Left = 495
          Top = 144
          Width = 73
          Height = 17
          Caption = 'Other:'
          TabOrder = 5
        end
        object D_04_02_3_1: TEdit
          Left = 147
          Top = 24
          Width = 301
          Height = 24
          Hint = '1_'
          TabOrder = 6
          Text = 'D_04_02_3_1'
        end
        object D_04_03_3_1: TEdit
          Left = 147
          Top = 48
          Width = 301
          Height = 24
          Hint = '2_'
          TabOrder = 7
          Text = 'D_04_03_3_1'
        end
        object D_04_04_3_1: TEdit
          Left = 147
          Top = 72
          Width = 301
          Height = 24
          Hint = '3_'
          TabOrder = 8
          Text = 'D_04_04_3_1'
        end
        object D_04_05_3_1: TEdit
          Left = 147
          Top = 96
          Width = 301
          Height = 24
          Hint = '4_'
          TabOrder = 9
          Text = 'D_04_05_3_1'
        end
        object D_04_06_3_1: TEdit
          Left = 147
          Top = 120
          Width = 301
          Height = 24
          Hint = '5_'
          TabOrder = 10
          Text = 'D_04_06_3_1'
        end
        object D_04_07_3_1: TEdit
          Left = 230
          Top = 144
          Width = 217
          Height = 24
          Hint = 'Initial ISS:_'
          TabOrder = 11
          Text = 'D_04_07_3_1'
        end
        object D_05_03_3_1: TEdit
          Left = 586
          Top = 24
          Width = 321
          Height = 24
          Hint = 'Surgery:_'
          TabOrder = 12
          Text = 'D_05_03_3_1'
        end
        object D_05_07_3_1: TEdit
          Left = 670
          Top = 96
          Width = 236
          Height = 24
          Hint = 'Angioembolization:_'
          TabOrder = 13
          Text = 'D_05_07_3_1'
        end
        object D_05_10_3_1: TEdit
          Left = 567
          Top = 144
          Width = 338
          Height = 24
          TabOrder = 14
        end
      end
    end
  end
  object Panel13: TPanel [2]
    Left = 0
    Top = 691
    Width = 957
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 736
      Top = 8
      Width = 75
      Height = 25
      Caption = #21015#21360
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Bitnsav: TBitBtn
      Left = 832
      Top = 8
      Width = 75
      Height = 25
      Caption = #23384#27284
      TabOrder = 1
      OnClick = BitnsavClick
    end
  end
  inherited Timer2: TTimer
    Left = 896
    Top = 272
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bi' +
      'tmaps (*.bmp)|*.bmp'
    Left = 873
    Top = 297
  end
end
