inherited FrmDataReport: TFrmDataReport
  BorderIcons = [biSystemMenu]
  Caption = 'FrmDataReport'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 215
    Height = 653
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 41
      Width = 215
      Height = 612
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #27298#39511
        object SGLab: TStringGrid
          Left = 0
          Top = 0
          Width = 207
          Height = 582
          Align = alClient
          BorderStyle = bsNone
          ColCount = 6
          RowCount = 2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentFont = False
          TabOrder = 0
          OnClick = SGLabClick
          OnDrawCell = SGLabDrawCell
          OnMouseDown = SGLabMouseDown
          OnMouseWheelDown = SGLabMouseWheelDown
          OnMouseWheelUp = SGLabMouseWheelUp
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 215
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 50
        Height = 19
        Caption = #22995#21517':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object LblName: TLabel
        Left = 59
        Top = 10
        Width = 70
        Height = 19
        Caption = 'LblName'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 215
    Top = 0
    Width = 771
    Height = 653
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object SGData: TStringGrid
      Left = 0
      Top = 67
      Width = 771
      Height = 586
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 6
      RowCount = 2
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      ParentFont = False
      TabOrder = 0
      OnClick = SGLabClick
      OnDrawCell = SGDataDrawCell
      OnMouseDown = SGLabMouseDown
      OnMouseWheelDown = SGDataMouseWheelDown
      OnMouseWheelUp = SGDataMouseWheelUp
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 771
      Height = 67
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        771
        67)
      object BitBtn2: TBitBtn
        Left = 666
        Top = 10
        Width = 75
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = #38626#38283
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object StaticText1: TStaticText
        Left = 2
        Top = 44
        Width = 292
        Height = 19
        BorderStyle = sbsSingle
        Caption = #32005#23383':'#27298#39511#20540#36942#39640'      '#34253#23383':'#27298#39511#20540#36942#20302
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 24
        Top = 8
        Width = 75
        Height = 27
        Anchors = [akRight, akBottom]
        Caption = #26597#35426
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
  end
end
