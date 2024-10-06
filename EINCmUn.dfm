object EINCmFM: TEINCmFM
  Left = 219
  Top = 38
  BiDiMode = bdRightToLeft
  BorderIcons = []
  Caption = #1588#1575#1588#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600'(( '#1573#1583#1585#1575#1580' '#1608#1578#1593#1583#1610#1604' '#1575#1604#1593#1608#1575#1574#1583' ))'#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1577
  ClientHeight = 590
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 116
    Top = 10
    Width = 471
    Height = 58
    Caption = #1576#1606#1608#1583' '#1579#1575#1576#1578#1577' '#13#10'1 '#1608' 2 '#1608' 6  '#1608' 9 '#1608' 10 '#1608'  12 '#1608' 13 '#1608' 16  '#1608' 22 '#1608' 23'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 8
    Width = 75
    Height = 73
    Caption = #1585#1580#1608#1593
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 340
    Top = 82
    Width = 275
    Height = 507
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 18
      Width = 273
      Height = 488
      Align = alBottom
      DataSource = DmdFm.DIncome
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IncNum'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncName'
          Width = 191
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 272
    Top = 86
    Width = 65
    Height = 507
    TabOrder = 2
    object BitBtn3: TBitBtn
      Left = 5
      Top = 146
      Width = 57
      Height = 43
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 5
      Top = 97
      Width = 57
      Height = 43
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn2: TBitBtn
      Left = 5
      Top = 48
      Width = 57
      Height = 43
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 5
      Top = 200
      Width = 57
      Height = 43
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 5
      Top = 249
      Width = 57
      Height = 43
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 5
      Top = 298
      Width = 57
      Height = 43
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 5
      Top = 48
      Width = 57
      Height = 43
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 5
      Top = 97
      Width = 57
      Height = 43
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 5
      Top = 146
      Width = 57
      Height = 43
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn10Click
    end
  end
  object Panel3: TPanel
    Left = 2
    Top = 86
    Width = 267
    Height = 507
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 1
      Top = 48
      Width = 265
      Height = 458
      Align = alBottom
      DataSource = DmdFm.DInco
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IncNum'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncName'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 8
      Width = 232
      Height = 33
      DataSource = DmdFm.DInco
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      TabOrder = 1
    end
  end
  object Edit1: TEdit
    Left = 8
    Top = 0
    Width = 25
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object sPanel1: TsPanel
    Left = 343
    Top = 83
    Width = 266
    Height = 499
    TabOrder = 5
    object DBGrid3: TDBGrid
      Left = 1
      Top = 10
      Width = 264
      Height = 488
      Align = alBottom
      DataSource = DmdFm.Dincomek
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IncNum'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncName'
          Width = 191
          Visible = True
        end>
    end
  end
  object sPanel2: TsPanel
    Left = 343
    Top = 83
    Width = 266
    Height = 499
    TabOrder = 6
    object DBGrid4: TDBGrid
      Left = 1
      Top = 10
      Width = 264
      Height = 488
      Align = alBottom
      DataSource = DmdFm.DIIncome
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IncNum'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncName'
          Width = 191
          Visible = True
        end>
    end
  end
end
