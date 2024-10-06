object LocalAgantFm: TLocalAgantFm
  Left = 146
  Top = 38
  BiDiMode = bdRightToLeft
  ClientHeight = 669
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 342
    Top = 9
    Width = 77
    Height = 13
    Caption = #1576#1581#1579' '#1576#1575#1587#1605' '#1575#1604#1608#1603#1610#1604
  end
  object Label2: TLabel
    Left = 341
    Top = 40
    Width = 75
    Height = 13
    Caption = #1585#1602#1605' '#1575#1604#1587#1601#1610#1606#1577' IMO'
  end
  object DBGrid3: TDBGrid
    Left = 6
    Top = 78
    Width = 413
    Height = 583
    DataSource = DmdFm.DSrchShEQ
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid3DblClick
    Columns = <
      item
        Alignment = taRightJustify
        Color = clSilver
        Expanded = False
        FieldName = 'Name_En'
        Title.Caption = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
        Width = 253
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ImoNum'
        Title.Caption = #1585#1602#1605' '#1575#1604#1587#1601#1610#1606#1577' IMO_NO'
        Width = 118
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 6
    Top = 78
    Width = 413
    Height = 583
    DataSource = DmdFm.DImoSrchQ
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid4DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Name_En'
        Title.Caption = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
        Width = 209
        Visible = True
      end
      item
        Color = clSilver
        Expanded = False
        FieldName = 'ImoNum'
        Title.Caption = #1585#1602#1605' '#1575#1604#1587#1601#1610#1606#1577' IMO'
        Width = 117
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 78
    Width = 414
    Height = 583
    DataSource = DmdFm.DQAgents
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'AgName'
        Width = 378
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 78
    Width = 413
    Height = 583
    DataSource = DmdFm.DSrchAgQ
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'AgName'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1608#1603#1610#1604' '#1575#1604#1605#1604#1575#1581#1610
        Width = 381
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 321
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnChange = Edit1Change
    OnEnter = Edit1Enter
  end
  object sBitBtn1: TsBitBtn
    Left = 16
    Top = 32
    Width = 105
    Height = 25
    Caption = #1610#1581#1578#1608#1610' '#1593#1604#1609
    TabOrder = 2
    OnClick = sBitBtn1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sEdit1: TsEdit
    Left = 216
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 5
    OnChange = sEdit1Change
    SkinData.SkinSection = 'EDIT'
    BoundLabel.ParentFont = False
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
  end
end
