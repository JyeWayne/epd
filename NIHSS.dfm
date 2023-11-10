inherited FrmNIHSS: TFrmNIHSS
  Tag = 9999
  Left = 205
  Caption = 'FrmNIHSS'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object rdgChecktime: TRadioGroup [1]
    Left = 0
    Top = 0
    Width = 986
    Height = 50
    Align = alTop
    Caption = #35413#20272#26178#38291#40670
    Columns = 7
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #27161#26999#39636
    Font.Style = []
    Items.Strings = (
      '1.'#26045#25171'rt-PA'#21069
      '2.'#31532#20108#27425
      '3.'#31532#19977#27425
      '4.'#31532#22235#27425
      '5.'#31532#20116#27425
      '6.'#31532#20845#27425
      '7.'#31532#19971#27425)
    ParentFont = False
    TabOrder = 1
    OnClick = rdgChecktimeClick
  end
  object pgcNIHSS: TPageControl [2]
    Left = 0
    Top = 50
    Width = 986
    Height = 551
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #27161#26999#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #35413#37327#34920
      ImageIndex = 7
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 978
        Height = 520
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        ParentBackground = True
        TabOrder = 0
        OnMouseWheelDown = ScrollBox1MouseWheelDown
        OnMouseWheelUp = ScrollBox1MouseWheelUp
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 961
          Height = 129
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '1a.'#24847#35672#28165#26970#31243#24230#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 119
            Hint = '1a'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTAWARENESS0: TRadioButton
              Left = 34
              Top = 11
              Width = 204
              Height = 22
              Hint = '0'
              Caption = #28165#37266#65292#21453#25033#25935#37555#12290
              Checked = True
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #27161#26999#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTAWARENESS1: TRadioButton
              Left = 34
              Top = 33
              Width = 516
              Height = 22
              Hint = '1'
              Caption = #19981#28165#37266#65292#20294#21487#34249#36629#24494#30340#21050#28608#21914#37266#32780#36981#24478#25351#20196#65292#22238#31572#21839#38988#25110#21453#25033#12290
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #27161#26999#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTAWARENESS2: TRadioButton
              Left = 34
              Top = 58
              Width = 668
              Height = 34
              Hint = '2'
              Caption = #19981#28165#37266#65292#38920#35201#37325#35079#24615#30340#21050#28608#25165#33021#24341#36215#27880#24847#65292#25110#26159#24847#35672#36978#37389#19988#38656#35201#24375#22823#25110#30140#30171#21050#28608#25165#26377#21205#20316#65288#38750#37325#35079#22266#23450#30340#21205#20316#65289#12290
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #27161#26999#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTAWARENESS3: TRadioButton
              Left = 34
              Top = 97
              Width = 588
              Height = 18
              Hint = '3'
              Caption = #21453#25033#20677#38480#26044#21453#23556#21205#20316#25110#33258#20027#31070#32147#21453#23556#24615#34920#29694#65292#25110#23436#20840#28961#21453#25033#65292#24347#32233#65292#28961#21453#23556#12290
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #27161#26999#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 129
          Width = 961
          Height = 99
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '1b.'#22238#31572#21839#38988#20043#24847#35672#31243#24230#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 89
            Hint = '1b'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTANSWER0: TRadioButton
              Left = 34
              Top = 12
              Width = 232
              Height = 24
              Hint = '0'
              Caption = #21487#27491#30906#22238#31572#20841#20491#21839#38988
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTANSWER1: TRadioButton
              Left = 34
              Top = 39
              Width = 225
              Height = 22
              Hint = '1'
              Caption = #21487#27491#30906#22238#31572#19968#20491#21839#38988
              TabOrder = 1
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTANSWER2: TRadioButton
              Left = 34
              Top = 65
              Width = 239
              Height = 22
              Hint = '2'
              Caption = #20841#20491#21839#38988#22343#19981#33021#27491#30906#22238#31572
              TabOrder = 2
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 228
          Width = 961
          Height = 96
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '1c.'#22519#34892#21629#20196#20043#24847#35672#31243#24230#65306
          TabOrder = 2
          object GroupBox3: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 86
            Hint = '1c'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTCOMPLY0: TRadioButton
              Left = 34
              Top = 16
              Width = 232
              Height = 20
              Hint = '0'
              Caption = #21487#27491#30906#22519#34892#20841#20491#21629#20196
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTCOMPLY1: TRadioButton
              Left = 34
              Top = 40
              Width = 225
              Height = 20
              Hint = '1'
              Caption = #21487#27491#30906#22519#34892#19968#20491#21629#20196
              TabOrder = 1
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTCOMPLY2: TRadioButton
              Left = 34
              Top = 64
              Width = 239
              Height = 19
              Hint = '2'
              Caption = #20841#20491#21629#20196#22343#19981#33021#27491#30906#22519#34892
              TabOrder = 2
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 324
          Width = 961
          Height = 99
          Align = alTop
          BorderWidth = 4
          TabOrder = 3
          object Label41: TLabel
            Left = 5
            Top = 35
            Width = 220
            Height = 38
            Caption = '2.'#26368#20339#30340#30524#29699#36939#21205'(Best gaze)'#65306
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object GroupBox4: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 89
            Hint = '2'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTGAZE0: TRadioButton
              Left = 34
              Top = 11
              Width = 670
              Height = 18
              Hint = '0'
              Caption = #27491#24120
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTGAZE1: TRadioButton
              Left = 34
              Top = 33
              Width = 677
              Height = 31
              Hint = '1'
              Caption = #37096#20998#20957#35222#30064#24120#65292#30070#21934#30524#25110#38617#30524#30524#29699#20957#35222#30064#24120#65292#20294#20006#28961#24375#36843#24615#30340#20559#31227#25110#23436#20840#30321#30227#26178#20173#21487#32102#20104#20998#25976#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTGAZE2: TRadioButton
              Left = 34
              Top = 68
              Width = 670
              Height = 19
              Hint = '2'
              Caption = #24375#30452#24615#30340#20559#31227#65292#25110#23436#20840#30340#30321#30227#32780#28961#27861#29992#38957#30524#36939#21205#25805#30703#27491#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 423
          Width = 961
          Height = 116
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '3.'#35222#37326#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object GroupBox5: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 106
            Hint = '3'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTVISION0: TRadioButton
              Left = 34
              Top = 14
              Width = 232
              Height = 20
              Hint = '0'
              Caption = #28961#35222#35258#21930#22833
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTVISION1: TRadioButton
              Left = 34
              Top = 37
              Width = 225
              Height = 20
              Hint = '1'
              Caption = #37096#20998#30340#20559#30450
              TabOrder = 1
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTVISION2: TRadioButton
              Left = 34
              Top = 60
              Width = 239
              Height = 19
              Hint = '2'
              Caption = #23436#20840#30340#20559#30450
              TabOrder = 2
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTVISION3: TRadioButton
              Left = 34
              Top = 84
              Width = 332
              Height = 20
              Hint = '3'
              Caption = #20841#20596#30340#20559#30450#65288#20840#30450#65292#21253#25324#30382#36074#24615#20840#30450#65289
              TabOrder = 3
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 539
          Width = 961
          Height = 109
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '4.'#38991#38754#40635#30202#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object GroupBox6: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 99
            Hint = '4'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTFACIAL_PALSY0: TRadioButton
              Left = 34
              Top = 12
              Width = 670
              Height = 19
              Hint = '0'
              Caption = #27491#24120#65292#23565#31281#30340#21205#20316#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTFACIAL_PALSY1: TRadioButton
              Left = 34
              Top = 33
              Width = 670
              Height = 18
              Hint = '1'
              Caption = #36629#24494#30340#30321#30227#65288#40763#21767#38291#30394#25722#35722#24179#65292#24494#31505#26178#19981#23565#31281#65289
              TabOrder = 1
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTFACIAL_PALSY2: TRadioButton
              Left = 34
              Top = 55
              Width = 670
              Height = 18
              Hint = '2'
              Caption = #37096#20998#30321#30227#65288#19979#21322#37096#30340#33225#23436#20840#25110#36817#20046#30321#30227#65289#12290
              TabOrder = 2
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTFACIAL_PALSY3: TRadioButton
              Left = 34
              Top = 77
              Width = 670
              Height = 18
              Hint = '3'
              Caption = #21934#20596#25110#38617#20596#23436#20840#30321#30227#65288#19978#21322#37096#21450#19979#21322#37096#30340#33225#22343#28961#27861#36939#21205#65289#12290
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 648
          Width = 961
          Height = 183
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '5a'#65306#25163#33218#20043#36939#21205#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          object GroupBox7: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 173
            Hint = '5a'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label16: TLabel
              Left = 232
              Top = 151
              Width = 48
              Height = 16
              Caption = #24038#19978#33218
            end
            object RBTLEFTARM0: TRadioButton
              Left = 34
              Top = 13
              Width = 670
              Height = 19
              Hint = '0'
              Caption = #28961#19979#22402#65292#32930#39636#21487#32173#25345'90'#24230#65288#25110'45'#24230#65289#23436#25972'10'#31186#37912#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTARM1: TRadioButton
              Left = 34
              Top = 37
              Width = 670
              Height = 21
              Hint = '1'
              Caption = #26179#21205#65292#32930#39636#21487#32173#25345'90'#24230#65288#25110'45'#24230#65289#65292#20294#22312'10'#31186#37912#20839#26371#19979#22402#65292#20294#19981#26371#25758#21040#24202#19978#25110#20854#20182#25903#25345#29289#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTARM2: TRadioButton
              Left = 34
              Top = 64
              Width = 670
              Height = 30
              Hint = '2'
              Caption = #21487#31245#25239#37325#21147#65292#32930#39636#19981#33021#36948#21040#25110#32173#25345#65288#32102#20104#26263#31034#65289'90'#24230#65288#25110'45'#24230#65289#65292#26371#19979#22402#33267#24202#19978#65292#20294#20173#26377#20123#35377#25239#37325#21147#30340#21147#37327#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTARM3: TRadioButton
              Left = 34
              Top = 100
              Width = 670
              Height = 20
              Hint = '3'
              Caption = #28961#27861#25239#25298#37325#21147#65292#32930#39636#19979#33853#12290
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTARM4: TRadioButton
              Left = 34
              Top = 126
              Width = 670
              Height = 18
              Hint = '4'
              Caption = #28961#20219#20309#31227#21205#12290
              TabOrder = 4
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTARMUN: TRadioButton
              Left = 34
              Top = 151
              Width = 191
              Height = 20
              Hint = 'UN'
              Caption = #25130#32930#65292#38364#31680#31896#21512#65292#35299#37323
              TabOrder = 5
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object Edit1: TEdit
              Left = 288
              Top = 142
              Width = 161
              Height = 24
              TabOrder = 6
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 831
          Width = 961
          Height = 180
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '5b'#65306#25163#33218#20043#36939#21205#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          object GroupBox8: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 170
            Hint = '5b'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label18: TLabel
              Left = 232
              Top = 147
              Width = 48
              Height = 16
              Caption = #21491#19978#33218
            end
            object RBTRIGHTARM0: TRadioButton
              Left = 34
              Top = 11
              Width = 670
              Height = 19
              Hint = '0'
              Caption = #28961#19979#22402#65292#32930#39636#21487#32173#25345'90'#24230#65288#25110'45'#24230#65289#23436#25972'10'#31186#37912#12290
              TabOrder = 0
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTARM1: TRadioButton
              Left = 34
              Top = 36
              Width = 670
              Height = 18
              Hint = '1'
              Caption = #26179#21205#65292#32930#39636#21487#32173#25345'90'#24230#65288#25110'45'#24230#65289#65292#20294#22312'10'#31186#37912#20839#26371#19979#22402#65292#20294#19981#26371#25758#21040#24202#19978#25110#20854#20182#25903#25345#29289#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTARM2: TRadioButton
              Left = 34
              Top = 62
              Width = 670
              Height = 30
              Hint = '2'
              Caption = #21487#31245#25239#37325#21147#65292#32930#39636#19981#33021#36948#21040#25110#32173#25345#65288#32102#20104#26263#31034#65289'90'#24230#65288#25110'45'#24230#65289#65292#26371#19979#22402#33267#24202#19978#65292#20294#20173#26377#20123#35377#25239#37325#21147#30340#21147#37327#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTARM3: TRadioButton
              Left = 34
              Top = 102
              Width = 670
              Height = 18
              Hint = '3'
              Caption = #28961#27861#25239#25298#37325#21147#65292#32930#39636#19979#33853#12290
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTARM4: TRadioButton
              Left = 34
              Top = 124
              Width = 670
              Height = 19
              Hint = '4'
              Caption = #28961#20219#20309#31227#21205#12290
              TabOrder = 4
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTARMUN: TRadioButton
              Left = 34
              Top = 149
              Width = 191
              Height = 17
              Hint = 'UN'
              Caption = #25130#32930#65292#38364#31680#31896#21512#65292#35299#37323
              TabOrder = 5
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object Edit2: TEdit
              Left = 288
              Top = 140
              Width = 169
              Height = 24
              TabOrder = 6
            end
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 1011
          Width = 961
          Height = 163
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '6a'#65306#33151#37096#20043#36939#21205#65306
          TabOrder = 8
          object GroupBox10: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 153
            Hint = '6a'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label24: TLabel
              Left = 232
              Top = 131
              Width = 48
              Height = 16
              Caption = #24038#23567#33151
            end
            object RBTLEFTLEG0: TRadioButton
              Left = 34
              Top = 12
              Width = 670
              Height = 19
              Hint = '0'
              Caption = #28961#19979#22402#65292#33151#21487#32173#25345'30'#24230#30340#20301#32622#36948'5'#31186#25972#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTLEG1: TRadioButton
              Left = 34
              Top = 36
              Width = 670
              Height = 20
              Hint = '1'
              Caption = #26179#21205#65292#33151#22312'5'#31186#20839#19979#22402#65292#20294#19981#26371#25758#21040#24202#19978#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTLEG2: TRadioButton
              Left = 34
              Top = 60
              Width = 670
              Height = 19
              Hint = '2'
              Caption = #21487#31245#25239#37325#21147#65292#33151#22312'5'#31186#20839#19979#33853#21040#24202#19978#65292#20294#26377#19968#20123#25239#37325#21147#30340#21147#37327#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTLEG3: TRadioButton
              Left = 34
              Top = 84
              Width = 670
              Height = 20
              Hint = '3'
              Caption = #28961#27861#25239#25298#37325#21147#65292#32930#39636#19979#33853#12290
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTLEG4: TRadioButton
              Left = 34
              Top = 108
              Width = 670
              Height = 19
              Hint = '4'
              Caption = #28961#20219#20309#31227#21205#12290
              TabOrder = 4
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLEFTLEGUN: TRadioButton
              Left = 34
              Top = 133
              Width = 191
              Height = 18
              Hint = 'UN'
              Caption = #25130#32930#65292#38364#31680#31896#21512#65292#35299#37323
              TabOrder = 5
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object Edit4: TEdit
              Left = 288
              Top = 124
              Width = 161
              Height = 24
              TabOrder = 6
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 1174
          Width = 961
          Height = 175
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '6b'#65306#33151#37096#20043#36939#21205#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          object GroupBox11: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 165
            Hint = '6b'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label26: TLabel
              Left = 232
              Top = 140
              Width = 48
              Height = 16
              Caption = #21491#23567#33151
            end
            object RBTRIGHTLEG0: TRadioButton
              Left = 34
              Top = 13
              Width = 670
              Height = 19
              Hint = '0'
              Caption = #28961#19979#22402#65292#33151#21487#32173#25345'30'#24230#30340#20301#32622#36948'5'#31186#25972#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTLEG1: TRadioButton
              Left = 34
              Top = 38
              Width = 670
              Height = 19
              Hint = '1'
              Caption = #26179#21205#65292#33151#22312'5'#31186#20839#19979#22402#65292#20294#19981#26371#25758#21040#24202#19978#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTLEG2: TRadioButton
              Left = 34
              Top = 63
              Width = 670
              Height = 20
              Hint = '2'
              Caption = #21487#31245#25239#37325#21147#65292#33151#22312'5'#31186#20839#19979#33853#21040#24202#19978#65292#20294#26377#19968#20123#25239#37325#21147#30340#21147#37327#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTLEG3: TRadioButton
              Left = 34
              Top = 89
              Width = 670
              Height = 20
              Hint = '3'
              Caption = #28961#27861#25239#25298#37325#21147#65292#32930#39636#19979#33853#12290
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTLEG4: TRadioButton
              Left = 34
              Top = 114
              Width = 670
              Height = 17
              Hint = '4'
              Caption = #28961#20219#20309#31227#21205#12290
              TabOrder = 4
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTRIGHTLEGUN: TRadioButton
              Left = 34
              Top = 140
              Width = 191
              Height = 19
              Hint = 'UN'
              Caption = #25130#32930#65292#38364#31680#31896#21512#65292#35299#37323
              TabOrder = 5
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object Edit5: TEdit
              Left = 288
              Top = 136
              Width = 161
              Height = 24
              TabOrder = 6
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 1349
          Width = 961
          Height = 119
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '7.'#32930#39636#36939#21205#22833#35519#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          object GroupBox9: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 109
            Hint = '7'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTATAXIA0: TRadioButton
              Left = 34
              Top = 14
              Width = 377
              Height = 19
              Hint = '0'
              Caption = #28961#27492#29694#35937
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTATAXIA1: TRadioButton
              Left = 34
              Top = 38
              Width = 373
              Height = 20
              Hint = '1'
              Caption = #20986#29694#26044#19968#32930#39636#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTATAXIA2: TRadioButton
              Left = 34
              Top = 62
              Width = 380
              Height = 21
              Hint = '2'
              Caption = #20986#29694#26044#20108#32930#39636#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTATAXIAUN: TRadioButton
              Left = 34
              Top = 87
              Width = 169
              Height = 19
              Hint = 'UN'
              Caption = #25130#32930#25110#26159#38364#31680#20725#30828
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object Edit3: TEdit
              Left = 208
              Top = 80
              Width = 385
              Height = 24
              TabOrder = 4
            end
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 1468
          Width = 961
          Height = 108
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '8.'#24863#35258#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object GroupBox17: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 98
            Hint = '8'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTFEELING0: TRadioButton
              Left = 34
              Top = 13
              Width = 670
              Height = 19
              Hint = '0'
              Caption = #27491#24120#65292#28961#24863#35258#21930#22833
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTFEELING1: TRadioButton
              Left = 34
              Top = 39
              Width = 670
              Height = 31
              Hint = '1'
              Caption = #36629#24494#33267#20013#31561#31243#24230#30340#24863#35258#21930#22833#65307#30149#20154#24863#35258#37341#21050#24863#22312#24739#20596#36611#19981#25935#37555#25110#36978#37389#65307#25110#22312#37341#21050#26178#22833#21435#34920#38754#30140#30171#20294#30149#20154#20173#30693#36947#33258#24049#34987#30896#35320#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTFEELING2: TRadioButton
              Left = 34
              Top = 77
              Width = 670
              Height = 19
              Hint = '2'
              Caption = #22196#37325#25110#23436#20840#24863#35258#21930#22833#65307#30149#20154#19981#30693#36947#33225#12289#25163#12289#33139#34987#30896#35320#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 1576
          Width = 961
          Height = 161
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '9.'#26368#20339#30340#35486#35328#21151#33021#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          object GroupBox18: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 151
            Hint = '9'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTLANGUAGE_SKILLS0: TRadioButton
              Left = 34
              Top = 14
              Width = 670
              Height = 18
              Hint = '0'
              Caption = #28961#22833#35486#30151#65292#27491#24120#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLANGUAGE_SKILLS1: TRadioButton
              Left = 34
              Top = 36
              Width = 670
              Height = 46
              Hint = '1'
              Caption = 
                #36629#24494#25110#20013#31561#31243#24230#30340#22833#35486#30151#65307#26377#19968#40670#26126#39023#30340#21930#22833#27969#26274#34920#36948#25110#29702#35299#30340#33021#21147#65292#20294#22312#34920#36948#20986#20358#30340#24819#27861#25110#34920#36948#30340#24418#24335#19978#20006#28961#39023#33879#30340#20407#38480#24615#12290#28982#32780#65292#22240#28858#35486#35328#21450 +
                #65288#25110#65289#29702#35299#33021#21147#30340#38477#20302#65292#20351#30340#38364#26044#25552#20379#26448#26009#65288#38468#22294#29255#65289#30340#23565#35441#35722#24471#22256#38627#25110#19981#21487#33021#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLANGUAGE_SKILLS2: TRadioButton
              Left = 34
              Top = 91
              Width = 670
              Height = 30
              Hint = '2'
              Caption = 
                #22196#37325#30340#22833#35486#30151#65307#25152#26377#28317#36890#37117#26159#36879#36942#38646#30862#12289#29255#27573#30340#34920#36948#20358#23436#25104#65292#22312#24456#22823#30340#31243#24230#19978#65292#32893#32773#38656#35201#25512#35542#12289#35426#21839#21450#29468#28204#12290#21487#25552#20379#20132#25563#30340#36039#35338#31684#22285#26377#38480#65307#22312#28317#36890 +
                #19978#32893#32773#25215#21463#30456#30070#22823#30340#36000#25812#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTLANGUAGE_SKILLS3: TRadioButton
              Left = 34
              Top = 130
              Width = 670
              Height = 19
              Hint = '3'
              Caption = #23436#20840#22833#35486#30151#65307#28961#20219#20309#26377#29992#30340#35328#35486#25110#32882#38899#30340#29702#35299#33021#21147#12290
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 1737
          Width = 961
          Height = 137
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = '10.'#27083#38899#38556#31001#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          object GroupBox19: TGroupBox
            Left = 235
            Top = 5
            Width = 721
            Height = 127
            Hint = '10'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label37: TLabel
              Left = 240
              Top = 106
              Width = 40
              Height = 16
              Caption = #35498#26126':'
            end
            object RBTDYSARTHRIA0: TRadioButton
              Left = 34
              Top = 15
              Width = 670
              Height = 20
              Hint = '0'
              Caption = #27491#24120#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTDYSARTHRIA1: TRadioButton
              Left = 34
              Top = 37
              Width = 680
              Height = 21
              Hint = '1'
              Caption = #36629#24494#33267#20013#31561#31243#24230#65292#30149#20154#33267#23569#22312#26377#20123#23383#30340#30332#38899#19978#27169#31946#21547#28151#65292#29978#33267#65292#35201#29702#35299#36889#20123#23383#26371#26377#19968#20123#22256#38627#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTDYSARTHRIA2: TRadioButton
              Left = 34
              Top = 66
              Width = 670
              Height = 31
              Hint = '2'
              Caption = #22196#37325#65292#22312#27794#26377#22833#35486#12289#25110#33287#22833#35486#31243#24230#19981#25104#27604#20363#30340#24773#27841#19979#65292#30149#20154#30340#35328#35486#27169#31946#21040#38627#20197#29702#35299#30340#31243#24230#65292#25110#32773#26159#38748#40664#65295#28961#27861#30332#38899#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTDYSARTHRIAUN: TRadioButton
              Left = 34
              Top = 104
              Width = 207
              Height = 21
              Hint = 'UN'
              Caption = #25554#31649#25110#20854#20182#36523#39636#19978#30340#38556#31001
              TabOrder = 3
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object Edit9: TEdit
              Left = 288
              Top = 98
              Width = 305
              Height = 24
              TabOrder = 4
            end
          end
        end
        object Panel16: TPanel
          Left = 0
          Top = 1874
          Width = 961
          Height = 177
          Align = alTop
          TabOrder = 14
          object Label51: TLabel
            Left = 4
            Top = 59
            Width = 200
            Height = 57
            Caption = '11.'#24863#35258#21930#22833#25110#27880#24847#21147#21930#22833#65288#20197#24448#31281#28858#24863#35258#24573#35222#65289#65306
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object GroupBox20: TGroupBox
            Left = 239
            Top = 1
            Width = 721
            Height = 175
            Hint = '11'
            Align = alRight
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object RBTATTENTION_LOSS0: TRadioButton
              Left = 33
              Top = 20
              Width = 670
              Height = 18
              Hint = '0'
              Caption = #28961#30064#24120#12290
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTATTENTION_LOSS1: TRadioButton
              Left = 33
              Top = 41
              Width = 683
              Height = 36
              Hint = '1'
              Caption = #35222#35258#12289#35320#35258#12289#32893#35258#12289#31354#38291#24863#35258#25110#26412#39636#24863#35258#27880#24847#21147#19979#38477#65292#25110#23565#20841#20596#21516#26178#21050#28608#26178#26377#20219#19968#31278#24863#35258#30340#28040#22833#12290
              TabOrder = 1
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
            object RBTATTENTION_LOSS2: TRadioButton
              Left = 33
              Top = 83
              Width = 683
              Height = 33
              Hint = '2'
              Caption = #23565#36229#36942#19968#31278#20197#19978#30340#24863#35258#28204#35430#26377#22196#37325#30340#21322#20596#27880#24847#21147#21930#22833#12290#28961#27861#36776#35469#33258#24049#30340#19968#38587#25163#25110#36523#39636#20677#33021#23565#19968#37002#30340#31354#38291#26377#23450#21521#24863#12290
              TabOrder = 2
              WordWrap = True
              OnClick = RBTAWARENESS0Click
              OnMouseDown = RBTAWARENESS0MouseDown
            end
          end
        end
      end
    end
    object tbcNIH1: TTabSheet
      Caption = #35498#26126
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 978
        Height = 520
        Align = alClient
        TabOrder = 0
        object Shape1: TShape
          Left = 59
          Top = 4
          Width = 530
          Height = 157
        end
        object Label1: TLabel
          Left = 63
          Top = 14
          Width = 170
          Height = 19
          Caption = '1a.'#24847#35672#28165#26970#31243#24230#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 95
          Top = 46
          Width = 480
          Height = 76
          Caption = 
            #32305#20351#30149#24739#22240#28858#25918#32622#27683#31649#20839#31649#12289#35486#35328#38556#31001#25110#21475#21693#27683#31649#21109#20663#65295#20351#29992#32323#24118#31561#38459#31001#32780#28961#27861#24471#33268#23436#25972#30340#35413#20272#65292#35413#20272#32773#36996#26159#24517#38920#36984#25799#19968#20491#21453#25033#12290#21482#26377#30070#30149#24739#22312#30140 +
            #30171#21050#28608#26178#28961#20219#20309#21453#25033#65288#38750#21453#23556#24615#23039#21218#65289#65292#25165#32102'3'#20998#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape2: TShape
          Left = 59
          Top = 165
          Width = 530
          Height = 167
        end
        object Label2: TLabel
          Left = 63
          Top = 171
          Width = 230
          Height = 19
          Caption = '1b.'#22238#31572#21839#38988#20043#24847#35672#31243#24230#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 95
          Top = 193
          Width = 480
          Height = 133
          Caption = 
            #35426#21839#30149#24739#29694#22312#30340#26376#20221#21450#20182#65295#22905#30340#24180'?'#12290#22238#31572#24517#38920#26159#27491#30906#28961#35492'.'#32305#20351#31572#26696#30456#36817#20063#19981#20104#35336#20998#12290#28961#27861#30637#35299#21839#38988#30340#22833#35486#30151#21644#26408#20725#30340#30149#24739#32102#20841#20998#12290#22240#28858#25554#27683#31649 +
            #20839#31649#21475#21693#27683#31649#21109#20663#25110#20219#20309#21407#22240#24341#36215#30340#22196#37325#30332#38899#22256#38627#12289#35486#35328#38556#31001#25110#38750#22833#35486#30151#30340#20854#20182#21839#38988#32780#23566#33268#28961#27861#35611#35441#30340#30149#24739#21063#32102#20104#19968#20998#12290#21482#33021#24977#26368#21021#30340#22238#31572#35336#20998#26159 +
            #24456#37325#35201#30340#12290#32780#19988#35413#20272#32773#19981#33021#20197#35486#35328#25110#38750#35486#35328#30340#26263#31034#20358#25552#37266#30149#24739#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape3: TShape
          Left = 59
          Top = 340
          Width = 530
          Height = 184
        end
        object Label3: TLabel
          Left = 63
          Top = 350
          Width = 230
          Height = 19
          Caption = '1c.'#22519#34892#21629#20196#20043#24847#35672#31243#24230#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 95
          Top = 371
          Width = 480
          Height = 152
          Caption = 
            #35201#27714#30149#24739#30556#30524#21450#38281#30524#65292#28982#24460#32202#25569#21450#25918#39686#38750#40635#30202#30340#25163#37096#12290#20551#22914#38617#25163#19981#33021#20351#29992#65292#21063#20197#20854#20182#21934#19968#27493#39519#25351#20196#21462#20195#12290#33509#26377#30906#23526#36981#29031#25351#20196#30340#22039#35430#24615#21205#20316#20986#29694#65292#20294 +
            #30001#26044#28961#21147#32780#28961#27861#23436#25104#25972#20491#21205#20316#65292#21063#20173#32102#20104#35336#20998#12290#33509#30149#24739#23565#35201#27714#27794#26377#21453#25033#65292#27298#28204#32773#25033#31034#31684#21205#20316#32102#20182#20497#30475#65288#40664#28436#65289#20006#35336#31639#32080#26524#65288#20363#22914#28961#27861#23436#25104#12289#25110#23436#25104 +
            #19968#20491#25110#20841#20491#25351#20196#65289#12290#23565#26044#26377#21109#20663#12289#25130#32930#25110#26377#20854#20182#36523#39636#19978#20043#38556#31001#30340#30149#24739#25033#32102#20104#19968#20491#21512#36969#30340#21934#19968#27493#39519#25351#20196#12290#21482#33021#24977#26368#21021#30340#22519#34892#21205#20316#20358#35336#20998#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape4: TShape
          Left = 59
          Top = 532
          Width = 530
          Height = 191
        end
        object Shape5: TShape
          Left = 59
          Top = 732
          Width = 530
          Height = 161
        end
        object Shape6: TShape
          Left = 59
          Top = 903
          Width = 530
          Height = 140
        end
        object Label7: TLabel
          Left = 64
          Top = 538
          Width = 290
          Height = 19
          Caption = '2.'#26368#20339#30340#30524#29699#36939#21205'(Best gaze)'#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label8: TLabel
          Left = 83
          Top = 564
          Width = 486
          Height = 136
          Caption = 
            #20677#28204#35430#30524#30555#27700#24179#30340#36939#21205#12290#20197#24847#35672#25110#21453#23556#24615#65288#38957#30524#36939#21205#21453#25033#65289#30524#29699#36939#21205#20358#35336#20998#65292#20294#26159#19981#20316#30524#21069#24237#21453#23556#28204#35430#12290#33509#30149#24739#30524#30555#30340#20849#36571#20559#21521#21487#20197#29992#24847#35672#25110#26159#21453 +
            #23556#24615#36939#21205#20358#30703#27491#65292#21063#32102'1'#20998#12290#33509#30149#24739#26377#21934#19968#24615#21608#37002#31070#32147#40635#30202#65288#31532#19977#12289#22235#25110#20845#23565#33126#31070#32147#65289#65292#21063#24471#20998#28858'1'#12290#25152#26377#22833#35486#30151#30149#24739#37117#21487#20197#28204#35430#20854#30524#29699#36939#21205#30340#21151 +
            #33021#12290#30524#29699#21109#20663#12289#20351#29992#32323#24118#12289#20043#21069#22833#26126#25110#35222#21147#33287#35222#37326#30064#24120#20043#30149#24739#65292#25033#20197#21453#23556#24615#36939#21205#28204#35430#65292#27492#21487#30001#35413#20272#32773#20358#20570#36984#25799#12290#33287#30149#24739#20570#30524#20809#25509#35320#65292#28982#24460#24478#30149#24739#19968 +
            #20596#31227#21040#21478#19968#20596#65292#26377#26178#21487#28548#28165#26159#21542#26377#37096#20998#27880#35222#21151#33021#40635#30202
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label9: TLabel
          Left = 72
          Top = 739
          Width = 80
          Height = 19
          Caption = '3.'#35222#37326#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label10: TLabel
          Left = 90
          Top = 765
          Width = 486
          Height = 119
          Caption = 
            #29992#23565#35386#27861#31721#27298#35222#37326#65288#19978#21450#19979#35937#38480#65289#65292#21487#29992#31639#25163#25351#25976#25110#36969#24230#30340#35222#35258#39514#22151#27861#12290#30149#24739#24517#38920#34987#24341#23566#65292#33509#30149#24739#30524#30555#33021#36969#30070#30340#27880#35222#21205#20316#20013#25163#25351#30340#26041#21521#65292#21063#20197#27491#24120 +
            #20358#35336#20998#12290#33509#26377#21934#30524#30450#25110#30524#29699#25688#38500#65292#21063#20197#27491#24120#30524#30340#35222#37326#35336#20998#12290#21482#26377#22312#30332#29694#26377#28165#26970#30340#19981#23565#31281#9472#21253#25324#35937#38480#20559#30450#9472#30340#24773#27841#19979#65292#25165#31639'1'#20998#12290#33509#30149#24739#30001#26044#20219#20309#21407 +
            #22240#25152#24341#36215#20043#22833#26126#65292#21063#32102'3'#20998#12290#27492#26178#36914#34892#38617#37002#21516#26178#21050#28608#65292#33509#30149#20154#26377#21934#20596#24573#30053#24471'1'#20998#65292#27492#32080#26524#21487#29992#20358#22238#31572#31532'11'#38988#30340#21839#38988#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label11: TLabel
          Left = 72
          Top = 915
          Width = 120
          Height = 19
          Caption = '4.'#38991#38754#40635#30202#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label12: TLabel
          Left = 87
          Top = 944
          Width = 495
          Height = 85
          Caption = 
            #35201#27714#25110#20197#32930#39636#35486#35328#30340#26041#24335#24341#23566#30149#24739#38706#20986#29273#40786#25110#25562#30473#21450#38281#30524#12290#23565#26044#21453#25033#19981#33391#25110#26159#28961#27861#29702#35299#21839#38988#30340#30149#20154#65292#21063#26045#20104#30140#30171#21050#28608#20006#20381#29031#38754#37096#30340#30171#33510#34920#24773#26159#21542#23565 +
            #31281#20358#35336#20998#12290#20551#20351#38991#38754#26377#21109#20663'/'#32323#24118#12289#25918#32622#27683#31649#20839#31649#25110#20854#23427#38556#31001#65292#23566#33268#30475#19981#28165#26970#33225#37096#34920#24773#65292#21063#25033#35442#30433#21487#33021#20104#20197#31227#38500#38556#31001#29289#24460#22312#28204#37327#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape7: TShape
          Left = 58
          Top = 1048
          Width = 530
          Height = 253
        end
        object Label13: TLabel
          Left = 79
          Top = 1060
          Width = 160
          Height = 19
          Caption = '5'#65306' '#25163#33218#20043#36939#21205#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 127
          Top = 1092
          Width = 440
          Height = 190
          Caption = 
            #35731#22235#32930#20445#25345#19968#20491#36969#30070#30340#23039#21218#65306#20280#23637#25163#33218#65288#25484#24515#21521#19979#65289#21576'90'#24230#65288#22312#30149#24739#26159#22352#33879#30340#24773#27841#19979#65289#25110'45'#24230#65288#22312#30149#24739#21576#20208#33253#30340#24773#27841#19979#65289#65292#33139#21576'30'#24230#65288#36890#24120 +
            #26159#20197#20208#33253#30340#23039#21218#20358#20570#28204#35430#65289#12290#20551#20351#25163#33218#22312#21313#31186#20839#25110#33151#22312#20116#31186#20839#19979#22402#65292#21063#20197#26179#21205#20358#35336#20998#12290#23565#26044#22833#35486#30151#30340#30149#24739#21063#20351#29992#24613#20419#30340#35486#27683#25110#20197#32930#39636#21205#20316#20358#24341#23566#65292 +
            #20294#19981#21487#20351#29992#30140#30171#30340#21050#28608#12290#22235#32930#20998#38283#36650#27969#28204#35430#65292#24478#27794#26377#40635#30202#20043#25163#33218#38283#22987#12290#21482#26377#22312#32937#33152#25110#33216#37096#26377#20570#36942#25130#32930#25110#38364#31680#31896#21512#25163#34899#20043#20491#26696#25165#21487#20197#20197'"NU"'#35336#20998 +
            #65292#19988#35413#20272#32773#24517#38920#28165#26970#30340#22635#23531#35498#26126#32102'"NU"'#30340#29702#30001#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape8: TShape
          Left = 59
          Top = 1306
          Width = 530
          Height = 253
        end
        object Label22: TLabel
          Left = 80
          Top = 1326
          Width = 150
          Height = 19
          Caption = '6'#65306#33151#37096#20043#36939#21205#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 104
          Top = 1358
          Width = 440
          Height = 190
          Caption = 
            #35731#22235#32930#20445#25345#19968#20491#36969#30070#30340#23039#21218#65306#20280#23637#25163#33218#65288#25484#24515#21521#19979#65289#21576'90'#24230#65288#22312#30149#24739#26159#22352#33879#30340#24773#27841#19979#65289#25110'45'#24230#65288#22312#30149#24739#21576#20208#33253#30340#24773#27841#19979#65289#65292#33139#21576'30'#24230#65288#36890#24120 +
            #26159#20197#20208#33253#30340#23039#21218#20358#20570#28204#35430#65289#12290#20551#20351#25163#33218#22312#21313#31186#20839#25110#33151#22312#20116#31186#20839#19979#22402#65292#21063#20197#26179#21205#20358#35336#20998#12290#23565#26044#22833#35486#30151#30340#30149#24739#21063#20351#29992#24613#20419#30340#35486#27683#25110#20197#32930#39636#21205#20316#20358#24341#23566#65292 +
            #20294#19981#21487#20351#29992#30140#30171#30340#21050#28608#12290#22235#32930#20998#38283#36650#27969#28204#35430#65292#24478#27794#26377#40635#30202#20043#25163#33218#38283#22987#12290#21482#26377#22312#32937#33152#25110#33216#37096#26377#20570#36942#25130#32930#25110#38364#31680#31896#21512#25163#34899#20043#20491#26696#25165#21487#20197#20197'"NU"'#35336#20998 +
            #65292#19988#35413#20272#32773#24517#38920#28165#26970#30340#22635#23531#35498#26126#32102'"NU"'#30340#29702#30001#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape9: TShape
          Left = 59
          Top = 1570
          Width = 530
          Height = 230
        end
        object Label20: TLabel
          Left = 104
          Top = 1614
          Width = 460
          Height = 171
          Caption = 
            #36889#20491#38917#30446#20027#35201#30446#30340#26159#28204#35430#26159#21542#26377#21934#37002#23567#33126#30340#30149#35722#12290#28204#35430#26178#30149#24739#24517#38656#30556#30524#12290#20551#33509#30149#24739#26377#35222#35258#32570#25613#65292#30906#23450#28204#35430#26159#22312#30149#24739#33391#22909#30340#35222#37326#20839#36914#34892#65292#25351#21040#40763#23376#35430 +
            #39511#21450#36319#33051#35430#39511#38920#28204#35430#20841#20596#65292#21482#26377#22312#36939#21205#22833#35519#36229#36942#32930#39636#28961#21147#26178#25165#35336#20998#28858#36939#21205#22833#35519#12290#19981#33021#29702#35299#25351#20196#25110#26159#30321#30227#30340#30149#24739#19981#33021#31639#26159#36939#21205#22833#35519#12290#21482#26377#30149#24739#26377#25130#32930 +
            #25110#38364#31680#31896#21512#65292#27492#38917#30446#21487#35413#20998#28858#39'NU'#39#65292#19988#35413#20272#32773#24517#38920#28165#26970#22635#23531#19981#35336#20998#20043#35498#26126#12290#30524#30450#30340#30149#24739#21487#20197#20197#20280#23637#30340#19978#33218#20358#30896#35320#40763#38957#30340#26041#24335#36914#34892#28204#35430#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label52: TLabel
          Left = 88
          Top = 1582
          Width = 160
          Height = 19
          Caption = '7.'#32930#39636#36939#21205#22833#35519#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape10: TShape
          Left = 59
          Top = 1809
          Width = 530
          Height = 262
        end
        object Label32: TLabel
          Left = 80
          Top = 1821
          Width = 80
          Height = 19
          Caption = '8.'#24863#35258#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 104
          Top = 1853
          Width = 460
          Height = 190
          Caption = 
            #20197#37341#21050#28204#35430#30149#24739#20043#24863#35258#25110#33225#37096#26159#21542#21576#29694#30171#33510#30340#34920#24773#65292#25110#32773#22312#36978#37389#25110#22833#35486#30151#30340#30149#24739#36523#19978#35264#23519#30140#30171#21050#28608#24460#30340#36864#32302#21453#25033#12290#21482#26377#22240#20013#39080#23566#33268#20043#24863#35258#21930#22833#25165#20197 +
            #19981#27491#24120#20358#35336#20998#65292#35413#20272#32773#25033#35442#21516#26178#28204#35430#35377#22810#37096#20301#12304#22914#25163#33218#65288#38750#25163#37096#65289#12289#33151#37096#12289#36544#24185#12289#33225#37096#12305#65292#20197#30906#35469#30906#23526#26377#21322#36523#24863#35258#21930#22833#30340#24773#27841#12290#20998#25976'2'#65292#34920#31034#22196#37325 +
            #25110#23436#20840#24863#35258#21930#22833#65292#21482#26377#22312#26126#30906#21576#29694#20986#22196#37325#25110#23436#20840#30340#24863#35258#21930#22833#26178#25165#31639#12290#22240#27492#26408#20725#25110#22833#35486#30340#30149#24739#20998#25976#21487#33021#28858'1'#25110'0'#12290#38617#20596#22833#21435#24863#35258#20043#33126#24185#20013#39080#30340#30149#24739#20998 +
            #25976#28858'2'#12290#33509#30149#24739#28961#21453#25033#19988#22235#32930#30321#30227#20998#25976#28858'2'#12290#26127#36855'(1a=3)'#30149#24739#21063#22312#27492#38917#30446#30452#25509#20197'2'#35352#20998#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape11: TShape
          Left = 59
          Top = 2082
          Width = 530
          Height = 269
        end
        object Label31: TLabel
          Left = 80
          Top = 2094
          Width = 180
          Height = 19
          Caption = '9.'#26368#20339#30340#35486#35328#21151#33021#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 104
          Top = 2126
          Width = 440
          Height = 209
          Caption = 
            #24478#19978#21015#30340#27298#26597#36942#31243#20013#65292#21487#24471#30693#30149#24739#23565#35486#35328#30340#29702#35299#31243#24230#12290#30149#24739#24517#38920#20381#25152#38468#22294#29255#35299#35498#30332#29983#30340#20107#24773#20006#19988#35498#20986#22294#29255#20013#29289#21697#30340#21517#31281#21450#35712#20986#25152#38468#30340#21477#23376#65292#29702#35299#35486 +
            #35328#30340#33021#21147#21487#30001#30149#24739#23565#36889#20491#27298#26597#25152#20570#30340#21453#25033#20197#21450#19978#21015#30340#31070#32147#27298#26597#20013#25152#19979#30340#25152#26377#25351#20196#35041#21028#26039#20986#20358#12290#33509#30149#24739#30340#35222#35258#21930#22833#24178#25854#36889#20491#28204#35430#65292#21063#35201#27714#30149#24739#30906#35469#25918 +
            #22312#25163#19978#20043#29289#21697#65292#35079#35494#20006#19988#33287#30149#24739#23565#35441#12290#25554#31649#30340#30149#24739#21487#20197#35201#27714#29992#23531#30340#26041#24335#34920#36948#12290#26127#36855#65288'1a=3'#65289#30340#30149#24739#65292#36889#38917#30446#30340#20998#25976#28858'3'#12290#35413#20272#32773#22312#26408#20725#25110#28961#27861 +
            #37197#21512#20043#30149#24739#20173#24517#38920#35336#20998#12290'3'#20998#20677#29992#26044#38748#40664#19988#28961#27861#22519#34892#20219#20309#19968#38917#25351#20196#20043#30149#24739#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape12: TShape
          Left = 59
          Top = 2363
          Width = 530
          Height = 228
        end
        object Label35: TLabel
          Left = 79
          Top = 2378
          Width = 130
          Height = 19
          Caption = '10.'#27083#38899#38556#31001#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 103
          Top = 2410
          Width = 440
          Height = 133
          Caption = 
            #27491#24120#25351#30149#24739#33021#35712#20986#25110#37325#35206#25152#38468#21015#34920#20013#30340#23383#12289#20006#24478#20013#29554#24471#19968#20491#24688#30070#30340#35328#35527#27171#26412#26159#32085#23565#24517#35201#30340#12290#33509#30149#24739#26377#22196#37325#22833#35486#30151#65292#20854#33258#30332#24615#35328#35527#20043#30332#38899#28165#26224#33287#21542#20173 +
            #21487#35413#37327#12290#21482#26377#30070#30149#24739#26377#25554#31649#25110#26377#20854#20182#38556#31001#23566#33268#35498#35441#22256#38627#26178#65292#27492#38917#30446#25165#21487#20197#20197'"9"'#20358#35336#20998#65292#19988#35413#20272#32773#24517#38920#28165#26970#30340#22635#23531#19981#33021#35336#20998#21407#22240#12290#19981#35201#21578#35380#30149#24739 +
            #20182#65295#22905#28858#20160#40636#35201#25509#21463#28204#35430#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Shape13: TShape
          Left = 59
          Top = 2602
          Width = 530
          Height = 238
        end
        object Label38: TLabel
          Left = 80
          Top = 2614
          Width = 450
          Height = 19
          Caption = '11.'#24863#35258#21930#22833#25110#27880#24847#21147#21930#22833#65288#20197#24448#31281#28858#24863#35258#24573#35222#65289#65306
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 104
          Top = 2646
          Width = 440
          Height = 152
          Caption = 
            #30001#20808#21069#27298#28204#36942#31243#20013#65292#20197#26377#20805#20998#30340#36039#26009#20358#30906#35469#30149#24739#26159#21487#33021#26377#24573#35222#30340#21839#38988#12290#33509#30149#24739#26377#22196#37325#30340#35222#35258#21930#22833#22240#32780#28961#27861#36914#34892#38617#37002#35222#37326#21516#26178#21050#28608#24615#28204#35430#12289#20294#34920#38754#24863 +
            #35258#21050#28608#26159#27491#24120#30340#35441#65292#21063#35352#37636#28858#27491#24120#12290#33509#30149#24739#26377#22833#35486#30151#20294#20173#23565#20841#20596#30340#21050#28608#26377#21453#25033#65292#21063#35352#37636#28858#27491#24120#12290#20294#35222#35258#31354#38291#24573#30053#25110#30149#24739#28961#30149#35672#24863#21487#35222#28858#30064#24120#30340#35657#25818 +
            #12290#21482#26377#22312#30064#24120#30340#29376#27841#20986#29694#26178#25165#26371#35352#37636#28858#30064#24120#65292#22240#27492#27492#38917#30446#27794#26377#19981#36969#29992#32773#12290
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 601
    Width = 986
    Height = 52
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      986
      52)
    object Shape14: TShape
      Left = 161
      Top = 7
      Width = 513
      Height = 40
    end
    object Label40: TLabel
      Left = 424
      Top = 20
      Width = 63
      Height = 14
      Caption = #35413#20272#37291#24107':'
      Transparent = True
    end
    object Label27: TLabel
      Left = 193
      Top = 17
      Width = 50
      Height = 19
      Caption = #32317#20998':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbetatol: TLabel
      Left = 249
      Top = 16
      Width = 12
      Height = 23
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 888
      Top = 17
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #38626#38283
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 800
      Top = 17
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #23384#27284
      TabOrder = 1
      OnClick = Button2Click
    end
    object cbbNIHSScode: TComboBox
      Left = 499
      Top = 17
      Width = 166
      Height = 23
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
      Text = #35531#36984#25799
      OnChange = cbbNIHSScodeChange
      OnKeyDown = cbbNIHSScodeKeyDown
    end
    object Button3: TButton
      Left = 712
      Top = 17
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #21015#21360
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  inherited Timer2: TTimer
    Left = 864
    Top = 136
  end
end
