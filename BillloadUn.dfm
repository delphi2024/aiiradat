object BillloadFm: TBillloadFm
  Left = 622
  Top = 115
  ClientHeight = 424
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 24
    Width = 272
    Height = 400
    Align = alBottom
    AllowedOperations = []
    ColumnDefValues.Layout = tlCenter
    DataSource = DmdFm.DVBollAccList
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    FooterParams.Color = clWindow
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        Color = 15133137
        DynProps = <>
        EditButtons = <>
        FieldName = 'Bollsa'
        Footers = <>
        Width = 226
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
