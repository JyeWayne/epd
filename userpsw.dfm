inherited Frmuserpsw: TFrmuserpsw
  Tag = 9999
  Left = 480
  Top = 211
  Caption = 'Frmuserpsw'
  ClientHeight = 270
  ClientWidth = 366
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Top = 253
    Width = 366
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 366
    Height = 253
    Align = alClient
    Caption = #38283#31435#30906#35469
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #27161#26999#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 10
      Top = 179
      Width = 50
      Height = 19
      Caption = #37291#24107':'
    end
    object Label2: TLabel
      Left = 10
      Top = 146
      Width = 40
      Height = 19
      Caption = #24115#34399
    end
    object Label3: TLabel
      Left = 10
      Top = 206
      Width = 40
      Height = 19
      Caption = #23494#30908
    end
    object Label4: TLabel
      Left = 60
      Top = 179
      Width = 80
      Height = 19
      Caption = #37291#24107#22995#21517
    end
    object Label9: TLabel
      Left = 55
      Top = 124
      Width = 48
      Height = 15
      Caption = 'Label9'
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #27161#26999#39636
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Edit1: TEdit
      Left = 55
      Top = 146
      Width = 154
      Height = 27
      TabOrder = 0
      Text = 'Edit1'
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 55
      Top = 206
      Width = 154
      Height = 27
      PasswordChar = '#'
      TabOrder = 1
      Text = 'Edit2'
      OnKeyDown = Edit2KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 232
      Top = 130
      Width = 112
      Height = 45
      Caption = #30906#35469
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 232
      Top = 189
      Width = 112
      Height = 46
      Caption = #21462#28040
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 21
      Width = 362
      Height = 97
      Align = alTop
      TabOrder = 4
      object Label5: TLabel
        Left = 9
        Top = 16
        Width = 90
        Height = 19
        Caption = #30149#20154#22995#21517':'
      end
      object Label6: TLabel
        Left = 9
        Top = 44
        Width = 90
        Height = 19
        Caption = #30149#20154#31185#21029':'
      end
      object Labmasge: TLabel
        Left = 9
        Top = 72
        Width = 80
        Height = 19
        Caption = 'Labmasge'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Labpatname: TLabel
        Left = 104
        Top = 19
        Width = 80
        Height = 16
        Caption = 'Labpatname'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Labpatdept: TLabel
        Left = 104
        Top = 47
        Width = 80
        Height = 16
        Caption = 'Labpatdept'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 254
        Top = 16
        Width = 50
        Height = 19
        Caption = #24615#21029':'
      end
      object Label8: TLabel
        Left = 254
        Top = 44
        Width = 50
        Height = 19
        Caption = #24202#34399':'
      end
      object Labsex: TLabel
        Left = 303
        Top = 18
        Width = 16
        Height = 16
        Caption = 'La'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
      object Labbed: TLabel
        Left = 303
        Top = 46
        Width = 16
        Height = 16
        Caption = 'La'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #27161#26999#39636
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
