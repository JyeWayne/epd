inherited FrmOrder: TFrmOrder
  Left = 227
  Top = 128
  BorderIcons = [biSystemMenu]
  Caption = 'Order(IV)'
  ClientHeight = 668
  ClientWidth = 1006
  Menu = MainMenu1
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDblClick = CbbAreaChange
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 651
    Width = 1006
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 0
    Width = 1006
    Height = 229
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Shape4: TShape
      Left = 0
      Top = 181
      Width = 1006
      Height = 48
      Align = alClient
      Brush.Color = 15591928
      Pen.Color = clSilver
      Pen.Width = 2
    end
    object Label69: TLabel
      Left = 5
      Top = 194
      Width = 117
      Height = 16
      Caption = 'Vital signs data:'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label70: TLabel
      Left = 265
      Top = 187
      Width = 28
      Height = 18
      Caption = #39636#28331
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label71: TLabel
      Left = 339
      Top = 187
      Width = 28
      Height = 18
      Caption = #33032#25615
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label72: TLabel
      Left = 413
      Top = 188
      Width = 28
      Height = 18
      Caption = #21628#21560
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label73: TLabel
      Left = 487
      Top = 188
      Width = 28
      Height = 18
      Caption = #34880#22739
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label74: TLabel
      Left = 561
      Top = 188
      Width = 28
      Height = 18
      Caption = #34880#31958
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label75: TLabel
      Left = 635
      Top = 188
      Width = 28
      Height = 18
      Caption = #30140#30171
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label76: TLabel
      Left = 710
      Top = 188
      Width = 28
      Height = 18
      Caption = #34880#27687
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label77: TLabel
      Left = 767
      Top = 195
      Width = 63
      Height = 19
      Caption = #37327#28204#26085#26399':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label78: TLabel
      Left = 134
      Top = 188
      Width = 8
      Height = 18
      Caption = 'E'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label79: TLabel
      Left = 176
      Top = 188
      Width = 9
      Height = 18
      Caption = 'V'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label80: TLabel
      Left = 218
      Top = 188
      Width = 14
      Height = 18
      Caption = 'M'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1006
      Height = 146
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 653
        Height = 146
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 1
        ParentColor = True
        TabOrder = 0
        object Bevel1: TBevel
          Left = 650
          Top = 1
          Width = 2
          Height = 144
          Align = alRight
          Shape = bsRightLine
        end
        object Image7: TImage
          Left = 606
          Top = 12
          Width = 30
          Height = 30
          Hint = 'asdf'
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          Transparent = True
        end
        object Panel6: TPanel
          Left = 289
          Top = 1
          Width = 363
          Height = 140
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Panel7: TPanel
            Left = 0
            Top = 91
            Width = 363
            Height = 49
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Label7: TLabel
              Left = 78
              Top = 31
              Width = 26
              Height = 17
              Caption = #37096#36000
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 78
              Top = 7
              Width = 26
              Height = 17
              Caption = #26696#20214
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 47
              Top = 24
              Width = 30
              Height = 25
              Hint = #21345#27231#35469#35657#65307#37291#20107#20154#21729#21345#35469#35657
              Glyph.Data = {
                CA050000424DCA05000000000000360000002800000016000000150000000100
                18000000000094050000C40E0000C40E00000000000000000000FFFFFF878684
                111111201F1F4949494444443A39382A2A281F1F1E1918181514121413121817
                181C1C1C2121202A2A2A3B3B3A4646454E4D4C111111171716A2A19FFFFFC5BF
                B900000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000001C1919
                FFFF8F8B7F494B47535A56666D696F79727683787E8E80839483889C898CA08D
                8FA3908FA3908DA28E899D8A8295837A897A707E6F62716149604F374F412B40
                342F3D33FFFFDDE4E4F6FFFFF4FFFFF1FFFCE5FCECDCF5E0D0EED1CDEBCDCDEA
                CDCCEACCCBE9CBCBE9CBCCE9CCCCEACCCDEBCDCEEBCED0E7CFCEE3CDBDE1C2A7
                D8B5A7D1B295C4A4FFFFCED7CEE8F6F5E6F5F0DFF0E8D8ECE0D2E8D8C3DEC4BE
                DBBEBFDBBFBEDBBEBEDBBEBEDBBEBFDBBFBFDBBFBFDCBFC0DCC0C0DBC0C0D6C0
                C2D2C0BED0BDBBD0BC96B99BFFFFC7D5C5E4F3F0E7F5F2E2F2EDDCEEE6D7EBDF
                CBE3CFC7E0C9C3DEC4C4DEC5C4DFC5C3DEC4C1DDC2C0DCC0BFDBBEBDDABCBEDB
                BDC1DDC1C0D7C0C2D0C1C1D5C294B497FFFFC7D7C6E7F2F0F6FEFFF4FCFFEFF9
                FAEAF6F4DFEFE8E2F2EDDFEFE8E2F1ECE4F3EEE6F5F2E8F6F4EAF7F6E8F6F4E2
                F1EACADFCEBBD4B9BDD7BCBED4BEC2D6C39FB59CFFFFC6CBBFBCC7B9E1F1E3D2
                E6D4CFE4CFCCE2CEC6DDC8C8DFCACEE1D3D1E4D6D0E4D4CDE0D2CDE0D2CEE1D3
                CBDED0CCE0CEC2D5C2B4C8B0B3C5AFABBFA9B5CCB69EA691FFFFCFD2CB91A38D
                C3E0C5BEDBBEBEDBBEC0DCC1C2DEC3C1DDC2C3DEC4C0DCC0C4E1C495A596A3B4
                9B9FB3A097A79CAFC8B0CDF0D1CDE7CECDE7CEC6E6C8BAD3B9858C78FFFFDADD
                D792A28FCBE4CEC6E0C8C8E1CACBE3CECCE4D0CBE3CECEE5D3CEE5D2C8E4CAAC
                B3A5929BB69CA0A2A7A996B2BDAC9B9D8990B58C8CAF87B5C9B1BAD4BA8F9982
                FFFFE4E4E390A38ED6ECDDCEE6D3D4E9DADCEEE5DCEEE4DEEFE7E0F1EAE2F2EC
                D6EDD75343452300C72502566957358F8C86482C152DAB3F219127867D6AC1DC
                C5939E89FFFFEEEEEE92A190D8ECE0E7F7F3EEF7F8F5FAFFF6FBFFF5FAFFF4FA
                FFF8FEFFEAF9F65E4D3C644C6E4E3336543B27786C6343210B526B3F404B2893
                8C7CC3DBC698A38CFFFFFBFBFC939C8EDEECE6DAE9E5CAECDDC7EEDECAF1DFCC
                F2DECDEFDFD1F0E1DCECE773665AB4B8A9786A5B65524690918A563E2B968D88
                7D6B63949185BED3BF9CA390FFFFFFFFFF9BA18CE6ECEE99BCA400AF2200CA37
                00C73800C83500C83301BC37BBDBC9725F56827B6E5744345B46388A83794327
                13776B5F5A473B9F9C96B4C4B6A8AC9BFFFFFFFFFF9EA391D2DFD9AABDB20361
                0F077F1E08832107842107801E05771EBCD9CB82706AA9ABA665574A706253AE
                B0AA503729918D87736A62A6A7A0A5B7A4BCBEADFFFFFFFFFFACAEA1B1BEB3E8
                EFEFCFCED7D2D1D9D5D5DCD6D6DDD7D5DED2D3DAEBF8F87165598982795D4B3D
                594736837E74432C1C7F766F5B473DA7A39E93A490CCCEC4FFFFFFFFFFC3C6BC
                95A091F8FFFFF9FFFFF7FFFFF6FFFFF7FFFFF7FFFFF8FFFFF7FFFF8F8A82ACB1
                AA7C7B6C797766A5AAA25F55489BA1987F7C71ADB1AB818C75D7D7D1FFFFFFFF
                FFE4E6E37C8877E0EDECF6FFFFF2FBFFF2FCFFF0FBFFF1FBFFF2FBFFF2FBFFEE
                F7FBE1E8EBE9F1F2E8F0F3E7EDF0E6EFF1E0EAECEFF3F2C0CCC47B7E63F3F4F3
                FFFFFFFFFFFFFFFF9BA197A7B7ACFCFFFFF3FDFFEAF3F7EFF8FCEBF5F8E9F4F5
                EEF7FDECF6F9F0F9FDE7F3F3E3F0EDE2EFEAF5FEFFF9FFFFFAFFFF898F7C9999
                86FFFFFFFFFFFFFFFFFFFFFFF5F4F5A8B3A6D2E4D9E4F3EEE1F1ECE3F2EBD5E9
                DCCBE4D0DFEFE8CEE3D1E5F4F1D6E9DDDEEFE8E2F2EDE5F3F1E8F8F1C6D3CDA1
                A296F1F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4DDD1D4E0D4D6E2D5D3
                E1D2D8E4D7DAE6DBD3E1D1D9E6D9D9E5D9D9E5D9D7E3D6D9E5D9D7E4D7D5E3D6
                CED5CCFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object CbbPart: TComboBox
              Left = 107
              Top = 28
              Width = 126
              Height = 22
              ItemHeight = 14
              TabOrder = 0
              Text = #35531#36984#25799
            end
            object CbbCase: TComboBox
              Left = 107
              Top = 4
              Width = 126
              Height = 22
              ItemHeight = 14
              TabOrder = 1
              Text = #35531#36984#25799
            end
            object RGPatId: TRadioGroup
              Left = 244
              Top = 0
              Width = 119
              Height = 49
              Align = alRight
              Caption = #36523#20998
              Columns = 2
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              Items.Strings = (
                #20581#20445
                #33258#36027)
              ParentFont = False
              TabOrder = 2
              OnClick = RGPatIdClick
            end
            object CheckBox1: TCheckBox
              Left = 1
              Top = 5
              Width = 49
              Height = 17
              Caption = #37325#22823
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = CheckBox1Click
            end
            object CheckBox2: TCheckBox
              Left = 1
              Top = 29
              Width = 49
              Height = 17
              Caption = #25142#22806
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 66
            Height = 91
            Align = alLeft
            Caption = #27298#20663#32026#25976
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object lbltleve: TLabel
              Left = 19
              Top = 18
              Width = 27
              Height = 56
              Alignment = taCenter
              Caption = '2'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -48
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel8: TPanel
            Left = 66
            Top = 0
            Width = 297
            Height = 91
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object Label8: TLabel
              Left = 7
              Top = 9
              Width = 52
              Height = 15
              Caption = #30446'  '#21069' :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -15
              Font.Name = #26032#32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label9: TLabel
              Left = 7
              Top = 33
              Width = 52
              Height = 15
              Caption = #26178'  '#38291' :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -15
              Font.Name = #26032#32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label10: TLabel
              Left = 7
              Top = 56
              Width = 54
              Height = 14
              AutoSize = False
              Caption = #19979#19968#27493':'
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -15
              Font.Name = #26032#32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object ill_time: TLabel
              Left = 63
              Top = 29
              Width = 53
              Height = 20
              Caption = 'ill_time'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Lbl_ill: TLabel
              Left = 63
              Top = 4
              Width = 53
              Height = 22
              Caption = 'Lbl_ill'
              Font.Charset = ANSI_CHARSET
              Font.Color = clPurple
              Font.Height = -19
              Font.Name = 'Arial Rounded MT Bold'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object BtbnMAJOR: TBitBtn
              Left = 232
              Top = 8
              Width = 47
              Height = 25
              Caption = #21462#28040
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -14
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = BtbnMAJORClick
            end
            object BtnAMI: TBitBtn
              Left = 10
              Top = 8
              Width = 65
              Height = 25
              Caption = 'AMI'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = BtnAMIClick
            end
            object BtnCVA: TBitBtn
              Left = 84
              Top = 8
              Width = 65
              Height = 25
              Caption = 'CVA'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BtnAMIClick
            end
            object BtnTrauma: TBitBtn
              Left = 158
              Top = 8
              Width = 65
              Height = 25
              Caption = 'Trauma'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = BtnAMIClick
            end
            object GroupBox23: TGroupBox
              Left = 0
              Top = 41
              Width = 297
              Height = 50
              Align = alBottom
              Caption = #25351#23450#24202#34399
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              object Label59: TLabel
                Left = 10
                Top = 22
                Width = 26
                Height = 17
                Caption = #21312#22495
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = #24494#36575#27491#40657#39636
                Font.Style = []
                ParentFont = False
              end
              object Label60: TLabel
                Left = 182
                Top = 23
                Width = 26
                Height = 17
                Caption = #24202#34399
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = #24494#36575#27491#40657#39636
                Font.Style = []
                ParentFont = False
              end
              object CbbArea: TComboBox
                Left = 39
                Top = 17
                Width = 125
                Height = 25
                ItemHeight = 17
                TabOrder = 0
                OnChange = CbbAreaChange
              end
              object CbbBedNo: TComboBox
                Left = 212
                Top = 17
                Width = 73
                Height = 25
                ItemHeight = 17
                TabOrder = 1
                OnChange = CbbBedNoChange
                Items.Strings = (
                  'E015')
              end
            end
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 286
          Height = 140
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 286
            Height = 91
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Image1: TImage
              Left = 255
              Top = 1
              Width = 28
              Height = 27
              Stretch = True
            end
            object Label2: TLabel
              Left = 5
              Top = 26
              Width = 51
              Height = 22
              Caption = #30149#27511#34399
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 4
              Top = 5
              Width = 50
              Height = 22
              Caption = #22995'    '#21517
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 4
              Top = 69
              Width = 50
              Height = 22
              Caption = #24180'    '#40801
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 5
              Top = 47
              Width = 51
              Height = 22
              Caption = #36523#20998#35657
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 163
              Top = 47
              Width = 34
              Height = 22
              Caption = #34880#22411
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object lbl: TLabel
              Left = 163
              Top = 69
              Width = 114
              Height = 22
              Caption = #39636#37325'               kg'
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object LblBLOOD_TYPE: TLabel
              Left = 198
              Top = 48
              Width = 31
              Height = 16
              Caption = 'ab+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -17
              Font.Name = 'Courier'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label63: TLabel
              Left = 163
              Top = 26
              Width = 34
              Height = 22
              Caption = #31185#21029
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object labdept: TLabel
              Left = 198
              Top = 28
              Width = 41
              Height = 16
              Caption = 'DEPT'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -17
              Font.Name = 'Courier'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtIdno: TEdit
              Left = 58
              Top = 48
              Width = 101
              Height = 16
              TabStop = False
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -17
              Font.Name = 'Courier'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = 'a123456789'
            end
            object edtName: TEdit
              Left = 58
              Top = 3
              Width = 191
              Height = 18
              TabStop = False
              BorderStyle = bsNone
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clPurple
              Font.Height = -17
              Font.Name = #32048#26126#39636
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              Text = 'edtName'
            end
            object cbchrno: TComboBox
              Left = 58
              Top = 25
              Width = 91
              Height = 20
              Color = 10482399
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #32048#26126#39636
              Font.Style = []
              ItemHeight = 12
              ParentFont = False
              TabOrder = 2
              Text = 'cbchrno'
              OnChange = cbchrnoChange
              OnContextPopup = cbchrnoContextPopup
            end
            object edtAge: TEdit
              Left = 58
              Top = 69
              Width = 101
              Height = 17
              TabStop = False
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -17
              Font.Name = #32048#26126#39636
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Text = 'edtAge'
            end
            object edtchrno: TEdit
              Left = 58
              Top = 25
              Width = 100
              Height = 20
              BevelOuter = bvRaised
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -17
              Font.Name = 'Courier'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              Text = 'edtchrno'
            end
            object edtwdt: TEdit
              Left = 198
              Top = 71
              Width = 51
              Height = 15
              TabStop = False
              BorderStyle = bsNone
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -17
              Font.Name = 'Courier'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              Text = 'edtwdt'
            end
          end
          object Panel17: TPanel
            Left = 0
            Top = 91
            Width = 286
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Label41: TLabel
              Left = 162
              Top = 3
              Width = 34
              Height = 22
              Caption = #27298#20663
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label56: TLabel
              Left = 10
              Top = 3
              Width = 42
              Height = 22
              Caption = #21312'  '#22495
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 9
              Top = 27
              Width = 42
              Height = 22
              Caption = #24202'  '#34399
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object Label58: TLabel
              Left = 162
              Top = 27
              Width = 34
              Height = 22
              Caption = #36820#35386
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #24494#36575#27491#40657#39636
              Font.Style = []
              ParentFont = False
            end
            object CBtriage: TComboBox
              Left = 195
              Top = 3
              Width = 88
              Height = 22
              ItemHeight = 14
              TabOrder = 0
              Items.Strings = (
                #31532#19968#32026
                #31532#20108#32026
                #31532#19977#32026
                #31532#22235#32026
                #31532#20116#32026)
            end
            object stattrend: TStaticText
              Left = 195
              Top = 29
              Width = 87
              Height = 18
              AutoSize = False
              BorderStyle = sbsSingle
              TabOrder = 1
              OnClick = stattrendClick
            end
            object STXTArea: TStaticText
              Left = 56
              Top = 3
              Width = 81
              Height = 18
              AutoSize = False
              BorderStyle = sbsSingle
              TabOrder = 2
            end
            object STXTBED: TStaticText
              Left = 56
              Top = 27
              Width = 81
              Height = 18
              AutoSize = False
              BorderStyle = sbsSingle
              TabOrder = 3
            end
          end
        end
      end
      object Panel36: TPanel
        Left = 653
        Top = 0
        Width = 353
        Height = 146
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 20
          Top = 83
          Width = 48
          Height = 16
          Caption = #20027#27835#37291#24107
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
        end
        object Label64: TLabel
          Left = 226
          Top = 76
          Width = 56
          Height = 14
          Caption = #21015#21360#20221#25976
        end
        object Image2: TImage
          Left = 131
          Top = 1
          Width = 30
          Height = 30
          Stretch = True
          Transparent = True
        end
        object ImgMDRO: TImage
          Left = 4
          Top = 33
          Width = 30
          Height = 30
          Hint = #35387#35352
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          Transparent = True
        end
        object ImgBoold: TImage
          Left = 36
          Top = 33
          Width = 30
          Height = 30
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          Transparent = True
        end
        object ImgFALL: TImage
          Left = 68
          Top = 33
          Width = 30
          Height = 30
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          Transparent = True
        end
        object ImgB01A: TImage
          Left = 100
          Top = 33
          Width = 30
          Height = 30
          Hint = #25239#20957#34880#35387#35352
          ParentShowHint = False
          ShowHint = True
        end
        object sgBioinf: TStringGrid
          Left = 0
          Top = 100
          Width = 353
          Height = 46
          Align = alBottom
          BorderStyle = bsNone
          ColCount = 4
          Ctl3D = True
          DefaultColWidth = 81
          DefaultRowHeight = 21
          Enabled = False
          FixedCols = 0
          RowCount = 2
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentColor = True
          ParentCtl3D = False
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
        end
        object cbbvscode: TComboBox
          Left = 70
          Top = 73
          Width = 134
          Height = 23
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ItemHeight = 15
          ParentFont = False
          TabOrder = 1
          Text = #36664#20837#24115#34399#25110#36984#25799
          OnChange = cbbvscodeChange
          OnDropDown = cbbvscodeDropDown
          OnKeyDown = cbbvscodeKeyDown
        end
        object btnRePrint: TBitBtn
          Left = 128
          Top = 59
          Width = 41
          Height = 14
          Caption = #35036#21360
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clTeal
          Font.Height = -21
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = btnRePrintClick
        end
        object BtnTempSave: TBitBtn
          Left = 167
          Top = 2
          Width = 79
          Height = 63
          Caption = #26283#23384
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clMaroon
          Font.Height = -24
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BtnTempSaveClick
        end
        object btnSave: TBitBtn
          Left = 249
          Top = 2
          Width = 78
          Height = 31
          Caption = #23436#35386
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnSaveClick
        end
        object PanelPatInf: TPanel
          Left = 0
          Top = 0
          Width = 166
          Height = 31
          BevelOuter = bvNone
          TabOrder = 5
          object ImgSex: TImage
            Left = 68
            Top = 1
            Width = 30
            Height = 30
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            Transparent = True
          end
          object ImgMed: TImage
            Left = 100
            Top = 1
            Width = 30
            Height = 30
            Hint = #26377#36942#25935#21490
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            Transparent = True
            OnClick = ImgMedClick
          end
          object ImgSkin: TImage
            Left = 4
            Top = 1
            Width = 30
            Height = 30
            Hint = #35387#35352
            Stretch = True
            Transparent = True
            OnClick = ImgSkinClick
          end
          object ImgTemperature: TImage
            Left = 36
            Top = 1
            Width = 30
            Height = 30
            Hint = #20170#26085#26377#30331#37636#30332#29138
            Stretch = True
            Transparent = True
          end
          object Image_AMI: TImage
            Left = 132
            Top = 1
            Width = 30
            Height = 30
            Hint = #35387#35352
            Stretch = True
            Transparent = True
          end
        end
        object BitBtn4: TBitBtn
          Left = 249
          Top = 35
          Width = 78
          Height = 31
          Caption = #34907#25945
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clTeal
          Font.Height = -21
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn4Click
        end
        object ComboBox1: TComboBox
          Left = 284
          Top = 72
          Width = 44
          Height = 22
          ItemHeight = 14
          TabOrder = 7
          Text = '1'
          Items.Strings = (
            '1'
            '2'
            '3')
        end
        object DBImage1: TDBImage
          Left = 38
          Top = 35
          Width = 1
          Height = 2
          DataField = 'ICN_ICON'
          DataSource = DtSImage
          TabOrder = 8
        end
        object CBx_VS: TCheckBox
          Left = 4
          Top = 71
          Width = 52
          Height = 12
          Caption = 'All VS'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
    end
    object CoolBar2: TCoolBar
      Left = 0
      Top = 146
      Width = 1006
      Height = 35
      Bands = <
        item
          Control = ToolBar3
          ImageIndex = -1
          MinHeight = 33
          Width = 1004
        end>
      EdgeOuter = esNone
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      object ToolBar3: TToolBar
        Left = 9
        Top = 0
        Width = 991
        Height = 33
        ButtonHeight = 29
        ButtonWidth = 103
        Caption = #27298#39511
        EdgeInner = esNone
        EdgeOuter = esNone
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = [fsBold]
        ParentFont = False
        ShowCaptions = True
        TabOrder = 0
        object ToolButton80: TToolButton
          Left = 0
          Top = 2
          AutoSize = True
          Caption = ' '#22871#39184' '
          ImageIndex = 9
          OnClick = ToolButton80Click
        end
        object ToolButton55: TToolButton
          Left = 51
          Top = 2
          AutoSize = True
          Caption = ' '#26371#35386' '
          ImageIndex = 4
          OnClick = ToolButton55Click
        end
        object ToolButton15: TToolButton
          Left = 102
          Top = 2
          AutoSize = True
          Caption = #30149#27511#39318#38913
          ImageIndex = 14
          OnClick = ToolButton15Click
        end
        object ToolButton5: TToolButton
          Left = 177
          Top = 2
          AutoSize = True
          Caption = ' '#24120#29992#38917' '
          ImageIndex = 12
          OnClick = ToolButton5Click
        end
        object ToolButton78: TToolButton
          Left = 244
          Top = 2
          AutoSize = True
          Caption = ' Ditto '
          ImageIndex = 8
          OnClick = ToolButton78Click
        end
        object ToolButton19: TToolButton
          Left = 301
          Top = 2
          Hint = #26597#38321#25110#35036#21015#21360#26412#27425#23601#35386#37291#22225#36039#26009
          AutoSize = True
          Caption = ' '#29694#30149#21490' '
          ImageIndex = 14
          OnClick = ToolButton19Click
        end
        object ToolButton61: TToolButton
          Left = 368
          Top = 2
          AutoSize = True
          Caption = ' '#36942#25935#21490' '
          ImageIndex = 7
          OnClick = ToolButton61Click
        end
        object ToolButton1: TToolButton
          Left = 435
          Top = 2
          AutoSize = True
          Caption = #27298#39511#22577#21578
          ImageIndex = 9
          OnClick = ToolButton1Click
        end
        object ToolButton8: TToolButton
          Left = 510
          Top = 2
          AutoSize = True
          Caption = #19977#38498#22577#21578
          ImageIndex = 10
          OnClick = ToolButton8Click
        end
        object ToolButton3: TToolButton
          Left = 585
          Top = 2
          AutoSize = True
          Caption = ' PACS '
          ImageIndex = 11
          OnClick = ToolButton3Click
        end
        object ToolButton11: TToolButton
          Left = 646
          Top = 2
          AutoSize = True
          Caption = #20303#38498#38928#32004
          ImageIndex = 14
          OnClick = ToolButton11Click
        end
        object ToolButton13: TToolButton
          Left = 721
          Top = 2
          AutoSize = True
          Caption = #38928#32004#25499#34399
          ImageIndex = 15
          OnClick = ToolButton13Click
        end
        object ToolButton7: TToolButton
          Left = 796
          Top = 2
          AutoSize = True
          Caption = #30149#20154#36039#35338
          ImageIndex = 13
          OnClick = ToolButton7Click
        end
        object ToolButton2: TToolButton
          Left = 871
          Top = 2
          AutoSize = True
          Caption = #38651#23376#31805#31456#34920#21934
          ImageIndex = 14
          OnClick = ToolButton2Click
        end
      end
    end
    object MEDTBT: TEdit
      Left = 264
      Top = 205
      Width = 75
      Height = 14
      Hint = 'BT'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object MDETHR: TEdit
      Left = 338
      Top = 205
      Width = 75
      Height = 14
      Hint = 'HR'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object MEDTBR: TEdit
      Left = 412
      Top = 205
      Width = 75
      Height = 14
      Hint = 'BR'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object MEDTBPH: TEdit
      Left = 487
      Top = 205
      Width = 75
      Height = 14
      Hint = 'BPH'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object MEDTBS: TEdit
      Left = 562
      Top = 205
      Width = 76
      Height = 14
      Hint = 'BS'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object MEdtPAIN: TEdit
      Left = 638
      Top = 205
      Width = 72
      Height = 14
      Hint = 'PAIN'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object MEDTSPO2: TEdit
      Left = 710
      Top = 205
      Width = 48
      Height = 14
      Hint = 'SPO2'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object CMBoxDateRecordVI: TComboBox
      Left = 835
      Top = 191
      Width = 150
      Height = 27
      Color = 15591928
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 9
      OnChange = CMBoxDateRecordVIChange
    end
    object CmBid: TComboBox
      Left = 982
      Top = 191
      Width = 18
      Height = 22
      ItemHeight = 14
      TabOrder = 10
      Text = 'CmBid'
      Visible = False
    end
    object EdtE: TEdit
      Left = 132
      Top = 205
      Width = 42
      Height = 14
      Hint = 'BT'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object EdtV: TEdit
      Left = 174
      Top = 205
      Width = 42
      Height = 14
      Hint = 'BT'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object EdtM: TEdit
      Left = 216
      Top = 205
      Width = 48
      Height = 14
      Hint = 'BT'
      BorderStyle = bsNone
      Color = 11193066
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 229
    Width = 1006
    Height = 422
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object PageControl2: TPageControl
      Left = 0
      Top = 0
      Width = 1006
      Height = 422
      ActivePage = TabSheet6
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      MultiLine = True
      OwnerDraw = True
      ParentFont = False
      TabHeight = 30
      TabOrder = 0
      OnChange = PageControl2Change
      OnDrawTab = PageControl2DrawTab
      object TabSheet13: TTabSheet
        Hint = #20840#37096'_SGtriage'
        Caption = #20840#37096
        ImageIndex = 9
        object Panel18: TPanel
          Left = 0
          Top = 11
          Width = 313
          Height = 371
          Align = alLeft
          TabOrder = 0
          object Panel19: TPanel
            Left = 1
            Top = 1
            Width = 311
            Height = 369
            Align = alClient
            TabOrder = 0
            object GroupBox10: TGroupBox
              Left = 1
              Top = 1
              Width = 309
              Height = 109
              Caption = #27298#20663
              Color = clMoneyGreen
              ParentBackground = False
              ParentColor = False
              TabOrder = 0
              object REdt_Triageman: TRichEdit
                Left = 2
                Top = 23
                Width = 305
                Height = 84
                Align = alClient
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #32048#26126#39636
                Font.Style = []
                Lines.Strings = (
                  #27298#20663#20027#35380)
                ParentFont = False
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
          end
          object GroupBox11: TGroupBox
            Left = 1
            Top = 112
            Width = 311
            Height = 132
            Caption = 'A '#35386#26039
            Color = clMoneyGreen
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object StringGrid1: TStringGrid
              Left = 2
              Top = 23
              Width = 307
              Height = 107
              Align = alClient
              ColCount = 2
              DefaultRowHeight = 20
              RowCount = 11
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #32048#26126#39636
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
              ParentFont = False
              TabOrder = 0
              OnDblClick = StringGrid1DblClick
              OnDrawCell = StringGrid1DrawCell
              ColWidths = (
                64
                224)
              RowHeights = (
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20
                20)
            end
          end
          object GroupBox12: TGroupBox
            Left = 1
            Top = 244
            Width = 311
            Height = 122
            Caption = 'S'#12289'O'#12289'P'
            Color = clMoneyGreen
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object REdtSOP: TMemo
              Left = 2
              Top = 23
              Width = 307
              Height = 97
              Align = alClient
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = #32048#26126#39636
              Font.Style = []
              Lines.Strings = (
                'REdtSOP')
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object Panel21: TPanel
          Left = 313
          Top = 11
          Width = 685
          Height = 371
          Align = alClient
          TabOrder = 1
          object GroupBox7: TGroupBox
            Left = 1
            Top = 1
            Width = 682
            Height = 22
            Cursor = crHandPoint
            Caption = #27298#39511#12289#27298#26597#12289#25918#23556
            Color = clMoneyGreen
            DragCursor = crDefault
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            OnClick = GroupBox7Click
            OnDblClick = GroupBox7DblClick
            object StringGrid2: TStringGrid
              Left = 2
              Top = 23
              Width = 678
              Height = 2
              Align = alClient
              DefaultRowHeight = 20
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #32048#26126#39636
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
              ParentFont = False
              TabOrder = 0
              OnClick = StringGrid2Click
              OnDblClick = StringGrid2DblClick
              OnDrawCell = StringGrid1DrawCell
            end
          end
          object GroupBox9: TGroupBox
            Left = 1
            Top = 23
            Width = 682
            Height = 186
            Cursor = crHandPoint
            Caption = #34277#21697
            Color = clMoneyGreen
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            OnClick = GroupBox9Click
            OnDblClick = GroupBox7DblClick
            object StringGrid3: TStringGrid
              Left = 2
              Top = 23
              Width = 678
              Height = 161
              Align = alClient
              DefaultRowHeight = 20
              FixedCols = 0
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #32048#26126#39636
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
              ParentFont = False
              TabOrder = 0
              OnClick = StringGrid2Click
              OnDblClick = StringGrid3DblClick
              OnDrawCell = StringGrid1DrawCell
              OnMouseDown = SGMedMouseDown
            end
          end
          object GroupBox8: TGroupBox
            Left = 1
            Top = 209
            Width = 682
            Height = 157
            Cursor = crHandPoint
            Caption = #34389#32622#12289#34907#26448#12289#25944#36848#37291#22225
            Color = clMoneyGreen
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            OnClick = GroupBox8Click
            OnDblClick = GroupBox7DblClick
            object StringGrid4: TStringGrid
              Left = 2
              Top = 23
              Width = 678
              Height = 132
              Align = alClient
              DefaultRowHeight = 20
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #32048#26126#39636
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
              ParentFont = False
              TabOrder = 0
              OnClick = StringGrid2Click
              OnDblClick = StringGrid4DblClick
              OnDrawCell = StringGrid1DrawCell
            end
          end
        end
        object SGtriage: TStringGrid
          Left = 0
          Top = 0
          Width = 998
          Height = 11
          Align = alTop
          DefaultRowHeight = 21
          FixedCols = 0
          TabOrder = 2
          Visible = False
          ColWidths = (
            64
            64
            64
            64
            64)
        end
        object pnltriage: TPanel
          Left = 88
          Top = 40
          Width = 217
          Height = 121
          Color = clGreen
          TabOrder = 3
          Visible = False
          object Label65: TLabel
            Left = 8
            Top = 40
            Width = 68
            Height = 21
            Caption = #25490#24207#32232#30908':'
          end
          object Label66: TLabel
            Left = 8
            Top = 8
            Width = 160
            Height = 21
            Caption = #35531#36664#20837#24120#29992#38917#25490#21015#24207#34399
          end
          object Edit2: TEdit
            Left = 88
            Top = 40
            Width = 97
            Height = 29
            TabOrder = 0
            Text = #20197#23383#20018#25490#24207
          end
          object BitBtn5: TBitBtn
            Left = 96
            Top = 80
            Width = 75
            Height = 25
            Caption = #30906#35469
            TabOrder = 1
            OnClick = BitBtn5Click
          end
        end
      end
      object TabSheet4: TTabSheet
        Hint = #35386#26039'&'#30149#31243'_SGIcd'
        Caption = #35386#26039'&&'#30149#31243
        object Panel9: TPanel
          Left = 457
          Top = 0
          Width = 541
          Height = 382
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 541
            Height = 98
            Align = alTop
            Caption = 'Subject'
            TabOrder = 0
            object rheSub: TRichEdit
              Left = 2
              Top = 23
              Width = 537
              Height = 73
              Align = alClient
              PopupMenu = ppmcopy
              ScrollBars = ssVertical
              TabOrder = 0
              OnChange = rheSubChange
              OnEnter = SGMedEnter
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 98
            Width = 541
            Height = 98
            Align = alTop
            Caption = 'Oubject'
            TabOrder = 1
            object rheObj: TRichEdit
              Left = 2
              Top = 23
              Width = 537
              Height = 73
              Align = alClient
              PopupMenu = ppmcopy
              ScrollBars = ssVertical
              TabOrder = 0
              OnChange = rheSubChange
              OnEnter = SGMedEnter
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 196
            Width = 541
            Height = 98
            Align = alTop
            Caption = 'Assessment'
            TabOrder = 2
            object rheHist: TRichEdit
              Left = 2
              Top = 23
              Width = 537
              Height = 73
              Align = alClient
              PopupMenu = ppmcopy
              ScrollBars = ssVertical
              TabOrder = 0
              OnChange = rheSubChange
              OnEnter = SGMedEnter
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 294
            Width = 541
            Height = 88
            Align = alClient
            Caption = 'Plan'
            TabOrder = 3
            object rhePlan: TRichEdit
              Left = 2
              Top = 23
              Width = 537
              Height = 63
              Align = alClient
              PopupMenu = ppmcopy
              ScrollBars = ssVertical
              TabOrder = 0
              OnChange = rheSubChange
              OnEnter = SGMedEnter
            end
          end
        end
        object Panel30: TPanel
          Left = 0
          Top = 0
          Width = 457
          Height = 382
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Panel31: TPanel
            Left = 0
            Top = 0
            Width = 457
            Height = 44
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object GroupBox22: TGroupBox
              Left = 0
              Top = 0
              Width = 457
              Height = 44
              Align = alClient
              Caption = #22871#39184#25628#23563
              PopupMenu = PopupMenu1
              TabOrder = 0
              object Edit1: TEdit
                Left = 80
                Top = 12
                Width = 217
                Height = 29
                TabOrder = 0
                OnExit = Edit1Exit
                OnKeyDown = Edit1KeyDown
                OnKeyUp = Edit1KeyUp
              end
            end
          end
          object PageControl1: TPageControl
            Left = 0
            Top = 44
            Width = 457
            Height = 338
            ActivePage = TabSheet14
            Align = alClient
            TabOrder = 1
            object TabSheet3: TTabSheet
              Caption = 'Diagnosis ICD-9'
              object SGIcd: TStringGrid
                Left = 0
                Top = 0
                Width = 449
                Height = 302
                Align = alClient
                FixedCols = 0
                RowCount = 11
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #26032#32048#26126#39636
                Font.Style = []
                ParentFont = False
                PopupMenu = PopupMenu1
                ScrollBars = ssVertical
                TabOrder = 0
                OnDblClick = SGIcdDblClick
                OnDragDrop = SGIcdDragDrop
                OnDragOver = SGIcdDragOver
                OnDrawCell = SGIcdDrawCell
                OnEnter = SGMedEnter
                OnExit = SGIcdExit
                OnKeyDown = SGIcdKeyDown
                OnKeyPress = SGIcdKeyPress
                OnKeyUp = SGIcdKeyUp
                OnMouseDown = SGIcdMouseDown
                OnSelectCell = SGIcdSelectCell
                ColWidths = (
                  74
                  362
                  391
                  20
                  386)
              end
              object Button1: TButton
                Left = 77
                Top = 2
                Width = 344
                Height = 24
                Caption = #33521#25991
                TabOrder = 1
                OnClick = Button1Click
              end
            end
            object TabSheet14: TTabSheet
              Caption = 'ICD-10'
              ImageIndex = 1
              object SGIcd10: TStringGrid
                Left = 0
                Top = 0
                Width = 449
                Height = 302
                Align = alClient
                ColCount = 9
                FixedCols = 0
                RowCount = 11
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = #26032#32048#26126#39636
                Font.Style = []
                ParentFont = False
                PopupMenu = PopupMenu1
                ScrollBars = ssVertical
                TabOrder = 0
                OnDblClick = SGIcdDblClick
                OnDragDrop = SGIcdDragDrop
                OnDragOver = SGIcdDragOver
                OnDrawCell = SGIcdDrawCell
                OnEnter = SGMedEnter
                OnExit = SGIcdExit
                OnKeyDown = SGIcdKeyDown
                OnKeyPress = SGIcdKeyPress
                OnKeyUp = SGIcdKeyUp
                OnMouseDown = SGIcdMouseDown
                OnSelectCell = SGIcdSelectCell
                ColWidths = (
                  74
                  364
                  391
                  20
                  386
                  64
                  64
                  64
                  64)
              end
              object Button4: TButton
                Left = 77
                Top = 2
                Width = 345
                Height = 24
                Caption = #33521#25991
                TabOrder = 1
                OnClick = Button1Click
              end
            end
          end
          object BitBtn8: TBitBtn
            Left = 360
            Top = 44
            Width = 97
            Height = 31
            Caption = 'Search '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -17
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn8Click
            OnEnter = SGMedEnter
          end
        end
      end
      object TabSheet5: TTabSheet
        Hint = #34277#21697'_SGMed'
        Caption = #34277#21697
        ImageIndex = 1
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            998
            50)
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 998
            Height = 25
            Align = alTop
            Brush.Color = clTeal
            Pen.Style = psClear
          end
          object BtnModityMed: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #20462#25913#29376#24907
            TabOrder = 0
          end
          object BtnSeqMed: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #24207#34399
            TabOrder = 1
          end
          object BtnDelmed: TBitBtn
            Left = 0
            Top = 25
            Width = 28
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BtnDelmedClick
          end
          object BtnNamemed: TBitBtn
            Left = 103
            Top = 25
            Width = 283
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #37291#22225#20839#23481
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object BtnDose: TBitBtn
            Left = 385
            Top = 25
            Width = 40
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #27425#37327
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = BtnCirClick
          end
          object BtnCir: TBitBtn
            Left = 465
            Top = 25
            Width = 50
            Height = 25
            Hint = 'CbbOrderCir'
            Anchors = [akLeft, akBottom]
            Caption = #38971#29575
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BtnCirClick
          end
          object BtnPath: TBitBtn
            Left = 545
            Top = 25
            Width = 55
            Height = 25
            Hint = 'CbbOrderPath'
            Anchors = [akLeft, akBottom]
            Caption = #36884#24465
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BtnCirClick
          end
          object BtnCodemed: TBitBtn
            Left = 28
            Top = 25
            Width = 75
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object BtnMemo: TBitBtn
            Left = 727
            Top = 25
            Width = 110
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #35498#26126
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object BtnIns: TBitBtn
            Left = 675
            Top = 25
            Width = 52
            Height = 25
            Hint = 'CbbOrderYN'
            Anchors = [akLeft, akBottom]
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = BtnCirClick
          end
          object BtnGri: TBitBtn
            Tag = 15
            Left = 694
            Top = 0
            Width = 0
            Height = 22
            Hint = 'CbbOrderYN'
            Caption = #30952
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object BtnUnit: TBitBtn
            Left = 425
            Top = 25
            Width = 40
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #21934#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object BtnSheetNo: TBitBtn
            Left = 855
            Top = 0
            Width = 0
            Height = 22
            Caption = #37291#22225#21934#34399
            TabOrder = 12
          end
          object Btndays: TBitBtn
            Left = 515
            Top = 25
            Width = 30
            Height = 25
            Hint = 'CbbOrderPath'
            Anchors = [akLeft, akBottom]
            Caption = #22825#25976
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            OnClick = BtnCirClick
          end
          object BtnTatl: TBitBtn
            Left = 640
            Top = 25
            Width = 35
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #32317#37327
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object BtnFeeUnit: TBitBtn
            Left = 600
            Top = 25
            Width = 40
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #21934#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object Button3: TButton
            Left = 2
            Top = 1
            Width = 96
            Height = 23
            Caption = #29992#34277#24118#20837
            TabOrder = 16
            OnClick = Button3Click
          end
          object ChkBOutmed: TCheckBox
            Left = 111
            Top = 5
            Width = 97
            Height = 17
            Caption = #20986#38498#24118#34277
            Color = clBtnFace
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 17
            Visible = False
            OnClick = ChkBOutmedClick
          end
          object Btnoutmed: TBitBtn
            Left = 837
            Top = 25
            Width = 38
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #20986#38498#24118#34277
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object BtnTDM: TBitBtn
            Left = 875
            Top = 25
            Width = 104
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #25552#31034
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 19
          end
        end
        object SGMed: TStringGrid
          Left = 0
          Top = 50
          Width = 998
          Height = 332
          HelpType = htKeyword
          Align = alClient
          Color = clWhite
          ColCount = 48
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ShowHint = True
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnKeyDown = SGMedKeyDown
          OnKeyPress = SGIcdKeyPress
          OnKeyUp = SGMedKeyUp
          OnMouseDown = SGMedMouseDown
          OnMouseMove = SGMedMouseMove
          OnSelectCell = SGMedSelectCell
        end
        object LBMed: TListBox
          Left = 152
          Top = 51
          Width = 121
          Height = 97
          Color = clScrollBar
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = LBMedDblClick
          OnDblClick = LBMedDblClick
        end
        object EdtCir: TEdit
          Left = 279
          Top = 64
          Width = 105
          Height = 21
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'EdtCir'
          Visible = False
          OnChange = EdtCirChange
          OnExit = EdtCirExit
          OnKeyDown = EdtCirKeyDown
        end
        object EdtOrderEdit: TEdit
          Left = 400
          Top = 61
          Width = 72
          Height = 29
          Hint = 'SGMed'
          TabOrder = 4
          Visible = False
          OnExit = EdtOrderEditExit
          OnKeyDown = EdtOrderEditKeyDown
          OnKeyUp = EdtOrderEditKeyUp
        end
        object CbbOrderYN: TComboBox
          Left = 488
          Top = 60
          Width = 64
          Height = 29
          Hint = 'SGMed'
          ItemHeight = 21
          TabOrder = 5
          Visible = False
          OnClick = CbbOrderYNClick
          OnExit = CbbOrderYNExit
          Items.Strings = (
            'N_'#33258#36027
            'Y_'#20581#20445
            'G_'#20581'('#21547')'
            'H_'#33258'('#21547')'
            '')
        end
        object IVPanel: TPanel
          Left = 0
          Top = 111
          Width = 610
          Height = 273
          Caption = 'IVPanel'
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #27161#26999#39636
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          Visible = False
          OnDblClick = IVPanelDblClick
          OnMouseMove = IVPanelMouseMove
          object Panel38: TPanel
            Left = 1
            Top = 0
            Width = 608
            Height = 272
            Align = alBottom
            BevelInner = bvLowered
            BiDiMode = bdLeftToRight
            BorderWidth = 4
            BorderStyle = bsSingle
            Color = clSkyBlue
            Ctl3D = True
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            object Label84: TLabel
              Left = 11
              Top = 209
              Width = 48
              Height = 15
              Caption = #35498'  '#26126
              ParentShowHint = False
              ShowHint = False
            end
            object lbIVPump: TLabel
              Left = 66
              Top = 235
              Width = 127
              Height = 15
              Caption = #12304#38656#20351#29992'IV Pump'#12305
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object BtnCancel: TButton
              Left = 496
              Top = 233
              Width = 75
              Height = 25
              Caption = #21462#28040
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              OnClick = BtnCancelClick
            end
            object BtnConfirm: TButton
              Left = 400
              Top = 233
              Width = 75
              Height = 25
              Caption = #30906#35469
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #26032#32048#26126#39636
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 1
              OnClick = BtnConfirmClick
            end
            object GBoxCIVD: TGroupBox
              Left = 6
              Top = 115
              Width = 592
              Height = 78
              Align = alTop
              Caption = #36664#27880#27969#36895
              ParentShowHint = False
              ShowHint = False
              TabOrder = 2
              Visible = False
              object LbSPDKG: TLabel
                Left = 24
                Top = 29
                Width = 64
                Height = 15
                Caption = #27969'    '#36895
                ParentShowHint = False
                ShowHint = False
              end
              object Label85: TLabel
                Left = 183
                Top = 21
                Width = 16
                Height = 15
                Caption = #65293
                ParentShowHint = False
                ShowHint = False
              end
              object Label86: TLabel
                Left = 183
                Top = 52
                Width = 16
                Height = 15
                Caption = #65293
                ParentShowHint = False
                ShowHint = False
              end
              object LbSpdUnit: TLabel
                Left = 280
                Top = 52
                Width = 36
                Height = 15
                Caption = 'mL/hr'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object LbTUnit: TLabel
                Left = 281
                Top = 21
                Width = 48
                Height = 15
                Hint = 'mins'
                Caption = 'mg/min'
                ParentShowHint = False
                ShowHint = False
              end
              object LbWeight: TLabel
                Left = 423
                Top = 49
                Width = 48
                Height = 15
                Caption = #39636'  '#37325
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object LbQty: TLabel
                Left = 391
                Top = 22
                Width = 80
                Height = 15
                Caption = #27599#26085#30332#34277#37327
                ParentShowHint = False
                ShowHint = False
              end
              object LbQtyUnit: TLabel
                Left = 534
                Top = 22
                Width = 16
                Height = 15
                Caption = #38982
                ParentShowHint = False
                ShowHint = False
              end
              object LbWeightUnit: TLabel
                Left = 534
                Top = 49
                Width = 16
                Height = 15
                Caption = 'kg'
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object EdtSpeedMCG: TEdit
                Tag = 28
                Left = 109
                Top = 17
                Width = 73
                Height = 23
                Hint = 'M_SpeedMCG'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                OnExit = EdtMemoExit
                OnKeyUp = EdtSpeedMCGKeyUp
                OnMouseMove = IVPanelMouseMove
              end
              object CbIVD: TCheckBox
                Tag = 24
                Left = 24
                Top = 48
                Width = 65
                Height = 17
                Hint = 'M_Spdtype'
                Caption = #21312#38291#20540
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                OnClick = CbIVDClick
              end
              object EdtSpeedMCGE: TEdit
                Tag = 29
                Left = 201
                Top = 17
                Width = 73
                Height = 23
                Hint = 'M_SpeedMCGE'
                Color = clActiveBorder
                Enabled = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
              end
              object EdtCIVDSpd: TEdit
                Tag = 25
                Left = 109
                Top = 48
                Width = 73
                Height = 23
                Hint = 'M_Speed'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 3
                OnExit = EdtMemoExit
                OnKeyUp = EdtCIVDSpdKeyUp
                OnMouseMove = IVPanelMouseMove
              end
              object EdtCIVDSpdE: TEdit
                Tag = 26
                Left = 201
                Top = 48
                Width = 73
                Height = 23
                Hint = 'M_SpeedE'
                Color = clActiveBorder
                Enabled = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 4
              end
              object Edtweight: TEdit
                Tag = 37
                Left = 473
                Top = 45
                Width = 57
                Height = 23
                Hint = 'M_Weight'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 5
                Text = '100'
                Visible = False
                OnEnter = EdtweightEnter
                OnExit = EdtMemoExit
                OnKeyUp = EdtweightKeyUp
                OnMouseMove = IVPanelMouseMove
              end
              object BtnR: TBitBtn
                Left = 552
                Top = 46
                Width = 18
                Height = 20
                Caption = 'W'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 6
                Visible = False
                OnClick = BtnRClick
              end
              object EdtQty: TEdit
                Left = 473
                Top = 18
                Width = 57
                Height = 23
                Color = clActiveBorder
                Enabled = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 7
              end
              object EdtQtyMax: TEdit
                Left = 551
                Top = 17
                Width = 24
                Height = 23
                Color = clActiveBorder
                Enabled = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 8
                Visible = False
              end
            end
            object Panel43: TPanel
              Left = 6
              Top = 6
              Width = 592
              Height = 83
              Align = alTop
              BevelOuter = bvLowered
              ParentShowHint = False
              ShowHint = False
              TabOrder = 3
              object Label87: TLabel
                Left = 28
                Top = 60
                Width = 48
                Height = 15
                Caption = #31232#37323#28082
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object Label88: TLabel
                Left = 258
                Top = 61
                Width = 20
                Height = 15
                Caption = 'mL'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object LbOther: TLabel
                Left = 284
                Top = 60
                Width = 48
                Height = 15
                Caption = '('#20854#20182':'
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object LbOther1: TLabel
                Left = 579
                Top = 60
                Width = 8
                Height = 15
                Caption = ')'
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object LbMedName: TLabel
                Left = 30
                Top = 8
                Width = 81
                Height = 15
                Caption = 'LbMedName'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object Label89: TLabel
                Left = 28
                Top = 33
                Width = 48
                Height = 15
                Caption = #27425'  '#37327
                ParentShowHint = False
                ShowHint = False
              end
              object LbMedUnit: TLabel
                Left = 159
                Top = 33
                Width = 72
                Height = 15
                Caption = 'LbMedUnit'
                ParentShowHint = False
                ShowHint = False
              end
              object LbOldQty: TLabel
                Left = 520
                Top = 8
                Width = 64
                Height = 15
                Caption = 'LbOldQty'
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object LbIVModiflag: TLabel
                Left = 520
                Top = 32
                Width = 96
                Height = 15
                Caption = 'LbIVModiflag'
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object LbSpdModiflag: TLabel
                Left = 400
                Top = 32
                Width = 104
                Height = 15
                Caption = 'LbSpdModiflag'
                ParentShowHint = False
                ShowHint = False
                Visible = False
              end
              object MIXCombo: TComboBox
                Tag = 22
                Left = 83
                Top = 56
                Width = 110
                Height = 23
                Hint = 'M_Mix'
                ItemHeight = 15
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                OnChange = MIXComboChange
                OnExit = MIXComboExit
              end
              object EdtMixPack: TEdit
                Tag = 23
                Left = 198
                Top = 56
                Width = 58
                Height = 23
                Hint = 'M_PACK'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #32048#26126#39636
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                Text = '0'
                OnExit = EdtMixPackExit
                OnKeyUp = EdtMixPackKeyUp
                OnMouseMove = IVPanelMouseMove
              end
              object EdtOther: TEdit
                Tag = 38
                Left = 344
                Top = 56
                Width = 233
                Height = 23
                Hint = 'M_Other'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                Visible = False
              end
              object Btndata: TBitBtn
                Left = 7
                Top = 58
                Width = 18
                Height = 20
                Caption = 'i'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clBlue
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 3
                OnClick = BtndataClick
                OnMouseMove = IVPanelMouseMove
              end
              object EdtMedQty: TEdit
                Tag = 10
                Left = 83
                Top = 29
                Width = 70
                Height = 23
                Hint = 'M_Qty'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 4
                OnExit = EdtMedQtyExit
                OnKeyUp = EdtMedQtyKeyUp
                OnMouseMove = IVPanelMouseMove
              end
            end
            object Panel44: TPanel
              Left = 6
              Top = 89
              Width = 592
              Height = 26
              Align = alTop
              BevelOuter = bvLowered
              ParentShowHint = False
              ShowHint = False
              TabOrder = 4
              object Label90: TLabel
                Left = 18
                Top = 5
                Width = 72
                Height = 15
                Caption = #34277#21697#23481#31309':'
              end
              object LbMedPack: TLabel
                Left = 108
                Top = 5
                Width = 8
                Height = 15
                Alignment = taCenter
                Caption = '0'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = []
                ParentFont = False
              end
              object Label91: TLabel
                Left = 155
                Top = 5
                Width = 16
                Height = 15
                Caption = ' +'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = []
                ParentFont = False
              end
              object Label92: TLabel
                Left = 180
                Top = 5
                Width = 88
                Height = 15
                Caption = #31232#37323#28082#23481#31309':'
              end
              object LbMixpack: TLabel
                Left = 285
                Top = 5
                Width = 8
                Height = 15
                Alignment = taCenter
                Caption = '0'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = []
                ParentFont = False
              end
              object Label93: TLabel
                Left = 343
                Top = 5
                Width = 8
                Height = 15
                Caption = '='
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #27161#26999#39636
                Font.Style = []
                ParentFont = False
              end
              object Label94: TLabel
                Left = 442
                Top = 5
                Width = 20
                Height = 15
                Caption = 'mL'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object EdtPack: TEdit
                Left = 361
                Top = 1
                Width = 80
                Height = 23
                Color = clScrollBar
                Enabled = False
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = #32048#26126#39636
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = '0'
                OnKeyUp = EdtPackKeyUp
              end
            end
            object GBoxIVD: TGroupBox
              Left = 198
              Top = 173
              Width = 592
              Height = 78
              Caption = #36664#27880#27969#36895
              ParentShowHint = False
              ShowHint = False
              TabOrder = 5
              object Label95: TLabel
                Left = 153
                Top = 21
                Width = 80
                Height = 15
                Caption = #32317#36664#27880#26178#38291
                ParentShowHint = False
                ShowHint = False
              end
              object LbIVDSpdUnit: TLabel
                Left = 337
                Top = 52
                Width = 36
                Height = 15
                Caption = 'mL/hr'
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
              end
              object LbIVDTUnit: TLabel
                Left = 338
                Top = 21
                Width = 32
                Height = 15
                Hint = 'mins'
                Caption = 'mins'
                ParentShowHint = False
                ShowHint = False
              end
              object Label96: TLabel
                Left = 169
                Top = 52
                Width = 64
                Height = 15
                Caption = #27969'    '#36895
                ParentShowHint = False
                ShowHint = False
              end
              object EdtIVDSpeed: TEdit
                Tag = 25
                Left = 246
                Top = 48
                Width = 73
                Height = 23
                Hint = 'M_Speed'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                OnExit = EdtMemoExit
                OnKeyUp = EdtIVDSpeedKeyUp
                OnMouseMove = IVPanelMouseMove
              end
              object EdtIVDTime: TEdit
                Tag = 31
                Left = 246
                Top = 17
                Width = 73
                Height = 23
                Hint = 'M_Times'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                OnExit = EdtMemoExit
                OnKeyUp = EdtIVDTimeKeyUp
                OnMouseMove = IVPanelMouseMove
              end
            end
            object GBoxIV: TGroupBox
              Left = 67
              Top = 118
              Width = 592
              Height = 70
              Caption = #36664#27880#27969#36895
              ParentShowHint = False
              ShowHint = False
              TabOrder = 6
              object Label97: TLabel
                Left = 153
                Top = 37
                Width = 80
                Height = 15
                Caption = #32317#36664#27880#26178#38291
                ParentShowHint = False
                ShowHint = False
              end
              object LbIVTUnit: TLabel
                Left = 338
                Top = 37
                Width = 32
                Height = 15
                Hint = 'mins'
                Caption = 'mins'
                ParentShowHint = False
                ShowHint = False
              end
              object EdtIVTime: TEdit
                Tag = 31
                Left = 246
                Top = 33
                Width = 73
                Height = 23
                Hint = 'M_Times'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
              end
            end
            object EdtMemo: TEdit
              Tag = 16
              Left = 63
              Top = 206
              Width = 529
              Height = 23
              Hint = 'M_Memo'
              ParentShowHint = False
              ShowHint = False
              TabOrder = 7
              OnExit = EdtMemoExit
              OnMouseMove = IVPanelMouseMove
            end
          end
        end
        object SGMix: TStringGrid
          Left = 16
          Top = 371
          Width = 337
          Height = 49
          ColCount = 35
          DefaultColWidth = 33
          DefaultRowHeight = 11
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
        end
        object MemoPanel: TPanel
          Left = 561
          Top = 23
          Width = 425
          Height = 193
          BiDiMode = bdLeftToRight
          Color = clSkyBlue
          Ctl3D = True
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Visible = False
          object Memo12: TMemo
            Left = 1
            Top = 1
            Width = 423
            Height = 159
            Align = alClient
            Color = clMenu
            Enabled = False
            Lines.Strings = (
              '')
            TabOrder = 0
          end
          object Panel45: TPanel
            Left = 1
            Top = 160
            Width = 423
            Height = 32
            Align = alBottom
            BevelOuter = bvLowered
            Color = clSkyBlue
            TabOrder = 1
            object BtnClose: TButton
              Left = 345
              Top = 3
              Width = 75
              Height = 25
              Caption = #38364#38281
              TabOrder = 0
              OnClick = BtnCloseClick
            end
            object btnInfo: TButton
              Left = 39
              Top = 4
              Width = 75
              Height = 25
              Caption = #34389#26041#38598
              TabOrder = 1
              OnClick = btnInfoClick
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Hint = #27298#39511'_SGLab'
        Caption = #27298#39511
        ImageIndex = 2
        object Panel20: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = 16508624
          TabOrder = 0
          object BtnLDel: TBitBtn
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Caption = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = BtnLDelClick
          end
          object BtnLCode: TBitBtn
            Left = 25
            Top = 0
            Width = 100
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object BtnLOrder: TBitBtn
            Tag = 73
            Left = 125
            Top = 0
            Width = 300
            Height = 25
            Caption = #37291#22225#20839#23481
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object BtnLDose: TBitBtn
            Left = 425
            Top = 0
            Width = 35
            Height = 25
            Caption = #25976#37327
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BtnLDoseClick
          end
          object BtnLUnit: TBitBtn
            Left = 460
            Top = 0
            Width = 35
            Height = 25
            Caption = #21934#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BtnLCir: TBitBtn
            Tag = 12
            Left = 495
            Top = -1
            Width = 0
            Height = 26
            Hint = 'CbbLOrderCir'
            Caption = #38971#29575
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object BtnLPath: TBitBtn
            Left = 495
            Top = 0
            Width = 60
            Height = 25
            Caption = #27298#39636
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object btnLIns: TBitBtn
            Tag = 14
            Left = 555
            Top = 0
            Width = 68
            Height = 25
            Hint = 'CbbLOrderYN'
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BtnLDoseClick
          end
          object BtnLEMG: TBitBtn
            Tag = 15
            Left = 623
            Top = 0
            Width = 29
            Height = 25
            Hint = 'CbbLOrderYN'
            Caption = #24613
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = BtnLDoseClick
          end
          object BtnLMemo: TBitBtn
            Left = 652
            Top = 0
            Width = 124
            Height = 25
            Caption = #35498#26126
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object BitBtn11: TBitBtn
            Left = 776
            Top = 0
            Width = 65
            Height = 25
            Caption = #26597#35426
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = BitBtn11Click
          end
        end
        object SGLab: TStringGrid
          Tag = 454
          Left = 0
          Top = 25
          Width = 998
          Height = 357
          Align = alClient
          ColCount = 19
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnKeyDown = SGLabKeyDown
          OnKeyPress = SGIcdKeyPress
          OnKeyUp = SGLabKeyUp
          OnMouseDown = SGMedMouseDown
          OnSelectCell = SGLabSelectCell
        end
        object LBCir: TListBox
          Left = 303
          Top = 88
          Width = 121
          Height = 97
          Color = clScrollBar
          ItemHeight = 21
          TabOrder = 2
          Visible = False
        end
        object EdtLCir: TEdit
          Left = 447
          Top = 96
          Width = 121
          Height = 21
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'EdtLCir'
          Visible = False
          OnChange = EdtLCirChange
          OnExit = EdtLCirExit
          OnKeyDown = EdtLCirKeyDown
        end
        object EdtLMemo: TEdit
          Left = 592
          Top = 96
          Width = 33
          Height = 29
          Hint = 'SGLab'
          TabOrder = 4
          Visible = False
          OnExit = EdtOrderEditExit
        end
        object CbbLOrderYN: TComboBox
          Left = 459
          Top = 131
          Width = 29
          Height = 29
          Hint = 'SGLab'
          ItemHeight = 21
          TabOrder = 5
          Visible = False
          OnClick = CbbOrderYNClick
          OnExit = CbbOrderYNExit
          Items.Strings = (
            'N_'#33258#36027
            'Y_'#20581#20445
            'G_'#20581'('#21547')'
            'H_'#33258'('#21547')')
        end
      end
      object TabSheet8: TTabSheet
        Hint = #25918#23556'_SGXRay'
        Caption = #25918#23556
        ImageIndex = 4
        object Panel32: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = 16508624
          TabOrder = 0
          object BtnRDel: TBitBtn
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Caption = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = BtnRDelClick
          end
          object BtnRMemo: TBitBtn
            Left = 650
            Top = 0
            Width = 117
            Height = 25
            Caption = #35498#26126
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object BtnRCode: TBitBtn
            Left = 25
            Top = 0
            Width = 100
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object BtnROrder: TBitBtn
            Tag = 73
            Left = 125
            Top = 0
            Width = 300
            Height = 25
            Caption = #37291#22225#20839#23481
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object BtnRDose: TBitBtn
            Left = 425
            Top = 0
            Width = 35
            Height = 25
            Caption = #25976#37327
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BtnRDoseClick
          end
          object BtnRUnit: TBitBtn
            Left = 460
            Top = 0
            Width = 35
            Height = 25
            Caption = #21934#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BtnRCir: TBitBtn
            Tag = 12
            Left = 495
            Top = -1
            Width = 0
            Height = 27
            Hint = 'CbbROrderCir'
            Caption = #38971#29575
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object BtnRPath: TBitBtn
            Left = 495
            Top = 0
            Width = 57
            Height = 25
            Caption = #37096#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object btnRIns: TBitBtn
            Tag = 14
            Left = 551
            Top = 0
            Width = 72
            Height = 25
            Hint = 'CbbROrderYN'
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BtnRDoseClick
          end
          object BtnREMG: TBitBtn
            Tag = 15
            Left = 624
            Top = 0
            Width = 26
            Height = 25
            Hint = 'CbbROrderYN'
            Caption = #24613
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = BtnRDoseClick
          end
          object BitBtn13: TBitBtn
            Left = 767
            Top = 0
            Width = 75
            Height = 25
            Caption = #26597#35426
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = BitBtn13Click
          end
        end
        object SGXRay: TStringGrid
          Tag = 454
          Left = 0
          Top = 25
          Width = 998
          Height = 297
          Align = alClient
          ColCount = 23
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnKeyDown = SGXRayKeyDown
          OnKeyPress = SGIcdKeyPress
          OnKeyUp = SGXRayKeyUp
          OnMouseDown = SGMedMouseDown
          OnSelectCell = SGXRaySelectCell
        end
        object LBRCir: TListBox
          Left = 111
          Top = 59
          Width = 121
          Height = 97
          Color = clScrollBar
          ItemHeight = 21
          TabOrder = 2
          Visible = False
          OnDblClick = LBRCirDblClick
        end
        object EdtRMemo: TEdit
          Left = 248
          Top = 104
          Width = 25
          Height = 29
          Hint = 'SGXRay'
          TabOrder = 3
          Visible = False
          OnExit = EdtOrderEditExit
        end
        object CbbROrderYN: TComboBox
          Left = 307
          Top = 107
          Width = 29
          Height = 29
          Hint = 'SGXRay'
          ItemHeight = 21
          TabOrder = 4
          Visible = False
          OnClick = CbbOrderYNClick
          OnExit = CbbOrderYNExit
          Items.Strings = (
            'N_'#33258#36027
            'Y_'#20581#20445
            'G_'#20581'('#21547')'
            'H_'#33258'('#21547')')
        end
        object EdtRCir: TEdit
          Left = 271
          Top = 64
          Width = 121
          Height = 21
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'EdtRCir'
          Visible = False
          OnChange = EdtRCirChange
          OnExit = EdtRCirExit
          OnKeyDown = EdtRCirKeyDown
        end
        object PanelRadioCount: TPanel
          Left = 0
          Top = 322
          Width = 998
          Height = 60
          Align = alBottom
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 6
          object Shape2: TShape
            Left = 3
            Top = 5
            Width = 267
            Height = 25
            Brush.Color = clSilver
            Shape = stRoundRect
          end
          object Label37: TLabel
            Left = 8
            Top = 10
            Width = 176
            Height = 15
            Caption = #21435#24180#32047#31309#26377#25928#21137#37327'(mSv):'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Shape3: TShape
            Left = 3
            Top = 32
            Width = 267
            Height = 25
            Brush.Color = clSilver
            Shape = stRoundRect
          end
          object Label38: TLabel
            Left = 8
            Top = 37
            Width = 200
            Height = 15
            Caption = #21435#24180#32047#31309#39080#38570#24230'('#33836#20998#20043#19968'):'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Shape6: TShape
            Left = 271
            Top = 5
            Width = 492
            Height = 25
            Brush.Color = clSkyBlue
            Shape = stRoundRect
          end
          object Shape7: TShape
            Left = 271
            Top = 32
            Width = 493
            Height = 25
            Brush.Color = clSkyBlue
            Shape = stRoundRect
          end
          object Label39: TLabel
            Left = 273
            Top = 10
            Width = 176
            Height = 15
            Caption = #20170#24180#32047#31309#26377#25928#21137#37327'(mSv):'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clOlive
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label40: TLabel
            Left = 273
            Top = 37
            Width = 200
            Height = 15
            Caption = #20170#24180#32047#31309#39080#38570#24230'('#33836#20998#20043#19968'):'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clOlive
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 520
            Top = 10
            Width = 72
            Height = 15
            Caption = '+'#26412#27425#21137#37327
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label43: TLabel
            Left = 520
            Top = 37
            Width = 88
            Height = 15
            Caption = '+'#26412#27425#39080#38570#24230
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label44: TLabel
            Left = 669
            Top = 10
            Width = 12
            Height = 21
            Caption = '='
            Transparent = True
          end
          object Label45: TLabel
            Left = 669
            Top = 37
            Width = 12
            Height = 21
            Caption = '='
            Transparent = True
          end
          object Label46: TLabel
            Left = 767
            Top = 7
            Width = 232
            Height = 15
            Caption = #27492#30149#20154#24180#32047#35336#21137#37327#24050#36229#36942' 85 mSv'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object EdtMsv: TEdit
            Left = 204
            Top = 8
            Width = 56
            Height = 18
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clSilver
            TabOrder = 0
          end
          object EdtRisk: TEdit
            Left = 208
            Top = 36
            Width = 57
            Height = 17
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clSilver
            TabOrder = 1
          end
          object EdtNewmsv: TEdit
            Left = 465
            Top = 9
            Width = 53
            Height = 18
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clSkyBlue
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clOlive
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EdtnewRisk: TEdit
            Left = 465
            Top = 36
            Width = 53
            Height = 18
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clSkyBlue
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clOlive
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EdtAllmsv: TEdit
            Left = 609
            Top = 9
            Width = 53
            Height = 18
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clSkyBlue
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EdtallRisk: TEdit
            Left = 609
            Top = 36
            Width = 53
            Height = 18
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clSkyBlue
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clNavy
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object EdtSumMsv: TEdit
            Left = 684
            Top = 9
            Width = 75
            Height = 17
            AutoSize = False
            BorderStyle = bsNone
            Color = clSkyBlue
            TabOrder = 6
          end
          object EdtSumRisk: TEdit
            Left = 684
            Top = 36
            Width = 75
            Height = 17
            AutoSize = False
            BorderStyle = bsNone
            Color = clSkyBlue
            TabOrder = 7
          end
        end
      end
      object TabSheet9: TTabSheet
        Hint = #34389#32622'_SGFee'
        Caption = #34389#32622
        ImageIndex = 5
        object Panel15: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 25
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object BtnFModity: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #20462#25913#29376#24907
            TabOrder = 0
          end
          object BtnFSeq: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #24207#34399
            TabOrder = 1
          end
          object BtnFDel: TBitBtn
            Left = 1
            Top = 0
            Width = 34
            Height = 25
            Caption = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BtnFDelClick
          end
          object BtnFName: TBitBtn
            Left = 160
            Top = 0
            Width = 435
            Height = 25
            Caption = #21517#31281
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object BtnFpart: TBitBtn
            Left = 595
            Top = 0
            Width = 90
            Height = 25
            Caption = #37096#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BtnFCode: TBitBtn
            Left = 35
            Top = 0
            Width = 125
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object BtnFIns: TBitBtn
            Tag = 14
            Left = 725
            Top = 0
            Width = 65
            Height = 25
            Hint = 'CbbOrderYN'
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object BitBtn1: TBitBtn
            Tag = 15
            Left = 694
            Top = 0
            Width = 0
            Height = 22
            Hint = 'CbbOrderYN'
            Caption = #30952
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object BtnFQty: TBitBtn
            Left = 685
            Top = 0
            Width = 40
            Height = 25
            Caption = #25976#37327
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object BitBtn2: TBitBtn
            Left = 855
            Top = 0
            Width = 0
            Height = 22
            Caption = #37291#22225#21934#34399
            TabOrder = 9
          end
        end
        object SGFee: TStringGrid
          Left = 0
          Top = 25
          Width = 998
          Height = 357
          Align = alClient
          ColCount = 9
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnKeyDown = SGFeeKeyDown
          OnKeyPress = SGIcdKeyPress
          OnKeyUp = SGFeeKeyUp
          OnMouseDown = SGMedMouseDown
          OnSelectCell = SGFeeSelectCell
        end
        object EdTSGFEE: TEdit
          Left = 232
          Top = 117
          Width = 72
          Height = 29
          Hint = 'SGFEE'
          TabOrder = 2
          Visible = False
          OnExit = EdtOrderEditExit
        end
        object CbbFeeYN: TComboBox
          Left = 416
          Top = 139
          Width = 64
          Height = 29
          Hint = 'SGFee'
          ItemHeight = 21
          TabOrder = 3
          Visible = False
          OnClick = CbbOrderYNClick
          OnExit = CbbOrderYNExit
          Items.Strings = (
            'N_'#33258#36027
            'Y_'#20581#20445
            'G_'#20581'('#21547')'
            'H_'#33258'('#21547')')
        end
      end
      object TabSheet7: TTabSheet
        Hint = #27298#26597'_SGChk'
        Caption = #27298#26597
        ImageIndex = 3
        object Panel35: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = 16508624
          TabOrder = 0
          object BtnCDel: TBitBtn
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Caption = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = BtnCDelClick
          end
          object BtnCCode: TBitBtn
            Left = 25
            Top = 0
            Width = 100
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object BtnCOrder: TBitBtn
            Tag = 73
            Left = 125
            Top = 0
            Width = 300
            Height = 25
            Caption = #37291#22225#20839#23481
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object BtnCDose: TBitBtn
            Left = 425
            Top = 0
            Width = 35
            Height = 25
            Caption = #25976#37327
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BtnCDoseClick
          end
          object BtnCUnit: TBitBtn
            Left = 460
            Top = 0
            Width = 35
            Height = 25
            Caption = #21934#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BtnCCir: TBitBtn
            Tag = 12
            Left = 495
            Top = -1
            Width = 0
            Height = 27
            Hint = 'CbbCOrderCir'
            Caption = #38971#29575
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #27161#26999#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object BtnCPath: TBitBtn
            Left = 495
            Top = 0
            Width = 75
            Height = 25
            Caption = #27298#26597#23460
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object btnCIns: TBitBtn
            Tag = 14
            Left = 570
            Top = 0
            Width = 69
            Height = 25
            Hint = 'CbbCOrderYN'
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BtnCDoseClick
          end
          object BtnCEMG: TBitBtn
            Tag = 15
            Left = 640
            Top = 0
            Width = 29
            Height = 25
            Hint = 'CbbCOrderYN'
            Caption = #24613
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = BtnCDoseClick
          end
          object BtnCMemo: TBitBtn
            Left = 669
            Top = 0
            Width = 123
            Height = 25
            Caption = #35498#26126
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object BitBtn12: TBitBtn
            Left = 791
            Top = 0
            Width = 75
            Height = 25
            Caption = #26597#35426
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = BitBtn12Click
          end
        end
        object SGChk: TStringGrid
          Tag = 454
          Left = 0
          Top = 25
          Width = 998
          Height = 357
          Align = alClient
          ColCount = 19
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnKeyDown = SGChkKeyDown
          OnKeyPress = SGIcdKeyPress
          OnKeyUp = SGChkKeyUp
          OnMouseDown = SGMedMouseDown
          OnSelectCell = SGChkSelectCell
        end
        object EdtCMemo: TEdit
          Left = 152
          Top = 64
          Width = 41
          Height = 29
          Hint = 'SGChk'
          TabOrder = 2
          Visible = False
          OnExit = EdtOrderEditExit
        end
        object EdtCCir: TEdit
          Left = 143
          Top = 88
          Width = 121
          Height = 21
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'EdtCCir'
          Visible = False
          OnChange = EdtCCirChange
          OnExit = EdtCCirExit
          OnKeyDown = EdtCCirKeyDown
        end
        object CbbCOrderYN: TComboBox
          Left = 275
          Top = 147
          Width = 29
          Height = 29
          Hint = 'SGChk'
          ItemHeight = 21
          TabOrder = 4
          Visible = False
          OnClick = CbbOrderYNClick
          OnExit = CbbOrderYNExit
          Items.Strings = (
            'N_'#33258#36027
            'Y_'#20581#20445
            'G_'#20581'('#21547')'
            'H_'#33258'('#21547')')
        end
        object LBCCir: TListBox
          Left = 319
          Top = 80
          Width = 121
          Height = 97
          Color = clScrollBar
          ItemHeight = 21
          TabOrder = 5
          Visible = False
          OnDblClick = LBCCirDblClick
        end
      end
      object TabSheet10: TTabSheet
        Hint = #34907#26448'_SGMtrl'
        Caption = #34907#26448
        ImageIndex = 6
        object Panel16: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 25
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object BtnOModity: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #20462#25913#29376#24907
            TabOrder = 0
          end
          object BtnOSeq: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #24207#34399
            TabOrder = 1
          end
          object BtnODel: TBitBtn
            Left = 1
            Top = 0
            Width = 34
            Height = 25
            Caption = 'DC'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BtnODelClick
          end
          object BtnOName: TBitBtn
            Left = 160
            Top = 0
            Width = 435
            Height = 25
            Caption = #21517#31281
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object BtnOpart: TBitBtn
            Left = 595
            Top = 0
            Width = 90
            Height = 25
            Caption = #37096#20301
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BtnOCode: TBitBtn
            Left = 35
            Top = 0
            Width = 125
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object BtnOIns: TBitBtn
            Tag = 14
            Left = 725
            Top = 0
            Width = 57
            Height = 25
            Hint = 'CbbOrderYN'
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object BtnOQty: TBitBtn
            Left = 685
            Top = 0
            Width = 40
            Height = 25
            Caption = #25976#37327
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
        end
        object SGMtrl: TStringGrid
          Left = 0
          Top = 25
          Width = 998
          Height = 357
          Align = alClient
          ColCount = 10
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnKeyDown = SGMtrlKeyDown
          OnKeyPress = SGIcdKeyPress
          OnKeyUp = SGMtrlKeyUp
          OnMouseDown = SGMedMouseDown
          OnSelectCell = SGMtrlSelectCell
        end
        object EdTSGMTRL: TEdit
          Left = 232
          Top = 117
          Width = 72
          Height = 29
          Hint = 'SGMTRL'
          TabOrder = 2
          Visible = False
          OnExit = EdtOrderEditExit
        end
        object CBBMtrlYN: TComboBox
          Left = 416
          Top = 139
          Width = 64
          Height = 29
          Hint = 'SGMtrl'
          ItemHeight = 21
          TabOrder = 3
          Visible = False
          OnClick = CbbOrderYNClick
          OnExit = CbbOrderYNExit
          Items.Strings = (
            'N_'#33258#36027
            'Y_'#20581#20445
            'G_'#20581'('#21547')'
            'H_'#33258'('#21547')')
        end
      end
      object TabSheet11: TTabSheet
        Hint = #25944#36848#37291#22225'_SGOrder'
        Caption = #25944#36848#37291#22225
        ImageIndex = 7
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1143
          Height = 25
          Align = alTop
          AutoSize = True
          BevelOuter = bvNone
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object BtnStModity: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #20462#25913#29376#24907
            TabOrder = 0
          end
          object BtnStSeq: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 22
            Caption = #24207#34399
            TabOrder = 1
          end
          object BtnStDel: TBitBtn
            Left = 1
            Top = 0
            Width = 34
            Height = 25
            Caption = 'DC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BtnStDelClick
          end
          object BtnStName: TBitBtn
            Left = 88
            Top = 0
            Width = 793
            Height = 25
            Caption = #37291#22225
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object BtnStCode: TBitBtn
            Left = 35
            Top = 0
            Width = 54
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object SGOrder: TStringGrid
          Left = 0
          Top = 25
          Width = 1143
          Height = 406
          Align = alClient
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnDblClick = SGMedDblClick
          OnDrawCell = SGMedDrawCell
          OnEnter = SGMedEnter
          OnExit = SGOrderExit
          OnKeyDown = SGOrderKeyDown
          OnKeyUp = SGOrderKeyUp
          OnMouseDown = SGMedMouseDown
          OnSelectCell = SGOrderSelectCell
        end
      end
      object TabSheet12: TTabSheet
        Hint = #30149#27511#39318#38913'_First'
        Caption = #30149#27511#39318#38913
        ImageIndex = 9
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 33
          Width = 998
          Height = 349
          VertScrollBar.Position = 1005
          Align = alClient
          TabOrder = 0
          OnMouseWheelDown = ScrollBox1MouseWheelDown
          OnMouseWheelUp = ScrollBox1MouseWheelUp
          object Panel24: TPanel
            Left = 0
            Top = 163
            Width = 977
            Height = 400
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel25: TPanel
              Left = 0
              Top = 0
              Width = 399
              Height = 400
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object GroupBox18: TGroupBox
                Left = 0
                Top = 0
                Width = 399
                Height = 128
                Align = alTop
                Caption = 'Physical Examination'
                Color = clMoneyGreen
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = #32048#26126#39636
                Font.Style = []
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                object Memo3: TRichEdit
                  Left = 2
                  Top = 17
                  Width = 464
                  Height = 109
                  Hint = 'Physical Examination'
                  Align = alLeft
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                  OnEnter = Memo3Enter
                end
                object BitBtn3: TBitBtn
                  Left = 320
                  Top = 0
                  Width = 81
                  Height = 20
                  Caption = #20818#31185
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clRed
                  Font.Height = -15
                  Font.Name = #32048#26126#39636
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object GroupBox19: TGroupBox
                Left = 0
                Top = 128
                Width = 399
                Height = 87
                Align = alTop
                Caption = 'Trauma Sheet'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object Memo5: TRichEdit
                  Tag = 1
                  Left = 2
                  Top = 23
                  Width = 464
                  Height = 62
                  Hint = 'Trauma Sheet'
                  Align = alLeft
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                  OnEnter = Memo3Enter
                end
              end
              object GroupBox21: TGroupBox
                Left = 0
                Top = 215
                Width = 399
                Height = 185
                Align = alClient
                Caption = 'Impression '
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 2
                object SGEmgicd: TStringGrid
                  Tag = 4
                  Left = 2
                  Top = 23
                  Width = 395
                  Height = 99
                  Hint = 'Impression '
                  Align = alClient
                  FixedCols = 0
                  RowCount = 11
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = #26032#32048#26126#39636
                  Font.Style = []
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
                  ParentFont = False
                  TabOrder = 0
                  OnDblClick = SGIcdDblClick
                  OnEnter = Memo3Enter
                  ColWidths = (
                    67
                    442
                    391
                    20
                    386)
                end
                object Memo10: TRichEdit
                  Tag = 4
                  Left = 2
                  Top = 122
                  Width = 395
                  Height = 61
                  Hint = 'Impression '
                  Align = alBottom
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 1
                  OnEnter = Memo3Enter
                end
              end
            end
            object Panel26: TPanel
              Left = 399
              Top = 0
              Width = 578
              Height = 400
              Align = alClient
              BevelOuter = bvLowered
              BorderWidth = 2
              Caption = 'Panel5'
              TabOrder = 1
              object pnlcap: TPanel
                Left = 3
                Top = 3
                Width = 717
                Height = 30
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
              end
              object DBCtrlGrid1: TDBCtrlGrid
                Left = 3
                Top = 33
                Width = 716
                Height = 357
                Hint = 'Memo3'
                Align = alClient
                ColCount = 2
                Color = clScrollBar
                DataSource = DSIV
                Font.Charset = CHINESEBIG5_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #32048#26126#39636
                Font.Style = []
                Orientation = goHorizontal
                PanelHeight = 34
                PanelWidth = 358
                ParentColor = False
                ParentFont = False
                TabOrder = 1
                RowCount = 10
                SelectedColor = 13547981
                OnClick = DBText37Click
                object DBText37: TDBText
                  Left = 2
                  Top = 5
                  Width = 255
                  Height = 19
                  DataField = 'PHRASE_name'
                  DataSource = DSIV
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = 274189
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = DBText37Click
                end
              end
            end
          end
          object Panel22: TPanel
            Left = 0
            Top = -1005
            Width = 977
            Height = 1168
            Align = alTop
            Caption = 'Panel22'
            TabOrder = 1
            object Panel1: TPanel
              Left = 1
              Top = 1
              Width = 507
              Height = 1166
              Align = alLeft
              Caption = 'Panel1'
              TabOrder = 0
              object GroupBox17: TGroupBox
                Left = 1
                Top = 797
                Width = 505
                Height = 398
                Align = alTop
                Caption = 'Medication History'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                object Panel28: TPanel
                  Left = 2
                  Top = 23
                  Width = 501
                  Height = 373
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Memo9: TRichEdit
                    Left = 0
                    Top = 57
                    Width = 501
                    Height = 93
                    Align = alTop
                    Color = clWhite
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                  object Memo8: TRichEdit
                    Left = 0
                    Top = 0
                    Width = 501
                    Height = 57
                    Align = alTop
                    Color = clBtnFace
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    ScrollBars = ssVertical
                    TabOrder = 1
                  end
                  object CheckListBox6: TCheckListBox
                    Left = 0
                    Top = 150
                    Width = 501
                    Height = 223
                    Hint = 'Memo9'
                    Align = alClient
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    Color = clScrollBar
                    Columns = 2
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = 274189
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Pitch = fpVariable
                    Font.Style = [fsBold]
                    ItemHeight = 16
                    ParentFont = False
                    TabOrder = 2
                    OnClick = CheckListBox2Click
                    OnMouseDown = CheckListBox2MouseDown
                  end
                end
              end
              object GroupBox15: TGroupBox
                Left = 1
                Top = 399
                Width = 505
                Height = 398
                Align = alTop
                Caption = 'Past History'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object Memo4: TRichEdit
                  Left = 2
                  Top = 23
                  Width = 501
                  Height = 129
                  Align = alTop
                  BevelOuter = bvNone
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clMenuText
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object CheckListBox4: TCheckListBox
                  Left = 2
                  Top = 152
                  Width = 501
                  Height = 244
                  Hint = 'Memo4'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clScrollBar
                  Columns = 2
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = 274189
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Pitch = fpVariable
                  Font.Style = [fsBold]
                  ItemHeight = 16
                  ParentFont = False
                  TabOrder = 1
                  OnClick = CheckListBox2Click
                  OnMouseDown = CheckListBox2MouseDown
                end
              end
              object GroupBox13: TGroupBox
                Left = 1
                Top = 1
                Width = 505
                Height = 398
                Align = alTop
                Caption = 'Chief Complaint'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 2
                object Memo1: TRichEdit
                  Left = 2
                  Top = 23
                  Width = 501
                  Height = 100
                  Align = alTop
                  BevelOuter = bvNone
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clMenuText
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object CheckListBox2: TCheckListBox
                  Left = 2
                  Top = 123
                  Width = 501
                  Height = 273
                  Hint = 'Memo1'
                  Align = alClient
                  BevelInner = bvSpace
                  BorderStyle = bsNone
                  Color = clScrollBar
                  Columns = 2
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = 274189
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Pitch = fpVariable
                  Font.Style = [fsBold]
                  ItemHeight = 16
                  ParentFont = False
                  TabOrder = 1
                  OnClick = CheckListBox2Click
                  OnMouseDown = CheckListBox2MouseDown
                end
              end
            end
            object Panel23: TPanel
              Left = 508
              Top = 1
              Width = 468
              Height = 1166
              Align = alClient
              Caption = 'Panel23'
              TabOrder = 1
              object GroupBox14: TGroupBox
                Left = 1
                Top = 1
                Width = 466
                Height = 398
                Align = alTop
                Caption = 'Present Illness'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 0
                object Memo2: TRichEdit
                  Left = 2
                  Top = 23
                  Width = 462
                  Height = 101
                  Align = alTop
                  BevelOuter = bvNone
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clMenuText
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object CheckListBox3: TCheckListBox
                  Left = 2
                  Top = 124
                  Width = 462
                  Height = 272
                  Hint = 'Memo2'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clScrollBar
                  Columns = 2
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = 274189
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Pitch = fpVariable
                  Font.Style = [fsBold]
                  ItemHeight = 16
                  ParentFont = False
                  TabOrder = 1
                  OnClick = CheckListBox2Click
                  OnMouseDown = CheckListBox2MouseDown
                end
              end
              object GroupBox16: TGroupBox
                Left = 1
                Top = 399
                Width = 466
                Height = 398
                Align = alTop
                Caption = 'Allergy History'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 1
                object Panel29: TPanel
                  Left = 2
                  Top = 23
                  Width = 462
                  Height = 373
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Memo6: TRichEdit
                    Left = 0
                    Top = 49
                    Width = 462
                    Height = 80
                    Align = alTop
                    BevelOuter = bvNone
                    Color = clWhite
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clMenuText
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                  object Memo7: TRichEdit
                    Left = 0
                    Top = 0
                    Width = 462
                    Height = 49
                    Align = alTop
                    BevelOuter = bvNone
                    Color = clBtnFace
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = clMenuText
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    ScrollBars = ssVertical
                    TabOrder = 1
                  end
                  object CheckListBox5: TCheckListBox
                    Left = 0
                    Top = 129
                    Width = 462
                    Height = 244
                    Hint = 'Memo6'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clScrollBar
                    Columns = 2
                    Font.Charset = CHINESEBIG5_CHARSET
                    Font.Color = 274189
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Pitch = fpVariable
                    Font.Style = [fsBold]
                    ItemHeight = 16
                    ParentFont = False
                    TabOrder = 2
                    OnClick = CheckListBox2Click
                    OnMouseDown = CheckListBox2MouseDown
                  end
                end
              end
              object GroupBox20: TGroupBox
                Left = 1
                Top = 797
                Width = 466
                Height = 398
                Align = alTop
                Caption = 'Plan(s)'
                Color = clMoneyGreen
                ParentBackground = False
                ParentColor = False
                TabOrder = 2
                object Memo11: TRichEdit
                  Left = 2
                  Top = 23
                  Width = 462
                  Height = 150
                  Align = alTop
                  Color = clWhite
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
                object CheckListBox7: TCheckListBox
                  Left = 2
                  Top = 173
                  Width = 462
                  Height = 223
                  Hint = 'Memo11'
                  Align = alClient
                  Color = clScrollBar
                  Columns = 2
                  Font.Charset = CHINESEBIG5_CHARSET
                  Font.Color = 274189
                  Font.Height = -16
                  Font.Name = 'Times New Roman'
                  Font.Pitch = fpVariable
                  Font.Style = [fsBold]
                  ItemHeight = 16
                  ParentFont = False
                  TabOrder = 1
                  OnClick = CheckListBox2Click
                  OnMouseDown = CheckListBox2MouseDown
                end
              end
            end
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 998
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            998
            33)
          object btnFirstsave: TButton
            Left = 887
            Top = 5
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #23436#25104
            TabOrder = 0
            OnClick = btnFirstsaveClick
          end
          object Button2: TButton
            Left = 797
            Top = 5
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #35036#21360
            TabOrder = 1
            OnClick = Button2Click
          end
        end
      end
      object TabSheet1: TTabSheet
        Hint = #26597#33258#36027'_SGfeepay'
        Caption = #26597#33258#36027
        ImageIndex = 10
        object Panel33: TPanel
          Left = 0
          Top = 395
          Width = 1143
          Height = 36
          Align = alBottom
          TabOrder = 0
          object Label61: TLabel
            Left = 470
            Top = 10
            Width = 80
            Height = 16
            Caption = #33258#36027#32317#20729' :'
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 40
            Top = 10
            Width = 361
            Height = 16
            AutoSize = False
            Caption = #27492#35336#20729#28858#21443#32771#29992#65292#26368#32066#20729#37666#20381#25209#20729#30340#20729#26684#28858#28310
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = #26032#32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
        object SGfeepay: TStringGrid
          Left = 0
          Top = 0
          Width = 1143
          Height = 395
          Align = alClient
          ColCount = 13
          FixedCols = 0
          RowCount = 2
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #26032#32048#26126#39636
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnDrawCell = SGfeepayDrawCell
        end
      end
      object TabSheet2: TTabSheet
        Hint = #30149#29702'_SGPath'
        Caption = #30149#29702
        ImageIndex = 11
        object Panel34: TPanel
          Left = 0
          Top = 0
          Width = 1143
          Height = 25
          Align = alTop
          TabOrder = 0
          object BtnpthCode: TBitBtn
            Left = 36
            Top = 0
            Width = 100
            Height = 25
            Caption = #20195#30908
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object BtnpthOrder: TBitBtn
            Tag = 73
            Left = 136
            Top = 0
            Width = 300
            Height = 25
            Caption = #37291#22225#20839#23481
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object BtnpthDose: TBitBtn
            Left = 436
            Top = 0
            Width = 35
            Height = 25
            Caption = #25976#37327
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object btnpthIns: TBitBtn
            Tag = 14
            Left = 471
            Top = 0
            Width = 45
            Height = 25
            Hint = 'CbbCOrderYN'
            Caption = #20581
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object BtnpthMemo: TBitBtn
            Left = 516
            Top = 0
            Width = 229
            Height = 25
            Caption = #35498#26126
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object BitBtn17: TBitBtn
            Left = 745
            Top = 0
            Width = 99
            Height = 25
            Caption = #38283#21934
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BitBtn17Click
          end
          object BtnpthDel: TBitBtn
            Left = 1
            Top = 0
            Width = 35
            Height = 25
            Caption = #29376#24907
            Enabled = False
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object BtnpthSeq: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 25
            Caption = #29376#24907
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object BtnpthModity: TBitBtn
            Left = 0
            Top = 0
            Width = 0
            Height = 25
            Caption = #29376#24907
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
        end
        object SGPath: TStringGrid
          Tag = 454
          Left = 0
          Top = 25
          Width = 1143
          Height = 406
          Align = alClient
          ColCount = 19
          FixedCols = 0
          RowCount = 1
          FixedRows = 0
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 1
          OnDrawCell = SGMedDrawCell
          OnKeyDown = SGChkKeyDown
          OnMouseDown = SGMedMouseDown
        end
      end
    end
    object pnlHintGrid: TPanel
      Left = 653
      Top = 168
      Width = 952
      Height = 251
      BevelOuter = bvLowered
      BevelWidth = 3
      Caption = 'pnlHintGrid'
      TabOrder = 1
      Visible = False
      object pnlIcd: TPanel
        Left = 24
        Top = 8
        Width = 833
        Height = 113
        Caption = 'pnlIcd'
        TabOrder = 0
        Visible = False
        object DBCIcd: TDBCtrlGrid
          Left = 3
          Top = 24
          Width = 830
          Height = 95
          DataSource = DSIcd
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 19
          PanelWidth = 813
          ParentFont = False
          TabOrder = 0
          RowCount = 5
          SelectedColor = clAqua
          OnPaintPanel = DBCIcdPaintPanel
          object DBText1: TDBText
            Left = 4
            Top = 2
            Width = 69
            Height = 17
            DataField = 'icd9_code'
            DataSource = DSIcd
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            OnClick = DBText1Click
            OnDblClick = DBText1Click
          end
          object DBText2: TDBText
            Left = 68
            Top = 2
            Width = 517
            Height = 17
            DataField = 'ENG_FULL_DESC'
            DataSource = DSIcd
            OnClick = DBText1Click
            OnDblClick = DBText1Click
          end
          object DBText3: TDBText
            Left = 588
            Top = 2
            Width = 285
            Height = 17
            DataField = 'CHN_FULL_DESC'
            DataSource = DSIcd
            OnClick = DBText1Click
            OnDblClick = DBText1Click
          end
        end
        object pnlIcdT: TPanel
          Left = 1
          Top = 1
          Width = 831
          Height = 23
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 1
          object Label12: TLabel
            Left = 9
            Top = 5
            Width = 32
            Height = 15
            Caption = #20195#30908
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 589
            Top = 5
            Width = 64
            Height = 15
            Caption = #20013#25991#21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 70
            Top = 5
            Width = 64
            Height = 15
            Caption = #33521#25991#21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object pnlfee: TPanel
        Left = 107
        Top = 46
        Width = 761
        Height = 131
        Caption = 'pnlfee'
        TabOrder = 1
        Visible = False
        object pnlFeeT: TPanel
          Left = 1
          Top = 1
          Width = 759
          Height = 23
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object Label29: TLabel
            Left = 25
            Top = 5
            Width = 32
            Height = 15
            Caption = #20195#30908
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 594
            Top = 5
            Width = 32
            Height = 15
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 676
            Top = 5
            Width = 32
            Height = 15
            Caption = #33258#36027
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 133
            Top = 5
            Width = 32
            Height = 15
            Caption = #21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 502
            Top = 5
            Width = 32
            Height = 15
            Caption = #37096#20301
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
        object DBCFee: TDBCtrlGrid
          Left = 9
          Top = 25
          Width = 800
          Height = 95
          DataSource = DSHintGrd
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 19
          PanelWidth = 783
          ParentFont = False
          TabOrder = 1
          RowCount = 5
          SelectedColor = clAqua
          object DBText19: TDBText
            Left = 4
            Top = 2
            Width = 118
            Height = 17
            DataField = 'fee_code'
            DataSource = DSHintGrd
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            OnClick = DBText19Click
            OnDblClick = DBText19Click
          end
          object DBText21: TDBText
            Left = 500
            Top = 2
            Width = 85
            Height = 17
            DataField = 'FEE_CODE'
            DataSource = DSHintGrd
            OnClick = DBText19Click
            OnDblClick = DBText19Click
          end
          object DBText22: TDBText
            Left = 116
            Top = 2
            Width = 383
            Height = 17
            DataField = 'FEE_NAme'
            DataSource = DSHintGrd
            OnClick = DBText19Click
            OnDblClick = DBText19Click
          end
          object DBText23: TDBText
            Left = 583
            Top = 2
            Width = 76
            Height = 17
            DataField = 'INS_PAY_UAMT'
            DataSource = DSHintGrd
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText19Click
            OnDblClick = DBText19Click
          end
          object DBText24: TDBText
            Left = 660
            Top = 2
            Width = 65
            Height = 17
            DataField = 'SELF_PAY_UAMT'
            DataSource = DSHintGrd
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText19Click
            OnDblClick = DBText19Click
          end
        end
      end
      object pnlmtrl: TPanel
        Left = 199
        Top = 7
        Width = 769
        Height = 131
        Caption = 'pnlmtrl'
        TabOrder = 2
        Visible = False
        object pnlMtrlT: TPanel
          Left = 1
          Top = 1
          Width = 767
          Height = 23
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object Label16: TLabel
            Left = 25
            Top = 5
            Width = 32
            Height = 15
            Caption = #20195#30908
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 594
            Top = 5
            Width = 32
            Height = 15
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 676
            Top = 5
            Width = 32
            Height = 15
            Caption = #33258#36027
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 133
            Top = 5
            Width = 32
            Height = 15
            Caption = #21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 502
            Top = 5
            Width = 32
            Height = 15
            Caption = #37096#20301
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
        object DBCMtrl: TDBCtrlGrid
          Left = 9
          Top = 25
          Width = 800
          Height = 95
          DataSource = DSMtrl
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 19
          PanelWidth = 783
          ParentFont = False
          TabOrder = 1
          RowCount = 5
          SelectedColor = clAqua
          object DBText4: TDBText
            Left = 4
            Top = 2
            Width = 109
            Height = 17
            DataField = 'fee_code'
            DataSource = DSMtrl
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            OnClick = DBText4Click
            OnDblClick = DBText4Click
          end
          object DBText5: TDBText
            Left = 500
            Top = 2
            Width = 85
            Height = 17
            DataField = 'FEE_CODE'
            DataSource = DSMtrl
            OnClick = DBText4Click
            OnDblClick = DBText4Click
          end
          object DBText6: TDBText
            Left = 108
            Top = 2
            Width = 373
            Height = 17
            DataField = 'FEE_NAme'
            DataSource = DSMtrl
            OnClick = DBText4Click
            OnDblClick = DBText4Click
          end
          object DBText7: TDBText
            Left = 583
            Top = 2
            Width = 66
            Height = 17
            DataField = 'INS_PAY_UAMT'
            DataSource = DSMtrl
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText4Click
            OnDblClick = DBText4Click
          end
          object DBText8: TDBText
            Left = 660
            Top = 2
            Width = 65
            Height = 17
            DataField = 'SELF_PAY_UAMT'
            DataSource = DSMtrl
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText4Click
            OnDblClick = DBText4Click
          end
        end
      end
      object PanelLab: TPanel
        Left = 7
        Top = 139
        Width = 883
        Height = 141
        TabOrder = 3
        Visible = False
        object DBCLab: TDBCtrlGrid
          Left = 41
          Top = 26
          Width = 872
          Height = 115
          DataSource = DSLab
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 23
          PanelWidth = 855
          ParentFont = False
          TabOrder = 0
          RowCount = 5
          SelectedColor = clAqua
          object DBText9: TDBText
            Left = 4
            Top = 6
            Width = 70
            Height = 17
            DataField = #32068#21029
            DataSource = DSLab
            OnClick = DBText9Click
            OnDblClick = DBText9Click
          end
          object DBText10: TDBText
            Left = 78
            Top = 6
            Width = 120
            Height = 17
            DataField = #27298#39636
            DataSource = DSLab
            OnClick = DBText9Click
            OnDblClick = DBText9Click
          end
          object DBText11: TDBText
            Left = 202
            Top = 6
            Width = 74
            Height = 17
            DataField = 'FEE_CODE'
            DataSource = DSLab
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            OnClick = DBText9Click
            OnDblClick = DBText9Click
          end
          object DBText12: TDBText
            Left = 281
            Top = 6
            Width = 403
            Height = 17
            DataField = 'FEE_NAme'
            DataSource = DSLab
            OnClick = DBText9Click
            OnDblClick = DBText9Click
          end
          object DBText13: TDBText
            Left = 690
            Top = 6
            Width = 48
            Height = 17
            DataField = 'INS_PAY_UAMT'
            DataSource = DSLab
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText9Click
            OnDblClick = DBText9Click
          end
          object DBText14: TDBText
            Left = 743
            Top = 6
            Width = 65
            Height = 17
            DataField = 'SELF_PAY_UAMT'
            DataSource = DSLab
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText9Click
            OnDblClick = DBText9Click
          end
          object DBText40: TDBText
            Left = 809
            Top = 5
            Width = 49
            Height = 17
            DataField = 'send_cd_3'
            DataSource = DSLab
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
        end
        object Panel39: TPanel
          Left = 1
          Top = 1
          Width = 881
          Height = 23
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 1
          object Label21: TLabel
            Left = 8
            Top = 6
            Width = 32
            Height = 15
            Caption = #32068#21029
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 86
            Top = 6
            Width = 32
            Height = 15
            Caption = #27298#39636
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 212
            Top = 6
            Width = 32
            Height = 15
            Caption = #20195#30908
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 692
            Top = 6
            Width = 32
            Height = 15
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 748
            Top = 6
            Width = 32
            Height = 15
            Caption = #33258#36027
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 296
            Top = 6
            Width = 32
            Height = 15
            Caption = #21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 820
            Top = 7
            Width = 32
            Height = 15
            Caption = #24207#34399
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object PanelCHK: TPanel
        Left = 63
        Top = 188
        Width = 946
        Height = 133
        Caption = 'PanelCHK'
        TabOrder = 4
        Visible = False
        object Panel40: TPanel
          Left = 1
          Top = 1
          Width = 944
          Height = 23
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object Label47: TLabel
            Left = 8
            Top = 6
            Width = 48
            Height = 15
            Caption = #27298#26597#23460
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 168
            Top = 6
            Width = 32
            Height = 15
            Caption = #20195#30908
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 676
            Top = 6
            Width = 32
            Height = 15
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 764
            Top = 6
            Width = 32
            Height = 15
            Caption = #33258#36027
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 256
            Top = 6
            Width = 32
            Height = 15
            Caption = #21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
        object DBCCHK: TDBCtrlGrid
          Left = 9
          Top = 24
          Width = 880
          Height = 102
          DataSource = DSCHK
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 17
          PanelWidth = 863
          ParentFont = False
          TabOrder = 1
          RowCount = 6
          SelectedColor = clAqua
          object DBText15: TDBText
            Left = 4
            Top = 2
            Width = 157
            Height = 17
            DataField = #27298#26597#23460
            DataSource = DSCHK
            OnClick = DBText15Click
            OnDblClick = DBText15Click
          end
          object DBText16: TDBText
            Left = 164
            Top = 3
            Width = 85
            Height = 17
            DataField = 'FEE_CODE'
            DataSource = DSCHK
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            OnClick = DBText15Click
            OnDblClick = DBText15Click
          end
          object DBText17: TDBText
            Left = 252
            Top = 3
            Width = 413
            Height = 17
            DataField = 'FEE_NAme'
            DataSource = DSCHK
            OnClick = DBText15Click
            OnDblClick = DBText15Click
          end
          object DBText18: TDBText
            Left = 672
            Top = 2
            Width = 81
            Height = 17
            DataField = 'INS_PAY_UAMT'
            DataSource = DSCHK
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText15Click
            OnDblClick = DBText15Click
          end
          object DBText20: TDBText
            Left = 760
            Top = 2
            Width = 97
            Height = 17
            DataField = 'SELF_PAY_UAMT'
            DataSource = DSCHK
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText15Click
            OnDblClick = DBText15Click
          end
        end
      end
      object PanelRay: TPanel
        Left = 151
        Top = 191
        Width = 842
        Height = 162
        Caption = 'PanelRay'
        TabOrder = 5
        Visible = False
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 840
          Height = 23
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object Label27: TLabel
            Left = 7
            Top = 6
            Width = 64
            Height = 15
            Caption = #25918#23556#39006#22411
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 79
            Top = 6
            Width = 32
            Height = 15
            Caption = #37096#20301
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 164
            Top = 6
            Width = 32
            Height = 15
            Caption = #20195#30908
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 668
            Top = 6
            Width = 32
            Height = 15
            Caption = #20581#20445
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 724
            Top = 6
            Width = 32
            Height = 15
            Caption = #33258#36027
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 255
            Top = 6
            Width = 32
            Height = 15
            Caption = #21517#31281
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
          object Label67: TLabel
            Left = 796
            Top = 7
            Width = 32
            Height = 15
            Caption = #24207#34399
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
          end
        end
        object DBCRay: TDBCtrlGrid
          Left = 9
          Top = 24
          Width = 1024
          Height = 125
          DataSource = DSRay
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 25
          PanelWidth = 1007
          ParentFont = False
          TabOrder = 1
          RowCount = 5
          SelectedColor = clAqua
          object DBText25: TDBText
            Left = 4
            Top = 6
            Width = 60
            Height = 17
            DataField = #39006#21029
            DataSource = DSRay
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
          object DBText26: TDBText
            Left = 68
            Top = 6
            Width = 83
            Height = 17
            DataField = #37096#20301
            DataSource = DSRay
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
          object DBText27: TDBText
            Left = 154
            Top = 6
            Width = 92
            Height = 17
            DataField = 'FEE_CODE'
            DataSource = DSRay
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
          object DBText28: TDBText
            Left = 252
            Top = 6
            Width = 413
            Height = 17
            DataField = 'FEE_NAme'
            DataSource = DSRay
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
          object DBText29: TDBText
            Left = 663
            Top = 6
            Width = 49
            Height = 17
            DataField = 'INS_PAY_UAMT'
            DataSource = DSRay
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clGreen
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
          object DBText30: TDBText
            Left = 713
            Top = 6
            Width = 52
            Height = 17
            DataField = 'SELF_PAY_UAMT'
            DataSource = DSRay
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
          object DBText39: TDBText
            Left = 788
            Top = 6
            Width = 49
            Height = 17
            DataField = 'send_cd_2'
            DataSource = DSRay
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            OnClick = DBText25Click
            OnDblClick = DBText25Click
          end
        end
      end
      object PanelMed: TPanel
        Left = 282
        Top = 193
        Width = 807
        Height = 141
        TabOrder = 6
        Visible = False
        object DBCGMed: TDBCtrlGrid
          Left = 1
          Top = 1
          Width = 488
          Height = 139
          Align = alLeft
          DataSource = DSMed
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          PanelHeight = 27
          PanelWidth = 471
          ParentFont = False
          TabOrder = 0
          RowCount = 5
          SelectedColor = clAqua
          OnPaintPanel = DBCGMedPaintPanel
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 66
            Height = 27
            Align = alLeft
            Shape = bsRightLine
          end
          object DBText31: TDBText
            Left = 67
            Top = 0
            Width = 399
            Height = 14
            DataField = 'Fee_Name'
            DataSource = DSMed
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = DBText32DblClick
            OnDblClick = DBText32DblClick
          end
          object DBText32: TDBText
            Left = 2
            Top = 0
            Width = 60
            Height = 15
            Color = clAqua
            DataField = 'Fee_code'
            DataSource = DSMed
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            OnClick = DBText32DblClick
            OnDblClick = DBText32DblClick
          end
          object DBText33: TDBText
            Left = 67
            Top = 14
            Width = 395
            Height = 13
            DataField = 'Fee_desc'
            DataSource = DSMed
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = DBText32DblClick
            OnDblClick = DBText32DblClick
          end
          object Label52: TLabel
            Left = 2
            Top = 13
            Width = 26
            Height = 15
            Caption = 'Labe'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = DBText32DblClick
            OnDblClick = DBText32DblClick
          end
        end
        object Panel41: TPanel
          Left = 489
          Top = 1
          Width = 317
          Height = 139
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object Panel42: TPanel
            Left = 2
            Top = 118
            Width = 313
            Height = 19
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object Label53: TLabel
              Left = 1
              Top = 0
              Width = 64
              Height = 15
              Caption = #20351#29992#29376#24907
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #32048#26126#39636
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 99
              Top = 0
              Width = 30
              Height = 13
              Caption = #20581#20445
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = 16384
              Font.Height = -13
              Font.Name = #32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label55: TLabel
              Left = 212
              Top = 0
              Width = 30
              Height = 13
              Caption = #33258#36027
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = #32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText34: TDBText
              Left = 131
              Top = 0
              Width = 57
              Height = 15
              DataField = 'INS_PAY_UAMT'
              DataSource = DSMed
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = 16384
              Font.Height = -13
              Font.Name = #32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText35: TDBText
              Left = 246
              Top = 0
              Width = 57
              Height = 15
              DataField = 'SELF_PAY_UAMT'
              DataSource = DSMed
              Font.Charset = CHINESEBIG5_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = #32048#26126#39636
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText36: TDBText
              Left = 67
              Top = 0
              Width = 23
              Height = 15
              DataField = 'USE_STATUS'
              DataSource = DSMed
            end
          end
          object DBMemo1: TDBMemo
            Left = 2
            Top = 2
            Width = 313
            Height = 116
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clBtnFace
            DataField = 'INS_RULE'
            DataSource = DSMed
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #32048#26126#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    object PnlICD10: TPanel
      Left = 701
      Top = 134
      Width = 868
      Height = 80
      TabOrder = 2
      Visible = False
      object DBCICD10: TDBCtrlGrid
        Left = 1
        Top = 24
        Width = 866
        Height = 55
        Align = alClient
        DataSource = DSICD10
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #32048#26126#39636
        Font.Style = []
        PanelHeight = 27
        PanelWidth = 849
        ParentFont = False
        TabOrder = 0
        RowCount = 2
        SelectedColor = clAqua
        object DBText41: TDBText
          Left = 4
          Top = 2
          Width = 102
          Height = 17
          DataField = 'icd9_code'
          DataSource = DSICD10
          OnClick = DBText41Click
        end
        object DBText42: TDBText
          Left = 108
          Top = -1
          Width = 446
          Height = 22
          DataField = 'ENG_FULL_DESC'
          DataSource = DSICD10
          OnClick = DBText41Click
        end
        object DBText43: TDBText
          Left = 556
          Top = 2
          Width = 333
          Height = 17
          DataField = 'CHN_FULL_DESC'
          DataSource = DSICD10
          OnClick = DBText41Click
        end
      end
      object Panel37: TPanel
        Left = 1
        Top = 1
        Width = 866
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object Label81: TLabel
          Left = 25
          Top = 5
          Width = 28
          Height = 14
          Caption = #20195#30908
        end
        object Label82: TLabel
          Left = 557
          Top = 5
          Width = 56
          Height = 14
          Caption = #20013#25991#21517#31281
        end
        object Label83: TLabel
          Left = 110
          Top = 5
          Width = 64
          Height = 15
          Caption = #33521#25991#21517#31281
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clGreen
          Font.Height = -15
          Font.Name = #32048#26126#39636
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object pnlphrase: TPanel [3]
    Left = 186
    Top = 595
    Width = 220
    Height = 220
    BevelOuter = bvSpace
    BorderWidth = 2
    TabOrder = 3
    Visible = False
    object DBCphrase: TDBCtrlGrid
      Left = 3
      Top = 24
      Width = 214
      Height = 192
      DataSource = DSphrase
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      PanelHeight = 24
      PanelWidth = 197
      ParentFont = False
      TabOrder = 0
      RowCount = 8
      SelectedColor = clAqua
      object DBText38: TDBText
        Left = 2
        Top = 6
        Width = 191
        Height = 17
        DataField = 'str_desc'
        DataSource = DSphrase
        OnClick = DBText38Click
        OnDblClick = DBText38Click
      end
    end
  end
  object BtnorderShift: TBitBtn [4]
    Left = 916
    Top = 232
    Width = 65
    Height = 25
    Caption = #30041#35264
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clFuchsia
    Font.Height = -15
    Font.Name = #32048#26126#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BtnorderShiftClick
  end
  inherited Timer2: TTimer
    Left = 885
    Top = 209
  end
  object DSMed: TDataSource
    Left = 751
    Top = 106
  end
  object DSRay: TDataSource
    Left = 784
    Top = 105
  end
  object DSCHK: TDataSource
    Left = 816
    Top = 113
  end
  object DSLab: TDataSource
    Left = 848
    Top = 113
  end
  object DSMtrl: TDataSource
    Left = 880
    Top = 129
  end
  object DSHintGrd: TDataSource
    Left = 912
    Top = 122
  end
  object DSIcd: TDataSource
    OnDataChange = DSIcdDataChange
    Left = 776
    Top = 138
  end
  object ImageListforPat: TImageList
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 685
    Top = 112
    Bitmap = {
      494C01010D000E00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      010000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F6F6FFD5D4D3FFB7B3B1FFB7AFAFFFC9CBC8FFEFF0
      F0FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F5F5FFD9D3D2FFB7B6B3FFB7AE
      AEFFBDBCBCFFE3DDDDFFF7FAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEBEDECFF95928DFF5B403CFF432525FF402020FF402020FF412323FF5235
      31FF847B77FFDDDEDBFFE1DDDDFF8F7F7FFF583939FF452525FF402121FF4020
      20FF402121FF472828FF5F4A45FF9C9A97FFEBEDEBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFD6D4
      D1FF624A47FF412222FF644A4AFF958A8BFFB9B2B2FFB9B1B1FF9A9390FF604F
      4DFF402222FF503330FF4D2F2EFF412121FF58413FFF857674FFABA09EFFB8AA
      AAFF9F9997FF7E6868FF4C3232FF402121FF584140FFC4C0B7FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFE0DBDCFF5139
      39FF4B2D2DFFA7A19AFFF6F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF2
      F1FF5D4C4CFF402020FF402020FF7A6F6FFFF2F1EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFFFFE8E9E9FF97928FFF492C2CFF482B29FFADA9A9FFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF5F8F5FF6B5757FF4829
      29FFC1BDBEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF9387
      88FF402120FF6B5B29FF533727FF442A2AFFB0ADADFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCC7C5FF583C3BFF442929FFBFBC
      B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB9B8B5FF412222FF9A8D
      8EFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFC8C6C3FF4023
      23FF715D2AFFBDBD3FFFAEA83EFF4C3228FF442A2AFFB2B3AFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4CFCCFF4C312DFF543A
      3AFFECEAEAFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF7A6364FF503030FFEAE8
      E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDFF6D5152FF4020
      20FF573922FFB3AD3AFFC0C040FFA4A23EFF472F27FF462A29FFC2B7B2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA9E9FFF4020
      20FF9F8B8CFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F4F2FF4C3131FF766967FFFCFD
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECFCFFF402020FF7F63
      64FF664B4CFF573A22FFB2B03AFFC0C040FFA4A13EFF472D24FF452928FFC2BB
      B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F2FF5D41
      41FF553938FFF2F4F2FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9E5E5FF432424FF938282FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B8C8CFF402020FFC9C8
      C9FFEBEAEBFF674C4DFF593F23FFB2B13AFFC0BF40FFA29838FF472D21FF4D2B
      29FFC3C3B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9489
      89FF422323FFC7C7C4FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E3E3FF432424FF958383FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDFF6D5F5FFF402626FFF0F1
      F2FFFFFFFFFFE9E7E8FF674C4DFF5A4423FFB2B13AFFC0BF40FFA19638FF472C
      21FF4E302EFFC5C5BDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6BE
      BEFF402020FFAA9F9FFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F4F5FF48312DFF7F6965FFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF604646FF523330FFFDFD
      FDFFFFFFFFFFFFFFFFFFDEDFDAFF614845FF5B4623FFB3B13AFFC0BF40FF9895
      38FF432B21FF4F3130FFCFCCC9FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D7
      CDFF402321FF9B8A8BFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFFFF6F5A5AFF4E3434FFECEC
      EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF604646FF553533FFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFDBDCD6FF60453EFF5C4723FFB3B23AFFBFBF
      40FF8D9438FF422A21FF533535FFD6D0D2FFFEFEFFFFFFFFFFFFFFFFFFFFD0D7
      CEFF402323FF938687FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFB3AEAEFF402121FF9A92
      93FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFBFF685854FF442C26FFF3F6
      F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD8D1FF5C3E3BFF5D4723FFB5B4
      3BFFBFBF40FF8B9337FF422A21FF543637FFD7D2D3FFFEFEFFFFFFFFFFFFCBC5
      C5FF402020FFA99E9EFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFF4F5F5FF5C4748FF472B
      2BFFBFC0BCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF928481FF402020FFD3CF
      D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D6D0FF4E3838FF5D48
      23FFB6B63BFFC0C040FF8A8E37FF422421FF553737FFD8D4D5FFFEFEFFFF9F95
      95FF422221FFC6BDBBFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFD1CFCDFF4E30
      2FFF513530FFCBC8C0FFFFFFFFFFFFFFFFFFFFFFFFFFC4C0C1FF402020FF9186
      87FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1FF4B35
      35FF5C4723FFB8B83CFFC0C040FF888A37FF412320FF553D3DFFD4D6D8FF6250
      50FF4C3333FFEEEFF0FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFB8BC
      B5FF4B2B2BFF513433FFD1D0CBFFFFFFFFFFFFFFFFFFF4F8F4FF534441FF4A30
      30FFE3E6E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2
      D2FF4B3535FF5D4823FFB7B73CFFC0C040FF888037FF422321FF4B2B29FF4424
      22FF847C79FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFB7B3B3FF452B2BFF533635FFD1D0CCFFFFFFFFFFFEFEFEFFB5B3B3FF4020
      20FF776960FFF5F7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFD0D0D0FF4B3434FF5F4B24FFB7B63CFFBFBF40FF847B2DFF402120FF4527
      27FFD3D5D2FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFB4B1B1FF452B2BFF563938FFDBD7D8FFFFFFFFFFFDFDFDFF7864
      65FF412120FF8F7E7BFFF4F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFCECDCDFF4B3430FF614D24FFB3B13AFF735D28FF402020FF4020
      20FF958F8CFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFB2AFAFFF452A2AFF583B3BFFDCD9DAFFD9DADBFF5339
      39FF402121FF412121FF715E5BFFD6D1D1FFFCFCFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC7C4C1FF432A26FF4A3121FF432423FF8E8687FF5944
      44FF503737FFF2EFEFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFFB0ADADFF442929FF573A3AFF543C3DFF4325
      25FFA89D9BFF887777FF442525FF472828FF786363FFA89FA0FFCDC5C5FFD0CC
      CCFFCCC3C3FFA29898FF6D5252FF412323FF4E3230FFA9A1A0FFFAFBFBFF9F97
      93FF412222FFBFBDBAFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFAFABABFF432824FF402020FF968C
      8CFFFEFEFEFFFBFBFBFFC9BFBEFF725755FF462828FF402020FF402020FF4020
      20FF402020FF412020FF4A2F2FFF7E736FFFDAD9DAFFFEFEFFFFFFFFFFFFCECB
      CAFF402020FFA69999FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFAEA69FFF412121FF5A3D
      3DFFE1E3E4FFFEFEFFFFFFFFFFFFFCFCFCFFDEDCDBFFB1ACAAFF9E9390FF9B8C
      8DFFA39899FFC2B4B4FFEBE9EAFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DA
      CFFF402624FF9E8F8DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFAC9B97FF4020
      20FF5B4445FFE3E5E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
      CCFF402220FFA29494FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA596
      96FF412121FF5B4545FFE2E4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA8
      A9FF402020FFBBB6B7FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFA09393FF412222FF5F4848FFE4E4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFBFF6B5A
      5AFF4A3030FFEBE9E9FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFF9E9191FF422222FF634D4DFFEBE9E9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1ACA9FF4124
      24FF897E7EFFFEFEFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCFF9C8F8FFF422323FF6A5454FFE4E4E3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFC5C1BFFF4B2F2FFF543B
      3AFFE5E5E3FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFF9A8D8DFF422222FF533B3AFFB8A9A9FFEEEF
      EDFFFBFDFCFFFDFEFFFFF9FAF9FFE5E2E3FF968586FF472B29FF4E3331FFCCC5
      C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFAB9F9CFF4D3131FF402020FF4F37
      34FF725C5BFF7C6566FF67514FFF4B2B2BFF412121FF654C4CFFD4D0CEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E2E2FF999192FF644C
      4CFF4C2F2EFF452726FF553736FF746364FFB4ACACFFF5F4F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
      FFFFF0F4F1FFEBEEEBFFF5FAF7FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3E9F900CFC0BD00C1B5
      AB00D9D1D200BCB5C200C3B3D200CBBDD500CCC6C700C6C8B500C0C6A700CAD2
      B400C1C2B900CBC9CF00BAB4C700C2BDD200BDB7C200D1C9C900DBC8B900CFC1
      A400CDCBA200C9D6A800BDD5AD00BCCFB600C7C2C300C2AFC200D5BFDC00C7B7
      D600BCBDD100BCBDC700DDCBCA00FFFEF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7B0A000C7B0A000C7B0A000C7B0
      A000C7B0A000C7B0A000C7B0A000C7B0A000C7B0A000C7B0A000C7B0A000C3AC
      9C00B8A19100B69F8F00A38C7D007964550077615500755F5300766054007A65
      560080695A00856E5E008C73630092796900967D6D00A88E7E00BEA59500C7B0
      A000C6AF9F00C7B0A000C7B0A000C7B0A0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFFF00757281000B0500000A08
      00000000030000000F00000015000400110005000100070A0000020D00000009
      000000050000000F170000011400000017000000140000000E00000006000008
      010000140200000D0000000D0000000A00000002060009091900100014000B00
      0E00000009000001020027241C00D9D1C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3AB9900C3AB9900C3AB9900C3AB
      9900B79D8C00B0968500B3988400AB907C00AB907C00A78B7A00A18776009C82
      71009A806F00957D6B0092796900A68F7F00C0A99900C3AB9900C1AA9A00C1AA
      9A00C1AA9A00C0A99900AC9482009D837200A1877600CBB8B000F3F1F100AC91
      7D00AB907C00AC917D00AC907F00C1AA9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFFCFF0047545C0000030000000D
      05000014170000031200000016000400140009020900080C0600000600000008
      0000003C3F0000535E00004D5F000047630000456F000043710000416E000047
      6D0000496A0000425B00004A5800005D660000343E0000020B00090007001900
      0300050100000009000000090000BBD6BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDA59300BDA59300BDA59300BDA4
      9400BDA49400BAA39300BCA49200BDA59300BCA39300BBA29200BDA59300BDA4
      9400BDA49400BDA59300BCA49200BDA59300BDA59300BDA59300BDA59300BDA5
      9300BDA59300BDA59300BDA59300BDA59300EEEBE600F1F2F000FAFAFA00EBE3
      E400BCA39300BDA49400BDA49400BCA492000000000000000000000000000000
      000000000000FEFEFE000000000000000000FFFFFE00FFFEFE00000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE000000
      000000000000000000000000000000000000FFFFFE0000000000000000000000
      000000000000000000000000000000000000EAFDFF0042575900000600002454
      4E0053ACB0002B7E8D00000F2E00000014000000070000010100000203000E4E
      530043C8D6002FD3E60034CFE60042D5F50038C9F70046D1FF0048CDFF0045C2
      FC004EC5FD0046CCFC0029D3F5002ED9F1003AC5D50000414B00000008001603
      06000804000005120200000A0000A1CCB1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B79F8D00B79F8D00B79F8D00B79F
      8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F
      8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F8D00B79F
      8D00B79F8D00B79F8D00B79D8D00F1F3F400EFF0EE00FFFFFF00F5F5F500FDFD
      FD00B79D8F00B79F8D00B79F8D00B79F8D000000000000000000000000000000
      000000000000000000009F9FC40010006F00000000000000000000000000A6A6
      CD000E006A00F5F4F80008006900F1EDF0008B8ABE001C06710000000000433C
      94008C7DB2000000000008006B00C9C1D5000000000000000000000000000000
      000000000000000000000000000000000000EEFFFF00506B680000060100509F
      9C0055E1E7004FDAEA0000334C00000015000008110000000700000919001B61
      78003CD8F50013CDEC002AC7E8003FD4F6002DCCF2002FD1FB0030CBF90030C7
      FA0039CFFF002DD4FF0008D1F80001CEED0020D5EB0026A7BA00001E2F000000
      0A0009060F0000000000000A0500A7CBBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1988800B1988800B1988800B198
      8800B1988800B1988800B1988800B1988800B1988800B1988800B1988800B198
      8800B1988800B1988800B1988800B1988800B1998700B3998800B1998700B198
      8800B1988800B2998900B09A8800F1F1F100F6F6F600FCFCFC00FFFFFF00F6F6
      F600F0EBEC00B1988800B1988800B19888000000000000000000000000000000
      000000000000000000000000000000006B008F7FB400D7D5E300DDDDE6002317
      8C004C3594000000000000006500F7F2F100372F990000007100FAF4F400271F
      8F007D6BB1000000000000006800C5BBD4000000000000000000000000000000
      000000000000000000000000000000000000F2F7F50042555200000908003390
      93002BD0D9002BD8E800087A9100000E230000010B0000000A00000015000B52
      770024C9F00011CDF6001FACD1000B86A600098FA7000D91A8001890AD001E92
      B500158EB6000087AE00009CC20018C4E80020D0EE002DC8E2002991A8000016
      2A0000000E000000090000000400ADBDBC000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC948200AC948200AC948200AC94
      8200AC948200AC948200AC948200AC948200AC948200AC948200AC948200AC94
      8200AC948200AC948200AC938300AD938200FFFFFE00FEFEFE00FCFCFC00F9FA
      F800AD938300AF938200F1F1F100EEEEEE00F4F4F400F9F9F900FDFDFD00F7F7
      F700EAEDEB00AC948200AC948200AC9482000000000000000000000000000000
      000000000000FEFFFF00000000005653A70000007A0000006B00020074000000
      7900D1C7D900FCFFFF0000006700F0E9F100000071001E0B8800B0A3C9002F2A
      9500806EB2000000000000006900C6BCD5000000000000000000000000000000
      000000000000000000000000000000000000FFFDFC004F4F4F0000030700003C
      470029CEDF0018CDE2002EB8CE00000D1F0000000A0000000E0000001A002169
      930035D3FF0025D0FE00056F980000001C0000060D0000070400000307000001
      090000000D0000001400000B2A000041650052CFF50030CCEF0037D9F600006B
      8700000018000304180005000600CDC0C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF000080800000FF
      FF0000000000000000000080800000FFFF0000FFFF00000000000080800000FF
      FF00008080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A98F7E00A98F7E00A98F7E00A98F
      7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F7E00A98F
      7E00A98F7E00A98F7E00FCF9F400FFFFFF00FEFEFE00FBFBFB00F8F8F800F6F6
      F600F3F3F300F1F1F100EFF0EE00EDEDED00F1F2F000F5F5F500F9F9F900F5F5
      F500E3DFDE00A98F7E00A98F7E00A98F7E000000000000000000000000000000
      0000000000000000000000000000D0D5E60000006600000000008887C4001200
      730000000000F6FCFF0000006C00A9A1C700160078009B9CCC005E499F00352E
      96008070B2000000000000006900C7BDD5000000000000000000000000000000
      000000000000000000000000000000000000FFECEE007B6A6E0000000A000013
      250027B6D10023C9E60043D4EA00004B5E0000000A0000000C00000019001466
      8F0021C2EF0022C7F200116C91000000140000050200000800000C0100000C00
      00000004030000040D000000140000002100186A930053D8FD0015C1DD0039CD
      E500134D630000000A0006000100CEC3BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000080
      800000FFFF000000000000FFFF0000FFFF000000000000FFFF0000FFFF000080
      800000FFFF0000FFFF0000FFFF000080800000FFFF0000000000000000000000
      000000000000000000000000000000000000A3897800A48A7900A48A7900A48A
      7900A48A7900A48A7900A48A7900A48A7900A48A7900A48A7900A48A7900A48A
      7900A48A7900A3887A00FFFFFF00FEFEFE00FBFBFB00F8F8F800F6F6F600F3F3
      F300F1F1F100EEEFED00EDEEEC00ECECEC00EFEDED00F2F2F200F6F6F600F2F3
      F100F0EDE900A48A7900A48A7900A48A79000000000000000000000000000000
      00000000000000000000FEFEFE00000000000F0380009E91C20007007C009482
      B90000000000F7FBFF0000006F00524799006651A200EBF2F8000C0071003C2F
      9800806FB2000000000000006A00C6BDD5000000000000000000000000000000
      000000000000000000000000000000000000FFF8FE0070515A0000000B000001
      19000D6E92004AC9EF0046CFE9002D8FA10000000A0008000E00000016000267
      870025D1F5001DCAEB0016758F0000010E00000200000E0C0200020300000003
      0000000E0C0000020800080721000000190000082E001D77990059E0F40063DF
      EA001F565B000005000000130000B3C8A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000080800000FFFF000000000000FFFF000000000000FFFF000080800000FF
      FF00008080000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000009D7F6C009E836F00A0867500A086
      7500A0867500A08675009F877300A0867500A0867500A0867500A0867500A086
      7500A1897300FDFFFE00FEFEFE00FBFBFB00F8F8F800F6F6F600F3F3F300F1F1
      F100EEEFED00F0EBEC00A0877300A0867500A08675009F877500A0867500A087
      73009F8775009F8775009F8672009E806D000000000000000000000000000000
      00000000000000000000FEFFFF00000000009092C30003007E0000006D000000
      000000000000F8FBFE000000740007008100B2A5C80000000000050077000B00
      83008474B5000000000000006A00C7BCD4000000000000000000000000000000
      000000000000000000000000000000000000FFF7FF006F50590000000B000000
      16000038600056BFE80041D0EB0040B4C5000319250000000A0000011400006B
      820023D2ED0024CDE8001E7B9000000C18000002010000020000000502000031
      3100003C41000036440000314F00062E5100000C30000029460025808F003684
      8A00082B270000060000000B0000B2D3B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000080800000FFFF0000000000000000000080800000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF000080800000FFFF000000
      000000000000000000000000000000000000A0826F00A0826F00A0826F00A082
      6F00A0826F00A0826F009D8372009D8372009D8372009D8372009A8570009C83
      7300FCFEFF00FEFEFE00FAFAFA00F7F7F700F5F5F500F2F2F200F0F0F000EEEE
      EE00EFEDEC009D8372009D8372009E8473009E8473009F847000A0826F00A082
      6F00A0826F00A0826F00A0826F00A0826F000000000000000000000000000000
      0000000000000000000000000000000000000000000000005F005B4796000000
      000000000000F4F9FC000000600000006000FDFAFB00000000004E479C000000
      69007D6EAA000000000000005500C2B7CF000000000000000000000000000000
      000000000000000000000000000000000000FFF8FF0067525A0000010C000000
      12000002270041A3CB0029CEE7003ED4E5001A505B0000010A00000612000074
      84002AD2E9002CC8DF0010667A0000000D0000030600000203000452590045C0
      CE0030D0E8002FD8F70028C1E6004CCEF30043A5C30000192D0000010D000001
      04000200000016170E0000060000B0CDBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000080800000FFFF000080800000FFFF000000000000FFFF00008080000000
      00000080800000FFFF000080800000FFFF000080800000FFFF00008080000000
      000000000000000000000000000000000000A3867100A3867100A3867100A386
      7100A3867100A4867300A0867500A1877600A1877600A187760081F5FC00FFFF
      FF00FDFDFD00FAFAFA00F7F7F700F4F4F400F2F2F200F1F1F100EEEFED00ECEC
      EC00A0867600A1877600A1877600A1877600A1877600A1877600A3867100A386
      7100A3867100A3867100A3867100A38671000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF9FD005D565900000509000006
      140000001C001071950013C8E20026D8EB003D92A10000091400000712000068
      740030CDE10042D3EC0021758E00000B1D000000070000060C001068790052D7
      F30031D5FF0010CAFA0009CEFA0027DCFF0059E1FB000033440000000B000B00
      01000E000000170D0D0000000300BFC6C9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000000000000000000000000000FFFF000080
      800000FFFF0000FFFF0000FFFF000080800000FFFF0000FFFF0000FFFF000000
      000000000000000000000000000000000000A6887500A6887500A6887500A688
      7500A6887500A48A7900A48A7900A48A7900A48A7900A3897800AA897900FCFC
      FC00FAFAFA00F8F8F800F5F5F500F2F2F200F0F0F000EEEEEE00ECECEC00E2E0
      E000B3A09300A48A7900A48A7900A48A7900A58B7A00A78B7A00A6887500A688
      7500A6887500A6887500A6887500A68875000000000000000000000000000000
      000000000000000000000000000000000000FFFEFF0000000000FFFFFE00FFFE
      FD00FFFFFE000000000000000000F5F5F8008E8BC2002A299800000077000000
      6E00000053007878A00000000000FFFEFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00555A590000030000000D
      110000001500003B5C0008C6E3000DD1E9003FB0C40000102000000D1A000067
      76003FD0E60046D3EE0010698B000000190000000D0000000D00002B4800267B
      A8002994CE00008ECB0007C2F50000B9E10020C3DC00003E4E00000D1A00110B
      1600070006000C00070013000B00DFBDD5000000000000000000000000000000
      00000000000000FFFF000080800000FFFF00008080000000000000FFFF0000FF
      FF00000000000000000000808000000000000080800000000000008080000000
      00000080800000000000008080000000000000808000000000000000000000FF
      FF0000000000000000000000000000000000A88A7700A88A7700A88A7700A88A
      7700A88A7700A88E7D00A88E7D00A88E7D00A88E7D00A88E7D00A88E7D00F9F9
      F900F7F7F700F5F3F200F2F2F200EFEFEF00EDEDED00ECEDEB00ECECEC00E2E0
      E000E2E0E000A98F7E00A98F7E00A98F7E00A98F7E00A88E7D00A98F7E00A88A
      7700A88A7700A88A7700A88A7700A88A77000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACACD8002E2EAD0000009C000000B1000001BB000007BA000105
      AE000000930000005600B6B5D300000000000000000000000000000000000000
      000000000000000000000000000000000000F8FFFF00515B5500000500000007
      030000001000001B3A0016C4E80015CFF1003CB2CF0000112800000B1E000C65
      790040D1EA0030CCEA0000779E0000153700000F210000132700000F3100000D
      3D0000023E0000124C0000A2D40014D9FF002DD5ED0000455900000011000000
      0A00000007000C0009001E031300D7B4C8000000000000000000000000000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF00000000000080800000808000000000000080800000000000008080000000
      0000000000000080800000FFFF0000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000AB8D7A00AB8D7A00AB8D7A00AB8D
      7A00AB8D7A00AB918000AC928100AC928100AC928100AC928100AC928100AD91
      8000AB928200AC928100EFEFEF00EDEDED00ECECEC00ECECEC00ECECEC00E2E0
      E000E2E0E000DDDADC00AC928100AC928100AC928100AC928100AC928100AB8D
      7A00AB8D7A00AB8D7A00AB8D7A00AB8D7A000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FFFFFE00DDE0
      EF001729C5000116D400172EE2001A39E7000B31E400071FD3000520D700070E
      BF000207AF0000007B007272AE00000000000000000000000000000000000000
      000000000000000000000000000000000000F5FFFD00565B52000C0400000B02
      000000000C00001839002EB8E30031CCFA0050B7DE0000123300000019000B56
      700030CDE70015D4F50018CAF30002AAD30025CAE50021B9D20023A1C40030A8
      D2002AAEDD0015B1DC000BCBF00003C1DE0039CEE80000465E00000012000005
      1200000003000002000001040000BCBEB2000000000000000000000000000000
      00000000000000FFFF000080800000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      000000000000000000000080800000FFFF000080800000FFFF00008080000000
      000000000000000000000000000000000000AC8E7B00AC8E7B00AC8E7B00AC8E
      7B00AE948300AF958400AF958400AF958400AF958400AF958400AF958400AF95
      8400B0958100AE958100EDEDED00ECECEC00ECECEC00ECECEC00ECEDEB00E2E0
      E000E0E0E000F1F1F100BCA89D00BAA39300B3958200AF968200AF968200AC8E
      7B00AD8F7C00AD8F7C00AD8F7C00AD8F7C000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00EDEEF4001730
      D7005874FC007088FB005A79FA00345AF300123DEC000A2FEB000B1FDF000515
      D5000006BD00000084007D7EAF00000000000000000000000000000000000000
      000000000000000000000000000000000000F4FFF700565C51000E0900000701
      000000000B00002546003AABD60042C9F50041A6CC0000103100000320002869
      85004BD8F30015C8E7001FD1FA001BCFF80017CCEC0025CDEC0042CEF30056D7
      FE003DC6ED0038CFF40018C6E40033D5F10051CCE60000384F00000012000000
      0B00000003000006000000060000C0CEBC000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000808000000000000080800000000000008080000000
      0000008080000000000000FFFF000080800000FFFF0000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000AF917E00AF917E00AF917E00AF91
      7E00B4998500B4998500B4998500B59A8500F6F8F800C3B0A100F6F4F400EFF1
      F100F6F5F700EDEDED00ECECEC00ECECEC00ECECEC00ECECEC00ECEDEB00E1E1
      E100ECEDEB00EDEDED00E8E8E800E2E0E000E2E0E000E0E0E000BA9A8700B69A
      8900AE907D00AE907D00AE907D008B6C57000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C5FD7007C91
      FE00A1B0FE007D95FB005371FC001F43F5000C37F600092DF7000817DD00020E
      D0000000B50000007E00ADADC900000000000000000000000000000000000000
      000000000000000000000000000000000000FDFFF7004F584E00000501000007
      0C0000001200001F3D004BB7D60055D6F10039A7BF000021370000031A000033
      4C003FA0BA0042BDD9004BC9EC0035B7DC003FC2E30041BEDD0048B8DC004CB7
      DD0045B6DE003FB6DD003BBCDD004BC2DC003D97AF0000132800000011000200
      0A000A0007000A00040000000100C0C4C5000000000000000000000000000000
      0000008080000000000000000000000000000080800000FFFF00000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      000000000000000000000080800000FFFF000080800000FFFF00008080000000
      00000000000000000000000000000000000077583F00B0927F00AF917E00B59A
      8600B89D8900B89D8900B89D8900B99F8700F6F6F600F4F4F400F3F3F300FCFC
      FC00F1F1F100EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00EBEBEB00E9E9
      E900F1F1F100E9E9E900FBFBFB00F2F2F200E2E0E000E3E1E100B99D8C00B99D
      8C00AF917E00AF917E00A0816A00785940000000000000000000000000000000
      00000000000000000000000000000000000000000000BEC5E9003956F1009EAD
      FF008A9CFA004F6BFB002245F7001B41FA001941FC000D30FA00060DD2000203
      C5000202B30000007900D4D3DD00FDFEFB000000000000000000000000000000
      000000000000000000000000000000000000FFFFF500595A5100000003000008
      1700000019000023410039B2CC003DC7DE0043BDD30000142B00000018000000
      180000183000001C3600001D3B000024410000152F00001E3800001E3D000024
      480000224700002A4E0000224300001D380000182B000001110000000B000000
      0700040006000C01090004000400B9B7BD000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000080800000000000008080000000
      0000008080000000000000FFFF0000FFFF0000FFFF000080800000FFFF000000
      000000000000000000000000000000000000795A41007B5C4300B0927F00BCA0
      8F00BCA08F00BCA08F00BCA08F00F5F5F500F2F2F200F1F1F100FFFFFF00F7F7
      F700F4F4F400F1F1F100EFF0EE00ECECEC00ECECEC00ECECEC00E1E1E100EFEF
      EF00F7F7F700FAFAFA00EAEAEA00EEEEEE00FDFDFD00E2E0E000E0E0E000C7B1
      A500BEA38F00896A53007C5E45007A5C4300000000000000000000000000FEFE
      FE0000000000000000000000000000000000000000003042D100455FF300637B
      FC004B6AFD002448F8002148FA003155FA003452F8000E25DF000811DA000102
      BF000303B00000007400E2E2E400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF1006C5C55000D0005000000
      0F0000001C000014380031CAEB0032D9FA001FABCA0000103000000424000000
      1D000000180000081D000001180000091E0000081900000E1F00000118000000
      1B0000001D000003230000001D00000219000004140000081100001215000011
      100000020300000101000C090B00CFC9CA000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000080
      8000000000000080800000808000000000000080800000000000008080000000
      000000808000000000000000000000FFFF000080800000FFFF000000000000FF
      FF00000000000000000000000000000000007A5C43007D5F460081634800BFA4
      9000BEA69000F7F7F700F5F5F500F3F2F400F1F1F100FAFAFA00F3F3F300F2F2
      F200F6F7F500F2F2F200EFEFEF00EDEDED00ECECEC00ECECEC00E6E6E600F2F2
      F200F9F9F900E1E1E100F1F1F100FFFFFF00FAFAFA00FEFEFE00E2E2E200E0E0
      E000C8AA970082634A007F6047007C5D4400000000000000000000000000FEFE
      FE00000000000000000000000000F1F2F300DCD5C9002A29A5004064FF00405C
      F6002848F0002144F200395AFB005D79FB006480FF001E31E3000708CE000000
      BD000806A20000007600F8FAFB00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEF8006C5A5B0000000A003354
      6E003189AE000993BE0026D7FF0003B9E70030C4F3001187B6003791BA003E8F
      B20028859E00399CB0003190A3002E8D9C002988920031919E00298B9D003397
      AF002485A6003193B5002A8CAE003195B200329BB0002D96A30023898E002781
      8200246465000007090000000600BFBBC1000000000000000000000000000000
      0000000000000000000000FFFF000080800000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000000000000FFFF000000000000FFFF000000
      0000000000000000000000000000000000007B5C43007F604700CEAE9700D2B2
      9B00C0A79300D2C2B100F5F3F200FFFFFF00FEFEFE00FFFFFF00F9F9F900F9F9
      F900F7F7F700F3F3F300F1F2F000EDEDED00ECECEC00ECECEC00E7E7E700F4F4
      F400FBFBFB00FEFEFE00FFFFFF00E9E9E900F5F5F500E0E0E000E2E0E000E2E0
      E000E0E1DD0083654A00816249007C5E45000000000000000000000000000000
      000000000000000000000000000000000000D8A25300F5A340004447BD002440
      E7001632DC002649F6004C69F9008698FB008CA0FE003455F9000005CC000404
      B3000502A7000000800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEEF7005A5662000000150053BF
      DE0023CBF40005CBFF0000BAF90014CBFF0015ADF4003CCAFF0035CDFF002CD1
      F80024D7F20020D8EA0021D7E30027D9E40034E3ED0033DEEC0027D3E90032DB
      FA0027CAF1002DCAF6002EC7F4003CD8FF002CD1F20024CFE70030DDED004AE4
      EF005BCEDB00002B3B0000061A00B4B8D0000000000000000000000000000000
      000000000000000000000080800000FFFF000080800000FFFF00008080000000
      0000000000000000000000808000000000000080800000000000008080000000
      00000080800000FFFF000080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007D5F460080624700D0B09900D3B3
      9C00F3F5F500F1F1F100F3F1F000FFFFFF00FAFAFA00F3F3F300F7F7F700FBFB
      FB00F7F7F700F4F4F400F1F1F100EEEEEE00ECECEC00C6AC9B00E3E5E600F2F2
      F200FAFAFA00E0E0E000E8E8E800FCFCFC00FEFEFE00FFFFFF00E6E6E600E0DF
      E100DACEC400CDAD960083654A007F6146000000000000000000000000000000
      0000000000000000000000000000F8FBF600DC943300FFBB5C00E69A33005236
      7C000325CE001028D3004663F2008698F7009CAFFE003F5BF7000001C1000606
      B40002009C0000008300FFFFFB00FAFAF9000000000000000000000000000000
      000000000000000000000000000000000000FFFCFF004D545D00000212002492
      AC003BDAFE0023DBFF0013C6FF0010BDFF0020C3FF0039DFFF000ABCED0006B9
      E00031DDF90021D0E4001FD9E40024DDE70033DAE70027CBDE0018C7E10016CD
      EF001DD4FE0018CCFD0018C1F40016BBEC0023C7F1002CCCEE003CDAF20044CE
      E0004AB2C3000020320000031900B2B4CC000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF00008080000000000000FF
      FF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000080800000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007F604700C9A99200D1B19A00D5B6
      9D00DAB8A100F1EFEF00FFFFFE00FEFEFE00FFFFFF00FAFAFA00FCFCFC00FBFB
      FB00F7F7F700F4F4F400F1F1F100EEEEEE00E5E2DA00CCB09F00CCB19D00F3F1
      F100F8F8F800FCFCFC00FDFDFD00F6F6F600EFEFEF00DFDFDF00E3E1E100E2E0
      E000E0E0E000E2E0DF0085674C00816249000000000000000000000000000000
      0000000000000000000000000000EBE4D600EBA74D00FFC98000EDA74700B56C
      0600140B9A000121C5003655EA006F84F600859AFD003855F1000505C8000201
      B60000009E004748A50000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000F7FFF3004A5B4E00000A08000008
      1200003F5700004163001C91B80037CCF4000FC7EB0005C2E1000089A6000046
      630005516E0000435B00004F5D000048540000445A00003E5B00005D7C00007C
      A00025C5EF002DD1FE0029BFEE000B8DBC0000436E0000446900033C5B000B36
      4B000923330000000A0000000700C6BEC8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000080800000FF
      FF000080800000FFFF000000000000FFFF000080800000FFFF000000000000FF
      FF000080800000FFFF000080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000007F614600CEAE9700D3B39C00D6B6
      9F00F2F0F000F0EEED00F1F1F100FBFBFB00FFFFFF00F5F5F500EDEDED00F9F9
      F900F6F6F600F3F3F300F0F1EF00EDEBEA00D2B5A000CFB4A000CFB4A000D0B5
      A100F4F3F500FAFAFA00FAFAFA00F6F6F600EBEBEB00FAFAFA00FFFFFF00E2DF
      E100D2BAA400D1AE9A00CBAB9400816249000000000000000000000000000000
      0000000000000000000000000000F0F0E600E6A24A00FFD18F00EEA64A00B46A
      0700663725000000B2001333CF003351F4002F47EE001427DC000402C6000000
      B20000008D00F3F3F40000000000FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000EDFFF000495E4800000400001012
      12000000080000000F00002136002DA0B40025D9E50015DBE7000EBBCB00002F
      450000001B000000190000061C00000318000008230000001C0000002200000F
      33000089B10022C7F2003DD6FF001D9DC800000D350000052900000015000203
      1700020007000900030005000000CEC9C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000080
      800000FFFF000000000000FFFF000080800000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      00000000000000000000000000000000000081634800D0B09900D3B39C00F0F0
      F000EDEDED00FFFFFF00FFFFFF00F6F6F600FAFAFA00F8F8F800F7F7F700F6F6
      F600F4F4F400F2F2F200EDEEEC00D0B7A300D3B8A400D3B8A400D3B8A400D4B9
      A500D2B9A500F2F2F200F4F5F300EEEEEE00FFFFFF00F6F6F600E0E0E000E0E0
      E000DEE0E000E2DFE100CBAC950083654A000000000000000000000000000000
      0000000000000000000000000000F5FEFF00C3873600FCCC8600E9A54C00B670
      16008C4E0000341B53000208B90040319000563F7F00120DB8000E18CE000C0C
      A700CDCCDD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDFFF200475D4A00010E00000004
      000000010000000507000002090000262D0022B8B9001ADADA001EE1E8000DB0
      BF0000405F00001D430000244800003153000029470000345000002E4E00002C
      5000005D830000ABD40023D3FB002FCDF1002BA5C30000102900000011000009
      1200000001000002000000050000BFCABA000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000080800000FF
      FF0000808000000000000080800000FFFF000080800000FFFF00000000000000
      00000080800000FFFF000080800000FFFF000000000000000000000000000000
      000000000000000000000000000000000000CCAC9500D0B09900D4B49D00D7B8
      A300DDBBA300E3C1A400FDFFFF00FFFFFF00F6F6F600EDEDED00F6F7F500F4F4
      F400F2F3F100E5DFD400D5BCA800D5BCA800D5BCA800D5BCA800D5BCA800D5BC
      A800D5BCA800D5BBAA00ECECEC00E9E9E900E5E5E500F4F4F400FFFFFF00E1D5
      CB00D3B39C00D3BDAB00CBAC9500B79980000000000000000000000000000000
      00000000000000000000FEFFFF0000000000DDCFAF00DA882300F2AC5100C680
      2600A35C01008448000035186400B6630000ECB14400301771002945FF006571
      D70000000000F2F3F300ECEDEC00F9F9F9000000000000000000000000000000
      000000000000000000000000000000000000F7FDFC004F565300010702000002
      00000001000005050500000003000002080000484D0021BAC10027E1EC001DCD
      E4003BBAE0005EC6F5004CB5E60049B8E60046BFDF0040C7E3002FC1E40017BA
      E0000DC4EB0014D5FC0015D6F80019C6E6003EC7E10021809400001624000000
      0700000100000308000000060000AFC5B3000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF0000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCAD9600D0B09900D4B49D00E9DF
      D800FEFEFE00FFFFFF00F8F8F800F1F1F100F2F2F200F2F2F200F3F4F200F4F2
      F200DABFAB00DBC0AC00DABFAB00DABFAB00DABFAB00DABFAB00DABFAB00DABF
      AB00DABFAB00E5C6AD00E7C9AE00E0E0E000F6F6F600F0F0F000FFFFFF00FFFF
      FF00E2E0E000D0B09900CCAC9500C8A992000000000000000000000000000000
      00000000000000000000FEFFFF00FEFEFE0000000000DBC9A500AB600500CF8A
      2C00E19A3300683E2F0000009C00A3671E00F4C47C0030106C00203DFB000D2F
      E500EDF0F7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF3FF00614862000D000F000500
      08000000060006050E0007000B000000100000001600035D7B0032C0E30036DE
      FF0018BCF00026C6FF002EC9FF0032CAFF003AD0F80039D2F30031D3F60027D6
      FE0016D4FD0009D0F60007CEEF001DCDEB0053DBF5004FA8BD00001325000000
      0800020006000202020000080000B6D3CA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAAB9600EBEDEE00EEECEB00E9EB
      EB00FFFFFF00FAFAFA00F4F4F400F7F7F700EFEFEF00F0F0F000E1C3A800DEC3
      AF00DCC3AF00DDC4B000DDC4B000DDC4B000DDC4B000DDC4B000DDC4B000DCC3
      AF00E2C4AB00E5C7AC00E5C7AC00E6C5AB00F1F1F100FFFFFF00FBFBFB00E0E0
      E000E0DFE100E2E0E000CBAC9500C6AA92000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BEB4A100C87A
      1B00F7B25D004959D7000724D500A26C4F00ECC18F00893B0000461D50007870
      A9000000000000000000FEFEFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFF0FF006C4A6900190014001100
      0D0004000600020004000700060002000B0000001700000223000051770039C3
      ED0036D2FF0029C6F80024A9E200229DCF002CA9C80028A6BF0028A4C20027A8
      C9001DA7CB0016A5C5001BABC70032B6CD00349AAC001F63700000010A000206
      0B00070001000700000000010000B3BDB7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBAB9400E7DDD600D4B49D00D5B6
      9F00FDFDFD00F9F9F900FFFFFF00F2F2F200E3C3A600E4C3A900E2C0A800DDBE
      A500E0C7B300E2C7B300E2C7B300E0C7B300E0C7B300E0C7B300E0C7B300E1C2
      A900E3C1A900E2C4A900E2C4A900E2C3AA00E1C0A600FCF4ED00F5F8F600F4F4
      F400D5B39C00E2DFE100E2E0E000C8A992000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3DDD200B96E
      0B00DEBD82005E70DD0086A1FF00A47E7700E8BB8600CF882300EBAD5000BA76
      2C0081340000DDCEB60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF3FF00674D5B00150003001702
      0100120400000B02000007010000040001000000090000000F0000051B001B71
      890040A7C000136E89000008290000001900000E1B0000111900000E1C00000B
      1F0000081E0000071C000007170000091100000D0F0000080300000500000004
      00000E020000210A020026080300E4C1BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9AA9300CEAE9700D2B39A00FFFF
      FE00FCFCFC00FEFEFE00EEECEB00DFC0A700E1C0A600E1C0A600DEBFA600DDBB
      A300D9BAA100E4CBB700E6CBB700E6CBB700E6CBB700E6CBB700DEBEA700DDBE
      A500DFC1A600E2C0A800E2C1A700DFC1A600DDBEA500DDBBA300D7B99E00FEFE
      FE00E3E1E000CBAD9A00CBAB9400C7A891000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE00ECE2
      CE00F6E7CF007C95F500535CC600DAB59100C3967B000411C0006379DD00E4DD
      D500F3E7D100F1EFEA00F7F9F900FCFCFC000000000000000000000000000000
      000000000000000000000000000000000000FFF9FF006E656800070100000702
      00000E0700000E0700000D0900000C0704000B00080001000D0000000E000003
      120000050D0000060C00000007001A0C12000000010000010000020003000900
      06001000070015000B0014010A000A0203000002000006120600000D00000006
      0000090500001300000022000000EDC0C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8A99400CBAB9400FFFFFF00FAFF
      FD00E9ECEA00D8B9A000DDBBA300DCBDA400DDBEA500DCBEA300DBBCA300D9BA
      A100D7B89F00D4B49D00E8CFBB00E8CFBB00E8CFBB00D7B8A300D8B9A000DBBC
      A300DCBEA300DDBEA500DDBEA500DDBEA500DBBCA300D9BAA100D6B69F00D3B3
      9C00E5E4E600E2E0E000C8A99200C5A691000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFFFF00BD937A00C5884C00F4D3A2003B46BE000F2DE30094A4F600FFFF
      FE00FBFDFF00FAFAFB00F8F8F800FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000F4FFFF00A8B9B5004F6D6200405A
      4C00515B4E0055574B0055554F00554F500061505D00604D5E00655566005C5C
      6800244342003E5E530060635400514A3B005B5D5700525B58004E5656004D52
      5500514F55005850570062545A0064595B0054504F004B554F003D544C003F59
      530056686900565961007B6B7C00FFF4FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7A89100EEEBED00ECECEC00D0B1
      9A00D4B49D00D6B79E00D8B9A000DABBA200DABBA200D9BAA100D9BAA100D7B8
      9F00D5B69D00D3B39C00CFAF9800EBD2BE00D0B39E00D4B49D00D6B69F00D8B9
      A000DABBA200DBBCA300DBBCA300DABBA200D9BAA100D7B89F00D5B69D00D2B2
      9B00CFAF9800DFE1E100C8A99400C6A591000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0EDEC00BA874B00E8D7B300F3EFE3006E84F4002A45E9007F91DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAFFFD00E4FFFE00D5FFF400DAFF
      F500F3FFF700FDFFF800FFFFFE00FFFAFF00FFF9FF00FFF6FF00FFEBFC00FFF7
      FF00F4FFFC00F1FFF400FBFEE400FFFFED00FFFFF800F6FFFC00F3FFFF00F1FF
      FF00F8FEFF00FAF9FD00FFF7FD00FFFDFF00FFFEFF00F8FFFE00EAFFFF00E0FF
      FF00DCF9FE00E6F7FF00FDF7FF00FEEFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C5A69100C8A99200CDAD9600CFAE
      9A00D2B29B00D4B49D00D6B69F00D6B79E00D7B89F00D6B79E00D6B5A100D4B5
      9C00D3B39C00D0B09900CDAD9600D2B09200CFAE9A00D1B19A00D3B39C00D6B6
      9F00D8B9A000D8B9A000D7B89F00D8B9A000D7B89F00D5B59E00D2B29B00D0B0
      9900CDAD9600CAAA9300C7A89100C3A28E000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FE0000000000FCFFFF00FCFFFF0000000000FFFFFC00FBFDFA00FBFDFB00FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8CDCD00C8CCCD00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CCCC00C6CC
      CC00C6CCCC00C6CCCC00C6CCCC00BABEBE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F7F7F700F4F4F400F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F4F4F400F7F7F700FBFBFB00FEFEFE00000000000000
      000000000000000000000000000000000000DFECEE00D6E8EB00D7E8EB00D6E8
      EB00D7E8EB00D6E6E900D2E3E500D7E8EB00D7E8EB00D7E9EB00D7E8EB00D7E8
      EB00D7E8EB00D8E8EB00D7E8EB00D7E8EC00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00F7F7F700EAEAEA00DCDCDC00D3D3D300CFCFCF00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CFCFCF00D3D3D300DCDCDC00EAEAEA00F7F7F700FDFDFD000000
      000000000000000000000000000000000000DBEDEE00D7E7EC00D9E9E800919A
      9E0045474C00303035003D3D3D0065696900B8C3C700D7E9EA00D6E8EB00D7E8
      EB00D7E7EA00D7E8EB00D8E8EB00D7E8EB00D7E9EA00D7E8EB00D6E7EA00D7E8
      EB00D7E7ED00D7E9EB00D6E8E900D7E8EA00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F7F7F700E3E3E300B8B7B700908F8F00807F7E007B7B79007B7B
      79007B7B79007B7B79007B7B7900767678006A6A770064647800656579006565
      790065657900656579006A6A7B007B7B8400ACACAE00E1E1E100F7F7F700FEFE
      FE0000000000000000000000000000000000DDEDED00BCCBCE004B4F52003D3E
      42008182820089888B00757577003133350038383B00959E9E00D5E6E800D7E8
      EB00D8E8EB00D7E8EB00D8E8EB00D7E8EB00D7E8EA00D6E7EA00D7E8EB00D7E8
      EB00D7E9EC00D7E8EB00D7E8EC00D9E8EC00D7E7EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC3
      CD00333434003235350032353500323535003235350032353500323535003235
      3500323535003235350032353500323535003235350032353500323535003235
      350032353500323535003235350032353500323535003235350033343500355E
      6700000000000000000000000000000000000000000000000000000000003334
      3400323535003235350032353500323535003235350032353500323535003235
      3500323535003235350032353500323535003235350032353500323535003235
      3500323535003235350032353500323535003235350033343500355E6700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FBFBFB00E8E8E800ACACAB007A7977007E7B75008D89810098938B009994
      8B0099948B0099948B0099948B007B787F0043417B002A2A89002B2B8F002B2B
      8F002B2B8F002B2B8F002B2B850032327400504F6F009E9EA300E6E6E600FBFB
      FB0000000000000000000000000000000000DEEBEC0054565C003E3C3F00E7E7
      EF009C95F6005851F000A7A4F800DCDBE1002E2B2E003F3D3E00A7B0B200D4E7
      EA00D7E8EB00D7E8EB00D5E7EA00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D8E9
      EC00D8E5ED00D6E8EC00D7E9EA00D7E8EB00D7E8EA00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000F7F7F700C2C2C2007E7D7A00908B8100B1ACA000C0BAAD00C6C0B300C6C0
      B300C6C0B300C6C0B300C6C0B3009E999F00504F9C002E2EB4003030BC003030
      BC003030BC003030BC002F2FB7002B2BA900252588004F4F7300B5B5B700F7F7
      F70000000000000000000000000000000000B0BBBD0030303300DFDEDF006963
      F200241CEC00251CEB00261EEB007571F200B2B3B30026252800777A7C00D4E6
      E900D7E8EB00D6E8E900D7E8EB00D7E8EB00D7E8EB00D7E8EB00D6E7EA00D7E7
      EC0096A09F00D5E5EA00D7E8EB00D6E8EC00D7E9EC00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000F4F4F400A1A0A0008E8B8400C0BBAF00CBC6B900CBC6B900CBC6B900CBC6
      B900CBC6B900CBC6B900CBC6B900A19DA5005150A3002E2EBD003030C6003030
      C6003030C6003030C6003030C6003030C6002D2DBC002F2F890088889600F4F4
      F40000000000000000000000000000000000919B9C0055545A00E6E5F400241C
      EE00241CEB00231BED00221CED00251AEE00C6C8DF003131340066666700D6E7
      EA00D7E8EB00D4E8E900C4D1D400CCDCDF00D5E6E900D7E8EB00D7E8EB00CAD9
      E400514E7200C4D2D400D7E9E900D6E6EC00C9D8DB00D1E1E300D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FDFD
      FD00D5D5D50092928F00B6B2AB00DDD8CE00DFDAD000DFDAD000DFDAD000DFDA
      D000DFDAD000DFDAD000DFDAD000B4B0BA006665B7004848D4004B4BDE004B4B
      DE004B4BDE004B4BDE004B4BDE004B4BDE004B4BDC004343B80086869E00F4F4
      F4000000000000000000000000000000000093979D0056555800E2E1F600231C
      EC00251CEC00241CEB00251BED00241CEC00C7C5DD003230360064676700D5E6
      E900D7E7EB00D3E4EA00868CA30069696900888D8B00BDCBCD00D8E7EC0097A0
      E400332DBF00ABB6B700D6E8EB00CCD8DE006C6F7E00C2CFD900D7E8EA00D6E8
      EB00D7E8EB00D5E9EB00D7E8EA00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000DDDD
      DD009999990093918E00CBC8C200ECE8E000F2EEE800F4F1EA00F1EDE600EFEB
      E400EFEBE300EEEAE300EEEAE300C5C2CA008685C5007776E3007C7BEE007C7C
      EE007D7CEF007E7DF1008080F4007F7EF1007B7AEB006E6DCD009191A700F7F7
      F70000000000000000000000000000000000B3BFC10034343800E5E4E5005C57
      F100221DEA00231CEC00231EED006A63F200B5B5B700282729007D818400D9E7
      E900D7E8EB00CEE1EC004C47EB00342FBA004746800057546200767A7A005250
      D400261EE70081869800C1CFD0005D5D8600332CC700C2CEE000D8E8EA00D6E8
      EC00D7E8EB00D2E2E500CDDCE000BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      67000000000000000000000000000000000000000000000000009EC4CE002F3F
      430000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000B4B4
      B4008C8C8C0092919400BCBBBA00ECEAE400FAF9F500FEFEFB00FCFAF700FAF8
      F500F9F8F400F9F7F400F9F7F400DCDADF00B9B8DC00BDBCF300C5C4F800C6C5
      F900C7C6F900C9C8FB00C8C7FE00BCBAF900ABAAEA00908FBD00A4A4AC00FBFB
      FB0000000000000000000000000000000000DCE9EE004D50510041454500D9D7
      EA00453FED00231CEC00726BF100BDBDCB002D2D3100413E3E00B8C5C600D4E7
      EC00D7E8ED00D7E7ED00868CEB00251CEE00241CE9002A23D8003C38A0002820
      E200241DEA005350870059557F002A21DC003633D500C4D5DF00CCDBDE00ABB2
      B500818886006B6B6C00AFB9BB00BBC4C6000000000000000000000000009EC4
      CE002D44490000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF001D748900355E
      670000000000000000000000000000000000000000000000000086A6AF00222E
      310000AEDA0000C7F90000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000C4
      F50000C0F00000C7F90000CCFF0000CCFF0000CCFF0000CCFF0000C0F00000AE
      DA0000B5E20000C6F70000CCFF0000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A5A5
      A5009B9B9B009393A500A1A0B400D7D5D500F3F1EE00FCFBFA00FFFFFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAE9EB00E0DEE900F2F2FD00FAFAFF00FAFA
      FF00FBFBFF00FAF9FE00F3F1FA00E0DFEF00C0BFD2009C9CA400CFCFD000FEFE
      FE0000000000000000000000000000000000DFEDEF00B7C4C900424448006C6B
      6E005853EF00251CED009290E800424145003B393C009CA5A600CEDDEB00979F
      B40063657300696B6B006A6B7B002820E000231DEA00241CEC00231BEC00251C
      ED00231BED00332CC000241FE600221DEB003029CE0067666E00535065004C47
      7B0044408B00433EAF00BFCDE900BBC4C600000000000000000065656500222A
      2C000E1517000040500000576D000089AB0000BAE80000CCFF0000CCFF0000B4
      E10000576D00005A700000B5E20000CCFF0000CCFF0000B6E300005E7600003E
      4D0000769400008FB300004A5D0000576D0000A7D10000CCFF00186172001727
      2A003A3A3A000000000000000000000000000000000000000000222A2C000C10
      110000020300000C0F00003B4A000096BC0000C7F90000C7F900008DB0000025
      2E00001A2000000C0F0000BAE80000CCFF0000CCFF00006A8500001C23000034
      4100000F130000323E0000B7E50000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A5A5
      A500A5A5A500A1A1BC00B1B0CF00C5C5D000C1C2CA00D5D5D400E4E2DE00E5E3
      E100E5E3E100E5E3E100E5E3E100CECCCD00BFBDC900CDCCE000D3D3E700D3D3
      E700D3D3E700D1D0E500C9C8DA00B4B4BE009B9B9E00BDBDBD00F7F7F700FEFE
      FE0000000000000000000000000000000000DCEDEE00D8E7EA00ABB8BC005553
      56005852EF00241CEB008885DD00302E3200686B6A00D0E3E400CDDEEA004E4A
      EB00271EE900251FE5002F27CF002921DD00231CED00251CEB00251DEC00231C
      EC00221CED00251CEB00241BED00251DEC00271EE4002820E300261CE900291C
      ED00231CEB00979EEB00D7E7EB00BBC4C6000000000000000000040404004E62
      67001722250000678100005A710000283200001D2400008CAF0000CAFD000032
      3F00004C5F00004D600000495B0000CCFF0000BCEB0000101400005A70000066
      7F0000070900000E110000667F000035420000647D0000B6E40002080A001829
      2D005F5F5F00000000000000000000000000000000000000000015191B00FFFF
      FF00FFFFFF00CFCFCF0080808000000E1200002E390000374500000F13008080
      8000FFFFFF00003F4F000086A80000CCFF0000CCFF00001B22009F9F9F00FFFF
      FF00FFFFFF00003441000086A70000CCFF0000CCFF001D748900355E6700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A7A7
      A700ACACAC00B1B1C300BBBCDB00A8AFD2008E96B300A9ABB000B8B7B800B4B4
      C200A6AAC100AFABB200D1C1BA00D5CCC900CDCAD000D0C5D100CEB6C200C2A3
      B200B293A400A58E9F00A69CA800918E930085858500C7C7C700EDEDED00FAFA
      FA00FEFEFE00000000000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CED008985DD00302E3200686B6B00D1E2E500D7E8EB00D7E8
      EB00848AEB002822EA003630EE00B6B4F800C9C8F9008682F4003831ED00A09D
      F7009893F6003F38ED00231DEB00241BED002B23EC00534CF0003229ED00241D
      EB00787CE100D7E8EB00D7E8EB00BBC4C6000000000000000000020202000000
      0000E0E0E000D0D0D00000000000000000009F9F9F00030907001B534100040B
      0900BFBFBF00BFBFBF000715110026735A000F2E24000A1D1700000000000000
      0000010202000001010000000000133A2D000E2B22000F2E24000B1912000000
      000060606000000000000000000000000000000000000000000018201E000001
      00000717120011332800CFCFCF00EFEFEF001132270080808000EFEFEF00DFDF
      DF000A1D1700030A0800133A2D0007171200040E0B0001050400000000000000
      0000BFBFBF00133A2D0003080600040E0B00040D0A00060C0800192C1D00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A8A8
      A800B4B4B400B9BAC0009EA0BB008187B200888FAC00A6A8AF00A7A8AE009193
      AD00777CA40089859700C1AAA400E9D3CA00FCF1E800FFF3E600FAD7C700E2AC
      9F00BF8E8500B4968D00BBAFA400ACA69B0083807A008D8C8B00C9C9C900EEEE
      EE00FBFBFB00FEFEFE000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CEB008684DB00303031006B6A6B00D1E1E600CFE0E200BCC9
      CF00808589004A4581004841E600A09CF800625CF200DAD8FC00B7B5FA00C1BD
      F900D0CFFB008F8AF600251DEC00241DEC00B6B4F800F2F1FD00DBD7FB003430
      BF005D5A5B00959F9F00CDDCDE00B9C3C6000000000000000000020302000000
      00001A2912000101010000010000131F0D00F0F0F0008F8F8F00080E06000507
      0300BFBFBF00C0C0C000090F06002A431D0003050200CFCFCF00FEFEFE000000
      00000203010001010000000000001A29120010190B0003040300BFBFBF00C0C0
      C0001818180000000000000000000000000000000000000000006F9881002224
      2000080D06000101010010190B00CFCFCF00FFFFFF00EFEFEF00131F0D000406
      0200131E0D002B451E000D1509005F5F5F00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00EFEFEF00DFDFDF00BFBFBF00BFBFBF00BFBFBF008F8F8F0006090500FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AAAA
      AA00BBBBBB00B1B1BE008788AD00686E9E006E759B009D9FAC00A0A0AD007C7C
      9F006066940063698C00948C9400C8B0A800EAD3CA00FAF0E700FCE9DC00E8C5
      B800D3BAB200D7CEC500D2CDC100C4BEB100ACA69B00837F79008E8D8C00CCCC
      CC00F2F2F200FDFDFD000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00241BEB008884DE00312E33005D5D5D008387860062637D00413E
      9800312BC4002A21DD00241CEB003831EE00B3AFF900C1BDF900B5B3F700ABA6
      F700BEBDF9008985F400241BED003D36EE00E9E7FC004A43EF007470F3002B24
      DC003B36A7005253600075777800A9B0B2000000000000000000020302000000
      00001A4D0000164100002A7D0000091C0000174400000000000007150000030A
      0000BFBFBF00C0C0C000091C0000102F0000133A0000EFEFEF00205F00000000
      00000205000000010000000000001A4D0000040D0000101E0900000000000E19
      1B007373730000000000000000000000000000000000000000006F9881000E10
      0D0060606000DFDFDF00FFFFFF00A0A0A0001A4D0000EFEFEF00030A00001D57
      00003399000033990000040C000003090000194C0000194C0000194C0000194C
      0000194C0000194C0000194C0000194C0000194C00000306020000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ABAB
      AB00C2C2C200ADAEC600898AC100737AB9005363A000858EAB00A2A2BA008485
      BB006F76B4004D5D9900757D9900A99FA500C1ABAC00E0CBC200E4D5CD00E7DA
      D400F2ECE900F2EFEA00E4E0D600D2CDC100C4BEB100ACA69B0082807A009595
      9400DBDBDB00F9F9F9000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CEC008885DD002E30330051507F005754E200241DEB00251C
      EA00241CEB00221DEA00302AED004B45EE00DDDBFB006B67F3008882F500E7E6
      FC00FBFBFE004D48EF00231BED00433BEF00E5E4FC005952F100645DF100261E
      EC00241CEB002820E9008E96E600BBC4C6000000000000000000020302000000
      00001A4D0000164100003399000025700000040B000000000000174400000206
      0000BFBFBF00C0C0C00007150000050E0000EFEFEF001A4D00001A4D00000000
      000002050000000100000000000020600000133A0000EFEFEF008F8F8F00070D
      0E00E2E2E2000000000000000000000000000000000000000000638773000F12
      0E000D270000FFFFFF00103000000308000002060000C0C0C0008F8F8F000819
      000021630000226600000207000090909000FFFFFF00D0D0D000D0D0D000F0F0
      F000C0C0C000F0F0F000E0E0E000C0C0C000FFFFFF00C0C0C00000010000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ADAD
      AD00C8C8C800BBBBD700B6B6E100ADAFDD006675B8008492B500B3B3CF00B6B6
      E100AAACDA006171B3007785A900A7A6BD00B5ABBF00CAB7B100CEC2BC00EAE7
      E200FCFCFA00FCFBF900F2EFEA00E4E0D600D2CDC100C4BEB100A9A498008280
      7B00B4B4B400F6F6F6000000000000000000DEECEE00D7E8EB00AEBABE005554
      57005652EF00231CED008884DC002F2E32005F617700B5BFE500A2ABEB007276
      EA004642EB00231DED007873F200D4D2FC00DFDEFB008885F500E8E7FC008A87
      F400FDFDFF00645EF200241BED00231CED008883F300CAC6FC009693F600261E
      EC003D39E5008F99EA00BDCAEB00BBC4C6000000000000000000020302000000
      00001A4D00001641000033990000319400000001000000000000818181000205
      0000BFBFBF00C0C0C0000205000080808000DFDFDF00040B00001A4D00000000
      00000205000000010000000000000000000000000000000000007F7F7F000407
      0800D7D7D7000000000000000000000000000000000000000000131916000D0F
      0C000D260000BFBFBF00BFBFBF000D2600000D260000194C0000EFEFEF000D26
      00000D270000061300000611000000010000FFFFFF001643000016430000CFCF
      CF000D260000CFCFCF00205F00000D260000FFFFFF0000000000141D1200FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AEAE
      AE00CDCDCD00CDCEE000C8C9E800AFB6E1008694C900A8B1C700C4C4D600C6C7
      E600AEB5DF007F8EC2009AA3B900B5B5C700B6B7D500AAAAC100B3B2B900E0DE
      D700F4F2EC00FCFCFA00FCFBF900F3F0EA00E4E0D700D2CDC100C1BCAF00958F
      88009E9D9C00F5F5F5000000000000000000DEECED00D7E8EC00ADBABD005554
      57005853F100241CEC008985DE002F2F3200696B6B00D2E3E400D9E8EB00D4E8
      EB008386BB00241CEC002A22EC008D88F500948FF700352EEE006D68F200C9C6
      FB00BFBBFA004E49EF00B0ACF9005551EF00251BEC00241BEC00241CEB003832
      B4005B5C6000A2ABAE00D2E1E400B9C4C6000000000000000000020302000000
      00001A4D000016410000339900002C83000000010000000000001A4D00000205
      0000BFBFBF00BFBFBF00061300000000000013390000050E00001A4D00000000
      00000205000000010000000000001A4D0000000100000D180700F0F0F0001A2F
      34004848480000000000000000000000000000000000000000001C262100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F00091B000001040000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000203010031472B00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AFAF
      AF00D2D2D200DFE0E400D0D1E200BAC0DB00BCC3D600D0D2D700CCCCD300ACAD
      CA008B91BE00969DBB00B9BBC200BBBBC2009FA1BC008388B0009296AA00C0BF
      BD00E1DED800F4F2ED00FDFCFB00FCFBFA00F6F4F000E7E4DC00CFCABF00A29D
      9400A1A09E00F7F7F7000000000000000000DDECEE00D6E7EB00AFBAC1005554
      57005953F000241CEB008985DE002E2F3300696B6C00D0E2E500D8E7ED00A9B5
      C0002B25DB00261CEA00251CEE00241DEC00251BED00251DEB00251DEC002922
      ED00281FED005D57EF00B4AFF6007773F300261BED00241DEB00241CEF00251D
      EB003934AC005B56570084888700BBC4C6000000000000000000020302000000
      00001A4D00001641000031920000123700000D27000000000000103100000308
      0000BFBFBF00BFBFBF00AFAFAF00BFBFBF00030900000E2900001A4D00000000
      00000205000000010000000000001A4D00000E2B000004080300B0B0B000BFBF
      BF00141414000000000000000000000000000000000000000000030404000000
      000000000000000000001A4D0000DFDFDF0000000000000100008F8F8F007F7F
      7F000000000000000000143B0000030A00009F9F9F00030A0000102F0000BFBF
      BF00BFBFBF00BFBFBF007F7F7F00030900009F9F9F00040702002A3D2500FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000B0B0
      B000D6D6D600DDDDDD00C3C3C300B0B0B000B9B9B900D2D2D200C1C1CF009293
      B9007177A9007980A900AEB0BF00B2B2C0008889AD00696F9F006D749A009C9D
      A900C5C4BF00E1DED700F6F3EE00FEFDFB00FFFFFF00F5F3EF00DCD7CF00A3A1
      9A00B0AFAE00FBFBFB000000000000000000DEEDEE00D7E8EB00ADBBBD005354
      57005852F100251CEC008885DD002E2F3300696B6A00D3E2E500C6D4EB004D4B
      E1003A33EC003F3CEB004D4BEC004F4EEB002C23EC00231BED00241DED00241C
      EC00241DEB002820EE006966F0003730EE00241CEC00261CEC00241CED00231B
      ED00251CEA003B38C7009399B400AAB3B4000000000000000000020302000000
      00001A4D0000040D0000050E0000040B0000CFCFCF00EFEFEF00050F0000040D
      0000BFBFBF00DFDFDF00000000000D270000174600000F2E00001A4D00000000
      00000206000000010000000000001A4D0000040C000002030100CFCFCF00BFBF
      BF0013131300000000000000000000000000000000000000000007090800FFFF
      FF000D26000008190000040B0000EFEFEF001339000006110000010200000000
      0000FFFFFF000D26000012360000030A0000AFAFAF00CFCFCF00A0A0A000205F
      0000194C00005F5F5F00BFBFBF008F8F8F00BFBFBF00000000000F160D00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AFAF
      AF00D7D7D700D1D1D1009B9B9B008D8D8D0085858500BBBBBB00B9BAD3008F90
      C700787FBD005968A700929CB900B0B0C9008B8BC300747BB90050609D007F88
      A500B4B3B100BAB8B500D9D6CF00EFEDE800F6F5F200EFEDEA00CCC8C300A3A2
      A000D8D8D700FEFEFE000000000000000000DEECEE00D8E8EB00ADBABF005354
      56005851F000231BEC008985DD00302F310069696B00D0E2E500D7E8ED00DBE7
      EB00D7E8EB00D5E8EB00D8E8EB00B8C7ED002E27EB00231CEC00261FEB00241C
      EC00241CEB00261EEB00281CED00241CEC00221DED003934AE006F6FA300959E
      EA008084ED007374EC006C6CEC00BBC4C6000000000000000000020302000000
      0000DFDFDF00BFBFBF00BFBFBF0000000000EFEFEF00101A0B00121D0D000507
      0300BFBFBF00000000009F9F9F00070B05002E4920000F180B001A2912000000
      0000020301000001000000000000BFBFBF0080808000CFCFCF00000000001A2F
      340043434300000000000000000000000000000000000000000007090800FFFF
      FF00203316001A2912001A29120016231000192812001A2912001A2912001A29
      1200FFFFFF000D150900080D06007F7F7F00192812004040400090909000131E
      0E00BFBFBF00060A050000000000131E0E005F5F5F00BFBFBF0006090500FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ADAD
      AD00CDCDCD00C9C9C900A9A9A900B9B9B9008E8E8E00B4B4B400C4C4E000B9B9
      E400B0B2E0006A7ABD00909EC100BFBFDC00B9B9E500AEB0DE005F6FB2007D8B
      AE00B5B5B5009E9C9C00AAA8A700B5B5B100C0BDBB00B7B7B400ABAAA900CDCD
      CD00FAFAFA00000000000000000000000000DDEBEF00D7E8EB00ADBBBD005554
      56006E6CF200443DEE009593DD002F2E3300686B6B00D3E3E400D7E7EC00D5E8
      EC00D7E8EB00D8E7EC00D8E8EC00B6C1EC002922EB003B36ED00A8B2EA00423D
      EB00231BEC007678D500848BE9002D26EC00251BED00271FE10063647100D5E4
      EA00D7E8EB00D7E8EB00D7E8EB00BBC4C600000000000000000003030200C0C0
      C000C0C0C000C0C0C000C0C0C0001A271300070A05000C1108002D432100080C
      060090909000C0C0C000070B05001E2D1600344D2600121A0D00141D0E00C0C0
      C0000406030001020100C0C0C000C0C0C000C0C0C000A0A0A000181F0E00080E
      0F00CDCDCD000000000000000000000000000000000000000000090A0800C0C0
      C000C0C0C000C0C0C000C0C0C000DFDFDF00EFEFEF00C0C0C000C0C0C000C0C0
      C000C0C0C0000A0F0700070A05007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBFBF000C0F0700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000ABAB
      AB00C2C2C200C4C4C400B5B5B500A7A7A7009B9B9B00C8C8C800D7D8E900CED0
      EE00B6BDE7008E9CD000B5BED400D1D2E300CCCEED00B2B9E4008392C600A4AD
      C300BEBEBE00A8A8A800DCDCDC00BEBEBD00B8B7B700C1C1C000E1E1E100FDFD
      FD0000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00ACB6EB00332AEE00B2BEEA00D8E7EA006A6D
      EB00251EEB00A7B1D400D5E8EB00A8B1E9003D37EC00261DEB0047449700A4AE
      B100D7E8EA00D9E8EB00D7E8EB00BBC4C6000000000000000000504840000806
      0500160B0000160B00001A0D0000381C00008C460000CC660000CC6600007239
      0000231200002010000062310000C1600000CC66000083420000251200002110
      0000763B0000643200001D0E0000180C00001A0D0000140D0500211B13002C4E
      570000000000000000000000000000000000000000000000000041423C000706
      0500110800001209000001000000BFBFBF00663300000A050000150A0000150A
      0000150A000032190000562B00001C0E0000341A0000331A0000331A00004C26
      0000FFFFFF0041200000341A0000341A0000341A0000170F0600251D1400FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000AAAA
      AA00BEBEBE00C9C9C900C2C2C200BEBEBE00C5C5C500D8D8D800DDDEE500BEBF
      DD009AA0CF00ACB2D200D7D9E100DADBE200B8B9D700949AC800A3A9C900C9CB
      D300C4C4C400ABABAB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00A6B1EA00B3BEEB00D6E8EC00D7E8E900999F
      EB00322BE500C4D3D900D7E7EC00D5E8EC00C4D3EC00686BEB00504EE400B0BD
      C100D8E7EC00D6E9EB00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000291400000201000012090000964B0000CC660000CC66
      0000CC660000CC660000CC660000AA5500008B46000088440000864300000603
      00000D0600000F0800008A4500008A4500008D4600005B3917004D3D2A00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A9A9
      A900B9B9B900C1C1C100AEAEAE00A1A1A100ABABAB00C8C8C800C3C3D1009B9C
      C3007C82B6008991BC00C7C9D900CDCDDB009B9CC300797EB200838AB500BCBE
      CE00CACACA00ADADAD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D8E9EC00D7E9EB00D7E8EB00D5E8EB00BDCB
      EB00858BEB00D6E9EB00D8E9E900D7E8EB00D7E8EB00D9E8EB00929CEB00D4E4
      EB00D9E8EB00D6E8EC00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000AC560000A7540000C7640000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CB66
      0000C0600000C1600000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A8A8
      A800B2B2B200A9A9A9008D8D8D00929292007D7D7D00A4A4A400ADAEC7008C8D
      C500787FBE005E6DAD00A3ACCB00C2C2DC009495CD007B82C1005A6AA90099A2
      C100D0D0D000AEAEAE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D6E9EA00D6E9EB00D7E8EA00D9E8EA00D5E6
      EB00D0E1EB00D6E9EA00D4E7EA00D6E9EA00D8E7EB00D6E7EA00D8E8EB00DAE7
      ED00D5E8EB00D7E8EB00D7E8EC00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A7A7
      A700ADADAD00A3A3A3009F9F9F00C9C9C9008F8F8F0095959500B0B0CD00B5B5
      E100AEB0DE006878BB0093A1C500C5C5E100BDBDE800B2B4E2006676B800909E
      C300D4D4D400AFAFAF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D7E9EA00ADBABE005554
      5700FFFFFF00FFFFFF00E5E5E5002F2F3200686B6B00D2E2E500D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D8E8ED00D6E9EB00D7E8EB00D7E8
      EB00D7E9EA00D6E8EA00D8E7EB00D6E8EB00D7E8ED00D6E8EB00D6E7EB00D5E7
      EA00D8E9EB00D7E8EB00D8E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000A8A8
      A800A8A8A800A6A6A600A0A0A0009D9D9D0088888800A2A2A200BABBCD00C0C2
      E000ACB3DD008492C600AAB3C900C8C9DB00C7C9E700B0B7E1008A98CC00B7C0
      D600D2D2D200B1B1B10000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDEBEE00D7E7EC00ADBABE005454
      5600FFFFFF00FCFFFE00E5E5E5002E2F33006A6A6B00D1E1E600D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000B6B6
      B6009B9B9B00A8A8A800A5A5A500A1A1A100A5A5A500B7B7B700C0C1C500B8BA
      CB00A8AEC900ADB4C700C5C7CC00CCCDD100C2C4D500B1B7D200B9C0D300CCCE
      D200B8B8B800BCBCBC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBEBEE00D7E8EA00ADB9BD003D3B
      3E00DCDADB00FAFBFA00B5B4B500262729006E707000D3E3E600D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000C4B09E004439
      2D00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0050412E00355E
      67000000000000000000000000000000000000000000000000008C8E81003F37
      2F00CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000074491D0051402C00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000DEDE
      DE00A4A4A4009A9A9A00A5A5A500AAAAAA00ACACAC00AEAEAE00AFAFAF00B1B1
      B100B3B3B300B5B5B500B7B7B700B9B9B900BCBCBC00BFBFBF00BCBCBC00ACAC
      AC00ACACAC00DEDEDE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFECEE00D9E8EB00D6E7EA004D52
      57002724290025252800262328003A3D4100A3ACAD00D5E9EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000C3B09E003433
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300503C2A00365D
      67000000000000000000000000000000000000000000000000008B8E81003333
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300343333003433
      3300343333003433330034333300343333003433330034333300503F2D00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FDFD
      FD00DEDEDE00B8B8B800A8A8A800A6A6A600A6A6A600A6A6A600A6A6A600A7A7
      A700A7A7A700A7A7A700A8A8A800A8A8A800A9A9A900AAAAAA00ACACAC00BABA
      BA00DFDFDF00FDFDFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEECEE00D5E7EA00D4E8EB00CCDC
      DF00ABB8BC00A7B4B700ADB9BC00C9D9DB00D6E7EA00D8E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8EB00D7E8
      EB00D7E8EB00D7E8EB00D7E8EB00BBC4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0EDEF00D9EAEC00DBE9EC00DAE9
      EC00D8E9EC00D9E9EC00DAE9EB00DAE9EB00D8E9EC00D8EBEC00D9E9EC00D9E9
      EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9
      EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9EC00D9E9
      EC00D9E9EC00D9E9EC00D9E9EC00BBC6C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000F4F4F400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9C3C400B9C3C400B9C3C400B9C3
      C400B9C3C400B9C3C400B9C3C400BAC2C500B7C3C300B7C3C300B9C3C300BAC2
      C500BAC3C400BAC3C500B9C3C400B7C3C400B7C3C400BAC3C400B9C3C400B7C3
      C300B7C3C200BAC3C500B7C3C300BAC3C500B9C3C300BAC3C400B7C3C500B9C3
      C400B9C3C400BAC0C500B7C3C400B4BABA000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00F9F9F900F5F5F500F3F3
      F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F5F5
      F500F9F9F900FDFDFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECEC000000
      0000E4E4E400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D7EBEA00D7EAEB00DAEAED00D8E9EC00D0D6E300C6BD
      D600AE81B700A056A4009638960091238F0090238E00933797009F56A400AF80
      B900C5BED700D0D8E300DBE9EC00D8E9EC00D8E9EC00DAE9ED00D9EAED00DAE9
      EC00D8E9EC00D8E8EE00D9E9ED00BBC6C6000000000000000000000000000000
      00000000000000000000FEFEFE00F8F8F800E8E8E800D8D8D800D1D1D100D0D0
      D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D2D2
      D200D8D8D800E7E7E700F8F8F800FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00F1F1F100E8E8E800E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E4E4E400E4E4E400E5E5E500F2F2F20000000000000000000000
      0000000000000000000000000000000000000000000000000000C5C4C300FEFE
      FE00D9D9D800E4E3E300E4E3E300E4E3E300E4E3E300E4E3E300E4E3E300DDDD
      DD00D3D3D200C5C4C300B9B7B500B5B4B000B4B2AF00ABA9A500BAB9B700BDBC
      BB00C9C8C700F1F1F10000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D9E9EE00D7EAEB00D4DEE800B494BE0098449B009827
      98009A1F99009F1F9E00A31FA200A51FA300A41FA400A51FA200A01F9E009A1E
      98009828950097459B00B593BE00D4DEE800D8E9EB00D9EAED00D9E9EB00D7E9
      EC00D9E8EE00D8EAEB00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000F1F1F100CCCCCD00939398006B6C7A00616779005F68
      7E005F687E005F687E005F687E005F687E005F687E005F687E005F687E006268
      7C006B6C7A0092929700CACACB00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F200D1D1D100A5A4A00086857E007A786E00737266007372
      6600737266007372660073726600737266007372660073726600737266007372
      66007A786E0079776D007371650075726700B6B5B30000000000000000000000
      0000000000000000000000000000000000000000000000000000BEBDBB00C6C5
      C400C4C3C200BEBDBB00B5B3B000B1ADA900B4B0A900B4B1AA00B3B0A900B4AF
      A700A8A29B009F9A9000948D8300736D6400968F8700A89F90007D776E00413E
      3B00706D6800908C87009A979200A7A5A200ACAAA700AFADAA00B0AFAC00D8D8
      D80000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D9E9EC00D9E7EB00C3BED4009B559F008F1D8D009B1D9A00A51F
      A400AC20AC00B121AF00B520B400B421B500B620B600B220B500B220B200AD1F
      AD00A31FA4009A1E9A008F1E8F009A559E00C3BCD500D5E7EB00D9E9EB00D8EA
      ED00D7E9EC00D9E8EB00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000B7B7BA0057586C002B33570016265800263C79003754
      950037549500375495003754950037549500375495003754950037549500273E
      7C0017285C002A32570054546A00B5B5B8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBBBB800716E5E005F593E00574F2D00645C3500797045007970
      4500797045007970450079704500797045007970450079704500797045007970
      4500655C35005A522B006B623700645B330098968C0000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBBB800BCBA
      B800B1ACA500B1ADA400A6A097009E988C007B756D0076736700C8C1B600EEE6
      DA00EEE6DA00EEE6DA00F1E9DD00FBF3E700F6EEE200D5D0C700CCC3B400CCC3
      B400CAC1B200C7BEAF00C2B9AA00BBB2A300B3AA9B00706C6400494642007B76
      710098969100A3A29E00F9F9F90000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D9E9EE00B6A1C50090369100931B9200A11DA100AC20AB00B51F
      B500BA21BA00BD21BE00BF22BF00C022C000BF22C000BE21C000BE21BF00B920
      BA00B320B300AD1EAD00A11CA000921B91008F379100B7A2C400D9E8ED00DAE8
      ED00D9EAEB00D8E9EC00D7E9EC00BBC6C6000000000000000000000000000000
      000000000000000000008E909B00263267002A3F7D002C4683004C67A5006884
      C4006884C4006884C4006884C4006884C4006884C4006884C4006884C4004E69
      A7002E4885002C417F00263369008A8D99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009B9A91006B643C0082794C0081794C00A2996C00C6BD8F00C6BD
      8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD8F00C6BD
      8F00A29A6D008C835700A49C6E00918B6200A5A39A0000000000000000000000
      00000000000000000000000000000000000000000000DBDBDA0099948B00C2BB
      AF00EEE6DA00EEE6DA00EEE6DA00F0E8DC00FAF2E600F5EDE100E4DED200F6F3
      EE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00EBEBEB00E8E8EA00DDDDFF00E1E1
      FF00F2F2F400FCFCFC00FEFEFE00F3F3F200DBD5CB00CCC3B400CBC2B300C9C0
      B100C6BDAE00BCB3A400F4F4F40000000000D9E9EC00D8E9EC00D8E9EC00D9E9
      EC00D7E9EC00B69FC20085278400941B92009F1C9E00AD1EAC00B820B700BB21
      BE00C221C200C022C100C322C500C322C500C222C400C223C500C222C300C021
      C100BB21BD00B720B600AC1EAF00A01DA100901B930086248500B4A0C100D6E9
      EC00D8E9EB00DAE8ED00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000989CA700475D8F004E67A30047609B005D78B400738F
      CD00738FCD00738FCD00738FCD00738FCD00738FCD00738FCD00738FCD005F7A
      B60049639D00516AA600475F91009599A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A59D0091896500A59D73009A936800B1A97E00CBC29600CBC2
      9600CBC29600CBC29600CBC29600CBC29600CBC29600CBC29600CBC29600CBC2
      9600B2AA7F009B936900A1996E008B876400AAA9A20000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200CEC6BA00EEE6
      DA00F5F3EF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00D6CDD500C4C4FE009899D800FEFE
      FE00FEFEFE00FEFEFE00E9E9E900C1C4C400E6E5E500F2F2F200F5F5F500FCFC
      FC00E5E5E500BBBABA00FEFEFE0000000000D9E9EB00D8E9EC00D5EAEB00D9E9
      EC00C0B9D00088328A008E1B8E009C1C9E005810590062116100B21FB500BC23
      BF00C023C300C223C400C223C500C322C500C224C500C422C500C323C500BF23
      C200BE23C100BA20BC00B41FB600AB1EAD009F1C9F008F1B8F0087338A00C0B9
      CF00D8E9EE00D9E8ED00D9E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000A3A6AE004F608C005269A200536BA3006983BC007D99
      D4007D99D4007D99D4007D99D4007D99D4007D99D4007D99D4007D99D4006B85
      BE00556DA500546BA40050628E00A0A4AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADACA7008C856800A29B7300A19A7300B7B08800CEC69D00CEC6
      9D00CEC69D00CDC69C00CCC59B00CDC69C00CEC69D00CEC69D00CEC69D00CEC6
      9D00B8B18900A29B73009E976F0087826700B0B0AB0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200CDC6BB00EEE6
      DA00E9E2D800EBE4DB00EDE7DE00EFE9E100F1ECE400F2EEE700F3F0E900F7F4
      EF00FBFAF800FEFEFE00FEFEFE00FEFEFE00CACEFF00AFB7FF007B7ED400BCAC
      B300FEFEFE00DCDCDC00D3FFFF00A1FFFF0043DCFF00BFBEBE00DFDFDF00EAEA
      EA00F4F4F400FBFBFB000000000000000000D8E9EC00D8E9EB00D7EAEB00CDD2
      DF0088438D0088188700961B9A00981A9C001704170001000300310932008D1A
      8F00B920BC00C024C200C423C700C324C600C422C600C124C500C123C400C122
      C500BE22C100BB22BD00B620B800AF1FB500A71CA700971A9A00881987008942
      8C00CDD3DE00D7EBEC00D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000AEB0B60057648900576CA1005F75AA00738CC30086A2
      DB0086A2DB0086A2DB0086A2DB0086A2DB0086A2DB0086A2DB0086A2DB00748E
      C6006077AD00586DA30058668A00ACAFB4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B4B00088836C009F987400A7A07C00BDB69100D1CAA400D1CA
      A400D1CAA400C2BB9600B1AB8600C1BA9500D1CAA400D1CAA400D1CAA400D1CA
      A400BDB69100A7A07C009C95710085816B00B8B7B40000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D4CCC000EEE6
      DA00E0D9CF00E1DACF00E2DBD000E3DCD100E4DDD200E5DED300E5DFD400E6E0
      D500E8E2D700E9E4DA00EBE6DD00EDE8E000A3A8FF009BA3FF004145CC00A099
      A000EDEDED00F6F6F600C9FFFF007DFFFF0027DDFE00ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00D7E9EE00D7EBEA00A684
      B0007E157E00911993009F1BA200A81DAC0088188C001F061F00010001000C03
      0C00470C4900A51DA600C123C400C125C500C123C400C123C400C024C300BF22
      C300BD22C200BA21BE00B721BB00B020B500A91CAD009F1AA200901891007D18
      7C00A584AF00DAE9EC00D7E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000B8B9BD00606C89005E71A3006C81B4007D96CC008DA8
      E0008DA8E0008DA8E0008CA7DF008CA7DF008DA8E0008DA8E0008DA8E0007E98
      CF006D82B6005F71A400616C8B00B7B9BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBA00888470009D977700ADA68600C3BC9A00D5CEAB00D5CE
      AB00CBC4A100ADA6850098927300AAA48300C9C29F00D5CEAB00D5CEAB00D5CE
      AB00C3BC9A00ADA686009C95750087847100C1C0BE0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D5CCBF00EFE7
      DB00D9D2C700DAD3C800DBD4C900DCD5CA00DCD5CB00DDD6CB00DED7CC00DFD8
      CD00E0D9CE00E1DACF00E1DBD000E2DCD1009A9BFF007878EF007578DA009E98
      9D000000000000000000B2FEFE0063FEFE0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D7EAEB00D7E9ED00D2DDE5008638
      88008516860097199900A01CA500AC1DAF00B21FB5009D1DA000360A37000402
      030000000000150516006E147000B020B300BF22C300C023C500BF24C300BD24
      C200BC22C200B521BA009C1C9F00A71EAB00AB1DB100A41CA600981999008516
      850086388700D3DEE500D9E9ED00BBC6C6000000000000000000000000000000
      00000000000000000000C5C6C8006E758E006879A8007D92C4008BA6DC0092AE
      E40092AEE40087A2D800718CC1007692C7008DA8DE0092AEE40092AEE4008CA6
      DD007D93C5006879A8006B748D00C3C4C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C7C5008B8878009F997D00B9B39500CFC9A900D8D2B200D3CD
      AD00B6B19200A5A08500ACA89200A49F8600B2AC8D00D0CAAA00D8D2B200D8D2
      B200CFC9A900B9B395009F997D008B897A00CACAC90000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D5CCBF00F3EB
      DF00CBC5BA00D4CDC200D5CEC300D6CFC400D6CFC400D7D0C500D8D1C600D8D1
      C600D9D2C700DAD3C800DAD4C900DBD4C9009A9BFF00595FDE004349CD009E98
      9D000000000000000000A8F4F40063FEFE0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8E8EE00D9E9EC00AC93B6007A16
      7A008C188C009B199E00A61BA900AB1EAF00B21FB500B521BB00AB1FAF005A0F
      5C0007020600010001000601060029072A0082188400BA22BF00BD23C200BE23
      C200BD23C200951C9800150316007F168300AE1DB000A61BA9009A199D008D18
      8E007C157900AA93B500D8E9EC00BBC6C6000000000000000000000000000000
      00000000000000000000D1D1D200798094007080AD00889FD10098B3E80098B3
      E8008BA5DA006F89BB00617AAB00637DAE007791C40090ABDF0098B3E80098B3
      E800889FD1006F80AD00797F9300D0D0D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3D3D200908F8300A19C8300C3BEA300DAD5B700DAD4B700C1BB
      9F00A7A28600AEAB9A00B1B2B100ABAA9E00A8A28600BBB69900D7D2B400DCD6
      B900DAD5B700C4BFA300A19D8300918F8400D5D5D40000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D5CCBE00E5DD
      D100E0D9CE00CFC8BE00CFC9BE00D0C9BF00D1CABF00D1CAC000D2CBC000D2CC
      C100D3CCC100D4CDC200D4CEC300D5CEC3009A9BFF005464DF005462D4009E98
      9D0000000000000000009BE7E7007AFFFF0037E4FF00ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00D5E3E900854488008013
      7E00911792009D189F00A81BA900AD1FB100B21FB700B420BA00BA22BF00BD22
      C2006D14700012031200010101000200000005000500480E4800A21EA600BC23
      C100BB24C100A71FAC00050105005E126000AD1EB100A81BA9009E19A0009117
      920080157D0087438900D4E3E800BBC6C6000000000000000000000000000000
      00000000000000000000DDDEDE00858999007688B5008DA6D8009DB8EC008EA8
      DB00738BBB007087B4007589B5007085B1006E85B4007992C30093AEE0009EB9
      EC008EA7D8007688B500858A9900DDDDDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1E1E10097968E00A6A18A00C9C4AB00DFDAC000CBC6AB00A9A4
      8A00B4AF9500B7B7B100959BB300ABADB100B7B39A00A7A28800C4BFA400DDD8
      BE00DFDAC000CAC5AC00A6A28B0097968E00E1E1E10000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D6CDBF00D3CB
      BF00EEE6DA00C9C3B900CAC4BA00CBC4BA00CBC5BB00CCC5BB00CCC6BC00CDC7
      BC00CEC7BD00CEC8BD00CFC8BE00D0C9BE009A9BFE003737CF004044CC009E98
      9D00000000000000000096E1E1006CFEFE0024E0FF00ABACAC00000000000000
      000000000000000000000000000000000000D8EAED00CBCCDB00781E76008414
      8100961693009F19A1008C179000A11BA400B320B600B721BB00B922BD00BB22
      BF00BA23BF009A1C9E002306240000000100000000000301030023072400A21F
      A600BC22C100B31FB900250827002F083000AC1DB000A71BA900A119A1009416
      940086138300771F7300CACCD900BBC6C6000000000000000000000000000000
      00000000000000000000EDEDED009193A0007C8FBC0096B0E30096B0E1007B92
      C0007D92BD008699C1007584AA007A8AB0008599C200788EB9007F97C50099B3
      E40097B1E4007D90BD008F93A000EBEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF009E9D9700ACA89300D3CFB700E1DDC500C7C2AA00B0AC
      9400C5C0A900AFB1B700808AB2009CA2B700BFBDAF00B2AD9500BCB7A000DCD7
      C000E3DEC700D5D0B900ADA994009D9D9700EEEEEE0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200D8CFC100DAD0
      C300EEE6DA00C4BEB400C4BEB500C5BFB600C6C0B600C6C0B700C7C1B700C8C1
      B800C8C2B800C9C3B900CAC3B900CAC4BA009A9BFF003636CE00000094009E98
      9D0000000000000000009DE8E80062FDFD0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000DAE9ED00BEB9CD00781975008713
      8400961594009A17980021061E002506260077147800AC1EAD00BB21BE00BC23
      BF00AC1FAF0075157A001B061B00020000000101000001010000020100004D0D
      4F00BA22BD00B822BB00440C47000E030D00A41CA200A81AA900A318A1009715
      940086138400771A7400BFB9CD00BBC6C6000000000000000000000000000000
      00000000000000000000F8F8F8009CA0A8007286AD008BA5D60090A9D700859B
      C5008DA0C7008393B7008793B6008693B6008797BC008DA0C6008196C00090A9
      D7008CA5D6007386AE009CA0A900F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00A5A4A000ABA89600D6D2BE00D9D5C000C7C3AD00BAB5
      9F00BDBAA9009FA4B5008490BD00909ABE00B1B2B400C2BDA700BCB8A200D0CC
      B700E1DDC900DAD6C200ADAA9700A4A39F00FAFAFA0000000000000000000000
      00000000000000000000000000000000000000000000D4CDC200DAD1C300DCD2
      C500F2EADE00B6B0A700BEB8AF00BFB9B000C0BAB000C1BAB100C1BBB200C2BC
      B300C3BDB300C3BDB400C4BEB500C5BFB500A5ACFF004B57D90000009F009E98
      9D000000000000000000A9F3F30067FFFF0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8E8ED00B7AAC5007B1575008812
      84009514930096159400490B490007010600090109002D092C007C167E007014
      7200270727000401040000000000020000000101000001000000020100000802
      090086178700B420B800450D46000200020075137400A51BA500A2189F009A15
      9400881284007A147400B7AAC500BBC6C6000000000000000000000000000000
      00000000000000000000FDFDFD00C4C5C8007B869D007086AF008095BE008699
      BF007B8BAF007E8BAD009DA9CB0096A2C4007A88AA008393B6008A9CC0007F95
      BC007085AE007B869D00C4C5C800FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B9B8B7009C998C00B7B3A100B4AF9C00ADA89400B7B3
      9E00B7B6B000969EB900929ECC00909CC800A1A6B700C2BFB100B3AF9A00B2AE
      9A00BFBBA900BCB8A6009E9B8E00B8B7B5000000000000000000000000000000
      00000000000000000000000000000000000000000000D4CDC300DCD3C500DED3
      C700DBD3C700EEE6DA00B6AFA500B7B0A600B8B1A700B9B2A900BAB3AA00BBB5
      AB00BCB6AC00BDB7AD00BEB8AE00BFB8AF009A9BFF003636D20000009E00B4A1
      AA000000000000000000ACF8F80063FFFF0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00B6A1C000781071008913
      840097149100A2179D00A419A400741272002106200002010300030103000300
      02000301020010030F003C0B3B005F1261000A020A0001000000000003000101
      0000130411004B0D4D0001000200180417008A168800A619A500A1179E009714
      93008913840077117200B4A1C000BBC6C6000000000000000000000000000000
      00000000000000000000FEFEFE00F3F3F300C5C6C9009BA0AA007E889C005E75
      99005B6F98007984A9008A94BA008A94B900747FA500586E9B00526F9D006D7D
      9700979DA800C5C7CA00F3F3F300FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3E3E300AFAEAC009A98910097938800A09C8B00B7B3
      9F00A2A4AA007983AA007985B5007783B3007D86A900A7A8AA00AFAC99009D9A
      8B009A988D009B989100AFAEAB00E4E3E3000000000000000000000000000000
      00000000000000000000000000000000000000000000D6CFC500DFD6C800E1D6
      CA00E1D8CB00EEE6DA009B948900ADA59A00AEA69B00AFA89D00B0A99E00B2AA
      A000B3ACA100B4ADA200B5AEA400B6AFA5009697FB002F2FCA0000009800B19F
      A800D1D1D00000000000B1FDFD0063FFFF0020DFFF00ABACAC00000000000000
      000000000000000000000000000000000000D8EAEB00B3A1BF00781071008711
      8100961390009E169A00A618A200A919A8009B189A00520D5200080208000101
      0000490D49009A1C9B00B720B700B820B9003107310001010000000100000100
      020000000100000101001F0521008E178C00AB1AA700A418A1009F169A009513
      8D008812820078107000B4A1C000BBC6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D2D40074879E00365C
      93004E669C008790B900929AC300929AC300858EB8004F659B00254D8E00526E
      9400BDC1C600FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F000D4D4D400BCBCBA00ABABA7009797
      94007D829E00707BAC00727EB100727EB100707BAC007B819D0094949500B0AF
      AC00BFBFBD00D5D5D500F0F0F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D1C800E1D9CC00E3DA
      CE00E3DCCF00E4DCD000EEE6DA00968D8200A49C8F00A59D9000A69E9200A79F
      9300A9A19500AAA29600ABA39700ACA499006C6DD1002535AE0000006D00AC9A
      A200B2ABA000BCBCBA00B3FFFF006DFAFF0020DEFE00ABACAC00000000000000
      000000000000000000000000000000000000D8E8EE00B9AAC50072126F008311
      7D0090128C009A1595009E169A00A61BA400AC1BA800AD1CAE00851686009819
      9700B81FB800B920BD00BB21BD00BB21BD0089188B0009020900000101000201
      0200000000002806270094189200A91CA900A51CA3009F159B009A1496009012
      8C0082107C0076126F00B7A9C400BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000EDEDED008B98A8003667A4003160
      A4006B80B300A0A8D2009CA4D0009BA3CF009DA5D0007C86B700385A9B002256
      9D007A8CA300E8E8E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDCDC008A8E
      9E007C86B3008D99CC0094A0D300939FD2008A96CA007882B100898C9E00DEDE
      DF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D4CD00E3DCD000E5DD
      D200E6DFD400E7E1D600F3EBDF00EEE6DA00D5CDC1009B9284009E9487009F95
      88009F968900A0988A00A29A8D00A0998C0086817600EEE6DA00C4BFB500C9C4
      BB00BFBAAF00AFA89C007BC7C70022C6C6000082A700ABACAC00000000000000
      000000000000000000000000000000000000D8E9EC00BFB8CB0070186C00800F
      79008A12850093138E0096179600A01E9E00A31BA400A51AA700AA1CAC00AF1E
      B000B21EB400B51FB700B51FB700B720B600B31FB7002D082C00010201000000
      01002A082A008E179000A61AA600A31EA300A01D9F0099159500931390008A13
      86007E0F780071186C00BFB8CD00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000C8CBCE005E7BA0003B74BB00547C
      B80093A2CC00AFB7DD00A3ABD500A1A9D300A8B0D8009FA7D1005872AA002A5E
      A40055759E00C0C3C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00B0B2B8007B84
      A800919DD0009FABDC00A1ADDF009FABDE0098A4D8008894CA00747DA500ABAD
      B400FCFCFC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBD7D100E6DFD400E8E0
      D600E9E2D800EAE4DA00ECE5DC00EEE6DA00FFF9ED00EEE6DA00EEE6DA00EEE6
      DA00EEE6DA00EEE6DA00EEE6DA00F0E8DC00FFF7EB00D0CAC100BBB6AE00B8B3
      AA00BDB8B000C1BDB400C6C1B800C9C4BB00CCC7BD00CDC8BE00CDC8BE00CAC5
      BC00BAB7AF00B7B7B5000000000000000000D8E9EC00C8CCD800701A6D00790E
      7300841080008E118900971C95009E249C009F1D9F00A21AA100A51CA500AA1B
      A900AB1DAD00B01CB100AF1FB100AE1DAF006C136F0007020600000001003108
      30004C0C4B0018041900530F52009A1F9A009E269C00941692008D118B008310
      7D00790E74006F1A6D00C8CCD800BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000ACB2B9005276A3004379BC006F91
      C500B4BEE100BFC7E700B3BBDF00B0B8DD00B5BDE100AFB7DD007288B9003B6A
      AA00436DA200A6ADB60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000979BA700838F
      BE009DA9DA00A6B2E1009DA9DB009EAADC00A0ACDD00909CD2007883B8009093
      A400ECECEC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDAD600E8E2DB00E9E3
      DC00E9E3DD00EBE6DF00EEE9E100F0EBE300F0EBE400EBE8E400EBE7E200EDE7
      DE00EDE8E100F0EEEB00F2F2F200F4F4F4009495C2008E8EFE006264B600BDBD
      BD00E1E1E100ECECEC00F9F9F900FFFFFF00F9F9F900D4D3D000BBB5AE00B3AD
      A400B9B5AC00BAB6AC00FBFBFB0000000000D9E9EC00D4E2E9007D407F00710E
      6D007F107B0086118400972392009D2E9C009C239B009D1A9D009F1AA000A219
      A300A51BA700A71BA800AB1CAB008616880012031200010002003A0939007814
      7800030103000100010009030A007E217C009E2E9C008F168D00871084008010
      7B00700E6C007E408000D5E3E800BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000A2A9B200537AA8004879B7007E9B
      C900C8D0ED00C9D1ED00BCC4E400B8C0E200BCC4E500B6BEE2008094C0004A75
      B000406EA80099A3AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9DADB008F94A7009BA7
      D300AEBAE500A9B5E1009FABDB00A5B1E000A7B3E1009EAADC008995C900848A
      A000D4D4D6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDBDA00E9E4E500E7E2
      E700E7E3E900ECE8E900F0ECE800F4F0EB00F4F0EA00EAE6E000B3B3B300F4F1
      EB00F5F1EB00F4F1EC00F5F3ED00F6F5F4009A9BFF00A2ADFF003D42C900C2B3
      BA00FEFEFE00FEFEFE00B3FFFF0070FFFF001FDEFF00C9C9C900F5F5F500F1F1
      F100D9D9D900E8E8E800F9F9F90000000000D8EAEB00D8E9EC00A791B1006B0F
      6700780F730082107E0091248E00A03B9F009E2E9D009A2099009B1A99009E1A
      9C00A0199F00A419A1009117900020052000050103003B0939009D199C008213
      8000040104000000000011040F00862F86009F389D008B15880080107E00780E
      73006C0F6800A891B100D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000A0A7B000577BA8004C78B0007891
      BD00B8C0DE00BCC4E100C6CEEA00C1C9E700ADB5D800A1A9D1007588B6004D76
      AF004372AA0096A1AE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBEC000848DA400AAB6
      DF00B1BDE700A3AFDA00A9B5E000ADB9E500A2AEDD00A2AEDE00939FD1007680
      9C00B9BABE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDCE000E4E1ED00DCD9
      F400DDDAF700E7E4F400EFEDEF00F2F0EE00F6F4F000E7E5E100B0B0B000F6F3
      EF00F6F3EF00F5F3EE00F5F2EE00F5F2EE00B6B6F400FFFFFF009EA0D9009F98
      9F00EAEAEA00E7E7E700B0FCFC0058FDFD0017D5FF00AEAFAF00E8E8E800EFEF
      EF00F5F5F500FCFCFC000000000000000000D9E8ED00D7E9EC00D2DBE6007932
      7700700D6C007C0E780086198200A34AA200A444A3009E2F9A009A2097009819
      97009A179700971498003307310005010400460B4700951593009B169C009716
      96005F115D00360E36006F276D00A54BA4009E3B9C00821280007D0F78006F0E
      6A0078327800D3DDE700D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000A4A9B1005B7DA500507AB000728B
      B700A6AECF00B0B8D700C8D0EB00C3CBE700A1A9CE008D96C000687EAE004E78
      B0004D75A9009EA7B10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A5A80076839C00A4B0
      D900A3AFDA009CA8D400ADB9E200ABB7E20094A0D000909CCF008995C7006976
      9400A4A6AB000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDCE400E1DFF4007E79
      9E00A9A6D600DCDAFF00EAE9F800F2F1F300F5F4F300E2E1DE0090909000F7F5
      F300F7F5F300F7F5F300F7F5F200F7F5F200F1F1FF00E7E7E700E6E6E8009E98
      9D000000000000000000BAD1D200A9D3D900A7C0C500ABACAC00000000000000
      000000000000000000000000000000000000D9E9EC00D8E8ED00D7EBEC009E80
      A500680C6500720E700080117C00A2479E00B15FAE00A94BA5009F359B009B24
      9700981A9300520B4F0009010800450A45009215910099179500971A9400991E
      97009B299900A43DA000AC57A900AF5FAB00942F8E007D0E7A00740C7000680E
      64009D7FA700D7E9EB00D9E9ED00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000ACB0B600617DA0005581B8007795
      C200B5C0DD00CAD2EB00D4DCF400CFD7F000BBC3E100A1ACD000718CB8005580
      B6005779A400ABB1B80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989DA0006A7A9200A3B0
      D400B4C0E700B3BFE600BCC8ED00B7C3EA00A4B0DC009CA8D7008794C100616F
      8B009EA1A6000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABD00E1DEF600B9B6
      E7009C98CD00D2D0FF00E0DEFF00EBE9FC00F1F0F700DAD9DC00C9C9C900F8F7
      F500F8F7F500F8F7F500F8F7F400F3F2EF00F1F1FF00E0E0EF00E6E6E8009E98
      9D000000000000000000C3D1D100C0C0C000B4BFBF00ABACAC00000000000000
      000000000000000000000000000000000000D6EAEB00D8E9EC00D8E8EE00CDD1
      DD00783B79006B0D6700770D72008D2B8800B46CB100B972B600B05CAE00A744
      A2009D3197005B1857005A135800931C8F00981C92009B2195009D299800A338
      9D00AA4EA700B567B200BC76B800A956A40081137C00770E72006B0D6800793B
      7B00CCD2DE00D7EAEB00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000B8BBBE00667F9D005E8AC100648D
      C3009DB5DA00D4DEF500DBE3F800D6DEF500CFD7F100A7B5D5007290BB005E88
      BC00627E9F00BDC0C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000969C9F005C7384009CAD
      C900CAD6F700CDD9FA00C9D5F800C5D1F400BECAF000B5C1EA008A99BE00596A
      81009BA0A3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900E6E4F500D4D2
      FB007571AD008C8AD600D8D6FF00DBDAFF00E5E5FF00CFCFDD00E1E0E500F4F2
      F300F6F4F300F6F5F400F1F0EF00EAE6E100E4E0ED00C5BFCC00D9D8DA009E98
      9D000000000000000000C3D1D100B5BEBF00B4BFBF00ABACAC00000000000000
      000000000000000000000000000000000000D9EAED00D8E9EC00D8E9EC00D8E9
      EB00BDB8CA00732872006D0C6900780D73009F479A00C188BF00C78DC300C07B
      BC00B566B100A852A100A2459C00A744A000A944A200AC4DA600B25CAD00B970
      B700C485BF00C78FC500B873B300861E8300770E71006F0C690072287100BCB7
      CB00D7E9EB00DAE9EC00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000D0D1D30073859B005F8AC0005889
      C600608CC6008CAAD400BACAE700CAD5EE00B2C0DD00859CC0006D8FBB00618A
      BD0071869F00D5D6D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000979FA1005A7C850083A4
      B100A0BCCD00A4BDD100A7BDD500ADC0DC00B3C3E500B0BEE5007E92B000506A
      78009BA2A4000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F5F5FE00DFDD
      F500CECCFB00C4C4E8007876DE009999E300DCDCFF00C5C4E500E6E4F400ECEA
      EC00EDEBE800EBEBEA00EDE9E400ABA9A600DACCCC00E3D5D500DED0D000C5C4
      C40000000000C9C5C500D9D8D800D8D5D500DEDDDD00FEFEFE00000000000000
      000000000000000000000000000000000000D9E9ED00D6E9EB00DBEAEC00D7E9
      EB00D8E8ED00AD9CB8006D1A6800710C6A0079117400A2539D00CA97C700D8AF
      D600D5ABD300D1A1CD00CD97C900CB92C700CB92C900CD9ACB00D5A5D000D8AE
      D500D5A9D100BD80BA008B258400790E7000700B6A006B196700AD9CBA00D8E9
      EB00D8EAEB00D8E9ED00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0009AA1AA005B7CA4005C8C
      C8005086CA004C81C300618BC3007392BE007591B8007393BB007396C2005F80
      AD008E99A700F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCC0C000768F910081AC
      AE008BB5B8008AB3B8008BB0B9008FB1BD0094B3C40093B0C5007294A2006880
      8400BDC0C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDBDB00E3E1
      E700DCDAF000CFCDF6009A98DD008787E1005858EB005F5EE600B9B8C500F1EF
      F300F2F0EC00E7E5E100CECAC500EAE8E300F1EFEA00B1B1B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9ED00AF9DB900762A73006E0C6700770B700098419100C28E
      BF00DAB7D800E5CAE300E6CFE500E8D0E700E7D0E700E7CDE500E0C5DE00D2A8
      CF00B16FAD0087218000770D6D006E0C6900752A7100AF9EBA00D7EAED00DBE9
      EB00D7E9ED00DAE9EB00D8E9ED00BBC6C6000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDEDF008E98A400597B
      A6005184C4004B84CA00316CB40031619A005F81AC00799AC2006A8CB7006E81
      9B00C7C9CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000A6ADAD00819D
      A00094BCBE009CC4C7009CC4C70096C0C2008FB8BB0082ACAF0072929500A2AA
      AB00EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B3B3
      B200E1DCE000DED9E600D8D4EE00CDC9F300C8C4F000BEBCE000ACAAB800CAC7
      C900E0DDD600E7E3DD00EAE6E000EDE8E300B7B6B60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D6E7EB00BDB9CC00854A85006B0F6500710C6900821A
      7B0096409000B879B300CA99C500D0A5CD00CDA2CA00C38EBE00AD62A5008A2C
      83007A127200720D6A006A0E6500854B8600BEB9CD00D4E8E900D9EAEA00D8E7
      ED00D8EAEC00D9EAEB00D8E9EC00BBC6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E2E2009AA2
      AC0069809D005677A3003B679C00365D900058769E006983A30076869A00B6BA
      BE00F6F6F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E300A5AC
      AC0085989A0086A4A6008EB1B3008DB2B40085A5A700839A9B00A4ACAC00E3E3
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00D8D4D000D9D4D800DCD7E100DAD6E400DCD8E200E1DCDF00E4DF
      DB00E8E3DB00E8E4DC00E3DFD700C1C1C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8EAEB00D8E9EC00D1DDE400A78EB0007C387A007017
      6B006D0D6500710D6900730C6C00760C6D00740C6A00730B6B00720C6900700C
      670070196A007C377A00A78FB100D1DDE400D8E9EC00DAE9EC00DAE8ED00D6E9
      EC00D8EAEB00D7E9EC00D8E9EC00BBC6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00CED0D200B4B9BF009FA7B100939CA700939AA400A2A7AE00CFD1D200F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEEE
      EE00C5C7C700A6ACAC009EA6A7009EA6A700A6ACAC00C5C7C700EEEEEE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F4F4F400B1AFAE00D3CCC800BDB8B200B2B0
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E8ED00D8E9EC00D8E9ED00D9E9EC00D8E9EC00CDD6E000C0B9
      CC009D77A100834B8300742771006A1165006A13640073287000864985009C78
      A200C0B9CD00CDD7DF00DAE9ED00D8E9EC00DAE9EC00D7E9ED00D8E9ED00D8EA
      EB00D8E8EC00D9EAED00D8E9EC00BBC6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EB00DAE8EC00D8EAEC00D8E9ED00D8EAEB00D7EAEB00D9E8
      EE00D7E9EC00D8E9EC00D8E8EB00DAE9EC00DAE8EE00D9E9ED00D8E9EC00D9EA
      ED00D7E9EC00D8E8EC00D7E8EB00D8EAEC00D6EAEC00DAE9EC00D9E9EB00D7E9
      EC00D9EAED00D7E9EB00D7E9EC00BBC6C600424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000FFFFFFFF00000000FFFFFFFF
      00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FB3FDF7F
      00000000FFFFFFFF00000000FCE024FF00000000FFFEE3FF00000000FE0404FF
      00000000FF0403FF00000000FA0004FF00000000FF00007F00000000FE4804FF
      00000000FF00007F00000000FD0804FF00000000FF00001F00000000FD1844FF
      00000000FF00000F00000000FF9844FF00000000FC00000F00000000FFFFFFFF
      00000000F000000F00000000FF4602FF00000000F000000F00000000FFF801FF
      00000000F000001F00000000FF8001FF00000000F000000F00000000FF8001FF
      00000000F000000F00000000FFC001FF00000000E000000F00000000FF8000FF
      00000000E000000F00000000EF8001FF00000000E000000F00000000EE0001FF
      00000000F800001F00000000FF0003FF00000000F800007F00000000FE0000FF
      00000000F800007F00000000FE0002FF00000000F800007F00000000FE0002FF
      00000000FF80007F00000000FE0007FF00000000FF80007F00000000FD0008FF
      00000000FF8010FF00000000FC8007FF00000000FF841FFF00000000FFC00DFF
      00000000FFFE7FFF00000000FFC003FF00000000FFFFFFFF00000000FFC000FF
      00000000FFFFFFFF00000000FFF000FF00000000FFFFFFFF00000000FFF01FFF
      00000000FFFFFFFF00000000FFE90FFFFFFFFFFF00000000FFFFFFFFFFFFFFFF
      FC00003F00000000FFFFFFFFFFFFFFFFF800001F00000000FFFFFFFFFFFFFFFF
      F000000F00000000E000000FE0000007F000000F00000000E000000FC0000007
      F000000F00000000E000000FC0000007F000000F00000000E000000FC0000007
      E000000F00000000E000000FC0000007E000000F00000000E000000FC0000007
      E000000F00000000E000000FC0000007E000000F00000000C0000007C0000007
      E000000F00000000C0000007C0000007E000000700000000D3003217C0000007
      E000000300000000D0001207C0000007E000000300000000D0401227C0000007
      E000000300000000D0401207C0000007E000000300000000D04013C7C0000007
      E000000300000000D0411207C0000007E000000300000000D0401207C0000007
      E000000300000000D0021207C0000007E000000300000000D1041227C0000007
      E000000700000000C0000007C0000007E000000F00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000C000000FC0000007
      E00003FF00000000C000000FC0000007E00003FF00000000FFFFFFFFFFFFFFFF
      FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0003FFF00000000
      FE0001FFFFFFFFFFD0003FFF00000000FC0000FFF800007FC00003FF00000000
      FC0000FFF800007FC000000F00000000FC0000FFF800007FC000000100000000
      FC0000FFF800007F8000000100000000FC0000FFF800007F8000000100000000
      FC0000FFF800007F8000000300000000FC0000FFF800007F8000003F00000000
      FC0000FFF800007F80000C3F00000000FC0000FFF800007F80000C3F00000000
      FC0000FFF800007F80000C3F00000000FC0000FFF800007F80000C3F00000000
      FC0000FFF800007F80000C3F00000000FC0000FFF800007F80000C3F00000000
      FC0000FFFC0000FF80000C3F00000000FC0000FFFC0000FF8000043F00000000
      FF8003FFFE0001FF8000003F00000000FF0003FFFFC00FFF8000003F00000000
      FF0003FFFF8007FF8000000300000000FF0003FFFF8007FF8000000100000000
      FF0003FFFF8007FF8000000100000000FF0003FFFF8007FF8000000300000000
      FF0003FFFF8007FF80000C3F00000000FF0003FFFF8007FF80000C3F00000000
      FF0003FFFF8007FF80000C3F00000000FF0003FFFF8007FF8000083F00000000
      FF0003FFFF8007FFC0003FFF00000000FF8007FFFF8007FFE0007FFF00000000
      FFC007FFFFC00FFFF000FFFF00000000FFE00FFFFFE01FFFFC0FFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList1: TImageList
    Height = 115
    Width = 115
    Left = 656
    Top = 112
    Bitmap = {
      494C010102000400040073007300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000CC010000730000000100200000000000903A
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E6FC00C8C0F700B5AB
      F500A89DF300B5ABF500C8C1F700E5E2FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFCFA00F9F5EE00F4EDDE00F3ECDD00E7D7B700E8D9
      BA00F3EBDC00F5EEE100F9F5EE00FEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9E7
      FB00A194F2009284F0009688F1009789F100988BF100978AF1009688F1009385
      F0009D8FF200DDD9FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEE2CA00DAC08D00C2984300B6841F00B07A0A00AE73
      0000AA690000AA690000AE6C0000AE6C0000AB690000AC6B0000AE720000B27C
      1000B9892900CCA96200E5D4B200F8F4EB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D1F9009485F000988AF1009F92F200B1A4F400BDB2
      F600BFB3F600BEB2F500B1A5F400A093F100998BF1009385F000C1B9F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0CBA000BE923900AC730000AB6B0000B270
      0000B9760000C17A0000C47D0000C57D0000C67E0000C77F0000CC880400CC88
      0400C9810000C77E0000C67E0000C57D0000C07A0000B8740000AE6C0000AB6F
      0000B6862200D9C08C00FCFBF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0DCFA009385F000988B
      F100B4A8F400D4C9F900D6CBF900D2C8F900D1C6F900CFC4F800CFC4F800CCC2
      F800B5AAF4009A8DF1009486F000CAC3F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE5D000C39B4600A6680000AC6C
      0000BA770000C5800000C9830000CE8E1000D8A23500E0B55900E6C16F00EACA
      8000EFD59300EED39000EDD28D00EDD18B00ECD08900ECCF8700E7C37200E1B8
      5E00DCAB4600D49B2900CC8A0800C9830000BF7C0000B2700000A5660000C094
      3C00F0E8D5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFE009C8EF100998CF100B9ADF500DAD0F900D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800CAC0F800CDC2F800BBB0F5009C8EF1009385
      F000F3F1FC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9DABC00B684
      1D00A6640000B7760000C6800000CE8A0700D7A13200E6C06D00EFD69600F4DF
      A600F1DB9E00EFD69700EFD49200EDD28E00EDD08B00ECCE8700EBCD8400EBCC
      8200EACB8000EACA7E00E9C97D00E8C97D00E9C97D00E9CA7E00E9CA7E00E2BB
      6300DAA73F00D0901200CA850000BB780000A7660000B8872300F1E7D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4CFF9009486F000A79AF200DAD1
      FA00D4CAF800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800CBBFF700ABA0F300998BF100BAB1F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDE0C700B7862200A9690000BC7A0000C9840000D49B2700E5C16E00F2DB
      9F00F4E1A900F2DC9F00F0D79900F0D69500EFD59300EDD28F00EED28E00ECD1
      8C00EDD08A00ECCD8700EACD8300EBCC8200E9CB8000EACA7E00E9C77A00E7C7
      7900E8C67700E7C57500E5C27200E6C37200E6C47400E7C47300DFB35700D49A
      2700CB880400BD7B0000A8670000C49C4B00FBF8F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEA3F400998BF100C0B5F600D9CFFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C8BDF700BEB3F6009C8F
      F2009A8CF1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C59E4C00A7690000BB7A0000C8820000D7A1
      3000EED28F00F5E4AE00F3E1A800F2DB9F00F0DA9A00F1D99900EFD69700F0D6
      9500EFD59300EDD28F00EED28E00ECD18C00EDD08A00ECCD8700EACD8300EBCC
      8200E9CB8000EACA7E00E9C77A00E7C77900E8C67700E7C57500E5C27100E6C2
      7000E4C16E00E5C06B00E4BF6B00E4C16E00E1B75C00D39B2700CA870300B776
      0000AA700000DFC99C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B8EF1009B8EF200CFC4F900D7CD
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C4B9F600A296F2009283F000FBFAFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBDDC100A96E0000B272
      0000C8840000D39B2600EFD69500F7E8B500F5E1A900F3DEA300F1DDA100F2DA
      9E00F0DA9A00F1D99900EFD69700F0D69500EFD59300EDD28F00EED28E00ECD1
      8C00EDD08A00ECCD8700EACD8300EBCC8200E9CB8000EACA7E00E9C77A00E7C7
      7900E8C67700E7C57500E5C27100E6C27000E4C16E00E5C06B00E4BD6700E2BD
      6600E3BD6600E3BF6900DEB25200D0911300C6850200AA6A0000C0953D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009182F000A093F200D2C7F900D7CDFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C4BAF700A598
      F2009385F000F9F8FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDAC6600A6650000C0800000CF8D0C00E9C87D00FAEDBE00F6E4AE00F3E1
      A800F4DEA400F3DEA300F1DDA100F2DA9E00F0DA9A00F1D99900EFD69700F0D6
      9500EFD59300EDD28F00EED28E00ECD18C00EDD08A00ECCD8700EACD8300EBCC
      8200E9CB8000EACA7E00E9C77A00E7C77900E8C67700E7C57500E5C27100E6C2
      7000E4C16E00E5C06B00E4BD6700E2BD6600E3BC6400E1BB6200E2BA6300E3BC
      6500D7A13200CE8C0B00B4750000AF770700F9F6EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009283F000A295F200D3C9F900D7CD
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C4B9F700A699F2009385F000F9F8FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BB8C2D00AD6C0000C9860300D9A63B00F6E5
      B100F8E9B700F4E3AC00F5E2AA00F3E1A800F4DEA400F3DEA300F1DDA100F2DA
      9E00F0DA9A00F1D99900EFD69700F0D69500EFD59300EDD28F00EED28E00ECD1
      8C00EDD08A00ECCD8700EACD8300EBCC8200E9CB8000EACA7E00E9C77A00E7C7
      7900E8C67700E7C57500E5C27100E6C27000E4C16E00E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85D00E1BA6200DBAC4800D1911400BE7F
      0000AB700000F1E8D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009283F000A396F200D3C9F900D7CDFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C4B9F700A79A
      F2009385F000F9F8FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCF9F400B27E1300B576
      0000CD8B0800E5C06B00FAEEC000F8E6B300F6E4AE00F4E3AC00F5E2AA00F3E1
      A800F4DEA400F3DEA300F1DDA100F2DA9E00F0DA9A00F1D99900EFD69700F0D6
      9500EFD59300EDD28F00EED28E00ECD18C00EDD08A00ECCD8700EACD8300EBCC
      8200E9CB8000EACA7E00E9C77A00E7C77900E8C67700E7C57500E5C27100E6C2
      7000E4C16E00E5C06B00E4BD6700E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E1B75D00DEB25300D1931800C3840500AB6F0000F2E9D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009283F000A497F200D2C9F900D7CD
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C4B9F700A89CF2009486F000F9F8FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFCF900AE770700BB7B0000CE8E0C00EED59200FBEFC100F7E7B400F7E4
      AF00F6E4AE00F4E3AC00F5E2AA00F3E1A800F4DEA400F3DEA300F1DDA100F2DA
      9E00F0DA9A00F1D99900EFD69700F0D69500EFD59300EDD28F00EED28E00ECD1
      8C00EDD08A00ECCD8700EACD8300EBCC8200E9CB8000EACA7E00E9C77A00E7C7
      7900E8C67700E7C57500E5C27100E6C27000E4C16E00E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DFB55900DFB3
      5600D2961E00C6860900A86A0000F6EEE2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009283F000A699F200D3C9F900D7CDFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5B9F700A99C
      F2009486F000F9F8FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFBF800AC730100BC7D0000CF901200F5E2
      AB00FAEEC100F8E8B500F6E7B300F7E4AF00F6E4AE00F4E3AC00F5E2AA00F3E1
      A800F4DEA400F3DEA300F1DDA100F2DA9E00F0DA9A00F1D99900EFD69700F0D6
      9500EFD59300EDD28F00EED28E00ECD18C00EDD08A00ECCD8700EACD8300EBCC
      8200E9CB8000EACA7E00E9C77A00E7C77900E8C67700E7C57500E5C27100E6C2
      7000E4C16E00E5C06B00E4BD6700E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35500DEB25400D2982100C8890C00A565
      0000FAF9F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009183F000A699F200D4C9F900D7CD
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5B9F700A99EF2009485F000F9F8FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B27D
      1000BC7C0000D2951B00F7E8B700FBEEC100F7E9B600F8E8B500F6E7B300F7E4
      AF00F6E4AE00F4E3AC00F5E2AA00F3E1A800F4DEA400F3DEA300F1DDA100F2DA
      9E00F0DA9A00F1D99900EFD69700F0D69500EFD59300EDD28F00EED28E00ECD1
      8C00EDD08A00ECCD8700EACD8300EBCC8200E9CB8000EACA7E00E9C77A00E7C7
      7900E8C67700E7C57500E5C27100E6C27000E4C16E00E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DEB15300DEB05000D3982100C2840900AE77070000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009183F000A89BF200D3C8F900D7CDFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700AA9E
      F2009486F000F9F8FE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BE923800B7780000D2951B00F3DFA600FCF0C500F9E9
      BA00F7E9B600F8E8B500F6E7B300F7E4AF00F6E4AE00F4E3AC00F5E2AA00F3E1
      A800F4DEA400F3DEA300F1DDA100F2DA9E00F0DA9A00F1D99900EFD69700F0D6
      9500EFD59300EDD29000EED28F00EDD28F00EED28E00EDD08B00EBCF8700EBCD
      8500EACB8100EACA7E00E9C77A00E7C77900E8C67700E7C57500E5C27100E6C2
      7000E4C16E00E5C06B00E4BD6700E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB05000DBAD4A00D397
      1E00B97B0000C0943D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009183F000A99CF300D3C9F900D7CD
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5BAF700AB9FF3009486F000FAF9FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4B77D00AE6F0000D091
      1300F0D79800FCF3CA00FAECBD00F9E9BA00F7E9B600F8E8B500F6E7B300F7E4
      AF00F6E4AE00F4E3AC00F5E2AA00F3E1A800F4DEA400F3DEA300F1DDA100F2DA
      9E00F0DA9A00F1D99900F0D79700F1D89900F1DA9C00F0D99C00ECCF8800E7C5
      7600E5C16F00E2BA6200E5C06B00E6C16E00E8C77900ECCE8600EBCC8300E9C9
      7D00E8C77800E7C57500E5C27100E6C27000E4C16E00E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDB04F00D9A84100D1951D00AE6F0000DAC08C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009284F000A89CF300D3CAF900D7CDFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700ACA0
      F3009486F000F8F7FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFE3CC00A8690000CF8F1300E8C77800FEF5CF00F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F6E7B300F7E4AF00F6E4AE00F4E3AC00F5E2AA00F3E1
      A800F4DEA400F3DEA300F1DDA100F2DA9E00F1DA9C00F3DDA000F2DCA000E8C6
      7700DCAC4800D4992300D2961D00D2951B00D1931900CC8E1300CD901500D295
      1A00D3961E00D3972000D8A43600DFB15200E6C27000E9C87C00E6C47500E6C2
      7000E4C16E00E5C06B00E4BD6700E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DCAF
      4E00D7A23400CE921B00A7690000F9F4EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3DFFB00B4A9
      F500998CF1009789F1009789F1009789F1009789F1009789F1009789F100978A
      F100978AF100978AF100978AF100988AF1009B8EF100AA9DF300D3C9F900D7CD
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5BAF700ADA0F3009E91F200988BF100988AF100988A
      F100988AF100988AF100988AF100988AF100988AF100988AF100988AF100978A
      F100988BF100B0A5F400DBD6FA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0790B00C6880E00DCAC4700FFFA
      D800FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F6E7B300F7E4
      AF00F6E4AE00F4E3AC00F5E2AA00F3E1A800F4DEA400F3DEA300F1DDA100F3DE
      A500F1DB9E00E3BB6200D3992300CF921800C5880D00B6780000AD6F0000AA6F
      0000AB710000AE760600AC740100AA700000AA6E0000AE6F0000B97B0000C78B
      1200D0941B00D6A03100E0B65900E7C47300E5C27100E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DDAD4B00D69D2C00C1850C00B482
      1A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F6FD00A99DF3009588F100A194F200A79AF200ACA0F400ACA0F300ACA0
      F300ACA0F300ACA0F300ACA0F300AC9FF300AC9FF300AC9FF300AC9FF400ACA0
      F400ACA0F400AA9EF300D3C9F900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C4B9F700ACA0
      F300ACA0F400ACA0F400ACA0F400ACA0F400ACA0F400ACA0F400ACA0F400ACA0
      F400ACA0F400ACA0F400ACA0F400ADA1F400AB9FF300A598F200988AF100A092
      F200EDECFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4B6
      7B00B5750000D4982100FCF0C500FBF0C500FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F6E7B300F7E4AF00F6E4AE00F4E3AC00F5E2AA00F3E1
      A800F4DEA400F3DFA500F4E2AA00E7C57600D59B2800CD911800BA7D0200AA6C
      0000B8882600D6BB8300EDE1C800F9F5EE00000000000000000000000000FEFE
      FD00F5EEDF00E4D2AD00CAA55C00B0790B00AA6A0000BC800600D0951E00D7A0
      3000DFB65A00E6C37000E4BE6800E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAC4900D9A84000D59C2800AB6B0000E2CEA70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F1FD009B8DF100A193F100B0A3F400CCC2
      F700DFD6FA00E4DBFB00E4DAFB00E2D8FB00E1D8FB00E0D6FA00DED5FA00DCD3
      FA00DBD1FA00DBD0FA00D9CFF900D8CDF900D6CBF900D5CAF900D7CDF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C2B7F600C1B6F600BFB4F600BEB3F600BDB1
      F500BBB0F500BAAEF500B8ACF500B8ACF500B6ABF400B5A9F400B3A7F400B2A6
      F400B0A4F400AFA2F400AEA2F400A599F2009688F000E3E0FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF8F200A96C0000CE911700EDD28E00FEF6D000FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F6E7B300F7E4
      AF00F6E4AE00F4E3AC00F5E2AA00F3E1A800F5E0A800F4DFA600DDAE4C00D398
      2000BC810800A7680000C9A35600F3EBDA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EADBBE00BD8F3300A5640000BF850E00D59A2600D9A63E00E5BF6B00E3BE
      6700E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DBAC4800D7A13500CB91
      1C00AB7200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E90
      F200A296F200BAAEF500EEE5FC00F2E9FD00EEE5FC00EBE2FC00EAE1FC00E8DF
      FC00E7DEFC00E6DCFB00E4DBFB00E1D9FB00E1D6FB00E0D6FB00DDD5F900DDD2
      FA00DAD0FA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C4B9
      F700C3B8F700C1B6F700C0B5F700BFB3F500BDB2F600BCB0F600BAAEF600B9AD
      F600B7ACF400B6AAF500B4A8F500B3A7F500B0A4F500B0A4F300ADA1F400AEA2
      F400A99CF2009889F100F8F7FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C8A25600BC7E
      0200DBA93F00FEF6D100FCF1C700FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F6E7B300F7E4AF00F6E4AE00F4E3AC00F5E2AA00F4E3
      AC00F4DEA400D7A33500CF951F00AB6C0000B7862200F7F2E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFE4CE00B17A
      0C00AC6D0000D0982300D69F3000E2BB6400E3BD6600E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DBAB4600DAAA4300D79F2E00B0720000D6BC8300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C5BDF7009A8DF100B2A6F300F1E8FC00F1E8FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ACA0F400AFA3F400A194F200B6ABF4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFBF700A4630000D3982100F3DFA400FFF5CF00FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F6E7B300F7E4
      AF00F6E4AE00F4E3AC00F6E4AD00F3DFA700D69F2D00CA901A00A5660000D4B7
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2B37400A4650000CA911D00D69E
      2D00E0B75C00E2BC6400E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4500D7A3
      3800CD942000AB72000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009183F000A79B
      F200DED3FA00F3ECFD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ACA0
      F400ACA0F400B1A5F4008F80EF00FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEAC6700BA7D0200DDAD
      4700FFFAD700FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F6E7B300F7E4AF00F6E4AE00F5E4AE00F6E4AD00D8A3
      3700C88E1900A66A0000E5D3AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBDDC100A4650000C58D1900D79F3100E0B85D00E2B96100E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA84200D7A13100B0720000DEC799000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E4FB009586F000B5A9F500F2E8FD00F0E9FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AB9EF400B1A5F4009D8FF100D8D3
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AA700000D1962100F0D79500FFF7D200FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F6E7B300F7E4
      AF00F6E4AE00F7E8B600DEB04F00CE952100A5660000E8DABB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3EBDB00AA6E
      0000C9901D00D8A33600E2B96000E1B85D00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4300D8A43800C78F1C00B6821B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4CEF9009B8DF100BDB1
      F600F8EFFD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AB9EF400AFA3F400A497F300C5BEF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4D2AE00AF720000D8A23400FFF8
      D400FDF3CB00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F6E7B300F7E4AF00F8E9B600E7C57700D49C2A00A666
      0000DDC697000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEE4CD00A86A0000D19A2A00DAA84100E2BA
      6200DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A73E00D7A13400A9690000F1E8
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2CBF8009D90F100C6BBF800F7EEFD00EFE8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AB9EF400B0A4F400A89CF300B7AC
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2974100C2860F00E5C06A00FFFBD900FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F6E7B300F7E6
      B200F4E1A800D9A23400B3760000C39945000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1CDA400AC6E0000D9A33600DEB15200E0B85C00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D9A73F00D9A63A00BB800900C9A45A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D3F9009D90F100BFB4
      F600F8EFFD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AB9EF400B1A4F300A598F300BEB6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFD00AD740300D1982400F5E2AA00FFF7
      D100FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F6E7B300F9EABA00E1B85C00C9901D00AA6F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C59E4E00C0860F00DBA8
      3D00E0B75C00E0B55900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D9A63F00D9A73C00CF9A2C00AA6E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEECFC009587F000B9ADF500F2E9FD00F0E8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AA9DF300B4A8F5009E90F100CFC9
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFE6
      D100AC6D0000D59E2B00FFFCDB00FEF4CC00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F7E8B500F4E0
      A800D6A03000AB6D0000DFCA9D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A96D0000D7A43800DDB04E00E0B55A00DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D8A63D00DAA83E00A8670000F1E8D50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009789F100AEA2
      F300DFD5FA00F3EBFD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ACA0
      F400ADA0F300B7ABF4009182F000F3F2FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8BD8600B6780000E1B65800FFFDDC00FEF3
      CC00FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E8B500F9EBBB00E6C16C00C9901E00B17C1000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5B77E00BD83
      0B00DCAB4400E0B55A00DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D9A53C00DCAA4200B77C
      0400D3B577000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C5BEF7009F91F100BDB2F600F3EBFD00F0E7FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400AB9FF300B4A8F400A99CF300A599F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C59C
      4B00C1871100EAC97A00FFFCD800FEF3CC00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500FAEDBE00DAA6
      3D00B1750000D9BE890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A96A0000DBA94000DEB25500DFB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D9A53C00DBA94100C7912000B988250000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000998C
      F100AA9EF200C5BAF600F3EAFD00F0E7FD00EDE4FC00EAE1FC00E9E0FC00E7DE
      FC00E6DDFC00E5DBFA00E3DAFB00E1D8FB00E0D6FB00DFD5FB00DDD4F900DCD2
      FA00DAD0FA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6A9F500B3A7F500B3A7F500B0A4F500AFA3F300ACA0F300B4A8
      F400B5A9F5009183F000F0EEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6831D00CB932100F1DA9B00FFFAD500FEF3
      CC00FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F9EAB900EED59400D7A13500A86C0000FBF9F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C59D
      4D00CB952500DDAF4D00DFB45800DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D9A53C00D9A83F00D3A1
      3700A66800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0EEFD009688F000A99DF300B9AEF500D9CE
      FA00E8DFFB00EAE2FC00EAE1FC00E7DEFC00E6DEFC00E5DBFA00E3DAFB00E1D8
      FB00E0D6FB00DFD5FB00DDD4F900DCD2FA00DAD0FA00D9CFFA00D7CDFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F600C3B8F700C1B6F700C0B5F700BFB3
      F500BDB2F600BCB0F600B9AEF600B9ADF600B6ACF400B6AAF400B3A7F400B2A7
      F400B1A5F500B3A7F300B9ADF400B4A8F4009485F000D9D4FA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF77
      0600D19B2B00F7E7B200FFF8D200FEF3CC00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600FAECBC00E7C57400C890
      1F00B88725000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5D5B300BA7E0500DEAE4B00DFB45700DFB3
      5400DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D9A53C00D9A73D00DEAE4900A6680000F7F2E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1EFFD00A498F2009C8EF200AEA1F400B1A5F500B8ACF500B9ADF500B9AD
      F500B9ADF500B9ADF600B9ADF600B9ADF600B9ADF600B9ADF600B9ADF600B9AD
      F600B9ADF600B8ACF500D4CAF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700B8AD
      F500B9ADF500B9ADF600B9AEF600B9ADF600B9ADF600B9ADF600B9ADF600B9AE
      F600B9ADF500B9AEF500B9ADF500B9ADF500B8ACF500B3A6F500A295F2009C8F
      F100E1DDFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFBF900AB6F0000D49F3100FCF0C400FEF7D100FEF3
      CC00FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600FBEEC000E1B65900B87D0600D6BA810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF9
      F500AE710000DEAF4A00DFB35700DFB35400DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D9A53C00D8A53C00DFB1
      4E00AB6D0000EBDEC50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D4F900AEA4
      F3009F93F2009688F0009587F0009587F0009587F0009587F0009687F0009687
      F0009687F0009687F0009687F0009687F000A194F100B9ADF500D4CAF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C6BBF700BBB0F600A497F3009789F1009688F1009688
      F1009688F1009688F1009688F1009688F1009688F1009688F1009688F1009587
      F0009B8EF100A89CF300CBC5F700FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF8F200A766
      0000D6A13500FFF7D000FEF7CF00FEF3CC00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F8E9B700F8E8B700DFB14E00B072
      0000E9DBBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B57F1100D9A84200DFB35500DFB3
      5400DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D9A53C00D7A53B00E0B04F00B1750000E0CB9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFE00F9F8FE00F9F8FE00F9F8
      FE00F9F8FE00F9F8FE00F9F8FE00F9F8FE00F9F8FE00F9F8FE00F9F9FE000000
      00009385F000B9ADF600D5CAF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BBF700BDB1
      F6009587F100F3F1FD00FAFAFE00F9F8FE00F9F8FE00F9F8FE00F9F8FE00F9F8
      FE00F9F8FE00F9F8FE00F9F8FE00F9F8FE00FCFBFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF8F200AA6A0000D8A53B00FEF6CE00FEF7CF00FEF3
      CC00FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F8EAB800F6E3AC00E0B14E00AB6E0000F6F0E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9882500D5A43C00DEB35400DFB35400DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D9A53C00D7A53A00E0B2
      5000B57A0200DFCA9D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009283EF00BAAFF600D5CAF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5BAF700BEB3F6009486F100F9F9FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF8F200AB6B
      0000DAA84000FEF6CE00FEF7CF00FEF3CC00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F8EAB900F3DEA200E0B04D00A768
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BC8D2F00D5A43C00DFB35400DFB3
      5400DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D9A63D00D7A33800DFB25100B97F0900DEC99C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009283EF00BBB0F600D5CBF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700BFB4
      F6009485F100FFFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF8F200A7680000D8A53C00FFF7D100FEF7CF00FEF3
      CC00FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F8EAB900F3DEA300E0B35000A7680000FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B8862000D6A64000DEB35400DFB35400DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D9A63C00D7A33800E0B3
      5400B77C0400DFCA9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009283EF00BCB1F600D5CBF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5BAF700C0B5F6009385F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBF9F300A868
      0000DCB15600FBEFC100FEF7D000FEF3CC00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F8EAB900F3DDA300E1B35300A96B
      0000FCFCFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1790900D9AA4600DEB45600DFB3
      5400DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D9A53C00D7A43900E1B65600B3780000E9DABD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009283EF00BDB2F600D5CBF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700C1B6
      F6009385F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFCFB00AB6E0000E4C68700FAECBE00FEF7D000FEF3
      CC00FCF3CA00FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F8EAB900F5E2AA00E1B65600AD710000F3EADA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFA
      F700A96B0000DEB15100DFB45700DFB35400DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D9A53C00D8A53C00E3B8
      5B00AD700000F4EDDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009284EF00BEB3F600D5CBF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5BAF700C3B7F6009485F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B078
      0700E0BF7800FBF3D900FEF7CE00FEF3CB00FCF3CA00FDF2C800FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F8E9B700F8E8B500E3B85B00B67D
      0400E4D1AB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8D9BB00AE700000E2B85C00DFB45600DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D8A53C00D9A73E00E4BA5F00A667000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009184EF00C0B4F600D5CBF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700C2B8
      F6009485F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8862200D5AC5900FAEFD400FFFBE300FEF3
      C900FCF2C900FDF2C800FCF1C600FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600FAEDBE00E5BE6800C48F2000C9A3570000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBA8
      6000BF891800E3B95E00DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D8A53B00DAAA4300DDB1
      5200AD7200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009284EF00C0B5F600D5CBF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C7BCF600C5BAF700C3B9F7009485F10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C79F
      5100C7963100F7E9C900FFFEEF00FEF7DB00FCF2C700FDF1C700FCF1C600FAEE
      C200FBEEC100F9EDBF00FAECBD00F9E9BA00F7E9B600F9EBBB00EBCC8300D8AA
      4700AD7504000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AB710000D2A34000E1B75C00DEB35700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D8A43B00DDAF4D00D2A33E00BE91370000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009384EF00C1B6F600D6CBF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C7BCF600C5BAF700C4B9
      F7009485F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC49300B67D0700F4E1B800FFFFEF00FFFA
      E900FDF6DB00FCF1C500FBF1C500FAEEC200FBEEC100F9EDBF00FAECBD00F9E9
      BA00F7E9B600F8E9B700F2DDA300E2B75900AD710000EBDFC500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFE3CD00A667
      0000E4BC6200E0B55900DEB35700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63E00D8A43900E0B55800C591
      2300D3B57A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009283EF00C1B6F600D6CBF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C5BAF700C6BAF7009688F100DDDAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2E9
      D700A9690000EFD8A600FEFAE700FFFAE800FDF9E800FDF7DE00FBF0C300FAEE
      C100FBEEC000F9EDBF00FAECBD00F9E9BA00F7E9B600F8E8B500F9EBBC00E4BD
      6500C8962B00BE90370000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BC8F3000C4902400E4BD6400E0B45800DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A63E00D8A53B00E5BC6400B4790000EADBBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEBFC00C1BAF700A194
      F2009C8FF100C3B8F600D5CCF900D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C4BA
      F700B0A3F4009A8CF1009587F000B4ABF400E2DEFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC710000E3C37C00FBF3D800FFFB
      E900FDF8E600FEF9E600FEF7E200FAF0C500FBEDBE00F9ECBE00FAECBD00F9E9
      BA00F7E9B600F8E8B500F8E9B700EFD59300E2B75A00A96B0000EDE0C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2E8D500A4640000E3BC
      6400E0B75D00E0B45800DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400DAA94200D8A63D00DAA84200E3BD6500A868
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F7FD00C6BF
      F7009E91F1009687F000AB9EF300BAAEF500C6BCF700C6BBF600D5CBF900D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C6BBF700C8BDF700C0B5F600B0A4
      F400998BF0009A8DF100CAC4F800FBFBFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C39A4700C99A3800F7EACA00FFFDEC00FDF8E600FEF9E500FEF8E500FDF7
      E300FBF1CD00F9ECBB00FAEBBC00F9E9BA00F7E9B600F8E8B500F7E7B300F7E7
      B400E6C06B00CC9B3500B17A0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7852200C5932900E6BF6900DFB65A00E0B45800DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400DAA9
      4200D8A53C00DEB25100D6A94900B98826000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEECFD00B5ACF5009688F000A496F200BAAEF500C6BBF700CEC3F800D4CA
      F800D8CEF900DAD0F900D7CDFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C2B7F700C1B6F700C1B6F700C4B9F600C8BDF700BDB2F500A295F200978A
      F100C2BAF600FCFCFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3CEA600AE700000F7E5BF00FEF9
      E600FEF9E600FEF9E500FEF8E400FCF6E200FDF7E300FBF3D800F9EBBC00F8E9
      B700F7E8B600F8E8B500F6E7B300F8E6B300F0D99B00E5BD6400B2780000CCA7
      5F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAC08C00AC6F0000E6C16C00E1B9
      5F00DFB75A00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400D9A84100D8A63C00E5BE6600BE881700D6BA
      8200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFCFE00B6ADF5009486F000AA9DF300C0B5F600CBC1
      F700D7CCF900DED4FB00DED6FA00DDD3FA00DAD0FA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700BFB4F700BEB2
      F500BCB2F500C0B5F600C8BDF600C2B6F600A396F1009789F000D4CEF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5660000E8CB8C00FBF2D800FEFAE900FEF9E500FEF8E400FCF6
      E100FDF7E100FDF6E100FDF6E100F9EDC600F7E7B300F7E7B300F6E7B200F7E4
      B000F7E7B400EACA7F00E2BA6100A5640000E0CA9F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0E6
      D200A5650000DCB25700E5BE6800E0B75C00DFB75A00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBAA4400D9A8
      4100DAA94200E6C16D00AB6E0000F8F3EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCAF9009082F000A89A
      F200C4B8F600CEC2F800DED4FA00E3DAFB00E1D7FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BBAFF500B9ADF500BDB2
      F600C9BEF700C0B5F6009789F000A79CF300F7F6FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7A05100C4922A00F8EB
      CB00FEFBE900FEF9E500FEF8E400FCF6E100FDF7E100FDF5E000FDF6DF00FCF6
      E100FBF3D900F8E9BD00F6E6AF00F7E4AE00F6E4AE00F6E5B000E8C47500DEB6
      5D00A1600000E1CDA40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F2E700A7680000D0A44200E7C47100E1B85F00E1B7
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DBAA4400D9A73E00E2B75B00D4A84800B98726000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4F2
      FD00A398F3009A8CF100C0B5F700CFC5F900DFD6FB00E8DEFB00E4DBFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B8ACF600B5AAF400BFB4F500CDC2F800AEA2
      F4009284F000DBD7FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4EEDE00A5630000F1DAA900FBF4DE00FEFAE700FEF8E400FCF6
      E100FDF7E100FDF5E000FDF6DF00FBF5DE00FCF4DE00FCF5DF00F9F0D100F7E6
      B500F5E2AA00F5E3AC00F4E0A800E8C37200D9AE5100A7690000D6BA82000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6EFE200A6680000C999
      3200EAC67500E2BA6300E2B85F00E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBA94300D8A6
      3E00E9C77700B57B0400E1CCA300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D4F9009385F000AFA3F400CAC0F800DAD0F900E9E0
      FC00E7DEFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B4A8F400B6AAF400C8BEF700C0B4F7009586F000C3BBF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B47F1500D1A7
      4E00F9EDD100FEFBE700FEF8E400FCF6E100FDF7E100FDF5E000FDF6DF00FBF5
      DE00FCF3DD00FCF4DC00FBF4DC00FBF3DB00F9EECC00F5E4B100F5E1A800F2DE
      A400E8C57600DEB65D00AD6F0000BF9137000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D3AE00A5680000CEA03D00EAC87800E3BC6500E1BA6100E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAB4600DAA84000E0B55900DFB76000AC720000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1B8F6009587F000BFB4
      F600D2C7F800E6DEFB00EBE2FC00E7DEFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F400B1A5
      F400C1B6F600CAC0F8009B8DF000B4AAF5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBDFC400A8680000F4E0B500FCF6DF00FEF8E500FCF6
      E100FDF7E100FDF5E000FDF6DF00FBF5DE00FCF3DD00FCF4DC00FAF4DB00FBF3
      D900FBF2DA00FAF3DA00F9EDCD00F5E5B200F3DDA000E9C97A00E6C26E00BD88
      1900A5670000DEC6980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C59D4C00A5650000DAB05500EAC87900E3BD
      6800E3BB6300E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAA4500DAA84100EBCB
      7C00B9810F00D3B5780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEA4F3009B8DF100C7BCF700DAD0F900EEE6FC00EAE2FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B2A6F500AEA2F400BCAFF600D0C6F800A094
      F100B1A6F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B784
      1F00CDA24500F9ECCD00FFFAE700FCF6E200FDF7E100FDF5E000FDF6DF00FBF5
      DE00FCF3DD00FCF4DC00FAF4DB00FBF3D800FBF1D800F9F2D700FAF1D700FAF2
      D900F9EFD200F6E6BB00ECD28C00EBC77600DCB45A00AF730000AB710000D9BE
      8800FEFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFBF700D3B47500A3610000BD87
      1800E9C77700E8C67700E4BD6900E2BC6500E3BC6300E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700D9A84100E3BA6200E1BC6800A567000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F6EE00E4D0
      A900DBC28E00DDC59600EEE3CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A398F200A497F300CDC2F700E2D9FA00F1E8
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500ADA1F300B6A9F400D2C7F800A395F300AFA3F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0E7D300A6660000EED7A400FBF1D900FDF8
      E400FDF7E100FDF5E000FDF6DF00FBF5DE00FCF3DD00FCF4DC00FAF4DB00FBF3
      D800FBF1D800F9F2D700FAF0D600FAF1D500FAF0D500F9F0D700FAF1D700F5E6
      BD00ECCF8A00EBCA7B00D9AE5100B7800B00A8690000BB8C2E00D7BB8300EDE1
      C800F8F3EA00FDFCFA00FDFCFA00FDFDFC00FAF6F000F0E6D300DAC08C00BD8F
      3400A7690000B8800D00DDB96200ECCD8100E6C37200E4BF6A00E3BD6700E2BD
      6500E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DBAA4600DCAE4C00EDCD8300B074
      0000DCC493000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBDDC100B7852000A4630000AE710000B47A0400B1760000AA6C0000AA6D
      0000C79F5000F7F2E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A498F200A597
      F200CEC3F700E7DDFC00F1E9FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC4F900CCC1F700CCC1F800C9C0F800C9BEF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300AB9FF300B4A9
      F400D1C7F800A396F200B3AAF400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C59D4B00BD881B00FAECCC00FDF7E200FDF7E100FDF5E000FDF6DF00FBF5
      DE00FCF3DD00FCF4DC00FAF4DB00FBF3D800FBF1D800F9F2D700FAF0D600FAF1
      D500FAF0D400F8EED300F9EFD200F9EFD400F9F0D700F6E8C400F1DAA400EDD1
      8A00E3BE6800D3A84700BF891A00B1760000AF740000B1780800B1790900B17A
      0A00AE740000AD710000B9821000CD9F3D00E3BF6C00ECCD8200E8C67800E5C1
      7000E4C06D00E5C06A00E4BD6700E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAD
      4A00DAAB4600E8C57500CFA34300B37F15000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFAD6900AA6C0000D0A44400E7C67A00EDCF
      8600EBCA7D00EBCA7B00EBCB8100E2BF7000C4942B00A86A0000DAC18E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADA2F400A597F200CFC4F800EBE2FB00F2EAFD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D6CCFA00D6CC
      FA00D3C9F800D3C9F900D2C6F900CFC6F900CFC4F900CCC1F700CCC1F800C9C0
      F800C9BEF800C6BBF600C6BBF700C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400AA9EF300B7AAF400D2C7F8009B8DF100C5BE
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFD00A6680000DDBC7300FAEF
      D300FDF8E400FDF5E000FDF6DF00FBF5DE00FCF3DD00FCF4DC00FAF4DB00FBF3
      D800FBF1D800F9F2D700FAF0D600FAF1D500FAF0D400F8EED300F9EFD200F9EE
      D100F7ECCF00F8EED000F9EED200F8ECCF00F5E6C200F1D9A200EED28C00EAC8
      7700E7C47100E4C06D00E4C16F00E4C17000E6C47500E9C97C00ECCD8300EBCB
      7F00E9C77900E7C57500E5C27100E6C16F00E4C16E00E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAD4900DFB45600EFD28B00B77F0D00C49B
      4700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFAF6D00B379
      0200EBCC8200E9C77800D7A33700CE901600CC8D0F00CC8C0D00CD8D1000D39A
      2800E5C06A00E9CA7F00B0740000CCA963000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BEB5F6009C8EF100CFC5F700EAE1
      FC00F4EBFD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00D9CFFA00D9CFFA00D6CCFA00D6CCFA00D3C9F800D3C9F900D2C6F900CFC6
      F900CFC3F900CCC1F700CCC0F700C9C0F800C9BDF800C6BBF600C6BBF700C3B8
      F700C3B8F700C0B5F700C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ACA1
      F400A99BF300BBAFF500D2C8F8009485F000DEDAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7D6B400A3600000F2E0B300F9F0D500FDF7E300FDF6DF00FBF5
      DE00FCF3DD00FCF4DC00FAF4DB00FBF3D800FBF1D800F9F2D700FAF0D600FAF1
      D500FAF0D400F8EED300F9EFD200F9EED100F7ECCE00F8EDCE00F8ECCD00F8EB
      CC00F7ECCD00F7ECCF00F8EBCF00F6E9C700F2DFB000EDD39400EBCB8000EACA
      7D00E9CA7C00E9C97C00E9C77A00E7C67800E8C67600E7C57500E5C27100E6C2
      7000E4C16E00E5C06B00E4BD6700E2BD6600E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4A00DBAA4400E2BA6300EDCF8600B0740000C7A1520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EEE3CB00A6660000EED18900DFB45500CC8C0D00CC8E0F00CD8D
      1100CC8D0F00CC8C0E00CB890A00C9870500C7810000D5A03000F2D79400AF74
      0000E0CBA0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D0
      F9009486F000CBC0F800E8DFFC00F6EDFD00F2E9FD00EFE8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DCD4F900DCD2FA00D9CFFA00D9CFFA00D7CDFA00D6CC
      FA00D4CAF800D3C9F900D2C7F900D0C6F900CFC4F900CDC3F700CCC1F800C9C0
      F700C8BDF800C6BBF600C5BAF600C3B8F700C3B8F700C0B5F700C0B5F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AB9EF300A69AF300C4BAF600C7BD
      F7009487F100F6F5FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C9A35700B075
      0000F7E9C600FBF2DA00FDF7E000FBF5DE00FCF3DD00FCF4DC00FAF4DB00FBF3
      D800FBF1D800F9F2D700FAF0D600FAF1D500FAF0D400F8EED300F9EFD200F9EE
      D100F7ECCE00F8EDCE00F8ECCD00F8EACC00F6EBCB00F7EACA00F7E8C900F6E9
      C900F6EACA00F7EACC00F5E9C900F2E1B500EFD8A000EBCE8800E8C77A00E6C4
      7300E7C47200E6C47200E5C27000E6C16F00E4C16E00E5C06B00E4BD6700E2BD
      6600E3BC6400E1BB6200E2B86000E1B85C00DFB75B00E0B45900DEB45700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700D9A83F00E3BB6400F0D4
      8E00AF730000C8A1530000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5821B00D5AD5300E5BE
      6600CD8D0F00CE911700CD911400CE8E1300CC8E1100CD8D0F00CC8A0B00CA8A
      0A00CB880700C6810000D6A13100EACC8300AB6F0000FCFBF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F0FD009384F000C3B8F700E1D8FA00F8F0FE00F3E9
      FC00F2E9FD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D5FB00DFD5FB00DCD4F900DCD2
      FA00DAD0F900D8CEFA00D5CBF900D4C9F900D3C9F900D0C5F900CDC2F800CCC1
      F800CCC1F800CDC2F800CFC5F900D1C7F800D2C7F900CDC2F700C7BCF700C3B8
      F600C2B7F600C0B5F600C0B5F700BFB2F500BCB2F600BCB0F600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AC9EF400A99DF400A597F200D1C6F900B4A9F500A89DF300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6811800C1912D00FAEECF00FBF4DC00FCF5
      DF00FCF3DD00FCF4DC00FAF4DB00FBF3D800FBF1D800F9F2D700FAF0D600FAF1
      D500FAF0D400F8EED300F9EFD200F9EED100F7ECCE00F8EDCE00F8ECCD00F8EA
      CC00F6EBCB00F7EACA00F7E8C900F5E9C800F6E9C700F6E8C600F4E7C400F5E8
      C500F5E7C600F5E8C700F3E4BE00F0DDAE00EDD49900E9CB8400E6C47500E5BF
      6900E3BE6800E4BE6700E3BC6500E2BC6500E3BC6400E1BB6200E2B86000E1B8
      5C00DFB75B00E0B45900DEB45700DFB35300DDB05200DEB04E00DDAF4D00DBAE
      4B00DCAB4700DAAA4500D9A63E00E3BB6300EED18B00B1770000C8A256000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAF8F100A4630000EFD38D00D2992600CF911700CF921800CD911400CE8E
      1300CC8E1100CD8D0F00CC8A0B00CA8A0A00CB890800C9870400C67F0000EACA
      7D00C3912700D6BA820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A397F200B3A7
      F500DAD0F900F9F0FE00F4ECFE00F3E9FC00F2E9FD00EFE8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E0D8
      FB00E0D5FB00DFD5FB00DDD5FA00DAD0F900D5CBF900D3C9F900C9BEF800B4A9
      F400A295F2009A8CF1009C8FF100A194F200A295F2009D90F100998BF1009D90
      F100AA9DF300BFB4F600CFC5F800D3C8F900CABFF800C0B5F700BEB4F700BFB2
      F500BCB2F600BCB0F600B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A79AF200AEA2
      F300D7CDFA009D8FF200D2CDF900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFC
      FB00AB6F0000CDA54E00FBF0D400FAF3DB00FCF4DE00FCF4DC00FAF4DB00FBF3
      D800FBF1D800F9F2D700FAF0D600FAF1D500FAF0D400F8EED300F9EFD200F9EE
      D100F7ECCE00F8EDCE00F8ECCD00F8EACC00F6EBCB00F7EACA00F7E8C900F5E9
      C800F6E9C700F6E8C600F4E6C300F5E7C300F5E5C200F5E6C100F4E5C000F4E4
      C100F4E6C200F5E5C200F2E1BB00F1DEB200EDD59D00EACC8900E5C37400E2BC
      6400E1B85A00E0B85B00E1B65B00E0B65900DFB65900E0B45800DEB35700DFB3
      5300DDB05200DEB04E00DDAF4D00DBAE4B00DCAB4700DAAB4600DBA94300D8A5
      3B00E4BC6500EDD18C00B2780000C7A053000000000000000000000000000000
      000000000000000000000000000000000000E2CCA300B8810F00EDCD8000CD8E
      1200D0921900CF921800CD911400CE8E1300CC8E1100CD8D0F00CC8A0B00CA8A
      0A00CB890800C9880400C8820000D9A73D00E0BE6D00BA892800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0CBF8009A8DF100D4CAF900F4EAFD00F7EFFE00F3ECFE00F3E9
      FC00F2E9FD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DAFA00E3DAFB00E0D8FB00E0D6FB00DDD4FA00D7CCF900D4C9
      F900BCB0F5009C8EF1009A8DF100B9B0F500DCD7FA00F2F0FD00F9F8FE00FDFD
      FE00FDFDFE00FAFAFE00F4F3FD00E2DEFB00C6BFF700A396F2009384F000A99D
      F300CBC0F800D6CCF900C7BCF700BDB1F500BCB1F500BCAFF600B9ADF600B9AD
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AC9EF400A99EF400A89BF200A496F200BFB4F600CBC0F7009486F100FEFE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6F1E500A3630000D3AD5E00FDF3
      DA00FBF2DB00FCF4DD00FAF4DB00FBF3D800FBF1D800F9F2D700FAF0D600FAF1
      D500FAF0D400F8EED300F9EFD200F9EED100F7ECCE00F8EDCE00F8ECCD00F8EA
      CC00F6EBCB00F7EACA00F7E8C900F5E9C800F6E9C700F6E8C600F4E6C300F5E7
      C300F5E5C200F5E6C100F3E5C000F4E3BF00F4E4BE00F4E3BD00F3E2BC00F3E2
      BC00F3E2BD00F4E3BD00F2E1BB00F2E0B800F0DBAD00EBD29A00E8C98400E4C0
      7000E0B75D00DEB04E00DDB04E00DDB04C00DCAE4C00DDAE4A00DCAD4A00DBAD
      4900DBAB4700DAAA4500DBA94300D9A84100D6A33800E3BD6600EFD59100AF74
      0000C7A152000000000000000000000000000000000000000000000000000000
      0000D1B07000C6973100E8C57400CD8E1200D0931A00CF921800CD911400CE8E
      1300CC8E1100CD8D0F00CC8A0B00CA8A0A00CB890800C9880400C8840000D197
      2000E9CC8500B27B0B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009183F000C6BBF700E7DE
      FB00FBF2FE00F6EEFE00F3ECFE00F3E9FC00F2E9FD00EFE8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E5DAFA00E3DAFB00E2D9
      FB00DCD2F900D7CDF900C4B9F7009889F000A094F200DFDCFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2F1FD00BCB3F6008F80F000A79AF200D3C9F900D3C9
      F900BEB3F600BAAEF500B9ADF600B9ADF600B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F200A498F200D5CBFA00AA9EF300BDB4F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F1E600A3600000D0AA5900FBF1D600FBF2D800FBF5DC00FBF3
      D800FBF1D800F9F2D700FAF0D600FAF1D500FAF0D400F8EED300F9EFD200F9EE
      D100F7ECCE00F8EDCE00F8ECCD00F8EACC00F6EBCB00F7EACA00F7E8C900F5E9
      C800F6E9C700F6E8C600F4E6C300F5E7C300F5E5C200F5E6C100F3E5C000F4E3
      BF00F4E4BE00F4E3BD00F2E1BC00F3E2BB00F3E0BA00F3E1B700F1E0B700F2DF
      B600F2DFB600F1DFB700F2E0B800F2E0B800F1E1BB00F1DEB600EDD6A400EACD
      8F00E5C57F00E2BD6C00DFB45900DBAD4A00DBAA4500D9A84100D9A63C00D8A5
      3A00D7A43800D6A03100E2B96100F3D99600B0730000C69F4F00000000000000
      000000000000000000000000000000000000C3984300D2A84C00E8C57500CD8E
      1200D0931A00CF921800CD911400CE8E1300CC8E1100CD8D0F00CC8A0B00CA8A
      0A00CB890800C9880400C9840000D0941C00EBD18B00AF740000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEB6F600A89BF200DBD1F900FBF3FE00F8EFFE00F6EEFE00F3ECFE00F3E9
      FC00F2E9FD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E6DDFC00E5DBFA00E4DBFB00DAD0F900D3C9F800AB9FF3009689F000DAD5
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00B7AFF5009083F000BEB2F600D9CFFA00C2B8F600B7ABF500B9AC
      F600B6ACF400B6AAF500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A396F200B4A9F500D6CCF8009181
      F000F7F6FD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F3EA00A96B
      0000C4973800FAEED000FAF0D600FBF4DA00FBF2D800F9F2D700FAF0D600FAF1
      D500FAF0D400F8EED300F9EFD200F9EED100F7ECCE00F8EDCE00F8ECCD00F8EA
      CC00F6EBCB00F7EACA00F7E8C900F5E9C800F6E9C700F6E8C600F4E6C300F5E7
      C300F5E5C200F5E6C100F3E5C000F4E3BF00F4E4BE00F4E3BD00F2E1BC00F3E2
      BB00F3E0BA00F3E1B700F1E0B700F2DEB600F2DFB500F0DDB400F1DEB300F1DC
      B000EFDDB100F0DCB000F0DBB100F0DCB000EFDCB100F0DCB200F0DDB300EFDB
      B100EDD5A300EAD09700E8CA8C00E4C47E00E1BB6B00DFB45C00D9A84300E5C0
      6F00F1D99900B1760000C7A05100000000000000000000000000000000000000
      0000C4994700D5AD5200E8C67400CC8D1000CF921800CE911600CD901300CE8E
      1200CC8E1100CD8D0F00CC8A0B00CA8A0A00CB890800C9880400C9840000D095
      1D00ECD28E00AF75000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8FE009385F100CDC2F700EEE5FC00FBF3
      FE00F8EEFE00F6EEFE00F3ECFE00F3E9FC00F2E9FD00EFE8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E6DDFC00E6DDFC00E6DCFB00DAD1F900D1C7
      F8009D8FF100AEA4F400FEFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E5FB009B8F
      F100AB9EF200DAD0F900C6BCF700B6AAF500B6ACF400B6AAF500B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A598F200A094F200D4CAF900AFA3F400BBB2F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFCF900B5801600B57E0F00F4E6C000FBF1
      D700FBF1D800FAF2D700FAF0D600FAF1D500FAF0D400F8EED300F9EFD200F9EE
      D100F7ECCE00F8EDCE00F8ECCD00F8EACC00F6EBCB00F7EACA00F7E8C900F5E9
      C800F6E9C700F6E8C600F4E6C300F5E7C300F5E5C200F5E6C100F3E5C000F4E3
      BF00F4E4BE00F4E3BD00F2E1BC00F3E2BB00F3E0BA00F3E1B700F1E0B700F2DE
      B600F2DFB500F0DDB300F0DDB100F0DCAF00EFDDB100F0DCB000F0DAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED7A800EED8A800EED7A900EDD8
      AA00EED8A900EED7AA00EDD8AA00EBD29F00F2E0B600F8EDCE00B8841900C79E
      4F0000000000000000000000000000000000C4994600D5B05900EACA8000CF93
      1D00D0931A00CE901600CD901300CB890700CA870300CA860100C9840000C783
      0000C8820000C7820000C67E0000CE901200EBD08B00AE750000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C8C1
      F700A799F200DAD0F900FDF6FE00F9F1FE00F8EEFE00F6EEFE00F3ECFE00F3E9
      FC00F2E9FD00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E6DD
      FC00E7DEFC00DCD2F900D3C9F8009889F000BFB6F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00ABA1F300A497F200DCD2FA00C6BA
      F700B4A9F400B6A9F500B3A7F500B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A195F200B6AAF400D6CB
      F9009688F000FBFAFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CAA45800A4630000E3CA9200FEF6DF00F9F0D500FAF1D700FAF1
      D500FAF0D400F8EED300F9EFD200F9EED100F7ECCE00F8EDCE00F8ECCD00F8EA
      CC00F6EBCB00F7EACA00F7E8C900F5E9C800F6E9C700F6E8C600F4E6C300F5E7
      C300F5E5C200F5E6C100F3E5C000F4E3BF00F4E4BE00F4E3BD00F2E1BC00F3E2
      BB00F3E0BA00F3E1B700F1DFB600F1DEB500F1DEB300F0DDB300F5E6C300F3E2
      BB00EFDBAE00EFDBAF00F0DAAF00F0DBAC00EEDAAC00EFD8AB00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000EBD19A00F2E1B800FBF1D700B6801400C59D490000000000000000000000
      0000C3984200DABB7600F7E9C700E8CA8F00E8CA9000E7CA8E00E7C98D00E6C6
      8900E5C68700E5C58600E5C58500E4C48400E3C37F00E0BA6E00E0B86A00E3C2
      7D00F5E7C200B179070000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFE009C90F100D7D0FA00F2EBFD00FBF3FE00F8F0
      FD00F7EEFD00F5EEFD00F3EBFE00F3E9FC00F2E9FD00EFE8FD00EFE6FD00ECE3
      FD00ECE3FB00E9E0FC00E9E0FC00E8DFFC00E0D6FA00D7CDF9009A8CF000BEB5
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0A6F400A497F300DCD3F900C0B5F500B4A7F400B3A7F500B3A7
      F500B0A4F500B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A397F2009F91F200DBD1FA00A698F200D0CAF800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EADBBD00A565
      0000C1923100F7ECCB00FBF1D700F9EFD500FAF0D400F8EFD300F9EFD200F9EE
      D100F7ECCE00F8EDCE00F8ECCD00F8EACC00F6EBCB00F7EACA00F7E8C900F5E9
      C800F6E9C700F6E8C600F4E6C300F5E7C300F5E5C200F5E6C100F3E5C000F4E3
      BF00F4E4BE00F4E3BD00F2E1BC00F3E2BB00F2E0BA00F3E0B700F1DFB500F1DE
      B500F6E6C200FBF1D600F4E6C600FBF0D500F2E2BB00EFDAAD00EFDAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD29D00EACF9900F2DFB600FEF6
      DF00B57F1200C59C4B000000000000000000C3964000DBBE7C00F7E7C600E7C9
      8E00E9CB9200E8CB9100E8CA9000E8C98F00E7CA8F00E7C88E00E7C98D00E6C7
      8C00E6C88B00E6C78A00E6C68700E9CE9800F8ECD000B17B0900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E1FB00A99C
      F300F1EDFE00FFFBFE00FDFAFF00FBF6FE00F9F2FD00F6EDFD00F3EBFE00F2E9
      FC00F1E8FC00EFE8FD00EFE6FD00ECE3FD00ECE3FB00E9E0FC00E9E0FC00E5DC
      FB00DBCFFA00A699F300B5ABF400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFA5F400AEA1
      F400DDD3FB00B8ACF400B3A6F400B3A7F500B0A4F500B0A4F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F3009F91F200BFB4
      F600C9BEF700A397F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAA45700A7690000D5B26A00F9EE
      D000FCF2D800F9EFD300F9EFD200F9EED100F7ECCE00F8EDCE00F8ECCD00F8EA
      CC00F6EBCB00F7EACA00F7E8C900F5E9C800F6E9C700F6E8C600F4E6C300F5E7
      C300F5E5C200F5E6C100F3E5C000F4E3BF00F4E4BE00F4E2BC00F2E1BB00F2E1
      B900F2E0B900F3E2BA00F6E9C900FCF3D900F2E4C100CEAA5E00A86A0000CDA7
      5A00FDF5DD00F3E2BB00EFD9AC00F0DBAC00EEDAAC00EFD8AB00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19C00EACF9700F2DEB500FFF8E300B5801200C69F4D000000
      0000CDA86100D6B56F00F9ECCC00E7C98C00E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C48300E8CD
      9500F8EDD000B179070000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7AEF400D0C9F800F5F2FE00FFFBFF00FDF9FF00FCF8
      FF00FCF7FF00FBF7FF00F9F4FE00F5EEFC00F2EAFD00EFE7FC00EEE5FC00ECE3
      FD00ECE3FB00E9E0FC00EAE1FC00DCD2FA00BCB1F600A194F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A195F200C2B7F600D5CAF900B1A4F400B2A6
      F400B0A4F500B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A194F200A597F200DED4FA009789F000EEEDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5EDDF00C1953C00AD710000D5B46D00F5E8C600FDF5DC00F9EF
      D400F8EDCF00F8ECCE00F8ECCD00F8EACB00F6EBCA00F7E9C900F7E8C800F5E9
      C700F6E9C600F6E7C600F4E6C300F5E7C200F4E5C100F5E5C000F3E4BF00F3E3
      BE00F3E3BC00F3E2BC00F4E4C000F6E9C800FAF0D500FBF3DA00EAD7AC00C69D
      4600B37D0F00D3B47400FBF7F100BD8E2E00CBA45400FDF5DE00F3E1BB00EFD9
      AA00EEDAAB00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EAD29B00E9CE
      9600F2DFB600FCF4DD00B8831900CCA86000D3B47600D8B97700F9EED000E7C8
      8C00E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E8CA8F00F9EFD300A96B0000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A194F200E6E1
      FB00FBF6FE00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F9F5
      FD00F9F4FE00F6F2FD00F2EDFD00EFE6FC00EBE2FB00E9E0FB00E4D9FB00D5CB
      F9009588F100EEECFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F1
      FD00988AF000DBD1FA00C0B4F600B1A5F400B0A4F500B0A4F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A295F3009D8F
      F000D5CAF900ACA0F400CBC5F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EF
      E300C8A05200AD710000C2943500E5CD9800FDF4DD00FEF5DD00FBF2D700F9EE
      D100F7ECCD00F6EACA00F7E9C900F5E8C700F5E8C600F5E8C500F4E6C300F4E7
      C300F5E6C300F5E7C400F6E8C600F7EBCB00FAF0D300FDF5DC00FCF4DD00EFDF
      B900D2B06900B37C0D00B8872200DEC697000000000000000000000000000000
      0000BC8D2D00CBA45400FFF8E100F3E1BA00EED8A800EED8AA00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EAD09A00E9CE9500F2E0B800FDF4DC00BA87
      2100AB700000DCC18600F9EFD100E7C88C00E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C8
      8A00FAF1D800AA6C0000FEFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F1FD00A093F100F3F0FD00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FD00F5F0FD00F2ECFD00E2DAFB00AFA2F400BDB5F60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8C1F700B1A5F400DCD2FA00AFA4
      F400B0A4F500B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A395F3009D91F100BEB3F600CABFF700A89DF3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1CDA200BE8E
      3100A6680000BF8F2E00D6B67000ECD9AD00FAF0D500FDF5DD00FDF4DC00FDF4
      DC00FDF4DC00FDF4DC00FDF4DD00FDF5DD00FDF5DD00FDF5DD00F8ECD100ECDA
      B200D9BB7B00C2963C00AC710000B37C0F00D3B37300F6F0E400000000000000
      00000000000000000000000000000000000000000000BA8A2700CBA45500FFFA
      E600F2E1BA00EED6A700EFD9A900EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E8CC9300F2E0B800FEF8E100B5801600D8B97A00F9EFD200E7C8
      8B00E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E6C88B00FBF4DC00AB6E0000FEFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5CFF900BBB0F500F6F2
      FE00FEFBFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F3EEFD00EFECFD00C1B9
      F600F8F7FD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000978AF000DDD3FA00BFB4F600AFA3F400B0A4F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A395F3009F93
      F100A89DF200DCD3FA009688F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EADBBD00D2B37500BD8E
      3000AD720000B27B0B00B8861F00BE8E2D00BF923200BF913200C0923300BB8B
      2700B7841B00B0770700AC710000B5801700CBA75E00E2CEA400FDFDFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B9882500CBA55600FFF9E400F2E1BA00EED7A600EDD7
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9CF9800E8CB9200F2DF
      B600FBF4DB00F4E8C600F6EACC00E7C88B00E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C8
      8A00FBF5DD00AB6D0000FEFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB2F600D2C9F800F9F4FE00FFFBFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F0ECFD00DDD7FA00CFC8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1CBF800B3A7F400D7CD
      F900ACA0F400B0A4F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A395F300A094F100A093F200DED4FA009F91F100E8E4
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F6F0E400EEE3
      CC00EDE0C600EDE0C700EDE0C700EDE1C800F5EEE000FBF9F400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA89
      2700CCA45500FFF8E400F3E2BA00ECD6A500EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800E9CE9700E8CB9100F1DEB500FBF2D900F6EACB00E7C8
      8B00E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E6C88A00FCF5DE00AB6D0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA9EF300DFD9FA00FAF7
      FE00FEFAFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F2FE00F4F1FE00F0ECFD00CCC5F800EEEC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009688F000E2D8FA00B4A8F500AFA3F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A395F300A094
      F1009A8EF100D2C7F800B3A7F400D0CAF8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BC8D2D00CCA55500FFF9E600F2E1
      B900ECD4A200EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9600E7CA9000F1DEB500F9EFD300E7C98D00E9CA9000E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C8
      8A00FCF5DF00AB6E0000FAF6F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C8FF100ECE6FC00FDF9FE00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FE00F3F0FD00EAE4FC00C4BCF600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEA4F400D3C8
      F800C0B5F600AEA2F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A395F300A095F1009B8EF100C5BAF700C4B9F600BCB3
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB8A2900CCA55600FFFDEB00F1E0B800ECD4A100EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CD9500E7CA9000F1DCB100E9CD
      9400E9CA9000E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E6C88A00FCF5E000AB6F0000F3ECDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009182F000F6F2FE00FEFA
      FD00FEFAFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F2FE00F2EDFD00E0DBFA00D7D2F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCC6F800BFB4F600CFC6F900ACA0F300ADA1F400ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A395F300A095
      F1009C8FF100B8ADF500D2C7F800ABA0F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BA892600CBA4
      5500FFFEEC00F3E1B900EDD3A100ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E8CC9400E8CB8F00E8CB9100E9CA9000E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C7
      8900FFFCE900AF740000F4ECDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFF00988BF100F8F5FD00FEFAFF00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FE00F2EDFD00D7D0F900E8E6FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E5FC00ACA0
      F300DAD1FA00ADA0F300ADA1F400ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A395F300A095F1009D90F100ACA0F300DDD3FB009D91
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BA8A2700C9A04C00FFFCE900F2E1B900EBD3
      A000ECD4A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E8CD9200E8CB
      9100E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E6C78900FFFFEF00B0760000F4ECDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFBFF009D90F100F7F4FD00FEFA
      FF00FEFAFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F2FE00F3EEFD00D1C9F900F3F3FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F5FE00A294F300E1D8FB00AFA3F400ADA1F300ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A395F300A095
      F1009E91F100A79AF300E1D8FA009588F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BB8B2900C79D4700FFFDEB00F3E1B900EBD29E00EDD3A100EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C6
      8A00FFFFF000B0750000F4ECDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFBFF009E91F100F9F5FD00FEFAFF00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FE00F1ECFD00CAC2F800FFFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000998B
      F100E7DEFB00B1A5F400ADA1F300ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A395F300A095F1009E91F100A396F200E3DAFB009283
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BB8C2B00C79E4700FFFF
      F000F2E0B800EBD09C00EBD4A000ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E6C78A00FFFFF100B0760000F4ECDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFAFF009D90F100F8F4FD00FEFA
      FF00FEFAFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F1FE00F1EDFD00C7BEF700FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000998BF100E9DFFB00B2A5F400ADA1F300ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A395F300A095
      F1009F91F100A193F200E7DDFB009385F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BA892600C69B4500FFFFF500F2E0B800EAD19B00EBD2
      9F00ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E5C8
      8900FFFFF200B0770000F4ECDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009485F000FAF7FE00FEFAFF00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FE00F1EEFD00C7BEF700FFFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F1FD009E91
      F200E8DEFB00B1A5F400ADA1F300ADA1F400AC9EF400A99EF400A99CF200A699
      F300A699F300A398F300A395F300A095F1009E91F100A497F200E6DDFB009283
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB8C
      2B00C9A04C00FFFFF100F2E0B900EAD09B00ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E5C88900FFFFF400B0770000F4ECDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009183F000F7F2FD00FDF9
      FD00FEFAFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F2FE00F2EDFD00CDC7F900F9FAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1DDFB00A799F300E2D9FB00ADA1F300ADA1F300ADA1
      F400AC9EF400A99EF400A99CF200A699F300A699F300A398F300A395F300A095
      F1009E90F100A89CF300E6DCFB009485F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFC00F1E8D400E8D8B700E2CDA400E2CDA400E3CF
      A800EEE2CB00EDE0C800F3ECDC00FAF7F100B17A0900C9A25000FEF9E700F1E0
      B700EAD09800EAD19C00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E5C7
      8900FFFFF600B0760000F4EEDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009E91F100ECE6FC00FEFAFE00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FE00F4F1FD00D0C9F900EEEBFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBC5F800D5CD
      F800E2DAFB00B0A4F300AA9DF300AA9EF300AB9DF300A99EF400A99CF200A699
      F300A699F300A398F300A395F300A095F1009D90F100AEA3F300E1D7FA009E92
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6EFE200C3984200AD720000AE73
      0000B57F1100BB871E00C08F2B00BF902D00BE8E2A00BE8D2900BF902F00C092
      3300C0923500B7841B00EAD8AB00FEFAE600F1DFB500E9CE9600EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E5C78900FFFFF800B1780300EBDCC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AA9EF400E0DAFA00FEF9
      FE00FEFAFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F2FE00F6F1FD00D8D1F900E2DEFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7ADF500EBE7FC00EAE5FB00D8D2FA00D2CBF800C0B7
      F700B1A4F400A598F300A698F200A598F200A698F300A398F300A395F300A095
      F1009C8FF100BCB1F500D7CDF800A99DF2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5B7
      7B00AD730000D5B57200F5EACD00FFFBE900FFFEEE00FFFFF000FFFFF300FFFF
      F400FFFFF300FFFFF300FFFFF000FFFFF000FFFFEF00FFFEEF00FFFAE700FEF8
      E300FFFAE800F2E2BB00EAD09800EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E5C7
      8A00FFFFF900B1780400EADCC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB1F600D1C8F900FCF9FE00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F6F2
      FE00F5F1FE00E3DEFB00D0C9F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ACA1F400F6F1
      FD00E0DAFA00D8D2F900DAD4FA00DAD5FA00D9D3FA00D2CCF900C1B8F600ACA1
      F300A092F200A094F200A193F200A094F1009A8DF100CBC0F800C9BFF700B8B0
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDA96200C3973E00FDF8E600FFF9E600F5E4C000F0DC
      B000EDD6A600EDD5A500EDD5A300EDD6A600EED7A800EED7A700EED6A700ECD6
      A600EDD5A400EDD4A300ECD4A200ECD3A100ECD39F00ECD4A200EAD19B00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E5C78A00FFFFFA00B0760100F4EDDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3CEF900BAB0F600FCF8
      FE00FEFBFF00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F6F2FE00F5F2FE00EFEBFD00C6BEF700FAFA
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D0F900CDC6F800F6F3FE00D9D3FA00D8D2F900D9D3FA00D8D2
      FA00D7D1FA00D6D2FA00D8D3F900DAD4F900D4CEF800C1B8F600ADA2F4009F92
      F1009689F000DCD2FA00B3A6F400CDC8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4D0A900C3984100FFFC
      EB00F9EDCF00EED9AB00EFD9AC00EFDAAC00EED9AB00EED8AA00EFD9A900EDD7
      A800EDD6A600EDD6A500EDD5A500ECD5A400ECD4A200ECD3A100EBD3A000EBD2
      9F00EBD29C00EAD19C00EBD29B00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E5C7
      8A00FFFFFD00B1770300F3ECDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0EEFC009F92F100FCF8FF00FEFAFF00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F5F1FE00F7F2FE00D4CDF900DEDAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4ABF500E9E3FC00ECE7
      FC00D7D1F900D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D6D0F800D5CF
      F900D4CEF900D5D0F900D8D2F900D1CBF800C0B8F600EEE6FC009F91F100E9E6
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BC8D2D00F7ECD100FBF1D700EEDAAC00EFDBAF00F0DAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E5C7890000000000B1770300F3ECDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D8FF100EEEA
      FD00FEFAFE00FEFAFF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00E9E5FC00C8C0
      F800FCFCFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E4FB00BDB3F500F9F5FE00DFD9FA00D9D3F900D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D5D1FA00D6D0F800D5CFF900D4CDF900D2CEF900D3CDF900D1CB
      F900D9D3F900FAF6FE00A79CF200FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7D6B400CFAB6300FFFFF000F2DE
      B300EFDCAF00F0DCB000F0DAAF00F0DBAC00EEDAAC00EFD8AB00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E5C7
      890000000000B1770400F3ECDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFA5F400D9D1FA00FDF9FE00FEFAFF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F4F1FE00F7F3FE00D1CAF800D9D4F90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5ADF400E3DDFA00F1EEFD00D8D2
      F900D9D3FA00D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D6D0F800D5CF
      F900D4CDF900D2CEF900D3CDF900CFC9F800E3DEFB00EDE8FC00B0A6F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFAE6A00E6D2A600FEF8E100EFD9AB00EFDDB100F0DCB000F0DAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E5C7890000000000B1770400F3ECDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D1F900B2A8
      F400FDF9FE00FDF9FF00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F4F0FE00F5F1FE00F0EB
      FC00C7C0F700F2EFFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8D4
      FA00C3BBF600FAF6FE00DFD9FA00DAD4F900DAD4FA00D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D5D1FA00D6D0F800D5CFF900D4CDF900D2CEF900D2CCF900CFC9
      F800F3F0FD00D1C9F900CAC3F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C59C4900F3E7C800FAF0D400F0DA
      AD00EFDDB100F0DCB000F0DAAF00F0DBAC00EEDAAC00EFD8AB00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C7
      8A0000000000B1780400F3EBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F7FD009C8EF100F3F0FE00FEFAFE00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3EFFE00F7F4FE00E3DCFB00C6BFF700FCFBFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F2FD00B3A8F500EEEAFC00EDE9FC00D8D2F900DBD5
      FA00DAD4FA00D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D6D0F800D5CF
      F900D4CDF900D2CEF900D2CCF800D4CEF900FCF9FE00B0A5F400F0EEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2963F00F4E9CB00F9EED000F0DBAD00EFDDB100F0DCB000F0DAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C58400E7C78B0000000000AE740000FCFAF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ACA1
      F400D8D1F900FCF9FE00FDF9FF00FBF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00F3EFFE00F4F0
      FE00F8F4FE00D9D4F900CAC2F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2AAF400E0DA
      FA00F6F3FE00DBD5F900DAD4F900DBD5FA00DAD4FA00D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D5D1FA00D6D0F800D5CFF900D4CDF900D2CEF900D0CAF800E7E2
      FC00EEE9FD00AEA4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAA45900EEDEBA00FBF3DA00F0DA
      AC00EFDDB100F0DCB000F0DAAF00F0DBAC00EEDAAC00EFD8AB00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E6C58600E5C58400E6C8
      8B00FFFFF600AC700000FEFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDD9FA00A99CF300FCF9FF00FDF9FF00FBF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3EFFE00F3EEFE00F4F0FE00F8F5FE00D7D1F900C9C1
      F700FFFFFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7ADF500D6CFF900FBF7FD00E2DCFA00DAD4F900DAD4FA00DBD5
      FA00DAD4FA00D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D6D0F800D5CF
      F900D4CDF900D2CDF900D0C9F800FBF8FE00CAC1F800D0CBF800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8BD8400DABE8200FFFEEF00EFD8A900EFDDB100F0DCB000F0DAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E6C78900E6C58600E5C38100ECD5A200FAF3DC00AF760200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009889F100EEE9FC00FDF9FE00FCF8FF00FCF6FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00F3F0FE00F4EE
      FE00F2EEFE00F5EFFD00FAF7FE00D9D1F900C6BFF700F5F4FD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00B6ABF400D3CCF900FCF9FF00E6E0
      FB00DBD5F900DBD5FA00DAD4FA00DBD5FA00DAD4FA00D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D5D1FA00D6D0F800D5CFF900D4CDF900D0CCF800DFDAFA00F9F6
      FE00A79BF200FEFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5EEE200BA8B2800FFFFF700F4E5
      BF00EFDBAE00F0DCB000F0DAAF00F0DBAC00EEDAAC00EFD8AB00EFD9AA00EDD8
      A900EED6A600EED7A500EED5A600ECD6A500EDD5A200EDD3A200EBD4A100ECD2
      A000ECD39D00EAD19D00EBD29C00EBD09A00EBD19B00E9D09800EACE9800EACF
      9700E8CE9600E9CC9500E9CD9200E9CC9200E9CA9100E7CB9000E8CA8F00E8C8
      8E00E6C98D00E7C78C00E7C88B00E5C68A00E6C78900E5C58600E3BF7B00FDF2
      D900DDC28800C2963F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDC7F800B1A6F400FFFCFF00FCF8
      FF00FCF6FF00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3F0FE00F4EEFE00F2EFFE00F2EDFC00F3EFFC00FCF8
      FE00E3DEFB00C4BBF700E1DDFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E5FC00B4AA
      F400DBD4F900FDF9FE00E7E3FB00DBD5FA00DCD6F900DCD6FA00DAD4FA00DBD5
      FA00DAD4FA00D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D6D0F800D5CF
      F900D3CDF800D0CAF800FAF6FD00D5CFF900C2BBF60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0923800E3CC9D00FFFFF100EFDBAF00EFDBAE00F0DAAF00F0DB
      AC00EEDAAC00EFD8AB00EFD9AA00EDD8A900EED6A600EED7A500EED5A600ECD6
      A500EDD5A200EDD3A200EBD4A100ECD2A000ECD39D00EAD19D00EBD29C00EBD0
      9A00EBD19B00E9D09800EACE9800EACF9700E8CE9600E9CC9500E9CD9200E9CC
      9200E9CA9100E7CB9000E8CA8F00E8C88E00E6C98D00E7C78C00E7C88B00E5C6
      8A00E5C78900E3C17E00EDD6A400FFFFFB00AE730000EEE1C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009385F000EEEAFD00FCF8FE00FCF7FF00FBF7FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00F3F0FE00F4EE
      FE00F2EFFE00F3EEFC00F1ECFD00F2EDFC00FAF6FE00F2EDFD00D0C9F800CAC3
      F700EBE8FC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9FE00CAC3F800BCB2F600E7E2FC00FBF8FE00E4DFFB00DBD5FA00DED8
      FB00DDD7F900DCD6FA00DAD4FA00DBD5FA00DAD4FA00D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D5D1FA00D6D0F800D5CEF900D1CBF800E2DDFA00FBF8FE00A498
      F200FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F4EB00AC710000F7EF
      D800FFFDED00EFDDB200EED7A900EFD9AA00EED8A900EED7A800EED8A700EDD7
      A700EDD5A500EDD6A400EDD4A400ECD5A300ECD4A100ECD2A000EBD39F00EBD1
      9E00EBD29B00EAD09B00EAD19A00EACF9800EAD09900E9CF9700E9CE9600E9CE
      9500E8CD9400E8CC9400E8CC9100E8CB9000E8CA8F00E7CA8E00E7C98D00E7C8
      8C00E6C88B00E6C78B00E6C78900E4C48600E3C17E00EED7A60000000000C498
      3D00C39842000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFC9F900ACA0F300FFFE
      FE00FBF7FE00FBF7FF00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3F0FE00F4EEFE00F2EFFE00F3EEFC00F2EDFD00F0EB
      FD00F0EBFC00F6F1FD00FBF8FD00E9E4FC00CEC6F800CAC2F700E2DEFB00F5F4
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECEAFC00CCC5F700BEB5F600D8D2FA00F7F3FD00F7F3
      FD00E2DCFA00DDD7FA00DDD7FB00DED8FB00DDD7F900DCD6FA00DAD4FA00DBD5
      FA00DAD4FA00D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D6D0F800D4CE
      F800D4CEF800FDF9FE00CDC5F700CBC4F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8D7B500A96C0000ECDEBA0000000000FCF5DD00F5E6
      C200F3E2BC00F3E2BD00F2E0B700F0DDB200F0DCB100F0DCB000F0DBB000EFDB
      AF00EFDAAD00EFD9AC00EED9AB00EED9AA00EED9A800EED7A800EED8A700EED7
      A700EBD3A000EAD09900EACF9900EACF9800E9CE9700E9CD9600E9CD9400E9CC
      9300E9CB9200E7CB9100E7CA8F00E8C98F00E7C98E00E6C58700E7C88D00EDD6
      A500FCF4DA0000000000C2963A00B07806000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000998BF100E2DCFB00FDF9FE00FBF6FF00FAF6FF00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00F3F0FE00F4EE
      FE00F2EFFE00F3EEFC00F2EDFD00F1ECFD00EFEAFD00EFEAFC00F0EBFC00F8F4
      FD00FBF7FE00EEEAFC00D8D1F900C9C1F700C8C1F800D7D2F900E2DEFB00EBE8
      FB00EAE8FC00EBE8FC00E7E4FC00DDD8FA00D0C9F900BDB4F600C4BCF600DCD5
      F900F6F1FD00FCF8FE00EBE6FC00DED9FA00DED9FA00DFD9FB00DDD7FB00DED8
      FB00DDD7F900DCD6FA00DAD4FA00DBD5FA00DAD4FA00D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D5D1FA00D6CFF800D1CBF800EDE9FC00F2EEFD00A59AF3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECDF
      C400A96C0000C1943A00EBDCB600FFFCEC00FFFFF600FFFFF700FFFFF700FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF800FFFFF900FFFFF900FFFF
      F900FFFFF900FFFFF900FFFFFA00FFFFF900FFFFFB00FFFFFC00FFFFFD00FFFF
      FD00FFFFFD00FFFFFD00FFFFFE00FFFFFE00FFFFFE0000000000000000000000
      00000000000000000000FFFFFE00FDF8E700DDC58D00A96A0000BF9236000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E3FB009A8C
      F100FCF8FE00FBF6FD00FAF6FF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3F0FE00F4EEFE00F2EFFE00F3EEFC00F2EDFD00F1EC
      FD00EFEAFD00F0EBFD00EEE9FD00ECE7FC00EEEAFC00F6F1FD00FCF7FE00FDF7
      FE00F1EBFC00E4DEFB00DBD4FA00D4CCF900D1CAF800D1CAF800D3CCF800DAD3
      F900E5DFFA00F3EDFD00FDF9FE00FAF6FE00EDE8FB00DFDAFA00DFDAFA00DFDA
      FA00DEDAFB00DFD9FB00DDD7FB00DED8FB00DDD7F900DCD6FA00DAD4FA00DBD5
      FA00DAD4FA00D8D2FA00D9D3FA00D8D2FA00D7D0FA00D5D1FA00D4CDF800DED7
      F900FFFCFE00B3A9F400E7E5FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9BE8700B47E1300AF76
      0400B5801500B47D1000B37D0F00B37D0F00B37D0F00B37D0F00B37D0F00B37C
      0E00B6811700B9851F00B8851E00B8851E00B8851E00B8851E00B8851E00B885
      1E00BB8A2500B9861E00B9861E00B9861E00B9861E00B9861E00BD8D2B00BE8F
      2F00BE8F2E00BE8F2F00BD8E2C00BA882200BA882200BD8D2A00B57F1400AC72
      0000BD8D2E00ECDFC50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6ADF400C0B6F500FFFDFE00FAF5FE00F8F5
      FD00F9F3FE00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00F3F0FE00F4EE
      FE00F2EFFE00F3EEFC00F2EDFD00F1ECFD00EFEAFD00F0EBFD00EFEAFD00EDE8
      FD00ECE8FC00ECE7FC00EAE6FC00EDE9FC00F2EEFC00F8F4FD00FBF7FE00FCF8
      FE00FCF9FE00FDF9FE00FCF8FE00FBF7FE00F6F2FD00EEEAFC00E7E1FB00E0DB
      FA00E0DBFA00E0DBFA00E1DCFB00E0DBFB00DEDAFB00DFD9FB00DDD7FB00DED8
      FB00DDD7F900DCD6FA00DAD4FA00DBD5FA00DAD4FA00D8D2FA00D9D3FA00D8D2
      FA00D7D0FA00D4D0F900D5CFF900FFFCFF00D2CBF800C2B9F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F5ED00F8F4EB00F8F4
      EB00F8F4EB00F8F4EB00F8F4EB00F8F4EB00F8F3EA00F8F3EA00F8F3EA00F8F3
      EA00F8F3EA00F8F3EA00F8F3EA00F8F3EA00F5EFE200F0E7D200F1E7D400F1E7
      D400F1E7D400F1E7D400F1E7D300F0E6D200F0E6D200F1E7D300EFE4CE00E9DA
      BC00EADBBC00EDDFC600F2E9D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00998CF100E1DBFB00FFFAFF00F8F5FD00F9F3FE00F8F4FE00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3F0FE00F4EEFE00F2EFFE00F3EEFC00F2EDFD00F1EC
      FD00EFEAFD00F0EBFD00EFEAFD00EEE8FD00ECE9FD00EDE8FD00EBE6FD00EAE6
      FD00E8E5FB00E8E3FB00E7E2FB00E8E3FB00E8E3FC00E7E2FC00E6E0FB00E4DF
      FB00E3DEFB00E2DDFA00E3DDFA00E2DEFB00E2DDFB00E0DBFB00E1DCFB00E0DB
      FB00DEDAFB00DFD9FB00DDD7FB00DED8FB00DDD7F900DCD6FA00DAD4FA00DBD5
      FA00DAD4FA00D8D2FA00D9D3FA00D8D2FA00D6D0F900D3CEF900F7F3FD00EBE5
      FB00ADA3F4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBE8FC009082F000FBF7FF00FAF7
      FE00F9F3FD00F8F4FE00F7F3FE00F5F1FE00F6F2FE00F5F1FE00F3F0FE00F4EE
      FE00F2EFFE00F3EEFC00F2EDFD00F1ECFD00EFEAFD00F0EBFD00EFEAFD00EEE8
      FD00ECE9FD00EDE8FD00ECE6FD00EBE7FD00E9E6FB00EAE5FC00E8E3FC00E8E4
      FC00E7E2FB00E6E1FB00E6E0FC00E5E1FC00E5E0FC00E3DFFA00E4DDFB00E3DE
      FB00E2DDFB00E0DBFB00E1DCFB00E0DBFB00DEDAFB00DFD9FB00DDD7FB00DED8
      FB00DDD7F900DCD6FA00DAD4FA00DBD5FA00DAD4FA00D8D2FA00D9D3FA00D7D1
      F900D3CCF900F1ECFD00FAF6FE00A99DF200F6F5FE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2CCF8009E90F200FFFDFF00FBF6FE00F7F3FD00F7F3FE00F5F1
      FE00F6F2FE00F5F1FE00F3F0FE00F4EEFE00F2EFFE00F3EEFC00F2EDFD00F1EC
      FD00EFEAFD00F0EBFD00EFEAFD00EEE8FD00ECE9FD00EDE8FD00ECE6FD00EBE7
      FD00E9E6FB00EAE5FC00E8E3FC00E9E4FC00E8E3FC00E6E2FC00E7E0FC00E6E1
      FC00E5E0FC00E3DFFA00E4DDFB00E3DEFB00E2DDFB00E0DBFB00E1DCFB00E0DB
      FB00DEDAFB00DFD9FB00DDD7FB00DED8FB00DDD7F900DCD6FA00DAD4FA00DBD5
      FA00DAD4FA00D8D2FA00D8D2F900D4CEF900EDEAFD00FEFBFF00ACA1F300EBE9
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCB3F500AA9E
      F300FFFDFF00FAF6FE00F6F2FD00F5F1FE00F6F2FE00F5F1FE00F3F0FE00F4EE
      FE00F2EFFE00F3EEFC00F2EDFD00F1ECFD00EFEAFD00F0EBFD00EFEAFD00EEE8
      FD00ECE9FD00EDE8FD00ECE6FD00EBE7FD00E9E6FB00EAE5FC00E8E3FC00E9E4
      FC00E8E3FC00E6E2FC00E7E0FC00E6E1FC00E5E0FC00E3DFFA00E4DDFB00E3DE
      FB00E2DDFB00E0DBFB00E1DCFB00E0DBFB00DEDAFB00DFD9FB00DDD7FB00DED8
      FB00DDD7F900DCD6FA00DAD4FA00DBD5FA00DAD4FA00D8D2F900D5CFF900F0EB
      FC00FEFAFF00B4AAF400DED9FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5ACF500B1A5F500FFFEFF00FAF6FD00F5F1
      FD00F6F2FE00F5F1FE00F3F0FE00F4EEFE00F2EFFE00F3EEFC00F2EDFD00F1EC
      FD00EFEAFD00F0EBFD00EFEAFD00EEE8FD00ECE9FD00EDE8FD00ECE6FD00EBE7
      FD00E9E6FB00EAE5FC00E8E3FC00E9E4FC00E8E3FC00E6E2FC00E7E0FC00E6E1
      FC00E5E0FC00E3DFFA00E4DDFB00E3DEFB00E2DDFB00E0DBFB00E1DCFB00E0DB
      FB00DEDAFB00DFD9FB00DDD7FB00DED8FB00DDD7F900DCD6FA00DAD4FA00DBD5
      FA00D9D3F900D6D0F900F3EEFE00FDF8FF00B6ACF500DCD8FA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0A7F400ACA0F30000000000FAF6FE00F5F1FD00F4F0FE00F3F0FE00F4EE
      FE00F2EFFE00F3EEFC00F2EDFD00F1ECFD00EFEAFD00F0EBFD00EFEAFD00EEE8
      FD00ECE9FD00EDE8FD00ECE6FD00EBE7FD00E9E6FB00EAE5FC00E8E3FC00E9E4
      FC00E8E3FC00E6E2FC00E7E0FC00E6E1FC00E5E0FC00E3DFFA00E4DDFB00E3DE
      FB00E2DDFB00E0DBFB00E1DCFB00E0DBFB00DEDAFB00DFD9FB00DDD7FB00DED8
      FB00DDD7F900DCD6FA00DAD4FA00D9D3F900DAD5FA00FAF6FE00F8F4FE00AFA4
      F300E0DCFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6ADF500A194F200FEFA
      FF00FEFAFF00F4F0FD00F3EFFD00F4EEFE00F2EFFE00F3EEFC00F2EDFD00F1EC
      FD00EFEAFD00F0EBFD00EFEAFD00EEE8FD00ECE9FD00EDE8FD00ECE6FD00EBE7
      FD00E9E6FB00EAE5FC00E8E3FC00E9E4FC00E8E3FC00E6E2FC00E7E0FC00E6E1
      FC00E5E0FC00E3DFFA00E4DDFB00E3DEFB00E2DDFB00E0DBFB00E1DCFB00E0DB
      FB00DEDAFB00DFD9FB00DDD7FB00DED8FB00DCD6F900DBD5F900D7D1F900E3DD
      FA0000000000EBE6FC00A79BF200EFEDFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBC5F7009285F000EBE5FC0000000000F6F2FE00F3EE
      FD00F2EEFE00F3EEFC00F2EDFD00F1ECFD00EFEAFD00F0EBFD00EFEAFD00EEE8
      FD00ECE9FD00EDE8FD00ECE6FD00EBE7FD00E9E6FB00EAE5FC00E8E3FC00E9E4
      FC00E8E3FC00E6E2FC00E7E0FC00E6E1FC00E5E0FC00E3DFFA00E4DDFB00E3DE
      FB00E2DDFB00E0DBFB00E1DCFB00E0DBFB00DEDAFB00DFD9FB00DDD7FB00DDD7
      FB00DAD4F900DBD5F900F4F0FD0000000000D0C8F800AFA5F300FFFFFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3DF
      FA009587F000C5BDF700FFFEFF00FDFAFE00F3EFFE00F2EDFC00F1ECFC00F1EC
      FD00EFEAFD00F0EBFD00EFEAFD00EEE8FD00ECE9FD00EDE8FD00ECE6FD00EBE7
      FD00E9E6FB00EAE5FC00E8E3FC00E9E4FC00E8E3FC00E6E2FC00E7E0FC00E6E1
      FC00E5E0FC00E3DFFA00E4DDFB00E3DEFB00E2DDFB00E0DBFB00E1DCFB00E0DB
      FB00DEDAFB00DED8FA00DBD5FA00DCD6FB00EBE6FB0000000000F0ECFD00B5AB
      F400CBC4F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF9FE00ADA3F400A092F200E8E2
      FB0000000000FAF6FE00F1EDFD00EFEAFC00EFEAFD00F0EBFD00EFEAFD00EEE8
      FD00ECE9FD00EDE8FD00ECE6FD00EBE7FD00E9E6FB00EAE5FC00E8E3FC00E9E4
      FC00E8E3FC00E6E2FC00E7E0FC00E6E1FC00E5E0FC00E3DFFA00E4DDFB00E3DE
      FB00E2DDFB00E0DBFB00E1DCFB00DFDAFA00DCD7FA00DDD7FA00ECE7FC00FFFC
      FF00FDF8FE00C8BFF700B2A8F400EFEEFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDBFA00978AF000B2A7F400F1ECFC0000000000FCF7
      FE00F1ECFC00EEE9FC00EEE9FC00EDE8FC00ECE9FC00EDE7FD00ECE6FD00EBE7
      FD00E9E6FB00EAE5FC00E8E3FC00E9E4FC00E8E3FC00E6E2FC00E7E0FC00E6E1
      FC00E5E0FC00E3DEFA00E4DDFA00E2DDFA00E1DCFA00DED9FA00DDD8FA00E3DE
      FB00F2EEFD0000000000FEFAFE00CFC7F800ABA0F300DDD8FA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCC5F8009487F000AEA3F300EAE4FB0000000000FFFDFF00F8F4FD00EFEB
      FC00EBE7FC00EBE6FC00EAE5FC00EAE6FD00E9E5FB00E9E4FB00E8E3FB00E8E3
      FB00E7E2FB00E6E1FB00E6E0FB00E4E0FB00E3DEFB00E1DCFA00E2DBFA00E1DC
      FA00E7E2FB00F3EEFC00FFFDFF0000000000F4EFFD00C5BCF600A99DF300D4CF
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3CDF9009D91
      F100A194F100C8BFF700ECE8FC00FFFEFF0000000000FFFBFF00F9F4FE00F3EF
      FE00EFEBFC00ECE7FC00EAE5FC00EBE6FC00E9E5FC00E9E3FC00ECE6FC00EEE9
      FC00F2EEFD00F9F5FE00FFFCFF000000000000000000F0EBFC00D1C9F800AFA4
      F400B2A8F400E0DCFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAE7FC00C1B9F600A599F200A196
      F200B7ADF400D0C8F800E3DEFB00F2EDFC00FEFAFF00FFFCFE00000000000000
      00000000000000000000FFFCFF00FDF9FE00F2EDFC00E3DCFB00D0C8F800B8AD
      F500ADA3F300B5ACF400D4CFF900F7F6FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F3FD00DCD8FA00C3BBF600B4AAF500ABA0
      F300A69AF300A89EF200A599F200A599F200A296F200ACA1F300A89CF200ACA1
      F300B3A9F400BFB7F600D2CCF800EDEBFC00FDFCFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FCFC
      FE00FDFDFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000CC0100007300000001000100
      00000000F41A00000000000000000000000000000000000000000000FFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFC0000
      FFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFE000001FFFFFFF
      FFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF00000007FFFFFFFFFFFFFF
      FFFFFFFFF00007FFFFFFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFC00000001FFFFFFFFFFFFFFFFFFFFFF
      F00007FFFFFFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFF0000000007FFFFFFFFFFFFFFFFFFFFFF00007FF
      FFFFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFE0000000003FFFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFF80000000001FFFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      000000000007FFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFE00000000
      0003FFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFF8000000000001FFFF
      FFFFFFFFFFFFFFFFF00003FFFFFFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFF0000000000000FFFFFFFFFFFF
      FFFFFFFFF00003FFFFFFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFE00000000000007FFFFFFFFFFFFFFFFFFF
      F00003FFFFFFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFE00000000000007FFFFFFFFFFFFFFFFFFFF00003FF
      FFFFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFC00000000000003FFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFF800000000000001FFFFFFFFFFFFFFFFFBFF00003FEFFFFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFF00
      0000000000000FFFFFFFFFFFFFFFFC00000000001FFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFF0000000000
      00000FFFFFFFFFFFFFFFF0000000000007FFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFE0000000E00000007FF
      FFFFFFFFFFFFE0000000000003FFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFC000000FFF0000007FFFFFFFFFF
      FFFFE0000000000001FFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFC000003FFFC000003FFFFFFFFFFFFFFC000
      0000000001FFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFF800000FFFFF000003FFFFFFFFFFFFFFC00000000000
      00FFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFF800001FFFFF800001FFFFFFFFFFFFFF80000000000000FFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFF800003FFFFFC00001FFFFFFFFFFFFFF80000000000000FFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFF000
      007FFFFFE00000FFFFFFFFFFFFFF80000000000000FFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFF00000FFFFFF
      F00000FFFFFFFFFFFFFF80000000000000FFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFE00001FFFFFFF80000FF
      FFFFFFFFFFFF80000000000000FFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFE00001FFFFFFFC00007FFFFFFFFF
      FFFFC0000000000000FFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFE00003FFFFFFFC00007FFFFFFFFFFFFFC000
      0000000001FFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFE00003FFFFFFFE00007FFFFFFFFFFFFFE00000000000
      01FFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFE00003FFFFFFFE00007FFFFFFFFFFFFFE0000000000003FFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFE00007FFFFFFFE00003FFFFFFFFFFFFFF0000000000007FFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFC000
      07FFFFFFFE00003FFFFFFFFFFFFFFC00000000000FFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFC00007FFFFFF
      FF00003FFFFFFFFFFFFFFF00100000007FFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFC00007FFFFFFFF00003F
      FFFFFFFFFFFFFFFFF00003FFFFFFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFC0000FFFFFFFFF00003FFFFFFFFF
      FFFFFFFFF00003FFFFFFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFC00007FFFFFFFF00003FFFFFFFFFFFFFFFFF
      F00007FFFFFFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFC00007FFFFFFFF00003FFFFFFFFFFFFFFFFFF00007FF
      FFFFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFC00007FFFFFFFE00003FFFFFFFFFFFFFFFFFF00007FFFFFFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFE00007FFFFFFFE00007FFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFE000
      07FFFFFFFE00007FFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFE00007FFFFFF
      FE00007FFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFE00003FFFFFFFC00007F
      FFFFFFFFFFFFFFFFF00003FFFFFFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFE00003FFFFFFFC00007FFFFFFFFF
      FFFFFFFF8000007FFFFFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFF00001FFFFFFF80000FFFFFFFFFFFFFFFFFC
      0000000FFFFFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFF00001FFFFFFF80000FFFFFFFFFFFFFFFFF000000003
      FFFFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFF00000FFFFFFF00000FFFFFFFFFFFFFFFFC000000001FFFFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFF800007FFFFFE00000FFFFFFFFFFFFFFFF80000000007FFFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFF800
      003FFFFFC00001FFFFFFFFFFFFFFFE00000000003FFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFF800001FFFFF
      800001FFFFFFFFFFFFFFFC00000000001FFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFC00000FFFFF000003FF
      FFFFFFFFFFFFF800000000000FFFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFC000003FFFE000003FFFFFFFFFF
      FFFFF0000000000007FFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFE0000007FF0000007FFFC1FFFFFFFFFE000
      0000000003FFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFE0000000000000007FFF003FFFFFFFFC00000000000
      01FFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFF000000000000000FFFE001FFFFFFFF80000000000000FFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFF000000000000000FFFC000FFFFFFFF000000000000007FFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFF80
      00000000000007FF80007FFFFFFE000000000000003FFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFC000000000
      000003FF80003FFFFFFC000000000000003FFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFE000000000000001FF
      00003FFFFFFC000000000000001FFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFE000000000000000FF00003FFF
      FFF8000000000000000FFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFF0000000000000007F00003FFFFFF80000
      03FFC000000FFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFF8000000000000003F00003FFFFFF000000FFFF000
      0007FFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFC000000000000001F00003FFFFFE000001FFFFC000007FFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFE000000000000000F00003FFFFFE000007FFFFE000003FFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      800000000000000700003FFFFFC00000FFFFFF800003FFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFC0000000
      0000000300003FFFFFC00001FFFFFFC00003FFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFF000000000000001
      00003FFFFFC00003FFFFFFE00001FFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFF80000000000000000001FFF
      FFC00003FFFFFFE00001FFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFE0000000F00000000001FFFFF800007
      FFFFFFF00001FFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFC000003F80000000001FFFFF800007FFFFFFF8
      0001FFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFF80001FFC0000000001FFFFF80000FFFFFFFF80000FFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFF803FFFE0000000003FFFFF80000FFFFFFFFC0000FFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFFF0000000001FFFFF80001FFFFFFFFC0000FFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FFF8000000001FFFFF80001FFFFFFFFC0000FFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFC0000
      00001FFFFF00001FFFFFFFFC0000FFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFE000000001FFF
      FF00001FFFFFFFFC0000FFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFF000000001FFFFF00001F
      FFFFFFFE0000FFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFF800000001FFFFF00001FFFFFFFFE
      0000FFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFC00000001FFFFF80001FFFFFFFFC0000FFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFE00000001FFFFF80001FFFFFFFFC0000FFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFFC0000000001FFFFF80001FFFFFFFFC0000FFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FF00000000001FFFFF80001FFFFFFFFC0000FFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFE000000
      00001FFFFF80001FFFFFFFFC0000FFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFC00000000001FFF
      FF80000FFFFFFFF80000FFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFF800000000001FFFFF80000F
      FFFFFFF80000FFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFF800000000009FFFFFC00007FFFFFFF0
      0000FFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFF000000000009FFFFFC00007FFFFFFF00001FFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFF000000000009FFFFFC00003FFFFFFE00001FFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFF000000000009FFFFFC00001FFFFFFC00001FFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      F000000000009FFFFFE00001FFFFFFC00003FFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFF0000000
      00001FFFFFE000007FFFFF800003FFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF000000000003FFF
      FFF000003FFFFE000003FFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFF000000000003FFFFFF00000
      1FFFFC000007FFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFF800000000003FFFFFF8000007FFF000
      0007FFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFF800000000027FFFFFF8000000FFC000000FFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFC4000000004FFFFFFFC000000000000001FFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFE00000007C1FFFFFFFC000000000000001FFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FF8000000003FFFFFFFE000000000000003FFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFF80000
      001FFFFFFFFE000000000000007FFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000007FFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      0000000000FFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000
      01FFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000003FFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2000000000007FFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000008FFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFC40000000011FFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFE00000000047FFFFFFFFC000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF0800000000FFFFFFFFFC00000000000000000000000000000000000000
      000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2
      00000043FFFFFFFFFC0000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08000010F
      FFFFFFFFFC000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0800183FFFFFFFFF
      FC00000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C00FFFFFFFFFFFC000000
      00000000000000000000000000000000000000000000000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFC00000000000000
      000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000}
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 816
    Top = 209
    object N1: TMenuItem
      Caption = #21312#22495#24202#20301#32173#35703
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #34389#26041#38598
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #20581#20445#35215#23450
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #25079#23381#29992#34277#31561#32026
      Visible = False
      OnClick = N4Click
    end
    object N21: TMenuItem
      Caption = #26032#22686#24120#29992#38917
      object N15: TMenuItem
        Caption = #31185#24120#29992
        OnClick = N15Click
      end
      object N46: TMenuItem
        Caption = #20491#20154#24120#29992
        OnClick = N46Click
      end
    end
    object Clineguide1: TMenuItem
      Caption = 'Clin-eguide'
      OnClick = Clineguide1Click
    end
    object MDConsult1: TMenuItem
      Caption = 'MICROMEDEX'
      OnClick = MDConsult1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 714
    Top = 217
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 979
    Top = 217
    object N5: TMenuItem
      Caption = #33256#24202#36039#35338
      object N11: TMenuItem
        Caption = #22577#21578#26597#35426
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #19977#38498#22577#21578
        OnClick = N12Click
      end
      object PACS1: TMenuItem
        Caption = 'PACS'
        OnClick = PACS1Click
      end
      object CDFile1: TMenuItem
        Caption = 'CDFile'
        OnClick = CDFile1Click
      end
      object N22: TMenuItem
        Caption = #27298#39511
        OnClick = N22Click
      end
      object N23: TMenuItem
        Caption = #24433#20687
        OnClick = N22Click
      end
      object N24: TMenuItem
        Caption = #20839#35222#37857
        OnClick = N22Click
      end
      object N25: TMenuItem
        Caption = #30149#29702
        OnClick = N25Click
      end
    end
    object N13: TMenuItem
      Caption = #38283#21934'_'#38928#32004
      object N14: TMenuItem
        Caption = #20633#34880
      end
      object N32: TMenuItem
        Caption = #38936#34880
      end
      object N33: TMenuItem
        Caption = #29992#34880
      end
      object N16: TMenuItem
        Caption = #31777#35338#30332#36865
        OnClick = N16Click
      end
    end
    object N1231: TMenuItem
      Caption = #30149#27511
      object N9: TMenuItem
        Caption = #30149#27511'('#30149#31243')'
        OnClick = N9Click
      end
      object N10: TMenuItem
        Caption = #22806#20663
        Visible = False
        OnClick = N10Click
      end
      object N26: TMenuItem
        Caption = #30149#27511#35519#38321
        OnClick = N26Click
      end
      object bmpjpg1: TMenuItem
        Caption = #29031#29255#23384#27284
        OnClick = bmpjpg1Click
      end
      object N39: TMenuItem
        Caption = #20986#38498#30149#25688
        OnClick = N39Click
      end
      object N41: TMenuItem
        Caption = #24613#35386#30149#25688
        OnClick = N41Click
      end
      object N48: TMenuItem
        Caption = #35703#27511#32000#37636
        Hint = 'CARERECORDER'
        OnClick = N48Click
      end
      object N49: TMenuItem
        Caption = #21021#27493#22577#21578
        OnClick = N49Click
      end
    end
    object N6: TMenuItem
      Caption = #35386#26039'/'#35657#26126#26360
      object N18: TMenuItem
        Caption = #20013#25991#20057#35386
        OnClick = N18Click
      end
      object N19: TMenuItem
        Caption = #33521#25991#20057#35386
        OnClick = N19Click
      end
      object N36: TMenuItem
        Caption = #20013#25991#30002#35386
        OnClick = N36Click
      end
      object N40: TMenuItem
        Caption = #33521#25991#30002#35386
        OnClick = N40Click
      end
      object N31: TMenuItem
        Caption = #27515#20129#35657#26126#26360
        OnClick = N31Click
      end
      object N35: TMenuItem
        Caption = #23601#37291#35657#26126#26360
        OnClick = N35Click
      end
    end
    object N7: TMenuItem
      Caption = #36890#22577'/'#35387#35352
      object DNR1: TMenuItem
        Caption = 'DNR'
        OnClick = DNR1Click
      end
      object N17: TMenuItem
        Caption = #23433#23527
        OnClick = N17Click
      end
      object AERS1: TMenuItem
        Caption = 'AERS'#36890#22577
        OnClick = AERS1Click
      end
      object N37: TMenuItem
        Caption = #20659#26579#30149#36890#22577
        OnClick = N37Click
      end
      object N38: TMenuItem
        Caption = #30140#30171#35413#20272
        OnClick = N38Click
      end
      object N30: TMenuItem
        Caption = #30149#20154#21205#21521
        OnClick = N30Click
      end
      object N47: TMenuItem
        Caption = #36681#24202#36681#31185#21934
        OnClick = N47Click
      end
      object ISS1: TMenuItem
        Caption = 'ISS'
        OnClick = ISS1Click
      end
    end
    object N8: TMenuItem
      Caption = #20854#20182
      object N27: TMenuItem
        Caption = #29255#35486#35373#23450
        OnClick = N27Click
      end
      object N28: TMenuItem
        Caption = #22871#39184#35373#23450
        OnClick = N28Click
      end
      object N29: TMenuItem
        Caption = #30149#20154#36039#35338
        OnClick = N29Click
      end
      object N34: TMenuItem
        Caption = #21312#22495#24202#20301#32173#35703
        OnClick = N34Click
      end
      object N20: TMenuItem
        Caption = #35036#21360#31649#21046#34277#21934
        OnClick = N20Click
      end
    end
  end
  object DSIV: TDataSource
    Left = 516
    Top = 309
  end
  object DSphrase: TDataSource
    Left = 715
    Top = 113
  end
  object WordApplication1: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 910
    Top = 217
  end
  object WordDocument1: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 960
    Top = 137
  end
  object PpMconst: TPopupMenu
    AutoHotkeys = maManual
    Left = 856
    Top = 208
    object N42: TMenuItem
      Caption = #26371#35386#26032#22686
    end
    object N43: TMenuItem
      Caption = #26371#35386#30331#20837
    end
    object N44: TMenuItem
      Caption = #26371#35386#22577#21578
    end
    object N45: TMenuItem
      Caption = #26371#35386#21934#26597#35426
    end
  end
  object ppmcopy: TPopupMenu
    Left = 797
    Top = 204
    object MenuItem1: TMenuItem
      Caption = #35079#35069
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #21098#19979
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #36028#19978
      OnClick = MenuItem3Click
    end
  end
  object DtSImage: TDataSource
    Left = 925
    Top = 104
  end
  object PopMMedDC: TPopupMenu
    Left = 736
    Top = 207
    object DC1: TMenuItem
      Caption = 'DC'#34277#21697
      OnClick = DC1Click
    end
  end
  object DSICD10: TDataSource
    Left = 816
    Top = 141
  end
  object DataSource1: TDataSource
    Left = 697
    Top = 162
  end
end
