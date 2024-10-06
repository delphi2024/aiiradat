object CloseFm: TCloseFm
  Left = 196
  Top = 40
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1588#1575#1588#1577' '#1573#1602#1601#1575#1604' '#1610#1608#1605#1610#1577
  ClientHeight = 659
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 21
  object Label6: TLabel
    Left = 384
    Top = 22
    Width = 33
    Height = 21
    Caption = #1575#1604#1610#1608#1605
  end
  object Label1: TLabel
    Left = 613
    Top = 590
    Width = 80
    Height = 21
    Caption = #1593#1583#1583' '#1575#1604#1601#1608#1575#1578#1610#1585
  end
  object Label2: TLabel
    Left = 588
    Top = 619
    Width = 105
    Height = 21
    Caption = #1573#1580#1605#1575#1604#1610' '#1575#1604#1601#1608#1575#1578#1610#1585
  end
  object Label3: TLabel
    Left = 172
    Top = 592
    Width = 89
    Height = 21
    Cursor = crHandPoint
    Caption = #1593#1583#1583' '#1575#1604#1605#1604#1575#1581#1602
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlue
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label3Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 85
    Width = 697
    Height = 499
    DataSource = Dmd2Fm.DQueryAll
    GradientEndColor = 33023
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'listnum'
        Title.Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'listNumR'
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Net'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1573#1580#1605#1575#1604#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'listdate'
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1601#1575#1578#1608#1585#1577
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AgNm'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1608#1603#1610#1604
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ToName'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1605#1587#1578#1604#1605
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShipNm'
        Title.Caption = #1575#1604#1587#1601#1610#1606#1577
        Width = 208
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 592
    Width = 93
    Height = 30
    Caption = #1573#1602#1601#1575#1604
    Enabled = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object LockDate: TDateTimePicker
    Left = 206
    Top = 17
    Width = 159
    Height = 29
    Date = 45329.000000000000000000
    Time = 0.744279270831611900
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 19
    Width = 88
    Height = 35
    Caption = #1593#1585#1590
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object LockDate2: TDateTimePicker
    Left = 205
    Top = 52
    Width = 159
    Height = 29
    Date = 42241.000000000000000000
    Time = 0.486815150463371500
    TabOrder = 4
  end
  object BitBtn3: TBitBtn
    Left = 551
    Top = 8
    Width = 113
    Height = 57
    Caption = #1582#1585#1608#1580
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    TabOrder = 5
    OnClick = BitBtn3Click
  end
end
