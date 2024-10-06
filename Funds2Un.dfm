object Funds2Fm: TFunds2Fm
  Left = -8
  Top = 98
  Width = 1022
  Height = 726
  BiDiMode = bdRightToLeft
  Caption = #1575#1604#1573#1610#1585#1575#1583#1575#1578' '#1575#1604#1605#1581#1602#1602#1577' '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label5: TLabel
    Left = 570
    Top = 37
    Width = 118
    Height = 16
    Caption = #1575#1604#1573#1610#1585#1575#1583#1575#1578' '#1575#1604#1605#1581#1602#1602#1577' '#1605#1606' '#1588#1607#1585
  end
  object Label1: TLabel
    Left = 467
    Top = 37
    Width = 41
    Height = 16
    Caption = #1573#1604#1609' '#1588#1607#1585
  end
  object Label2: TLabel
    Left = 379
    Top = 37
    Width = 21
    Height = 16
    Caption = #1604#1587#1606#1577
  end
  object sBitBtn1: TsBitBtn
    Left = 211
    Top = 22
    Width = 87
    Height = 42
    Caption = #1578#1580#1607#1610#1586
    TabOrder = 0
    OnClick = sBitBtn1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sDecimalSpinEdit1: TsDecimalSpinEdit
    Left = 304
    Top = 33
    Width = 72
    Height = 24
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '2000'
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    Increment = 1.000000000000000000
    MaxValue = 2099.000000000000000000
    MinValue = 2000.000000000000000000
    Value = 2000.000000000000000000
    DecimalPlaces = 0
  end
  object sComboBox1: TsComboBox
    Left = 409
    Top = 33
    Width = 51
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = -1
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 69
    Width = 1013
    Height = 634
    DataSource = Dmd2FM.Dfunds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'TypeNm'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1576#1610#1575#1606
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 223
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TgValue'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1605#1576#1604#1594' '#1575#1604#1578#1602#1583#1610#1585#1610' '#1576#1575#1604#1605#1610#1586#1575#1606#1610#1577
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RuleValueM'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1573#1610#1585#1575#1583#1575#1578' '#1575#1604#1601#1593#1604#1610#1577' '#1582#1604#1575#1604' '#1575#1604#1588#1607#1585' '#1575#1604#1581#1575#1604#1610
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RuleValueAll'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1573#1610#1585#1575#1583#1575#1578' '#1575#1604#1601#1593#1604#1610#1577' '#1581#1578#1609' '#1606#1607#1575#1610#1577' '#1575#1604#1588#1607#1585' '#1575#1604#1581#1575#1604#1610
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'realRate'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = #1606#1587#1576#1577' '#1575#1604#1578#1581#1602#1610#1602
        Title.Color = 8404992
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object sComboBox2: TsComboBox
    Left = 514
    Top = 33
    Width = 51
    Height = 24
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Style = csDropDownList
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 18
    ItemIndex = -1
    ParentFont = False
    TabOrder = 4
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object sBitBtn3: TsBitBtn
    Left = 135
    Top = 22
    Width = 75
    Height = 42
    Caption = #1605#1593#1575#1610#1606#1577
    TabOrder = 5
    OnClick = sBitBtn3Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sPanel1: TsPanel
    Left = 360
    Top = 240
    Width = 363
    Height = 83
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 61
      Top = 17
      Width = 216
      Height = 19
      Caption = #1575#1606#1578#1592#1585' '#1602#1604#1610#1604#1575' ... '#1580#1575#1585#1610' '#1578#1580#1607#1610#1586' '#1575#1604#1578#1602#1585#1610#1585
      ParentFont = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = 4468738
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sProgressBar1: TsProgressBar
      Left = 8
      Top = 48
      Width = 345
      Height = 24
      TabOrder = 0
      SkinData.SkinSection = 'GAUGE'
    end
  end
  object BitBtn1: TBitBtn
    Left = 728
    Top = 24
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 7
    Visible = False
    OnClick = BitBtn1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 168
    object N1: TMenuItem
      Caption = #1587#1610#1575#1583#1610
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1594#1610#1585' '#1587#1610#1575#1583#1610
      OnClick = N2Click
    end
  end
end
