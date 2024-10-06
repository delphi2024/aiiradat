object Attach3Fm: TAttach3Fm
  Left = 219
  Top = 49
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1605#1604#1581#1602' '#1575#1604#1605#1604#1581#1602
  ClientHeight = 627
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 48
    Width = 169
    Height = 89
  end
  object Label1: TLabel
    Left = 473
    Top = 60
    Width = 22
    Height = 13
    Caption = #1575#1604#1585#1602#1605
  end
  object Label2: TLabel
    Left = 337
    Top = 59
    Width = 31
    Height = 13
    Caption = #1575#1604#1578#1575#1585#1610#1582
  end
  object Bevel1: TBevel
    Left = 198
    Top = 50
    Width = 307
    Height = 32
  end
  object DBText1: TDBText
    Left = 12
    Top = 56
    Width = 82
    Height = 17
    Alignment = taRightJustify
    DataField = 'AttachValue'
    DataSource = DmdFm.Dattach2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText2: TDBText
    Left = 12
    Top = 80
    Width = 82
    Height = 17
    Alignment = taRightJustify
    DataField = 'StampNet'
    DataSource = DmdFm.Dattach2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText3: TDBText
    Left = 12
    Top = 104
    Width = 82
    Height = 17
    Alignment = taRightJustify
    DataField = 'Net'
    DataSource = DmdFm.Dattach2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText4: TDBText
    Left = 197
    Top = 108
    Width = 65
    Height = 17
    Alignment = taCenter
    DataField = 'Weeks'
    DataSource = DmdFm.Dattach2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 101
    Top = 56
    Width = 71
    Height = 13
    Caption = #1573#1580#1605#1575#1604#1610' '#1575#1604#1605#1604#1581#1602' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 110
    Top = 80
    Width = 62
    Height = 13
    Caption = #1602#1610#1605#1600#1600#1577' '#1575#1604#1583#1605#1594#1577' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 105
    Top = 104
    Width = 67
    Height = 13
    Caption = #1589#1575#1601#1610' '#1575#1604#1605#1604#1581#1602' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 265
    Top = 110
    Width = 63
    Height = 13
    Caption = #1593#1583#1583' '#1575#1604#1571#1587#1575#1576#1610#1593' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 181
    Top = 8
    Width = 310
    Height = 33
    DataSource = DmdFm.Dattach2
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 500
    Top = 104
    Width = 75
    Height = 25
    Caption = #1573#1583#1585#1575#1580' '#1575#1604#1593#1608#1575#1574#1583
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 425
    Top = 104
    Width = 75
    Height = 25
    Caption = #1581#1584#1601' '#1575#1604#1593#1608#1575#1574#1583
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 349
    Top = 104
    Width = 75
    Height = 25
    Caption = #1575#1581#1578#1587#1575#1576
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 144
    Width = 589
    Height = 483
    Align = alBottom
    DataSource = DmdFm.Dattach2d
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AttType2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AttNm'
        Width = 329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccValue'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccTotal'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 376
    Top = 56
    Width = 89
    Height = 19
    Ctl3D = False
    DataField = 'AttachNum2'
    DataSource = DmdFm.Dattach2
    ParentCtl3D = False
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 207
    Top = 56
    Width = 121
    Height = 19
    Ctl3D = False
    DataField = 'AttachDate'
    DataSource = DmdFm.Dattach2
    ParentCtl3D = False
    TabOrder = 6
  end
  object BitBtn4: TBitBtn
    Left = 497
    Top = 8
    Width = 75
    Height = 31
    Caption = #1605#1593#1575#1610#1606#1577
    TabOrder = 7
    OnClick = BitBtn4Click
  end
  object frxReport1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1575#1604#1573#1601#1578#1585#1575#1590#1610
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43472.553551759260000000
    ReportOptions.LastChange = 43472.553551759260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 56
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
