inherited FrmLogin: TFrmLogin
  Left = 73
  Top = 43
  BorderIcons = [biSystemMenu]
  Caption = 'FrmLogin'
  ClientHeight = 656
  ClientWidth = 1016
  Font.Color = clBlack
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 639
    Width = 1016
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1016
    Height = 438
    Align = alClient
    BevelWidth = 2
    BorderWidth = 2
    Caption = 'Panel1'
    TabOrder = 1
    object WebBrowser1: TWebBrowser
      Left = 4
      Top = 4
      Width = 1008
      Height = 430
      Align = alClient
      TabOrder = 0
      ControlData = {
        4C0000002E680000712C00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E12620A000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 438
    Width = 1016
    Height = 201
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel3'
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 701
      Top = 0
      Width = 315
      Height = 201
      Align = alRight
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        315
        201)
      object Label1: TLabel
        Left = 77
        Top = 38
        Width = 90
        Height = 17
        Anchors = [akRight, akBottom]
        Caption = #20351#29992#32773#24115#34399
      end
      object Label2: TLabel
        Left = 77
        Top = 83
        Width = 90
        Height = 17
        Anchors = [akRight, akBottom]
        Caption = #20351#29992#32773#22995#21517
      end
      object Label3: TLabel
        Left = 77
        Top = 129
        Width = 90
        Height = 17
        Anchors = [akRight, akBottom]
        Caption = #23494'      '#30908
      end
      object EdtUserID: TEdit
        Left = 176
        Top = 34
        Width = 120
        Height = 25
        Anchors = [akRight, akBottom]
        TabOrder = 0
        OnChange = EdtUserIDChange
      end
      object EdtUserName: TEdit
        Left = 176
        Top = 80
        Width = 120
        Height = 25
        Anchors = [akRight, akBottom]
        Enabled = False
        TabOrder = 4
      end
      object EdtUserPW: TEdit
        Left = 176
        Top = 125
        Width = 120
        Height = 25
        Anchors = [akRight, akBottom]
        PasswordChar = '*'
        TabOrder = 1
      end
      object EdtDept: TEdit
        Left = 24
        Top = 88
        Width = 41
        Height = 25
        Enabled = False
        TabOrder = 5
        Text = 'EdtDept'
        Visible = False
      end
      object BtnLogin: TBitBtn
        Left = 138
        Top = 170
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #30331#20837
        TabOrder = 2
        OnClick = BtnLoginClick
      end
      object BtnCancle: TBitBtn
        Left = 226
        Top = 170
        Width = 74
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #21462#28040
        TabOrder = 3
        OnClick = BtnCancleClick
      end
      object Button1: TButton
        Left = 16
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 6
        Visible = False
        OnClick = Button1Click
      end
    end
    object RichEdit1: TRichEdit
      Left = 0
      Top = 0
      Width = 701
      Height = 201
      Align = alClient
      BevelInner = bvSpace
      BevelOuter = bvRaised
      Color = clNavy
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindow
      Font.Height = -15
      Font.Name = #27161#26999#39636
      Font.Style = []
      Lines.Strings = (
        #24613#35386#37291#20196#30456#38364#20844#21578#20107#38917
        #38928#23450#19978#32218#26085#26399': ')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Timer1: TTimer [3]
    OnTimer = Timer1Timer
    Left = 587
    Top = 563
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 763
    Top = 422
  end
end
