inherited FrmMECHANISM: TFrmMECHANISM
  Tag = 9999
  Left = 485
  Top = 248
  Caption = 'FrmMECHANISM'
  ClientHeight = 477
  ClientWidth = 534
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 460
    Width = 534
  end
  object Panel9: TPanel [1]
    Left = 0
    Top = 0
    Width = 534
    Height = 419
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RBAMI: TRadioButton
      Left = 16
      Top = 32
      Width = 105
      Height = 17
      Caption = 'AMI'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RBCVA: TRadioButton
      Left = 16
      Top = 88
      Width = 105
      Height = 17
      Caption = 'CVA'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 532
      Height = 192
      Align = alTop
      Caption = 'Trauma mechanism'
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 72
        Height = 15
        Caption = #20107#30332#26178#38291':'
      end
      object Label4: TLabel
        Left = 253
        Top = 24
        Width = 72
        Height = 15
        Caption = #21040#38498#26178#38291':'
      end
      object Label5: TLabel
        Left = 8
        Top = 63
        Width = 72
        Height = 15
        Caption = #20107#25925#39006#21029':'
      end
      object Edit2: TEdit
        Left = 325
        Top = 24
        Width = 169
        Height = 23
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 152
        Top = 158
        Width = 377
        Height = 23
        TabOrder = 1
      end
      object CheckListBox2: TCheckListBox
        Left = 88
        Top = 63
        Width = 441
        Height = 89
        Columns = 2
        ItemHeight = 15
        Items.Strings = (
          #27773#36554#20107#25925
          #27231#36554#20107#25925
          #33139#36367#36554
          #34892#20154
          #30896#25758
          #22700#33853#8807'6'#20844#23610
          #22700#33853#8806'6'#20844#23610
          #29145#20663
          #39717#27590)
        TabOrder = 2
      end
      object CheckBox10: TCheckBox
        Left = 88
        Top = 161
        Width = 65
        Height = 17
        Caption = #20854#20182
        TabOrder = 3
      end
      object MaskEdit1: TMaskEdit
        Left = 80
        Top = 24
        Width = 89
        Height = 23
        EditMask = '!999/99/00;0;_'
        MaxLength = 9
        TabOrder = 4
      end
      object MaskEdit2: TMaskEdit
        Left = 176
        Top = 24
        Width = 55
        Height = 23
        EditMask = '!90:00;0;_'
        MaxLength = 5
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 193
      Width = 532
      Height = 225
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 3
      DesignSize = (
        532
        225)
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 530
        Height = 192
        Align = alTop
        Caption = 'Trauma blue '
        TabOrder = 0
        object Bevel1: TBevel
          Left = 2
          Top = 17
          Width = 167
          Height = 160
          Visible = False
        end
        object CheckListBox1: TCheckListBox
          Left = 8
          Top = 17
          Width = 520
          Height = 173
          OnClickCheck = CheckListBox1ClickCheck
          Align = alRight
          ItemHeight = 15
          Items.Strings = (
            #20241#20811#29694#35937' ('#25104#20154#25910#32302#22739' < 90 mmHg'#25110#20818#31461#34880#22739' <+'#24180#40801'*2)'
            #21040#38498#24460#24515#36339#20572#27490#25110' PEA'
            #39640#34389#36300#33853#65306' > 6 m '#25110' 20 ft '#25110' 2 '#23652#27155
            #38957#12289#38968#25110#36544#24185#30340#27085#20663
            #36544#24185#20043#31359#36879#24615#20663#21475#21450#38957#12289#38968#12289#33016#12289#33145#37096#31359#21050#20663
            #22196#37325#20043#33016#12289#33145#25110#39592#30406#37389#20663#23475
            #36817#31471#32930#39636#22196#37325#22739#30862#20663#25110#22806#20663#24615#25130#32930
            #22196#37325#39592#30406#39592#25240
            #22810#37325#37096#20301#20043#22806#20663#65371#20841#20491#65288#21547#65289#37096#20301#20197#19978#20043#22806#20663#65292#19981#21253#21547#34920#28154#25749#35010#20663#65373
            #29190#28856#20663
            #20854#23427#33256#24202#21028#26039)
          TabOrder = 0
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 88
          Width = 145
          Height = 25
          Caption = #19981#31526#21855#21205#26781#20214
          TabOrder = 1
          Visible = False
          OnClick = CheckBox1Click
        end
      end
      object Edit4: TEdit
        Left = 168
        Top = 195
        Width = 361
        Height = 23
        Anchors = [akLeft, akBottom]
        Enabled = False
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 419
    Width = 534
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      Caption = #30906#35469
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
