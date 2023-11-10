inherited FrmFirsrRecord: TFrmFirsrRecord
  Tag = 9999
  Left = 212
  Top = 23
  BorderIcons = [biSystemMenu]
  Caption = 'FrmFirsrRecord'
  ClientWidth = 1005
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited MySBar: TStatusBar
    Width = 1005
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 1005
    Height = 297
    Align = alTop
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1003
      Height = 41
      Align = alTop
      BevelInner = bvRaised
      BorderWidth = 2
      TabOrder = 1
      object Label1: TLabel
        Left = 32
        Top = 12
        Width = 56
        Height = 16
        Caption = #30149#27511#34399':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 248
        Top = 12
        Width = 40
        Height = 16
        Caption = #22995#21517':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 481
        Top = 12
        Width = 40
        Height = 16
        Caption = #24180#40801':'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 108
        Top = 12
        Width = 43
        Height = 16
        Caption = 'Label4'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 309
        Top = 12
        Width = 48
        Height = 16
        Caption = 'Label5'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 542
        Top = 12
        Width = 48
        Height = 16
        Caption = 'Label6'
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = [fsUnderline]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 915
        Top = 6
        Width = 75
        Height = 27
        Caption = #23436#25104
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 42
      Width = 1003
      Height = 254
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Chief Complaint'
        object CheckListBox1: TCheckListBox
          Left = 460
          Top = 0
          Width = 535
          Height = 223
          Hint = 'Memo1'
          Align = alClient
          BevelInner = bvSpace
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
          TabOrder = 0
          OnClick = CheckListBox1Click
          OnMouseDown = CheckListBox1MouseDown
        end
        object Memo1: TRichEdit
          Left = 0
          Top = 0
          Width = 460
          Height = 223
          Align = alLeft
          Color = clMenuText
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Present Illness'
        ImageIndex = 1
        object CheckListBox2: TCheckListBox
          Left = 460
          Top = 0
          Width = 535
          Height = 223
          Hint = 'Memo2'
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
          TabOrder = 0
          OnClick = CheckListBox1Click
          OnMouseDown = CheckListBox1MouseDown
        end
        object Memo2: TRichEdit
          Left = 0
          Top = 0
          Width = 460
          Height = 223
          Align = alLeft
          Color = clMenuText
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Past History'
        ImageIndex = 2
        object CheckListBox3: TCheckListBox
          Left = 460
          Top = 0
          Width = 535
          Height = 223
          Hint = 'Memo4'
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
          TabOrder = 0
          OnClick = CheckListBox1Click
          OnMouseDown = CheckListBox1MouseDown
        end
        object Memo4: TRichEdit
          Left = 0
          Top = 0
          Width = 460
          Height = 223
          Align = alLeft
          Color = clMenuText
          Font.Charset = CHINESEBIG5_CHARSET
          Font.Color = clWindow
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Allergy History'
        ImageIndex = 3
        object CheckListBox4: TCheckListBox
          Left = 461
          Top = 0
          Width = 534
          Height = 223
          Hint = 'Memo6'
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
          TabOrder = 0
          OnClick = CheckListBox1Click
          OnMouseDown = CheckListBox1MouseDown
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 461
          Height = 223
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Memo6: TRichEdit
            Left = 0
            Top = 81
            Width = 461
            Height = 142
            Align = alClient
            Color = clMenuText
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Memo7: TRichEdit
            Left = 0
            Top = 0
            Width = 461
            Height = 81
            Align = alTop
            Color = clMenuText
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Medication History'
        ImageIndex = 4
        object CheckListBox5: TCheckListBox
          Left = 461
          Top = 0
          Width = 534
          Height = 223
          Hint = 'Memo9'
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
          TabOrder = 0
          OnClick = CheckListBox1Click
          OnMouseDown = CheckListBox1MouseDown
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 461
          Height = 223
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Memo9: TRichEdit
            Left = 0
            Top = 81
            Width = 461
            Height = 142
            Align = alClient
            Color = clMenuText
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Memo8: TRichEdit
            Left = 0
            Top = 0
            Width = 461
            Height = 81
            Align = alTop
            Color = clMenuText
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Plan(s)'
        ImageIndex = 5
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 461
          Height = 223
          Align = alLeft
          Caption = 'Panel7'
          TabOrder = 0
          object Memo11: TRichEdit
            Left = 1
            Top = 1
            Width = 465
            Height = 221
            Align = alLeft
            Color = clMenuText
            Font.Charset = CHINESEBIG5_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object CheckListBox6: TCheckListBox
          Left = 461
          Top = 0
          Width = 534
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
          OnClick = CheckListBox1Click
          OnMouseDown = CheckListBox1MouseDown
        end
      end
    end
  end
  object PageControl2: TPageControl [2]
    Tag = 1
    Left = 0
    Top = 297
    Width = 465
    Height = 356
    Hint = 'Memo3'
    ActivePage = TabSheet9
    Align = alLeft
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = PageControl2Change
    object TabSheet5: TTabSheet
      Caption = 'Physical Examination'
      object Memo3: TRichEdit
        Left = 0
        Top = 0
        Width = 464
        Height = 325
        Align = alLeft
        Color = clMenuText
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Trauma Sheet'
      ImageIndex = 1
      object Memo5: TRichEdit
        Left = 0
        Top = 0
        Width = 464
        Height = 325
        Align = alLeft
        Color = clMenuText
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Tag = 4
      Caption = 'Impression '
      ImageIndex = 2
      object SGIcd: TStringGrid
        Left = 0
        Top = 0
        Width = 457
        Height = 216
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
        ColWidths = (
          67
          442
          391
          20
          386)
      end
      object Memo10: TRichEdit
        Left = 0
        Top = 216
        Width = 457
        Height = 109
        Align = alBottom
        Color = clMenuText
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Panel5: TPanel [3]
    Left = 465
    Top = 297
    Width = 540
    Height = 356
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 2
    Caption = 'Panel5'
    TabOrder = 3
    object Panel3: TPanel
      Left = 3
      Top = 3
      Width = 534
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 3
      Top = 33
      Width = 534
      Height = 320
      Align = alClient
      ColCount = 2
      DataSource = DataSource1
      Font.Charset = CHINESEBIG5_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #32048#26126#39636
      Font.Style = []
      PanelHeight = 32
      PanelWidth = 258
      ParentFont = False
      TabOrder = 1
      RowCount = 10
      SelectedColor = 13547981
      OnClick = DBText1Click
      object DBText1: TDBText
        Left = 2
        Top = 5
        Width = 255
        Height = 19
        DataField = 'PHRASE_name'
        DataSource = DataSource1
        Font.Charset = CHINESEBIG5_CHARSET
        Font.Color = 274189
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = DBText1Click
      end
    end
  end
  inherited Timer2: TTimer
    Left = 16
    Top = 632
  end
  object DataSource1: TDataSource
    Left = 889
    Top = 80
  end
end
