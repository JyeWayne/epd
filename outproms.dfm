inherited Frmoutproms: TFrmoutproms
  Left = 190
  Top = 26
  Caption = 'Frmoutproms'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 986
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 49
      Height = 14
      Caption = #30149#27511#34399':'
    end
    object Lablchr: TLabel
      Left = 72
      Top = 16
      Width = 49
      Height = 14
      Caption = 'Lablchr'
    end
    object Lablname: TLabel
      Left = 240
      Top = 16
      Width = 56
      Height = 14
      Caption = 'Lablname'
    end
    object Label2: TLabel
      Left = 200
      Top = 16
      Width = 35
      Height = 14
      Caption = #22995#21517':'
    end
    object BitBtn1: TBitBtn
      Left = 800
      Top = 16
      Width = 75
      Height = 25
      Caption = #21015#21360
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 904
      Top = 16
      Width = 75
      Height = 25
      Caption = #38626#38283
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 696
      Top = 16
      Width = 75
      Height = 25
      Caption = #23384#27284
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 49
    Width = 986
    Height = 604
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object REdtprom: TRichEdit
      Left = 1
      Top = 1
      Width = 984
      Height = 602
      Align = alClient
      Lines.Strings = (
        'REdtprom')
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
end
