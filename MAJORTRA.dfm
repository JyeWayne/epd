inherited FrmMAJORTRA: TFrmMAJORTRA
  Tag = 9999
  Left = 296
  Top = 84
  Caption = 'FrmMAJORTRA'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 930
    Height = 74
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 400
      Top = 8
      Width = 198
      Height = 21
      Caption = #21488#21271#37291#23416#22823#23416#38468#35373#38498
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 408
      Top = 40
      Width = 180
      Height = 17
      Caption = #24613#37325#30151#30149#20154#36681#35386#27298#26597#34920
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 45
      Height = 17
      Caption = #22995#21517':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 51
      Width = 45
      Height = 17
      Caption = #29983#26085':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 29
      Width = 63
      Height = 17
      Caption = #30149#27511#34399':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 768
      Top = 24
      Width = 75
      Height = 25
      Caption = #21015#21360
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 864
      Top = 24
      Width = 75
      Height = 25
      Caption = #38626#38283
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 74
    Width = 930
    Height = 512
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 552
      Height = 510
      Align = alLeft
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 550
        Height = 80
        Align = alTop
        Caption = #19968'.'#36681#35386#21407#22240
        TabOrder = 0
        object CheckBox1: TCheckBox
          Left = 26
          Top = 24
          Width = 89
          Height = 17
          Caption = #28961#31354#24202
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 123
          Top = 24
          Width = 137
          Height = 17
          Caption = #23560#31185#37291#24107#22240#32032
          TabOrder = 1
        end
        object CheckBox4: TCheckBox
          Left = 276
          Top = 24
          Width = 99
          Height = 17
          Caption = #35373#20633#19981#36275
          TabOrder = 2
        end
        object CheckBox5: TCheckBox
          Left = 27
          Top = 50
          Width = 153
          Height = 17
          Caption = #30149#20154'/'#23478#23660#35201#27714
          TabOrder = 3
        end
        object CheckBox7: TCheckBox
          Left = 276
          Top = 50
          Width = 97
          Height = 17
          Caption = #20854#20182
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 81
        Width = 550
        Height = 214
        Align = alTop
        Caption = #20108'.'#26159#21542#20381#20197#19979#38542#27573#36914#34892#35426#24202#21450#35519#24230#27231#21046
        TabOrder = 1
        object Label7: TLabel
          Left = 256
          Top = 77
          Width = 9
          Height = 17
          Caption = ':'
        end
        object Label8: TLabel
          Left = 257
          Top = 106
          Width = 9
          Height = 17
          Caption = ':'
        end
        object Label9: TLabel
          Left = 255
          Top = 131
          Width = 72
          Height = 17
          Caption = #37291#38498' -->'
        end
        object CheckBox8: TCheckBox
          Left = 27
          Top = 23
          Width = 241
          Height = 17
          Caption = #38498#20839#35519#24202' -->'
          TabOrder = 0
        end
        object CheckBox9: TCheckBox
          Left = 27
          Top = 49
          Width = 269
          Height = 17
          Caption = #27425#23560#31185#32879#32363'(Dr. TO Dr.) -->'
          TabOrder = 1
        end
        object CheckBox10: TCheckBox
          Left = 27
          Top = 77
          Width = 96
          Height = 17
          Caption = #33258#34892#23563#24202
          TabOrder = 2
        end
        object Edit1: TEdit
          Left = 125
          Top = 75
          Width = 121
          Height = 25
          TabOrder = 3
        end
        object Edit2: TEdit
          Left = 125
          Top = 102
          Width = 121
          Height = 25
          TabOrder = 4
        end
        object Edit3: TEdit
          Left = 125
          Top = 128
          Width = 121
          Height = 25
          TabOrder = 5
        end
        object CheckBox11: TCheckBox
          Left = 27
          Top = 157
          Width = 305
          Height = 17
          Caption = '119'#21220#21209#25351#25582#20013#24515#25110'EOC'#21332#23563'  -->'
          TabOrder = 6
        end
        object CheckBox12: TCheckBox
          Left = 27
          Top = 186
          Width = 137
          Height = 17
          Caption = #25351#23450#24460#36865#37291#38498
          TabOrder = 7
        end
        object Edit12: TEdit
          Left = 161
          Top = 181
          Width = 275
          Height = 25
          TabOrder = 8
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 295
        Width = 550
        Height = 214
        Align = alClient
        Caption = #19977'.'#36681#35386#28310#20633
        TabOrder = 2
        object CheckBox13: TCheckBox
          Left = 27
          Top = 23
          Width = 130
          Height = 17
          Caption = #30149#20154#35413#20272
          TabOrder = 0
        end
        object CheckBox14: TCheckBox
          Left = 27
          Top = 50
          Width = 458
          Height = 17
          Caption = #21578#30693#30149#20154#25110#20854#23478#23660#36681#35386#21407#22240#21450#39080#38570#20006#32000#37636#26044#30149#27511
          TabOrder = 1
        end
        object CheckBox15: TCheckBox
          Left = 27
          Top = 74
          Width = 298
          Height = 17
          Caption = #20027#27835#37291#24107#26044#30149#27511#19978#36617#26126#36681#35386#37291#22225
          TabOrder = 2
        end
        object CheckBox16: TCheckBox
          Left = 27
          Top = 98
          Width = 290
          Height = 17
          Caption = #26044#30149#27511#19978#36617#26126#36681#35386#36899#32097#36942#31243
          TabOrder = 3
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 54
          Width = 546
          Height = 51
          Align = alBottom
          Caption = #23433#25490#36681#35386#36939#36664#24037#20855
          TabOrder = 4
          object CheckBox17: TCheckBox
            Left = 27
            Top = 24
            Width = 97
            Height = 17
            Caption = #25937#35703#36554
            TabOrder = 0
          end
          object CheckBox18: TCheckBox
            Left = 246
            Top = 24
            Width = 97
            Height = 17
            Caption = #20854#20182
            TabOrder = 1
          end
          object Edit4: TEdit
            Left = 312
            Top = 20
            Width = 225
            Height = 25
            TabOrder = 2
          end
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 105
          Width = 546
          Height = 52
          Align = alBottom
          Caption = #36681#36865#26178#29031#35703#23652#32026
          TabOrder = 5
          object CheckBox19: TCheckBox
            Left = 26
            Top = 26
            Width = 61
            Height = 17
            Caption = 'BLS'
            TabOrder = 0
          end
          object CheckBox20: TCheckBox
            Left = 91
            Top = 26
            Width = 60
            Height = 17
            Caption = 'ALS'
            TabOrder = 1
          end
          object CheckBox21: TCheckBox
            Left = 168
            Top = 26
            Width = 61
            Height = 17
            Caption = #35703#22763
            TabOrder = 2
          end
          object CheckBox22: TCheckBox
            Left = 244
            Top = 26
            Width = 73
            Height = 17
            Caption = #37291#29983
            TabOrder = 3
          end
          object CheckBox23: TCheckBox
            Left = 355
            Top = 26
            Width = 59
            Height = 17
            Caption = #20854#20182
            TabOrder = 4
          end
          object Edit5: TEdit
            Left = 416
            Top = 22
            Width = 121
            Height = 25
            TabOrder = 5
          end
        end
        object GroupBox7: TGroupBox
          Left = 2
          Top = 157
          Width = 546
          Height = 55
          Align = alBottom
          Caption = #25552#20379#36681#36865#26178#30693#30070#20043
          TabOrder = 6
          object CheckBox24: TCheckBox
            Left = 25
            Top = 27
            Width = 218
            Height = 17
            Caption = #32173#29983#35373#20633'('#22914':'#21628#21560#22120#31561')'
            TabOrder = 0
          end
          object CheckBox25: TCheckBox
            Left = 247
            Top = 27
            Width = 113
            Height = 17
            Caption = #34277#21697#12289#37291#26448
            TabOrder = 1
          end
          object CheckBox26: TCheckBox
            Left = 379
            Top = 27
            Width = 59
            Height = 17
            Caption = #20854#20182
            TabOrder = 2
          end
          object Edit6: TEdit
            Left = 442
            Top = 23
            Width = 97
            Height = 25
            TabOrder = 3
          end
        end
        object CheckBox3: TCheckBox
          Left = 143
          Top = 23
          Width = 121
          Height = 17
          Caption = #26360#38754#21516#24847#26360
          TabOrder = 7
        end
        object CheckBox6: TCheckBox
          Left = 298
          Top = 23
          Width = 97
          Height = 17
          Caption = #39080#38570#21578#30693
          TabOrder = 8
        end
      end
    end
    object Panel4: TPanel
      Left = 553
      Top = 1
      Width = 376
      Height = 510
      Align = alClient
      TabOrder = 1
      object GroupBox4: TGroupBox
        Left = 1
        Top = 58
        Width = 374
        Height = 140
        Align = alTop
        Caption = #22235'.'#36681#35386#20132#29677#31383#21475
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 28
          Top = 31
          Width = 117
          Height = 17
          Caption = #36681#20837#37291#38498#32879#32363':'
        end
        object Label11: TLabel
          Left = 28
          Top = 69
          Width = 171
          Height = 17
          Caption = #36681#20837#37291#38498#21463#35441#20154#22995#21517':'
        end
        object Label12: TLabel
          Left = 28
          Top = 104
          Width = 45
          Height = 17
          Caption = #38651#35441':'
        end
        object Edit7: TEdit
          Left = 152
          Top = 27
          Width = 121
          Height = 25
          TabOrder = 0
        end
        object Edit8: TEdit
          Left = 208
          Top = 65
          Width = 121
          Height = 25
          TabOrder = 1
        end
        object Edit9: TEdit
          Left = 80
          Top = 103
          Width = 129
          Height = 25
          TabOrder = 2
        end
      end
      object GroupBox8: TGroupBox
        Left = 1
        Top = 198
        Width = 374
        Height = 170
        Align = alTop
        Caption = #20116'.'#20132#29677#20839#23481
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object CheckBox27: TCheckBox
          Left = 11
          Top = 27
          Width = 146
          Height = 17
          Caption = #26412#27425#20837#38498#21407#22240
          TabOrder = 0
        end
        object CheckBox28: TCheckBox
          Left = 181
          Top = 27
          Width = 97
          Height = 17
          Caption = #35386#26039
          TabOrder = 1
        end
        object CheckBox29: TCheckBox
          Left = 309
          Top = 27
          Width = 97
          Height = 17
          Caption = #30149#20154#30149#24773
          TabOrder = 2
        end
        object CheckBox30: TCheckBox
          Left = 11
          Top = 61
          Width = 156
          Height = 17
          Caption = #27298#26597#12289#27298#39511#22577#21578
          TabOrder = 3
        end
        object CheckBox31: TCheckBox
          Left = 181
          Top = 61
          Width = 97
          Height = 17
          Caption = #37291#30274#34389#32622
          TabOrder = 4
        end
        object CheckBox32: TCheckBox
          Left = 309
          Top = 61
          Width = 97
          Height = 17
          Caption = #36681#35386#21407#22240
          TabOrder = 5
        end
        object CheckBox33: TCheckBox
          Left = 11
          Top = 93
          Width = 241
          Height = 17
          Caption = #38928#23450#20986#30332#26178#38291#21450#25269#36948#26178#38291
          TabOrder = 6
        end
        object CheckBox34: TCheckBox
          Left = 11
          Top = 130
          Width = 97
          Height = 17
          Caption = #20854#20182
          TabOrder = 7
        end
        object Edit10: TEdit
          Left = 81
          Top = 126
          Width = 192
          Height = 25
          TabOrder = 8
        end
      end
      object GroupBox9: TGroupBox
        Left = 1
        Top = 368
        Width = 374
        Height = 105
        Align = alTop
        Caption = #20845'.'#25884#24118#20043#30456#38364#36039#26009
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object CheckBox35: TCheckBox
          Left = 8
          Top = 32
          Width = 97
          Height = 17
          Caption = #36681#35386#21934
          TabOrder = 0
        end
        object CheckBox36: TCheckBox
          Left = 168
          Top = 32
          Width = 97
          Height = 17
          Caption = #30149#27511#25688#35201
          TabOrder = 1
        end
        object CheckBox37: TCheckBox
          Left = 296
          Top = 32
          Width = 97
          Height = 17
          Caption = #27298#39511#22577#21578
          TabOrder = 2
        end
        object CheckBox38: TCheckBox
          Left = 8
          Top = 64
          Width = 154
          Height = 17
          Caption = #25918#23556#27298#26597#35079#35069#29255
          TabOrder = 3
        end
        object CheckBox39: TCheckBox
          Left = 168
          Top = 64
          Width = 97
          Height = 17
          Caption = #20854#20182
          TabOrder = 4
        end
        object Edit11: TEdit
          Left = 280
          Top = 60
          Width = 121
          Height = 25
          TabOrder = 5
        end
      end
      object GroupBox10: TGroupBox
        Left = 1
        Top = 473
        Width = 374
        Height = 36
        Align = alClient
        Caption = #19971'.'#24460#32396#34389#29702
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object CheckBox40: TCheckBox
          Left = 24
          Top = 32
          Width = 137
          Height = 17
          Caption = #36681#35386#21934#30041#23384
          TabOrder = 0
        end
        object CheckBox41: TCheckBox
          Left = 216
          Top = 32
          Width = 201
          Height = 17
          Caption = #20854#20182'('#29305#27530#20107#38917#20633#35387')'
          TabOrder = 1
        end
      end
      object GroupBox11: TGroupBox
        Left = 1
        Top = 1
        Width = 374
        Height = 57
        Align = alTop
        Caption = #36681#20986#26085#26399
        TabOrder = 4
        object DateTimePicker1: TDateTimePicker
          Left = 24
          Top = 24
          Width = 129
          Height = 22
          Date = 41154.503167337960000000
          Time = 41154.503167337960000000
          TabOrder = 0
        end
        object DateTimePicker2: TDateTimePicker
          Left = 160
          Top = 24
          Width = 129
          Height = 22
          Date = 41154.506487465270000000
          Time = 41154.506487465270000000
          DateFormat = dfLong
          Kind = dtkTime
          TabOrder = 1
        end
      end
    end
  end
end
