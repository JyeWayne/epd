inherited FrmExitHosp: TFrmExitHosp
  Tag = 9999
  Left = 4
  Top = 122
  BorderIcons = [biSystemMenu]
  BorderWidth = 2
  Caption = 'FrmExitHosp'
  ClientHeight = 537
  ClientWidth = 722
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 520
    Width = 722
  end
  object RadioGroup1: TRadioGroup [1]
    Left = 0
    Top = 0
    Width = 722
    Height = 113
    Align = alTop
    Caption = #38626#38498#26041#24335
    Color = clBtnFace
    Columns = 4
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 456
    Width = 722
    Height = 64
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 15
      Caption = #35498#26126':'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 632
      Top = 21
      Width = 75
      Height = 25
      Caption = #30906#23450
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Memo1: TMemo
      Left = 53
      Top = 5
      Width = 417
      Height = 54
      Lines.Strings = (
        '')
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 113
    Width = 722
    Height = 343
    Align = alClient
    Caption = #38917#30446
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object RadioGroup2: TListBox
      Left = 2
      Top = 17
      Width = 718
      Height = 324
      Style = lbOwnerDrawFixed
      Align = alClient
      BorderStyle = bsNone
      Columns = 2
      ItemHeight = 23
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = RadioGroup2Click
      OnDrawItem = RadioGroup2DrawItem
      OnMouseMove = RadioGroup2MouseMove
    end
  end
end
