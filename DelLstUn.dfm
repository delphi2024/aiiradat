object DelLstFm: TDelLstFm
  Left = 276
  Top = 219
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1601#1575#1578#1608#1585#1577' '#1576#1583#1610#1604#1577
  ClientHeight = 199
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 16
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 199
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 376
      Top = 72
      Width = 64
      Height = 16
      Caption = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577' :'
      Transparent = True
    end
    object Label2: TLabel
      Left = 169
      Top = 72
      Width = 43
      Height = 16
      Caption = #1575#1604#1578#1575#1585#1610#1582' : '
      Transparent = True
    end
    object Label3: TLabel
      Left = 376
      Top = 107
      Width = 49
      Height = 16
      Caption = #1605#1604#1575#1581#1592#1575#1578' :'
      Transparent = True
    end
    object sDateEdit1: TsDateEdit
      Left = 32
      Top = 68
      Width = 132
      Height = 24
      AutoSize = False
      MaxLength = 10
      TabOrder = 1
      OnKeyPress = sDateEdit1KeyPress
    end
    object sEdit3: TsEdit
      Left = 34
      Top = 98
      Width = 336
      Height = 24
      TabOrder = 2
      OnKeyPress = sEdit3KeyPress
    end
    object sEdit1: TsEdit
      Left = 248
      Top = 68
      Width = 121
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = sEdit1KeyPress
    end
    object sCheckBox1: TsCheckBox
      Left = 36
      Top = 38
      Width = 104
      Height = 20
      Caption = #1593#1606' '#1587#1606#1608#1575#1578' '#1587#1575#1576#1602#1577
      TabOrder = 3
    end
  end
end
