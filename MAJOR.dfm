inherited FrmMAJOR: TFrmMAJOR
  Tag = 9999
  Left = 660
  Top = 276
  BorderWidth = 2
  Caption = ''
  ClientHeight = 295
  ClientWidth = 530
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 278
    Width = 530
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = -4
    Width = 529
    Height = 281
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 49
      Top = 9
      Width = 527
      Height = 216
      Caption = 'GroupBox1'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabDose: TLabel
        Left = 32
        Top = 32
        Width = 99
        Height = 17
        Caption = 'rt-PA'#21137#37327#28858
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 68
        Width = 100
        Height = 19
        Caption = #30149#20154#39636#37325' ='
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 352
        Top = 68
        Width = 29
        Height = 20
        Caption = 'Kg '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 381
        Top = 68
        Width = 120
        Height = 19
        Caption = '('#35531#36664#20837#25972#25976')'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 32
        Top = 104
        Width = 108
        Height = 20
        Caption = 'Total does ='
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 32
        Top = 140
        Width = 92
        Height = 20
        Caption = 'IV bolus ='
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 32
        Top = 176
        Width = 213
        Height = 20
        Caption = 'Slow IV drip over 1 Hr= '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 352
        Top = 104
        Width = 34
        Height = 20
        Caption = 'mg '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 352
        Top = 140
        Width = 34
        Height = 20
        Caption = 'mg '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 352
        Top = 176
        Width = 28
        Height = 20
        Caption = 'mg'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Edtweights: TMaskEdit
        Left = 246
        Top = 68
        Width = 98
        Height = 28
        EditMask = '!099;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 0
        Text = '   '
        OnKeyUp = EdtweightsKeyUp
      end
      object SLabDoes: TStaticText
        Left = 246
        Top = 104
        Width = 100
        Height = 24
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'SLabDoes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object SLabBolus: TStaticText
        Left = 246
        Top = 140
        Width = 100
        Height = 24
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'SLabBolus'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object SLabSlowIV: TStaticText
        Left = 246
        Top = 176
        Width = 100
        Height = 24
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'SLabSlowIV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 239
      Width = 527
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        527
        41)
      object BtnConfirm: TBitBtn
        Left = 320
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #30906#23450
        TabOrder = 0
        OnClick = BtnConfirmClick
      end
      object BtnExit: TBitBtn
        Left = 416
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #38626#38283
        TabOrder = 1
        OnClick = BtnExitClick
      end
    end
    object GroupBox3: TGroupBox
      Left = 218
      Top = 17
      Width = 527
      Height = 216
      Caption = 'AMI'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object LabAMI: TLabel
        Left = 32
        Top = 32
        Width = 99
        Height = 17
        Caption = 'rt-PA'#21137#37327#28858
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 30
        Top = 68
        Width = 90
        Height = 19
        Caption = #30149#20154#39636#37325'='
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 232
        Top = 68
        Width = 29
        Height = 20
        Caption = 'Kg '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 261
        Top = 68
        Width = 120
        Height = 19
        Caption = '('#35531#36664#20837#25972#25976')'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 232
        Top = 104
        Width = 112
        Height = 20
        Caption = 'mg IV bolus,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 232
        Top = 140
        Width = 281
        Height = 20
        Caption = 'mg IV infusion over 30 minutes,'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 232
        Top = 176
        Width = 281
        Height = 20
        Caption = 'mg IV infusion over 60 minutes.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 80
        Top = 140
        Width = 40
        Height = 19
        Caption = #28982#24460
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 80
        Top = 180
        Width = 40
        Height = 19
        Caption = #25509#33879
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object EdtWeightAMI: TMaskEdit
        Left = 126
        Top = 68
        Width = 98
        Height = 28
        EditMask = '!099;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 0
        Text = '   '
        OnKeyUp = EdtWeightAMIKeyUp
      end
      object StaticText1: TStaticText
        Left = 126
        Top = 104
        Width = 100
        Height = 24
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object LabAMI30: TStaticText
        Left = 126
        Top = 140
        Width = 100
        Height = 24
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'SLabBolus'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object LabAMI60: TStaticText
        Left = 126
        Top = 176
        Width = 100
        Height = 24
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'SLabSlowIV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 300
    Top = 0
    Width = 521
    Height = 233
    Caption = 'rt-PA '#29992#26044#20197#19979#36969#25033#30151
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #27161#26999#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object BtnStroke: TBitBtn
      Left = 118
      Top = 37
      Width = 258
      Height = 38
      Caption = 'Stroke('#20013#39080')'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnStrokeClick
    end
    object BtnAMI: TBitBtn
      Left = 118
      Top = 104
      Width = 258
      Height = 38
      Caption = 'AMI('#24613#24615#24515#32908#26775#22622')6'#23567#26178#20043#20839
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnStrokeClick
    end
    object BtnOther: TBitBtn
      Left = 118
      Top = 168
      Width = 258
      Height = 38
      Caption = #20854#20182
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnStrokeClick
    end
  end
  inherited Timer2: TTimer
    Left = 440
    Top = 555
  end
end
