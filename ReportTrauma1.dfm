inherited FrmReportTrauma1: TFrmReportTrauma1
  Left = 210
  Top = 130
  Caption = 'FrmReportTrauma1'
  ClientHeight = 799
  ClientWidth = 877
  OldCreateOrder = True
  Scaled = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 782
    Width = 877
  end
  object QuickRep1: TQuickRep [1]
    Left = 120
    Top = -776
    Width = 635
    Height = 1481
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 80
    object SummaryBand1: TQRBand
      Left = 30
      Top = 720
      Width = 575
      Height = 689
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2278.723958333333000000
        1901.692708333333000000)
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 1
        Top = 32
        Width = 77
        Height = 418
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1382.447916666667000000
          3.307291666666667000
          105.833333333333300000
          254.661458333333300000)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 573
        Top = 32
        Width = 1
        Height = 418
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1382.447916666667000000
          1895.078125000000000000
          105.833333333333300000
          3.307291666666667000)
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 1
        Top = 1
        Width = 573
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          3.307291666666667000
          3.307291666666667000
          1895.078125000000000000)
        Shape = qrsRectangle
      end
      object QRLabel47: TQRLabel
        Left = 8
        Top = 9
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          26.458333333333330000
          29.765625000000000000
          429.947916666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Adjunct of primary survey'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel48: TQRLabel
        Left = 7
        Top = 40
        Width = 26
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          23.151041666666670000
          132.291666666666700000
          85.989583333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_02_01_3_1: TQRLabel
        Left = 7
        Top = 60
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          23.151041666666670000
          198.437500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_02_01_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 83
        Top = 37
        Width = 134
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          122.369791666666700000
          443.177083333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lab.data and positive finding:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_03_01_3_1: TQRLabel
        Left = 83
        Top = 53
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          175.286458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_03_01_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 77
        Top = 71
        Width = 498
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666667000
          254.661458333333300000
          234.817708333333300000
          1647.031250000000000000)
        Shape = qrsRectangle
      end
      object QRLabel50: TQRLabel
        Left = 83
        Top = 72
        Width = 93
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          238.125000000000000000
          307.578125000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trauma series X-ray'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_04_02_2_1: TQRLabel
        Left = 83
        Top = 89
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          294.348958333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_02_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_04_03_2_1: TQRLabel
        Left = 83
        Top = 108
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          357.187500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_03_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_04_04_2_1: TQRLabel
        Left = 83
        Top = 124
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          410.104166666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_04_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_04_05_2_1: TQRLabel
        Left = 83
        Top = 140
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          463.020833333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_04_06_2_1: TQRLabel
        Left = 83
        Top = 157
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          519.244791666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_06_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 185
        Top = 72
        Width = 60
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          611.848958333333300000
          238.125000000000000000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'X-ray finding:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 179
        Top = 72
        Width = 1
        Height = 104
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          343.958333333333300000
          592.005208333333300000
          238.125000000000000000
          3.307291666666667000)
        Shape = qrsVertLine
      end
      object C_04_07_3_1: TQRLabel
        Left = 191
        Top = 88
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          631.692708333333300000
          291.041666666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_07_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel53: TQRLabel
        Left = 185
        Top = 128
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          611.848958333333300000
          423.333333333333300000
          165.364583333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Treatment:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_04_08_3_1: TQRLabel
        Left = 192
        Top = 144
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          635.000000000000000000
          476.250000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_04_08_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape16: TQRShape
        Left = 1
        Top = 175
        Width = 573
        Height = 103
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          340.651041666666700000
          3.307291666666667000
          578.776041666666700000
          1895.078125000000000000)
        Shape = qrsRectangle
      end
      object QRLabel54: TQRLabel
        Left = 5
        Top = 177
        Width = 148
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          16.536458333333330000
          585.390625000000000000
          489.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Impression after primary survey:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_05_01_3_1: TQRLabel
        Left = 13
        Top = 192
        Width = 548
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.911458333333330000
          42.994791666666670000
          635.000000000000000000
          1812.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'C_05_01_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 7
        Top = 220
        Width = 190
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          23.151041666666670000
          727.604166666666700000
          628.385416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Immediate treatment after primary survey'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_06_02_2_1: TQRLabel
        Left = 12
        Top = 240
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          39.687500000000000000
          793.750000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_06_02_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_06_03_2_1: TQRLabel
        Left = 205
        Top = 240
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          677.994791666666700000
          793.750000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_06_03_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_06_04_2_1: TQRLabel
        Left = 384
        Top = 240
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1270.000000000000000000
          793.750000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_06_04_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_06_05_2_1: TQRLabel
        Left = 12
        Top = 257
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          39.687500000000000000
          849.973958333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_06_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_06_06_2_1: TQRLabel
        Left = 300
        Top = 257
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          992.187500000000000000
          849.973958333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_06_06_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object C_06_07_3_1: TQRLabel
        Left = 353
        Top = 257
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1167.473958333333000000
          849.973958333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C_06_07_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape17: TQRShape
        Left = 1
        Top = 277
        Width = 573
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          109.140625000000000000
          3.307291666666667000
          916.119791666666700000
          1895.078125000000000000)
        Shape = qrsRectangle
      end
      object QRLabel56: TQRLabel
        Left = 13
        Top = 285
        Width = 83
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          942.578125000000000000
          274.505208333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Secondary survey'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape20: TQRShape
        Left = 1
        Top = 277
        Width = 573
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          109.140625000000000000
          3.307291666666667000
          916.119791666666700000
          1895.078125000000000000)
        Shape = qrsRectangle
      end
      object QRLabel64: TQRLabel
        Left = 13
        Top = 285
        Width = 83
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          942.578125000000000000
          274.505208333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Secondary survey'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape23: TQRShape
        Left = 1
        Top = 277
        Width = 573
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          109.140625000000000000
          3.307291666666667000
          916.119791666666700000
          1895.078125000000000000)
        Shape = qrsRectangle
      end
      object QRLabel74: TQRLabel
        Left = 13
        Top = 285
        Width = 112
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          42.994791666666670000
          942.578125000000000000
          370.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Secondary survey'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel75: TQRLabel
        Left = 13
        Top = 316
        Width = 26
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          1045.104166666667000000
          85.989583333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_02_01_3_1: TQRLabel
        Left = 7
        Top = 336
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          23.151041666666670000
          1111.250000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_02_01_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_01_2_1: TQRLabel
        Left = 83
        Top = 312
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          1031.875000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_01_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel76: TQRLabel
        Left = 83
        Top = 328
        Width = 203
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          1084.791666666667000000
          671.380208333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trauma mechanism and associated history:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_02_3_1: TQRLabel
        Left = 89
        Top = 344
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          294.348958333333300000
          1137.708333333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_02_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape25: TQRShape
        Left = 77
        Top = 370
        Width = 496
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666667000
          254.661458333333300000
          1223.697916666667000000
          1640.416666666667000000)
        Shape = qrsRectangle
      end
      object D_03_03_2_1: TQRLabel
        Left = 83
        Top = 373
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          1233.619791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_03_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_04_2_1: TQRLabel
        Left = 185
        Top = 373
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          611.848958333333300000
          1233.619791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_04_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_05_2_1: TQRLabel
        Left = 295
        Top = 373
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          975.651041666666700000
          1233.619791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_06_2_1: TQRLabel
        Left = 409
        Top = 373
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1352.682291666667000000
          1233.619791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_06_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_07_2_1: TQRLabel
        Left = 83
        Top = 392
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          1296.458333333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_07_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel77: TQRLabel
        Left = 83
        Top = 412
        Width = 101
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          274.505208333333300000
          1362.604166666667000000
          334.036458333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Indication and finding:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_09_3_1: TQRLabel
        Left = 87
        Top = 428
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          287.734375000000000000
          1415.520833333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_09_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_03_08_3_1: TQRLabel
        Left = 153
        Top = 392
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          506.015625000000000000
          1296.458333333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_03_08_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape26: TQRShape
        Left = 1
        Top = 448
        Width = 573
        Height = 177
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          585.390625000000000000
          3.307291666666667000
          1481.666666666667000000
          1895.078125000000000000)
        Shape = qrsRectangle
      end
      object QRShape27: TQRShape
        Left = 250
        Top = 448
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          582.083333333333300000
          826.822916666666700000
          1481.666666666667000000
          3.307291666666667000)
        Shape = qrsRectangle
      end
      object QRLabel78: TQRLabel
        Left = 7
        Top = 450
        Width = 67
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          23.151041666666670000
          1488.281250000000000000
          221.588541666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ED Diagnosis:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel79: TQRLabel
        Left = 256
        Top = 450
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          846.666666666666700000
          1488.281250000000000000
          82.682291666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Plan:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel80: TQRLabel
        Left = 13
        Top = 469
        Width = 10
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          1551.119791666667000000
          33.072916666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel81: TQRLabel
        Left = 13
        Top = 494
        Width = 10
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          1633.802083333333000000
          33.072916666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel82: TQRLabel
        Left = 13
        Top = 519
        Width = 10
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          1716.484375000000000000
          33.072916666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel83: TQRLabel
        Left = 13
        Top = 545
        Width = 10
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          42.994791666666670000
          1802.473958333333000000
          33.072916666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel84: TQRLabel
        Left = 14
        Top = 570
        Width = 10
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          46.302083333333330000
          1885.156250000000000000
          33.072916666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel85: TQRLabel
        Left = 14
        Top = 596
        Width = 48
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          46.302083333333330000
          1971.145833333333000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Initial ISS:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_02_2_1: TQRLabel
        Left = 263
        Top = 469
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          869.817708333333300000
          1551.119791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_05_02_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_04_2_1: TQRLabel
        Left = 263
        Top = 494
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          869.817708333333300000
          1633.802083333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_05_04_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_05_2_1: TQRLabel
        Left = 263
        Top = 519
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          869.817708333333300000
          1716.484375000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_05_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_06_2_0: TQRLabel
        Left = 263
        Top = 545
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          869.817708333333300000
          1802.473958333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_05_06_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_08_2_1: TQRLabel
        Left = 262
        Top = 570
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          866.510416666666700000
          1885.156250000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_05_08_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_09_2_0: TQRLabel
        Left = 262
        Top = 596
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          866.510416666666700000
          1971.145833333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_05_09_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_03_3_1: TQRLabel
        Left = 319
        Top = 469
        Width = 251
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1055.026041666667000000
          1551.119791666667000000
          830.130208333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_05_03_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_05_07_3_1: TQRLabel
        Left = 351
        Top = 545
        Width = 219
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1160.859375000000000000
          1802.473958333333000000
          724.296875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_05_07_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_04_02_3_1: TQRLabel
        Left = 25
        Top = 469
        Width = 223
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          82.682291666666670000
          1551.119791666667000000
          737.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_04_02_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_04_03_3_1: TQRLabel
        Left = 25
        Top = 494
        Width = 223
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          82.682291666666670000
          1633.802083333333000000
          737.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_04_03_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_04_04_3_1: TQRLabel
        Left = 25
        Top = 519
        Width = 223
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          82.682291666666670000
          1716.484375000000000000
          737.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_04_04_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_04_05_3_1: TQRLabel
        Left = 25
        Top = 545
        Width = 223
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          82.682291666666670000
          1802.473958333333000000
          737.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_04_05_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_04_06_3_1: TQRLabel
        Left = 26
        Top = 570
        Width = 223
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          85.989583333333330000
          1885.156250000000000000
          737.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_04_06_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object D_04_07_3_1: TQRLabel
        Left = 64
        Top = 596
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          211.666666666666700000
          1971.145833333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D_04_07_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object D_05_10_3_1: TQRLabel
        Left = 328
        Top = 596
        Width = 243
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          1084.791666666667000000
          1971.145833333333000000
          803.671875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'D_05_10_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel87: TQRLabel
        Left = 301
        Top = 628
        Width = 96
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          995.494791666666700000
          2076.979166666667000000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trauma team leader:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel88: TQRLabel
        Left = 301
        Top = 648
        Width = 26
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          995.494791666666700000
          2143.125000000000000000
          85.989583333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 326
        Top = 648
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1078.177083333333000000
          2143.125000000000000000
          95.911458333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Transparent = False
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 5
        Top = 672
        Width = 52
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          16.536458333333330000
          2222.500000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel31'
        Color = clWhite
        OnPrint = QRLabel31Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 517
        Top = 672
        Width = 52
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1709.869791666667000000
          2222.500000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel31'
        Color = clWhite
        OnPrint = QRLabel57Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 30
      Top = 121
      Width = 575
      Height = 599
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 2
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1981.067708333333000000
        1901.692708333333000000)
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 1
        Top = 24
        Width = 573
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          6.614583333333333000
          3.307291666666667000
          79.375000000000000000
          1895.078125000000000000)
        Shape = qrsHorLine
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 6
        Width = 137
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          26.458333333333330000
          19.843750000000000000
          453.098958333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Primary Survey'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape11: TQRShape
        Left = 75
        Top = 26
        Width = 3
        Height = 570
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1885.156250000000000000
          248.046875000000000000
          85.989583333333330000
          9.921875000000000000)
        Shape = qrsVertLine
      end
      object QRLabel13: TQRLabel
        Left = 5
        Top = 39
        Width = 26
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          16.536458333333330000
          128.984375000000000000
          85.989583333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_02_01_3_1: TQRLabel
        Left = 5
        Top = 64
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          16.536458333333330000
          211.666666666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_02_01_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 77
        Top = 82
        Width = 497
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          254.000000000000000000
          269.875000000000000000
          1643.062500000000000000)
        Shape = qrsHorLine
      end
      object QRShape4: TQRShape
        Left = 138
        Top = 26
        Width = 1
        Height = 570
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1883.833333333333000000
          457.729166666666700000
          84.666666666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel12: TQRLabel
        Left = 93
        Top = 39
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          307.578125000000000000
          128.984375000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Airway'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_03_02_2_1: TQRLabel
        Left = 148
        Top = 29
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          489.479166666666700000
          95.911458333333330000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_02_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_03_03_2_1: TQRLabel
        Left = 352
        Top = 29
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1164.166666666667000000
          95.911458333333330000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_03_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_03_04_2_0: TQRLabel
        Left = 148
        Top = 47
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          489.479166666666700000
          155.442708333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_03_07_2_0: TQRLabel
        Left = 148
        Top = 64
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          489.479166666666700000
          211.666666666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_07_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 357
        Top = 45
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1180.703125000000000000
          148.828125000000000000
          46.302083333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fr.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_03_05_3_0: TQRLabel
        Left = 371
        Top = 45
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1227.005208333333000000
          148.828125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_05_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_03_06_3_0: TQRLabel
        Left = 453
        Top = 45
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1498.203125000000000000
          148.828125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_06_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 435
        Top = 45
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1438.671875000000000000
          148.828125000000000000
          72.760416666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ', Fix'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 519
        Top = 45
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1716.484375000000000000
          148.828125000000000000
          49.609375000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 85
        Top = 91
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          281.119791666666700000
          300.963541666666700000
          148.828125000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Breathing'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 77
        Top = 258
        Width = 497
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          254.000000000000000000
          854.604166666666700000
          1643.062500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel18: TQRLabel
        Left = 143
        Top = 85
        Width = 38
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          472.942708333333300000
          281.119791666666700000
          125.677083333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Finding:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 147
        Top = 101
        Width = 79
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          334.036458333333300000
          261.276041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Breathing sound:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_04_2_0: TQRLabel
        Left = 288
        Top = 101
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          952.500000000000000000
          334.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_05_2_0: TQRLabel
        Left = 339
        Top = 101
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1121.171875000000000000
          334.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_05_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 389
        Top = 101
        Width = 84
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1286.536458333333000000
          334.036458333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(                        )'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_06_2_0: TQRLabel
        Left = 393
        Top = 101
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1299.765625000000000000
          334.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_06_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_07_2_0: TQRLabel
        Left = 409
        Top = 101
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1352.682291666667000000
          334.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_07_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_08_2_1: TQRLabel
        Left = 429
        Top = 101
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1418.828125000000000000
          334.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_08_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_09_2_0: TQRLabel
        Left = 147
        Top = 117
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          386.953125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 296
        Top = 117
        Width = 84
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          978.958333333333300000
          386.953125000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(                        )'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_10_2_0: TQRLabel
        Left = 300
        Top = 117
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          992.187500000000000000
          386.953125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_06_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_11_2_0: TQRLabel
        Left = 316
        Top = 117
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1045.104166666667000000
          386.953125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_07_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_12_2_1: TQRLabel
        Left = 333
        Top = 117
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1101.328125000000000000
          386.953125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_08_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_13_2_0: TQRLabel
        Left = 147
        Top = 132
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          436.562500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_14_2_1: TQRLabel
        Left = 297
        Top = 132
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          982.265625000000000000
          436.562500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_15_2_0: TQRLabel
        Left = 147
        Top = 147
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          486.171875000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_16_2_1: TQRLabel
        Left = 297
        Top = 147
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          982.265625000000000000
          486.171875000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 143
        Top = 164
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          472.942708333333300000
          542.395833333333300000
          165.364583333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Treatment:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_18_2_0: TQRLabel
        Left = 147
        Top = 179
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          592.005208333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 296
        Top = 179
        Width = 84
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          978.958333333333300000
          592.005208333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(                        )'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_19_2_0: TQRLabel
        Left = 300
        Top = 179
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          992.187500000000000000
          592.005208333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_06_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_20_2_0: TQRLabel
        Left = 316
        Top = 179
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1045.104166666667000000
          592.005208333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_07_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_21_2_1: TQRLabel
        Left = 333
        Top = 179
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1101.328125000000000000
          592.005208333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_08_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_22_2_0: TQRLabel
        Left = 147
        Top = 193
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          638.307291666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 296
        Top = 193
        Width = 84
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          978.958333333333300000
          638.307291666666700000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(                        )'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_23_2_0: TQRLabel
        Left = 300
        Top = 193
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          992.187500000000000000
          638.307291666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_06_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_24_2_0: TQRLabel
        Left = 316
        Top = 193
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1045.104166666667000000
          638.307291666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_07_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_25_2_1: TQRLabel
        Left = 333
        Top = 193
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1101.328125000000000000
          638.307291666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_08_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 377
        Top = 193
        Width = 14
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1246.848958333333000000
          638.307291666666700000
          46.302083333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fr.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_26_3_0: TQRLabel
        Left = 389
        Top = 193
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1286.536458333333000000
          638.307291666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_05_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_27_3_1: TQRLabel
        Left = 473
        Top = 193
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1564.348958333333000000
          638.307291666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_03_06_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 452
        Top = 193
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1494.895833333333000000
          638.307291666666700000
          72.760416666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ', Fix'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 537
        Top = 193
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1776.015625000000000000
          638.307291666666700000
          49.609375000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cm'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 160
        Top = 211
        Width = 129
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          529.166666666666700000
          697.838541666666700000
          426.640625000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Initial amount of chest tube:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_28_3_1: TQRLabel
        Left = 291
        Top = 211
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          962.421875000000000000
          697.838541666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_28_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 343
        Top = 211
        Width = 12
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1134.401041666667000000
          697.838541666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ml'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 160
        Top = 225
        Width = 155
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          529.166666666666700000
          744.140625000000000000
          512.630208333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Content: Air, Fresh blood, others:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_29_3_1: TQRLabel
        Left = 316
        Top = 224
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1045.104166666667000000
          740.833333333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_29_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_30_3_0: TQRLabel
        Left = 147
        Top = 240
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          486.171875000000000000
          793.750000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_30_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 138
        Top = 26
        Width = 1
        Height = 570
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1883.833333333333000000
          457.729166666666700000
          84.666666666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 573
        Top = 26
        Width = 1
        Height = 570
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1883.833333333333000000
          1894.416666666667000000
          84.666666666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel22: TQRLabel
        Left = 84
        Top = 269
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          277.812500000000000000
          889.661458333333300000
          165.364583333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Circulation'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 141
        Top = 261
        Width = 18
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          863.203125000000000000
          59.531250000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HR:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_02_3_0: TQRLabel
        Left = 160
        Top = 261
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          529.166666666666700000
          863.203125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_02_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 197
        Top = 261
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          651.536458333333300000
          863.203125000000000000
          148.828125000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'bpm, BP:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_03_3_1: TQRLabel
        Left = 243
        Top = 261
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          803.671875000000000000
          863.203125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_03_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 301
        Top = 261
        Width = 31
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          995.494791666666700000
          863.203125000000000000
          102.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'mmHg'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 141
        Top = 277
        Width = 74
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          916.119791666666700000
          244.739583333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pulse oximeter:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_04_3_1: TQRLabel
        Left = 215
        Top = 277
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          711.067708333333300000
          916.119791666666700000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_04_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 269
        Top = 277
        Width = 76
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          889.661458333333300000
          916.119791666666700000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '% O2 saturation'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_05_2_1: TQRLabel
        Left = 141
        Top = 293
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          969.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_06_2_0: TQRLabel
        Left = 141
        Top = 308
        Width = 30
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1018.645833333333000000
          99.218750000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FAST,'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_08_2_0: TQRLabel
        Left = 238
        Top = 307
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          787.135416666666700000
          1015.338541666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_08_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_07_2_0: TQRLabel
        Left = 172
        Top = 307
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          568.854166666666700000
          1015.338541666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_07_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlaba: TQRLabel
        Left = 141
        Top = 323
        Width = 76
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1068.255208333333000000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Pelvic stability:'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_09_2_0: TQRLabel
        Left = 216
        Top = 323
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          714.375000000000000000
          1068.255208333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_09_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_10_2_0: TQRLabel
        Left = 280
        Top = 323
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          926.041666666666700000
          1068.255208333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_10_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_11_2_0: TQRLabel
        Left = 357
        Top = 323
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1180.703125000000000000
          1068.255208333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_11_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_12_2_0: TQRLabel
        Left = 419
        Top = 323
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1385.755208333333000000
          1068.255208333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_12_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 351
        Top = 323
        Width = 4
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1160.859375000000000000
          1068.255208333333000000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '('
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 486
        Top = 323
        Width = 4
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1607.343750000000000000
          1068.255208333333000000
          13.229166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ')'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_13_2_1: TQRLabel
        Left = 161
        Top = 337
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          532.473958333333300000
          1114.557291666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_13_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_14_2_0: TQRLabel
        Left = 141
        Top = 352
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1164.166666666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_14_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_15_3_1: TQRLabel
        Left = 333
        Top = 352
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1101.328125000000000000
          1164.166666666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_15_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_16_2_1: TQRLabel
        Left = 141
        Top = 369
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1220.390625000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_16_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_17_2_0: TQRLabel
        Left = 141
        Top = 384
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1270.000000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_17_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_18_3_0: TQRLabel
        Left = 243
        Top = 384
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          803.671875000000000000
          1270.000000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_18_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 293
        Top = 384
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          969.036458333333300000
          1270.000000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'U, WB'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_19_3_1: TQRLabel
        Left = 327
        Top = 384
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1081.484375000000000000
          1270.000000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_19_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 389
        Top = 384
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1286.536458333333000000
          1270.000000000000000000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'U'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_20_2_0: TQRLabel
        Left = 141
        Top = 399
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1319.609375000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_20_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_05_21_3_1: TQRLabel
        Left = 224
        Top = 399
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          740.833333333333300000
          1319.609375000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_05_21_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 77
        Top = 417
        Width = 497
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          254.000000000000000000
          1378.479166666667000000
          1643.062500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel42: TQRLabel
        Left = 84
        Top = 420
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          277.812500000000000000
          1389.062500000000000000
          142.213541666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Disability'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 141
        Top = 421
        Width = 26
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1392.369791666667000000
          85.989583333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GCS:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_06_02_3_0: TQRLabel
        Left = 165
        Top = 421
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          545.703125000000000000
          1392.369791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_06_02_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 237
        Top = 421
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          783.828125000000000000
          1392.369791666667000000
          112.447916666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ', Pupil:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_06_03_3_1: TQRLabel
        Left = 275
        Top = 421
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          909.505208333333300000
          1392.369791666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_06_03_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_06_04_2_0: TQRLabel
        Left = 141
        Top = 437
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1445.286458333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_06_04_2_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_06_05_2_1: TQRLabel
        Left = 217
        Top = 437
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          717.682291666666700000
          1445.286458333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_06_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_06_06_2_1: TQRLabel
        Left = 141
        Top = 453
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1498.203125000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_06_06_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 77
        Top = 470
        Width = 275
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          254.000000000000000000
          1553.104166666667000000
          910.166666666666700000)
        Shape = qrsHorLine
      end
      object Image1: TQRImage
        Left = 358
        Top = 422
        Width = 212
        Height = 167
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          552.979166666666700000
          1185.333333333333000000
          1397.000000000000000000
          701.145833333333300000)
        Stretch = True
      end
      object QRShape10: TQRShape
        Left = 351
        Top = 417
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333300000
          1161.520833333333000000
          1378.479166666667000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel45: TQRLabel
        Left = 84
        Top = 475
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          277.812500000000000000
          1570.963541666667000000
          148.828125000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Exposure'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_02_2_1: TQRLabel
        Left = 141
        Top = 475
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1570.963541666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_02_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_03_2_1: TQRLabel
        Left = 261
        Top = 475
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          863.203125000000000000
          1570.963541666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_03_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_04_2_1: TQRLabel
        Left = 141
        Top = 491
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1623.880208333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_04_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_05_2_1: TQRLabel
        Left = 261
        Top = 492
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          863.203125000000000000
          1627.187500000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_05_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_06_2_1: TQRLabel
        Left = 141
        Top = 509
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1683.411458333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_06_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_07_2_1: TQRLabel
        Left = 141
        Top = 557
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1842.161458333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_07_2_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 141
        Top = 575
        Width = 26
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          466.328125000000000000
          1901.692708333333000000
          85.989583333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Burn:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_08_3_1: TQRLabel
        Left = 167
        Top = 575
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          552.317708333333300000
          1901.692708333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_08_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 199
        Top = 575
        Width = 80
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          658.151041666666700000
          1901.692708333333000000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '% TBSA,Degree:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_09_3_1: TQRLabel
        Left = 277
        Top = 575
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          916.119791666666700000
          1901.692708333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_09_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_32_2_0: TQRLabel
        Left = 227
        Top = 101
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          750.755208333333300000
          334.036458333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_30_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_04_31_3_1: TQRLabel
        Left = 213
        Top = 240
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          704.453125000000000000
          793.750000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_04_30_3_0'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 160
        Top = 528
        Width = 23
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          529.166666666666700000
          1746.250000000000000000
          76.067708333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'size:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 144
        Top = 544
        Width = 40
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          476.250000000000000000
          1799.166666666667000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'location:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_10_3_1: TQRLabel
        Left = 185
        Top = 528
        Width = 64
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          611.848958333333300000
          1746.250000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_10_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object B_07_11_3_1: TQRLabel
        Left = 185
        Top = 544
        Width = 64
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          611.848958333333300000
          1799.166666666667000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'B_07_11_3_1'
        Color = clWhite
        OnPrint = B_07_02_2_1Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 30
      Top = 1409
      Width = 575
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        69.453125000000000000
        1901.692708333333000000)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 506
        Top = 3
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1673.489583333333000000
          9.921875000000000000
          122.369791666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object QRLabel86: TQRLabel
        Left = 474
        Top = 3
        Width = 30
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333330000
          1567.656250000000000000
          9.921875000000000000
          99.218750000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38913#25976':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 91
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        300.963541666666700000
        1901.692708333333000000)
      BandType = rbPageHeader
      object QRLabel3: TQRLabel
        Left = 4
        Top = 3
        Width = 46
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          13.229166666666670000
          9.921875000000000000
          152.135416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_01_01_3_0: TQRLabel
        Left = 52
        Top = 3
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          171.979166666666700000
          9.921875000000000000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_01_01_3_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel4: TQRLabel
        Left = 230
        Top = 2
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          760.677083333333300000
          6.614583333333333000
          334.036458333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Chart number:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_01_02_3_0: TQRLabel
        Left = 329
        Top = 2
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1088.098958333333000000
          6.614583333333333000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_01_02_3_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel6: TQRLabel
        Left = 16
        Top = 24
        Width = 34
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          52.916666666666670000
          79.375000000000000000
          112.447916666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Age:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_01_03_3_0: TQRLabel
        Left = 52
        Top = 24
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          171.979166666666700000
          79.375000000000000000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_01_03_3_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel8: TQRLabel
        Left = 230
        Top = 23
        Width = 32
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          760.677083333333300000
          76.067708333333330000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sex:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel9: TQRLabel
        Left = 438
        Top = 3
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1448.593750000000000000
          9.921875000000000000
          128.984375000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_01_04_3_0: TQRLabel
        Left = 264
        Top = 23
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          873.125000000000000000
          76.067708333333330000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_01_04_3_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_01_05_3_1: TQRLabel
        Left = 477
        Top = 3
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1577.578125000000000000
          9.921875000000000000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_01_05_3_1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel5: TQRLabel
        Left = 4
        Top = 48
        Width = 142
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          13.229166666666670000
          158.750000000000000000
          469.635416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Trauma mechanism:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_02_01_3_1: TQRLabel
        Left = 148
        Top = 48
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          489.479166666666700000
          158.750000000000000000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_02_01_3_1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_03_01_2_0: TQRLabel
        Left = 4
        Top = 68
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          13.229166666666670000
          224.895833333333300000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_03_01_2_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_03_02_2_0: TQRLabel
        Left = 77
        Top = 68
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          254.661458333333300000
          224.895833333333300000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_03_02_2_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel7: TQRLabel
        Left = 313
        Top = 68
        Width = 90
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1035.182291666667000000
          224.895833333333300000
          297.656250000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Event to ED:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object A_03_03_3_0: TQRLabel
        Left = 402
        Top = 68
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1329.531250000000000000
          224.895833333333300000
          327.421875000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A_03_03_3_0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = B_07_02_2_1Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel10: TQRLabel
        Left = 519
        Top = 68
        Width = 54
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1716.484375000000000000
          224.895833333333300000
          178.593750000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'minutes'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
    end
  end
  inherited Timer2: TTimer
    Left = 352
    Top = 664
  end
end
