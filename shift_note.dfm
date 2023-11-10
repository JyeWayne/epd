inherited Frmshift_note: TFrmshift_note
  Tag = 9999
  Left = 401
  Top = 150
  Caption = 'Frmshift_note'
  ClientHeight = 247
  ClientWidth = 509
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 230
    Width = 509
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 181
    Width = 509
    Height = 49
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 292
      Top = 12
      Width = 75
      Height = 25
      Caption = #23384#27284
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 388
      Top = 12
      Width = 75
      Height = 25
      Caption = #38626#38283
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object RichEdit1: TRichEdit [2]
    Left = 0
    Top = 0
    Width = 509
    Height = 181
    Align = alClient
    TabOrder = 2
  end
end
