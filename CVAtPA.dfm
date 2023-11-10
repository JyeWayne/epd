inherited FrmCVAtPA: TFrmCVAtPA
  Tag = 9999
  Left = 181
  Top = 15
  BorderIcons = [biSystemMenu]
  Caption = 'FrmCVAtPA'
  ClientWidth = 991
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Width = 991
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 991
    Height = 175
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 272
      Top = 9
      Width = 253
      Height = 20
      Caption = 'rt'#65293'PA therapy in ischemic stroke '
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 536
      Top = 9
      Width = 80
      Height = 20
      Caption = #27835#30274#32000#37636#34920
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 30
      Width = 989
      Height = 120
      Align = alBottom
      Caption = #22522#26412#36039#26009
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 24
        Width = 64
        Height = 20
        Caption = #30149#27511#34399#65306
      end
      object Label4: TLabel
        Left = 224
        Top = 24
        Width = 48
        Height = 20
        Caption = #22995#21517#65306
      end
      object Label5: TLabel
        Left = 7
        Top = 56
        Width = 144
        Height = 20
        Caption = #35443#32048#24613#24615#30332#20316#26178#38291#65306
      end
      object Label6: TLabel
        Left = 432
        Top = 24
        Width = 48
        Height = 20
        Caption = #24180#40801#65306
      end
      object Label7: TLabel
        Left = 409
        Top = 60
        Width = 16
        Height = 20
        Caption = #25110
      end
      object Label8: TLabel
        Left = 7
        Top = 88
        Width = 64
        Height = 20
        Caption = #37327#34880#22739#65306
      end
      object Label9: TLabel
        Left = 226
        Top = 88
        Width = 36
        Height = 20
        Caption = #39636#37325':'
      end
      object Label10: TLabel
        Left = 408
        Top = 88
        Width = 88
        Height = 20
        Caption = 'NIHSS'#65306'      '
      end
      object Label11: TLabel
        Left = 154
        Top = 88
        Width = 36
        Height = 20
        Caption = #13212'hg'
      end
      object Label12: TLabel
        Left = 344
        Top = 88
        Width = 16
        Height = 20
        Caption = #13199
      end
      object Label13: TLabel
        Left = 524
        Top = 88
        Width = 16
        Height = 20
        Caption = #20998
      end
      object EdtStardatetime: TEdit
        Left = 150
        Top = 56
        Width = 251
        Height = 28
        TabOrder = 0
        Text = '  '#24180'  '#26376'  '#26085'  '#26178'  '#20998
      end
      object CBXBASIC1: TCheckBox
        Left = 430
        Top = 60
        Width = 55
        Height = 17
        Caption = #19981#35443
        TabOrder = 1
      end
      object CBXBASIC2: TCheckBox
        Left = 488
        Top = 60
        Width = 105
        Height = 17
        Caption = #30561#35258#20013#30332#29983
        TabOrder = 2
      end
      object EdtBP: TEdit
        Left = 70
        Top = 88
        Width = 81
        Height = 28
        Hint = #37327#34880#22739#65306'_'#13212'hg'
        TabOrder = 3
      end
      object EdtWeight: TEdit
        Left = 266
        Top = 88
        Width = 73
        Height = 28
        Hint = #39636#37325':_'#13199
        TabOrder = 4
      end
      object EdtNihss: TEdit
        Left = 470
        Top = 88
        Width = 49
        Height = 28
        Hint = 'NIHSS'#65306'_'#20998
        TabOrder = 5
      end
      object GroupBox2: TGroupBox
        Left = 618
        Top = 22
        Width = 369
        Height = 96
        Align = alRight
        Caption = #25910#26696#26781#20214#65288#24517#38920#22343#28858'"'#26159'")'
        TabOrder = 6
        object CBXBASIC3: TCheckBox
          Left = 24
          Top = 25
          Width = 321
          Height = 19
          Caption = #32570#34880#24615#33126#20013#39080#65292#20013#39080#26178#38291#26126#30906#22312#19977#23567#26178#20839
          TabOrder = 0
        end
        object CBXBASIC4: TCheckBox
          Left = 24
          Top = 49
          Width = 321
          Height = 19
          Caption = #33126#37096#38651#33126#26039#23652#27794#26377#39025#20839#20986#34880
          TabOrder = 1
        end
        object CBXBASIC5: TCheckBox
          Left = 25
          Top = 73
          Width = 321
          Height = 20
          Caption = #24180#40801#22312'18'#27506#21040'80'#27506#20043#38291
          TabOrder = 2
        end
      end
      object EdtCHRNO: TEdit
        Left = 70
        Top = 24
        Width = 145
        Height = 28
        TabOrder = 7
      end
      object EdtNAME: TEdit
        Left = 272
        Top = 24
        Width = 145
        Height = 28
        TabOrder = 8
      end
      object EdtAGE: TEdit
        Left = 480
        Top = 24
        Width = 105
        Height = 28
        TabOrder = 9
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 150
      Width = 989
      Height = 24
      Align = alBottom
      Caption = #25490#38500#26781#20214
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object ScrollBox1: TScrollBox [2]
    Left = 0
    Top = 175
    Width = 991
    Height = 478
    VertScrollBar.Position = 298
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 2
    OnMouseWheelDown = ScrollBox1MouseWheelDown
    OnMouseWheelUp = ScrollBox1MouseWheelUp
    object Panel2: TPanel
      Left = 0
      Top = -298
      Width = 974
      Height = 776
      Align = alTop
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 492
        Height = 774
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 0
          Top = 268
          Width = 492
          Height = 324
          Align = alTop
          Caption = #36942#21435#30149#21490#65288#24517#38920#22343#28858'"'#21542'"'#65289
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CBXCONDI23: TCheckBox
            Left = 16
            Top = 29
            Width = 460
            Height = 19
            Caption = #36942#21435#26366#26377#39025#20839#20986#34880#30149#21490
            TabOrder = 0
          end
          object CBXCONDI24: TCheckBox
            Left = 16
            Top = 63
            Width = 460
            Height = 19
            Caption = #36942#21435#23565#26412#34277#20043#20027#25104#20998'Actilyse'#25110#36070#22411#21137#36942#25935#32773
            TabOrder = 1
          end
          object CBXCONDI25: TCheckBox
            Left = 16
            Top = 98
            Width = 460
            Height = 19
            Caption = #26368#36817'3'#20491#26376#20839#26377#20013#39080#30149#21490
            TabOrder = 2
          end
          object CBXCONDI26: TCheckBox
            Left = 16
            Top = 133
            Width = 460
            Height = 19
            Caption = #26368#36817'3'#20491#26376#20839#26377#22196#37325#38957#37096#21463#21109
            TabOrder = 3
          end
          object CBXCONDI27: TCheckBox
            Left = 16
            Top = 167
            Width = 460
            Height = 19
            Caption = #26368#36817'3'#20491#26376#20839#30332#29983#36942#24613#24615#24515#32908#26775#22622
            TabOrder = 4
          end
          object CBXCONDI28: TCheckBox
            Left = 16
            Top = 202
            Width = 460
            Height = 19
            Caption = #26368#36817'21'#22825#20839#26366#26377#32963#33144#36947#25110#27852#23615#31995#32113#20986#34880
            TabOrder = 5
          end
          object CBXCONDI29: TCheckBox
            Left = 16
            Top = 237
            Width = 460
            Height = 19
            Caption = #26368#36817'14'#22825#20839#26366#21205#36942#22823#25163#34899#25110#22196#37325#21109#20663
            TabOrder = 6
          end
          object CBXCONDI30: TCheckBox
            Left = 16
            Top = 262
            Width = 460
            Height = 49
            Caption = #36942#21435'10'#22825#20839#26366#23565#28961#27861#22739#21046#20043#37096#20301#26045#34892#34880#31649#31359#21050#65288#22914#37782#39592#19979#38748#33032#25110#38968#38748#33032#31359#21050#65289
            TabOrder = 7
            WordWrap = True
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 492
          Height = 186
          Align = alTop
          Caption = #34880#28082#29983#21270#25152#35211#65288#24517#38920#22343#28858'"'#21542'"'#65289
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object CBXCONDI1: TCheckBox
            Left = 16
            Top = 26
            Width = 449
            Height = 45
            Caption = #20013#39080#30332#20316#21069'48'#23567#26178#20839#20351#29992'heparin '#65292#30446#21069#30149#20154' '#27963#21270#37096#20998#20957#34880'?'#21407#26178#38291#65288'aPTT'#65289#20043#20540#36942#39640
            TabOrder = 0
            WordWrap = True
          end
          object CBXCONDI2: TCheckBox
            Left = 16
            Top = 79
            Width = 460
            Height = 19
            Caption = #30149#20154#27491#25509#21463#21475#26381#25239#20957#34880#21137#65288#22914'warfarin sodium'#65289' '#19988'INR'#65310'1.3'
            TabOrder = 1
          end
          object CBXCONDI3: TCheckBox
            Left = 16
            Top = 109
            Width = 460
            Height = 19
            Caption = #34880#23567#26495#65308'100'#65292'000/'#13212'3'
            TabOrder = 2
          end
          object CBXCONDI4: TCheckBox
            Left = 16
            Top = 140
            Width = 460
            Height = 38
            Caption = #34880#31958#65308'50mg/dl'#25110#65310'400mg/dl'#65288#20294#34880#31958#65310'200 mg/dl '#21363#25033#38750#24120#23567#24515#65289
            TabOrder = 3
            WordWrap = True
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 186
          Width = 492
          Height = 82
          Align = alTop
          Caption = #24433#20687#25152#35211#65288#24517#38920#22343#28858'"'#21542'"'#65289
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object CBXCONDI18: TCheckBox
            Left = 16
            Top = 24
            Width = 460
            Height = 49
            Caption = #24433#20687#35413#20272#28858#22196#37325#20043#20013#39080#65288#38651#33126#26039#23652#22823#26044'1/3'#20013#22823#33126' '#21205#33032#28748#27969#21312#20043#20302#23494#24230#35722#21270#65292#25110#20013#32218#20559#31227#65289
            TabOrder = 0
            WordWrap = True
          end
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 592
          Width = 492
          Height = 132
          Align = alTop
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label40: TLabel
            Left = 14
            Top = 60
            Width = 68
            Height = 20
            Caption = #35413#20272#37291#24107':'
            Transparent = True
          end
          object CBXBASIC6: TCheckBox
            Left = 14
            Top = 24
            Width = 65
            Height = 20
            Caption = #31526#21512
            TabOrder = 0
            WordWrap = True
            OnClick = CBXBASIC6Click
          end
          object CBXBASIC7: TCheckBox
            Left = 128
            Top = 24
            Width = 77
            Height = 20
            Caption = #19981#31526#21512':'
            TabOrder = 1
            WordWrap = True
            OnClick = CBXBASIC7Click
          end
          object Button1: TButton
            Left = 302
            Top = 85
            Width = 75
            Height = 25
            Caption = #23384#27284
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 206
            Top = 85
            Width = 75
            Height = 25
            Caption = #21015#21360
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 398
            Top = 85
            Width = 75
            Height = 25
            Caption = #38626#38283
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = Button3Click
          end
          object cbbNIHSScode: TComboBox
            Left = 14
            Top = 87
            Width = 166
            Height = 23
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ItemHeight = 15
            ParentFont = False
            TabOrder = 5
            Text = #35531#36984#25799
            OnKeyDown = cbbNIHSScodeKeyDown
          end
          object MemBASIC7: TMemo
            Left = 210
            Top = 24
            Width = 273
            Height = 57
            Lines.Strings = (
              '')
            TabOrder = 6
          end
        end
      end
      object Panel4: TPanel
        Left = 493
        Top = 1
        Width = 480
        Height = 774
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object GroupBox7: TGroupBox
          Left = 0
          Top = 0
          Width = 480
          Height = 526
          Align = alTop
          Caption = #33256#24202#35264#23519#30149#20154#29694#27841#65288#24517#38920#22343#28858'"'#21542'"'#65289
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object CBXCONDI5: TCheckBox
            Left = 16
            Top = 24
            Width = 460
            Height = 41
            Caption = #36664#27880#26412#34277#21069#65292#32570#34880#24615#30332#20316#30340#26178#38291#24050#36229#36942'3'#23567#26178#25110#30151#29376#30332#20316#26178#38291#19981#26126
            TabOrder = 0
            WordWrap = True
          end
          object CBXCONDI17: TCheckBox
            Left = 16
            Top = 463
            Width = 460
            Height = 55
            Caption = #20854#20182#65288#20363#22914#22312#25490#38500#26781#20214#26410#25552#21040#20294#26371#22686#21152#20986#34880#21361#38570#30340#29376#27841#65292#22914#27963#21205#24615#32954#32080#26680#12289#27927#33102#24739#32773#12289#22196#37325#24515#34928#31469#12289#36523#39636#22826#34928#24369#32773#12289#22196#37325#22833#26234#30151#25110#20854#20182#65289
            TabOrder = 1
            WordWrap = True
          end
          object CBXCONDI6: TCheckBox
            Left = 16
            Top = 67
            Width = 460
            Height = 37
            Caption = #36664#27880#26412#34277#21069#65292#24613#24615#32570#34880#24615#20013#39080#30340#30151#29376#24050#36805#36895#25913#21892#25110#30151#29376#36629#24494#65288#22914'NIHSS'#65308'6'#20998#65289
            TabOrder = 2
            WordWrap = True
          end
          object CBXCONDI7: TCheckBox
            Left = 16
            Top = 109
            Width = 460
            Height = 44
            Caption = #20013#39080#30332#20316#26178#20341#30332#30322#30279#65288#20294#33509#24433#20687#27298#26597#33021#30906#23450#28858#32570#34880#24615#20013#39080#21063#19981#22312#27492#38480#65289
            TabOrder = 3
            WordWrap = True
          end
          object CBXCONDI8: TCheckBox
            Left = 16
            Top = 156
            Width = 460
            Height = 20
            Caption = #25910#32302#22739#65310'185'#13212'Hg'
            TabOrder = 4
            WordWrap = True
          end
          object CBXCONDI9: TCheckBox
            Left = 16
            Top = 182
            Width = 460
            Height = 19
            Caption = #33298#24373#22739#65310'110'#13212'Hg'
            TabOrder = 5
            WordWrap = True
          end
          object CBXCONDI10: TCheckBox
            Left = 16
            Top = 207
            Width = 460
            Height = 18
            Caption = #39025#20839#33131#30244#12289#21205#38748#33032#30072#24418#25110#34880#31649#30244
            TabOrder = 6
            WordWrap = True
          end
          object CBXCONDI11: TCheckBox
            Left = 16
            Top = 234
            Width = 460
            Height = 35
            Caption = #20986#34880#24615#35222#32178#33180#30149#35722#65292#22914#31958#23615#30149#24615#65288#35222#35258#38556#31001#21487#33021#28858#20986#34880#24615#35222#32178#33180#30149#35722#30340#25351#27161#65289#25110#20854#20182#20986#34880#24615#30524#30142
            TabOrder = 7
            WordWrap = True
          end
          object CBXCONDI12: TCheckBox
            Left = 16
            Top = 278
            Width = 460
            Height = 19
            Caption = #32048#33740#24615#24515#20839#33180#28814#12289#24515#21253#28814
            TabOrder = 8
            WordWrap = True
          end
          object CBXCONDI13: TCheckBox
            Left = 16
            Top = 305
            Width = 460
            Height = 57
            Caption = #26377#25079#30097#20027#21205#33032#21085#38626#20043#35657#25818#65306#24613#24615#33016#30171#25110#32972#30171#65292#29702#23416#27298#26597#26377#20302#34880#22739#12289#26411#26786#21205#33032#25615#21205#28187#24369#12289#25110#22823#21205#33032#26377#36870#27969#24615#38620#38899#65292#33016#37096'X'#20809#27298#26597#32305#38548#33108#25844#22823
            TabOrder = 9
            WordWrap = True
          end
          object CBXCONDI14: TCheckBox
            Left = 16
            Top = 368
            Width = 460
            Height = 37
            Caption = #22196#37325#32925#30149#65292#21253#25324#32925#34928#31469#12289#32925#30828#21270#12289#32925#38272#33032#39640#22739#65288#39135#36947#38748#33032#26354#24373#65289#21450#24613#24615#32925#28814
            TabOrder = 10
            WordWrap = True
          end
          object CBXCONDI15: TCheckBox
            Left = 16
            Top = 411
            Width = 460
            Height = 20
            Caption = #24613#24615#33008#33247#28814
            TabOrder = 11
            WordWrap = True
          end
          object CBXCONDI16: TCheckBox
            Left = 16
            Top = 437
            Width = 460
            Height = 19
            Caption = #36523#39636#20219#20309#37096#20301#26377#27963#21205#24615#20839#20986#34880
            TabOrder = 12
            WordWrap = True
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 526
          Width = 480
          Height = 151
          Align = alTop
          Caption = #24910#37325#32771#24942#20043#24773#27841'('#33258#36027':tPA'#26045#25171')'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label17: TLabel
            Left = 2
            Top = 24
            Width = 480
            Height = 20
            Caption = #65288#22240#39080#38570#22686#21152#65292#26045#25171#33287#21542#38656#31070#32147#20839#31185#37291#24107#33287#30149#20154#12289#23478#23660#20316#20805#20998#28317#36890#65289
          end
          object CBXCONDI19: TCheckBox
            Left = 16
            Top = 53
            Width = 460
            Height = 19
            Caption = #24180#40801#22312'18'#27506#20197#19979#65292#25110'80'#27506#20197#19978
            TabOrder = 0
          end
          object CBXCONDI20: TCheckBox
            Left = 16
            Top = 77
            Width = 460
            Height = 19
            Caption = #33256#24202#21028#23450#28858#22196#37325#20043#20013#39080#65288#20363#22914'NIHSS'#65310'25'#12289'NIHSS 4~5'#20998#65289
            TabOrder = 1
          end
          object CBXCONDI21: TCheckBox
            Left = 16
            Top = 101
            Width = 460
            Height = 19
            Caption = #36942#21435'10'#22825#20839#20998#23081
            TabOrder = 2
          end
          object CBXCONDI22: TCheckBox
            Left = 16
            Top = 125
            Width = 460
            Height = 19
            Caption = #25511#21046#19981#33391#20043#31958#23615#30149
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited Timer2: TTimer
    Left = 808
    Top = 280
  end
end
