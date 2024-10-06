object IncoFm: TIncoFm
  Left = 221
  Top = 105
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1593#1608#1575#1574#1583' '#1575#1604#1585#1587#1608#1605
  ClientHeight = 669
  ClientWidth = 558
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 558
    Height = 605
    Align = alBottom
    DataSource = DmdFm.DInco
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'IncNum'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IncName'
        Width = 236
        Visible = True
      end
      item
        Color = 16056298
        Expanded = False
        FieldName = 'Value1'
        Title.Caption = #1602#1610#1605#1577' '#1575#1604#1576#1606#1583
        Visible = True
      end
      item
        Color = 16056298
        Expanded = False
        FieldName = 'Value2'
        Title.Caption = #1602#1610#1605#1577' '#1579#1575#1576#1578#1577
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Min'
        Title.Caption = #1575#1604#1581#1583' '#1575#1604#1571#1583#1606#1609
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 152
    Top = 8
    Width = 360
    Height = 41
    DataSource = DmdFm.DInco
    Hints.Strings = (
      #1575#1604#1571#1608#1604
      #1575#1604#1587#1575#1576#1602
      #1575#1604#1578#1575#1604#1610
      #1575#1604#1571#1582#1610#1585
      #1573#1590#1575#1601#1577
      #1581#1584#1601
      #1578#1593#1583#1610#1604
      #1581#1601#1592
      #1578#1585#1575#1580#1593
      #1578#1581#1583#1610#1579)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 24
    Top = 24
    Width = 97
    Height = 17
    Caption = #1587#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1583#1610
    DataField = 'Ceade'
    DataSource = DmdFm.DInco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
end
