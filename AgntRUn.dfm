object AgntRFm: TAgntRFm
  Left = 145
  Top = 37
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1575#1604#1608#1603#1604#1575#1569
  ClientHeight = 620
  ClientWidth = 599
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
  object Label1: TLabel
    Left = 538
    Top = 68
    Width = 30
    Height = 13
    Caption = #1575#1604#1608#1603#1610#1604
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 578
    Height = 513
    DataSource = DmdFm.Dagentsrs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AgName'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1608#1603#1610#1604
        Width = 406
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 64
    Width = 401
    Height = 21
    DataField = 'AgName'
    DataSource = DmdFm.Dagentsrs
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 128
    Top = 11
    Width = 390
    Height = 39
    DataSource = DmdFm.Dagentsrs
    TabOrder = 2
  end
  object sBitBtn1: TsBitBtn
    Left = 32
    Top = 16
    Width = 75
    Height = 69
    Caption = #1576#1581#1579' '#1580#1586#1574#1610
    TabOrder = 3
    OnClick = sBitBtn1Click
    SkinData.SkinSection = 'BUTTON'
  end
end
