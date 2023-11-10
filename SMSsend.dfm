inherited FrmSMSsend: TFrmSMSsend
  Tag = 9999
  Left = 436
  Top = 100
  Caption = #31777#35338#24179#21488
  ClientHeight = 605
  ClientWidth = 663
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 588
    Width = 663
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 663
    Height = 73
    Align = alTop
    BevelWidth = 2
    TabOrder = 1
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 83
      Height = 69
      Align = alLeft
      BevelOuter = bvNone
      Caption = #35338#24687#20839#23481':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 84
      Top = 27
      Width = 567
      Height = 23
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Edit2'
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 73
    Width = 663
    Height = 461
    Align = alClient
    BevelWidth = 2
    TabOrder = 2
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 79
      Height = 457
      Align = alLeft
      BevelOuter = bvNone
      Caption = #20659#36865#21517#21934':'
      UseDockManager = False
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel6: TPanel
      Left = 81
      Top = 2
      Width = 580
      Height = 457
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel7: TPanel
        Left = 297
        Top = 0
        Width = 41
        Height = 457
        BevelOuter = bvNone
        TabOrder = 0
        object Button1: TButton
          Left = 6
          Top = 80
          Width = 28
          Height = 25
          Caption = '<<'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 6
          Top = 116
          Width = 28
          Height = 25
          Caption = '>>'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object Panel8: TPanel
        Left = 338
        Top = 0
        Width = 242
        Height = 457
        BevelOuter = bvNone
        TabOrder = 1
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 242
          Height = 70
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Edit1: TEdit
            Left = 32
            Top = 19
            Width = 137
            Height = 22
            TabOrder = 0
          end
          object BitBtn3: TBitBtn
            Left = 185
            Top = 18
            Width = 33
            Height = 25
            Caption = #25628
            TabOrder = 1
            OnClick = BitBtn3Click
          end
        end
        object ListBox1: TListBox
          Left = 0
          Top = 70
          Width = 242
          Height = 387
          Align = alClient
          ItemHeight = 14
          TabOrder = 1
          OnClick = ListBox1Click
        end
        object ListBox3: TListBox
          Left = 128
          Top = 233
          Width = 145
          Height = 112
          ItemHeight = 14
          TabOrder = 2
          Visible = False
        end
        object ListBox4: TListBox
          Left = 129
          Top = 96
          Width = 145
          Height = 105
          ItemHeight = 14
          TabOrder = 3
          Visible = False
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 297
        Height = 457
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel10'
        TabOrder = 2
        object ListBox2: TListBox
          Left = 0
          Top = 70
          Width = 297
          Height = 387
          Align = alClient
          ItemHeight = 14
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 297
          Height = 70
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn1: TBitBtn
            Left = 96
            Top = 5
            Width = 77
            Height = 25
            Caption = #21152#20837#32676#32068
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object CBSMSGROUP: TComboBox
            Left = 176
            Top = 6
            Width = 113
            Height = 22
            ItemHeight = 14
            TabOrder = 1
            Text = 'CBSMSGROUP'
            OnChange = CBSMSGROUPChange
          end
          object BitBtn5: TBitBtn
            Left = 8
            Top = 5
            Width = 81
            Height = 25
            Caption = #24478#32676#32068#21034#38500
            TabOrder = 2
            OnClick = BitBtn5Click
            NumGlyphs = 2
          end
          object BitBtn4: TBitBtn
            Left = 96
            Top = 36
            Width = 77
            Height = 25
            Caption = #26032#22686#32676#32068
            TabOrder = 3
            OnClick = BitBtn4Click
          end
          object EdtSMSGROUP: TEdit
            Left = 176
            Top = 37
            Width = 113
            Height = 22
            TabOrder = 4
            Text = 'EdtSMSGROUP'
          end
        end
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 534
    Width = 663
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnSMSsend: TBitBtn
      Left = 456
      Top = 16
      Width = 75
      Height = 25
      Caption = #30332#36865
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSMSsendClick
    end
    object BitBtn2: TBitBtn
      Left = 560
      Top = 16
      Width = 75
      Height = 25
      Caption = #21462#28040
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
