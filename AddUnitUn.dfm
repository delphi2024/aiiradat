object AddUnitFm: TAddUnitFm
  Left = 402
  Top = 115
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  ClientHeight = 418
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poDesigned
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 8
    Width = 429
    Height = 410
    Align = alBottom
    TabOrder = 0
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 0
      Width = 427
      Height = 409
      Align = alBottom
      AllowedOperations = [alopUpdateEh, alopDeleteEh]
      BiDiMode = bdRightToLeft
      Color = 14671839
      ColumnDefValues.AutoDropDown = True
      DataSource = DmdFm.DUnits
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 1
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentBiDiMode = False
      ParentFont = False
      SearchPanel.FilterEnabled = False
      SortLocal = True
      STFilter.FilterButtonDrawBackTime = edbtAlwaysEh
      STFilter.Local = True
      STFilter.Location = stflInTitleFilterEh
      STFilter.Visible = True
      SumList.Active = True
      TabOrder = 0
      TitleParams.Color = clGray
      TitleParams.Font.Charset = DEFAULT_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -11
      TitleParams.Font.Name = 'MS Sans Serif'
      TitleParams.Font.Style = [fsBold]
      TitleParams.ParentFont = False
      TitleParams.RowHeight = 40
      Touch.ParentTabletOptions = False
      Touch.TabletOptions = [toPressAndHold]
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnDblClick = DBGridEh3DblClick
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UName'
          Footers = <>
          Width = 330
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
