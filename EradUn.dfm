object EradFm: TEradFm
  Left = 191
  Top = 29
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1593#1608#1575#1574#1583' '#1575#1604#1573#1610#1585#1575#1583#1575#1578
  ClientHeight = 610
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 32
    Top = 32
    Width = 457
    Height = 569
    DataSource = Dmd2FM.DIncoEr
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AccNum'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1585#1602#1605
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccName'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1576#1610#1575#1606
        Width = 318
        Visible = True
      end>
  end
end
