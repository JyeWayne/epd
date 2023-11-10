inherited FrmPKG: TFrmPKG
  Tag = 9999
  Left = 373
  Top = 57
  Caption = #35722#26356#23494#30908
  ClientHeight = 693
  ClientWidth = 827
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 676
    Width = 827
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 827
    Height = 676
    Align = alClient
    Color = 15516857
    TabOrder = 1
    object Label2: TLabel
      Left = 136
      Top = 152
      Width = 231
      Height = 21
      Caption = #33290#23494#30908'(old password):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 136
      Top = 196
      Width = 231
      Height = 21
      Caption = #26032#23494#30908'(new password):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 136
      Top = 241
      Width = 220
      Height = 21
      Caption = #30906#35469#26032#23494#30908'(confirm):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 288
      Width = 105
      Height = 20
      AutoSize = False
      Caption = #27880#24847#20107#38917':'
      Color = 15516857
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -20
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 362
      Top = 40
      Width = 112
      Height = 28
      Caption = #35722#26356#23494#30908
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -28
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
    end
    object BtnOK: TBitBtn
      Left = 592
      Top = 202
      Width = 135
      Height = 28
      Caption = #30906#35469'(Send)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnOKClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000FF000000FF000000FF000000
        FF00000000000000000000000000000000000000000000000000FF00FF000000
        00007B7B7B007B7B7B0000000000FF00FF00FF00FF000000FF000000FF00FF00
        FF00FF00FF00000000007B7B7B007B7B7B0000000000FF00FF00FF00FF000000
        0000000000000000000000000000FF00FF00FF00FF000000FF000000FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        000000000000000000000000000000000000FF00FF000000FF000000FF00FF00
        FF0000000000000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000FF000000FF000000FF000000
        FF00000000000000000000000000000000000000000000000000FF00FF000000
        00007B7B7B007B7B7B0000000000FF00FF00FF00FF000000FF000000FF00FF00
        FF00FF00FF00000000007B7B7B007B7B7B0000000000FF00FF00FF00FF000000
        0000000000000000000000000000FF00FF00FF00FF000000FF000000FF00FF00
        FF00FF00FF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000007B7B7B007B7B7B000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BtnReset: TBitBtn
      Left = 592
      Top = 242
      Width = 135
      Height = 28
      Caption = #37325#35373'(Reset)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnResetClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F8F8F8F8F8F8
        F8F88F8F0F8F8F8F8F8FF8F00800F8F8F8F88F0E0F8F0F8F8F8F000E00000000
        F8F880EE07770F8F8F8FF0EE077708F8F8F880EE07770F8F0F8FF0EE077708F0
        08F880EE07770F00000FF0EE077708F008F880EE07770F8F0F8FF000777708F8
        F8F8800777770F8F8F8FF000000008F8F8F8}
    end
    object Edit1: TEdit
      Left = 372
      Top = 152
      Width = 135
      Height = 28
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = #27161#26999#39636
      Font.Style = []
      ImeMode = imClose
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 372
      Top = 196
      Width = 135
      Height = 28
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = #27161#26999#39636
      Font.Style = []
      ImeMode = imClose
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 372
      Top = 241
      Width = 135
      Height = 28
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = #27161#26999#39636
      Font.Style = []
      ImeMode = imClose
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 113
      Top = 109
      Width = 615
      Height = 35
      BevelOuter = bvLowered
      BiDiMode = bdLeftToRight
      Color = 10937087
      Ctl3D = True
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      object Label5: TLabel
        Left = 24
        Top = 7
        Width = 187
        Height = 21
        Caption = #37291#24107#20195#30908' user ID:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object User: TLabel
        Left = 261
        Top = 7
        Width = 40
        Height = 20
        Caption = 'User'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object User_N: TLabel
        Left = 356
        Top = 7
        Width = 121
        Height = 24
        AutoSize = False
        Caption = 'NAME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
    end
    object Memo1: TMemo
      Left = 8
      Top = 320
      Width = 809
      Height = 337
      Color = -2890577
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 6
    end
  end
  inherited Timer2: TTimer
    Left = 744
    Top = 208
  end
end
