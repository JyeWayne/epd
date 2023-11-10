inherited FrmBedEmpty: TFrmBedEmpty
  Left = 53
  Top = 14
  BorderIcons = [biSystemMenu]
  Caption = 'FrmBedEmpty'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 0
    Width = 986
    Height = 653
    ActivePage = TabBed
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #27161#26999#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabBed: TTabSheet
      Caption = #31354#24202#26597#35426
      ImageIndex = 4
      object SGBed: TStringGrid
        Left = 0
        Top = 0
        Width = 305
        Height = 621
        Align = alLeft
        ColCount = 2
        DefaultRowHeight = 21
        FixedCols = 0
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        TabOrder = 0
        OnDblClick = SGBedDblClick
        ColWidths = (
          179
          114)
      end
      object PanelBed: TPanel
        Left = 486
        Top = 0
        Width = 492
        Height = 621
        Align = alRight
        ParentBackground = False
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 490
          Height = 30
          Align = alTop
          TabOrder = 0
          object LbCost: TLabel
            Left = 25
            Top = 6
            Width = 63
            Height = 19
            Caption = #35703#29702#31449
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #27161#26999#39636
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DGBed: TDrawGrid
          Left = 1
          Top = 31
          Width = 490
          Height = 589
          Align = alClient
          DefaultRowHeight = 80
          FixedCols = 0
          FixedRows = 0
          TabOrder = 1
          Visible = False
        end
        object Panel9: TPanel
          Left = 1
          Top = 31
          Width = 490
          Height = 22
          TabOrder = 2
          object PanelDGBed: TPanel
            Left = 88
            Top = -21
            Width = 401
            Height = 20
            BorderWidth = 1
            Caption = #24202#20301
            TabOrder = 0
            Visible = False
          end
          object PanelDGRoom: TPanel
            Left = 1
            Top = -20
            Width = 88
            Height = 20
            BorderWidth = 1
            Caption = #30149#25151#34399
            TabOrder = 1
            Visible = False
          end
        end
        object SGCostBed: TStringGrid
          Left = 1
          Top = 31
          Width = 490
          Height = 589
          Align = alClient
          DefaultColWidth = 120
          DefaultRowHeight = 70
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #27161#26999#39636
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnDrawCell = SGCostBedDrawCell
          OnMouseMove = SGCostBedMouseMove
        end
      end
    end
  end
end
