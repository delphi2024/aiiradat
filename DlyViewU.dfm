object DlyViewF: TDlyViewF
  Left = 180
  Top = 71
  BiDiMode = bdRightToLeft
  Caption = #1588#1575#1588#1577' '#1593#1585#1590' '#1575#1604#1610#1608#1605#1610#1575#1578
  ClientHeight = 618
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 16
  object Label1: TLabel
    Left = 210
    Top = 8
    Width = 83
    Height = 19
    Caption = #1610#1608#1605#1610#1575#1578' '#1606#1602#1583#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 507
    Height = 569
    DataSource = Dmd2Fm.DDailyQ
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'dailynum'
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1575#1604#1610#1608#1605#1610#1577
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datetop'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1610#1608#1605#1610#1577
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 166
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 44
    Width = 507
    Height = 569
    DataSource = Dmd2Fm.DDailyQ
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid3DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'dailynum'
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1575#1604#1610#1608#1605#1610#1577
        Title.Color = 4227200
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'minDate'
        Title.Alignment = taCenter
        Title.Caption = #1605#1606
        Title.Color = 4227200
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'maxDate'
        Title.Alignment = taCenter
        Title.Caption = #1573#1604#1609
        Title.Color = 4227200
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 97
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 8
    Width = 100
    Height = 30
    Caption = #1578#1585#1580#1610#1593' '#1575#1604#1610#1608#1605#1610#1577
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
