inherited FrmISS: TFrmISS
  Tag = 9999
  Left = 255
  Top = 20
  Caption = 'FrmISS'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 986
    Height = 81
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Tag = 9999
      Left = 685
      Top = 55
      Width = 36
      Height = 16
      Caption = 'ISS:'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 6
      Width = 75
      Height = 25
      Caption = #38957'/'#38968#37096
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 368
      Top = 6
      Width = 75
      Height = 25
      Caption = #33145#37096
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 144
      Top = 6
      Width = 75
      Height = 25
      Caption = #33225#37096
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 480
      Top = 6
      Width = 75
      Height = 25
      Caption = #22235#32930
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 256
      Top = 6
      Width = 75
      Height = 25
      Caption = #33016#37096
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 592
      Top = 6
      Width = 75
      Height = 25
      Caption = #22806#35264
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object MEdtHead: TMaskEdit
      Left = 56
      Top = 48
      Width = 18
      Height = 27
      Color = 15591928
      EditMask = '!9;1;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 6
      Text = ' '
    end
    object EditIss: TEdit
      Left = 723
      Top = 50
      Width = 54
      Height = 27
      Color = 14475765
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object MEdtFace: TMaskEdit
      Left = 169
      Top = 48
      Width = 18
      Height = 27
      Color = 15591928
      EditMask = '!9;1;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 8
      Text = ' '
    end
    object MEdtThorax: TMaskEdit
      Left = 283
      Top = 48
      Width = 18
      Height = 27
      Color = 15591928
      EditMask = '!9;1;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 9
      Text = ' '
    end
    object MEdtAbdomen: TMaskEdit
      Left = 396
      Top = 48
      Width = 18
      Height = 27
      Color = 15591928
      EditMask = '!9;1;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 10
      Text = ' '
    end
    object MEdtExtremity: TMaskEdit
      Left = 510
      Top = 48
      Width = 18
      Height = 27
      Color = 15591928
      EditMask = '!9;1;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 11
      Text = ' '
    end
    object MEdtExtrnal: TMaskEdit
      Left = 624
      Top = 48
      Width = 18
      Height = 27
      Color = 15591928
      EditMask = '!9;1;_'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 12
      Text = ' '
    end
    object Button1: TButton
      Left = 789
      Top = 16
      Width = 75
      Height = 45
      Caption = #23384#27284
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 897
      Top = 24
      Width = 59
      Height = 31
      Caption = #38626#38283
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 81
    Width = 986
    Height = 572
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 159
      Top = 544
      Width = 10
      Height = 19
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 544
      Width = 11
      Height = 19
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = #32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = -1
      Top = 40
      Width = 165
      Height = 497
      Color = 11659719
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 163
      Top = 40
      Width = 165
      Height = 497
      Color = 11659719
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object Memo3: TMemo
      Left = 328
      Top = 40
      Width = 165
      Height = 497
      Color = 11659719
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object Memo4: TMemo
      Left = 493
      Top = 40
      Width = 165
      Height = 497
      Color = 11659719
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object Memo5: TMemo
      Left = 658
      Top = 40
      Width = 165
      Height = 497
      Color = 11659719
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object Memo6: TMemo
      Left = 823
      Top = 40
      Width = 165
      Height = 497
      Color = 11659719
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object Button3: TButton
      Left = 56
      Top = 8
      Width = 90
      Height = 25
      Hint = '1'
      Caption = '1'#20998'/'#36984
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 217
      Top = 8
      Width = 90
      Height = 25
      Hint = '2'
      Caption = '2'#20998'/'#36984
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button5: TButton
      Left = 379
      Top = 8
      Width = 90
      Height = 25
      Hint = '3'
      Caption = '3'#20998'/'#36984
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button6: TButton
      Left = 540
      Top = 8
      Width = 90
      Height = 25
      Hint = '4'
      Caption = '4'#20998'/'#36984
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button3Click
    end
    object Button7: TButton
      Left = 702
      Top = 8
      Width = 90
      Height = 25
      Hint = '5'
      Caption = '5'#20998'/'#36984
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button8: TButton
      Left = 864
      Top = 8
      Width = 90
      Height = 25
      Hint = '6'
      Caption = '6'#20998'/'#36984
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button3Click
    end
    object Button9: TButton
      Left = 3
      Top = 8
      Width = 38
      Height = 25
      Hint = '0'
      Caption = '0'#20998
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button3Click
    end
  end
end
