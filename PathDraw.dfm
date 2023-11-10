inherited FrmPathDraw: TFrmPathDraw
  Tag = 9999
  Left = 317
  Top = 144
  Caption = 'FrmPathDraw'
  ClientHeight = 521
  ClientWidth = 819
  Menu = MainMenu1
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 504
    Width = 819
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 819
    Height = 504
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentColor = True
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 197
      Height = 504
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Image1: TImage
        Left = 7
        Top = 313
        Width = 185
        Height = 185
        Visible = False
      end
      object SpeedButton7: TSpeedButton
        Left = 72
        Top = 193
        Width = 49
        Height = 23
        AllowAllUp = True
        GroupIndex = 1
        Caption = #27161#34399
        Enabled = False
      end
      object Label2: TLabel
        Left = 8
        Top = 228
        Width = 56
        Height = 14
        Caption = #32302#25918#27604#20363
        Visible = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 197
        Height = 121
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 64
          Width = 64
          Height = 15
          Caption = #31558#30059#31895#32048
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 136
          Top = 92
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Down = True
          Caption = #30452#32218
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 72
          Top = 92
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Caption = #26354#32218
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 9
          Top = 92
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Caption = #26694#32218
          OnClick = SpeedButton5Click
        end
        object SpinEdit1: TSpinEdit
          Left = 90
          Top = 60
          Width = 41
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          MaxValue = 6
          MinValue = 1
          ParentFont = False
          TabOrder = 0
          Value = 2
          OnChange = SpinEdit1Change
        end
        object ColorGrid1: TColorGrid
          Left = 8
          Top = 8
          Width = 176
          Height = 40
          GridOrdering = go8x2
          TabOrder = 1
          OnClick = ColorGrid1Click
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 121
        Width = 197
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object RectangleButton: TSpeedButton
          Left = 8
          Top = 4
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333300003000000000000000000300003033333333333333330300003033
            3333333333333303000030333333333333333303000030333333333333333303
            0000303333333333333333030000303333333333333333030000303333333333
            3333330300003033333333333333330300003033333333333333330300003033
            3333333333333303000030333333333333333303000030333333333333333303
            0000303333333333333333030000303333333333333333030000303333333333
            3333330300003033333333333333330300003000000000000000000300003333
            33333333333333330000}
          OnClick = RectangleButtonClick
        end
        object EllipseButton: TSpeedButton
          Left = 72
          Top = 4
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D800000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            3333330000003333003333330033330000003330333333333303330000003303
            3333333333303300000030333333333333330300000030333333333333330300
            0000033333333333333330000000033333333333333330000000033333333333
            3333300000000333333333333333300000000333333333333333300000000333
            3333333333333000000030333333333333330300000030333333333333330300
            0000330333333333333033000000333033333333330333000000333300333333
            003333000000333333000000333333000000}
          OnClick = EllipseButtonClick
        end
        object RoundRectButton: TSpeedButton
          Left = 136
          Top = 4
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D800000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0033330000003300333333333300330000003033333333333333030000003033
            3333333333330300000003333333333333333000000003333333333333333000
            0000033333333333333330000000033333333333333330000000033333333333
            3333300000000333333333333333300000000333333333333333300000000333
            3333333333333000000003333333333333333000000003333333333333333000
            0000303333333333333303000000303333333333333303000000330033333333
            330033000000333300000000003333000000}
          OnClick = RoundRectButtonClick
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 152
        Width = 197
        Height = 38
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object SpeedButton2: TSpeedButton
          Left = 8
          Top = 6
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Caption = #28961#22635#28415
          OnClick = SpeedButton2Click
        end
        object SolidBrush: TSpeedButton
          Left = 72
          Top = 6
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Caption = #22635#28415
          OnClick = SolidBrushClick
        end
        object SpeedButton1: TSpeedButton
          Left = 136
          Top = 6
          Width = 49
          Height = 23
          AllowAllUp = True
          GroupIndex = 1
          Caption = #32178#29376
          OnClick = SpeedButton1Click
        end
      end
      object Button1: TButton
        Left = 136
        Top = 192
        Width = 51
        Height = 23
        Caption = 'Reload'
        TabOrder = 3
        OnClick = Button1Click
      end
      object ComboBox1: TComboBox
        Left = 80
        Top = 224
        Width = 97
        Height = 22
        ItemHeight = 14
        TabOrder = 4
        Text = '3_100%'
        Visible = False
        OnChange = ComboBox1Change
        Items.Strings = (
          '0_200%'
          '1_150%'
          '2_125%'
          '3_100%'
          '4_75%'
          '5_50%'
          '6_25%')
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 192
        Width = 49
        Height = 23
        Caption = #21098#19979
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #32048#26126#39636
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 8
        Top = 256
        Width = 177
        Height = 25
        Caption = #30906#35469
        TabOrder = 6
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 8
        Top = 284
        Width = 177
        Height = 25
        Caption = #21462#28040
        TabOrder = 7
        OnClick = BitBtn3Click
      end
    end
    object Panel7: TPanel
      Left = 197
      Top = 0
      Width = 622
      Height = 504
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 622
        Height = 504
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object Image: TImage
          Left = 0
          Top = 0
          Width = 345
          Height = 230
          AutoSize = True
          OnMouseDown = ImageMouseDown
          OnMouseMove = ImageMouseMove
          OnMouseUp = ImageMouseUp
        end
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 136
    Top = 64
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 160
    Top = 64
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 176
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 728
    Top = 16
    object N1: TMenuItem
      Caption = #27284#26696
      object N2: TMenuItem
        Caption = #38283#26032#27284#26696
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #38283#21855#33290#27284
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #21478#23384#26032#27284
      end
      object N5: TMenuItem
        Caption = #38626#38283
      end
    end
  end
end
