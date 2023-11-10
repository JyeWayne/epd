inherited FrmSetPhrase: TFrmSetPhrase
  Tag = 9999
  Left = 438
  BorderIcons = [biSystemMenu]
  Caption = 'FrmSetPhrase'
  ClientWidth = 731
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Width = 731
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 731
    Height = 653
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 729
      Height = 248
      Align = alTop
      TabOrder = 0
      object RGDKind: TRadioGroup
        Left = 1
        Top = 1
        Width = 727
        Height = 88
        Align = alTop
        Caption = #39006#21029
        Columns = 3
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Impression')
        ParentFont = False
        TabOrder = 0
        OnClick = RGDKindClick
      end
      object Panel2: TPanel
        Left = 1
        Top = 89
        Width = 727
        Height = 158
        Align = alClient
        TabOrder = 1
        object Label1: TLabel
          Left = 108
          Top = 8
          Width = 42
          Height = 14
          Caption = #20301#32622' :'
        end
        object Label2: TLabel
          Left = 108
          Top = 32
          Width = 18
          Height = 15
          Caption = '  '
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 400
          Top = 64
          Width = 28
          Height = 14
          Caption = #25490#24207
        end
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 1
          Width = 96
          Height = 156
          Align = alLeft
          Caption = #27512#23660#23652#32026
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            #20840#38498
            #31185#21029
            #20491#20154)
          ParentFont = False
          TabOrder = 0
          OnClick = RGDKindClick
        end
        object Edit1: TEdit
          Left = 109
          Top = 64
          Width = 278
          Height = 22
          TabOrder = 1
        end
        object Button1: TButton
          Left = 549
          Top = 96
          Width = 75
          Height = 25
          Caption = #26032#22686
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 637
          Top = 96
          Width = 75
          Height = 25
          Caption = #21462#28040
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 549
          Top = 64
          Width = 75
          Height = 25
          Caption = #21034#38500
          TabOrder = 4
          OnClick = Button3Click
        end
        object CheckBox1: TCheckBox
          Left = 108
          Top = 96
          Width = 109
          Height = 17
          Caption = #21152#20837#25991#23383#26041#22602
          TabOrder = 5
          Visible = False
        end
        object Edit2: TEdit
          Left = 212
          Top = 96
          Width = 177
          Height = 22
          TabOrder = 6
          Text = #25991#23383#20839#23481
          Visible = False
        end
        object Edit3: TEdit
          Left = 432
          Top = 64
          Width = 97
          Height = 22
          TabOrder = 7
        end
        object CheckBox2: TCheckBox
          Left = 400
          Top = 96
          Width = 81
          Height = 17
          Caption = #21487#21246#36984
          TabOrder = 8
          Visible = False
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 249
      Width = 729
      Height = 403
      Align = alClient
      TabOrder = 1
      object TreeView2: TTreeView
        Left = 1
        Top = 1
        Width = 728
        Height = 401
        Align = alLeft
        Indent = 19
        TabOrder = 0
        OnClick = TreeView2Click
      end
      object TreeView1: TTreeView
        Left = 448
        Top = 88
        Width = 265
        Height = 220
        Indent = 19
        TabOrder = 1
        Visible = False
      end
    end
  end
end
