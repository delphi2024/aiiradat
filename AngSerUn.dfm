object AngSerFm: TAngSerFm
  Left = 329
  Top = 77
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  ClientHeight = 544
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 430
    Height = 544
    Align = alBottom
    AllowedOperations = []
    Border.EdgeBorders = [ebLeft, ebRight, ebBottom]
    ColumnDefValues.Title.TitleButton = True
    DataGrouping.Active = True
    DataSource = DmdFm.DAgents
    DynProps = <>
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FooterParams.Color = 12189695
    FooterParams.RowHeight = 1
    FooterParams.RowLines = 1
    GridLineParams.ColorScheme = glcsThemedEh
    GridLineParams.DataHorzLines = True
    GridLineParams.DataVertLines = False
    GridLineParams.GridBoundaries = True
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorParams.FillStyle = cfstSolidEh
    IndicatorParams.RecNoShowStep = 6
    EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
    EmptyDataInfo.Font.Color = clSilver
    EmptyDataInfo.Font.Height = -11
    EmptyDataInfo.Font.Name = 'MS Sans Serif'
    EmptyDataInfo.Font.Style = []
    EmptyDataInfo.ParentFont = False
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghHighlightFocus, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
    ParentFont = False
    ReadOnly = True
    RowHeight = 1
    RowLines = 1
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    SortLocal = True
    TabOrder = 0
    TitleParams.BorderInFillStyle = True
    TitleParams.FillStyle = cfstGradientEh
    TitleParams.SortMarkerStyle = smstFrameEh
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AgName'
        Footers = <>
        Width = 325
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
