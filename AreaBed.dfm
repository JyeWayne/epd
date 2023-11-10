inherited FrmAreaBed: TFrmAreaBed
  Tag = 9999
  Left = 280
  Top = 82
  BorderIcons = [biSystemMenu]
  Caption = 'FrmAreaBed'
  ClientHeight = 599
  ClientWidth = 762
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 582
    Width = 762
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 762
    Height = 577
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 294
      Height = 575
      Align = alLeft
      Caption = '1.'#21312#22495#32173#35703
      TabOrder = 0
      object lblArear: TLabel
        Left = 48
        Top = 24
        Width = 7
        Height = 14
      end
      object Label1: TLabel
        Left = 10
        Top = 24
        Width = 35
        Height = 14
        Caption = #21312#22495':'
      end
      object SGAREA: TStringGrid
        Left = 2
        Top = 128
        Width = 290
        Height = 445
        Align = alBottom
        ColCount = 2
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        OnClick = SGAREAClick
        OnDblClick = SGAREADblClick
        OnDrawCell = SGAREADrawCell
        ColWidths = (
          67
          192)
      end
      object Edit1: TEdit
        Left = 10
        Top = 48
        Width = 201
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 48
        Top = 83
        Width = 75
        Height = 25
        Caption = #26032#22686#21312#22495
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object BitBtn1: TBitBtn
        Left = 134
        Top = 83
        Width = 75
        Height = 25
        Caption = #20462#25913#21312#22495
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
    object Panel2: TPanel
      Left = 295
      Top = 1
      Width = 466
      Height = 575
      Align = alClient
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 464
        Height = 573
        Align = alClient
        Caption = '2.'#24202#20301#32173#35703'('#36984#25799#21312#22495':)'
        TabOrder = 0
        object SGBed: TStringGrid
          Left = 2
          Top = 65
          Width = 460
          Height = 506
          Align = alClient
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          TabOrder = 0
          OnDblClick = SGBedDblClick
          OnDrawCell = SGAREADrawCell
          OnKeyDown = SGBedKeyDown
          ColWidths = (
            212)
        end
        object Panel4: TPanel
          Left = 2
          Top = 16
          Width = 460
          Height = 49
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 297
            Height = 16
            AutoSize = False
            Caption = '1.'#35531#20808#24314#31435#25110#40670#36984#25799#21312#22495#65307'2.'#20877#24314#31435#24202#34399
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object BitBtn2: TBitBtn
            Left = 360
            Top = 11
            Width = 81
            Height = 25
            Caption = #24202#34399#20786#23384
            TabOrder = 0
            OnClick = BitBtn2Click
          end
        end
      end
    end
  end
  inherited Timer2: TTimer
    Left = 712
    Top = 408
  end
end
