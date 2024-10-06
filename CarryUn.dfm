object CarryFm: TCarryFm
  Left = 516
  Top = 213
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1578#1585#1581#1610#1604' '#1575#1604#1601#1608#1575#1578#1610#1585
  ClientHeight = 729
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  ParentBiDiMode = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  TextHeight = 23
  object Bevel2: TBevel
    Left = 8
    Top = 54
    Width = 849
    Height = 628
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 849
    Height = 42
    Shape = bsFrame
  end
  object Bevel3: TBevel
    Left = 8
    Top = 688
    Width = 849
    Height = 39
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 367
    Top = 64
    Width = 161
    Height = 23
    Caption = #1593#1585#1590' '#1575#1604#1601#1608#1575#1578#1610#1585' '#1582#1604#1575#1604' '#1610#1608#1605
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 380
    Top = 697
    Width = 289
    Height = 21
    Caption = #1578#1585#1581#1610#1604' '#1575#1604#1601#1608#1575#1578#1610#1585' '#1575#1604#1594#1610#1585' '#1605#1587#1583#1583#1577' '#1573#1604#1609' '#1610#1608#1605' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 281
    Top = 697
    Width = 57
    Height = 21
    Caption = 'Label3'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 380
    Top = 25
    Width = 148
    Height = 23
    Caption = #1576#1581#1579' '#1576#1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577' F3'
  end
  object Label5: TLabel
    Left = 716
    Top = 626
    Width = 80
    Height = 21
    Caption = #1593#1583#1583' '#1575#1604#1601#1608#1575#1578#1610#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 414
    Top = 86
    Width = 24
    Height = 23
    Caption = #1573#1604#1609
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 682
    Top = 653
    Width = 116
    Height = 21
    Caption = #1573#1580#1605#1575#1604#1610' '#1575#1604#1601#1608#1575#1578#1610#1585' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 177
    Top = 626
    Width = 89
    Height = 21
    Cursor = crHandPoint
    Caption = #1593#1583#1583' '#1575#1604#1605#1604#1575#1581#1602
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label8Click
  end
  object DBGridEh1: TDBGridEh
    Left = 28
    Top = 125
    Width = 813
    Height = 493
    AllowedOperations = [alopUpdateEh, alopDeleteEh]
    BiDiMode = bdRightToLeft
    ColumnDefValues.AutoDropDown = True
    DataSource = Dmd2Fm.DAcclistQ
    DynProps = <>
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentBiDiMode = False
    SearchPanel.FilterEnabled = False
    SortLocal = True
    STFilter.FilterButtonDrawBackTime = edbtAlwaysEh
    STFilter.Local = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    SumList.Active = True
    TabOrder = 9
    TitleParams.Color = clGray
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -11
    TitleParams.Font.Name = 'MS Sans Serif'
    TitleParams.Font.Style = [fsBold]
    TitleParams.ParentFont = False
    TitleParams.RowHeight = 25
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold]
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyDown = DBGridEh1KeyDown
    Columns = <
      item
        CellButtons = <>
        Color = 12303359
        DynProps = <>
        EditButtons = <>
        FieldName = 'listnum'
        Footers = <>
        Title.Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TypeNm'
        Footers = <>
        Title.Caption = #1606#1608#1593' '#1575#1604#1601#1575#1578#1608#1585#1577
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 88
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Toname'
        Footers = <>
        Title.Caption = #1575#1604#1605#1585#1587#1604' '#1573#1604#1610#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 175
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AgentNm'
        Footers = <>
        Title.Caption = #1575#1604#1605#1603#1578#1576
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 181
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Net'
        Footers = <>
        Title.Caption = #1575#1604#1573#1580#1605#1575#1604#1610
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 109
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PaidNm'
        Footers = <>
        Title.Caption = #1575#1604#1581#1575#1604#1577
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 225
    Top = 61
    Width = 137
    Height = 31
    Date = 42103.000000000000000000
    Time = 42103.000000000000000000
    TabOrder = 1
  end
  object sBitBtn1: TsBitBtn
    Left = 127
    Top = 62
    Width = 81
    Height = 37
    Caption = #1593#1585#1590
    TabOrder = 0
    OnClick = sBitBtn1Click
  end
  object DateTimePicker2: TDateTimePicker
    Left = 120
    Top = 692
    Width = 153
    Height = 29
    Date = 42105.000000000000000000
    Time = 0.436040590277116300
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = DateTimePicker2Change
  end
  object sBitBtn2: TsBitBtn
    Left = 40
    Top = 62
    Width = 81
    Height = 37
    Caption = #1593#1585#1590' '#1575#1604#1603#1604
    TabOrder = 3
    Visible = False
    OnClick = sBitBtn2Click
  end
  object sEdit1: TsEdit
    Left = 224
    Top = 18
    Width = 150
    Height = 31
    TabOrder = 4
    OnKeyPress = sEdit1KeyPress
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.ParentFont = False
  end
  object sBitBtn3: TsBitBtn
    Left = 144
    Top = 16
    Width = 75
    Height = 30
    Caption = #1576#1581#1579
    TabOrder = 5
    OnClick = sBitBtn3Click
  end
  object sBitBtn4: TsBitBtn
    Left = 31
    Top = 694
    Width = 83
    Height = 29
    Caption = #1578#1585#1581#1610#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = sBitBtn4Click
  end
  object DateTimePicker3: TDateTimePicker
    Left = 224
    Top = 88
    Width = 137
    Height = 31
    Date = 42181.000000000000000000
    Time = 0.982039166679896900
    TabOrder = 7
  end
  object sBitBtn5: TsBitBtn
    Left = 628
    Top = 15
    Width = 77
    Height = 33
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
    TabOrder = 8
    OnClick = sBitBtn5Click
  end
  object UpdatePaid: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'update acclist set datetop=:FromDate,paidf=1 where  archiveF=1 a' +
        'nd (listtype =:Type1 or listtype =:Type2 '
      
        '              or listtype =:Type3) and(dateTop >=:DateTop1)and (' +
        'DateTop <=:DateTop2)and loukof=1 and paidf=0')
    Left = 260
    Top = 713
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DateTop1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DateTop2'
        ParamType = ptInput
        Value = nil
      end>
  end
  object UpdatePaid2: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'update acclist set datetop=:FromDate,paidf=1 where  archiveF=1 a' +
        'nd (listtype =:Type1 or listtype =:Type2 '
      
        '              or listtype =:Type3) and(datetop >=:DateTop1)and (' +
        'datetop <=:DateTop2)and loukof=1 and paidf=0')
    Left = 45
    Top = 717
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DateTop1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DateTop2'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Update_Attach: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'update attach set attachdate=:FromDate,paidf=0 where   (acctype ' +
        '=:Type1 or acctype =:Type2 '
      
        '              or acctype =:Type3) and(attachdate >=:DateTop1)and' +
        ' (attachdate<=:DateTop2)and lockf=1 and paidf=1')
    Left = 285
    Top = 460
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DateTop1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DateTop2'
        ParamType = ptInput
        Value = nil
      end>
  end
end
