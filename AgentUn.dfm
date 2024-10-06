object AgentFm: TAgentFm
  Left = 129
  Top = 28
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1575#1604#1608#1603#1604#1575#1569
  ClientHeight = 729
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 21
  object Label1: TLabel
    Left = 503
    Top = 92
    Width = 43
    Height = 21
    Caption = #1575#1604#1575#1587#1605
    FocusControl = DBEdit1
    Transparent = True
  end
  object Label2: TLabel
    Left = 680
    Top = 90
    Width = 73
    Height = 21
    Caption = #1585#1602#1605' '#1575#1604#1608#1603#1610#1604
    FocusControl = DBEdit2
    Transparent = True
  end
  object Label3: TLabel
    Left = 682
    Top = 150
    Width = 43
    Height = 21
    Caption = #1607#1608#1575#1578#1601
    FocusControl = DBEdit3
    Transparent = True
  end
  object Label4: TLabel
    Left = 281
    Top = 150
    Width = 83
    Height = 21
    Caption = #1585#1602#1605' '#1575#1604#1601#1575#1603#1587
    FocusControl = DBEdit4
    Transparent = True
  end
  object Label5: TLabel
    Left = 681
    Top = 179
    Width = 91
    Height = 21
    Caption = #1576#1585#1610#1583' '#1575#1604#1603#1578#1585#1608#1606#1610
    FocusControl = DBEdit5
    Transparent = True
  end
  object Label6: TLabel
    Left = 682
    Top = 120
    Width = 46
    Height = 21
    Caption = #1575#1604#1593#1606#1608#1575#1606
    FocusControl = DBEdit6
    Transparent = True
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 780
    Height = 77
    Bands = <
      item
        Control = Panel2
        ImageIndex = -1
        MinHeight = 49
        Text = #1576#1581#1579
        Width = 45
      end
      item
        Break = False
        Control = Panel1
        ImageIndex = -1
        MinHeight = 70
        Text = #1571#1583#1608#1575#1578
        Width = 725
      end>
    Color = clSilver
    ParentColor = False
    object Panel2: TPanel
      Left = 43
      Top = 10
      Width = 0
      Height = 49
      Color = 15395562
      TabOrder = 0
      object Label7: TLabel
        Left = 503
        Top = 18
        Width = 81
        Height = 21
        Caption = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      end
      object Edit1: TEdit
        Left = 176
        Top = 16
        Width = 321
        Height = 27
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = Edit1Change
      end
      object sBitBtn1: TsBitBtn
        Left = 56
        Top = 11
        Width = 101
        Height = 32
        Caption = #1576#1581#1579' '#1580#1586#1574#1610
        TabOrder = 1
        OnClick = sBitBtn1Click
      end
    end
    object Panel1: TPanel
      Left = 102
      Top = 0
      Width = 674
      Height = 70
      Color = 15395562
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 473
        Top = 2
        Width = 99
        Height = 32
        Action = DataSetInsert1
        Caption = #1573#1590#1575#1601#1577' F8'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 1
      end
      object BitBtn2: TBitBtn
        Left = 473
        Top = 35
        Width = 99
        Height = 32
        Action = DataSetFirst1
        Caption = #1575#1604#1571#1608#1604' F1'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 5
      end
      object BitBtn3: TBitBtn
        Left = 372
        Top = 2
        Width = 99
        Height = 32
        Action = DataSetEdit1
        Caption = #1578#1593#1583#1610#1604' F7'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        Left = 372
        Top = 35
        Width = 99
        Height = 32
        Action = DataSetNext1
        Caption = #1575#1604#1578#1575#1604#1610' F2'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333FF333333333333300333333333
          33333773FF33333333333090033333333333373773FF33333333330990033333
          3333337F3773FF33333333099990033333333373F33773FFF333333099999007
          33333337F33337773333333099999903333333373F3333733333333309999033
          333333337F3337F333333333099990733333333373F3F77F3333333330900907
          3333333337F77F77F33333333003709073333333377377F77F33333337333709
          073333333733377F77F33333333333709033333333333377F7F3333333333337
          0733333333333337773333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 6
      end
      object BitBtn5: TBitBtn
        Left = 271
        Top = 2
        Width = 99
        Height = 32
        Action = DataSetPost1
        Caption = #1581#1601#1592' F6'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
        TabOrder = 3
      end
      object BitBtn6: TBitBtn
        Left = 271
        Top = 35
        Width = 99
        Height = 32
        Action = DataSetPrior1
        Caption = #1575#1604#1587#1575#1576#1602' F3'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333333333333FFF3333333333333
          00333333333333FF77F3333333333300903333333333FF773733333333330099
          0333333333FF77337F3333333300999903333333FF7733337333333700999990
          3333333777333337F3333333099999903333333373F333373333333330999903
          33333333F7F3337F33333333709999033333333F773FF3733333333709009033
          333333F7737737F3333333709073003333333F77377377F33333370907333733
          33333773773337333333309073333333333337F7733333333333370733333333
          3333377733333333333333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 7
      end
      object BitBtn7: TBitBtn
        Left = 170
        Top = 2
        Width = 99
        Height = 32
        Action = DataSetDelete1
        Caption = #1581#1584#1601' F11'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 4
      end
      object BitBtn8: TBitBtn
        Left = 170
        Top = 35
        Width = 99
        Height = 32
        Action = DataSetLast1
        Caption = #1575#1604#1571#1582#1610#1585' F4'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 8
      end
      object BitBtn9: TBitBtn
        Left = 73
        Top = 2
        Width = 95
        Height = 65
        Action = DataSetCancel1
        Caption = #1578#1585#1575#1580#1593' F5'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        TabOrder = 9
      end
      object BitBtn10: TBitBtn
        Left = 578
        Top = 2
        Width = 73
        Height = 65
        Caption = #1573#1594#1604#1575#1602
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
        TabOrder = 0
        OnClick = BitBtn10Click
      end
    end
  end
  object DBEdit1: TDBEdit
    Left = 151
    Top = 88
    Width = 347
    Height = 27
    Ctl3D = False
    DataField = 'AgName'
    DataSource = DmdFm.DAgents
    ParentCtl3D = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 599
    Top = 89
    Width = 73
    Height = 27
    Ctl3D = False
    DataField = 'Num'
    DataSource = DmdFm.DAgents
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 370
    Top = 153
    Width = 302
    Height = 27
    Ctl3D = False
    DataField = 'Phone'
    DataSource = DmdFm.DAgents
    ParentCtl3D = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 77
    Top = 153
    Width = 199
    Height = 27
    Ctl3D = False
    DataField = 'Fax'
    DataSource = DmdFm.DAgents
    ParentCtl3D = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 71
    Top = 185
    Width = 601
    Height = 27
    Ctl3D = False
    DataField = 'E_Mail'
    DataSource = DmdFm.DAgents
    ParentCtl3D = False
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 151
    Top = 121
    Width = 521
    Height = 27
    Ctl3D = False
    DataField = 'Address'
    DataSource = DmdFm.DAgents
    ParentCtl3D = False
    TabOrder = 2
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 8
    Top = 72
    Width = 137
    Height = 78
    Caption = #1575#1604#1606#1608#1593
    Columns = 2
    DataField = 'AgType'
    DataSource = DmdFm.DAgents
    Items.Strings = (
      #1605#1603#1578#1576
      #1608#1603#1610#1604)
    TabOrder = 7
    Values.Strings = (
      '1'
      '2')
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 220
    Width = 764
    Height = 501
    AllowedOperations = [alopUpdateEh]
    DataSource = DmdFm.DAgents
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OddRowColor = clSilver
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SearchPanel.Enabled = True
    STFilter.Location = stflInTitleFilterEh
    STFilter.Visible = True
    TabOrder = 8
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Num'
        Footers = <>
        Title.Caption = #1575#1604#1585#1602#1605
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AgName'
        Footers = <>
        Title.Alignment = taCenter
        Width = 470
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActionList1: TActionList
    Left = 72
    Top = 262
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = 'DataSetFirst1'
      ShortCut = 112
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = 'DataSetPrior1'
      ShortCut = 114
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = 'DataSetNext1'
      ShortCut = 113
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = 'DataSetLast1'
      ShortCut = 115
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = 'DataSetInsert1'
      ShortCut = 119
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'DataSetDelete1'
      ShortCut = 122
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = 'DataSetEdit1'
      ShortCut = 118
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost1'
      ShortCut = 117
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel1'
      ShortCut = 116
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'DataSetRefresh1'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 152
  end
  object actionlist2: TActionList
    Left = 152
    Top = 96
    object SendMail1: TSendMail
      Category = 'Internet'
      Caption = '&Send Mail...'
      Hint = 'Send email'
    end
  end
end
