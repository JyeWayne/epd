inherited FrmPathPic: TFrmPathPic
  Tag = 9999
  Left = 223
  Top = 115
  Caption = 'FrmPathPic'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel [1]
    Left = 209
    Top = 0
    Width = 777
    Height = 653
    Align = alClient
    Alignment = taLeftJustify
    Anchors = [akLeft, akTop, akBottom]
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = #32048#26126#39636
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 230
      Height = 230
      AutoSize = True
    end
    object Panel4: TPanel
      Left = 0
      Top = 613
      Width = 777
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        777
        40)
      object BitBtn1: TBitBtn
        Left = 360
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #30906#23450
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 448
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #38626#38283
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 209
    Height = 653
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 0
      Top = 193
      Width = 209
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Color = clHighlight
      ParentColor = False
    end
    object FileListBox1: TFileListBox
      Left = 0
      Top = 198
      Width = 209
      Height = 455
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 15
      Mask = '*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf'
      ParentFont = False
      TabOrder = 0
      OnClick = FileListBox1Click
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 209
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object DriveComboBox1: TDriveComboBox
        Left = 1
        Top = 8
        Width = 206
        Height = 21
        Color = clWhite
        DirList = DirectoryListBox1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 0
      Top = 40
      Width = 209
      Height = 153
      Align = alTop
      FileList = FileListBox1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
    end
  end
end
