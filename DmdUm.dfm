object DmdFm: TDmdFm
  OnCreate = DataModuleCreate
  Height = 1243
  Width = 1431
  PixelsPerInch = 120
  object info: TUniTable
    TableName = 'info'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 20
    Top = 20
    object infoSide: TWideStringField
      FieldName = 'Side'
      Size = 60
    end
    object infoAddress1: TWideStringField
      FieldName = 'Address1'
      Size = 50
    end
    object infoAddress2: TWideStringField
      FieldName = 'Address2'
      Size = 50
    end
    object infoStamp: TFloatField
      FieldName = 'Stamp'
    end
    object infoFromDate: TDateField
      FieldName = 'FromDate'
    end
    object infoToDate: TDateField
      FieldName = 'ToDate'
    end
    object infoValue1: TFloatField
      FieldName = 'Value1'
    end
    object infoValue2: TFloatField
      FieldName = 'Value2'
    end
    object infoNum1: TIntegerField
      FieldName = 'Num1'
    end
    object infoNum2: TIntegerField
      FieldName = 'Num2'
    end
    object infoNum3: TIntegerField
      FieldName = 'Num3'
    end
    object infoStampTotal: TFloatField
      FieldName = 'StampTotal'
    end
    object infoTotal: TFloatField
      FieldName = 'Total'
    end
    object infoNum4: TIntegerField
      FieldName = 'Num4'
    end
    object infostore1: TFloatField
      FieldName = 'store1'
    end
    object infostore2: TFloatField
      FieldName = 'store2'
    end
    object infonumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object infoCurrentPrice: TFloatField
      FieldName = 'CurrentPrice'
    end
    object infoLastPrice: TFloatField
      FieldName = 'LastPrice'
    end
    object infoCurrentDate: TDateField
      FieldName = 'CurrentDate'
    end
    object infoLastDate: TDateField
      FieldName = 'LastDate'
    end
    object infoPeak_active: TBooleanField
      FieldName = 'Peak_active'
    end
  end
  object Frinfo: TfrxDBDataset
    UserName = 'Frinfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Side=Side'
      'Address1=Address1'
      'Address2=Address2'
      'Stamp=Stamp'
      'FromDate=FromDate'
      'ToDate=ToDate'
      'Value1=Value1'
      'Value2=Value2'
      'Num1=Num1'
      'Num2=Num2'
      'Num3=Num3'
      'StampTotal=StampTotal'
      'Total=Total'
      'Num4=Num4')
    DataSet = info
    BCDToCurrency = False
    Left = 100
    Top = 20
  end
  object Perm: TUniTable
    TableName = 'Perm'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterInsert = PermAfterInsert
    BeforeDelete = PermBeforeDelete
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 20
    Top = 100
    object PermUserNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'UserNum'
    end
    object PermUserName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
      FieldName = 'UserName'
      Size = 15
    end
    object PermPass: TWideStringField
      DisplayLabel = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
      FieldName = 'Pass'
      Size = 10
    end
    object PermShipData: TBooleanField
      FieldName = 'ShipData'
    end
    object PermAgent: TBooleanField
      FieldName = 'Agent'
    end
    object PermHelp: TBooleanField
      FieldName = 'Help'
    end
    object PermIncome: TBooleanField
      FieldName = 'Income'
    end
    object PermShipp: TBooleanField
      FieldName = 'Shipp'
    end
    object PermAdmis: TBooleanField
      FieldName = 'Admis'
    end
    object PermAcList: TBooleanField
      FieldName = 'AcList'
    end
    object PermPerm: TBooleanField
      FieldName = 'Perm'
    end
    object PermReports: TBooleanField
      FieldName = 'Reports'
    end
    object PermConst: TBooleanField
      FieldName = 'Const'
    end
    object PermLockList: TBooleanField
      FieldName = 'LockList'
    end
    object PermCommList: TBooleanField
      FieldName = 'CommList'
    end
    object PermRsomList: TBooleanField
      FieldName = 'RsomList'
    end
    object PermRga: TBooleanField
      FieldName = 'Rga'
      Required = True
    end
    object Permpyan1: TBooleanField
      FieldName = 'pyan1'
      Required = True
    end
    object Permpyan2: TBooleanField
      FieldName = 'pyan2'
      Required = True
    end
    object PermpyanD: TBooleanField
      FieldName = 'pyanD'
      Required = True
    end
    object PermDrevle: TBooleanField
      FieldName = 'Drevle'
      Required = True
    end
    object PermPoapa: TBooleanField
      FieldName = 'Poapa'
      Required = True
    end
    object PermAdorfrze: TBooleanField
      FieldName = 'Adorfrze'
      Required = True
    end
    object PermKzena: TBooleanField
      FieldName = 'Kzena'
      Required = True
    end
    object PermDelload: TBooleanField
      FieldName = 'Delload'
      Required = True
    end
    object PermDelBillload: TBooleanField
      FieldName = 'DelBillload'
      Required = True
    end
    object PermDelTrans: TBooleanField
      FieldName = 'DelTrans'
      Required = True
    end
    object PermCarry: TBooleanField
      FieldName = 'Carry'
      Required = True
    end
    object PermArchive: TBooleanField
      FieldName = 'Archive'
      Required = True
    end
    object PermRsomBill: TBooleanField
      FieldName = 'RsomBill'
      Required = True
    end
    object PermDelList: TBooleanField
      FieldName = 'DelList'
      Required = True
    end
    object PermEnbEdit: TBooleanField
      FieldName = 'EnbEdit'
      Required = True
    end
    object PermCarryRsom: TBooleanField
      FieldName = 'CarryRsom'
      Required = True
    end
    object PermDailyClose: TBooleanField
      FieldName = 'DailyClose'
    end
    object PermDailyView: TBooleanField
      FieldName = 'DailyView'
    end
    object PermUnlockBill: TBooleanField
      FieldName = 'UnlockBill'
    end
    object PermAlterBill: TBooleanField
      FieldName = 'AlterBill'
    end
    object PermShipRsom: TBooleanField
      FieldName = 'ShipRsom'
    end
    object PermAgentRsom: TBooleanField
      FieldName = 'AgentRsom'
    end
    object PermHelpRsom: TBooleanField
      FieldName = 'HelpRsom'
    end
    object PermCarryDRsom: TBooleanField
      FieldName = 'CarryDRsom'
    end
    object PermCloseRsom: TBooleanField
      FieldName = 'CloseRsom'
    end
    object PermUnlockRsom: TBooleanField
      FieldName = 'UnlockRsom'
    end
    object PermAlterBillR: TBooleanField
      FieldName = 'AlterBillR'
    end
    object PermDelBillR: TBooleanField
      FieldName = 'DelBillR'
    end
    object PermReportsRsom: TBooleanField
      FieldName = 'ReportsRsom'
    end
    object PermDailyViewR: TBooleanField
      FieldName = 'DailyViewR'
    end
    object PermChType: TBooleanField
      FieldName = 'ChType'
    end
    object PermRetDaily: TBooleanField
      FieldName = 'RetDaily'
    end
    object PermPrepRep: TBooleanField
      FieldName = 'PrepRep'
    end
    object PermIncoRep: TBooleanField
      FieldName = 'IncoRep'
    end
    object PermFinalRep: TBooleanField
      FieldName = 'FinalRep'
    end
    object PermGenRep: TBooleanField
      FieldName = 'GenRep'
    end
    object PermDelRep: TBooleanField
      FieldName = 'DelRep'
    end
    object PermGenRepEnt: TBooleanField
      FieldName = 'GenRepEnt'
    end
    object PermChTypeR: TBooleanField
      FieldName = 'ChTypeR'
    end
    object PermRecalc: TBooleanField
      FieldName = 'Recalc'
    end
    object PermTgValue: TBooleanField
      FieldName = 'TgValue'
    end
    object PermEsalTr: TBooleanField
      FieldName = 'EsalTr'
    end
    object PermAgentsTr: TBooleanField
      FieldName = 'AgentsTr'
    end
    object PermConsTr: TBooleanField
      FieldName = 'ConsTr'
    end
    object PermSrchTr: TBooleanField
      FieldName = 'SrchTr'
    end
    object PermRepTr: TBooleanField
      FieldName = 'RepTr'
    end
    object PermPermTr: TBooleanField
      FieldName = 'PermTr'
    end
    object PermCurrent: TBooleanField
      FieldName = 'Current'
      Required = True
    end
    object PermDebit: TBooleanField
      FieldName = 'Debit'
      Required = True
    end
    object PermLockEsal: TBooleanField
      FieldName = 'LockEsal'
    end
    object PermUnLockEsal: TBooleanField
      FieldName = 'UnLockEsal'
    end
    object PermAdmArchive: TBooleanField
      FieldName = 'AdmArchive'
    end
    object PermAcclistArch: TBooleanField
      FieldName = 'AcclistArch'
    end
    object PermCreDataBase: TBooleanField
      FieldName = 'CreDataBase'
    end
    object PermOutPort: TBooleanField
      FieldName = 'OutPort'
    end
    object PermTransit: TBooleanField
      FieldName = 'Transit'
    end
    object PermTrHelp: TBooleanField
      FieldName = 'TrHelp'
    end
    object PermTrRep: TBooleanField
      FieldName = 'TrRep'
    end
    object PermTrIncome: TBooleanField
      FieldName = 'TrIncome'
    end
    object PermFreezing: TBooleanField
      FieldName = 'Freezing'
    end
    object PermPers_Name: TWideStringField
      FieldName = 'Pers_Name'
      Size = 60
    end
    object PermDelBill: TBooleanField
      FieldName = 'DelBill'
    end
    object Perminvoice_Print: TBooleanField
      FieldName = 'invoice_Print'
    end
    object Permmain_options: TBooleanField
      FieldName = 'main_options'
    end
  end
  object DPerm: TDataSource
    AutoEdit = False
    DataSet = Perm
    Left = 70
    Top = 100
  end
  object FPerm: TfrxDBDataset
    UserName = 'FPerm'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UserNum=UserNum'
      'UserName=UserName'
      'Pass=Pass'
      'ShipData=ShipData'
      'Agent=Agent'
      'Help=Help'
      'Income=Income'
      'Shipp=Shipp'
      'Admis=Admis'
      'AcList=AcList'
      'Perm=Perm'
      'Reports=Reports'
      'Const=Const'
      'LockList=LockList'
      'CommList=CommList'
      'RsomList=RsomList'
      'Rga=Rga'
      'pyan1=pyan1'
      'pyan2=pyan2'
      'pyanD=pyanD'
      'Drevle=Drevle'
      'Poapa=Poapa'
      'Adorfrze=Adorfrze'
      'Kzena=Kzena')
    DataSet = Perm
    BCDToCurrency = False
    Left = 120
    Top = 100
  end
  object VDervr1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `acclist`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate`, `' +
        'EndEmpDate`, `Toname`, `Electric`, `Remain`, `AginNm`, `NumT`, `' +
        'barcade`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`ShipNum`, :`ArriveDat' +
        'e`, :`EndEmpDate`, :`Toname`, :`Electric`, :`Remain`, :`AginNm`,' +
        ' :`NumT`, :`barcade`)')
    SQLDelete.Strings = (
      'DELETE FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLUpdate.Strings = (
      'UPDATE `acclist`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `ShipNum` = :`ShipNum`, `ArriveDate` = :`ArriveDat' +
        'e`, `EndEmpDate` = :`EndEmpDate`, `Toname` = :`Toname`, `Electri' +
        'c` = :`Electric`, `Remain` = :`Remain`, `AginNm` = :`AginNm`, `N' +
        'umT` = :`NumT`, `barcade` = :`barcade`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLLock.Strings = (
      'SELECT * FROM acclist'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate' +
        '`, `EndEmpDate`, `Toname`, `Electric`, `Remain`, `AginNm`, `NumT' +
        '`, `barcade` FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`ListNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM acclist')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr1(:VBarCode)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnCalcFields = VDervr1CalcFields
    Left = 20
    Top = 190
    ParamData = <
      item
        DataType = ftWideString
        Name = 'VBarCode'
        ParamType = ptInput
        Size = 35
        Value = nil
      end>
    CommandStoredProcName = 'VDervr1'
    object VDervr1ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object VDervr1barcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object VDervr1AllwedDate: TDateField
      FieldKind = fkCalculated
      FieldName = 'AllwedDate'
      Calculated = True
    end
    object VDervr1weeks: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'weeks'
      Calculated = True
    end
    object VDervr1NumT: TIntegerField
      FieldName = 'NumT'
    end
    object VDervr1ListDate: TDateField
      FieldName = 'ListDate'
    end
    object VDervr1EndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object VDervr1AgNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AgNm'
      LookupDataSet = Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AginNm'
      Size = 60
      Lookup = True
    end
    object VDervr1AginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object VDervr1ShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object VDervr1Toname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object VDervr1ShipNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipNm'
      LookupDataSet = SShips
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'ShipNum'
      Size = 100
      Lookup = True
    end
    object VDervr1ArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object VDervr1ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object VDervr1Electric: TSmallintField
      FieldName = 'Electric'
    end
    object VDervr1Remain: TSmallintField
      FieldName = 'Remain'
    end
  end
  object VDervr2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`, `Bill' +
        'Type`, `StoreType`, `Notes`, `selectF`, `StopF`, `StopWhy`, `Enb' +
        'Edit`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, :`Flag`,' +
        ' :`BillNum`, :`BillType`, :`StoreType`, :`Notes`, :`selectF`, :`' +
        'StopF`, :`StopWhy`, :`EnbEdit`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Tfasel` = :`Tfasel`, `EfrajNum`' +
        ' = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Flag` = :`Flag`, `B' +
        'illNum` = :`BillNum`, `BillType` = :`BillType`, `StoreType` = :`' +
        'StoreType`, `Notes` = :`Notes`, `selectF` = :`selectF`, `StopF` ' +
        '= :`StopF`, `StopWhy` = :`StopWhy`, `EnbEdit` = :`EnbEdit`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `' +
        'Loader`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goo' +
        'dsname`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`, `' +
        'BillType`, `StoreType`, `Notes`, `selectF`, `StopF`, `StopWhy`, ' +
        '`EnbEdit` FROM `loed`'
      'WHERE'
      '  `Auto` = :`Auto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr2(:VNumT)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 20
    Top = 260
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDervr2'
    object VDervr2Auto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object VDervr2Billloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
    end
    object VDervr2LNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object VDervr2Qty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object VDervr2Marks: TSmallintField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldName = 'Marks'
    end
    object VDervr2GoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object VDervr2OrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object VDervr2Loader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object VDervr2Sender: TSmallintField
      FieldName = 'Sender'
    end
    object VDervr2Kias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object VDervr2Weight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
    end
    object VDervr2Send: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object VDervr2Goodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 500
    end
    object VDervr2Tfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object VDervr2EfrajNum: TWideStringField
      DisplayLabel = #1585'.'#1601' '#1575#1604#1580#1605#1585#1603#1610
      FieldName = 'EfrajNum'
      Size = 30
    end
    object VDervr2EfrajDate: TDateField
      DisplayLabel = #1578' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'EfrajDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object VDervr2Flag: TSmallintField
      FieldName = 'Flag'
    end
    object VDervr2BillNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillNum'
    end
    object VDervr2BillType: TSmallintField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillType'
    end
    object VDervr2StoreType: TSmallintField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldName = 'StoreType'
    end
    object VDervr2Notes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578
      FieldName = 'Notes'
      Size = 100
    end
    object VDervr2selectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object VDervr2StopF: TSmallintField
      FieldName = 'StopF'
    end
    object VDervr2StopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object VDervr2EnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object VDervr2PortNm: TWideStringField
      DisplayLabel = #1605#1610#1606#1575#1569' '#1575#1604#1588#1581#1606' '#1575#1604#1571#1589#1604#1610
      FieldKind = fkLookup
      FieldName = 'PortNm'
      LookupDataSet = Ports
      LookupKeyFields = 'Num'
      LookupResultField = 'PortName'
      KeyFields = 'OrgPort'
      Lookup = True
    end
    object VDervr2LoaderNm: TWideStringField
      DisplayLabel = #1575#1604#1588#1575#1581#1606
      FieldKind = fkLookup
      FieldName = 'LoaderNm'
      LookupDataSet = Ships
      LookupKeyFields = 'Num'
      LookupResultField = 'SName'
      KeyFields = 'Loader'
      Lookup = True
    end
    object VDervr2MarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object VDervr2StoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object VDervr2GoodsNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkLookup
      FieldName = 'GoodsNm'
      LookupDataSet = GoodsTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TName'
      KeyFields = 'GoodsType'
      Size = 30
      Lookup = True
    end
  end
  object VDervr3: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loadlist`'
      
        '  (`Num`, `TransNUm`, `TransType`, `ArriveDate`, `EmptyPort`, `S' +
        'ideWalk`, `Agent`, `ListDate`, `EndDate`, `RofR`, `Taghez`, `lon' +
        'gOf1`, `MixedF`, `ShipType`, `ShipMet`, `carsTfF`)'
      'VALUES'
      
        '  (:`Num`, :`TransNUm`, :`TransType`, :`ArriveDate`, :`EmptyPort' +
        '`, :`SideWalk`, :`Agent`, :`ListDate`, :`EndDate`, :`RofR`, :`Ta' +
        'ghez`, :`longOf1`, :`MixedF`, :`ShipType`, :`ShipMet`, :`carsTfF' +
        '`)')
    SQLDelete.Strings = (
      'DELETE FROM `loadlist`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLUpdate.Strings = (
      'UPDATE `loadlist`'
      'SET'
      
        '  `Num` = :`Num`, `TransNUm` = :`TransNUm`, `TransType` = :`Tran' +
        'sType`, `ArriveDate` = :`ArriveDate`, `EmptyPort` = :`EmptyPort`' +
        ', `SideWalk` = :`SideWalk`, `Agent` = :`Agent`, `ListDate` = :`L' +
        'istDate`, `EndDate` = :`EndDate`, `RofR` = :`RofR`, `Taghez` = :' +
        '`Taghez`, `longOf1` = :`longOf1`, `MixedF` = :`MixedF`, `ShipTyp' +
        'e` = :`ShipType`, `ShipMet` = :`ShipMet`, `carsTfF` = :`carsTfF`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLLock.Strings = (
      'SELECT * FROM loadlist'
      'WHERE'
      '  `Num` = :`Old_Num`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Num`, `TransNUm`, `TransType`, `ArriveDate`, `EmptyPort`' +
        ', `SideWalk`, `Agent`, `ListDate`, `EndDate`, `RofR`, `Taghez`, ' +
        '`longOf1`, `MixedF`, `ShipType`, `ShipMet`, `carsTfF` FROM `load' +
        'list`'
      'WHERE'
      '  `Num` = :`Num`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loadlist')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr3(:VNumT)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 20
    Top = 330
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDervr3'
    object VDervr3TransNUm: TSmallintField
      FieldName = 'TransNUm'
    end
    object VDervr3TransType: TSmallintField
      FieldName = 'TransType'
    end
    object VDervr3EmptyPort: TSmallintField
      FieldName = 'EmptyPort'
    end
    object VDervr3ArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object VDervr3SideWalk: TSmallintField
      FieldName = 'SideWalk'
    end
    object VDervr3Agent: TSmallintField
      FieldName = 'Agent'
    end
    object VDervr3ListDate: TDateField
      FieldName = 'ListDate'
    end
    object VDervr3EndDate: TDateField
      FieldName = 'EndDate'
    end
    object VDervr3RofR: TSmallintField
      FieldName = 'RofR'
    end
    object VDervr3Taghez: TSmallintField
      FieldName = 'Taghez'
      Required = True
    end
    object VDervr3longOf1: TSmallintField
      FieldName = 'longOf1'
    end
    object VDervr3MixedF: TSmallintField
      FieldName = 'MixedF'
    end
    object VDervr3ShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object VDervr3ShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object VDervr3carsTfF: TSmallintField
      FieldName = 'carsTfF'
      Required = True
    end
    object VDervr3Num: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object VDervr3AgentNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNm'
      LookupDataSet = Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agent'
      Size = 70
      Lookup = True
    end
  end
  object VDervr4: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `amertslem`'
      
        '  (`numAuto`, `numLoad`, `DateAmer`, `NameMstelm`, `MsrhJomrke`,' +
        ' `numCar`, `NameSCar`, `NUmBatka`, `NameMMstelm`, `NUMBMM`, `Nam' +
        'eShip`, `NameOkel`, `DateOsole`, `BolesaNum`, `User`, `NUMAfraje' +
        '`, `barcade`, `numloadlist`, `ozen`, `kyse`, `smhea`, `MklfNum`,' +
        ' `log1`, `TypeAmer`, `FarkeW`)'
      'VALUES'
      
        '  (:`numAuto`, :`numLoad`, :`DateAmer`, :`NameMstelm`, :`MsrhJom' +
        'rke`, :`numCar`, :`NameSCar`, :`NUmBatka`, :`NameMMstelm`, :`NUM' +
        'BMM`, :`NameShip`, :`NameOkel`, :`DateOsole`, :`BolesaNum`, :`Us' +
        'er`, :`NUMAfraje`, :`barcade`, :`numloadlist`, :`ozen`, :`kyse`,' +
        ' :`smhea`, :`MklfNum`, :`log1`, :`TypeAmer`, :`FarkeW`)')
    SQLDelete.Strings = (
      'DELETE FROM `amertslem`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLUpdate.Strings = (
      'UPDATE `amertslem`'
      'SET'
      
        '  `numAuto` = :`numAuto`, `numLoad` = :`numLoad`, `DateAmer` = :' +
        '`DateAmer`, `NameMstelm` = :`NameMstelm`, `MsrhJomrke` = :`MsrhJ' +
        'omrke`, `numCar` = :`numCar`, `NameSCar` = :`NameSCar`, `NUmBatk' +
        'a` = :`NUmBatka`, `NameMMstelm` = :`NameMMstelm`, `NUMBMM` = :`N' +
        'UMBMM`, `NameShip` = :`NameShip`, `NameOkel` = :`NameOkel`, `Dat' +
        'eOsole` = :`DateOsole`, `BolesaNum` = :`BolesaNum`, `User` = :`U' +
        'ser`, `NUMAfraje` = :`NUMAfraje`, `barcade` = :`barcade`, `numlo' +
        'adlist` = :`numloadlist`, `ozen` = :`ozen`, `kyse` = :`kyse`, `s' +
        'mhea` = :`smhea`, `MklfNum` = :`MklfNum`, `log1` = :`log1`, `Typ' +
        'eAmer` = :`TypeAmer`, `FarkeW` = :`FarkeW`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLLock.Strings = (
      'SELECT * FROM amertslem'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `numAuto`, `numLoad`, `DateAmer`, `NameMstelm`, `MsrhJomr' +
        'ke`, `numCar`, `NameSCar`, `NUmBatka`, `NameMMstelm`, `NUMBMM`, ' +
        '`NameShip`, `NameOkel`, `DateOsole`, `BolesaNum`, `User`, `NUMAf' +
        'raje`, `barcade`, `numloadlist`, `ozen`, `kyse`, `smhea`, `MklfN' +
        'um`, `log1`, `TypeAmer`, `FarkeW` FROM `amertslem`'
      'WHERE'
      '  `numAuto` = :`numAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM amertslem')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr4(:VNumT)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforeInsert = VDervr4BeforeInsert
    AfterInsert = VDervr4AfterInsert
    BeforeEdit = VDervr4BeforeEdit
    BeforePost = VDervr4BeforePost
    BeforeDelete = VDervr4BeforeDelete
    Left = 20
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDervr4'
    object VDervr4numAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1575#1604#1578#1587#1604#1610#1605
      FieldName = 'numAuto'
    end
    object VDervr4numLoad: TIntegerField
      FieldName = 'numLoad'
    end
    object VDervr4DateAmer: TDateField
      DisplayLabel = #1578' . '#1575#1604#1578#1587#1604#1610#1605
      FieldName = 'DateAmer'
    end
    object VDervr4NameMstelm: TWideStringField
      FieldName = 'NameMstelm'
      Size = 60
    end
    object VDervr4MsrhJomrke: TWideStringField
      FieldName = 'MsrhJomrke'
      Size = 60
    end
    object VDervr4numCar: TWideStringField
      FieldName = 'numCar'
      Size = 15
    end
    object VDervr4NameSCar: TWideStringField
      FieldName = 'NameSCar'
      Size = 40
    end
    object VDervr4NUmBatka: TWideStringField
      FieldName = 'NUmBatka'
      Size = 15
    end
    object VDervr4NameMMstelm: TWideStringField
      FieldName = 'NameMMstelm'
      Size = 40
    end
    object VDervr4NUMBMM: TWideStringField
      FieldName = 'NUMBMM'
      Size = 15
    end
    object VDervr4NameShip: TWideStringField
      FieldName = 'NameShip'
      Size = 60
    end
    object VDervr4NameOkel: TWideStringField
      FieldName = 'NameOkel'
      Size = 60
    end
    object VDervr4DateOsole: TDateField
      FieldName = 'DateOsole'
    end
    object VDervr4BolesaNum: TWideStringField
      FieldName = 'BolesaNum'
      Size = 120
    end
    object VDervr4User: TWideStringField
      FieldName = 'User'
    end
    object VDervr4NUMAfraje: TWideStringField
      FieldName = 'NUMAfraje'
    end
    object VDervr4barcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object VDervr4numloadlist: TIntegerField
      FieldName = 'numloadlist'
    end
    object VDervr4ozen: TWideStringField
      FieldName = 'ozen'
      Size = 15
    end
    object VDervr4kyse: TWideStringField
      FieldName = 'kyse'
      Size = 15
    end
    object VDervr4smhea: TDateField
      FieldName = 'smhea'
    end
    object VDervr4MklfNum: TSmallintField
      FieldName = 'MklfNum'
    end
    object VDervr4log1: TSmallintField
      FieldName = 'log1'
    end
    object VDervr4TypeAmer: TSmallintField
      FieldName = 'TypeAmer'
    end
    object VDervr4FarkeW: TFloatField
      FieldName = 'FarkeW'
    end
  end
  object VDervr5: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `damertslem`'
      
        '  (`numAuto`, `numAmer`, `numAlama`, `OasfeB`, `TypeCar`, `NumCa' +
        'r`, `type`, `MstlmName`, `OutPort`, `FarkeWazen`)'
      'VALUES'
      
        '  (:`numAuto`, :`numAmer`, :`numAlama`, :`OasfeB`, :`TypeCar`, :' +
        '`NumCar`, :`type`, :`MstlmName`, :`OutPort`, :`FarkeWazen`)')
    SQLDelete.Strings = (
      'DELETE FROM `damertslem`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLUpdate.Strings = (
      'UPDATE `damertslem`'
      'SET'
      
        '  `numAuto` = :`numAuto`, `numAmer` = :`numAmer`, `numAlama` = :' +
        '`numAlama`, `OasfeB` = :`OasfeB`, `TypeCar` = :`TypeCar`, `NumCa' +
        'r` = :`NumCar`, `type` = :`type`, `MstlmName` = :`MstlmName`, `O' +
        'utPort` = :`OutPort`, `FarkeWazen` = :`FarkeWazen`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLLock.Strings = (
      'SELECT * FROM damertslem'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `numAuto`, `numAmer`, `numAlama`, `OasfeB`, `TypeCar`, `N' +
        'umCar`, `type`, `MstlmName`, `OutPort`, `FarkeWazen` FROM `damer' +
        'tslem`'
      'WHERE'
      '  `numAuto` = :`numAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM damertslem')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr5(:VNumT)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforeInsert = VDervr5BeforeInsert
    BeforeEdit = VDervr5BeforeEdit
    BeforeDelete = VDervr5BeforeDelete
    Left = 20
    Top = 470
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    object VDervr5numAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object VDervr5numAmer: TIntegerField
      FieldName = 'numAmer'
    end
    object VDervr5numAlama: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578' '#1608#1575#1604#1575#1585#1602#1575#1605
      FieldName = 'numAlama'
      Size = 40
    end
    object VDervr5OasfeB: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      FieldName = 'OasfeB'
      Size = 40
    end
    object VDervr5TypeCar: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1587#1610#1575#1585#1577
      FieldName = 'TypeCar'
    end
    object VDervr5NumCar: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1607#1610#1603#1604
      FieldName = 'NumCar'
    end
    object VDervr5type: TWideStringField
      DisplayLabel = #1606#1608#1593
      FieldName = 'type'
      Size = 40
    end
    object VDervr5MstlmName: TWideStringField
      FieldName = 'MstlmName'
      Size = 100
    end
    object VDervr5OutPort: TSmallintField
      FieldName = 'OutPort'
    end
    object VDervr5FarkeWazen: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606' '#1575#1604#1589#1575#1601#1610
      FieldName = 'FarkeWazen'
    end
  end
  object DVDervr1: TUniDataSource
    DataSet = VDervr1
    Left = 85
    Top = 190
  end
  object DVDervr2: TUniDataSource
    DataSet = VDervr2
    Left = 85
    Top = 260
  end
  object DVDervr3: TUniDataSource
    DataSet = VDervr3
    Left = 85
    Top = 330
  end
  object DVDervr4: TUniDataSource
    DataSet = VDervr4
    Left = 85
    Top = 400
  end
  object DVDervr5: TUniDataSource
    DataSet = VDervr5
    Left = 85
    Top = 470
  end
  object VDervr6: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `load2`'
      
        '  (`Num`, `Lnum`, `numAuto`, `Qty`, `TypeNm`, `Hawea_Num`, `Tfas' +
        'el`)'
      'VALUES'
      
        '  (:`Num`, :`Lnum`, :`numAuto`, :`Qty`, :`TypeNm`, :`Hawea_Num`,' +
        ' :`Tfasel`)')
    SQLDelete.Strings = (
      'DELETE FROM `load2`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLUpdate.Strings = (
      'UPDATE `load2`'
      'SET'
      
        '  `Num` = :`Num`, `Lnum` = :`Lnum`, `numAuto` = :`numAuto`, `Qty' +
        '` = :`Qty`, `TypeNm` = :`TypeNm`, `Hawea_Num` = :`Hawea_Num`, `T' +
        'fasel` = :`Tfasel`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLLock.Strings = (
      'SELECT * FROM load2'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Num`, `Lnum`, `numAuto`, `Qty`, `TypeNm`, `Hawea_Num`, `' +
        'Tfasel` FROM `load2`'
      'WHERE'
      '  `numAuto` = :`numAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM load2')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr6(:VNumT, :VNumT1)')
    Left = 20
    Top = 550
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VNumT1'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDervr6'
    object VDervr6Num: TIntegerField
      FieldName = 'Num'
      Required = True
    end
    object VDervr6Lnum: TIntegerField
      FieldName = 'Lnum'
      Required = True
    end
    object VDervr6numAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object VDervr6Qty: TSmallintField
      DisplayLabel = #1575#1604#1603#1605#1610#1577
      FieldName = 'Qty'
    end
    object VDervr6TypeNm: TSmallintField
      FieldName = 'TypeNm'
    end
    object VDervr6Hawea_Num: TWideStringField
      FieldName = 'Hawea_Num'
      Size = 100
    end
    object VDervr6UnitNm: TStringField
      DisplayLabel = #1575#1604#1606#1608#1593
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'TypeNm'
      Size = 50
      Lookup = True
    end
    object VDervr6Tfasel: TSmallintField
      FieldName = 'Tfasel'
    end
  end
  object VDervr7: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO admdet2'
      
        '  (Num, BillNum, numAuto, Qty, Unit, NumAutoS, shipType, shipMet' +
        ', Lever, RF, HalaH, OutHrak)'
      'VALUES'
      
        '  (:Num, :BillNum, :numAuto, :Qty, :Unit, :NumAutoS, :shipType, ' +
        ':shipMet, :Lever, :RF, :HalaH, :OutHrak)')
    SQLDelete.Strings = (
      'DELETE FROM admdet2'
      'WHERE'
      '  numAuto = :Old_numAuto')
    SQLUpdate.Strings = (
      'UPDATE admdet2'
      'SET'
      
        '  Num = :Num, BillNum = :BillNum, numAuto = :numAuto, Qty = :Qty' +
        ', Unit = :Unit, NumAutoS = :NumAutoS, shipType = :shipType, ship' +
        'Met = :shipMet, Lever = :Lever, RF = :RF, HalaH = :HalaH, OutHra' +
        'k = :OutHrak'
      'WHERE'
      '  numAuto = :Old_numAuto')
    SQLLock.Strings = (
      'SELECT * FROM admdet2'
      'WHERE'
      '  numAuto = :Old_numAuto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT Num, BillNum, numAuto, Qty, Unit, NumAutoS, shipType, shi' +
        'pMet, Lever, RF, HalaH, OutHrak FROM admdet2'
      'WHERE'
      '  numAuto = :numAuto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM admdet2')
    Connection = DB1
    SQL.Strings = (
      'CALL VDervr7(:VNumT)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterInsert = VDervr7AfterInsert
    OnCalcFields = VDervr7CalcFields
    Left = 20
    Top = 620
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDervr7'
    object VDervr7Num: TIntegerField
      FieldName = 'Num'
      Required = True
    end
    object VDervr7BillNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1605#1578#1587#1604#1587#1604
      FieldName = 'BillNum'
      Size = 30
    end
    object VDervr7numAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object VDervr7Qty: TFloatField
      FieldName = 'Qty'
    end
    object VDervr7Unit: TSmallintField
      FieldName = 'Unit'
    end
    object VDervr7NumAutoS: TIntegerField
      FieldName = 'NumAutoS'
    end
    object VDervr7shipType: TSmallintField
      FieldName = 'shipType'
    end
    object VDervr7shipMet: TSmallintField
      FieldName = 'shipMet'
    end
    object VDervr7TypeNm: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1587#1601#1610#1606#1577
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'shipType'
      Lookup = True
    end
    object VDervr7MetNm: TStringField
      DisplayLabel = #1588#1585#1591' '#1575#1604#1588#1581#1606
      FieldKind = fkCalculated
      FieldName = 'MetNm'
      Size = 10
      Calculated = True
    end
    object VDervr7leverNm: TStringField
      DisplayLabel = #1575#1604#1585#1608#1575#1601#1593
      FieldKind = fkCalculated
      FieldName = 'leverNm'
      Size = 30
      Calculated = True
    end
    object VDervr7Lever: TSmallintField
      FieldName = 'Lever'
    end
    object VDervr7RF: TSmallintField
      FieldName = 'RF'
    end
    object VDervr7RFNm: TStringField
      DisplayLabel = #1603#1607#1585#1576#1575#1569
      FieldKind = fkCalculated
      FieldName = 'RFNm'
      Size = 50
      Calculated = True
    end
    object VDervr7HalaH: TSmallintField
      FieldName = 'HalaH'
    end
    object VDervr7OutHrak: TSmallintField
      FieldName = 'OutHrak'
    end
  end
  object DVDervr6: TUniDataSource
    DataSet = VDervr6
    Left = 85
    Top = 550
  end
  object DVDervr7: TUniDataSource
    DataSet = VDervr7
    Left = 85
    Top = 620
  end
  object Units: TUniTable
    TableName = 'Units'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'TrtepNum'
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 10
    object UnitsNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1575#1604#1608#1581#1583#1577
      FieldName = 'Num'
    end
    object UnitsUName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1581#1583#1577
      FieldName = 'UName'
      Size = 50
    end
    object UnitsStateValue: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1581#1575#1604#1577
      FieldName = 'StateValue'
    end
    object UnitsTrtepNum: TIntegerField
      DisplayLabel = #1578#1585#1578#1610#1576
      FieldName = 'TrtepNum'
    end
    object UnitsKyass: TFloatField
      DisplayLabel = #1602#1610#1575#1587' '#1575#1604#1608#1589#1601
      FieldName = 'Kyass'
    end
    object UnitsGroupNo: TSmallintField
      FieldName = 'GroupNo'
    end
    object Unitsshared_value: TFloatField
      FieldName = 'shared_value'
    end
  end
  object DUnits: TDataSource
    DataSet = Units
    Left = 590
    Top = 10
  end
  object DPorts: TDataSource
    DataSet = Ports
    Left = 590
    Top = 80
  end
  object Ports: TUniTable
    TableName = 'Ports'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 80
    object PortsPortName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1605#1610#1606#1575#1569
      FieldName = 'PortName'
    end
    object PortsNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1575#1604#1605#1610#1606#1575#1569
      FieldName = 'Num'
    end
    object PortsPAbsName: TWideStringField
      FieldName = 'PAbsName'
    end
  end
  object Ships: TUniTable
    TableName = 'ships'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'SName'
    BeforeInsert = ShipsBeforeInsert
    AfterInsert = ShipsAfterInsert
    BeforePost = ShipsBeforePost
    BeforeDelete = ShipsBeforeDelete
    OnCalcFields = ShipsCalcFields
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 140
    object ShipsSName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldName = 'SName'
      OnValidate = ShipsSNameValidate
      Size = 30
    end
    object ShipsNum: TIntegerField
      FieldName = 'Num'
    end
    object ShipsSAbsName: TWideStringField
      FieldName = 'SAbsName'
      Size = 30
    end
    object ShipsSType: TSmallintField
      FieldName = 'SType'
    end
    object ShipsSNation: TSmallintField
      FieldName = 'SNation'
    end
    object ShipsTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593#1607#1575
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'SType'
      Size = 10
      Lookup = True
    end
    object ShipsNatNm: TWideStringField
      DisplayLabel = #1580#1606#1587#1610#1578#1607#1575
      FieldKind = fkLookup
      FieldName = 'NatNm'
      LookupDataSet = nation
      LookupKeyFields = 'Num'
      LookupResultField = 'Natname'
      KeyFields = 'SNation'
      Size = 10
      Lookup = True
    end
    object ShipsWeight: TFloatField
      DisplayLabel = #1581#1605#1608#1604#1578#1607#1575
      FieldName = 'Weight'
    end
    object ShipsShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object ShipsShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object ShipsTypeRsom: TSmallintField
      FieldName = 'TypeRsom'
    end
    object ShipsTypeRsNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeRsNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'TypeRsom'
      Lookup = True
    end
    object ShipsNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object ShipsLocOrFor: TStringField
      FieldKind = fkCalculated
      FieldName = 'LocOrFor'
      Size = 10
      Calculated = True
    end
    object ShipsGross: TFloatField
      FieldName = 'Gross'
    end
    object ShipsImoNum: TIntegerField
      DisplayLabel = '(IMO '#1585#1602#1605')'
      FieldName = 'ImoNum'
    end
    object ShipsName_En: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldName = 'Name_En'
      Size = 30
    end
    object ShipsSerialNum: TIntegerField
      DisplayLabel = #1575#1604#1585#1602#1605
      FieldName = 'SerialNum'
    end
    object ShipsNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1577
      FieldName = 'Notes'
      Size = 100
    end
    object ShipsRecCer: TSmallintField
      FieldName = 'RecCer'
    end
  end
  object DShips: TDataSource
    DataSet = Ships
    Left = 590
    Top = 140
  end
  object AdmisMet: TUniTable
    TableName = 'AdmisMet'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 260
    object AdmisMetMetName: TWideStringField
      DisplayLabel = #1591#1585#1610#1602#1577' '#1575#1604#1578#1587#1604#1610#1605
      FieldName = 'MetName'
      Size = 10
    end
    object AdmisMetNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1591#1585#1610#1602#1577' '#1575#1604#1578#1587#1604#1610#1605
      FieldName = 'Num'
    end
    object AdmisMetMetAbsName: TWideStringField
      FieldName = 'MetAbsName'
      Size = 10
    end
    object AdmisMetMetVAlue: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1576#1606#1583
      FieldName = 'MetVAlue'
    end
  end
  object DAdmisMet: TDataSource
    DataSet = AdmisMet
    Left = 590
    Top = 260
  end
  object nation: TUniTable
    TableName = 'nation'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 390
    object nationNatname: TWideStringField
      DisplayLabel = #1575#1604#1580#1606#1587#1610#1577
      FieldName = 'Natname'
      Size = 10
    end
    object nationNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1575#1604#1580#1606#1587#1610#1577
      FieldName = 'Num'
    end
    object nationAbsName: TWideStringField
      FieldName = 'AbsName'
      Size = 10
    end
  end
  object Dnation: TDataSource
    DataSet = nation
    Left = 590
    Top = 390
  end
  object Agents: TUniTable
    TableName = 'Agents'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'AgName'
    BeforePost = AgentsBeforePost
    AfterCancel = accdetAfterDelete
    BeforeDelete = AgentsBeforeDelete
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 330
    object AgentsAgName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      FieldName = 'AgName'
      OnValidate = AgentsAgNameValidate
      Size = 60
    end
    object AgentsAgAbsName: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object AgentsPhone: TWideStringField
      DisplayLabel = #1607#1608#1575#1578#1601
      FieldName = 'Phone'
      Size = 50
    end
    object AgentsFax: TWideStringField
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 15
    end
    object AgentsE_Mail: TWideStringField
      DisplayLabel = #1576#1585#1610#1583' '#1575#1604#1603#1578#1585#1608#1606#1610
      FieldName = 'E_Mail'
      Size = 30
    end
    object AgentsAddress: TWideStringField
      DisplayLabel = #1575#1604#1593#1606#1608#1575#1606
      FieldName = 'Address'
      Size = 50
    end
    object AgentsAgType: TSmallintField
      FieldName = 'AgType'
    end
    object AgentsFirstBal: TFloatField
      FieldName = 'FirstBal'
    end
    object AgentsCurrentBal: TFloatField
      FieldName = 'CurrentBal'
    end
    object AgentsNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object AgentsEsstF: TSmallintField
      FieldName = 'EsstF'
    end
  end
  object DAgents: TDataSource
    DataSet = AgentsV
    Left = 590
    Top = 330
  end
  object GoodsTy: TUniTable
    TableName = 'GoodsTy'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 590
    object GoodsTyTName: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'TName'
      Size = 30
    end
    object GoodsTyNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Num'
    end
    object GoodsTyTAbsName: TWideStringField
      FieldName = 'TAbsName'
      Size = 30
    end
  end
  object Store: TUniTable
    TableName = 'Store'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 520
    object StoreNum: TSmallintField
      DisplayLabel = #1593#1583#1583' '#1575#1604#1571#1587#1575#1576#1610#1593
      FieldName = 'Num'
    end
    object StoreWalk: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1578#1582#1586#1610#1606' '#1585#1589#1610#1601
      FieldName = 'Walk'
      DisplayFormat = '0.000'
    end
    object StoreStore: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1578#1582#1586#1610#1606' '#1605#1582#1586#1606
      FieldName = 'Store'
      DisplayFormat = '0.000'
    end
  end
  object DStore: TDataSource
    DataSet = Store
    Left = 590
    Top = 520
  end
  object Sides: TUniTable
    TableName = 'Sides'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 460
    object SidesSName: TWideStringField
      DisplayLabel = #1575#1604#1580#1607#1577
      FieldName = 'SName'
      Size = 80
    end
    object SidesSNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'SNum'
    end
    object SidesSAbsName: TWideStringField
      FieldName = 'SAbsName'
      Size = 80
    end
  end
  object DSides: TDataSource
    DataSet = Sides
    Left = 590
    Top = 460
  end
  object DShipTy: TDataSource
    DataSet = ShipTy
    Left = 590
    Top = 200
  end
  object ShipTy: TUniTable
    TableName = 'ShipTy'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 200
    object ShipTyTyName: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1587#1601#1610#1606#1577
      FieldName = 'TyName'
      Size = 10
    end
    object ShipTyNum: TAutoIncField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1606#1608#1593
      FieldName = 'Num'
    end
    object ShipTyTyAbsName: TWideStringField
      FieldName = 'TyAbsName'
      Size = 10
    end
    object ShipTyRsom: TSmallintField
      FieldName = 'Rsom'
    end
    object ShipTyNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
  end
  object RVDervr4: TfrxDBDataset
    UserName = 'VDervr4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'numAuto=numAuto'
      'numLoad=numLoad'
      'DateAmer=DateAmer'
      'NameMstelm=NameMstelm'
      'MsrhJomrke=MsrhJomrke'
      'numCar=numCar'
      'NameSCar=NameSCar'
      'NUmBatka=NUmBatka'
      'NameMMstelm=NameMMstelm'
      'NUMBMM=NUMBMM'
      'NameShip=NameShip'
      'NameOkel=NameOkel'
      'DateOsole=DateOsole'
      'BolesaNum=BolesaNum'
      'User=User'
      'NUMAfraje=NUMAfraje'
      'barcade=barcade'
      'numloadlist=numloadlist'
      'ozen=ozen'
      'kyse=kyse'
      'smhea=smhea'
      'MklfNum=MklfNum'
      'log1=log1'
      'TypeAmer=TypeAmer'
      'FarkeW=FarkeW')
    DataSet = VDervr4
    BCDToCurrency = False
    Left = 135
    Top = 400
  end
  object RVDervr5: TfrxDBDataset
    UserName = 'VDervr5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'numAuto=numAuto'
      'numAmer=numAmer'
      'numAlama=numAlama'
      'OasfeB=OasfeB'
      'TypeCar=TypeCar'
      'NumCar=NumCar'
      'type=type'
      'MstlmName=MstlmName'
      'OutPort=OutPort'
      'FarkeWazen=FarkeWazen')
    DataSet = VDervr5
    BCDToCurrency = False
    Left = 135
    Top = 470
  end
  object SAgents: TUniTable
    TableName = 'Agents'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'AgName'
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 650
    Top = 330
    object WideStringField1: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      FieldName = 'AgName'
      Size = 60
    end
    object WideStringField2: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #1607#1608#1575#1578#1601
      FieldName = 'Phone'
      Size = 50
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 15
    end
    object WideStringField5: TWideStringField
      DisplayLabel = #1576#1585#1610#1583' '#1575#1604#1603#1578#1585#1608#1606#1610
      FieldName = 'E_Mail'
      Size = 30
    end
    object WideStringField6: TWideStringField
      DisplayLabel = #1575#1604#1593#1606#1608#1575#1606
      FieldName = 'Address'
      Size = 50
    end
    object SmallintField1: TSmallintField
      FieldName = 'AgType'
    end
    object FloatField1: TFloatField
      FieldName = 'FirstBal'
    end
    object FloatField2: TFloatField
      FieldName = 'CurrentBal'
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object SmallintField2: TSmallintField
      FieldName = 'EsstF'
    end
  end
  object DSAgents: TDataSource
    DataSet = SAgents
    Left = 708
    Top = 330
  end
  object SShips: TUniTable
    TableName = 'Ships'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'SName'
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 650
    Top = 140
    object WideStringField7: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldName = 'SName'
      Size = 30
    end
    object IntegerField2: TIntegerField
      FieldName = 'Num'
    end
    object SmallintField3: TSmallintField
      FieldName = 'SType'
    end
    object WideStringField8: TWideStringField
      FieldName = 'SAbsName'
      Size = 30
    end
    object SmallintField4: TSmallintField
      FieldName = 'SNation'
    end
    object WideStringField9: TWideStringField
      DisplayLabel = #1606#1608#1593#1607#1575
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'SType'
      Size = 10
      Lookup = True
    end
    object WideStringField10: TWideStringField
      DisplayLabel = #1580#1606#1587#1610#1578#1607#1575
      FieldKind = fkLookup
      FieldName = 'NatNm'
      LookupDataSet = nation
      LookupKeyFields = 'Num'
      LookupResultField = 'Natname'
      KeyFields = 'SNation'
      Size = 10
      Lookup = True
    end
    object FloatField3: TFloatField
      DisplayLabel = #1581#1605#1608#1604#1578#1607#1575
      FieldName = 'Weight'
    end
    object SmallintField5: TSmallintField
      FieldName = 'ShipMet'
    end
    object SmallintField6: TSmallintField
      FieldName = 'ShipType'
    end
    object WideStringField11: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeRsNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'TypeRsom'
      Lookup = True
    end
    object SmallintField7: TSmallintField
      FieldName = 'TypeRsom'
    end
    object IntegerField3: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'LocOrFor'
      Size = 10
      Calculated = True
    end
    object FloatField4: TFloatField
      FieldName = 'Gross'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ImoNum'
    end
    object WideStringField12: TWideStringField
      FieldName = 'Name_En'
      Size = 30
    end
    object WideStringField13: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object IntegerField5: TIntegerField
      FieldName = 'SerialNum'
    end
    object SmallintField8: TSmallintField
      FieldName = 'RecCer'
    end
  end
  object DSShips: TDataSource
    DataSet = SShips
    Left = 700
    Top = 140
  end
  object DVloadHrak: TUniDataSource
    AutoEdit = False
    DataSet = VloadHrak
    Left = 220
    Top = 170
  end
  object QGROUPCONCAT: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loadlist`'
      '  (`Num`, `TransNUm`, `ArriveDate`, `ListDate`)'
      'VALUES'
      '  (:`Num`, :`TransNUm`, :`ArriveDate`, :`ListDate`)')
    SQLDelete.Strings = (
      'DELETE FROM `loadlist`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLUpdate.Strings = (
      'UPDATE `loadlist`'
      'SET'
      
        '  `Num` = :`Num`, `TransNUm` = :`TransNUm`, `ArriveDate` = :`Arr' +
        'iveDate`, `ListDate` = :`ListDate`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLLock.Strings = (
      'SELECT * FROM loadlist'
      'WHERE'
      '  `Num` = :`Old_Num`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Num`, `TransNUm`, `ArriveDate`, `ListDate` FROM `loadlis' +
        't`'
      'WHERE'
      '  `Num` = :`Num`')
    Connection = DB1
    SQL.Strings = (
      'SELECT loadlist.Num,'
      '       loadlist.TransNUm,'
      '       loadlist.ArriveDate,'
      '       loadlist.ListDate,'
      '       GROUP_CONCAT(admdet2.BillNum),'
      '       COUNT(admdet2.BillNum)'
      '  FROM    (   (   porte.loed loed'
      '               INNER JOIN'
      '                  porte.load2 load2'
      '               ON (loed.Auto = load2.Lnum))'
      '           INNER JOIN'
      '              porte.admdet2 admdet2'
      '           ON (load2.numAuto = admdet2.Num))'
      '       INNER JOIN'
      '          porte.loadlist loadlist'
      '       ON (loadlist.Num = loed.LNum)'
      ' WHERE ((  (loadlist.ListDate >=:FromDate)'
      '            OR (loadlist.ListDate <=:ToDate))'
      '       AND  admdet2.BillNum NOT IN (SELECT damertslem.numAlama'
      
        '                                 FROM porte.damertslem damertsle' +
        'm))'
      'GROUP BY loadlist.Num')
    Left = 660
    Top = 200
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object QGROUPCONCATShipNm: TStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldKind = fkLookup
      FieldName = 'ShipNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'TransNUm'
      Size = 100
      Lookup = True
    end
    object QGROUPCONCATNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object QGROUPCONCATTransNUm: TSmallintField
      FieldName = 'TransNUm'
    end
    object QGROUPCONCATArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object QGROUPCONCATListDate: TDateField
      FieldName = 'ListDate'
    end
    object QGROUPCONCATGROUP_CONCATadmdet2BillNum: TMemoField
      FieldName = 'GROUP_CONCAT(admdet2.BillNum)'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QGROUPCONCATCOUNTadmdet2BillNum: TLargeintField
      FieldName = 'COUNT(admdet2.BillNum)'
      ReadOnly = True
      Required = True
    end
  end
  object FRQGROUPCONCAT: TfrxDBDataset
    UserName = 'FRQGROUPCONCAT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ShipNm=ShipNm'
      'Num=Num'
      'TransNUm=TransNUm'
      'ArriveDate=ArriveDate'
      'ListDate=ListDate'
      'GROUP_CONCAT(admdet2.BillNum)=GROUP_CONCAT(admdet2.BillNum)'
      'COUNT(admdet2.BillNum)=COUNT(admdet2.BillNum)')
    DataSet = QGROUPCONCAT
    BCDToCurrency = False
    Left = 710
    Top = 200
  end
  object SPerm: TUniTable
    TableName = 'Perm'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 170
    Top = 100
    object SPermUserNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'UserNum'
    end
    object SPermUserName: TWideStringField
      FieldName = 'UserName'
      Size = 15
    end
    object SPermPass: TWideStringField
      FieldName = 'Pass'
      Size = 10
    end
    object SPermShipData: TBooleanField
      FieldName = 'ShipData'
      Required = True
    end
    object SPermAgent: TBooleanField
      FieldName = 'Agent'
      Required = True
    end
    object SPermHelp: TBooleanField
      FieldName = 'Help'
      Required = True
    end
    object SPermIncome: TBooleanField
      FieldName = 'Income'
      Required = True
    end
    object SPermShipp: TBooleanField
      FieldName = 'Shipp'
      Required = True
    end
    object SPermAdmis: TBooleanField
      FieldName = 'Admis'
      Required = True
    end
    object SPermAcList: TBooleanField
      FieldName = 'AcList'
      Required = True
    end
    object SPermPerm: TBooleanField
      FieldName = 'Perm'
      Required = True
    end
    object SPermReports: TBooleanField
      FieldName = 'Reports'
      Required = True
    end
    object SPermConst: TBooleanField
      FieldName = 'Const'
      Required = True
    end
    object SPermLockList: TBooleanField
      FieldName = 'LockList'
      Required = True
    end
    object SPermCommList: TBooleanField
      FieldName = 'CommList'
      Required = True
    end
    object SPermRsomList: TBooleanField
      FieldName = 'RsomList'
      Required = True
    end
    object SPermRga: TBooleanField
      FieldName = 'Rga'
      Required = True
    end
    object SPermpyan1: TBooleanField
      FieldName = 'pyan1'
      Required = True
    end
    object SPermpyan2: TBooleanField
      FieldName = 'pyan2'
      Required = True
    end
    object SPermpyanD: TBooleanField
      FieldName = 'pyanD'
      Required = True
    end
    object SPermDrevle: TBooleanField
      FieldName = 'Drevle'
      Required = True
    end
    object SPermpoapa: TBooleanField
      FieldName = 'poapa'
      Required = True
    end
    object SPermAdorfrze: TBooleanField
      FieldName = 'Adorfrze'
      Required = True
    end
    object SPermkzena: TBooleanField
      FieldName = 'kzena'
      Required = True
    end
    object SPermdelload: TBooleanField
      FieldName = 'delload'
      Required = True
    end
    object SPermdelbillload: TBooleanField
      FieldName = 'delbillload'
      Required = True
    end
    object SPermdeltrans: TBooleanField
      FieldName = 'deltrans'
      Required = True
    end
    object SPermCarry: TBooleanField
      FieldName = 'Carry'
      Required = True
    end
    object SPermArchive: TBooleanField
      FieldName = 'Archive'
      Required = True
    end
    object SPermRsomBill: TBooleanField
      FieldName = 'RsomBill'
      Required = True
    end
    object SPermDelList: TBooleanField
      FieldName = 'DelList'
      Required = True
    end
    object SPermEnbEdit: TBooleanField
      FieldName = 'EnbEdit'
      Required = True
    end
    object SPermCarryRsom: TBooleanField
      FieldName = 'CarryRsom'
      Required = True
    end
    object SPermDailyClose: TBooleanField
      FieldName = 'DailyClose'
    end
    object SPermDailyView: TBooleanField
      FieldName = 'DailyView'
    end
    object SPermUnlockBill: TBooleanField
      FieldName = 'UnlockBill'
    end
    object SPermAlterBill: TBooleanField
      FieldName = 'AlterBill'
    end
    object SPermShipRsom: TBooleanField
      FieldName = 'ShipRsom'
    end
    object SPermAgentRsom: TBooleanField
      FieldName = 'AgentRsom'
    end
    object SPermHelpRsom: TBooleanField
      FieldName = 'HelpRsom'
    end
    object SPermCarryDRsom: TBooleanField
      FieldName = 'CarryDRsom'
    end
    object SPermCloseRsom: TBooleanField
      FieldName = 'CloseRsom'
    end
    object SPermUnlockRsom: TBooleanField
      FieldName = 'UnlockRsom'
    end
    object SPermAlterBillR: TBooleanField
      FieldName = 'AlterBillR'
    end
    object SPermDelBillR: TBooleanField
      FieldName = 'DelBillR'
    end
    object SPermReportsRsom: TBooleanField
      FieldName = 'ReportsRsom'
    end
    object SPermDailyViewR: TBooleanField
      FieldName = 'DailyViewR'
    end
    object SPermChType: TBooleanField
      FieldName = 'ChType'
    end
    object SPermRetDaily: TBooleanField
      FieldName = 'RetDaily'
    end
    object SPermPrepRep: TBooleanField
      FieldName = 'PrepRep'
    end
    object SPermIncoRep: TBooleanField
      FieldName = 'IncoRep'
    end
    object SPermDelRep: TBooleanField
      FieldName = 'DelRep'
    end
    object SPermFinalRep: TBooleanField
      FieldName = 'FinalRep'
    end
    object SPermGenRep: TBooleanField
      FieldName = 'GenRep'
    end
    object SPermGenRepEnt: TBooleanField
      FieldName = 'GenRepEnt'
    end
    object SPermChTypeR: TBooleanField
      FieldName = 'ChTypeR'
    end
    object SPermReCalc: TBooleanField
      FieldName = 'ReCalc'
    end
    object SPermTgValue: TBooleanField
      FieldName = 'TgValue'
    end
    object SPermEsalTr: TBooleanField
      FieldName = 'EsalTr'
    end
    object SPermAgentsTr: TBooleanField
      FieldName = 'AgentsTr'
    end
    object SPermConsTr: TBooleanField
      FieldName = 'ConsTr'
    end
    object SPermSrchTr: TBooleanField
      FieldName = 'SrchTr'
    end
    object SPermRepTr: TBooleanField
      FieldName = 'RepTr'
    end
    object SPermPermTr: TBooleanField
      FieldName = 'PermTr'
    end
    object SPermCurrent: TBooleanField
      FieldName = 'Current'
    end
    object SPermDebit: TBooleanField
      FieldName = 'Debit'
    end
    object SPermLockEsal: TBooleanField
      FieldName = 'LockEsal'
    end
    object SPermUnLockEsal: TBooleanField
      FieldName = 'UnLockEsal'
    end
    object SPermAdmArchive: TBooleanField
      FieldName = 'AdmArchive'
    end
    object SPermAcclistArch: TBooleanField
      FieldName = 'AcclistArch'
    end
    object SPermCreDataBase: TBooleanField
      FieldName = 'CreDataBase'
    end
    object SPermOutPort: TBooleanField
      FieldName = 'OutPort'
    end
    object SPermTransit: TBooleanField
      FieldName = 'Transit'
    end
  end
  object QLoad: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`' +
        ', `BillType`, `StoreType`, `Notes`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Num`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, ' +
        ':`Flag`, :`BillNum`, :`BillType`, :`StoreType`, :`Notes`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Num` = :`Num`, `Tfasel` = :`Tfa' +
        'sel`, `EfrajNum` = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Fla' +
        'g` = :`Flag`, `BillNum` = :`BillNum`, `BillType` = :`BillType`, ' +
        '`StoreType` = :`StoreType`, `Notes` = :`Notes`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT * FROM loed'
      'WHERE '
      '  `loed`.`Auto` = :`Auto`')
    Connection = DB1
    SQL.Strings = (
      'SELECT `loed`.LNum,'
      '       `loed`.Auto,'
      '       `loed`.Qty,'
      '       `loed`.Marks,'
      '       `loed`.GoodsType,'
      '       `loed`.OrgPort,'
      '       `loed`.Loader,'
      '       `loed`.Billloading,'
      '       `loed`.Sender,'
      '       `loed`.Kias,'
      '       `loed`.Weight,'
      '       `loed`.Send,'
      '       `loed`.Goodsname,'
      '       `loed`.Num,'
      '       `loed`.Tfasel,'
      '       `loed`.EfrajNum,'
      '       `loed`.EfrajDate,'
      '       `loed`.Flag,'
      '       `loed`.BillNum,'
      '       `loed`.BillType,'
      '       `loed`.StoreType,'
      '       `loed`.Notes'
      '  FROM porte.`loed` `loed`'
      ' WHERE'
      '((`loed`.LNum =:Num) '
      'AND(`loed`.Billloading LIKE :name))'
      'ORDER BY loed.LNum, loed.Auto, loed.Qty, loed.Marks')
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 660
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Num'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
        Value = nil
      end>
    object QLoadLNum: TIntegerField
      FieldName = 'LNum'
      Origin = 'PORTS."load".LNum'
    end
    object QLoadAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
      Origin = 'PORTS."load".Auto'
    end
    object QLoadQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
      Origin = 'PORTS."load".Qty'
    end
    object QLoadMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object QLoadMarks: TSmallintField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldName = 'Marks'
      Origin = 'PORTS."load".Marks'
    end
    object QLoadGoodsType: TSmallintField
      FieldName = 'GoodsType'
      Origin = 'PORTS."load".GoodsType'
    end
    object QLoadOrgPort: TSmallintField
      FieldName = 'OrgPort'
      Origin = 'PORTS."load".OrgPort'
    end
    object QLoadLoader: TWideStringField
      FieldName = 'Loader'
      Origin = 'PORTS."load".Loader'
      Size = 60
    end
    object QLoadBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
      Origin = 'PORTS."load".Billloading'
    end
    object QLoadGoodsNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkLookup
      FieldName = 'GoodsNm'
      LookupDataSet = GoodsTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TName'
      KeyFields = 'GoodsType'
      Size = 30
      Lookup = True
    end
    object QLoadPortNm: TWideStringField
      DisplayLabel = #1605#1610#1606#1575#1569' '#1575#1604#1588#1581#1606' '#1575#1604#1571#1589#1604#1610
      FieldKind = fkLookup
      FieldName = 'PortNm'
      LookupDataSet = Ports
      LookupKeyFields = 'Num'
      LookupResultField = 'PortName'
      KeyFields = 'OrgPort'
      Lookup = True
    end
    object QLoadLoaderNm: TWideStringField
      DisplayLabel = #1575#1604#1588#1575#1581#1606
      FieldKind = fkLookup
      FieldName = 'LoaderNm'
      LookupDataSet = Ships
      LookupKeyFields = 'Num'
      LookupResultField = 'SName'
      KeyFields = 'Loader'
      Lookup = True
    end
    object QLoadSender: TSmallintField
      FieldName = 'Sender'
      Origin = 'PORTS."load".Sender'
    end
    object QLoadKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
      Origin = 'PORTS."load".Kias'
    end
    object QLoadWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
      Origin = 'PORTS."load".Weight'
    end
    object QLoadSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604' '#1573#1604#1610#1607
      FieldName = 'Send'
      Origin = 'PORTS."load".Send'
      Size = 100
    end
    object QLoadGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Origin = 'PORTS."load".Goodsname'
      Size = 100
    end
    object QLoadNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1607#1610#1603#1604
      FieldName = 'Num'
      Origin = 'PORTS."load".Num'
    end
    object QLoadTfasel: TSmallintField
      FieldName = 'Tfasel'
      Origin = 'PORTS."load".Tfasel'
    end
    object QLoadEfrajNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1575#1601#1585#1575#1580' '#1575#1604#1580#1605#1585#1603#1610
      FieldName = 'EfrajNum'
      Origin = 'PORTS."load".EfrajNum'
      Size = 30
    end
    object QLoadEfrajDate: TDateField
      DisplayLabel = #1578' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'EfrajDate'
      Origin = 'PORTS."load".EfrajDate'
    end
    object QLoadFlag: TSmallintField
      FieldName = 'Flag'
      Origin = 'PORTS."load".Flag'
    end
    object QLoadBillNum: TSmallintField
      DisplayLabel = #1585#1602#1605' '#1602#1575#1574#1605#1577' '#1575#1604#1581#1587#1575#1576
      FieldName = 'BillNum'
      Origin = 'PORTS."load".BillNum'
    end
    object QLoadBillType: TSmallintField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillType'
      Origin = 'PORTS."load".BillType'
    end
    object QLoadStoreType: TSmallintField
      FieldName = 'StoreType'
      Origin = 'PORTS."load".StoreType'
    end
    object QLoadStoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object QLoadNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578
      FieldName = 'Notes'
      Origin = 'PORTS."load".Notes'
      Size = 100
    end
  end
  object DQLoad: TDataSource
    DataSet = QLoad
    Left = 580
    Top = 660
  end
  object QSend: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`' +
        ', `BillType`, `StoreType`, `Notes`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Num`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, ' +
        ':`Flag`, :`BillNum`, :`BillType`, :`StoreType`, :`Notes`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Num` = :`Num`, `Tfasel` = :`Tfa' +
        'sel`, `EfrajNum` = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Fla' +
        'g` = :`Flag`, `BillNum` = :`BillNum`, `BillType` = :`BillType`, ' +
        '`StoreType` = :`StoreType`, `Notes` = :`Notes`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT * FROM loed'
      'WHERE '
      '  `loed`.`Auto` = :`Auto` ')
    Connection = DB1
    SQL.Strings = (
      'SELECT `load`.LNum,'
      '       `load`.Auto,'
      '       `load`.Qty,'
      '       `load`.Marks,'
      '       `load`.GoodsType,'
      '       `load`.OrgPort,'
      '       `load`.Loader,'
      '       `load`.Billloading,'
      '       `load`.Sender,'
      '       `load`.Kias,'
      '       `load`.Weight,'
      '       `load`.Send,'
      '       `load`.Goodsname,'
      '       `load`.Num,'
      '       `load`.Tfasel,'
      '       `load`.EfrajNum,'
      '       `load`.EfrajDate,'
      '       `load`.Flag,'
      '       `load`.BillNum,'
      '       `load`.BillType,'
      '       `load`.StoreType,'
      '       `load`.Notes'
      '  FROM porte.`loed` `load`'
      ' WHERE'
      '((`load`.LNum =:Num) '
      'AND(`load`.Send LIKE :Send))'
      'ORDER BY load.LNum, load.Auto, load.Qty, load.Marks')
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 720
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Num'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Send'
        ParamType = ptInput
        Value = nil
      end>
    object QSendLNum: TIntegerField
      FieldName = 'LNum'
      Origin = 'PORTS."load".LNum'
    end
    object QSendQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
      Origin = 'PORTS."load".Qty'
    end
    object QSendAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
      Origin = 'PORTS."load".Auto'
    end
    object QSendMarks: TSmallintField
      FieldName = 'Marks'
      Origin = 'PORTS."load".Marks'
    end
    object QSendGoodsType: TSmallintField
      FieldName = 'GoodsType'
      Origin = 'PORTS."load".GoodsType'
    end
    object QSendOrgPort: TSmallintField
      FieldName = 'OrgPort'
      Origin = 'PORTS."load".OrgPort'
    end
    object QSendLoader: TWideStringField
      FieldName = 'Loader'
      Origin = 'PORTS."load".Loader'
      Size = 60
    end
    object QSendBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
      Origin = 'PORTS."load".Billloading'
    end
    object QSendSender: TSmallintField
      FieldName = 'Sender'
      Origin = 'PORTS."load".Sender'
    end
    object QSendKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
      Origin = 'PORTS."load".Kias'
    end
    object QSendWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
      Origin = 'PORTS."load".Weight'
    end
    object QSendSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Origin = 'PORTS."load".Send'
      Size = 100
    end
    object QSendGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Origin = 'PORTS."load".Goodsname'
      Size = 100
    end
    object QSendNum: TWideStringField
      FieldName = 'Num'
      Origin = 'PORTS."load".Num'
    end
    object QSendTfasel: TSmallintField
      FieldName = 'Tfasel'
      Origin = 'PORTS."load".Tfasel'
    end
    object QSendEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Origin = 'PORTS."load".EfrajNum'
      Size = 30
    end
    object QSendEfrajDate: TDateField
      FieldName = 'EfrajDate'
      Origin = 'PORTS."load".EfrajDate'
    end
    object QSendFlag: TSmallintField
      FieldName = 'Flag'
      Origin = 'PORTS."load".Flag'
    end
    object QSendBillNum: TSmallintField
      FieldName = 'BillNum'
      Origin = 'PORTS."load".BillNum'
    end
    object QSendBillType: TSmallintField
      FieldName = 'BillType'
      Origin = 'PORTS."load".BillType'
    end
    object QSendStoreType: TSmallintField
      FieldName = 'StoreType'
      Origin = 'PORTS."load".StoreType'
    end
    object QSendMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object QSendNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      FieldName = 'Notes'
      Origin = 'PORTS."load".Notes'
      Size = 100
    end
  end
  object DQSend: TDataSource
    DataSet = QSend
    Left = 580
    Top = 720
  end
  object QHSend: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`' +
        ', `BillType`, `StoreType`, `Notes`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Num`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, ' +
        ':`Flag`, :`BillNum`, :`BillType`, :`StoreType`, :`Notes`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Num` = :`Num`, `Tfasel` = :`Tfa' +
        'sel`, `EfrajNum` = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Fla' +
        'g` = :`Flag`, `BillNum` = :`BillNum`, `BillType` = :`BillType`, ' +
        '`StoreType` = :`StoreType`, `Notes` = :`Notes`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT * FROM loed'
      'WHERE '
      '  `loed`.`Auto` = :`Auto` ')
    Connection = DB1
    SQL.Strings = (
      'SELECT `load`.LNum,'
      '       `load`.Auto,'
      '       `load`.Qty,'
      '       `load`.Marks,'
      '       `load`.GoodsType,'
      '       `load`.OrgPort,'
      '       `load`.Loader,'
      '       `load`.Billloading,'
      '       `load`.Sender,'
      '       `load`.Kias,'
      '       `load`.Weight,'
      '       `load`.Send,'
      '       `load`.Goodsname,'
      '       `load`.Num,'
      '       `load`.Tfasel,'
      '       `load`.EfrajNum,'
      '       `load`.EfrajDate,'
      '       `load`.Flag,'
      '       `load`.BillNum,'
      '       `load`.BillType,'
      '       `load`.StoreType,'
      '       `load`.Notes'
      '  FROM porte.`loed` `load`'
      ' WHERE'
      '(`load`.Send LIKE :Send1)'
      'ORDER BY load.LNum, load.Auto, load.Qty, load.Marks')
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 530
    Top = 780
    ParamData = <
      item
        DataType = ftString
        Name = 'Send1'
        ParamType = ptInput
        Value = nil
      end>
    object QHSendLNum: TIntegerField
      FieldName = 'LNum'
      Origin = 'PORTS."load".LNum'
    end
    object QHSendAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
      Origin = 'PORTS."load".Auto'
    end
    object QHSendQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
      Origin = 'PORTS."load".Qty'
    end
    object QHSendMarks: TSmallintField
      FieldName = 'Marks'
      Origin = 'PORTS."load".Marks'
    end
    object QHSendGoodsType: TSmallintField
      FieldName = 'GoodsType'
      Origin = 'PORTS."load".GoodsType'
    end
    object QHSendOrgPort: TSmallintField
      FieldName = 'OrgPort'
      Origin = 'PORTS."load".OrgPort'
    end
    object QHSendLoader: TWideStringField
      FieldName = 'Loader'
      Origin = 'PORTS."load".Loader'
      Size = 60
    end
    object QHSendBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
      Origin = 'PORTS."load".Billloading'
    end
    object QHSendSender: TSmallintField
      FieldName = 'Sender'
      Origin = 'PORTS."load".Sender'
    end
    object QHSendKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
      Origin = 'PORTS."load".Kias'
    end
    object QHSendWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
      Origin = 'PORTS."load".Weight'
    end
    object QHSendSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Origin = 'PORTS."load".Send'
      Size = 100
    end
    object QHSendGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Origin = 'PORTS."load".Goodsname'
      Size = 100
    end
    object QHSendNum: TWideStringField
      FieldName = 'Num'
      Origin = 'PORTS."load".Num'
    end
    object QHSendTfasel: TSmallintField
      FieldName = 'Tfasel'
      Origin = 'PORTS."load".Tfasel'
    end
    object QHSendMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object QHSendEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Origin = 'PORTS."load".EfrajNum'
      Size = 30
    end
    object QHSendEfrajDate: TDateField
      FieldName = 'EfrajDate'
      Origin = 'PORTS."load".EfrajDate'
    end
    object QHSendFlag: TSmallintField
      FieldName = 'Flag'
      Origin = 'PORTS."load".Flag'
    end
    object QHSendBillNum: TSmallintField
      FieldName = 'BillNum'
      Origin = 'PORTS."load".BillNum'
    end
    object QHSendBillType: TSmallintField
      FieldName = 'BillType'
      Origin = 'PORTS."load".BillType'
    end
    object QHSendStoreType: TSmallintField
      FieldName = 'StoreType'
      Origin = 'PORTS."load".StoreType'
    end
    object QHSendNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      FieldName = 'Notes'
      Origin = 'PORTS."load".Notes'
      Size = 100
    end
  end
  object DQHSend: TDataSource
    DataSet = QHSend
    Left = 580
    Top = 780
  end
  object QNumHekelS: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT `load`.LNum,'
      '       `load`.Auto,'
      '       `load`.Qty,'
      '       `load`.Marks,'
      '       `load`.GoodsType,'
      '       `load`.OrgPort,'
      '       `load`.Loader,'
      '       `load`.Billloading,'
      '       `load`.Sender,'
      '       `load`.Kias,'
      '       `load`.Weight,'
      '       `load`.Send,'
      '       `load`.Goodsname,'
      '       `load`.Num,'
      '       `load`.Tfasel,'
      '       `load`.EfrajNum,'
      '       `load`.EfrajDate,'
      '       `load`.Flag,'
      '       `load`.BillNum,'
      '       `load`.BillType,'
      '       `load`.StoreType,'
      '       `load`.Notes,'
      '       loadlist.Num,'
      '       loadlist.TransNUm,'
      '       loadlist.TransType,'
      '       loadlist.ArriveDate,'
      '       loadlist.EmptyPort,'
      '       loadlist.SideWalk,'
      '       loadlist.Agent,'
      '       loadlist.ListDate,'
      '       loadlist.EndDate,'
      '       loadlist.RofR,'
      '       load2.Num,'
      '       load2.numAuto,'
      '       load2.Qty,'
      '       load2.TypeNm,'
      '       load2.Hawea_Num,'
      '       load2.Tfasel,'
      '       admdet2.Num,'
      '       admdet2.BillNum,'
      '       admdet2.numAuto,'
      '       admdet2.Qty,'
      '       admdet2.Unit,'
      '       admdet2.NumAutoS,'
      '       load2.Lnum'
      '  FROM    (   (   porte.load2 load2'
      '               INNER JOIN'
      '                  porte.`loed` `load`'
      '               ON (load2.Lnum = `load`.Auto))'
      '           INNER JOIN'
      '              porte.loadlist loadlist'
      '           ON (`load`.LNum = loadlist.Num))'
      '       INNER JOIN'
      '          porte.admdet2 admdet2'
      '       ON (admdet2.Num = load2.numAuto)'
      ' WHERE ((loadlist.Num =:Num1) AND (admdet2.BillNum LIKE :name))')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 650
    Top = 660
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
        Value = nil
      end>
    object QNumHekelSLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object QNumHekelSAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object QNumHekelSQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object QNumHekelSMarks: TSmallintField
      FieldName = 'Marks'
    end
    object QNumHekelSGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object QNumHekelSOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object QNumHekelSLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object QNumHekelSBillloading: TWideStringField
      DisplayLabel = #1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
    end
    object QNumHekelSSender: TSmallintField
      FieldName = 'Sender'
    end
    object QNumHekelSKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object QNumHekelSWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
    end
    object QNumHekelSSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1575#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object QNumHekelSNum: TWideStringField
      FieldName = 'Num'
    end
    object QNumHekelSGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 100
    end
    object QNumHekelSTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object QNumHekelSEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Size = 30
    end
    object QNumHekelSEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object QNumHekelSFlag: TSmallintField
      FieldName = 'Flag'
    end
    object QNumHekelSBillNum: TSmallintField
      DisplayLabel = #1602#1575#1574#1605#1577' '#1575#1604#1581#1587#1575#1576
      FieldName = 'BillNum'
    end
    object QNumHekelSBillType: TSmallintField
      FieldName = 'BillType'
    end
    object QNumHekelSStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object QNumHekelSNotes: TWideStringField
      DisplayLabel = #1575#1604#1605#1604#1575#1581#1592#1575#1578
      FieldName = 'Notes'
      Size = 100
    end
    object QNumHekelSNum_1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num_1'
      ReadOnly = True
    end
    object QNumHekelSTransNUm: TSmallintField
      FieldName = 'TransNUm'
      ReadOnly = True
    end
    object QNumHekelSTransType: TSmallintField
      FieldName = 'TransType'
      ReadOnly = True
    end
    object QNumHekelSArriveDate: TDateField
      DisplayLabel = #1578' '#1575#1604#1608#1589#1608#1604
      FieldName = 'ArriveDate'
      ReadOnly = True
    end
    object QNumHekelSEmptyPort: TSmallintField
      FieldName = 'EmptyPort'
      ReadOnly = True
    end
    object QNumHekelSSideWalk: TSmallintField
      FieldName = 'SideWalk'
      ReadOnly = True
    end
    object QNumHekelSAgent: TSmallintField
      FieldName = 'Agent'
      ReadOnly = True
    end
    object QNumHekelSListDate: TDateField
      FieldName = 'ListDate'
      ReadOnly = True
    end
    object QNumHekelSEndDate: TDateField
      DisplayLabel = #1606#1607#1575#1610#1577' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'EndDate'
      ReadOnly = True
    end
    object QNumHekelSRofR: TSmallintField
      FieldName = 'RofR'
      ReadOnly = True
    end
    object QNumHekelSNum_2: TIntegerField
      FieldName = 'Num_2'
      ReadOnly = True
      Required = True
    end
    object QNumHekelSnumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
      ReadOnly = True
    end
    object QNumHekelSQty_1: TSmallintField
      FieldName = 'Qty_1'
      ReadOnly = True
    end
    object QNumHekelSTypeNm: TSmallintField
      FieldName = 'TypeNm'
      ReadOnly = True
    end
    object QNumHekelSHawea_Num: TWideStringField
      FieldName = 'Hawea_Num'
      ReadOnly = True
      Size = 100
    end
    object QNumHekelSTfasel_1: TSmallintField
      FieldName = 'Tfasel_1'
      ReadOnly = True
    end
    object QNumHekelSNum_3: TIntegerField
      FieldName = 'Num_3'
      ReadOnly = True
      Required = True
    end
    object QNumHekelSBillNum_1: TWideStringField
      FieldName = 'BillNum_1'
      ReadOnly = True
      Size = 30
    end
    object QNumHekelSnumAuto_1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto_1'
      ReadOnly = True
    end
    object QNumHekelSQty_2: TFloatField
      FieldName = 'Qty_2'
      ReadOnly = True
    end
    object QNumHekelSUnit: TSmallintField
      FieldName = 'Unit'
      ReadOnly = True
    end
    object QNumHekelSNumAutoS: TIntegerField
      FieldName = 'NumAutoS'
      ReadOnly = True
    end
    object QNumHekelSLnum_1: TIntegerField
      FieldName = 'Lnum_1'
      ReadOnly = True
      Required = True
    end
    object QNumHekelSMarkNm: TStringField
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 100
      Lookup = True
    end
  end
  object DQNumHekelS: TDataSource
    DataSet = QNumHekelS
    Left = 730
    Top = 660
  end
  object QEfrajSrch: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loed'
      
        '  (LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billloadi' +
        'ng, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, EfrajNum' +
        ', EfrajDate, Flag, BillNum, BillType, StoreType, Notes)'
      'VALUES'
      
        '  (:LNum, :Auto, :Qty, :Marks, :GoodsType, :OrgPort, :Loader, :B' +
        'illloading, :Sender, :Kias, :Weight, :Send, :Goodsname, :Num, :T' +
        'fasel, :EfrajNum, :EfrajDate, :Flag, :BillNum, :BillType, :Store' +
        'Type, :Notes)')
    SQLDelete.Strings = (
      'DELETE FROM loed'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLUpdate.Strings = (
      'UPDATE loed'
      'SET'
      
        '  LNum = :LNum, Auto = :Auto, Qty = :Qty, Marks = :Marks, GoodsT' +
        'ype = :GoodsType, OrgPort = :OrgPort, Loader = :Loader, Billload' +
        'ing = :Billloading, Sender = :Sender, Kias = :Kias, Weight = :We' +
        'ight, Send = :Send, Goodsname = :Goodsname, Num = :Num, Tfasel =' +
        ' :Tfasel, EfrajNum = :EfrajNum, EfrajDate = :EfrajDate, Flag = :' +
        'Flag, BillNum = :BillNum, BillType = :BillType, StoreType = :Sto' +
        'reType, Notes = :Notes'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  Auto = :Old_Auto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billl' +
        'oading, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, Efra' +
        'jNum, EfrajDate, Flag, BillNum, BillType, StoreType, Notes FROM ' +
        'loed'
      'WHERE'
      '  Auto = :Auto')
    Connection = DB1
    SQL.Strings = (
      
        'select * from loed where efrajNum =:EfrajNum and LNum >=:FromLNu' +
        'm'
      'and LNum <=:ToLNum')
    Left = 650
    Top = 780
    ParamData = <
      item
        DataType = ftString
        Name = 'EfrajNum'
        ParamType = ptInput
        Size = 30
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'FromLNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'ToLNum'
        ParamType = ptInput
        Value = nil
      end>
    object QEfrajSrchLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object QEfrajSrchAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object QEfrajSrchQty: TFloatField
      FieldName = 'Qty'
    end
    object QEfrajSrchMarks: TSmallintField
      FieldName = 'Marks'
    end
    object QEfrajSrchGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object QEfrajSrchOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object QEfrajSrchLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object QEfrajSrchBillloading: TWideStringField
      FieldName = 'Billloading'
    end
    object QEfrajSrchSender: TSmallintField
      FieldName = 'Sender'
    end
    object QEfrajSrchKias: TFloatField
      FieldName = 'Kias'
    end
    object QEfrajSrchWeight: TFloatField
      FieldName = 'Weight'
    end
    object QEfrajSrchSend: TWideStringField
      FieldName = 'Send'
      Size = 100
    end
    object QEfrajSrchGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 500
    end
    object QEfrajSrchNum: TWideStringField
      FieldName = 'Num'
    end
    object QEfrajSrchTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object QEfrajSrchEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Size = 30
    end
    object QEfrajSrchEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object QEfrajSrchFlag: TSmallintField
      FieldName = 'Flag'
    end
    object QEfrajSrchBillNum: TIntegerField
      FieldName = 'BillNum'
    end
    object QEfrajSrchBillType: TSmallintField
      FieldName = 'BillType'
    end
    object QEfrajSrchStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object QEfrajSrchNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
  end
  object DQEfrajSrch: TDataSource
    DataSet = QEfrajSrch
    Left = 730
    Top = 780
  end
  object DQNumHekel: TDataSource
    DataSet = QNumHekel
    Left = 730
    Top = 720
  end
  object QNumHekel: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT `load`.LNum,'
      '       `load`.Auto,'
      '       `load`.Qty,'
      '       `load`.Marks,'
      '       `load`.GoodsType,'
      '       `load`.OrgPort,'
      '       `load`.Loader,'
      '       `load`.Billloading,'
      '       `load`.Sender,'
      '       `load`.Kias,'
      '       `load`.Weight,'
      '       `load`.Send,'
      '       `load`.Goodsname,'
      '       `load`.Num,'
      '       `load`.Tfasel,'
      '       `load`.EfrajNum,'
      '       `load`.EfrajDate,'
      '       `load`.Flag,'
      '       `load`.BillNum,'
      '       `load`.BillType,'
      '       `load`.StoreType,'
      '       `load`.Notes,'
      '       loadlist.Num,'
      '       loadlist.TransNUm,'
      '       loadlist.TransType,'
      '       loadlist.ArriveDate,'
      '       loadlist.EmptyPort,'
      '       loadlist.SideWalk,'
      '       loadlist.Agent,'
      '       loadlist.ListDate,'
      '       loadlist.EndDate,'
      '       loadlist.RofR,'
      '       load2.Num,'
      '       load2.numAuto,'
      '       load2.Qty,'
      '       load2.TypeNm,'
      '       load2.Hawea_Num,'
      '       load2.Tfasel,'
      '       admdet2.Num,'
      '       admdet2.BillNum,'
      '       admdet2.numAuto,'
      '       admdet2.Qty,'
      '       admdet2.Unit,'
      '       admdet2.NumAutoS,'
      '       load2.Lnum'
      '  FROM    (   (   porte.load2 load2'
      '               INNER JOIN'
      '                  porte.`loed` `load`'
      '               ON (load2.Lnum = `load`.Auto))'
      '           INNER JOIN'
      '              porte.loadlist loadlist'
      '           ON (`load`.LNum = loadlist.Num))'
      '       INNER JOIN'
      '          porte.admdet2 admdet2'
      '       ON (admdet2.Num = load2.numAuto)'
      ' WHERE  (admdet2.BillNum LIKE :name)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 650
    Top = 720
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
        Value = nil
      end>
    object QNumHekelLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object QNumHekelAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object QNumHekelQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object QNumHekelMarks: TSmallintField
      FieldName = 'Marks'
    end
    object QNumHekelGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object QNumHekelOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object QNumHekelLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object QNumHekelMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object QNumHekelBillloading: TWideStringField
      DisplayLabel = #1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
    end
    object QNumHekelSender: TSmallintField
      DisplayLabel = #1575#1604#1605#1585#1587#1575#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Sender'
    end
    object QNumHekelKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object QNumHekelWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
    end
    object QNumHekelSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1575#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object QNumHekelGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 100
    end
    object QNumHekelNum: TWideStringField
      FieldName = 'Num'
    end
    object QNumHekelTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object QNumHekelEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Size = 30
    end
    object QNumHekelEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object QNumHekelFlag: TSmallintField
      FieldName = 'Flag'
    end
    object QNumHekelBillNum: TSmallintField
      DisplayLabel = #1602#1575#1574#1605#1577' '#1575#1604#1581#1587#1575#1576
      FieldName = 'BillNum'
    end
    object QNumHekelBillType: TSmallintField
      FieldName = 'BillType'
    end
    object QNumHekelStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object QNumHekelNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      FieldName = 'Notes'
      Size = 100
    end
    object QNumHekelNum_1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num_1'
      ReadOnly = True
    end
    object QNumHekelTransNUm: TSmallintField
      FieldName = 'TransNUm'
      ReadOnly = True
    end
    object QNumHekelTransType: TSmallintField
      FieldName = 'TransType'
      ReadOnly = True
    end
    object QNumHekelArriveDate: TDateField
      DisplayLabel = #1578' '#1575#1604#1608#1589#1608#1604
      FieldName = 'ArriveDate'
      ReadOnly = True
    end
    object QNumHekelEmptyPort: TSmallintField
      FieldName = 'EmptyPort'
      ReadOnly = True
    end
    object QNumHekelSideWalk: TSmallintField
      FieldName = 'SideWalk'
      ReadOnly = True
    end
    object QNumHekelAgent: TSmallintField
      FieldName = 'Agent'
      ReadOnly = True
    end
    object QNumHekelListDate: TDateField
      FieldName = 'ListDate'
      ReadOnly = True
    end
    object QNumHekelEndDate: TDateField
      DisplayLabel = #1606#1607#1575#1610#1577' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'EndDate'
      ReadOnly = True
    end
    object QNumHekelRofR: TSmallintField
      FieldName = 'RofR'
      ReadOnly = True
    end
    object QNumHekelNum_2: TIntegerField
      FieldName = 'Num_2'
      ReadOnly = True
      Required = True
    end
    object QNumHekelnumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
      ReadOnly = True
    end
    object QNumHekelQty_1: TSmallintField
      FieldName = 'Qty_1'
      ReadOnly = True
    end
    object QNumHekelTypeNm: TSmallintField
      FieldName = 'TypeNm'
      ReadOnly = True
    end
    object QNumHekelHawea_Num: TWideStringField
      FieldName = 'Hawea_Num'
      ReadOnly = True
      Size = 100
    end
    object QNumHekelTfasel_1: TSmallintField
      FieldName = 'Tfasel_1'
      ReadOnly = True
    end
    object QNumHekelNum_3: TIntegerField
      FieldName = 'Num_3'
      ReadOnly = True
      Required = True
    end
    object QNumHekelBillNum_1: TWideStringField
      FieldName = 'BillNum_1'
      ReadOnly = True
      Size = 30
    end
    object QNumHekelnumAuto_1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto_1'
      ReadOnly = True
    end
    object QNumHekelQty_2: TFloatField
      FieldName = 'Qty_2'
      ReadOnly = True
    end
    object QNumHekelUnit: TSmallintField
      FieldName = 'Unit'
      ReadOnly = True
    end
    object QNumHekelNumAutoS: TIntegerField
      FieldName = 'NumAutoS'
      ReadOnly = True
    end
    object QNumHekelLnum_1: TIntegerField
      FieldName = 'Lnum_1'
      ReadOnly = True
      Required = True
    end
  end
  object SearchQ: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`' +
        ', `BillType`, `StoreType`, `Notes`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Num`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, ' +
        ':`Flag`, :`BillNum`, :`BillType`, :`StoreType`, :`Notes`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `LNum` = :`Old_LNum` AND `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Num` = :`Num`, `Tfasel` = :`Tfa' +
        'sel`, `EfrajNum` = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Fla' +
        'g` = :`Flag`, `BillNum` = :`BillNum`, `BillType` = :`BillType`, ' +
        '`StoreType` = :`StoreType`, `Notes` = :`Notes`'
      'WHERE'
      '  `LNum` = :`Old_LNum` AND `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `LNum` = :`Old_LNum` AND `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `loed`.`LNum`, `loed`.`Auto`, `loed`.`Qty`, `loed`.`Marks' +
        '`, `loed`.`GoodsType`, `loed`.`OrgPort`, `loed`.`Loader`, `loed`' +
        '.`Billloading`, `loed`.`Sender`, `loed`.`Kias`, `loed`.`Weight`,' +
        ' `loed`.`Send`, `loed`.`Goodsname`, `loed`.`Num`, `loed`.`Tfasel' +
        '`, `loed`.`EfrajNum`, `loed`.`EfrajDate`, `loed`.`Flag`, `loed`.' +
        '`BillNum`, `loed`.`BillType`, `loed`.`StoreType`, `loed`.`Notes`' +
        ' FROM `loed`'
      'WHERE'
      '  loed.`LNum` = :`LNum` AND loed.`Auto` = :`Auto`')
    Connection = DB1
    SQL.Strings = (
      'SELECT `load`.LNum,'
      '       `load`.Auto,'
      '       `load`.Qty,'
      '       `load`.Marks,'
      '       `load`.GoodsType,'
      '       `load`.OrgPort,'
      '       `load`.Loader,'
      '       `load`.Billloading,'
      '       `load`.Sender,'
      '       `load`.Kias,'
      '       `load`.Weight,'
      '       `load`.Send,'
      '       `load`.Goodsname,'
      '       `load`.Num,'
      '       `load`.Tfasel,'
      '       `load`.EfrajNum,'
      '       `load`.EfrajDate,'
      '       `load`.Flag,'
      '       `load`.BillNum,'
      '       `load`.BillType,'
      '       `load`.StoreType,'
      '       `load`.Notes'
      '  FROM porte.`loed` `load`'
      ' WHERE'
      '(`load`.Billloading LIKE :name)'
      
        'ORDER BY load.LNum, load.Auto, load.Qty, load.Marks, load.GoodsT' +
        'ype, load.OrgPort, load.Loader, load.Billloading, load.Sender, l' +
        'oad.Kias,load.Weight,load.Send, load.Goodsname, load.Num, load.T' +
        'fasel, load.EfrajNum, load.EfrajDate, load.Flag, load.BillNum, l' +
        'oad.BillType, load.StoreType, load.Notes')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 650
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
        Value = nil
      end>
    object SearchQMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object SearchQLNum: TIntegerField
      FieldName = 'LNum'
      Origin = 'PORTS."load".LNum'
    end
    object SearchQAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
      Origin = 'PORTS."load".Auto'
    end
    object SearchQMarks: TSmallintField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldName = 'Marks'
      Origin = 'PORTS."load".Marks'
    end
    object SearchQGoodsType: TSmallintField
      FieldName = 'GoodsType'
      Origin = 'PORTS."load".GoodsType'
    end
    object SearchQOrgPort: TSmallintField
      FieldName = 'OrgPort'
      Origin = 'PORTS."load".OrgPort'
    end
    object SearchQLoader: TWideStringField
      FieldName = 'Loader'
      Origin = 'PORTS."load".Loader'
      Size = 60
    end
    object SearchQBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
      Origin = 'PORTS."load".Billloading'
    end
    object SearchQSender: TSmallintField
      FieldName = 'Sender'
      Origin = 'PORTS."load".Sender'
    end
    object SearchQKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
      Origin = 'PORTS."load".Kias'
    end
    object SearchQWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
      Origin = 'PORTS."load".Weight'
    end
    object SearchQSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604' '#1573#1604#1610#1607
      FieldName = 'Send'
      Origin = 'PORTS."load".Send'
      Size = 100
    end
    object SearchQGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Origin = 'PORTS."load".Goodsname'
      Size = 100
    end
    object SearchQGoodsNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkLookup
      FieldName = 'GoodsNm'
      LookupDataSet = GoodsTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TName'
      KeyFields = 'GoodsType'
      Size = 30
      Lookup = True
    end
    object SearchQPortNm: TWideStringField
      DisplayLabel = #1605#1610#1606#1575#1569' '#1575#1604#1588#1581#1606' '#1575#1604#1571#1589#1604#1610
      FieldKind = fkLookup
      FieldName = 'PortNm'
      LookupDataSet = Ports
      LookupKeyFields = 'Num'
      LookupResultField = 'PortName'
      KeyFields = 'OrgPort'
      Lookup = True
    end
    object SearchQLoaderNm: TWideStringField
      DisplayLabel = #1575#1604#1588#1575#1581#1606
      FieldKind = fkLookup
      FieldName = 'LoaderNm'
      LookupDataSet = Ships
      LookupKeyFields = 'Num'
      LookupResultField = 'SName'
      KeyFields = 'Loader'
      Lookup = True
    end
    object SearchQStoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object SearchQNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1607#1610#1603#1604
      FieldName = 'Num'
      Origin = 'PORTS."load".Num'
    end
    object SearchQBillNum: TSmallintField
      DisplayLabel = #1585#1602#1605' '#1602#1575#1574#1605#1577' '#1575#1604#1581#1587#1575#1576
      FieldName = 'BillNum'
      Origin = 'PORTS."load".BillNum'
    end
    object SearchQStoreType: TSmallintField
      FieldName = 'StoreType'
      Origin = 'PORTS."load".StoreType'
    end
    object SearchQNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1578
      FieldName = 'Notes'
      Origin = 'PORTS."load".Notes'
      Size = 100
    end
    object SearchQStringField: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1575#1601#1585#1575#1580' '#1575#1604#1580#1605#1585#1603#1610
      FieldName = 'EfrajNum'
      Origin = 'PORTS."load".EfrajNum'
      Size = 30
    end
    object SearchQQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
      Origin = 'PORTS."load".Qty'
    end
    object SearchQTfasel: TSmallintField
      FieldName = 'Tfasel'
      Origin = 'PORTS."load".Tfasel'
    end
    object SearchQEfrajDate: TDateField
      FieldName = 'EfrajDate'
      Origin = 'PORTS."load".EfrajDate'
    end
    object SearchQFlag: TSmallintField
      FieldName = 'Flag'
      Origin = 'PORTS."load".Flag'
    end
    object SearchQBillType: TSmallintField
      FieldName = 'BillType'
      Origin = 'PORTS."load".BillType'
    end
  end
  object DSearchQ: TUniDataSource
    DataSet = SearchQ
    Left = 730
    Top = 600
  end
  object VDH: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT loadlist.Num, loadlist.ArriveDate, loadlist.ListDate'
      'FROM porte.loadlist loadlist'
      'WHERE (loadlist.Num =:num)')
    Left = 210
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num'
        ParamType = ptInput
        Value = nil
      end>
    object VDHNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object VDHArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object VDHListDate: TDateField
      FieldName = 'ListDate'
    end
  end
  object LoadCountQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT count(auto) FROM `loed` WHERE lnum=:Lnum and selectf=:Sel' +
        'ectf')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 770
    Top = 140
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Lnum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Selectf'
        ParamType = ptInput
        Value = nil
      end>
    object LoadCountQcountauto: TLargeintField
      FieldName = 'count(auto)'
      ReadOnly = True
      Required = True
    end
  end
  object SVloadHrak: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`, `Bill' +
        'Type`, `StoreType`, `Notes`, `selectF`, `StopF`, `StopWhy`, `Enb' +
        'Edit`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, :`Flag`,' +
        ' :`BillNum`, :`BillType`, :`StoreType`, :`Notes`, :`selectF`, :`' +
        'StopF`, :`StopWhy`, :`EnbEdit`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Tfasel` = :`Tfasel`, `EfrajNum`' +
        ' = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Flag` = :`Flag`, `B' +
        'illNum` = :`BillNum`, `BillType` = :`BillType`, `StoreType` = :`' +
        'StoreType`, `Notes` = :`Notes`, `selectF` = :`selectF`, `StopF` ' +
        '= :`StopF`, `StopWhy` = :`StopWhy`, `EnbEdit` = :`EnbEdit`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `' +
        'Loader`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goo' +
        'dsname`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`, `' +
        'BillType`, `StoreType`, `Notes`, `selectF`, `StopF`, `StopWhy`, ' +
        '`EnbEdit` FROM `loed`'
      'WHERE'
      '  `Auto` = :`Auto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'CALL VloadHrak(:VNumT)')
    BeforeEdit = VloadHrakBeforeEdit
    BeforePost = VloadHrakBeforePost
    Left = 300
    Top = 170
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VloadHrak'
    object SVloadHrakAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object SVloadHrakBillloading: TWideStringField
      FieldName = 'Billloading'
    end
    object SVloadHrakLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object SVloadHrakQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object SVloadHrakMarks: TSmallintField
      FieldName = 'Marks'
    end
    object SVloadHrakGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object SVloadHrakOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object SVloadHrakLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object SVloadHrakSender: TSmallintField
      FieldName = 'Sender'
    end
    object SVloadHrakKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object SVloadHrakWeight: TFloatField
      FieldName = 'Weight'
    end
    object SVloadHrakSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object SVloadHrakGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 500
    end
    object SVloadHrakTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object SVloadHrakEfrajNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1573#1601#1585#1575#1580' '
      FieldName = 'EfrajNum'
      Size = 30
    end
    object SVloadHrakEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object SVloadHrakFlag: TSmallintField
      FieldName = 'Flag'
    end
    object SVloadHrakBillNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillNum'
    end
    object SVloadHrakBillType: TSmallintField
      FieldName = 'BillType'
    end
    object SVloadHrakStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object SVloadHrakNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object SVloadHrakselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object SVloadHrakStopF: TSmallintField
      FieldName = 'StopF'
    end
    object SVloadHrakStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object SVloadHrakEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object SVloadHrakNum: TWideStringField
      FieldName = 'Num'
    end
    object SVloadHrakMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object SVloadHrakStoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object SVloadHrakUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
  end
  object accdet: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `accdet`'
      
        '  (`AccNum`, `AutoNm`, `ListType`, `AccType`, `AccValue`, `AccTo' +
        'tal`, `Enter`, `Exit`, `Num`, `FromDate`, `ToDate`, `Nasb`, `Acc' +
        'ValueD`, `AccTotalD`, `FromDate2`, `ToDate2`, `FromDate3`, `ToDa' +
        'te3`)'
      'VALUES'
      
        '  (:`AccNum`, :`AutoNm`, :`ListType`, :`AccType`, :`AccValue`, :' +
        '`AccTotal`, :`Enter`, :`Exit`, :`Num`, :`FromDate`, :`ToDate`, :' +
        '`Nasb`, :`AccValueD`, :`AccTotalD`, :`FromDate2`, :`ToDate2`, :`' +
        'FromDate3`, :`ToDate3`)')
    SQLDelete.Strings = (
      'DELETE FROM `accdet`'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`')
    SQLUpdate.Strings = (
      'UPDATE `accdet`'
      'SET'
      
        '  `AccNum` = :`AccNum`, `AutoNm` = :`AutoNm`, `ListType` = :`Lis' +
        'tType`, `AccType` = :`AccType`, `AccValue` = :`AccValue`, `AccTo' +
        'tal` = :`AccTotal`, `Enter` = :`Enter`, `Exit` = :`Exit`, `Num` ' +
        '= :`Num`, `FromDate` = :`FromDate`, `ToDate` = :`ToDate`, `Nasb`' +
        ' = :`Nasb`, `AccValueD` = :`AccValueD`, `AccTotalD` = :`AccTotal' +
        'D`, `FromDate2` = :`FromDate2`, `ToDate2` = :`ToDate2`, `FromDat' +
        'e3` = :`FromDate3`, `ToDate3` = :`ToDate3`'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`')
    SQLLock.Strings = (
      'SELECT * FROM accdet'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccNum`, `AutoNm`, `ListType`, `AccType`, `AccValue`, `A' +
        'ccTotal`, `Enter`, `Exit`, `Num`, `FromDate`, `ToDate`, `Nasb`, ' +
        '`AccValueD`, `AccTotalD`, `FromDate2`, `ToDate2`, `FromDate3`, `' +
        'ToDate3` FROM `accdet`'
      'WHERE'
      '  `AutoNm` = :`AutoNm`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accdet')
    Connection = DB1
    SQL.Strings = (
      'CALL Vaccdet(:VNum, :Vtype)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'AccType'
    AfterInsert = accdetAfterInsert
    BeforeEdit = accdetBeforeEdit
    BeforePost = accdetBeforePost
    AfterPost = accdetAfterPost
    BeforeDelete = accdetBeforeDelete
    AfterDelete = accdetAfterDelete
    Left = 260
    Top = 380
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'Vaccdet'
    object accdetAccNum: TIntegerField
      FieldName = 'AccNum'
    end
    object accdetAutoNm: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AutoNm'
    end
    object accdetListType: TSmallintField
      FieldName = 'ListType'
    end
    object accdetAccType: TSmallintField
      DisplayLabel = #1585#1602#1605' '#1606#1608#1593' '#1575#1604#1593#1575#1574#1583
      FieldName = 'AccType'
    end
    object accdetAccValue: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1576#1606#1583
      FieldName = 'AccValue'
      OnValidate = accdetAccValueValidate
      DisplayFormat = '0.000'
    end
    object accdetAccTotal: TFloatField
      DisplayLabel = #1575#1604#1603#1604#1610
      FieldName = 'AccTotal'
      DisplayFormat = '0.000'
    end
    object accdetEnter: TIntegerField
      FieldName = 'Enter'
    end
    object accdetTypeNm: TWideStringField
      DisplayLabel = #1575#1604#1576#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1606
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object accdetTotal: TFloatField
      DisplayLabel = #1575#1604#1603#1604#1610
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object accdetExit: TIntegerField
      FieldName = 'Exit'
    end
    object accdetNum: TWideStringField
      FieldName = 'Num'
    end
    object accdetFromDate: TDateField
      FieldName = 'FromDate'
    end
    object accdetToDate: TDateField
      FieldName = 'ToDate'
    end
    object accdetNasb: TFloatField
      DefaultExpression = '"0.000"'
      DisplayLabel = #1582#1589#1605
      FieldName = 'Nasb'
      DisplayFormat = '0.000%'
    end
  end
  object Attach: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `attach`'
      
        '  (`AccType`, `ListNum`, `AttachNum`, `Listtype`, `AttachDate`, ' +
        '`AttachValue`, `Mezan`, `Kias`, `Qty`, `Remin`, `Electric`, `Dat' +
        'e2`, `Date3`, `WeeksBef`, `Date4`, `Weight`, `Unit`, `ReminDays`' +
        ', `Met`, `St1`, `St2`, `AddWeeks`, `Yyy`, `Date22`, `Oasve`, `Po' +
        'lesa`, `AginNm`, `barcade`, `UserNum`, `ToName`, `StampAbs`, `Lo' +
        'ckF`, `AttDaily`, `DebitF`, `LockCurr`, `DailyCurr`, `CurrF`, `C' +
        'laimF`, `PaidF`, `NTotal`, `NStamp`, `QRALL`, `Ex_Price`, `Date_' +
        'Top`, `DelF`, `DelDate`, `DelWhy`, `AlterAttach`, `progress`, `s' +
        'tampflag`)'
      'VALUES'
      
        '  (:`AccType`, :`ListNum`, :`AttachNum`, :`Listtype`, :`AttachDa' +
        'te`, :`AttachValue`, :`Mezan`, :`Kias`, :`Qty`, :`Remin`, :`Elec' +
        'tric`, :`Date2`, :`Date3`, :`WeeksBef`, :`Date4`, :`Weight`, :`U' +
        'nit`, :`ReminDays`, :`Met`, :`St1`, :`St2`, :`AddWeeks`, :`Yyy`,' +
        ' :`Date22`, :`Oasve`, :`Polesa`, :`AginNm`, :`barcade`, :`UserNu' +
        'm`, :`ToName`, :`StampAbs`, :`LockF`, :`AttDaily`, :`DebitF`, :`' +
        'LockCurr`, :`DailyCurr`, :`CurrF`, :`ClaimF`, :`PaidF`, :`NTotal' +
        '`, :`NStamp`, :`QRALL`, :`Ex_Price`, :`Date_Top`, :`DelF`, :`Del' +
        'Date`, :`DelWhy`, :`AlterAttach`, :`progress`, :`stampflag`)')
    SQLDelete.Strings = (
      'DELETE FROM `attach`'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`')
    SQLUpdate.Strings = (
      'UPDATE `attach`'
      'SET'
      
        '  `AccType` = :`AccType`, `ListNum` = :`ListNum`, `AttachNum` = ' +
        ':`AttachNum`, `Listtype` = :`Listtype`, `AttachDate` = :`AttachD' +
        'ate`, `AttachValue` = :`AttachValue`, `Mezan` = :`Mezan`, `Kias`' +
        ' = :`Kias`, `Qty` = :`Qty`, `Remin` = :`Remin`, `Electric` = :`E' +
        'lectric`, `Date2` = :`Date2`, `Date3` = :`Date3`, `WeeksBef` = :' +
        '`WeeksBef`, `Date4` = :`Date4`, `Weight` = :`Weight`, `Unit` = :' +
        '`Unit`, `ReminDays` = :`ReminDays`, `Met` = :`Met`, `St1` = :`St' +
        '1`, `St2` = :`St2`, `AddWeeks` = :`AddWeeks`, `Yyy` = :`Yyy`, `D' +
        'ate22` = :`Date22`, `Oasve` = :`Oasve`, `Polesa` = :`Polesa`, `A' +
        'ginNm` = :`AginNm`, `barcade` = :`barcade`, `UserNum` = :`UserNu' +
        'm`, `ToName` = :`ToName`, `StampAbs` = :`StampAbs`, `LockF` = :`' +
        'LockF`, `AttDaily` = :`AttDaily`, `DebitF` = :`DebitF`, `LockCur' +
        'r` = :`LockCurr`, `DailyCurr` = :`DailyCurr`, `CurrF` = :`CurrF`' +
        ', `ClaimF` = :`ClaimF`, `PaidF` = :`PaidF`, `NTotal` = :`NTotal`' +
        ', `NStamp` = :`NStamp`, `QRALL` = :`QRALL`, `Ex_Price` = :`Ex_Pr' +
        'ice`, `Date_Top` = :`Date_Top`, `DelF` = :`DelF`, `DelDate` = :`' +
        'DelDate`, `DelWhy` = :`DelWhy`, `AlterAttach` = :`AlterAttach`, ' +
        '`progress` = :`progress`, `stampflag` = :`stampflag`'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`')
    SQLLock.Strings = (
      'SELECT * FROM attach'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT * FROM attach'
      'WHERE '
      '  `AttachNum` = :`AttachNum` ')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM attach')
    Connection = DB1
    SQL.Strings = (
      'CALL VAttach(:VNum, :Vtype)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    IndexFieldNames = 'AttachNum'
    BeforeInsert = AttachBeforeInsert
    AfterInsert = AttachAfterInsert
    BeforeEdit = AttachBeforeEdit
    BeforePost = AttachBeforePost
    AfterPost = AttachAfterPost
    BeforeCancel = AttachBeforeCancel
    BeforeDelete = AttachBeforeDelete
    AfterScroll = AttachAfterScroll
    OnCalcFields = AttachCalcFields
    AfterRefresh = AttachAfterRefresh
    Left = 253
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAttach'
    object AttachAccType: TIntegerField
      FieldName = 'AccType'
      Required = True
    end
    object AttachListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object AttachAttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
    end
    object AttachListtype: TIntegerField
      FieldName = 'Listtype'
      Required = True
    end
    object AttachAttachDate: TDateField
      FieldName = 'AttachDate'
    end
    object AttachAttachValue: TFloatField
      FieldName = 'AttachValue'
    end
    object AttachMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object AttachKias: TFloatField
      FieldName = 'Kias'
    end
    object AttachQty: TFloatField
      FieldName = 'Qty'
    end
    object AttachRemin: TSmallintField
      FieldName = 'Remin'
    end
    object AttachElectric: TSmallintField
      FieldName = 'Electric'
    end
    object AttachDate2: TDateField
      FieldName = 'Date2'
    end
    object AttachDate3: TDateField
      FieldName = 'Date3'
    end
    object AttachWeeksBef: TSmallintField
      FieldName = 'WeeksBef'
    end
    object AttachDate4: TDateField
      FieldName = 'Date4'
    end
    object AttachWeight: TFloatField
      FieldName = 'Weight'
    end
    object AttachUnit: TSmallintField
      FieldName = 'Unit'
    end
    object AttachReminDays: TSmallintField
      FieldName = 'ReminDays'
    end
    object AttachMet: TSmallintField
      FieldName = 'Met'
    end
    object AttachSt1: TSmallintField
      FieldName = 'St1'
    end
    object AttachSt2: TSmallintField
      FieldName = 'St2'
    end
    object AttachAddWeeks: TSmallintField
      FieldName = 'AddWeeks'
    end
    object AttachYyy: TIntegerField
      FieldName = 'Yyy'
    end
    object AttachDate22: TDateField
      FieldName = 'Date22'
    end
    object AttachOasve: TWideStringField
      FieldName = 'Oasve'
      Size = 100
    end
    object AttachAginNm: TSmallintField
      FieldName = 'AginNm'
    end
    object Attachbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object AttachWeeks: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Weeks'
      Calculated = True
    end
    object AttachTfkid: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Tfkid'
      Size = 100
      Calculated = True
    end
    object AttachNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object AttachStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object AttachUserNum: TSmallintField
      FieldName = 'UserNum'
      Required = True
    end
    object AttachUserNm: TStringField
      FieldKind = fkLookup
      FieldName = 'UserNm'
      LookupDataSet = Perm
      LookupKeyFields = 'UserNum'
      LookupResultField = 'UserName'
      KeyFields = 'UserNum'
      Size = 30
      Lookup = True
    end
    object AttachToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object AttachStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object AttachLockF: TSmallintField
      FieldName = 'LockF'
    end
    object AttachAttDaily: TIntegerField
      FieldName = 'AttDaily'
    end
    object AttachDebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object AttachLockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object AttachDailyCurr: TSmallintField
      FieldName = 'DailyCurr'
    end
    object AttachCurrF: TSmallintField
      FieldName = 'CurrF'
    end
    object AttachClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object AttachPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object AttachNTotal: TFloatField
      FieldName = 'NTotal'
    end
    object AttachNStamp: TFloatField
      FieldName = 'NStamp'
    end
    object AttachQRALL: TWideStringField
      FieldName = 'QRALL'
      Size = 500
    end
    object AttachEx_Price: TFloatField
      FieldName = 'Ex_Price'
    end
    object AttachDate_Top: TDateField
      FieldName = 'Date_Top'
    end
    object AttachDelF: TSmallintField
      FieldName = 'DelF'
    end
    object AttachDelDAte: TDateField
      FieldName = 'DelDAte'
    end
    object AttachDelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 100
    end
    object AttachAlterAttach: TIntegerField
      FieldName = 'AlterAttach'
    end
    object Attachprogress: TSmallintField
      FieldName = 'progress'
    end
    object Attachstampflag: TSmallintField
      FieldName = 'stampflag'
      OnValidate = AttachstampflagValidate
    end
    object AttachPolesa: TWideStringField
      FieldName = 'Polesa'
      Size = 250
    end
    object AttachMetNm: TStringField
      FieldKind = fkLookup
      FieldName = 'MetNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'Met'
      Lookup = True
    end
  end
  object AttachD: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `attachd`'
      
        '  (`ListType`, `ListNum`, `AttachNum`, `Acctype`, `Accvalue`, `A' +
        'ccTotal`, `FromDate`, `ToDate`, `numAuto`)'
      'VALUES'
      
        '  (:`ListType`, :`ListNum`, :`AttachNum`, :`Acctype`, :`Accvalue' +
        '`, :`AccTotal`, :`FromDate`, :`ToDate`, :`numAuto`)')
    SQLDelete.Strings = (
      'DELETE FROM `attachd`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLUpdate.Strings = (
      'UPDATE `attachd`'
      'SET'
      
        '  `ListType` = :`ListType`, `ListNum` = :`ListNum`, `AttachNum` ' +
        '= :`AttachNum`, `Acctype` = :`Acctype`, `Accvalue` = :`Accvalue`' +
        ', `AccTotal` = :`AccTotal`, `FromDate` = :`FromDate`, `ToDate` =' +
        ' :`ToDate`, `numAuto` = :`numAuto`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLLock.Strings = (
      'SELECT * FROM attachd'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `ListType`, `ListNum`, `AttachNum`, `Acctype`, `Accvalue`' +
        ', `AccTotal`, `FromDate`, `ToDate`, `numAuto` FROM `attachd`'
      'WHERE'
      '  `numAuto` = :`numAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM attachd')
    Connection = DB1
    SQL.Strings = (
      'CALL VAttachD(:VNum, :Vtype, :VNum1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'Acctype'
    BeforeEdit = AttachDBeforeEdit
    AfterPost = AttachDAfterPost
    BeforeDelete = AttachDBeforeDelete
    Left = 260
    Top = 500
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VNum1'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAttachD'
    object AttachDAcctype: TSmallintField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'Acctype'
      Required = True
    end
    object AttachDnumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object AttachDAttachNum: TIntegerField
      FieldName = 'AttachNum'
      Required = True
    end
    object AttachDListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object AttachDListType: TIntegerField
      FieldName = 'ListType'
      Required = True
    end
    object AttachDAccvalue: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1576#1606#1583
      FieldName = 'Accvalue'
      DisplayFormat = '0.000'
    end
    object AttachDAccTotal: TFloatField
      DisplayLabel = #1575#1604#1603#1604#1610
      FieldName = 'AccTotal'
      DisplayFormat = '0.000'
    end
    object AttachDTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object AttachDFromDate: TDateField
      FieldName = 'FromDate'
    end
    object AttachDToDate: TDateField
      FieldName = 'ToDate'
    end
    object AttachDAccNm: TStringField
      DisplayLabel = #1575#1604#1576#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1606
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'Acctype'
      Size = 60
      Lookup = True
    end
  end
  object Daccdet: TUniDataSource
    DataSet = accdet
    Left = 320
    Top = 380
  end
  object DAttach: TUniDataSource
    DataSet = Attach
    Left = 320
    Top = 440
  end
  object DAttachD: TUniDataSource
    DataSet = AttachD
    Left = 320
    Top = 500
  end
  object DInco: TDataSource
    DataSet = Inco
    Left = 380
    Top = 870
  end
  object Inco: TUniTable
    TableName = 'Inco'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 310
    Top = 870
    object IncoIncNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncNum'
      Required = True
    end
    object IncoIncType: TSmallintField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1606#1583
      FieldName = 'IncType'
      Required = True
    end
    object IncoNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object IncoIncName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncName'
      Size = 60
    end
    object IncoIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object IncoValue1: TFloatField
      FieldName = 'Value1'
    end
    object IncoValue2: TFloatField
      FieldName = 'Value2'
    end
    object IncoMin: TFloatField
      FieldName = 'Min'
    end
    object IncoCeade: TBooleanField
      FieldName = 'Ceade'
    end
  end
  object Dshipment: TDataSource
    DataSet = shipment
    Left = 380
    Top = 690
  end
  object shipment: TUniTable
    TableName = 'shipment'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 310
    Top = 690
    object shipmentshipNo: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'shipNo'
    end
    object shipmentShipName: TWideStringField
      FieldName = 'ShipName'
      Required = True
      Size = 30
    end
    object shipmentShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
  end
  object Reserve: TUniTable
    TableName = 'reserve'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.StrictUpdate = False
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 310
    Top = 750
    object ReserveRes_Desc: TWideStringField
      FieldName = 'Res_Desc'
      Size = 150
    end
    object ReserveRes_Num: TSmallintField
      FieldName = 'Res_Num'
    end
    object ReserveAllowTime: TSmallintField
      FieldName = 'AllowTime'
    end
  end
  object DReserve: TDataSource
    DataSet = Reserve
    Left = 380
    Top = 750
  end
  object agentsrs: TUniTable
    TableName = 'agentsrs'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'AgName'
    Left = 20
    Top = 680
    object agentsrsAgName: TWideStringField
      FieldName = 'AgName'
      Size = 60
    end
    object agentsrsNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object agentsrsAgAbsName: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object agentsrsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 50
    end
    object agentsrsFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object agentsrsE_Mail: TWideStringField
      FieldName = 'E_Mail'
      Size = 30
    end
    object agentsrsAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
  end
  object Dagentsrs: TDataSource
    DataSet = agentsrs
    Left = 80
    Top = 680
  end
  object Income: TUniTable
    TableName = 'Income'
    Connection = DB1
    MasterSource = DMIncome
    MasterFields = 'Mincome'
    DetailFields = 'Auto'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 650
    Top = 460
    object IncomeNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object IncomeIncName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncName'
      Size = 60
    end
    object IncomeIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object IncomeRsef: TFloatField
      DisplayLabel = #1576#1606#1583' '#1585#1589#1610#1601
      FieldName = 'Rsef'
      DisplayFormat = '0.000'
    end
    object IncomeStore: TFloatField
      DisplayLabel = #1576#1606#1583' '#1605#1582#1586#1606
      FieldName = 'Store'
      DisplayFormat = '0.000'
    end
    object IncomeDirect: TFloatField
      DisplayLabel = #1576#1606#1583' '#1605#1576#1575#1588#1585
      FieldName = 'Direct'
      DisplayFormat = '0.000'
    end
    object IncomePerc: TFloatField
      DefaultExpression = '"0.000"'
      DisplayLabel = #1606#1587#1576#1577' '#1605'.'#1603#1610#1605#1575#1608#1610#1577
      FieldName = 'Perc'
      DisplayFormat = '0.00%'
    end
    object IncomeStatesNum: TSmallintField
      DisplayLabel = #1593#1583#1583' '#1575#1604#1581#1575#1604#1575#1578
      FieldName = 'StatesNum'
    end
    object IncomeElectric: TFloatField
      FieldName = 'Electric'
    end
    object IncomeTotalRsef: TFloatField
      FieldName = 'TotalRsef'
    end
    object IncomeTotalStore: TFloatField
      FieldName = 'TotalStore'
    end
    object IncomeTotalDirect: TFloatField
      FieldName = 'TotalDirect'
    end
    object IncomeLiner: TFloatField
      FieldName = 'Liner'
    end
    object IncomeTotalLiner: TFloatField
      FieldName = 'TotalLiner'
    end
    object IncomeTypeFator: TSmallintField
      FieldName = 'TypeFator'
    end
    object IncomeRHayaK: TFloatField
      DisplayLabel = #1603#1576#1610#1585#1577
      FieldName = 'RHayaK'
    end
    object IncomeRHayaS: TFloatField
      DisplayLabel = #1602#1610#1605#1577
      FieldName = 'RHayaS'
    end
    object IncomeDirectState: TSmallintField
      DisplayLabel = #1593#1583#1583' '#1575#1604#1581#1575#1604#1575#1578
      FieldName = 'DirectState'
    end
    object IncomeSHAYAK: TFloatField
      DisplayLabel = #1603#1576#1610#1585#1577
      FieldName = 'SHAYAK'
    end
    object IncomeSHAYAS: TFloatField
      DisplayLabel = #1602#1610#1605#1577
      FieldName = 'SHAYAS'
    end
    object IncomeMHAYAK: TFloatField
      DisplayLabel = #1603#1576#1610#1585#1577
      FieldName = 'MHAYAK'
    end
    object IncomeMHAYAS: TFloatField
      DisplayLabel = #1602#1610#1605#1577
      FieldName = 'MHAYAS'
    end
    object IncomeAuto: TSmallintField
      FieldName = 'Auto'
      Required = True
    end
    object IncomeIncNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncNum'
      Required = True
    end
    object IncomeMin: TFloatField
      DisplayLabel = #1575#1604#1575#1583#1606#1609
      FieldName = 'Min'
      DisplayFormat = '0.000'
    end
    object IncomeMin2: TFloatField
      DisplayLabel = #1575#1604#1575#1583#1606#1609
      FieldName = 'Min2'
      DisplayFormat = '0.000'
    end
  end
  object DIncome: TDataSource
    DataSet = Income
    Left = 710
    Top = 460
  end
  object IIncome: TUniTable
    TableName = 'IIncome'
    Connection = DB1
    MasterSource = Dmincomes
    MasterFields = 'MinCome'
    DetailFields = 'Auto'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'IncNum'
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 920
    Top = 750
    object IIncomeNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object IIncomeIncName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncName'
      Size = 60
    end
    object IIncomeIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object IIncomeRsef: TFloatField
      DisplayLabel = #1576#1606#1583' '#1585#1589#1610#1601
      FieldName = 'Rsef'
      DisplayFormat = '0.000'
    end
    object IIncomeStore: TFloatField
      DisplayLabel = #1576#1606#1583' '#1605#1582#1586#1606
      FieldName = 'Store'
      DisplayFormat = '0.000'
    end
    object IIncomeDirect: TFloatField
      DisplayLabel = #1576#1606#1583' '#1605#1576#1575#1588#1585
      FieldName = 'Direct'
      DisplayFormat = '0.000'
    end
    object IIncomePerc: TFloatField
      DefaultExpression = '"0.000"'
      DisplayLabel = #1606#1587#1576#1577' '#1605'.'#1603#1610#1605#1575#1608#1610#1577
      FieldName = 'Perc'
      DisplayFormat = '0.00%'
    end
    object IIncomeStatesNum: TSmallintField
      DisplayLabel = #1593#1583#1583' '#1575#1604#1581#1575#1604#1575#1578
      FieldName = 'StatesNum'
    end
    object IIncomeElectric: TFloatField
      FieldName = 'Electric'
    end
    object IIncomeTotalRsef: TFloatField
      FieldName = 'TotalRsef'
    end
    object IIncomeTotalStore: TFloatField
      FieldName = 'TotalStore'
    end
    object IIncomeTotalDirect: TFloatField
      FieldName = 'TotalDirect'
    end
    object IIncomeLiner: TFloatField
      FieldName = 'Liner'
    end
    object IIncomeTotalLiner: TFloatField
      FieldName = 'TotalLiner'
    end
    object IIncomeTypeFator: TSmallintField
      FieldName = 'TypeFator'
    end
    object IIncomeRHayaK: TFloatField
      DisplayLabel = #1603#1576#1610#1585#1577
      FieldName = 'RHayaK'
    end
    object IIncomeRHayaS: TFloatField
      DisplayLabel = #1589#1594#1610#1585#1577
      FieldName = 'RHayaS'
    end
    object IIncomeDirectState: TSmallintField
      DisplayLabel = #1593#1583#1583' '#1575#1604#1581#1575#1604#1575#1578
      FieldName = 'DirectState'
    end
    object IIncomeSHAYAK: TFloatField
      DisplayLabel = #1603#1576#1610#1585#1577
      FieldName = 'SHAYAK'
    end
    object IIncomeSHAYAS: TFloatField
      DisplayLabel = #1589#1594#1610#1585#1577
      FieldName = 'SHAYAS'
    end
    object IIncomeMHAYAK: TFloatField
      DisplayLabel = #1603#1576#1610#1585#1577
      FieldName = 'MHAYAK'
    end
    object IIncomeMHAYAS: TFloatField
      DisplayLabel = #1589#1594#1610#1585#1577
      FieldName = 'MHAYAS'
    end
    object IIncomeAuto: TSmallintField
      FieldName = 'Auto'
      Required = True
    end
    object IIncomeIncNum: TIntegerField
      DisplayLabel = #1585#1602#1605
      FieldName = 'IncNum'
      Required = True
    end
    object IIncomeMin: TFloatField
      DisplayLabel = #1575#1604#1575#1583#1606#1609
      FieldName = 'Min'
      DisplayFormat = '0.000'
    end
    object IIncomeMin2: TFloatField
      DisplayLabel = #1575#1604#1575#1583#1606#1609
      FieldName = 'Min2'
      DisplayFormat = '0.000'
    end
  end
  object DIIncome: TDataSource
    DataSet = IIncome
    Left = 1041
    Top = 750
  end
  object MIncome: TUniTable
    TableName = 'MIncome'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'Mincome'
    AfterInsert = MIncomeAfterInsert
    BeforeDelete = MIncomeBeforeDelete
    OnCalcFields = MIncomeCalcFields
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 20
    Top = 750
    object MIncomeMincome: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Mincome'
    end
    object MIncomeShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
    object MIncomeShipMet: TSmallintField
      FieldName = 'ShipMet'
      Required = True
    end
    object MIncomeGoods: TSmallintField
      FieldName = 'Goods'
      Required = True
    end
    object MIncomeElectric: TSmallintField
      FieldName = 'Electric'
    end
    object MIncomeElecVAlue: TFloatField
      FieldName = 'ElecVAlue'
    end
    object MIncomeRemain: TSmallintField
      FieldName = 'Remain'
    end
    object MIncomeRemValue: TFloatField
      FieldName = 'RemValue'
    end
    object MIncomeW1: TFloatField
      FieldName = 'W1'
    end
    object MIncomeW2: TFloatField
      FieldName = 'W2'
    end
    object MIncomeV1: TFloatField
      FieldName = 'V1'
    end
    object MIncomeV2: TFloatField
      FieldName = 'V2'
    end
    object MIncomeIncType: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkCalculated
      FieldName = 'IncType'
      Size = 50
      Calculated = True
    end
    object MIncomeShipTypeNm: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1575#1582#1585#1577
      FieldKind = fkCalculated
      FieldName = 'ShipTypeNm'
      Calculated = True
    end
    object MIncomeMetNm: TStringField
      DisplayLabel = #1591#1585#1610#1602#1577' '#1575#1604#1578#1587#1604#1610#1605
      FieldKind = fkCalculated
      FieldName = 'MetNm'
      Calculated = True
    end
    object MIncomeNUmunit: TIntegerField
      FieldName = 'NUmunit'
    end
    object MIncomeUnitNm: TStringField
      DisplayLabel = #1578#1589#1606#1610#1601
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'NUmunit'
      Size = 120
      Lookup = True
    end
  end
  object DMIncome: TDataSource
    DataSet = MIncome
    Left = 80
    Top = 750
  end
  object Move: TUniTable
    TableName = 'Move'
    Connection = DB1
    MasterFields = 'ListNum;ListType'
    DetailFields = 'ListNum;ListType'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 140
    Top = 830
    object MoveListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object MoveListType: TSmallintField
      FieldName = 'ListType'
    end
    object MoveMoveNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'MoveNum'
    end
    object MoveFromTime: TTimeField
      DisplayLabel = #1605#1606' '#1575#1604#1587#1575#1593#1577
      FieldName = 'FromTime'
      DisplayFormat = 'HH:MM'
      EditMask = '00:00;1; '
    end
    object MoveToTime: TTimeField
      DisplayLabel = #1573#1604#1609' '#1575#1604#1587#1575#1593#1577
      FieldName = 'ToTime'
      DisplayFormat = 'HH:MM'
      EditMask = '00:00;1; '
    end
    object MoveFMove: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FMove'
      Calculated = True
    end
    object MoveTMove: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TMove'
      Calculated = True
    end
    object MoveMoveType: TSmallintField
      DisplayLabel = #1573#1590#1575#1601#1610' / '#1593#1575#1583#1610
      FieldName = 'MoveType'
    end
    object MoveMoveDate: TDateField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1604#1581#1585#1603#1577
      FieldName = 'MoveDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object MoveHolFlag: TSmallintField
      DisplayLabel = #1610#1608#1605' '#1593#1591#1604#1577
      FieldKind = fkCalculated
      FieldName = 'HolFlag'
      Calculated = True
    end
    object MoveFriFlag: TSmallintField
      DisplayLabel = #1610#1608#1605' '#1580#1605#1593#1577
      FieldKind = fkCalculated
      FieldName = 'FriFlag'
      Calculated = True
    end
    object MoveHours: TSmallintField
      DisplayLabel = #1593#1583#1583' '#1575#1604#1587#1575#1593#1575#1578
      FieldKind = fkCalculated
      FieldName = 'Hours'
      Calculated = True
    end
  end
  object Move2: TUniTable
    TableName = 'Move'
    Connection = DB1
    MasterFields = 'ListNum;ListType'
    DetailFields = 'ListNum;ListType'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 140
    Top = 890
    object Move2ListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object Move2ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object Move2MoveNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MoveNum'
    end
    object Move2MoveType: TSmallintField
      FieldName = 'MoveType'
    end
    object Move2MoveDate: TDateField
      FieldName = 'MoveDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object Move2FromTime: TTimeField
      FieldName = 'FromTime'
    end
    object Move2ToTime: TTimeField
      FieldName = 'ToTime'
    end
    object Move2HolFlag: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'HolFlag'
      Calculated = True
    end
    object Move2FriFlag: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'FriFlag'
      Calculated = True
    end
    object Move2Hours: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Hours'
      Calculated = True
    end
    object Move2FMove: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'FMove'
      Calculated = True
    end
    object Move2TMove: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'TMove'
      Calculated = True
    end
  end
  object DMove: TDataSource
    DataSet = Move
    Left = 190
    Top = 830
  end
  object DMove2: TDataSource
    DataSet = Move2
    Left = 190
    Top = 890
  end
  object VloedB: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`' +
        ', `BillType`, `StoreType`, `Notes`, `selectF`, `StopF`, `StopWhy' +
        '`, `EnbEdit`, `UserSelected`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Num`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, ' +
        ':`Flag`, :`BillNum`, :`BillType`, :`StoreType`, :`Notes`, :`sele' +
        'ctF`, :`StopF`, :`StopWhy`, :`EnbEdit`, :`UserSelected`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Num` = :`Num`, `Tfasel` = :`Tfa' +
        'sel`, `EfrajNum` = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Fla' +
        'g` = :`Flag`, `BillNum` = :`BillNum`, `BillType` = :`BillType`, ' +
        '`StoreType` = :`StoreType`, `Notes` = :`Notes`, `selectF` = :`se' +
        'lectF`, `StopF` = :`StopF`, `StopWhy` = :`StopWhy`, `EnbEdit` = ' +
        ':`EnbEdit`, `UserSelected` = :`UserSelected`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `' +
        'Loader`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goo' +
        'dsname`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `Bill' +
        'Num`, `BillType`, `StoreType`, `Notes`, `selectF`, `StopF`, `Sto' +
        'pWhy`, `EnbEdit`, `UserSelected` FROM `loed`'
      'WHERE'
      '  `Auto` = :`Auto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'CALL VloedB(:VAuto, :VBillNum)')
    Left = 450
    Top = 170
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VAuto'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'VBillNum'
        ParamType = ptInput
        Size = 100
        Value = nil
      end>
    CommandStoredProcName = 'VloedB'
    object VloedBLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object VloedBAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object VloedBQty: TFloatField
      FieldName = 'Qty'
    end
    object VloedBMarks: TSmallintField
      FieldName = 'Marks'
    end
    object VloedBGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object VloedBOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object VloedBLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object VloedBBillloading: TWideStringField
      FieldName = 'Billloading'
    end
    object VloedBSender: TSmallintField
      FieldName = 'Sender'
    end
    object VloedBKias: TFloatField
      FieldName = 'Kias'
    end
    object VloedBWeight: TFloatField
      FieldName = 'Weight'
    end
    object VloedBSend: TWideStringField
      FieldName = 'Send'
      Size = 100
    end
    object VloedBGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 500
    end
    object VloedBNum: TWideStringField
      FieldName = 'Num'
    end
    object VloedBTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object VloedBEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Size = 30
    end
    object VloedBEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object VloedBFlag: TSmallintField
      FieldName = 'Flag'
    end
    object VloedBBillNum: TIntegerField
      FieldName = 'BillNum'
    end
    object VloedBBillType: TSmallintField
      FieldName = 'BillType'
    end
    object VloedBStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object VloedBNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object VloedBselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object VloedBStopF: TSmallintField
      FieldName = 'StopF'
    end
    object VloedBStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object VloedBEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object VloedBUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
  end
  object VAccList1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `acclist`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate`, `' +
        'EndEmpDate`, `GoodsQty`, `ShipBillNum`, `WeSpace`, `Total`, `Adm' +
        'isMet`, `Stamp`, `Unit`, `BillNum`, `loukof`, `Toname`, `Electri' +
        'c`, `Remain`, `Wight`, `LocOrFor`, `Petrol`, `Dirty`, `FTime1`, ' +
        '`EndTime1`, `Move1`, `FTime2`, `EndTime2`, `Move2`, `ShipType`, ' +
        '`Mezan`, `Kemawea`, `Frg`, `Tadl`, `FrgFlag`, `HjzFlag`, `TadlFl' +
        'ag`, `Edafe1`, `Edafe2`, `Goodsname`, `Moveall`, `MovV1`, `MovV2' +
        '`, `ElecQty`, `RemQty`, `LocWitOut`, `ChechDate`, `Month`, `Cars' +
        '`, `States`, `Qty2`, `Unit2`, `ElecDate`, `RemDate`, `MezDate`, ' +
        '`Roafe`, `Dama`, `TfteshCar`, `AttTo`, `Leverweight`, `Saba`, `W' +
        'eeksNum`, `States1`, `States2`, `Days`, `DaysM`, `EleeshDate`, `' +
        'ReshDate`, `DaysMM`, `Sapa`, `AutoDate`, `AginNm`, `F1Num`, `Use' +
        'r`, `DateTop`, `NumT`, `barcade`, `archiveF`, `HoursNum`, `coupo' +
        'nIn`, `couponOut`, `TelegramNum`, `PaidF`, `UnitRsom`, `Num1`, `' +
        'Num2`, `Num3`, `Num4`, `Num5`, `Num6`, `Num7`, `Num8`, `ShipMet`' +
        ', `Reserve`, `FrgShip`, `Qty3`, `BillNum2`, `SubType`, `DelF`, `' +
        'DelDate`, `boat`, `AgntR`, `SharedF`, `ChemicalF`, `AlterBill`, ' +
        '`StampAbs`, `ListNumR`, `DailyNum`, `AttachNum`, `DisCount`, `De' +
        'lWhy`, `cutF`, `CurrntF`, `DebitF`, `CurrDate`, `DailyCurr`, `Lo' +
        'ckCurr`, `ClaimF`, `ClaimDate`, `ClaimNum`, `Msrahname`, `phoneM' +
        'sr`, `NTotal`, `NStamp`, `QRALL`, `loadnum`, `Billloading`, `Tot' +
        'alD`, `InvoiceD`, `NTotalD`, `NStampD`, `DollarPrice`, `Ex_Price' +
        '`, `SubType2`, `shared_usefork`, `GoodsDesc`, `To`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`ShipNum`, :`ArriveDat' +
        'e`, :`EndEmpDate`, :`GoodsQty`, :`ShipBillNum`, :`WeSpace`, :`To' +
        'tal`, :`AdmisMet`, :`Stamp`, :`Unit`, :`BillNum`, :`loukof`, :`T' +
        'oname`, :`Electric`, :`Remain`, :`Wight`, :`LocOrFor`, :`Petrol`' +
        ', :`Dirty`, :`FTime1`, :`EndTime1`, :`Move1`, :`FTime2`, :`EndTi' +
        'me2`, :`Move2`, :`ShipType`, :`Mezan`, :`Kemawea`, :`Frg`, :`Tad' +
        'l`, :`FrgFlag`, :`HjzFlag`, :`TadlFlag`, :`Edafe1`, :`Edafe2`, :' +
        '`Goodsname`, :`Moveall`, :`MovV1`, :`MovV2`, :`ElecQty`, :`RemQt' +
        'y`, :`LocWitOut`, :`ChechDate`, :`Month`, :`Cars`, :`States`, :`' +
        'Qty2`, :`Unit2`, :`ElecDate`, :`RemDate`, :`MezDate`, :`Roafe`, ' +
        ':`Dama`, :`TfteshCar`, :`AttTo`, :`Leverweight`, :`Saba`, :`Week' +
        'sNum`, :`States1`, :`States2`, :`Days`, :`DaysM`, :`EleeshDate`,' +
        ' :`ReshDate`, :`DaysMM`, :`Sapa`, :`AutoDate`, :`AginNm`, :`F1Nu' +
        'm`, :`User`, :`DateTop`, :`NumT`, :`barcade`, :`archiveF`, :`Hou' +
        'rsNum`, :`couponIn`, :`couponOut`, :`TelegramNum`, :`PaidF`, :`U' +
        'nitRsom`, :`Num1`, :`Num2`, :`Num3`, :`Num4`, :`Num5`, :`Num6`, ' +
        ':`Num7`, :`Num8`, :`ShipMet`, :`Reserve`, :`FrgShip`, :`Qty3`, :' +
        '`BillNum2`, :`SubType`, :`DelF`, :`DelDate`, :`boat`, :`AgntR`, ' +
        ':`SharedF`, :`ChemicalF`, :`AlterBill`, :`StampAbs`, :`ListNumR`' +
        ', :`DailyNum`, :`AttachNum`, :`DisCount`, :`DelWhy`, :`cutF`, :`' +
        'CurrntF`, :`DebitF`, :`CurrDate`, :`DailyCurr`, :`LockCurr`, :`C' +
        'laimF`, :`ClaimDate`, :`ClaimNum`, :`Msrahname`, :`phoneMsr`, :`' +
        'NTotal`, :`NStamp`, :`QRALL`, :`loadnum`, :`Billloading`, :`Tota' +
        'lD`, :`InvoiceD`, :`NTotalD`, :`NStampD`, :`DollarPrice`, :`Ex_P' +
        'rice`, :`SubType2`, :`shared_usefork`, :`GoodsDesc`, :`To`)')
    SQLDelete.Strings = (
      'DELETE FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLUpdate.Strings = (
      'UPDATE `acclist`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `ShipNum` = :`ShipNum`, `ArriveDate` = :`ArriveDat' +
        'e`, `EndEmpDate` = :`EndEmpDate`, `GoodsQty` = :`GoodsQty`, `Shi' +
        'pBillNum` = :`ShipBillNum`, `WeSpace` = :`WeSpace`, `Total` = :`' +
        'Total`, `AdmisMet` = :`AdmisMet`, `Stamp` = :`Stamp`, `Unit` = :' +
        '`Unit`, `BillNum` = :`BillNum`, `loukof` = :`loukof`, `Toname` =' +
        ' :`Toname`, `Electric` = :`Electric`, `Remain` = :`Remain`, `Wig' +
        'ht` = :`Wight`, `LocOrFor` = :`LocOrFor`, `Petrol` = :`Petrol`, ' +
        '`Dirty` = :`Dirty`, `FTime1` = :`FTime1`, `EndTime1` = :`EndTime' +
        '1`, `Move1` = :`Move1`, `FTime2` = :`FTime2`, `EndTime2` = :`End' +
        'Time2`, `Move2` = :`Move2`, `ShipType` = :`ShipType`, `Mezan` = ' +
        ':`Mezan`, `Kemawea` = :`Kemawea`, `Frg` = :`Frg`, `Tadl` = :`Tad' +
        'l`, `FrgFlag` = :`FrgFlag`, `HjzFlag` = :`HjzFlag`, `TadlFlag` =' +
        ' :`TadlFlag`, `Edafe1` = :`Edafe1`, `Edafe2` = :`Edafe2`, `Goods' +
        'name` = :`Goodsname`, `Moveall` = :`Moveall`, `MovV1` = :`MovV1`' +
        ', `MovV2` = :`MovV2`, `ElecQty` = :`ElecQty`, `RemQty` = :`RemQt' +
        'y`, `LocWitOut` = :`LocWitOut`, `ChechDate` = :`ChechDate`, `Mon' +
        'th` = :`Month`, `Cars` = :`Cars`, `States` = :`States`, `Qty2` =' +
        ' :`Qty2`, `Unit2` = :`Unit2`, `ElecDate` = :`ElecDate`, `RemDate' +
        '` = :`RemDate`, `MezDate` = :`MezDate`, `Roafe` = :`Roafe`, `Dam' +
        'a` = :`Dama`, `TfteshCar` = :`TfteshCar`, `AttTo` = :`AttTo`, `L' +
        'everweight` = :`Leverweight`, `Saba` = :`Saba`, `WeeksNum` = :`W' +
        'eeksNum`, `States1` = :`States1`, `States2` = :`States2`, `Days`' +
        ' = :`Days`, `DaysM` = :`DaysM`, `EleeshDate` = :`EleeshDate`, `R' +
        'eshDate` = :`ReshDate`, `DaysMM` = :`DaysMM`, `Sapa` = :`Sapa`, ' +
        '`AutoDate` = :`AutoDate`, `AginNm` = :`AginNm`, `F1Num` = :`F1Nu' +
        'm`, `User` = :`User`, `DateTop` = :`DateTop`, `NumT` = :`NumT`, ' +
        '`barcade` = :`barcade`, `archiveF` = :`archiveF`, `HoursNum` = :' +
        '`HoursNum`, `couponIn` = :`couponIn`, `couponOut` = :`couponOut`' +
        ', `TelegramNum` = :`TelegramNum`, `PaidF` = :`PaidF`, `UnitRsom`' +
        ' = :`UnitRsom`, `Num1` = :`Num1`, `Num2` = :`Num2`, `Num3` = :`N' +
        'um3`, `Num4` = :`Num4`, `Num5` = :`Num5`, `Num6` = :`Num6`, `Num' +
        '7` = :`Num7`, `Num8` = :`Num8`, `ShipMet` = :`ShipMet`, `Reserve' +
        '` = :`Reserve`, `FrgShip` = :`FrgShip`, `Qty3` = :`Qty3`, `BillN' +
        'um2` = :`BillNum2`, `SubType` = :`SubType`, `DelF` = :`DelF`, `D' +
        'elDate` = :`DelDate`, `boat` = :`boat`, `AgntR` = :`AgntR`, `Sha' +
        'redF` = :`SharedF`, `ChemicalF` = :`ChemicalF`, `AlterBill` = :`' +
        'AlterBill`, `StampAbs` = :`StampAbs`, `ListNumR` = :`ListNumR`, ' +
        '`DailyNum` = :`DailyNum`, `AttachNum` = :`AttachNum`, `DisCount`' +
        ' = :`DisCount`, `DelWhy` = :`DelWhy`, `cutF` = :`cutF`, `CurrntF' +
        '` = :`CurrntF`, `DebitF` = :`DebitF`, `CurrDate` = :`CurrDate`, ' +
        '`DailyCurr` = :`DailyCurr`, `LockCurr` = :`LockCurr`, `ClaimF` =' +
        ' :`ClaimF`, `ClaimDate` = :`ClaimDate`, `ClaimNum` = :`ClaimNum`' +
        ', `Msrahname` = :`Msrahname`, `phoneMsr` = :`phoneMsr`, `NTotal`' +
        ' = :`NTotal`, `NStamp` = :`NStamp`, `QRALL` = :`QRALL`, `loadnum' +
        '` = :`loadnum`, `Billloading` = :`Billloading`, `TotalD` = :`Tot' +
        'alD`, `InvoiceD` = :`InvoiceD`, `NTotalD` = :`NTotalD`, `NStampD' +
        '` = :`NStampD`, `DollarPrice` = :`DollarPrice`, `Ex_Price` = :`E' +
        'x_Price`, `SubType2` = :`SubType2`, `shared_usefork` = :`shared_' +
        'usefork`, `GoodsDesc` = :`GoodsDesc`, `To` = :`To`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLLock.Strings = (
      'SELECT * FROM acclist'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate' +
        '`, `EndEmpDate`, `GoodsQty`, `ShipBillNum`, `WeSpace`, `Total`, ' +
        '`AdmisMet`, `Stamp`, `Unit`, `BillNum`, `loukof`, `Toname`, `Ele' +
        'ctric`, `Remain`, `Wight`, `LocOrFor`, `Petrol`, `Dirty`, `FTime' +
        '1`, `EndTime1`, `Move1`, `FTime2`, `EndTime2`, `Move2`, `ShipTyp' +
        'e`, `Mezan`, `Kemawea`, `Frg`, `Tadl`, `FrgFlag`, `HjzFlag`, `Ta' +
        'dlFlag`, `Edafe1`, `Edafe2`, `Goodsname`, `Moveall`, `MovV1`, `M' +
        'ovV2`, `ElecQty`, `RemQty`, `LocWitOut`, `ChechDate`, `Month`, `' +
        'Cars`, `States`, `Qty2`, `Unit2`, `ElecDate`, `RemDate`, `MezDat' +
        'e`, `Roafe`, `Dama`, `TfteshCar`, `AttTo`, `Leverweight`, `Saba`' +
        ', `WeeksNum`, `States1`, `States2`, `Days`, `DaysM`, `EleeshDate' +
        '`, `ReshDate`, `DaysMM`, `Sapa`, `AutoDate`, `AginNm`, `F1Num`, ' +
        '`User`, `DateTop`, `NumT`, `barcade`, `archiveF`, `HoursNum`, `c' +
        'ouponIn`, `couponOut`, `TelegramNum`, `PaidF`, `UnitRsom`, `Num1' +
        '`, `Num2`, `Num3`, `Num4`, `Num5`, `Num6`, `Num7`, `Num8`, `Ship' +
        'Met`, `Reserve`, `FrgShip`, `Qty3`, `BillNum2`, `SubType`, `DelF' +
        '`, `DelDate`, `boat`, `AgntR`, `SharedF`, `ChemicalF`, `AlterBil' +
        'l`, `StampAbs`, `ListNumR`, `DailyNum`, `AttachNum`, `DisCount`,' +
        ' `DelWhy`, `cutF`, `CurrntF`, `DebitF`, `CurrDate`, `DailyCurr`,' +
        ' `LockCurr`, `ClaimF`, `ClaimDate`, `ClaimNum`, `Msrahname`, `ph' +
        'oneMsr`, `NTotal`, `NStamp`, `QRALL`, `loadnum`, `Billloading`, ' +
        '`TotalD`, `InvoiceD`, `NTotalD`, `NStampD`, `DollarPrice`, `Ex_P' +
        'rice`, `SubType2`, `shared_usefork`, `GoodsDesc`, `To` FROM `acc' +
        'list`'
      'WHERE'
      '  `ListNum` = :`ListNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM acclist')
    Connection = DB1
    SQL.Strings = (
      'CALL VAccList1(:VNum, :Vtype)')
    Left = 458
    Top = 310
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAccList1'
    object VAccList1ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object VAccList1ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object VAccList1ListDate: TDateField
      FieldName = 'ListDate'
    end
    object VAccList1ShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object VAccList1ArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object VAccList1EndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object VAccList1GoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object VAccList1GoodsQty: TFloatField
      FieldName = 'GoodsQty'
    end
    object VAccList1ShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object VAccList1WeSpace: TFloatField
      FieldName = 'WeSpace'
    end
    object VAccList1Total: TFloatField
      FieldName = 'Total'
    end
    object VAccList1AdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object VAccList1Stamp: TFloatField
      FieldName = 'Stamp'
    end
    object VAccList1Unit: TSmallintField
      FieldName = 'Unit'
    end
    object VAccList1BillNum: TWideStringField
      FieldName = 'BillNum'
      Size = 300
    end
    object VAccList1loukof: TSmallintField
      FieldName = 'loukof'
    end
    object VAccList1Toname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object VAccList1Electric: TSmallintField
      FieldName = 'Electric'
    end
    object VAccList1Remain: TSmallintField
      FieldName = 'Remain'
    end
    object VAccList1Wight: TFloatField
      FieldName = 'Wight'
    end
    object VAccList1LocOrFor: TWideStringField
      FieldName = 'LocOrFor'
      Size = 6
    end
    object VAccList1Petrol: TSmallintField
      FieldName = 'Petrol'
    end
    object VAccList1Dirty: TSmallintField
      FieldName = 'Dirty'
    end
    object VAccList1FTime1: TTimeField
      FieldName = 'FTime1'
    end
    object VAccList1EndTime1: TTimeField
      FieldName = 'EndTime1'
    end
    object VAccList1Move1: TSmallintField
      FieldName = 'Move1'
    end
    object VAccList1FTime2: TTimeField
      FieldName = 'FTime2'
    end
    object VAccList1EndTime2: TTimeField
      FieldName = 'EndTime2'
    end
    object VAccList1Move2: TSmallintField
      FieldName = 'Move2'
    end
    object VAccList1ShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object VAccList1Mezan: TSmallintField
      FieldName = 'Mezan'
    end
    object VAccList1Kemawea: TSmallintField
      FieldName = 'Kemawea'
    end
    object VAccList1Frg: TSmallintField
      FieldName = 'Frg'
    end
    object VAccList1Tadl: TSmallintField
      FieldName = 'Tadl'
    end
    object VAccList1FrgFlag: TSmallintField
      FieldName = 'FrgFlag'
    end
    object VAccList1HjzFlag: TSmallintField
      FieldName = 'HjzFlag'
    end
    object VAccList1TadlFlag: TSmallintField
      FieldName = 'TadlFlag'
    end
    object VAccList1Edafe1: TSmallintField
      FieldName = 'Edafe1'
    end
    object VAccList1Edafe2: TSmallintField
      FieldName = 'Edafe2'
    end
    object VAccList1Goodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 100
    end
    object VAccList1Moveall: TSmallintField
      FieldName = 'Moveall'
    end
    object VAccList1MovV1: TFloatField
      FieldName = 'MovV1'
    end
    object VAccList1MovV2: TFloatField
      FieldName = 'MovV2'
    end
    object VAccList1LocWitOut: TSmallintField
      FieldName = 'LocWitOut'
    end
    object VAccList1ChechDate: TDateField
      FieldName = 'ChechDate'
    end
    object VAccList1Month: TSmallintField
      FieldName = 'Month'
    end
    object VAccList1Cars: TSmallintField
      FieldName = 'Cars'
    end
    object VAccList1States: TSmallintField
      FieldName = 'States'
    end
    object VAccList1Qty2: TSmallintField
      FieldName = 'Qty2'
    end
    object VAccList1Unit2: TSmallintField
      FieldName = 'Unit2'
    end
    object VAccList1ElecDate: TDateField
      FieldName = 'ElecDate'
    end
    object VAccList1RemDate: TDateField
      FieldName = 'RemDate'
    end
    object VAccList1MezDate: TDateField
      FieldName = 'MezDate'
    end
    object VAccList1Roafe: TSmallintField
      FieldName = 'Roafe'
    end
    object VAccList1Dama: TSmallintField
      FieldName = 'Dama'
    end
    object VAccList1TfteshCar: TSmallintField
      FieldName = 'TfteshCar'
    end
    object VAccList1AttTo: TWideStringField
      FieldName = 'AttTo'
    end
    object VAccList1Leverweight: TFloatField
      FieldName = 'Leverweight'
    end
    object VAccList1Saba: TSmallintField
      FieldName = 'Saba'
    end
    object VAccList1WeeksNum: TSmallintField
      FieldName = 'WeeksNum'
    end
    object VAccList1States1: TSmallintField
      FieldName = 'States1'
    end
    object VAccList1States2: TSmallintField
      FieldName = 'States2'
    end
    object VAccList1Days: TSmallintField
      FieldName = 'Days'
    end
    object VAccList1DaysM: TSmallintField
      FieldName = 'DaysM'
    end
    object VAccList1EleeshDate: TDateField
      FieldName = 'EleeshDate'
    end
    object VAccList1ReshDate: TDateField
      FieldName = 'ReshDate'
    end
    object VAccList1DaysMM: TFloatField
      FieldName = 'DaysMM'
    end
    object VAccList1Sapa: TSmallintField
      FieldName = 'Sapa'
    end
    object VAccList1AutoDate: TDateField
      FieldName = 'AutoDate'
    end
    object VAccList1AginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object VAccList1F1Num: TSmallintField
      FieldName = 'F1Num'
    end
    object VAccList1User: TIntegerField
      FieldName = 'User'
    end
    object VAccList1DateTop: TDateField
      FieldName = 'DateTop'
    end
    object VAccList1NumT: TIntegerField
      FieldName = 'NumT'
    end
    object VAccList1barcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object VAccList1archiveF: TShortintField
      FieldName = 'archiveF'
      Required = True
    end
    object VAccList1HoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object VAccList1couponIn: TIntegerField
      FieldName = 'couponIn'
    end
    object VAccList1couponOut: TIntegerField
      FieldName = 'couponOut'
    end
    object VAccList1TelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object VAccList1PaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object VAccList1UnitRsom: TSmallintField
      FieldName = 'UnitRsom'
    end
    object VAccList1Num1: TSmallintField
      FieldName = 'Num1'
    end
    object VAccList1Num2: TSmallintField
      FieldName = 'Num2'
    end
    object VAccList1Num3: TSmallintField
      FieldName = 'Num3'
    end
    object VAccList1Num4: TSmallintField
      FieldName = 'Num4'
    end
    object VAccList1Num5: TSmallintField
      FieldName = 'Num5'
    end
    object VAccList1Num6: TSmallintField
      FieldName = 'Num6'
    end
    object VAccList1Num7: TSmallintField
      FieldName = 'Num7'
    end
    object VAccList1Num8: TSmallintField
      FieldName = 'Num8'
    end
    object VAccList1ShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object VAccList1Reserve: TSmallintField
      FieldName = 'Reserve'
    end
    object VAccList1FrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object VAccList1Qty3: TSmallintField
      FieldName = 'Qty3'
    end
    object VAccList1BillNum2: TWideStringField
      FieldName = 'BillNum2'
      Size = 300
    end
    object VAccList1SubType: TSmallintField
      FieldName = 'SubType'
    end
    object VAccList1DelF: TSmallintField
      FieldName = 'DelF'
    end
    object VAccList1DelDate: TDateField
      FieldName = 'DelDate'
    end
    object VAccList1boat: TSmallintField
      FieldName = 'boat'
    end
    object VAccList1AgntR: TSmallintField
      FieldName = 'AgntR'
    end
    object VAccList1SharedF: TSmallintField
      FieldName = 'SharedF'
    end
    object VAccList1ChemicalF: TSmallintField
      FieldName = 'ChemicalF'
    end
    object VAccList1AlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object VAccList1StampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object VAccList1ListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
    object VAccList1DailyNum: TIntegerField
      FieldName = 'DailyNum'
    end
    object VAccList1AttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object VAccList1DisCount: TFloatField
      FieldName = 'DisCount'
    end
    object VAccList1DelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 70
    end
    object VAccList1cutF: TSmallintField
      FieldName = 'cutF'
    end
    object VAccList1CurrntF: TSmallintField
      FieldName = 'CurrntF'
    end
    object VAccList1DebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object VAccList1CurrDate: TDateField
      FieldName = 'CurrDate'
    end
    object VAccList1DailyCurr: TIntegerField
      FieldName = 'DailyCurr'
    end
    object VAccList1LockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object VAccList1ClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object VAccList1ClaimDate: TDateField
      FieldName = 'ClaimDate'
    end
    object VAccList1ClaimNum: TIntegerField
      FieldName = 'ClaimNum'
    end
  end
  object DHoliday: TDataSource
    DataSet = Holiday
    Left = 380
    Top = 810
  end
  object Holiday: TUniTable
    TableName = 'Holiday'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 310
    Top = 810
    object HolidayHolyDate: TDateField
      DisplayLabel = #1575#1604#1578#1575#1585#1610#1582
      FieldName = 'HolyDate'
    end
  end
  object DWorkTime: TDataSource
    DataSet = WorkTime
    Left = 80
    Top = 810
  end
  object WorkTime: TUniTable
    TableName = 'WorkTime'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 20
    Top = 810
    object WorkTimeFromTime: TTimeField
      DisplayLabel = #1605#1606' '#1575#1604#1587#1575#1593#1577
      FieldName = 'FromTime'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object WorkTimeToTime: TTimeField
      DisplayLabel = #1573#1604#1609' '#1575#1604#1587#1575#1593#1577
      FieldName = 'ToTime'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object WorkTimeTimeType: TSmallintField
      DisplayLabel = #1573#1590#1575#1601#1610
      FieldName = 'TimeType'
    end
    object WorkTimeTime2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Time2'
      Calculated = True
    end
    object WorkTimeTime1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Time1'
      Calculated = True
    end
    object WorkTimenumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
  end
  object weights: TUniTable
    TableName = 'weight'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 20
    Top = 880
    object weightsAutoNum: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'AutoNum'
    end
    object weightsFromW: TIntegerField
      FieldName = 'FromW'
      Required = True
    end
    object weightsToW: TIntegerField
      FieldName = 'ToW'
      Required = True
    end
    object weightsHoursNum: TSmallintField
      FieldName = 'HoursNum'
      Required = True
    end
    object weightscarsF: TSmallintField
      FieldName = 'carsF'
      Required = True
    end
  end
  object Dweights: TDataSource
    DataSet = weights
    Left = 80
    Top = 880
  end
  object MaxListNumRQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'select max(ListNumr) as ListNumR From Acclist')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 766
    Top = 320
    object MaxListNumRQListNumR: TIntegerField
      FieldName = 'ListNumR'
      ReadOnly = True
    end
  end
  object DailyQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT dailynum,datetop,listtype,min(datetop) as minDate,max(dat' +
        'etop) as maxDate '
      'FROM `acclist` '
      'WHERE dailynum<>0 and datetop>= :FromDate and Datetop<= :ToDate '
      'and (listtype= :Type1 or listtype= :Type2 or listtype= :Type3)'
      'group by dailynum'
      'order by datetop')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 850
    Top = 370
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type3'
        ParamType = ptInput
        Value = nil
      end>
    object DailyQdailynum: TIntegerField
      FieldName = 'dailynum'
    end
    object DailyQdatetop: TDateField
      FieldName = 'datetop'
    end
    object DailyQlisttype: TSmallintField
      FieldName = 'listtype'
      Required = True
    end
    object DailyQminDate: TDateField
      FieldName = 'minDate'
      ReadOnly = True
    end
    object DailyQmaxDate: TDateField
      FieldName = 'maxDate'
      ReadOnly = True
    end
  end
  object DDailyQ: TDataSource
    DataSet = DailyQ
    Left = 925
    Top = 370
  end
  object CountQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'select count(loed.BillNum) as num'
      'from loed '
      'where BillNum= :BillNum')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.PrepareUpdateSQL = True
    Options.UpdateAllFields = True
    Left = 750
    Top = 260
    ParamData = <
      item
        DataType = ftInteger
        Name = 'BillNum'
        ParamType = ptInput
        Value = nil
      end>
    object CountQnum: TLargeintField
      FieldName = 'num'
      ReadOnly = True
      Required = True
    end
  end
  object VSloadH: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      
        '  (`LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `Load' +
        'er`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goodsna' +
        'me`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `BillNum`' +
        ', `BillType`, `StoreType`, `Notes`, `selectF`, `StopF`, `StopWhy' +
        '`, `EnbEdit`, `UserSelected`)'
      'VALUES'
      
        '  (:`LNum`, :`Auto`, :`Qty`, :`Marks`, :`GoodsType`, :`OrgPort`,' +
        ' :`Loader`, :`Billloading`, :`Sender`, :`Kias`, :`Weight`, :`Sen' +
        'd`, :`Goodsname`, :`Num`, :`Tfasel`, :`EfrajNum`, :`EfrajDate`, ' +
        ':`Flag`, :`BillNum`, :`BillType`, :`StoreType`, :`Notes`, :`sele' +
        'ctF`, :`StopF`, :`StopWhy`, :`EnbEdit`, :`UserSelected`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      
        '  `LNum` = :`LNum`, `Auto` = :`Auto`, `Qty` = :`Qty`, `Marks` = ' +
        ':`Marks`, `GoodsType` = :`GoodsType`, `OrgPort` = :`OrgPort`, `L' +
        'oader` = :`Loader`, `Billloading` = :`Billloading`, `Sender` = :' +
        '`Sender`, `Kias` = :`Kias`, `Weight` = :`Weight`, `Send` = :`Sen' +
        'd`, `Goodsname` = :`Goodsname`, `Num` = :`Num`, `Tfasel` = :`Tfa' +
        'sel`, `EfrajNum` = :`EfrajNum`, `EfrajDate` = :`EfrajDate`, `Fla' +
        'g` = :`Flag`, `BillNum` = :`BillNum`, `BillType` = :`BillType`, ' +
        '`StoreType` = :`StoreType`, `Notes` = :`Notes`, `selectF` = :`se' +
        'lectF`, `StopF` = :`StopF`, `StopWhy` = :`StopWhy`, `EnbEdit` = ' +
        ':`EnbEdit`, `UserSelected` = :`UserSelected`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `LNum`, `Auto`, `Qty`, `Marks`, `GoodsType`, `OrgPort`, `' +
        'Loader`, `Billloading`, `Sender`, `Kias`, `Weight`, `Send`, `Goo' +
        'dsname`, `Num`, `Tfasel`, `EfrajNum`, `EfrajDate`, `Flag`, `Bill' +
        'Num`, `BillType`, `StoreType`, `Notes`, `selectF`, `StopF`, `Sto' +
        'pWhy`, `EnbEdit`, `UserSelected` FROM `loed`'
      'WHERE'
      '  `Auto` = :`Auto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'CALL VSloadH(:VNumT, :VSnum)')
    Left = 300
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VSnum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VSloadH'
    object VSloadHLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object VSloadHAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object VSloadHQty: TFloatField
      FieldName = 'Qty'
    end
    object VSloadHMarks: TSmallintField
      FieldName = 'Marks'
    end
    object VSloadHGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object VSloadHOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object VSloadHLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object VSloadHBillloading: TWideStringField
      FieldName = 'Billloading'
    end
    object VSloadHSender: TSmallintField
      FieldName = 'Sender'
    end
    object VSloadHKias: TFloatField
      FieldName = 'Kias'
    end
    object VSloadHWeight: TFloatField
      FieldName = 'Weight'
    end
    object VSloadHSend: TWideStringField
      FieldName = 'Send'
      Size = 100
    end
    object VSloadHGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 500
    end
    object VSloadHNum: TWideStringField
      FieldName = 'Num'
    end
    object VSloadHTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object VSloadHEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Size = 30
    end
    object VSloadHEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object VSloadHFlag: TSmallintField
      FieldName = 'Flag'
    end
    object VSloadHBillNum: TIntegerField
      FieldName = 'BillNum'
    end
    object VSloadHBillType: TSmallintField
      FieldName = 'BillType'
    end
    object VSloadHStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object VSloadHNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object VSloadHselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object VSloadHStopF: TSmallintField
      FieldName = 'StopF'
    end
    object VSloadHStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object VSloadHEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object VSloadHUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
  end
  object QAgents: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT agents.AgName,'
      '       agents.Num,'
      '       agents.AgAbsName,'
      '       agents.Phone,'
      '       agents.Fax,'
      '       agents.E_Mail,'
      '       agents.Address'
      '  FROM porte.agents agents'
      ' WHERE (agents.AgName LIKE :name1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    IndexFieldNames = 'AgName'
    Left = 650
    Top = 290
    ParamData = <
      item
        DataType = ftString
        Name = 'name1'
        ParamType = ptInput
        Value = nil
      end>
    object QAgentsAgName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      FieldName = 'AgName'
      Size = 60
    end
    object QAgentsNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object QAgentsAgAbsName: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object QAgentsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 50
    end
    object QAgentsFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object QAgentsE_Mail: TWideStringField
      FieldName = 'E_Mail'
      Size = 30
    end
    object QAgentsAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
  end
  object DQAgents: TUniDataSource
    DataSet = QAgents
    Left = 650
    Top = 380
  end
  object SrchShEQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT * FROM `Ships` WHERE (`Name_En` like :Name_En) and (name_' +
        'en is not null)')
    Left = 850
    Top = 250
    ParamData = <
      item
        DataType = ftString
        Name = 'Name_En'
        ParamType = ptInput
        Value = nil
      end>
    object SrchShEQNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object SrchShEQSName: TWideStringField
      FieldName = 'SName'
      Size = 30
    end
    object SrchShEQNum: TIntegerField
      FieldName = 'Num'
    end
    object SrchShEQSAbsName: TWideStringField
      FieldName = 'SAbsName'
      Size = 30
    end
    object SrchShEQSType: TSmallintField
      FieldName = 'SType'
    end
    object SrchShEQSNation: TSmallintField
      FieldName = 'SNation'
    end
    object SrchShEQWeight: TFloatField
      FieldName = 'Weight'
    end
    object SrchShEQShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object SrchShEQShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object SrchShEQTypeRsom: TSmallintField
      FieldName = 'TypeRsom'
    end
    object SrchShEQGross: TFloatField
      FieldName = 'Gross'
    end
    object SrchShEQImoNum: TIntegerField
      FieldName = 'ImoNum'
    end
    object SrchShEQName_En: TWideStringField
      FieldName = 'Name_En'
      Size = 30
    end
  end
  object DSrchShQ: TDataSource
    DataSet = SrchShQ
    Left = 925
    Top = 190
  end
  object DSrchShEQ: TDataSource
    DataSet = SrchShEQ
    Left = 925
    Top = 250
  end
  object DSrchAgQ: TDataSource
    DataSet = SrchAgQ
    Left = 925
    Top = 130
  end
  object SrchAgQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT * FROM `agents` WHERE `AgName` like :AgName')
    Left = 850
    Top = 130
    ParamData = <
      item
        DataType = ftString
        Name = 'AgName'
        ParamType = ptInput
        Value = nil
      end>
    object SrchAgQAgName: TWideStringField
      FieldName = 'AgName'
      Size = 60
    end
    object SrchAgQNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object SrchAgQAgAbsName: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object SrchAgQPhone: TWideStringField
      FieldName = 'Phone'
      Size = 50
    end
    object SrchAgQFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object SrchAgQE_Mail: TWideStringField
      FieldName = 'E_Mail'
      Size = 30
    end
    object SrchAgQAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
  end
  object SrchShQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT * FROM `ships` WHERE `SName` like :SabsName')
    Left = 850
    Top = 190
    ParamData = <
      item
        DataType = ftString
        Name = 'SabsName'
        ParamType = ptInput
        Value = nil
      end>
    object SrchShQNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object SrchShQSName: TWideStringField
      FieldName = 'SName'
      Size = 30
    end
    object SrchShQNum: TIntegerField
      FieldName = 'Num'
    end
    object SrchShQSAbsName: TWideStringField
      FieldName = 'SAbsName'
      Size = 30
    end
    object SrchShQSType: TSmallintField
      FieldName = 'SType'
    end
    object SrchShQSNation: TSmallintField
      FieldName = 'SNation'
    end
    object SrchShQWeight: TFloatField
      FieldName = 'Weight'
    end
    object SrchShQShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object SrchShQShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object SrchShQTypeRsom: TSmallintField
      FieldName = 'TypeRsom'
    end
  end
  object ImoSrchQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT * FROM `ships` WHERE `ImoNum` like :ImoNum')
    Left = 850
    Top = 310
    ParamData = <
      item
        DataType = ftString
        Name = 'ImoNum'
        ParamType = ptInput
        Value = nil
      end>
    object ImoSrchQNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object ImoSrchQSName: TWideStringField
      FieldName = 'SName'
      Size = 30
    end
    object ImoSrchQNum: TIntegerField
      FieldName = 'Num'
    end
    object ImoSrchQSAbsName: TWideStringField
      FieldName = 'SAbsName'
      Size = 30
    end
    object ImoSrchQSType: TSmallintField
      FieldName = 'SType'
    end
    object ImoSrchQSNation: TSmallintField
      FieldName = 'SNation'
    end
    object ImoSrchQWeight: TFloatField
      FieldName = 'Weight'
    end
    object ImoSrchQShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object ImoSrchQShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object ImoSrchQTypeRsom: TSmallintField
      FieldName = 'TypeRsom'
    end
    object ImoSrchQGross: TFloatField
      FieldName = 'Gross'
    end
    object ImoSrchQImoNum: TIntegerField
      FieldName = 'ImoNum'
    end
    object ImoSrchQName_En: TWideStringField
      FieldName = 'Name_En'
      Size = 30
    end
    object ImoSrchQSerialNum: TIntegerField
      FieldName = 'SerialNum'
    end
    object ImoSrchQNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
  end
  object DImoSrchQ: TDataSource
    DataSet = ImoSrchQ
    Left = 925
    Top = 310
  end
  object FrAccList1: TfrxDBDataset
    UserName = 'FrAccList1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListNum=ListNum'
      'ListType=ListType'
      'ListDate=ListDate'
      'GoodsQty=GoodsQty'
      'ShipNum=ShipNum'
      'GoodsDesc=GoodsDesc'
      'ArriveDate=ArriveDate'
      'AutoDate=AutoDate'
      'ShipBillNum=ShipBillNum'
      'WeSpace=WeSpace'
      'GoodsNm=GoodsNm'
      'Total=Total'
      'AdmisMet=AdmisMet'
      'EndEmpDate=EndEmpDate'
      'AdmisMetNm=AdmisMetNm'
      'Tfked=Tfked'
      'weeks=weeks'
      'Stamp=Stamp'
      'Net=Net'
      'Unit=Unit'
      'UnitNm=UnitNm'
      'AllwedDate=AllwedDate'
      'StampNet=StampNet'
      'Toname=ToName'
      'Electric=Electric'
      'Wight=Wight'
      'Remain=Remain'
      'DaysNum=DaysNum'
      'LocOrFor=LocOrFor'
      'Petrol=Petrol'
      'Dirty=Dirty'
      'FTime1=FTime1'
      'EndTime1=EndTime1'
      'Move1=Move1'
      'FTime2=FTime2'
      'EndTime2=EndTime2'
      'Move2=Move2'
      'Time1=Time1'
      'FridayNum=FridayNum'
      'RsomWeeks=RsomWeeks'
      'Time2=Time2'
      'ShipType=ShipType'
      'HoliDay=HoliDay'
      'Mezan=Mezan'
      'Kemawea=Kemawea'
      'Frg=Frg'
      'Tadl=Tadl'
      'FrgFlag=FrgFlag'
      'HjzFlag=HjzFlag'
      'TadlFlag=TadlFlag'
      'Edafe1=Edafe1'
      'Edafe2=Edafe2'
      'Goodsname=Goodsname'
      'F1=F1'
      'F11=F11'
      'F2=F2'
      'F22=F22'
      'Moveall=MoveAll'
      'MovV1=MovV1'
      'MovV2=MovV2'
      'StNum=StNum'
      'LocWitOut=LocWitout'
      'ChechDate=ChechDate'
      'Cars=Cars'
      'States=States'
      'Unit2Nm=Unit2Nm'
      'ElecDate=ElecDate'
      'Month=Month'
      'RemDate=RemDate'
      'MezDate=MezDate'
      'Roafe=Roafe'
      'Dama=Dama'
      'TfteshCar=TfteshCar'
      'AttTo=AttTo'
      'Leverweight=Leverweight'
      'Saba=Saba'
      'WeeksNum=WeeksNum'
      'States1=States1'
      'States2=States2'
      'Days=Days'
      'DaysM=DaysM'
      'EleeshDate=EleeshDate'
      'ReshDate=ReshDate'
      'DaysMM=DaysMM'
      'AginNm=AginNm'
      'AgNm=AgNm'
      'F1Num=F1Num'
      'User=User'
      'userNm=userNm'
      'DateTop=DateTop'
      'NumT=NumT'
      'barcade=barcade'
      'BillNum=BillNum'
      'AccTypeNmA=AccTypeNmA'
      'shipNm=shipNm'
      'Sapa=Sapa'
      'loukof=loukof'
      'HoursNum=HoursNum'
      'couponIn=CouponIn'
      'couponOut=CouponOut'
      'TelegramNum=TelegramNum'
      'ShTyNm=ShTyNm'
      'archiveF=ArchiveF'
      'PaidF=PaidF'
      'PaidNm=PaidNm'
      'ShipEnNm=ShipEnNm'
      'UnitRsom=UnitRsom'
      'ShipRsomNm=ShipRsomNm'
      'Num1=Num1'
      'Num2=Num2'
      'Num3=Num3'
      'Num4=Num4'
      'Num5=Num5'
      'Num6=Num6'
      'Num7=Num7'
      'Num8=Num8'
      'ShipMet=ShipMet'
      'ShipTypeNm=ShipTypeNm'
      'ShipMetNm=ShipMetNm'
      'Reserve=Reserve'
      'ReservNm=ReservNm'
      'FrgShip=FrgShip'
      'Qty3=Qty3'
      'RemainDays=RemainDays'
      'ElecDays=ElecDays'
      'LockNm=LockNm'
      'TypeNm=TypeNm'
      'BillNum2=BillNum2'
      'HoursNum1=HoursNum1'
      'MonthsNum=MonthsNum'
      'HoursNum2=HoursNum2'
      'MontsNum2=MontsNum2'
      'SubType=SubType'
      'DelF=DelF'
      'DelDate=DelDate'
      'boat=boat'
      'AgntR=AgntR'
      'AgRsNm=AgRsNm'
      'SharedF=SharedF'
      'ChemicalF=ChemicalF'
      'AlterBill=AlterBill'
      'DelNm=DelNm'
      'StampAbs=StampAbs'
      'ListNumR=ListNumR'
      'DailyNum=DailyNum'
      'AttachNum=AttachNum'
      'DisCount=DisCount'
      'DelWhy=DelWhy'
      'ListTypeNmR=ListTypeNmR'
      'cutF=cutF'
      'NetDays=NetDays'
      'SabaOrLoc=SabaOrLoc'
      'CurrntF=CurrntF'
      'DebitF=DebitF'
      'CurrDate=CurrDate'
      'DailyCurr=DailyCurr'
      'LockCurr=LockCurr'
      'ClaimF=ClaimF'
      'ClaimDate=ClaimDate'
      'ClaimNum=ClaimNum'
      'QRALL=QRALL'
      'NTotal=NTotal'
      'NStamp=NStamp'
      'Msrahname=Msrahname'
      'phoneMsr=phoneMsr'
      'loadnum=loadnum'
      'Billloading=Billloading'
      'TotalD=TotalD'
      'InvoiceD=InvoiceD'
      'NTotalD=NTotalD'
      'NStampD=NStampD'
      'DollarPrice=DollarPrice'
      'Ex_Price=Ex_Price'
      'SubType2=SubType2'
      'progress=progress'
      'real_date=real_date'
      'shared_usefork=shared_usefork'
      'Qty2=Qty2'
      'Unit2=Unit2')
    DataSet = AccList
    BCDToCurrency = False
    Left = 140
    Top = 310
  end
  object FrAccList: TfrxDBDataset
    UserName = 'FrAccList'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListNum=ListNum'
      'ListType=ListType'
      'ListDate=ListDate'
      'GoodsQty=GoodsQty'
      'ShipNum=ShipNum'
      'GoodsDesc=GoodsDesc'
      'ArriveDate=ArriveDate'
      'AutoDate=AutoDate'
      'ShipBillNum=ShipBillNum'
      'WeSpace=WeSpace'
      'GoodsNm=GoodsNm'
      'Total=Total'
      'AdmisMet=AdmisMet'
      'EndEmpDate=EndEmpDate'
      'AdmisMetNm=AdmisMetNm'
      'Tfked=Tfked'
      'weeks=weeks'
      'Stamp=Stamp'
      'Net=Net'
      'Unit=Unit'
      'UnitNm=UnitNm'
      'AllwedDate=AllwedDate'
      'StampNet=StampNet'
      'Toname=Toname'
      'Electric=Electric'
      'Wight=Wight'
      'Remain=Remain'
      'DaysNum=DaysNum'
      'LocOrFor=LocOrFor'
      'Petrol=Petrol'
      'Dirty=Dirty'
      'FTime1=FTime1'
      'EndTime1=EndTime1'
      'Move1=Move1'
      'FTime2=FTime2'
      'EndTime2=EndTime2'
      'Move2=Move2'
      'Time1=Time1'
      'FridayNum=FridayNum'
      'RsomWeeks=RsomWeeks'
      'Time2=Time2'
      'ShipType=ShipType'
      'HoliDay=HoliDay'
      'Mezan=Mezan'
      'Kemawea=Kemawea'
      'Frg=Frg'
      'Tadl=Tadl'
      'FrgFlag=FrgFlag'
      'HjzFlag=HjzFlag'
      'TadlFlag=TadlFlag'
      'Edafe1=Edafe1'
      'Edafe2=Edafe2'
      'Goodsname=Goodsname'
      'F1=F1'
      'F11=F11'
      'F2=F2'
      'F22=F22'
      'Moveall=Moveall'
      'MovV1=MovV1'
      'MovV2=MovV2'
      'StNum=StNum'
      'LocWitOut=LocWitOut'
      'ChechDate=ChechDate'
      'Cars=Cars'
      'States=States'
      'Unit2Nm=Unit2Nm'
      'ElecDate=ElecDate'
      'Month=Month'
      'RemDate=RemDate'
      'MezDate=MezDate'
      'Roafe=Roafe'
      'Dama=Dama'
      'TfteshCar=TfteshCar'
      'AttTo=AttTo'
      'Leverweight=Leverweight'
      'Saba=Saba'
      'WeeksNum=WeeksNum'
      'States1=States1'
      'States2=States2'
      'Days=Days'
      'DaysM=DaysM'
      'EleeshDate=EleeshDate'
      'ReshDate=ReshDate'
      'DaysMM=DaysMM'
      'AginNm=AginNm'
      'AgNm=AgNm'
      'F1Num=F1Num'
      'User=User'
      'userNm=userNm'
      'DateTop=DateTop'
      'NumT=NumT'
      'barcade=barcade'
      'BillNum=BillNum'
      'AccTypeNmA=AccTypeNmA'
      'shipNm=shipNm'
      'Sapa=Sapa'
      'loukof=loukof'
      'HoursNum=HoursNum'
      'couponIn=couponIn'
      'couponOut=couponOut'
      'TelegramNum=TelegramNum'
      'ShTyNm=ShTyNm'
      'archiveF=archiveF'
      'PaidF=PaidF'
      'PaidNm=PaidNm'
      'ShipEnNm=ShipEnNm'
      'UnitRsom=UnitRsom'
      'ShipRsomNm=ShipRsomNm'
      'Num1=Num1'
      'Num2=Num2'
      'Num3=Num3'
      'Num4=Num4'
      'Num5=Num5'
      'Num6=Num6'
      'Num7=Num7'
      'Num8=Num8'
      'ShipMet=ShipMet'
      'ShipTypeNm=ShipTypeNm'
      'ShipMetNm=ShipMetNm'
      'Reserve=Reserve'
      'ReservNm=ReservNm'
      'FrgShip=FrgShip'
      'Qty3=Qty3'
      'RemainDays=RemainDays'
      'ElecDays=ElecDays'
      'LockNm=LockNm'
      'TypeNm=TypeNm'
      'BillNum2=BillNum2'
      'HoursNum1=HoursNum1'
      'MonthsNum=MonthsNum'
      'HoursNum2=HoursNum2'
      'MontsNum2=MontsNum2'
      'SubType=SubType'
      'DelF=DelF'
      'DelDate=DelDate'
      'boat=boat'
      'AgntR=AgntR'
      'AgRsNm=AgRsNm'
      'SharedF=SharedF'
      'ChemicalF=ChemicalF'
      'AlterBill=AlterBill'
      'DelNm=DelNm'
      'StampAbs=StampAbs'
      'ListNumR=ListNumR'
      'DailyNum=DailyNum'
      'AttachNum=AttachNum'
      'DisCount=DisCount'
      'DelWhy=DelWhy'
      'ListTypeNmR=ListTypeNmR'
      'cutF=cutF'
      'NetDays=NetDays'
      'SabaOrLoc=SabaOrLoc'
      'CurrntF=CurrntF'
      'DebitF=DebitF'
      'CurrDate=CurrDate'
      'DailyCurr=DailyCurr'
      'LockCurr=LockCurr'
      'ClaimF=ClaimF'
      'ClaimDate=ClaimDate'
      'ClaimNum=ClaimNum'
      'QRALL=QRALL'
      'NTotal=NTotal'
      'NStamp=NStamp'
      'Msrahname=Msrahname'
      'phoneMsr=phoneMsr'
      'loadnum=loadnum'
      'Billloading=Billloading'
      'TotalD=TotalD'
      'InvoiceD=InvoiceD'
      'NTotalD=NTotalD'
      'NStampD=NStampD'
      'DollarPrice=DollarPrice'
      'Ex_Price=Ex_Price'
      'SubType2=SubType2'
      'progress=progress'
      'real_date=real_date'
      'shared_usefork=shared_usefork'
      'Qty2=Qty2'
      'Unit2=Unit2')
    DataSet = AccList
    BCDToCurrency = False
    Left = 190
    Top = 310
  end
  object FrAccDet: TfrxDBDataset
    UserName = 'FrAccDet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccNum=AccNum'
      'AutoNm=AutoNm'
      'ListType=ListType'
      'AccType=AccType'
      'AccValue=AccValue'
      'AccTotal=AccTotal'
      'Enter=Enter'
      'TypeNm=TypeNm'
      'Total=Total'
      'Exit=Exit'
      'Num=Num'
      'FromDate=FromDate'
      'ToDate=ToDate'
      'Nasb=Nasb')
    DataSet = accdet
    BCDToCurrency = False
    Left = 210
    Top = 380
  end
  object attach2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `attach2`'
      
        '  (`Acctype`, `ListNum`, `AttachNum`, `ListType`, `AttashType`, ' +
        '`AttachNum2`, `AttachDate`, `AttachValue`, `AttachMezan`)'
      'VALUES'
      
        '  (:`Acctype`, :`ListNum`, :`AttachNum`, :`ListType`, :`AttashTy' +
        'pe`, :`AttachNum2`, :`AttachDate`, :`AttachValue`, :`AttachMezan' +
        '`)')
    SQLDelete.Strings = (
      'DELETE FROM `attach2`'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`')
    SQLUpdate.Strings = (
      'UPDATE `attach2`'
      'SET'
      
        '  `Acctype` = :`Acctype`, `ListNum` = :`ListNum`, `AttachNum` = ' +
        ':`AttachNum`, `ListType` = :`ListType`, `AttashType` = :`AttashT' +
        'ype`, `AttachNum2` = :`AttachNum2`, `AttachDate` = :`AttachDate`' +
        ', `AttachValue` = :`AttachValue`, `AttachMezan` = :`AttachMezan`'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`')
    SQLLock.Strings = (
      'SELECT * FROM attach2'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Acctype`, `ListNum`, `AttachNum`, `ListType`, `AttashTyp' +
        'e`, `AttachNum2`, `AttachDate`, `AttachValue`, `AttachMezan` FRO' +
        'M `attach2`'
      'WHERE'
      '  `AttachNum` = :`AttachNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM attach2')
    Connection = DB1
    SQL.Strings = (
      'CALL VAttach2(:VNum, :Vtype, :VANum, :VLtype)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforeInsert = attach2BeforeInsert
    AfterInsert = attach2AfterInsert
    BeforeCancel = attach2BeforeCancel
    OnCalcFields = attach2CalcFields
    Left = 260
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VANum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VLtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAttach2'
    object attach2Acctype: TSmallintField
      FieldName = 'Acctype'
      Required = True
    end
    object attach2ListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object attach2AttachNum: TIntegerField
      FieldName = 'AttachNum'
      Required = True
    end
    object attach2ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object attach2AttashType: TSmallintField
      FieldName = 'AttashType'
      Required = True
    end
    object attach2AttachNum2: TIntegerField
      FieldName = 'AttachNum2'
      Required = True
    end
    object attach2AttachDate: TDateField
      FieldName = 'AttachDate'
    end
    object attach2AttachValue: TFloatField
      FieldName = 'AttachValue'
    end
    object attach2Weeks: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Weeks'
      Calculated = True
    end
    object attach2StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object attach2Net: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object attach2Tfkid: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Tfkid'
      Size = 100
      Calculated = True
    end
    object attach2AttachMezan: TSmallintField
      FieldName = 'AttachMezan'
    end
  end
  object attach2d: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `attach2d`'
      
        '  (`AccType`, `ListNum`, `AttachNum`, `ListType`, `AttachNum2`, ' +
        '`AttType`, `AttType2`, `AccValue`, `AccTotal`, `FromDate`, `ToDa' +
        'te`)'
      'VALUES'
      
        '  (:`AccType`, :`ListNum`, :`AttachNum`, :`ListType`, :`AttachNu' +
        'm2`, :`AttType`, :`AttType2`, :`AccValue`, :`AccTotal`, :`FromDa' +
        'te`, :`ToDate`)')
    SQLDelete.Strings = (
      'DELETE FROM `attach2d`'
      'WHERE'
      
        '  `AccType` = :`Old_AccType` AND `ListNum` = :`Old_ListNum` AND ' +
        '`AttachNum` = :`Old_AttachNum` AND `ListType` = :`Old_ListType` ' +
        'AND `AttachNum2` = :`Old_AttachNum2` AND `AttType` = :`Old_AttTy' +
        'pe` AND `AttType2` = :`Old_AttType2`')
    SQLUpdate.Strings = (
      'UPDATE `attach2d`'
      'SET'
      
        '  `AccType` = :`AccType`, `ListNum` = :`ListNum`, `AttachNum` = ' +
        ':`AttachNum`, `ListType` = :`ListType`, `AttachNum2` = :`AttachN' +
        'um2`, `AttType` = :`AttType`, `AttType2` = :`AttType2`, `AccValu' +
        'e` = :`AccValue`, `AccTotal` = :`AccTotal`, `FromDate` = :`FromD' +
        'ate`, `ToDate` = :`ToDate`'
      'WHERE'
      
        '  `AccType` = :`Old_AccType` AND `ListNum` = :`Old_ListNum` AND ' +
        '`AttachNum` = :`Old_AttachNum` AND `ListType` = :`Old_ListType` ' +
        'AND `AttachNum2` = :`Old_AttachNum2` AND `AttType` = :`Old_AttTy' +
        'pe` AND `AttType2` = :`Old_AttType2`')
    SQLLock.Strings = (
      'SELECT * FROM attach2d'
      'WHERE'
      
        '  `AccType` = :`Old_AccType` AND `ListNum` = :`Old_ListNum` AND ' +
        '`AttachNum` = :`Old_AttachNum` AND `ListType` = :`Old_ListType` ' +
        'AND `AttachNum2` = :`Old_AttachNum2` AND `AttType` = :`Old_AttTy' +
        'pe` AND `AttType2` = :`Old_AttType2`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccType`, `ListNum`, `AttachNum`, `ListType`, `AttachNum' +
        '2`, `AttType`, `AttType2`, `AccValue`, `AccTotal`, `FromDate`, `' +
        'ToDate` FROM `attach2d`'
      'WHERE'
      
        '  `AccType` = :`AccType` AND `ListNum` = :`ListNum` AND `AttachN' +
        'um` = :`AttachNum` AND `ListType` = :`ListType` AND `AttachNum2`' +
        ' = :`AttachNum2` AND `AttType` = :`AttType` AND `AttType2` = :`A' +
        'ttType2`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM attach2d')
    Connection = DB1
    SQL.Strings = (
      'CALL VAttach2D(:VNum, :Vtype, :VANum, :VLtype, :VANum2, :Vttype)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforePost = attach2dBeforePost
    Left = 260
    Top = 620
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VANum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VLtype'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VANum2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vttype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAttach2D'
    object attach2dAccType: TSmallintField
      FieldName = 'AccType'
      Required = True
    end
    object attach2dListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object attach2dAttachNum: TIntegerField
      FieldName = 'AttachNum'
      Required = True
    end
    object attach2dListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object attach2dAttachNum2: TIntegerField
      FieldName = 'AttachNum2'
      Required = True
    end
    object attach2dAttType: TSmallintField
      FieldName = 'AttType'
      Required = True
    end
    object attach2dAttType2: TSmallintField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'AttType2'
      Required = True
    end
    object attach2dAccValue: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1576#1606#1583
      FieldName = 'AccValue'
      DisplayFormat = '0.000'
    end
    object attach2dAccTotal: TFloatField
      DisplayLabel = #1575#1604#1603#1604#1610
      FieldName = 'AccTotal'
      DisplayFormat = '0.000'
    end
    object attach2dFromDate: TDateField
      FieldName = 'FromDate'
    end
    object attach2dAttNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1575#1574#1583
      FieldKind = fkLookup
      FieldName = 'AttNm'
      LookupDataSet = Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AttType2'
      Size = 60
      Lookup = True
    end
    object attach2dToDate: TDateField
      FieldName = 'ToDate'
    end
  end
  object Dattach2: TUniDataSource
    DataSet = attach2
    Left = 320
    Top = 560
  end
  object Dattach2d: TUniDataSource
    DataSet = attach2d
    Left = 320
    Top = 620
  end
  object SAttach1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `attach`'
      
        '  (`AccType`, `ListNum`, `AttachNum`, `Listtype`, `AttachDate`, ' +
        '`AttachValue`, `Mezan`, `Kias`, `Qty`, `Remin`, `Electric`, `Dat' +
        'e2`, `Date3`, `WeeksBef`, `Date4`, `Weight`, `Unit`, `ReminDays`' +
        ', `Met`, `St1`, `St2`, `AddWeeks`, `Yyy`, `Date22`, `Oasve`, `Po' +
        'lesa`, `AginNm`, `barcade`, `UserNum`, `ToName`, `StampAbs`, `Lo' +
        'ckF`, `AttDaily`, `DebitF`, `LockCurr`, `DailyCurr`, `CurrF`, `C' +
        'laimF`, `PaidF`)'
      'VALUES'
      
        '  (:`AccType`, :`ListNum`, :`AttachNum`, :`Listtype`, :`AttachDa' +
        'te`, :`AttachValue`, :`Mezan`, :`Kias`, :`Qty`, :`Remin`, :`Elec' +
        'tric`, :`Date2`, :`Date3`, :`WeeksBef`, :`Date4`, :`Weight`, :`U' +
        'nit`, :`ReminDays`, :`Met`, :`St1`, :`St2`, :`AddWeeks`, :`Yyy`,' +
        ' :`Date22`, :`Oasve`, :`Polesa`, :`AginNm`, :`barcade`, :`UserNu' +
        'm`, :`ToName`, :`StampAbs`, :`LockF`, :`AttDaily`, :`DebitF`, :`' +
        'LockCurr`, :`DailyCurr`, :`CurrF`, :`ClaimF`, :`PaidF`)')
    SQLDelete.Strings = (
      'DELETE FROM `attach`'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`')
    SQLUpdate.Strings = (
      'UPDATE `attach`'
      'SET'
      
        '  `AccType` = :`AccType`, `ListNum` = :`ListNum`, `AttachNum` = ' +
        ':`AttachNum`, `Listtype` = :`Listtype`, `AttachDate` = :`AttachD' +
        'ate`, `AttachValue` = :`AttachValue`, `Mezan` = :`Mezan`, `Kias`' +
        ' = :`Kias`, `Qty` = :`Qty`, `Remin` = :`Remin`, `Electric` = :`E' +
        'lectric`, `Date2` = :`Date2`, `Date3` = :`Date3`, `WeeksBef` = :' +
        '`WeeksBef`, `Date4` = :`Date4`, `Weight` = :`Weight`, `Unit` = :' +
        '`Unit`, `ReminDays` = :`ReminDays`, `Met` = :`Met`, `St1` = :`St' +
        '1`, `St2` = :`St2`, `AddWeeks` = :`AddWeeks`, `Yyy` = :`Yyy`, `D' +
        'ate22` = :`Date22`, `Oasve` = :`Oasve`, `Polesa` = :`Polesa`, `A' +
        'ginNm` = :`AginNm`, `barcade` = :`barcade`, `UserNum` = :`UserNu' +
        'm`, `ToName` = :`ToName`, `StampAbs` = :`StampAbs`, `LockF` = :`' +
        'LockF`, `AttDaily` = :`AttDaily`, `DebitF` = :`DebitF`, `LockCur' +
        'r` = :`LockCurr`, `DailyCurr` = :`DailyCurr`, `CurrF` = :`CurrF`' +
        ', `ClaimF` = :`ClaimF`, `PaidF` = :`PaidF`'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`')
    SQLLock.Strings = (
      'SELECT * FROM attach'
      'WHERE'
      '  `AttachNum` = :`Old_AttachNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccType`, `ListNum`, `AttachNum`, `Listtype`, `AttachDat' +
        'e`, `AttachValue`, `Mezan`, `Kias`, `Qty`, `Remin`, `Electric`, ' +
        '`Date2`, `Date3`, `WeeksBef`, `Date4`, `Weight`, `Unit`, `ReminD' +
        'ays`, `Met`, `St1`, `St2`, `AddWeeks`, `Yyy`, `Date22`, `Oasve`,' +
        ' `Polesa`, `AginNm`, `barcade`, `UserNum`, `ToName`, `StampAbs`,' +
        ' `LockF`, `AttDaily`, `DebitF`, `LockCurr`, `DailyCurr`, `CurrF`' +
        ', `ClaimF`, `PaidF` FROM `attach`'
      'WHERE'
      '  `AttachNum` = :`AttachNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM attach')
    Connection = DB1
    SQL.Strings = (
      'CALL VAttach(:VNum, :Vtype)')
    Left = 380
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAttach'
    object SAttach1AccType: TIntegerField
      FieldName = 'AccType'
      Required = True
    end
    object SAttach1ListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object SAttach1AttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
    end
    object SAttach1Listtype: TIntegerField
      FieldName = 'Listtype'
      Required = True
    end
    object SAttach1AttachDate: TDateField
      FieldName = 'AttachDate'
    end
    object SAttach1AttachValue: TFloatField
      FieldName = 'AttachValue'
    end
    object SAttach1Mezan: TSmallintField
      FieldName = 'Mezan'
    end
    object SAttach1Kias: TFloatField
      FieldName = 'Kias'
    end
    object SAttach1Qty: TFloatField
      FieldName = 'Qty'
    end
    object SAttach1Remin: TSmallintField
      FieldName = 'Remin'
    end
    object SAttach1Electric: TSmallintField
      FieldName = 'Electric'
    end
    object SAttach1Date2: TDateField
      FieldName = 'Date2'
    end
    object SAttach1Date3: TDateField
      FieldName = 'Date3'
    end
    object SAttach1WeeksBef: TSmallintField
      FieldName = 'WeeksBef'
    end
    object SAttach1Date4: TDateField
      FieldName = 'Date4'
    end
    object SAttach1Weight: TFloatField
      FieldName = 'Weight'
    end
    object SAttach1Unit: TSmallintField
      FieldName = 'Unit'
    end
    object SAttach1ReminDays: TSmallintField
      FieldName = 'ReminDays'
    end
    object SAttach1Met: TSmallintField
      FieldName = 'Met'
    end
    object SAttach1St1: TSmallintField
      FieldName = 'St1'
    end
    object SAttach1St2: TSmallintField
      FieldName = 'St2'
    end
    object SAttach1AddWeeks: TSmallintField
      FieldName = 'AddWeeks'
    end
    object SAttach1Yyy: TIntegerField
      FieldName = 'Yyy'
    end
    object SAttach1Date22: TDateField
      FieldName = 'Date22'
    end
    object SAttach1Oasve: TWideStringField
      FieldName = 'Oasve'
      Size = 100
    end
    object SAttach1Polesa: TWideStringField
      FieldName = 'Polesa'
    end
    object SAttach1AginNm: TSmallintField
      FieldName = 'AginNm'
    end
    object SAttach1barcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object SAttach1UserNum: TSmallintField
      FieldName = 'UserNum'
      Required = True
    end
    object SAttach1ToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object SAttach1StampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object SAttach1LockF: TSmallintField
      FieldName = 'LockF'
    end
    object SAttach1AttDaily: TIntegerField
      FieldName = 'AttDaily'
    end
    object SAttach1DebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object SAttach1LockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object SAttach1DailyCurr: TSmallintField
      FieldName = 'DailyCurr'
    end
    object SAttach1CurrF: TSmallintField
      FieldName = 'CurrF'
    end
    object SAttach1ClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object SAttach1PaidF: TSmallintField
      FieldName = 'PaidF'
    end
  end
  object DSAttach: TUniDataSource
    DataSet = SAttach1
    Left = 440
    Top = 440
  end
  object VSAccList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `acclist`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate`, `' +
        'EndEmpDate`, `GoodsDesc`, `GoodsQty`, `ShipBillNum`, `WeSpace`, ' +
        '`Total`, `AdmisMet`, `Stamp`, `Unit`, `BillNum`, `loukof`, `Tona' +
        'me`, `Electric`, `Remain`, `Wight`, `LocOrFor`, `Petrol`, `Dirty' +
        '`, `FTime1`, `EndTime1`, `Move1`, `FTime2`, `EndTime2`, `Move2`,' +
        ' `ShipType`, `Mezan`, `Kemawea`, `Frg`, `Tadl`, `FrgFlag`, `HjzF' +
        'lag`, `TadlFlag`, `Edafe1`, `Edafe2`, `Goodsname`, `Moveall`, `M' +
        'ovV1`, `MovV2`, `LocWitOut`, `ChechDate`, `Month`, `Cars`, `Stat' +
        'es`, `ElecDate`, `RemDate`, `MezDate`, `Roafe`, `Dama`, `TfteshC' +
        'ar`, `AttTo`, `Leverweight`, `Saba`, `WeeksNum`, `States1`, `Sta' +
        'tes2`, `Days`, `DaysM`, `EleeshDate`, `ReshDate`, `DaysMM`, `Sap' +
        'a`, `AutoDate`, `AginNm`, `F1Num`, `User`, `DateTop`, `NumT`, `b' +
        'arcade`, `archiveF`, `HoursNum`, `couponIn`, `couponOut`, `Teleg' +
        'ramNum`, `PaidF`, `UnitRsom`, `Num1`, `Num2`, `Num3`, `Num4`, `N' +
        'um5`, `Num6`, `Num7`, `Num8`, `ShipMet`, `Reserve`, `FrgShip`, `' +
        'Qty3`, `BillNum2`, `SubType`, `DelF`, `DelDate`, `boat`, `AgntR`' +
        ', `SharedF`, `ChemicalF`, `AlterBill`, `StampAbs`, `ListNumR`, `' +
        'DailyNum`, `AttachNum`, `DisCount`, `DelWhy`, `cutF`, `CurrntF`,' +
        ' `DebitF`, `CurrDate`, `DailyCurr`, `LockCurr`, `ClaimF`, `Claim' +
        'Date`, `ClaimNum`, `Msrahname`, `phoneMsr`, `NTotal`, `NStamp`, ' +
        '`QRALL`, `loadnum`, `Billloading`, `TotalD`, `InvoiceD`, `NTotal' +
        'D`, `NStampD`, `Qty2`, `Unit2`, `DollarPrice`, `Ex_Price`, `SubT' +
        'ype2`, `progress`, `real_date`, `shared_usefork`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`ShipNum`, :`ArriveDat' +
        'e`, :`EndEmpDate`, :`GoodsDesc`, :`GoodsQty`, :`ShipBillNum`, :`' +
        'WeSpace`, :`Total`, :`AdmisMet`, :`Stamp`, :`Unit`, :`BillNum`, ' +
        ':`loukof`, :`Toname`, :`Electric`, :`Remain`, :`Wight`, :`LocOrF' +
        'or`, :`Petrol`, :`Dirty`, :`FTime1`, :`EndTime1`, :`Move1`, :`FT' +
        'ime2`, :`EndTime2`, :`Move2`, :`ShipType`, :`Mezan`, :`Kemawea`,' +
        ' :`Frg`, :`Tadl`, :`FrgFlag`, :`HjzFlag`, :`TadlFlag`, :`Edafe1`' +
        ', :`Edafe2`, :`Goodsname`, :`Moveall`, :`MovV1`, :`MovV2`, :`Loc' +
        'WitOut`, :`ChechDate`, :`Month`, :`Cars`, :`States`, :`ElecDate`' +
        ', :`RemDate`, :`MezDate`, :`Roafe`, :`Dama`, :`TfteshCar`, :`Att' +
        'To`, :`Leverweight`, :`Saba`, :`WeeksNum`, :`States1`, :`States2' +
        '`, :`Days`, :`DaysM`, :`EleeshDate`, :`ReshDate`, :`DaysMM`, :`S' +
        'apa`, :`AutoDate`, :`AginNm`, :`F1Num`, :`User`, :`DateTop`, :`N' +
        'umT`, :`barcade`, :`archiveF`, :`HoursNum`, :`couponIn`, :`coupo' +
        'nOut`, :`TelegramNum`, :`PaidF`, :`UnitRsom`, :`Num1`, :`Num2`, ' +
        ':`Num3`, :`Num4`, :`Num5`, :`Num6`, :`Num7`, :`Num8`, :`ShipMet`' +
        ', :`Reserve`, :`FrgShip`, :`Qty3`, :`BillNum2`, :`SubType`, :`De' +
        'lF`, :`DelDate`, :`boat`, :`AgntR`, :`SharedF`, :`ChemicalF`, :`' +
        'AlterBill`, :`StampAbs`, :`ListNumR`, :`DailyNum`, :`AttachNum`,' +
        ' :`DisCount`, :`DelWhy`, :`cutF`, :`CurrntF`, :`DebitF`, :`CurrD' +
        'ate`, :`DailyCurr`, :`LockCurr`, :`ClaimF`, :`ClaimDate`, :`Clai' +
        'mNum`, :`Msrahname`, :`phoneMsr`, :`NTotal`, :`NStamp`, :`QRALL`' +
        ', :`loadnum`, :`Billloading`, :`TotalD`, :`InvoiceD`, :`NTotalD`' +
        ', :`NStampD`, :`Qty2`, :`Unit2`, :`DollarPrice`, :`Ex_Price`, :`' +
        'SubType2`, :`progress`, :`real_date`, :`shared_usefork`)')
    SQLDelete.Strings = (
      'DELETE FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLUpdate.Strings = (
      'UPDATE `acclist`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `ShipNum` = :`ShipNum`, `ArriveDate` = :`ArriveDat' +
        'e`, `EndEmpDate` = :`EndEmpDate`, `GoodsDesc` = :`GoodsDesc`, `G' +
        'oodsQty` = :`GoodsQty`, `ShipBillNum` = :`ShipBillNum`, `WeSpace' +
        '` = :`WeSpace`, `Total` = :`Total`, `AdmisMet` = :`AdmisMet`, `S' +
        'tamp` = :`Stamp`, `Unit` = :`Unit`, `BillNum` = :`BillNum`, `lou' +
        'kof` = :`loukof`, `Toname` = :`Toname`, `Electric` = :`Electric`' +
        ', `Remain` = :`Remain`, `Wight` = :`Wight`, `LocOrFor` = :`LocOr' +
        'For`, `Petrol` = :`Petrol`, `Dirty` = :`Dirty`, `FTime1` = :`FTi' +
        'me1`, `EndTime1` = :`EndTime1`, `Move1` = :`Move1`, `FTime2` = :' +
        '`FTime2`, `EndTime2` = :`EndTime2`, `Move2` = :`Move2`, `ShipTyp' +
        'e` = :`ShipType`, `Mezan` = :`Mezan`, `Kemawea` = :`Kemawea`, `F' +
        'rg` = :`Frg`, `Tadl` = :`Tadl`, `FrgFlag` = :`FrgFlag`, `HjzFlag' +
        '` = :`HjzFlag`, `TadlFlag` = :`TadlFlag`, `Edafe1` = :`Edafe1`, ' +
        '`Edafe2` = :`Edafe2`, `Goodsname` = :`Goodsname`, `Moveall` = :`' +
        'Moveall`, `MovV1` = :`MovV1`, `MovV2` = :`MovV2`, `LocWitOut` = ' +
        ':`LocWitOut`, `ChechDate` = :`ChechDate`, `Month` = :`Month`, `C' +
        'ars` = :`Cars`, `States` = :`States`, `ElecDate` = :`ElecDate`, ' +
        '`RemDate` = :`RemDate`, `MezDate` = :`MezDate`, `Roafe` = :`Roaf' +
        'e`, `Dama` = :`Dama`, `TfteshCar` = :`TfteshCar`, `AttTo` = :`At' +
        'tTo`, `Leverweight` = :`Leverweight`, `Saba` = :`Saba`, `WeeksNu' +
        'm` = :`WeeksNum`, `States1` = :`States1`, `States2` = :`States2`' +
        ', `Days` = :`Days`, `DaysM` = :`DaysM`, `EleeshDate` = :`EleeshD' +
        'ate`, `ReshDate` = :`ReshDate`, `DaysMM` = :`DaysMM`, `Sapa` = :' +
        '`Sapa`, `AutoDate` = :`AutoDate`, `AginNm` = :`AginNm`, `F1Num` ' +
        '= :`F1Num`, `User` = :`User`, `DateTop` = :`DateTop`, `NumT` = :' +
        '`NumT`, `barcade` = :`barcade`, `archiveF` = :`archiveF`, `Hours' +
        'Num` = :`HoursNum`, `couponIn` = :`couponIn`, `couponOut` = :`co' +
        'uponOut`, `TelegramNum` = :`TelegramNum`, `PaidF` = :`PaidF`, `U' +
        'nitRsom` = :`UnitRsom`, `Num1` = :`Num1`, `Num2` = :`Num2`, `Num' +
        '3` = :`Num3`, `Num4` = :`Num4`, `Num5` = :`Num5`, `Num6` = :`Num' +
        '6`, `Num7` = :`Num7`, `Num8` = :`Num8`, `ShipMet` = :`ShipMet`, ' +
        '`Reserve` = :`Reserve`, `FrgShip` = :`FrgShip`, `Qty3` = :`Qty3`' +
        ', `BillNum2` = :`BillNum2`, `SubType` = :`SubType`, `DelF` = :`D' +
        'elF`, `DelDate` = :`DelDate`, `boat` = :`boat`, `AgntR` = :`Agnt' +
        'R`, `SharedF` = :`SharedF`, `ChemicalF` = :`ChemicalF`, `AlterBi' +
        'll` = :`AlterBill`, `StampAbs` = :`StampAbs`, `ListNumR` = :`Lis' +
        'tNumR`, `DailyNum` = :`DailyNum`, `AttachNum` = :`AttachNum`, `D' +
        'isCount` = :`DisCount`, `DelWhy` = :`DelWhy`, `cutF` = :`cutF`, ' +
        '`CurrntF` = :`CurrntF`, `DebitF` = :`DebitF`, `CurrDate` = :`Cur' +
        'rDate`, `DailyCurr` = :`DailyCurr`, `LockCurr` = :`LockCurr`, `C' +
        'laimF` = :`ClaimF`, `ClaimDate` = :`ClaimDate`, `ClaimNum` = :`C' +
        'laimNum`, `Msrahname` = :`Msrahname`, `phoneMsr` = :`phoneMsr`, ' +
        '`NTotal` = :`NTotal`, `NStamp` = :`NStamp`, `QRALL` = :`QRALL`, ' +
        '`loadnum` = :`loadnum`, `Billloading` = :`Billloading`, `TotalD`' +
        ' = :`TotalD`, `InvoiceD` = :`InvoiceD`, `NTotalD` = :`NTotalD`, ' +
        '`NStampD` = :`NStampD`, `Qty2` = :`Qty2`, `Unit2` = :`Unit2`, `D' +
        'ollarPrice` = :`DollarPrice`, `Ex_Price` = :`Ex_Price`, `SubType' +
        '2` = :`SubType2`, `progress` = :`progress`, `real_date` = :`real' +
        '_date`, `shared_usefork` = :`shared_usefork`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLLock.Strings = (
      'SELECT * FROM acclist'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate' +
        '`, `EndEmpDate`, `GoodsDesc`, `GoodsQty`, `ShipBillNum`, `WeSpac' +
        'e`, `Total`, `AdmisMet`, `Stamp`, `Unit`, `BillNum`, `loukof`, `' +
        'Toname`, `Electric`, `Remain`, `Wight`, `LocOrFor`, `Petrol`, `D' +
        'irty`, `FTime1`, `EndTime1`, `Move1`, `FTime2`, `EndTime2`, `Mov' +
        'e2`, `ShipType`, `Mezan`, `Kemawea`, `Frg`, `Tadl`, `FrgFlag`, `' +
        'HjzFlag`, `TadlFlag`, `Edafe1`, `Edafe2`, `Goodsname`, `Moveall`' +
        ', `MovV1`, `MovV2`, `LocWitOut`, `ChechDate`, `Month`, `Cars`, `' +
        'States`, `ElecDate`, `RemDate`, `MezDate`, `Roafe`, `Dama`, `Tft' +
        'eshCar`, `AttTo`, `Leverweight`, `Saba`, `WeeksNum`, `States1`, ' +
        '`States2`, `Days`, `DaysM`, `EleeshDate`, `ReshDate`, `DaysMM`, ' +
        '`Sapa`, `AutoDate`, `AginNm`, `F1Num`, `User`, `DateTop`, `NumT`' +
        ', `barcade`, `archiveF`, `HoursNum`, `couponIn`, `couponOut`, `T' +
        'elegramNum`, `PaidF`, `UnitRsom`, `Num1`, `Num2`, `Num3`, `Num4`' +
        ', `Num5`, `Num6`, `Num7`, `Num8`, `ShipMet`, `Reserve`, `FrgShip' +
        '`, `Qty3`, `BillNum2`, `SubType`, `DelF`, `DelDate`, `boat`, `Ag' +
        'ntR`, `SharedF`, `ChemicalF`, `AlterBill`, `StampAbs`, `ListNumR' +
        '`, `DailyNum`, `AttachNum`, `DisCount`, `DelWhy`, `cutF`, `Currn' +
        'tF`, `DebitF`, `CurrDate`, `DailyCurr`, `LockCurr`, `ClaimF`, `C' +
        'laimDate`, `ClaimNum`, `Msrahname`, `phoneMsr`, `NTotal`, `NStam' +
        'p`, `QRALL`, `loadnum`, `Billloading`, `TotalD`, `InvoiceD`, `NT' +
        'otalD`, `NStampD`, `Qty2`, `Unit2`, `DollarPrice`, `Ex_Price`, `' +
        'SubType2`, `progress`, `real_date`, `shared_usefork` FROM `accli' +
        'st`'
      'WHERE'
      '  `ListNum` = :`ListNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM acclist')
    Connection = DB1
    SQL.Strings = (
      'CALL VSAccList(:VNum)')
    Left = 390
    Top = 310
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VSAccList'
    object VSAccListListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object VSAccListListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object VSAccListListDate: TDateField
      FieldName = 'ListDate'
    end
    object VSAccListShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object VSAccListArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object VSAccListEndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object VSAccListGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object VSAccListGoodsQty: TFloatField
      FieldName = 'GoodsQty'
    end
    object VSAccListShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object VSAccListWeSpace: TFloatField
      FieldName = 'WeSpace'
    end
    object VSAccListTotal: TFloatField
      FieldName = 'Total'
    end
    object VSAccListAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object VSAccListStamp: TFloatField
      FieldName = 'Stamp'
    end
    object VSAccListUnit: TSmallintField
      FieldName = 'Unit'
    end
    object VSAccListBillNum: TWideStringField
      FieldName = 'BillNum'
      Size = 300
    end
    object VSAccListloukof: TSmallintField
      FieldName = 'loukof'
    end
    object VSAccListToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object VSAccListElectric: TSmallintField
      FieldName = 'Electric'
    end
    object VSAccListRemain: TSmallintField
      FieldName = 'Remain'
    end
    object VSAccListWight: TFloatField
      FieldName = 'Wight'
    end
    object VSAccListLocOrFor: TWideStringField
      FieldName = 'LocOrFor'
      Size = 6
    end
    object VSAccListPetrol: TSmallintField
      FieldName = 'Petrol'
    end
    object VSAccListDirty: TSmallintField
      FieldName = 'Dirty'
    end
    object VSAccListFTime1: TTimeField
      FieldName = 'FTime1'
    end
    object VSAccListEndTime1: TTimeField
      FieldName = 'EndTime1'
    end
    object VSAccListMove1: TSmallintField
      FieldName = 'Move1'
    end
    object VSAccListFTime2: TTimeField
      FieldName = 'FTime2'
    end
    object VSAccListEndTime2: TTimeField
      FieldName = 'EndTime2'
    end
    object VSAccListMove2: TSmallintField
      FieldName = 'Move2'
    end
    object VSAccListShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object VSAccListMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object VSAccListKemawea: TSmallintField
      FieldName = 'Kemawea'
    end
    object VSAccListFrg: TSmallintField
      FieldName = 'Frg'
    end
    object VSAccListTadl: TSmallintField
      FieldName = 'Tadl'
    end
    object VSAccListFrgFlag: TSmallintField
      FieldName = 'FrgFlag'
    end
    object VSAccListHjzFlag: TSmallintField
      FieldName = 'HjzFlag'
    end
    object VSAccListTadlFlag: TSmallintField
      FieldName = 'TadlFlag'
    end
    object VSAccListEdafe1: TSmallintField
      FieldName = 'Edafe1'
    end
    object VSAccListEdafe2: TSmallintField
      FieldName = 'Edafe2'
    end
    object VSAccListGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 100
    end
    object VSAccListMoveall: TSmallintField
      FieldName = 'Moveall'
    end
    object VSAccListMovV1: TFloatField
      FieldName = 'MovV1'
    end
    object VSAccListMovV2: TFloatField
      FieldName = 'MovV2'
    end
    object VSAccListLocWitOut: TSmallintField
      FieldName = 'LocWitOut'
    end
    object VSAccListChechDate: TDateField
      FieldName = 'ChechDate'
    end
    object VSAccListMonth: TSmallintField
      FieldName = 'Month'
    end
    object VSAccListCars: TSmallintField
      FieldName = 'Cars'
    end
    object VSAccListStates: TSmallintField
      FieldName = 'States'
    end
    object VSAccListQty2: TSmallintField
      FieldName = 'Qty2'
    end
    object VSAccListUnit2: TSmallintField
      FieldName = 'Unit2'
    end
    object VSAccListElecDate: TDateField
      FieldName = 'ElecDate'
    end
    object VSAccListRemDate: TDateField
      FieldName = 'RemDate'
    end
    object VSAccListMezDate: TDateField
      FieldName = 'MezDate'
    end
    object VSAccListRoafe: TSmallintField
      FieldName = 'Roafe'
    end
    object VSAccListDama: TSmallintField
      FieldName = 'Dama'
    end
    object VSAccListTfteshCar: TSmallintField
      FieldName = 'TfteshCar'
    end
    object VSAccListAttTo: TWideStringField
      FieldName = 'AttTo'
    end
    object VSAccListLeverweight: TFloatField
      FieldName = 'Leverweight'
    end
    object VSAccListSaba: TSmallintField
      FieldName = 'Saba'
    end
    object VSAccListWeeksNum: TSmallintField
      FieldName = 'WeeksNum'
    end
    object VSAccListStates1: TSmallintField
      FieldName = 'States1'
    end
    object VSAccListStates2: TSmallintField
      FieldName = 'States2'
    end
    object VSAccListDays: TSmallintField
      FieldName = 'Days'
    end
    object VSAccListDaysM: TSmallintField
      FieldName = 'DaysM'
    end
    object VSAccListEleeshDate: TDateField
      FieldName = 'EleeshDate'
    end
    object VSAccListReshDate: TDateField
      FieldName = 'ReshDate'
    end
    object VSAccListDaysMM: TFloatField
      FieldName = 'DaysMM'
    end
    object VSAccListSapa: TSmallintField
      FieldName = 'Sapa'
    end
    object VSAccListAutoDate: TDateField
      FieldName = 'AutoDate'
    end
    object VSAccListAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object VSAccListF1Num: TSmallintField
      FieldName = 'F1Num'
    end
    object VSAccListUser: TIntegerField
      FieldName = 'User'
    end
    object VSAccListDateTop: TDateField
      FieldName = 'DateTop'
    end
    object VSAccListNumT: TIntegerField
      FieldName = 'NumT'
    end
    object VSAccListbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object VSAccListarchiveF: TShortintField
      FieldName = 'archiveF'
      Required = True
    end
    object VSAccListHoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object VSAccListcouponIn: TIntegerField
      FieldName = 'couponIn'
    end
    object VSAccListcouponOut: TIntegerField
      FieldName = 'couponOut'
    end
    object VSAccListTelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object VSAccListPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object VSAccListUnitRsom: TSmallintField
      FieldName = 'UnitRsom'
    end
    object VSAccListNum1: TSmallintField
      FieldName = 'Num1'
    end
    object VSAccListNum2: TSmallintField
      FieldName = 'Num2'
    end
    object VSAccListNum3: TSmallintField
      FieldName = 'Num3'
    end
    object VSAccListNum4: TSmallintField
      FieldName = 'Num4'
    end
    object VSAccListNum5: TSmallintField
      FieldName = 'Num5'
    end
    object VSAccListNum6: TSmallintField
      FieldName = 'Num6'
    end
    object VSAccListNum7: TSmallintField
      FieldName = 'Num7'
    end
    object VSAccListNum8: TSmallintField
      FieldName = 'Num8'
    end
    object VSAccListShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object VSAccListReserve: TSmallintField
      FieldName = 'Reserve'
    end
    object VSAccListFrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object VSAccListQty3: TSmallintField
      FieldName = 'Qty3'
    end
    object VSAccListBillNum2: TWideStringField
      FieldName = 'BillNum2'
      Size = 300
    end
    object VSAccListSubType: TSmallintField
      FieldName = 'SubType'
    end
    object VSAccListDelF: TSmallintField
      FieldName = 'DelF'
    end
    object VSAccListDelDate: TDateField
      FieldName = 'DelDate'
    end
    object VSAccListboat: TSmallintField
      FieldName = 'boat'
    end
    object VSAccListAgntR: TSmallintField
      FieldName = 'AgntR'
    end
    object VSAccListSharedF: TSmallintField
      FieldName = 'SharedF'
    end
    object VSAccListChemicalF: TSmallintField
      FieldName = 'ChemicalF'
    end
    object VSAccListAlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object VSAccListStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object VSAccListListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
    object VSAccListDailyNum: TIntegerField
      FieldName = 'DailyNum'
    end
    object VSAccListAttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object VSAccListDisCount: TFloatField
      FieldName = 'DisCount'
    end
    object VSAccListDelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 70
    end
    object VSAccListcutF: TSmallintField
      FieldName = 'cutF'
    end
    object VSAccListCurrntF: TSmallintField
      FieldName = 'CurrntF'
    end
    object VSAccListDebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object VSAccListCurrDate: TDateField
      FieldName = 'CurrDate'
    end
    object VSAccListDailyCurr: TIntegerField
      FieldName = 'DailyCurr'
    end
    object VSAccListLockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object VSAccListClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object VSAccListClaimDate: TDateField
      FieldName = 'ClaimDate'
    end
    object VSAccListClaimNum: TIntegerField
      FieldName = 'ClaimNum'
    end
    object VSAccListMsrahname: TWideStringField
      FieldName = 'Msrahname'
      Size = 70
    end
    object VSAccListphoneMsr: TWideStringField
      FieldName = 'phoneMsr'
      Size = 15
    end
    object VSAccListNTotal: TFloatField
      FieldName = 'NTotal'
    end
    object VSAccListNStamp: TFloatField
      FieldName = 'NStamp'
    end
    object VSAccListQRALL: TWideMemoField
      FieldName = 'QRALL'
      BlobType = ftWideMemo
    end
    object VSAccListloadnum: TIntegerField
      FieldName = 'loadnum'
    end
    object VSAccListBillloading: TIntegerField
      FieldName = 'Billloading'
    end
    object VSAccListTotalD: TFloatField
      FieldName = 'TotalD'
    end
    object VSAccListInvoiceD: TSmallintField
      FieldName = 'InvoiceD'
    end
    object VSAccListNTotalD: TFloatField
      FieldName = 'NTotalD'
    end
    object VSAccListNStampD: TFloatField
      FieldName = 'NStampD'
    end
    object VSAccListDollarPrice: TFloatField
      FieldName = 'DollarPrice'
    end
    object VSAccListEx_Price: TFloatField
      FieldName = 'Ex_Price'
    end
    object VSAccListSubType2: TSmallintField
      FieldName = 'SubType2'
    end
    object VSAccListshared_usefork: TSmallintField
      FieldName = 'shared_usefork'
    end
    object VSAccListTo: TSmallintField
      FieldName = 'To'
    end
    object VSAccListElecQty: TSmallintField
      FieldName = 'ElecQty'
    end
    object VSAccListRemQty: TSmallintField
      FieldName = 'RemQty'
    end
  end
  object DSVloadHrak: TUniDataSource
    DataSet = SVloadHrak
    Left = 370
    Top = 170
  end
  object DQLoadEf: TUniDataSource
    DataSet = QLoadEf
    Left = 925
    Top = 10
  end
  object QSLoadEf: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loed'
      
        '  (LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billloadi' +
        'ng, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, EfrajNum' +
        ', EfrajDate, Flag, BillNum, BillType, StoreType, Notes, selectF,' +
        ' StopF, StopWhy, EnbEdit, UserSelected, RF, TransitF)'
      'VALUES'
      
        '  (:LNum, :Auto, :Qty, :Marks, :GoodsType, :OrgPort, :Loader, :B' +
        'illloading, :Sender, :Kias, :Weight, :Send, :Goodsname, :Num, :T' +
        'fasel, :EfrajNum, :EfrajDate, :Flag, :BillNum, :BillType, :Store' +
        'Type, :Notes, :selectF, :StopF, :StopWhy, :EnbEdit, :UserSelecte' +
        'd, :RF, :TransitF)')
    SQLDelete.Strings = (
      'DELETE FROM loed'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLUpdate.Strings = (
      'UPDATE loed'
      'SET'
      
        '  LNum = :LNum, Auto = :Auto, Qty = :Qty, Marks = :Marks, GoodsT' +
        'ype = :GoodsType, OrgPort = :OrgPort, Loader = :Loader, Billload' +
        'ing = :Billloading, Sender = :Sender, Kias = :Kias, Weight = :We' +
        'ight, Send = :Send, Goodsname = :Goodsname, Num = :Num, Tfasel =' +
        ' :Tfasel, EfrajNum = :EfrajNum, EfrajDate = :EfrajDate, Flag = :' +
        'Flag, BillNum = :BillNum, BillType = :BillType, StoreType = :Sto' +
        'reType, Notes = :Notes, selectF = :selectF, StopF = :StopF, Stop' +
        'Why = :StopWhy, EnbEdit = :EnbEdit, UserSelected = :UserSelected' +
        ', RF = :RF, TransitF = :TransitF'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  Auto = :Old_Auto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billl' +
        'oading, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, Efra' +
        'jNum, EfrajDate, Flag, BillNum, BillType, StoreType, Notes, sele' +
        'ctF, StopF, StopWhy, EnbEdit, UserSelected, RF, TransitF FROM lo' +
        'ed'
      'WHERE'
      '  Auto = :Auto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'SELECT *'
      'FROM porte.loed loed')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 850
    Top = 70
    object QSLoadEfLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object QSLoadEfAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object QSLoadEfQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object QSLoadEfMarks: TSmallintField
      FieldName = 'Marks'
    end
    object QSLoadEfGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object QSLoadEfOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object QSLoadEfLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object QSLoadEfBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
    end
    object QSLoadEfSender: TSmallintField
      FieldName = 'Sender'
    end
    object QSLoadEfKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object QSLoadEfWeight: TFloatField
      FieldName = 'Weight'
    end
    object QSLoadEfSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object QSLoadEfGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 500
    end
    object QSLoadEfNum: TWideStringField
      FieldName = 'Num'
    end
    object QSLoadEfTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object QSLoadEfEfrajNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1573#1601#1585#1575#1580' '
      FieldName = 'EfrajNum'
      Size = 30
    end
    object QSLoadEfEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object QSLoadEfFlag: TSmallintField
      FieldName = 'Flag'
    end
    object QSLoadEfBillNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillNum'
    end
    object QSLoadEfBillType: TSmallintField
      FieldName = 'BillType'
    end
    object QSLoadEfStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object QSLoadEfNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object QSLoadEfselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object QSLoadEfStopF: TSmallintField
      FieldName = 'StopF'
    end
    object QSLoadEfStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object QSLoadEfEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object QSLoadEfMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object QSLoadEfStoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object QSLoadEfUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
    object QSLoadEfRF: TSmallintField
      FieldName = 'RF'
    end
    object QSLoadEfTransitF: TSmallintField
      FieldName = 'TransitF'
    end
  end
  object DQSQLoadEf: TUniDataSource
    DataSet = QSLoadEf
    Left = 925
    Top = 70
  end
  object QLoadEf: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loed'
      
        '  (LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billloadi' +
        'ng, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, EfrajNum' +
        ', EfrajDate, Flag, BillNum, BillType, StoreType, Notes, selectF,' +
        ' StopF, StopWhy, EnbEdit, UserSelected, RF, TransitF)'
      'VALUES'
      
        '  (:LNum, :Auto, :Qty, :Marks, :GoodsType, :OrgPort, :Loader, :B' +
        'illloading, :Sender, :Kias, :Weight, :Send, :Goodsname, :Num, :T' +
        'fasel, :EfrajNum, :EfrajDate, :Flag, :BillNum, :BillType, :Store' +
        'Type, :Notes, :selectF, :StopF, :StopWhy, :EnbEdit, :UserSelecte' +
        'd, :RF, :TransitF)')
    SQLDelete.Strings = (
      'DELETE FROM loed'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLUpdate.Strings = (
      'UPDATE loed'
      'SET'
      
        '  LNum = :LNum, Auto = :Auto, Qty = :Qty, Marks = :Marks, GoodsT' +
        'ype = :GoodsType, OrgPort = :OrgPort, Loader = :Loader, Billload' +
        'ing = :Billloading, Sender = :Sender, Kias = :Kias, Weight = :We' +
        'ight, Send = :Send, Goodsname = :Goodsname, Num = :Num, Tfasel =' +
        ' :Tfasel, EfrajNum = :EfrajNum, EfrajDate = :EfrajDate, Flag = :' +
        'Flag, BillNum = :BillNum, BillType = :BillType, StoreType = :Sto' +
        'reType, Notes = :Notes, selectF = :selectF, StopF = :StopF, Stop' +
        'Why = :StopWhy, EnbEdit = :EnbEdit, UserSelected = :UserSelected' +
        ', RF = :RF, TransitF = :TransitF'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  Auto = :Old_Auto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billl' +
        'oading, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, Efra' +
        'jNum, EfrajDate, Flag, BillNum, BillType, StoreType, Notes, sele' +
        'ctF, StopF, StopWhy, EnbEdit, UserSelected, RF, TransitF FROM lo' +
        'ed'
      'WHERE'
      '  Auto = :Auto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'SELECT *'
      'FROM porte.loed loed'
      'ORDER BY loed.BillNum DESC')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 850
    Top = 10
    object QLoadEfLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object QLoadEfAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object QLoadEfQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object QLoadEfMarks: TSmallintField
      FieldName = 'Marks'
    end
    object QLoadEfGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object QLoadEfOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object QLoadEfLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object QLoadEfBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
    end
    object QLoadEfSender: TSmallintField
      FieldName = 'Sender'
    end
    object QLoadEfKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object QLoadEfWeight: TFloatField
      FieldName = 'Weight'
    end
    object QLoadEfSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object QLoadEfGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 500
    end
    object QLoadEfNum: TWideStringField
      FieldName = 'Num'
    end
    object QLoadEfTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object QLoadEfEfrajNum: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1573#1601#1585#1575#1580' '
      FieldName = 'EfrajNum'
      Size = 30
    end
    object QLoadEfEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object QLoadEfFlag: TSmallintField
      FieldName = 'Flag'
    end
    object QLoadEfBillNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillNum'
    end
    object QLoadEfBillType: TSmallintField
      FieldName = 'BillType'
    end
    object QLoadEfStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object QLoadEfNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object QLoadEfselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object QLoadEfStopF: TSmallintField
      FieldName = 'StopF'
    end
    object QLoadEfStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object QLoadEfEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object QLoadEfMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object QLoadEfStoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object QLoadEfUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
    object QLoadEfRF: TSmallintField
      FieldName = 'RF'
    end
    object QLoadEfTransitF: TSmallintField
      FieldName = 'TransitF'
    end
  end
  object FrAttach: TfrxDBDataset
    UserName = 'FrAttach'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'ListNum=ListNum'
      'AttachNum=AttachNum'
      'Listtype=Listtype'
      'AttachDate=AttachDate'
      'AttachValue=AttachValue'
      'Mezan=Mezan'
      'Kias=Kias'
      'Qty=Qty'
      'Remin=Remin'
      'Electric=Electric'
      'Date2=Date2'
      'Date3=Date3'
      'WeeksBef=WeeksBef'
      'Date4=Date4'
      'Weight=Weight'
      'Unit=Unit'
      'ReminDays=ReminDays'
      'Met=Met'
      'St1=St1'
      'St2=St2'
      'AddWeeks=AddWeeks'
      'Yyy=Yyy'
      'Date22=Date22'
      'Oasve=Oasve'
      'AginNm=AginNm'
      'barcade=barcade'
      'Weeks=Weeks'
      'Tfkid=Tfkid'
      'Net=Net'
      'StampNet=StampNet'
      'UserNum=UserNum'
      'UserNm=UserNm'
      'ToName=ToName'
      'StampAbs=StampAbs'
      'LockF=LockF'
      'AttDaily=AttDaily'
      'DebitF=DebitF'
      'LockCurr=LockCurr'
      'DailyCurr=DailyCurr'
      'CurrF=CurrF'
      'ClaimF=ClaimF'
      'PaidF=PaidF'
      'NTotal=NTotal'
      'NStamp=NStamp'
      'QRALL=QRALL'
      'Ex_Price=Ex_Price'
      'Date_Top=Date_Top'
      'DelF=DelF'
      'DelDAte=DelDAte'
      'DelWhy=DelWhy'
      'AlterAttach=AlterAttach'
      'progress=progress'
      'stampflag=stampflag'
      'Polesa=Polesa'
      'MetNm=MetNm')
    DataSet = Attach
    BCDToCurrency = False
    Left = 646
    Top = 20
  end
  object FrAttachD: TfrxDBDataset
    UserName = 'FrAttachD'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Acctype=Acctype'
      'Accvalue=Accvalue'
      'AccTotal=AccTotal'
      'AccNm=AccNm'
      'Total=Total'
      'FromDate=FromDate'
      'ToDate=ToDate'
      'ListType=ListType'
      'ListNum=ListNum'
      'AttachNum=AttachNum'
      'numAuto=numAuto')
    DataSet = AttachD
    BCDToCurrency = False
    Left = 726
    Top = 20
  end
  object FrAttach2: TfrxDBDataset
    UserName = 'FrAttach2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Acctype=Acctype'
      'ListNum=ListNum'
      'AttachNum=AttachNum'
      'ListType=ListType'
      'AttashType=AttashType'
      'AttachNum2=AttachNum2'
      'AttachDate=AttachDate'
      'AttachValue=AttachValue'
      'AttachMezan=AttachMezan'
      'Weeks=Weeks'
      'StampNet=StampNet'
      'Net=Net'
      'Tfkid=Tfkid')
    DataSet = attach2
    BCDToCurrency = False
    Left = 650
    Top = 80
  end
  object FrAttach2D: TfrxDBDataset
    UserName = 'FrAttach2D'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'ListNum=ListNum'
      'AttachNum=AttachNum'
      'ListType=ListType'
      'AttachNum2=AttachNum2'
      'AttType=AttType'
      'AccValue=AccValue'
      'AccTotal=AccTotal'
      'FromDate=FromDate'
      'ToDate=ToDate'
      'AttType2=AttType2'
      'AttNm=AttNm')
    DataSet = attach2d
    BCDToCurrency = False
    Left = 730
    Top = 80
  end
  object BillSrchQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT acclist.ListNum,'
      '       acclist.ListType,'
      '       acclist.ShipNum,'
      '       acclist.ArriveDate,'
      '       acclist.SubType2'
      'FROM porte.acclist acclist'
      'WHERE (acclist.ListNum =:num) AND (acclist.ListType <> 3)')
    OnCalcFields = BillSrchQCalcFields
    Left = 850
    Top = 450
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num'
        ParamType = ptInput
        Value = nil
      end>
    object BillSrchQListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'ListNum'
    end
    object BillSrchQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object BillSrchQShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object BillSrchQshipNm: TStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldKind = fkLookup
      FieldName = 'shipNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'ShipNum'
      Size = 100
      Lookup = True
    end
    object BillSrchQArriveDate: TDateField
      DisplayLabel = #1578' '#1575#1604#1608#1589#1608#1575#1604
      FieldName = 'ArriveDate'
    end
    object BillSrchQListTypeNm: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldKind = fkCalculated
      FieldName = 'ListTypeNm'
      Size = 13
      Calculated = True
    end
    object BillSrchQSubType2: TSmallintField
      FieldName = 'SubType2'
    end
  end
  object ABillSrchQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT attach.ListNum,'
      '       attach.AttachNum,'
      '       attach.Listtype,'
      '       attach.AttachDate,'
      '       attach.AccType'
      'FROM porte.attach attach'
      'WHERE (attach.AttachNum =:num)')
    Left = 850
    Top = 510
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num'
        ParamType = ptInput
        Value = nil
      end>
    object ABillSrchQListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object ABillSrchQAttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
    end
    object ABillSrchQListtype: TIntegerField
      FieldName = 'Listtype'
      Required = True
    end
    object ABillSrchQAttachDate: TDateField
      FieldName = 'AttachDate'
    end
    object ABillSrchQAccType: TIntegerField
      FieldName = 'AccType'
      Required = True
    end
  end
  object DBillSrchQ: TUniDataSource
    DataSet = BillSrchQ
    Left = 930
    Top = 450
  end
  object QMaxAccList: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT MAX(acclist.ListNum) AS Max_ListNum, acclist.ListType'
      'FROM porte.acclist acclist'
      'WHERE (acclist.ListType =:numT)')
    Left = 930
    Top = 510
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'numT'
        ParamType = ptInput
        Value = nil
      end>
    object QMaxAccListMax_ListNum: TIntegerField
      FieldName = 'Max_ListNum'
      ReadOnly = True
    end
    object QMaxAccListListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
  end
  object SrchOffQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT * FROM `Agents` WHERE `AgAbsName` like :SabsName')
    Left = 850
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'SabsName'
        ParamType = ptInput
        Value = nil
      end>
    object SrchOffQAgName: TWideStringField
      FieldName = 'AgName'
      Size = 60
    end
    object SrchOffQNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object SrchOffQAgAbsName: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object SrchOffQPhone: TWideStringField
      FieldName = 'Phone'
      Size = 50
    end
    object SrchOffQFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object SrchOffQE_Mail: TWideStringField
      FieldName = 'E_Mail'
      Size = 30
    end
    object SrchOffQAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
  end
  object DSrchOffQ: TDataSource
    DataSet = SrchOffQ
    Left = 930
    Top = 600
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 320
    Top = 30
  end
  object DB1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'porte'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True'
      'MySQL.ConnectionTimeout=160')
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    OnConnectionLost = DB1ConnectionLost
    Left = 220
    Top = 30
    EncryptedPassword = '9EFF9BFF92FF96FF91FF'
  end
  object MaxSerShp: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT max(serialNum)as serialNum FROM `ships`')
    Left = 480
    Top = 100
    object MaxSerShpserialNum: TIntegerField
      FieldName = 'serialNum'
      ReadOnly = True
    end
  end
  object QShipList: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT loadlist.TransNUm'
      'FROM porte.loadlist loadlist'
      'WHERE (loadlist.TransNUm =:numS)')
    Left = 400
    Top = 10
    ParamData = <
      item
        DataType = ftInteger
        Name = 'numS'
        ParamType = ptInput
        Value = nil
      end>
    object QShipListTransNUm: TSmallintField
      FieldName = 'TransNUm'
    end
  end
  object QAngList: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT loadlist.Agent'
      'FROM porte.loadlist loadlist'
      'WHERE (loadlist.Agent =:numA)')
    Left = 480
    Top = 380
    ParamData = <
      item
        DataType = ftInteger
        Name = 'numA'
        ParamType = ptInput
        Value = nil
      end>
    object QAngListAgent: TSmallintField
      FieldName = 'Agent'
    end
  end
  object QuserEnter: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT COUNT(acclist.ListNum) AS Count_ListNum, acclist.User'
      'FROM porte.acclist acclist'
      'GROUP BY acclist.User'
      'ORDER BY 1 DESC')
    Left = 1010
    Top = 70
    object QuserEnterCount_ListNum: TLargeintField
      FieldName = 'Count_ListNum'
      ReadOnly = True
      Required = True
    end
    object QuserEnterUser: TIntegerField
      FieldName = 'User'
    end
    object QuserEnterUserNm: TStringField
      FieldKind = fkLookup
      FieldName = 'UserNm'
      LookupDataSet = SPerm
      LookupKeyFields = 'UserNum'
      LookupResultField = 'UserName'
      KeyFields = 'User'
      Size = 100
      Lookup = True
    end
  end
  object RQuserEnter: TfrxDBDataset
    UserName = 'RQuserEnter'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Count_ListNum=Count_ListNum'
      'User=User'
      'UserNm=UserNm')
    DataSet = QuserEnter
    BCDToCurrency = False
    Left = 1100
    Top = 70
  end
  object FRQuserEnter: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1575#1604#1573#1601#1578#1585#1575#1590#1610
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43489.383528067100000000
    ReportOptions.LastChange = 43489.383528067100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1010
    Top = 150
    Datasets = <
      item
        DataSet = RQuserEnter
        DataSetName = 'RQuserEnter'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object QSerFull: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT loed.LNum,'
      '       loed.Auto,'
      '       loed.Qty,'
      '       loed.Marks,'
      '       loed.GoodsType,'
      '       loed.OrgPort,'
      '       loed.Loader,'
      '       loed.Billloading,'
      '       loed.Sender,'
      '       loed.Kias,'
      '       loed.Weight,'
      '       loed.Send,'
      '       loed.Goodsname,'
      '       loed.Num,'
      '       loed.Tfasel,'
      '       loed.EfrajNum,'
      '       loed.EfrajDate,'
      '       loed.Flag,'
      '       loed.BillNum,'
      '       loed.BillType,'
      '       loed.StoreType,'
      '       loed.Notes,'
      '       loed.selectF,'
      '       loed.StopF,'
      '       loed.StopWhy,'
      '       loed.EnbEdit,'
      '       loed.UserSelected,'
      '       load2.Num,'
      '       load2.Lnum,'
      '       load2.numAuto,'
      '       load2.Qty,'
      '       load2.TypeNm,'
      '       load2.Hawea_Num,'
      '       load2.Tfasel,'
      '       admdet2.Num,'
      '       admdet2.BillNum,'
      '       admdet2.numAuto,'
      '       admdet2.Qty,'
      '       admdet2.Unit,'
      '       admdet2.NumAutoS,'
      '       admdet2.shipType,'
      '       admdet2.shipMet,'
      '       admdet2.Lever'
      'FROM (porte.load2    load2'
      
        '      INNER JOIN porte.admdet2 admdet2 ON (load2.numAuto = admde' +
        't2.Num))'
      '     INNER JOIN porte.loed loed'
      '        ON (loed.LNum = load2.Num) AND (loed.Auto = load2.Lnum)'
      'WHERE (loed.LNum =:num)')
    Left = 830
    Top = 670
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num'
        ParamType = ptInput
        Value = nil
      end>
    object QSerFullLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object QSerFullAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object QSerFullQty: TFloatField
      FieldName = 'Qty'
    end
    object QSerFullMarks: TSmallintField
      FieldName = 'Marks'
    end
    object QSerFullGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object QSerFullOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object QSerFullLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object QSerFullBillloading: TWideStringField
      FieldName = 'Billloading'
    end
    object QSerFullSender: TSmallintField
      FieldName = 'Sender'
    end
    object QSerFullKias: TFloatField
      FieldName = 'Kias'
    end
    object QSerFullWeight: TFloatField
      FieldName = 'Weight'
    end
    object QSerFullSend: TWideStringField
      FieldName = 'Send'
      Size = 100
    end
    object QSerFullGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 500
    end
    object QSerFullNum: TWideStringField
      FieldName = 'Num'
    end
    object QSerFullTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object QSerFullEfrajNum: TWideStringField
      FieldName = 'EfrajNum'
      Size = 30
    end
    object QSerFullEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object QSerFullFlag: TSmallintField
      FieldName = 'Flag'
    end
    object QSerFullBillNum: TIntegerField
      FieldName = 'BillNum'
    end
    object QSerFullBillType: TSmallintField
      FieldName = 'BillType'
    end
    object QSerFullStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object QSerFullNotes: TWideStringField
      FieldName = 'Notes'
      Size = 100
    end
    object QSerFullselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object QSerFullStopF: TSmallintField
      FieldName = 'StopF'
    end
    object QSerFullStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object QSerFullEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object QSerFullUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
    object QSerFullNum_1: TIntegerField
      FieldName = 'Num_1'
      ReadOnly = True
      Required = True
    end
    object QSerFullLnum_1: TIntegerField
      FieldName = 'Lnum_1'
      ReadOnly = True
      Required = True
    end
    object QSerFullnumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
      ReadOnly = True
    end
    object QSerFullQty_1: TSmallintField
      FieldName = 'Qty_1'
      ReadOnly = True
    end
    object QSerFullTypeNm: TSmallintField
      FieldName = 'TypeNm'
      ReadOnly = True
    end
    object QSerFullHawea_Num: TWideStringField
      FieldName = 'Hawea_Num'
      ReadOnly = True
      Size = 100
    end
    object QSerFullTfasel_1: TSmallintField
      FieldName = 'Tfasel_1'
      ReadOnly = True
    end
    object QSerFullNum_2: TIntegerField
      FieldName = 'Num_2'
      ReadOnly = True
      Required = True
    end
    object QSerFullBillNum_1: TWideStringField
      FieldName = 'BillNum_1'
      ReadOnly = True
      Size = 30
    end
    object QSerFullnumAuto_1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto_1'
      ReadOnly = True
    end
    object QSerFullQty_2: TFloatField
      FieldName = 'Qty_2'
      ReadOnly = True
    end
    object QSerFullUnit: TSmallintField
      FieldName = 'Unit'
      ReadOnly = True
    end
    object QSerFullNumAutoS: TIntegerField
      FieldName = 'NumAutoS'
      ReadOnly = True
    end
    object QSerFullshipType: TSmallintField
      FieldName = 'shipType'
      ReadOnly = True
    end
    object QSerFullshipMet: TSmallintField
      FieldName = 'shipMet'
      ReadOnly = True
    end
    object QSerFullLever: TSmallintField
      FieldName = 'Lever'
      ReadOnly = True
    end
  end
  object VVldHk: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loed`'
      '  (`LNum`, `Auto`, `BillNum`)'
      'VALUES'
      '  (:`LNum`, :`Auto`, :`BillNum`)')
    SQLDelete.Strings = (
      'DELETE FROM `loed`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLUpdate.Strings = (
      'UPDATE `loed`'
      'SET'
      '  `LNum` = :`LNum`, `Auto` = :`Auto`, `BillNum` = :`BillNum`'
      'WHERE'
      '  `Auto` = :`Old_Auto`')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  `Auto` = :`Old_Auto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `LNum`, `Auto`, `BillNum` FROM `loed`'
      'WHERE'
      '  `Auto` = :`Auto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'CALL VldHk(:VNumT, :VBnum)')
    Left = 400
    Top = 550
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VBnum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VldHk'
    object VVldHkLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object VVldHkBillNum: TIntegerField
      FieldName = 'BillNum'
    end
    object VVldHkAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
  end
  object UpdAccDetQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'update accdet set listtype= :ListType where accnum= :ListNum')
    Left = 470
    Top = 10
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'ListType'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'ListNum'
        ParamType = ptInput
        Value = nil
      end>
  end
  object frSAccDet: TfrxDBDataset
    UserName = 'frSAccDet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccNum=AccNum'
      'AccType=AccType'
      'AccValue=AccValue'
      'AccTotal=AccTotal'
      'TypeNm=TypeNm')
    DataSet = SAccDet
    BCDToCurrency = False
    Left = 440
    Top = 830
  end
  object SAccDet: TUniTable
    TableName = 'AccDet'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 440
    Top = 760
    object SAccDetAccNum: TIntegerField
      FieldName = 'AccNum'
    end
    object SAccDetAccType: TSmallintField
      FieldName = 'AccType'
    end
    object SAccDetAccValue: TFloatField
      FieldName = 'AccValue'
    end
    object SAccDetAccTotal: TFloatField
      FieldName = 'AccTotal'
    end
    object SAccDetTypeNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = Income
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object SAccDetListType: TSmallintField
      FieldName = 'ListType'
    end
    object SAccDetEnter: TIntegerField
      FieldName = 'Enter'
    end
    object SAccDetExit: TIntegerField
      FieldName = 'Exit'
    end
    object SAccDetNum: TWideStringField
      FieldName = 'Num'
    end
    object SAccDetFromDate: TDateField
      FieldName = 'FromDate'
    end
    object SAccDetToDate: TDateField
      FieldName = 'ToDate'
    end
    object SAccDetNasb: TFloatField
      FieldName = 'Nasb'
    end
  end
  object Vaccdet: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `accdet`'
      
        '  (`AccNum`, `AutoNm`, `ListType`, `AccType`, `AccValue`, `AccTo' +
        'tal`, `Enter`, `Exit`, `Num`, `FromDate`, `ToDate`, `Nasb`)'
      'VALUES'
      
        '  (:`AccNum`, :`AutoNm`, :`ListType`, :`AccType`, :`AccValue`, :' +
        '`AccTotal`, :`Enter`, :`Exit`, :`Num`, :`FromDate`, :`ToDate`, :' +
        '`Nasb`)')
    SQLDelete.Strings = (
      'DELETE FROM `accdet`'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`')
    SQLUpdate.Strings = (
      'UPDATE `accdet`'
      'SET'
      
        '  `AccNum` = :`AccNum`, `AutoNm` = :`AutoNm`, `ListType` = :`Lis' +
        'tType`, `AccType` = :`AccType`, `AccValue` = :`AccValue`, `AccTo' +
        'tal` = :`AccTotal`, `Enter` = :`Enter`, `Exit` = :`Exit`, `Num` ' +
        '= :`Num`, `FromDate` = :`FromDate`, `ToDate` = :`ToDate`, `Nasb`' +
        ' = :`Nasb`'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`')
    SQLLock.Strings = (
      'SELECT * FROM accdet'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccNum`, `AutoNm`, `ListType`, `AccType`, `AccValue`, `A' +
        'ccTotal`, `Enter`, `Exit`, `Num`, `FromDate`, `ToDate`, `Nasb` F' +
        'ROM `accdet`'
      'WHERE'
      '  `AutoNm` = :`AutoNm`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accdet')
    Connection = DB1
    SQL.Strings = (
      'CALL Vaccdet(:VNum, :Vtype)')
    Left = 400
    Top = 380
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'Vaccdet'
    object VaccdetAccNum: TIntegerField
      FieldName = 'AccNum'
    end
    object VaccdetAutoNm: TIntegerField
      FieldName = 'AutoNm'
    end
    object VaccdetListType: TSmallintField
      FieldName = 'ListType'
    end
    object VaccdetAccType: TSmallintField
      FieldName = 'AccType'
    end
    object VaccdetAccValue: TFloatField
      FieldName = 'AccValue'
    end
    object VaccdetAccTotal: TFloatField
      FieldName = 'AccTotal'
    end
    object VaccdetEnter: TIntegerField
      FieldName = 'Enter'
    end
    object VaccdetExit: TIntegerField
      FieldName = 'Exit'
    end
    object VaccdetNum: TWideStringField
      FieldName = 'Num'
    end
    object VaccdetFromDate: TDateField
      FieldName = 'FromDate'
    end
    object VaccdetToDate: TDateField
      FieldName = 'ToDate'
    end
    object VaccdetNasb: TFloatField
      FieldName = 'Nasb'
    end
  end
  object QDuserEnter: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT COUNT(acclist.ListNum) AS Count_ListNum,'
      '       acclist.ListDate,'
      '       acclist.User'
      'FROM porte.acclist acclist'
      'WHERE (acclist.ListDate BETWEEN :FromDate'
      '                            AND :ToDate)'
      'GROUP BY acclist.User'
      'ORDER BY 1 DESC')
    Left = 1050
    Top = 340
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object QDuserEnterCount_ListNum: TLargeintField
      FieldName = 'Count_ListNum'
      ReadOnly = True
      Required = True
    end
    object QDuserEnterListDate: TDateField
      FieldName = 'ListDate'
    end
    object QDuserEnterUserNm: TStringField
      FieldKind = fkLookup
      FieldName = 'UserNm'
      LookupDataSet = SPerm
      LookupKeyFields = 'UserNum'
      LookupResultField = 'UserName'
      KeyFields = 'User'
      Size = 100
      Lookup = True
    end
    object QDuserEnterUser: TIntegerField
      FieldName = 'User'
    end
  end
  object RQDuserEnter: TfrxDBDataset
    UserName = 'RQDuserEnter'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Count_ListNum=Count_ListNum'
      'ListDate=ListDate'
      'UserNm=UserNm'
      'User=User')
    DataSet = QDuserEnter
    BCDToCurrency = False
    Left = 1140
    Top = 340
  end
  object FRQDuserEnter: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41389.665630243100000000
    ReportOptions.LastChange = 42437.485427106500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure frxDBDataset1RsedOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        'if (<FrEradQ."acctype">=7) or(<FrEradQ."acctype">=15)or(<FrEradQ' +
        '."acctype">=16)'
      
        'or(<FrEradQ."acctype">=17)or(<FrEradQ."acctype">=18)or(<FrEradQ.' +
        '"acctype">=19)'
      
        'or(<FrEradQ."acctype">=20)or(<FrEradQ."acctype">=22)or(<FrEradQ.' +
        '"acctype">=38)then'
      '       MasterData1.visible:=False  '
      'else'
      '       MasterData1.visible:=True;          '
      '  '
      'if <FQSumA."SUM(D.AccTotal)"> <>0 then'
      '         masterdata1.visible:=True      '
      '  else'
      '         masterdata1.visible:=False;                  '
      '    '
      '{  if <FrEradQ."sum(accdet.acctotal)"> > 0 then'
      '         masterdata1.visible:=True      '
      '  else'
      '         masterdata1.visible:=False;}                    '
      '  '
      '    '
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReport1OnReportPrint'
    Left = 1050
    Top = 410
    Datasets = <
      item
        DataSet = Dmd2Fm.FQSumA
        DataSetName = 'FQSumA'
      end
      item
        DataSet = Dmd2Fm.FrCeadeQ
        DataSetName = 'FrCeadeQ'
      end
      item
        DataSet = Dmd2Fm.FrEradQ
        DataSetName = 'FrEradQ'
      end
      item
        DataSet = Frinfo
        DataSetName = 'Frinfo'
      end
      item
        DataSet = Dmd2Fm.FrQDdle
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' my'
        Value = Null
      end
      item
        Name = 'sumstamp'
        Value = Null
      end
      item
        Name = 'SumNet'
        Value = Null
      end
      item
        Name = 'address'
        Value = Null
      end
      item
        Name = 'DayName'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 162.519790000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 228.661565000000000000
          Top = 83.252010000000000000
          Width = 260.787570000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[address]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 7.338590000000000000
          Width = 215.433210000000000000
          Height = 37.795300000000000000
          AutoWidth = True
          DataSet = Frinfo
          DataSetName = 'Frinfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Monotype Koufi'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1605#1606#1591#1602#1577' '#1575#1604#1581#1585#1577' '#1576#1605#1589#1585#1575#1578#1577)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 44.133890000000000000
          Width = 215.433210000000000000
          Height = 37.795300000000000000
          AutoWidth = True
          DataSet = Frinfo
          DataSetName = 'Frinfo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Monotype Koufi'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1573#1583#1575#1585#1577' '#1575#1604#1605#1575#1604#1610#1577' / '#1602#1587#1605' '#1575#1604#1573#1610#1585#1575#1583#1575#1578)
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Top = 125.165430000000000000
          Width = 154.960730000000000000
          Height = 30.236240000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy/mm/dd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1578#1575#1585#1610#1582' '#1575#1604#1591#1576#1575#1593#1577' : [Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 311.811225000000000000
          Top = 125.165430000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = 'yyyy/mm/dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DayName]')
          ParentFont = False
          RTLReading = True
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = Dmd2Fm.FQSumA
        DataSetName = 'FQSumA'
        RowCount = 0
        object frxDBDataset1nameDlel: TfrxMemoView
          AllowVectorExport = True
          Left = 252.228510000000000000
          Width = 362.834880000000000000
          Height = 22.677165350000000000
          DataField = 'AccNm'
          DataSet = Dmd2Fm.FQSumA
          DataSetName = 'FQSumA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FQSumA."AccNm"]')
          ParentFont = False
        end
        object frxDBDataset1Rsed: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 173.858380000000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'frxDBDataset1RsedOnBeforePrint'
          DataField = 'SUM(D.AccTotal)'
          DataSet = Dmd2Fm.FQSumA
          DataSetName = 'FQSumA'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FQSumA."SUM(D.AccTotal)"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          AllowVectorExport = True
          Left = 617.063390000000000000
          Width = 56.692950000000000000
          Height = 22.677165354330700000
          DataSet = Dmd2Fm.FQSumA
          DataSetName = 'FQSumA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 41.574830000000000000
          Width = 162.519790000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1573#1610#1585#1575#1583#1575#1578
            '...........................')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 41.574830000000000000
          Width = 162.519790000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1605#1585#1575#1580#1593#1577
            '...........................')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 252.228510000000000000
          Top = 2.000000000000000000
          Width = 362.834880000000000000
          Height = 22.677180000000000000
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1576#1610#1575#1606)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 2.000000000000000000
          Width = 173.858380000000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'frxDBDataset1RsedOnBeforePrint'
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            #1575#1604#1573#1580#1605#1575#1604#1610)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 617.063390000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #1578)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 252.228510000000000000
          Top = 7.000000000000000000
          Width = 419.527830000000000000
          Height = 22.677165350000000000
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1573#1580#1605#1575#1604#1610' '#1575#1604#1580#1586#1574#1610)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 7.000000000000000000
          Width = 173.858380000000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'frxDBDataset1RsedOnBeforePrint'
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<FQSumA."SUM(D.AccTotal)">)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 252.228510000000000000
          Top = 30.236240000000000000
          Width = 419.527830000000000000
          Height = 22.677165354330700000
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #1573#1580#1605#1575#1604#1610' '#1575#1604#1583#1605#1594#1577)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 30.236240000000000000
          Width = 173.858380000000000000
          Height = 22.677165350000000000
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[sumstamp]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 252.228510000000000000
          Top = 54.692950000000000000
          Width = 419.527830000000000000
          Height = 22.677165354330700000
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #1575#1604#1573#1580#1605#1575#1604#1610' '#1575#1604#1603#1604#1610)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 54.692950000000000000
          Width = 173.858380000000000000
          Height = 22.677165350000000000
          DataSet = Dmd2Fm.FrEradQ
          DataSetName = 'FrEradQ'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<FQSumA."SUM(D.AccTotal)">,MasterData1)+<sumstamp>]')
          ParentFont = False
        end
      end
    end
  end
  object VNStamp: TUniStoredProc
    StoredProcName = 'NStamp'
    SQL.Strings = (
      'CALL NStamp(:VNum, :VT, :VS)')
    Connection = DB1
    Left = 530
    Top = 900
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'VS'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'NStamp'
  end
  object FRVDateHrak: TfrxDBDataset
    UserName = 'FRVDateHrak'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Num=Num'
      'TransNUm=TransNUm'
      'TransType=TransType'
      'ArriveDate=ArriveDate'
      'EmptyPort=EmptyPort'
      'SideWalk=SideWalk'
      'Agent=Agent'
      'ListDate=ListDate'
      'EndDate=EndDate'
      'RofR=RofR'
      'Taghez=Taghez'
      'longOf1=longOf1'
      'MixedF=MixedF'
      'ShipType=ShipType'
      'ShipMet=ShipMet'
      'carsTfF=carsTfF'
      'ShipNm=ShipNm'
      'AgentNm=AgentNm'
      'MetNm=MetNm'
      'MixedNm=MixedNm'
      'ShipTypeNm=ShipTypeNm'
      'Byan_type=Byan_type')
    DataSet = VDateHrak
    BCDToCurrency = False
    Left = 326
    Top = 90
  end
  object VDateHrak: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loadlist`'
      
        '  (`Num`, `TransNUm`, `TransType`, `ArriveDate`, `EmptyPort`, `S' +
        'ideWalk`, `Agent`, `ListDate`, `EndDate`, `RofR`, `Taghez`, `lon' +
        'gOf1`, `MixedF`, `ShipType`, `ShipMet`, `carsTfF`, `Byan_type`)'
      'VALUES'
      
        '  (:`Num`, :`TransNUm`, :`TransType`, :`ArriveDate`, :`EmptyPort' +
        '`, :`SideWalk`, :`Agent`, :`ListDate`, :`EndDate`, :`RofR`, :`Ta' +
        'ghez`, :`longOf1`, :`MixedF`, :`ShipType`, :`ShipMet`, :`carsTfF' +
        '`, :`Byan_type`)')
    SQLDelete.Strings = (
      'DELETE FROM `loadlist`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLUpdate.Strings = (
      'UPDATE `loadlist`'
      'SET'
      
        '  `Num` = :`Num`, `TransNUm` = :`TransNUm`, `TransType` = :`Tran' +
        'sType`, `ArriveDate` = :`ArriveDate`, `EmptyPort` = :`EmptyPort`' +
        ', `SideWalk` = :`SideWalk`, `Agent` = :`Agent`, `ListDate` = :`L' +
        'istDate`, `EndDate` = :`EndDate`, `RofR` = :`RofR`, `Taghez` = :' +
        '`Taghez`, `longOf1` = :`longOf1`, `MixedF` = :`MixedF`, `ShipTyp' +
        'e` = :`ShipType`, `ShipMet` = :`ShipMet`, `carsTfF` = :`carsTfF`' +
        ', `Byan_type` = :`Byan_type`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLLock.Strings = (
      'SELECT * FROM loadlist'
      'WHERE'
      '  `Num` = :`Old_Num`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Num`, `TransNUm`, `TransType`, `ArriveDate`, `EmptyPort`' +
        ', `SideWalk`, `Agent`, `ListDate`, `EndDate`, `RofR`, `Taghez`, ' +
        '`longOf1`, `MixedF`, `ShipType`, `ShipMet`, `carsTfF`, `Byan_typ' +
        'e` FROM `loadlist`'
      'WHERE'
      '  `Num` = :`Num`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loadlist')
    Connection = DB1
    SQL.Strings = (
      'CALL VDateHrak2(:VDateFROM, :VDateTO, :VByan_Type)')
    IndexFieldNames = 'ArriveDate'
    Left = 240
    Top = 90
    ParamData = <
      item
        DataType = ftDate
        Name = 'VDateFROM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'VDateTO'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'VByan_Type'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDateHrak2'
    object VDateHrakNum: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585'.'#1575#1604#1585#1581#1604#1577
      FieldName = 'Num'
    end
    object VDateHrakTransNUm: TSmallintField
      FieldName = 'TransNUm'
    end
    object VDateHrakTransType: TSmallintField
      FieldName = 'TransType'
    end
    object VDateHrakArriveDate: TDateField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1604#1608#1589#1608#1604
      FieldName = 'ArriveDate'
    end
    object VDateHrakEmptyPort: TSmallintField
      FieldName = 'EmptyPort'
    end
    object VDateHrakSideWalk: TSmallintField
      FieldName = 'SideWalk'
    end
    object VDateHrakAgent: TSmallintField
      FieldName = 'Agent'
    end
    object VDateHrakListDate: TDateField
      FieldName = 'ListDate'
    end
    object VDateHrakEndDate: TDateField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'EndDate'
    end
    object VDateHrakRofR: TSmallintField
      FieldName = 'RofR'
    end
    object VDateHrakTaghez: TSmallintField
      FieldName = 'Taghez'
      Required = True
    end
    object VDateHraklongOf1: TSmallintField
      FieldName = 'longOf1'
    end
    object VDateHrakMixedF: TSmallintField
      FieldName = 'MixedF'
    end
    object VDateHrakShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object VDateHrakShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object VDateHrakcarsTfF: TSmallintField
      FieldName = 'carsTfF'
      Required = True
    end
    object VloadlistQShipNm: TStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldKind = fkLookup
      FieldName = 'ShipNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'TransNUm'
      Size = 100
      Lookup = True
    end
    object VloadlistQAgentNm: TStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      FieldKind = fkLookup
      FieldName = 'AgentNm'
      LookupDataSet = Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agent'
      Size = 100
      Lookup = True
    end
    object VDateHrakMixedNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'MixedNm'
      Size = 8
      Calculated = True
    end
    object VloadlistQShipTypeNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipTypeNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'ShipType'
      Lookup = True
    end
    object VDateHrakByan_type: TSmallintField
      FieldName = 'Byan_type'
    end
    object VDateHrakMetNm: TWideStringField
      FieldName = 'MetNm'
      ReadOnly = True
      Size = 5
    end
  end
  object DVDateHrak: TUniDataSource
    DataSet = VDateHrak
    Left = 386
    Top = 90
  end
  object VUnitAccList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `accunit`'
      
        '  (`NumAuto`, `NumAlist`, `NumUnit`, `QtityNormal`, `QtitoyRor`,' +
        ' `NMIncome`, `ValNormal`, `ValRoro`, `FwozQ`, `FwozV`, `LanerQ`,' +
        ' `LanerV`, `RofaQ`, `RofaV`, `NRofaQ`, `NRofaV`, `Ejmale`, `AddC' +
        'ount`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumAlist`, :`NumUnit`, :`QtityNormal`, :`Qtitoy' +
        'Ror`, :`NMIncome`, :`ValNormal`, :`ValRoro`, :`FwozQ`, :`FwozV`,' +
        ' :`LanerQ`, :`LanerV`, :`RofaQ`, :`RofaV`, :`NRofaQ`, :`NRofaV`,' +
        ' :`Ejmale`, :`AddCount`)')
    SQLDelete.Strings = (
      'DELETE FROM `accunit`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `accunit`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumAlist` = :`NumAlist`, `NumUnit` = ' +
        ':`NumUnit`, `QtityNormal` = :`QtityNormal`, `QtitoyRor` = :`Qtit' +
        'oyRor`, `NMIncome` = :`NMIncome`, `ValNormal` = :`ValNormal`, `V' +
        'alRoro` = :`ValRoro`, `FwozQ` = :`FwozQ`, `FwozV` = :`FwozV`, `L' +
        'anerQ` = :`LanerQ`, `LanerV` = :`LanerV`, `RofaQ` = :`RofaQ`, `R' +
        'ofaV` = :`RofaV`, `NRofaQ` = :`NRofaQ`, `NRofaV` = :`NRofaV`, `E' +
        'jmale` = :`Ejmale`, `AddCount` = :`AddCount`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT * FROM accunit'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumAlist`, `NumUnit`, `QtityNormal`, `QtitoyR' +
        'or`, `NMIncome`, `ValNormal`, `ValRoro`, `FwozQ`, `FwozV`, `Lane' +
        'rQ`, `LanerV`, `RofaQ`, `RofaV`, `NRofaQ`, `NRofaV`, `Ejmale`, `' +
        'AddCount` FROM `accunit`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accunit')
    Connection = DB1
    SQL.Strings = (
      'CALL VUnitAccList(:VNum)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 170
    Top = 530
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VUnitAccList'
    object VUnitAccListNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VUnitAccListNumAlist: TIntegerField
      FieldName = 'NumAlist'
    end
    object VUnitAccListNumUnit: TSmallintField
      FieldName = 'NumUnit'
    end
    object VUnitAccListQtityNormal: TFloatField
      DisplayLabel = #1593#1575#1583#1610#1577' '#1601#1610#1608#1587
      FieldName = 'QtityNormal'
    end
    object VUnitAccListQtitoyRor: TFloatField
      DisplayLabel = #1593#1575#1583#1610#1577' '#1604#1575#1610#1606#1585
      FieldName = 'QtitoyRor'
    end
    object VUnitAccListNMIncome: TIntegerField
      FieldName = 'NMIncome'
    end
    object VUnitAccListValNormal: TFloatField
      FieldName = 'ValNormal'
    end
    object VUnitAccListValRoro: TFloatField
      FieldName = 'ValRoro'
    end
    object VUnitAccListUnitNm: TStringField
      DisplayLabel = #1575#1604#1606#1608#1593
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'NumUnit'
      Size = 100
      Lookup = True
    end
    object VUnitAccListFwozQ: TSmallintField
      DisplayLabel = #1585#1608#1585#1608' '#1601#1610#1608#1587
      FieldName = 'FwozQ'
    end
    object VUnitAccListFwozV: TFloatField
      FieldName = 'FwozV'
    end
    object VUnitAccListLanerQ: TSmallintField
      DisplayLabel = #1585#1608#1585#1608' '#1604#1575#1610#1606#1585
      FieldName = 'LanerQ'
    end
    object VUnitAccListLanerV: TFloatField
      FieldName = 'LanerV'
    end
    object VUnitAccListRofaQ: TSmallintField
      DisplayLabel = #1585#1608#1575#1601#1593' '#1575#1604#1605#1610#1606#1575#1569
      FieldName = 'RofaQ'
    end
    object VUnitAccListRofaV: TFloatField
      FieldName = 'RofaV'
    end
    object VUnitAccListNRofaQ: TSmallintField
      DisplayLabel = #1585#1608#1575#1601#1593' '#1575#1604#1587#1601#1610#1606#1577
      FieldName = 'NRofaQ'
    end
    object VUnitAccListNRofaV: TFloatField
      FieldName = 'NRofaV'
    end
    object VUnitAccListEjmale: TFloatField
      FieldName = 'Ejmale'
    end
    object VUnitAccListAddCount: TFloatField
      DisplayLabel = #1575#1604#1573#1580#1605#1575#1604#1610
      FieldName = 'AddCount'
    end
  end
  object QTajmieData: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT load2.TypeNm,'
      '       COUNT(load2.TypeNm) AS typeHowa1,'
      '       sum('
      '          CASE (admdet2.shipType = 1 AND admdet2.shipMet = 1)'
      
        '             WHEN 1 THEN (admdet2.shipType = 1 AND admdet2.shipM' +
        'et = 1)'
      '             ELSE 0'
      '          END)'
      '          AS EadiatFyus,'
      '       sum('
      '          CASE (admdet2.shipType = 1 AND admdet2.shipMet = 0)'
      
        '             WHEN 1 THEN (admdet2.shipType = 1 AND admdet2.shipM' +
        'et = 0)'
      '             ELSE 0'
      '          END)'
      '          AS EadiatLaynar,'
      '       sum('
      '          CASE (admdet2.shipType = 2 AND admdet2.shipMet = 1)'
      
        '             WHEN 1 THEN (admdet2.shipType = 2 AND admdet2.shipM' +
        'et = 1)'
      '             ELSE 0'
      '          END)'
      '          AS RuruFyus,'
      '       sum('
      '          CASE (admdet2.shipType = 2 AND admdet2.shipMet = 0)'
      
        '             WHEN 1 THEN (admdet2.shipType = 2 AND admdet2.shipM' +
        'et = 0)'
      '             ELSE 0'
      '          END)'
      '          AS RuruLaynar,'
      
        '       SUM(CASE admdet2.Lever = 1 WHEN 1 THEN admdet2.Lever = 1 ' +
        'ELSE 0 END)'
      '          AS SLever,'
      
        '       SUM(CASE admdet2.Lever = 2 WHEN 1 THEN admdet2.Lever = 2 ' +
        'ELSE 0 END)'
      '          AS BLever,'
      '       units.UName'
      'FROM (porte.load2    load2'
      
        '      INNER JOIN porte.units units ON (load2.TypeNm = units.Num)' +
        ')'
      '     RIGHT OUTER JOIN porte.admdet2 admdet2'
      '        ON (load2.numAuto = admdet2.Num)'
      'WHERE (load2.Num = :LNum AND load2.Lnum = :Auto)'
      'GROUP BY load2.TypeNm')
    Left = 1046
    Top = 550
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Auto'
        ParamType = ptInput
        Value = nil
      end>
    object QTajmieDataTypeNm: TSmallintField
      FieldName = 'TypeNm'
    end
    object QTajmieDatatypeHowa1: TLargeintField
      FieldName = 'typeHowa1'
      ReadOnly = True
      Required = True
    end
    object QTajmieDataSLever: TFloatField
      FieldName = 'SLever'
      ReadOnly = True
    end
    object QTajmieDataBLever: TFloatField
      FieldName = 'BLever'
      ReadOnly = True
    end
    object QTajmieDataUName: TWideStringField
      FieldName = 'UName'
      ReadOnly = True
      Size = 50
    end
    object QTajmieDataEadiatFyus: TFloatField
      FieldName = 'EadiatFyus'
      ReadOnly = True
    end
    object QTajmieDataEadiatLaynar: TFloatField
      FieldName = 'EadiatLaynar'
      ReadOnly = True
    end
    object QTajmieDataRuruFyus: TFloatField
      FieldName = 'RuruFyus'
      ReadOnly = True
    end
    object QTajmieDataRuruLaynar: TFloatField
      FieldName = 'RuruLaynar'
      ReadOnly = True
    end
  end
  object QLTajmieData: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT        sum('
      '          CASE (admdet2.shipType = 1 AND admdet2.shipMet = 1)'
      
        '             WHEN 1 THEN (admdet2.shipType = 1 AND admdet2.shipM' +
        'et = 1)'
      '             ELSE 0'
      '          END)'
      '          AS EadiatFyus,'
      '       sum('
      '          CASE (admdet2.shipType = 1 AND admdet2.shipMet = 0)'
      
        '             WHEN 1 THEN (admdet2.shipType = 1 AND admdet2.shipM' +
        'et = 0)'
      '             ELSE 0'
      '          END)'
      '          AS EadiatLaynar,'
      '       sum('
      '          CASE (admdet2.shipType = 2 AND admdet2.shipMet = 1)'
      
        '             WHEN 1 THEN (admdet2.shipType = 2 AND admdet2.shipM' +
        'et = 1)'
      '             ELSE 0'
      '          END)'
      '          AS RuruFyus,'
      '       sum('
      '          CASE (admdet2.shipType = 2 AND admdet2.shipMet = 0)'
      
        '             WHEN 1 THEN (admdet2.shipType = 2 AND admdet2.shipM' +
        'et = 0)'
      '             ELSE 0'
      '          END)'
      '          AS RuruLaynar,'
      
        '       SUM(CASE admdet2.Lever = 1 WHEN 1 THEN admdet2.Lever = 1 ' +
        'ELSE 0 END)'
      '          AS SLever,'
      
        '       SUM(CASE admdet2.Lever = 2 WHEN 1 THEN admdet2.Lever = 2 ' +
        'ELSE 0 END)'
      '          AS BLever,'
      '       units.UName,'
      '       loed.Qty'
      'FROM ((porte.load2    load2'
      
        '       CROSS JOIN porte.admdet2 admdet2 ON (load2.numAuto = admd' +
        'et2.Num))'
      '      INNER JOIN porte.loed loed'
      
        '         ON (loed.LNum = load2.Num) AND (loed.Auto = load2.Lnum)' +
        ')'
      '     INNER JOIN porte.units units ON (loed.Marks = units.Num)'
      'WHERE loed.Auto =:Num')
    Left = 1046
    Top = 620
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Num'
        ParamType = ptInput
        Value = nil
      end>
    object QLTajmieDataSLever: TFloatField
      FieldName = 'SLever'
      ReadOnly = True
    end
    object QLTajmieDataBLever: TFloatField
      FieldName = 'BLever'
      ReadOnly = True
    end
    object QLTajmieDataUName: TWideStringField
      FieldName = 'UName'
      Size = 50
    end
    object QLTajmieDataQty: TFloatField
      FieldName = 'Qty'
      ReadOnly = True
    end
    object QLTajmieDataEadiatFyus: TFloatField
      FieldName = 'EadiatFyus'
      ReadOnly = True
    end
    object QLTajmieDataEadiatLaynar: TFloatField
      FieldName = 'EadiatLaynar'
      ReadOnly = True
    end
    object QLTajmieDataRuruFyus: TFloatField
      FieldName = 'RuruFyus'
      ReadOnly = True
    end
    object QLTajmieDataRuruLaynar: TFloatField
      FieldName = 'RuruLaynar'
      ReadOnly = True
    end
  end
  object DVUnitAccList: TUniDataSource
    DataSet = VUnitAccList
    Left = 170
    Top = 600
  end
  object VBollAccList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO accbollsa'
      '  (NumAuto, Bollsa, NumLoad, NumAcc)'
      'VALUES'
      '  (:NumAuto, :Bollsa, :NumLoad, :NumAcc)')
    SQLDelete.Strings = (
      'DELETE FROM accbollsa'
      'WHERE'
      '  NumAuto = :Old_NumAuto')
    SQLUpdate.Strings = (
      'UPDATE accbollsa'
      'SET'
      
        '  NumAuto = :NumAuto, Bollsa = :Bollsa, NumLoad = :NumLoad, NumA' +
        'cc = :NumAcc'
      'WHERE'
      '  NumAuto = :Old_NumAuto')
    SQLLock.Strings = (
      'SELECT * FROM accbollsa'
      'WHERE'
      '  NumAuto = :Old_NumAuto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT NumAuto, Bollsa, NumLoad, NumAcc FROM accbollsa'
      'WHERE'
      '  NumAuto = :NumAuto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accbollsa')
    Connection = DB1
    SQL.Strings = (
      'CALL VBollAccList(:VNum)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 170
    Top = 670
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VBollAccList'
    object VBollAccListNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VBollAccListBollsa: TWideStringField
      DisplayLabel = #1575#1604#1576#1608#1604#1610#1600#1600#1600#1600#1600#1600#1600#1600#1589#1577
      FieldName = 'Bollsa'
      Size = 100
    end
    object VBollAccListNumLoad: TIntegerField
      FieldName = 'NumLoad'
    end
    object VBollAccListNumAcc: TIntegerField
      FieldName = 'NumAcc'
    end
  end
  object DVBollAccList: TUniDataSource
    DataSet = VBollAccList
    Left = 170
    Top = 740
  end
  object Sincome: TUniTable
    TableName = 'income'
    Connection = DB1
    MasterSource = DSmincome
    MasterFields = 'Mincome'
    DetailFields = 'Auto'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 770
    Top = 460
    object SincomeNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object SincomeAuto: TSmallintField
      FieldName = 'Auto'
      Required = True
    end
    object SincomeIncNum: TIntegerField
      FieldName = 'IncNum'
      Required = True
    end
    object SincomeIncName: TWideStringField
      FieldName = 'IncName'
      Size = 60
    end
    object SincomeIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object SincomeRsef: TFloatField
      FieldName = 'Rsef'
    end
    object SincomeStore: TFloatField
      FieldName = 'Store'
    end
    object SincomeDirect: TFloatField
      FieldName = 'Direct'
    end
    object SincomePerc: TFloatField
      FieldName = 'Perc'
    end
    object SincomeStatesNum: TSmallintField
      FieldName = 'StatesNum'
    end
    object SincomeElectric: TFloatField
      FieldName = 'Electric'
    end
    object SincomeTotalRsef: TFloatField
      FieldName = 'TotalRsef'
    end
    object SincomeTotalStore: TFloatField
      FieldName = 'TotalStore'
    end
    object SincomeTotalDirect: TFloatField
      FieldName = 'TotalDirect'
    end
    object SincomeLiner: TFloatField
      FieldName = 'Liner'
    end
    object SincomeTotalLiner: TFloatField
      FieldName = 'TotalLiner'
    end
    object SincomeMin: TFloatField
      FieldName = 'Min'
    end
    object SincomeTypeFator: TSmallintField
      FieldName = 'TypeFator'
    end
    object SincomeRHayaK: TFloatField
      FieldName = 'RHayaK'
    end
    object SincomeRHayaS: TFloatField
      FieldName = 'RHayaS'
    end
    object SincomeDirectState: TSmallintField
      FieldName = 'DirectState'
    end
    object SincomeMin2: TFloatField
      FieldName = 'Min2'
    end
    object SincomeSHAYAK: TFloatField
      FieldName = 'SHAYAK'
    end
    object SincomeSHAYAS: TFloatField
      FieldName = 'SHAYAS'
    end
    object SincomeMHAYAK: TFloatField
      FieldName = 'MHAYAK'
    end
    object SincomeMHAYAS: TFloatField
      FieldName = 'MHAYAS'
    end
  end
  object Smincome: TUniTable
    TableName = 'mincome'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 470
    Top = 890
    object SmincomeMincome: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Mincome'
    end
    object SmincomeShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
    object SmincomeShipMet: TSmallintField
      FieldName = 'ShipMet'
      Required = True
    end
    object SmincomeGoods: TSmallintField
      FieldName = 'Goods'
      Required = True
    end
    object SmincomeElectric: TSmallintField
      FieldName = 'Electric'
    end
    object SmincomeElecVAlue: TFloatField
      FieldName = 'ElecVAlue'
    end
    object SmincomeRemain: TSmallintField
      FieldName = 'Remain'
    end
    object SmincomeRemValue: TFloatField
      FieldName = 'RemValue'
    end
    object SmincomeW1: TFloatField
      FieldName = 'W1'
    end
    object SmincomeW2: TFloatField
      FieldName = 'W2'
    end
    object SmincomeV1: TFloatField
      FieldName = 'V1'
    end
    object SmincomeV2: TFloatField
      FieldName = 'V2'
    end
    object SmincomeNUmunit: TIntegerField
      FieldName = 'NUmunit'
    end
  end
  object DSmincome: TUniDataSource
    DataSet = Smincome
    Left = 420
    Top = 940
  end
  object VloadHrak: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO loed'
      
        '  (LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billloadi' +
        'ng, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, EfrajNum' +
        ', EfrajDate, Flag, BillNum, BillType, StoreType, Notes, selectF,' +
        ' StopF, StopWhy, EnbEdit, UserSelected, RF, TransitF)'
      'VALUES'
      
        '  (:LNum, :Auto, :Qty, :Marks, :GoodsType, :OrgPort, :Loader, :B' +
        'illloading, :Sender, :Kias, :Weight, :Send, :Goodsname, :Num, :T' +
        'fasel, :EfrajNum, :EfrajDate, :Flag, :BillNum, :BillType, :Store' +
        'Type, :Notes, :selectF, :StopF, :StopWhy, :EnbEdit, :UserSelecte' +
        'd, :RF, :TransitF)')
    SQLDelete.Strings = (
      'DELETE FROM loed'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLUpdate.Strings = (
      'UPDATE loed'
      'SET'
      
        '  LNum = :LNum, Auto = :Auto, Qty = :Qty, Marks = :Marks, GoodsT' +
        'ype = :GoodsType, OrgPort = :OrgPort, Loader = :Loader, Billload' +
        'ing = :Billloading, Sender = :Sender, Kias = :Kias, Weight = :We' +
        'ight, Send = :Send, Goodsname = :Goodsname, Num = :Num, Tfasel =' +
        ' :Tfasel, EfrajNum = :EfrajNum, EfrajDate = :EfrajDate, Flag = :' +
        'Flag, BillNum = :BillNum, BillType = :BillType, StoreType = :Sto' +
        'reType, Notes = :Notes, selectF = :selectF, StopF = :StopF, Stop' +
        'Why = :StopWhy, EnbEdit = :EnbEdit, UserSelected = :UserSelected' +
        ', RF = :RF, TransitF = :TransitF'
      'WHERE'
      '  Auto = :Old_Auto')
    SQLLock.Strings = (
      'SELECT * FROM loed'
      'WHERE'
      '  Auto = :Old_Auto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT LNum, Auto, Qty, Marks, GoodsType, OrgPort, Loader, Billl' +
        'oading, Sender, Kias, Weight, Send, Goodsname, Num, Tfasel, Efra' +
        'jNum, EfrajDate, Flag, BillNum, BillType, StoreType, Notes, sele' +
        'ctF, StopF, StopWhy, EnbEdit, UserSelected, RF, TransitF FROM lo' +
        'ed'
      'WHERE'
      '  Auto = :Auto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loed')
    Connection = DB1
    SQL.Strings = (
      'CALL VloadHrak(:VNumT)')
    BeforeEdit = VloadHrakBeforeEdit
    BeforePost = VloadHrakBeforePost
    Left = 150
    Top = 170
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNumT'
        ParamType = ptInput
        Value = nil
      end>
    object VloadHrakAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Auto'
    end
    object VloadHrakBillloading: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1576#1608#1604#1610#1589#1577
      FieldName = 'Billloading'
    end
    object VloadHrakLNum: TIntegerField
      FieldName = 'LNum'
      Required = True
    end
    object VloadHrakQty: TFloatField
      DisplayLabel = #1575#1604#1593#1583#1583
      FieldName = 'Qty'
    end
    object VloadHrakMarks: TSmallintField
      FieldName = 'Marks'
    end
    object VloadHrakGoodsType: TSmallintField
      FieldName = 'GoodsType'
    end
    object VloadHrakOrgPort: TSmallintField
      FieldName = 'OrgPort'
    end
    object VloadHrakLoader: TWideStringField
      FieldName = 'Loader'
      Size = 60
    end
    object VloadHrakSender: TSmallintField
      FieldName = 'Sender'
    end
    object VloadHrakKias: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1575#1587
      FieldName = 'Kias'
    end
    object VloadHrakWeight: TFloatField
      DisplayLabel = #1575#1604#1608#1586#1606
      FieldName = 'Weight'
    end
    object VloadHrakSend: TWideStringField
      DisplayLabel = #1575#1604#1605#1585#1587#1604#1577' '#1573#1604#1610#1607
      FieldName = 'Send'
      Size = 100
    end
    object VloadHrakGoodsname: TWideStringField
      DisplayLabel = #1608#1589#1601' '#1575#1604#1576#1590#1575#1593#1577
      FieldName = 'Goodsname'
      Size = 500
    end
    object VloadHrakTfasel: TSmallintField
      FieldName = 'Tfasel'
    end
    object VloadHrakEfrajNum: TWideStringField
      DisplayLabel = #1575#1604#1575#1601#1585#1575#1580
      FieldName = 'EfrajNum'
      Size = 30
    end
    object VloadHrakEfrajDate: TDateField
      FieldName = 'EfrajDate'
    end
    object VloadHrakFlag: TSmallintField
      FieldName = 'Flag'
    end
    object VloadHrakBillNum: TIntegerField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1601#1575#1578#1608#1585#1577
      FieldName = 'BillNum'
    end
    object VloadHrakBillType: TSmallintField
      FieldName = 'BillType'
    end
    object VloadHrakStoreType: TSmallintField
      FieldName = 'StoreType'
    end
    object VloadHrakNotes: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      FieldName = 'Notes'
      Size = 100
    end
    object VloadHrakselectF: TSmallintField
      FieldName = 'selectF'
      Required = True
    end
    object VloadHrakStopF: TSmallintField
      FieldName = 'StopF'
    end
    object VloadHrakStopWhy: TWideStringField
      FieldName = 'StopWhy'
      Size = 60
    end
    object VloadHrakMarkNm: TWideStringField
      DisplayLabel = #1575#1604#1593#1604#1575#1605#1575#1578
      FieldKind = fkLookup
      FieldName = 'MarkNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Marks'
      Size = 30
      Lookup = True
    end
    object VloadHrakStoreTypeNm: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1578#1582#1586#1610#1606
      FieldKind = fkLookup
      FieldName = 'StoreTypeNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'StoreType'
      Size = 30
      Lookup = True
    end
    object VloadHrakEnbEdit: TSmallintField
      FieldName = 'EnbEdit'
    end
    object VloadHrakNum: TWideStringField
      FieldName = 'Num'
    end
    object VloadHrakUserSelected: TSmallintField
      FieldName = 'UserSelected'
    end
    object VloadHrakRF: TSmallintField
      FieldName = 'RF'
    end
    object VloadHrakTransitF: TSmallintField
      FieldName = 'TransitF'
    end
  end
  object ListAll123: TUniTable
    TableName = 'listall'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 390
    Top = 230
    object ListAll123AccType: TSmallintField
      FieldName = 'AccType'
    end
    object ListAll123ListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object ListAll123ListType: TSmallintField
      FieldName = 'ListType'
    end
    object ListAll123ListDate: TDateField
      FieldName = 'ListDate'
    end
    object ListAll123ToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object ListAll123Total: TFloatField
      FieldName = 'Total'
    end
    object ListAll123Stamp: TFloatField
      FieldName = 'Stamp'
    end
    object ListAll123Net: TFloatField
      FieldName = 'Net'
    end
    object ListAll123AccValue: TFloatField
      FieldName = 'AccValue'
    end
    object ListAll123AccNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object ListAll123SupNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'SupNm'
      Size = 10
      Calculated = True
    end
    object ListAll123AccTotal: TFloatField
      FieldName = 'AccTotal'
    end
    object ListAll123Met: TSmallintField
      FieldName = 'Met'
    end
    object ListAll123NumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
  end
  object mincomes: TUniTable
    TableName = 'mincomes'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterInsert = mincomesAfterInsert
    BeforeDelete = mincomesBeforeDelete
    OnCalcFields = mincomesCalcFields
    Left = 920
    Top = 820
    object mincomesShipTypeNm: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1575#1582#1585#1577
      FieldKind = fkCalculated
      FieldName = 'ShipTypeNm'
      Calculated = True
    end
    object mincomesMetNm: TStringField
      DisplayLabel = #1591#1585#1610#1602#1577' '#1575#1604#1578#1587#1604#1610#1605
      FieldKind = fkCalculated
      FieldName = 'MetNm'
      Calculated = True
    end
    object mincomesUnitNm: TStringField
      DisplayLabel = #1578#1589#1606#1610#1601
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'NUmunit'
      Size = 120
      Lookup = True
    end
    object mincomesIncType: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkCalculated
      FieldName = 'IncType'
      Size = 50
      Calculated = True
    end
    object mincomesMinCome: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MinCome'
    end
    object mincomesShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
    object mincomesShipMet: TSmallintField
      FieldName = 'ShipMet'
      Required = True
    end
    object mincomesGoods: TSmallintField
      FieldName = 'Goods'
      Required = True
    end
    object mincomesElectric: TSmallintField
      FieldName = 'Electric'
    end
    object mincomesElecVAue: TFloatField
      FieldName = 'ElecVAue'
    end
    object mincomesRemain: TSmallintField
      FieldName = 'Remain'
    end
    object mincomesRemValue: TFloatField
      FieldName = 'RemValue'
    end
    object mincomesW1: TFloatField
      FieldName = 'W1'
    end
    object mincomesW2: TFloatField
      FieldName = 'W2'
    end
    object mincomesV1: TFloatField
      FieldName = 'V1'
    end
    object mincomesV2: TFloatField
      FieldName = 'V2'
    end
    object mincomesNUmunit: TIntegerField
      FieldName = 'NUmunit'
    end
  end
  object mincomek: TUniTable
    TableName = 'mincomek'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterInsert = mincomekAfterInsert
    BeforeDelete = mincomekBeforeDelete
    OnCalcFields = mincomekCalcFields
    Left = 920
    Top = 890
    object mincomekMincome: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Mincome'
    end
    object mincomekShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
    object mincomekShipMet: TSmallintField
      FieldName = 'ShipMet'
      Required = True
    end
    object mincomekGoods: TSmallintField
      FieldName = 'Goods'
      Required = True
    end
    object mincomekElectric: TSmallintField
      FieldName = 'Electric'
    end
    object mincomekElecVAlue: TFloatField
      FieldName = 'ElecVAlue'
    end
    object mincomekRemain: TSmallintField
      FieldName = 'Remain'
    end
    object mincomekRemValue: TFloatField
      FieldName = 'RemValue'
    end
    object mincomekW1: TFloatField
      FieldName = 'W1'
    end
    object mincomekW2: TFloatField
      FieldName = 'W2'
    end
    object mincomekV1: TFloatField
      FieldName = 'V1'
    end
    object mincomekV2: TFloatField
      FieldName = 'V2'
    end
    object mincomekShipTypeNm: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1575#1582#1585#1577
      FieldKind = fkCalculated
      FieldName = 'ShipTypeNm'
      Calculated = True
    end
    object mincomekMetNm: TStringField
      DisplayLabel = #1591#1585#1610#1602#1577' '#1575#1604#1578#1587#1604#1610#1605
      FieldKind = fkCalculated
      FieldName = 'MetNm'
      Calculated = True
    end
    object mincomekUnitNm: TStringField
      DisplayLabel = #1578#1589#1606#1610#1601
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = services
      LookupKeyFields = 'NUmAuto'
      LookupResultField = 'NameServ'
      KeyFields = 'NUmunit'
      Size = 120
      Lookup = True
    end
    object mincomekIncType: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkCalculated
      FieldName = 'IncType'
      Size = 50
      Calculated = True
    end
    object mincomekNUmunit: TIntegerField
      FieldName = 'NUmunit'
    end
  end
  object incomek: TUniTable
    TableName = 'incomek'
    Connection = DB1
    MasterSource = Dmincomek
    MasterFields = 'Mincome'
    DetailFields = 'Auto'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'IncNum'
    Left = 920
    Top = 960
    object incomekNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object incomekAuto: TSmallintField
      FieldName = 'Auto'
      Required = True
    end
    object incomekIncNum: TIntegerField
      DisplayLabel = #1585#1602#1605
      FieldName = 'IncNum'
      Required = True
    end
    object incomekIncName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncName'
      Size = 60
    end
    object incomekIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object incomekRsef: TFloatField
      FieldName = 'Rsef'
    end
    object incomekStore: TFloatField
      FieldName = 'Store'
    end
    object incomekDirect: TFloatField
      FieldName = 'Direct'
    end
    object incomekPerc: TFloatField
      FieldName = 'Perc'
    end
    object incomekStatesNum: TSmallintField
      FieldName = 'StatesNum'
    end
    object incomekElectric: TFloatField
      FieldName = 'Electric'
    end
    object incomekTotalRsef: TFloatField
      FieldName = 'TotalRsef'
    end
    object incomekTotalStore: TFloatField
      FieldName = 'TotalStore'
    end
    object incomekTotalDirect: TFloatField
      FieldName = 'TotalDirect'
    end
    object incomekLiner: TFloatField
      FieldName = 'Liner'
    end
    object incomekTotalLiner: TFloatField
      FieldName = 'TotalLiner'
    end
    object incomekMin: TFloatField
      FieldName = 'Min'
    end
    object incomekTypeFator: TSmallintField
      FieldName = 'TypeFator'
    end
    object incomekRHayaK: TFloatField
      FieldName = 'RHayaK'
    end
    object incomekRHayaS: TFloatField
      FieldName = 'RHayaS'
    end
    object incomekDirectState: TSmallintField
      FieldName = 'DirectState'
    end
    object incomekMin2: TFloatField
      FieldName = 'Min2'
    end
    object incomekSHAYAK: TFloatField
      FieldName = 'SHAYAK'
    end
    object incomekSHAYAS: TFloatField
      FieldName = 'SHAYAS'
    end
    object incomekMHAYAK: TFloatField
      FieldName = 'MHAYAK'
    end
    object incomekMHAYAS: TFloatField
      FieldName = 'MHAYAS'
    end
  end
  object Dmincomes: TUniDataSource
    DataSet = mincomes
    Left = 1040
    Top = 820
  end
  object Dmincomek: TUniDataSource
    DataSet = mincomek
    Left = 1040
    Top = 890
  end
  object Dincomek: TUniDataSource
    DataSet = incomek
    Left = 1040
    Top = 960
  end
  object services: TUniTable
    TableName = 'services'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 420
    Top = 620
    object servicesNUmAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NUmAuto'
    end
    object servicesNameServ: TWideStringField
      DisplayLabel = #1575#1604#1582#1583#1605#1577
      FieldName = 'NameServ'
      Size = 100
    end
    object servicesNort: TWideStringField
      FieldName = 'Nort'
      Size = 250
    end
    object servicesServDou: TFloatField
      FieldName = 'ServDou'
    end
  end
  object Dservices: TUniDataSource
    DataSet = services
    Left = 460
    Top = 680
  end
  object hrakunit: TUniTable
    TableName = 'hrakunit'
    Connection = DB1
    MasterSource = Dincomek
    MasterFields = 'NumAuto'
    DetailFields = 'NumAede'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 660
    Top = 910
    object hrakunitNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object hrakunitNumAede: TIntegerField
      FieldName = 'NumAede'
    end
    object hrakunitNumUnit: TIntegerField
      FieldName = 'NumUnit'
    end
    object hrakunitAedeDubel: TFloatField
      DisplayLabel = #1575#1604#1602#1610#1605#1577
      FieldName = 'AedeDubel'
    end
    object hrakunitUnitNm: TStringField
      DisplayLabel = #1575#1604#1608#1589#1601
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'NumUnit'
      Size = 150
      Lookup = True
    end
  end
  object Dhrakunit: TUniDataSource
    DataSet = hrakunit
    Left = 740
    Top = 910
  end
  object Smincomes: TUniTable
    TableName = 'mincomes'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1130
    Top = 820
    object SmincomesMinCome: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'MinCome'
    end
    object SmincomesShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
    object SmincomesShipMet: TSmallintField
      FieldName = 'ShipMet'
      Required = True
    end
    object SmincomesGoods: TSmallintField
      FieldName = 'Goods'
      Required = True
    end
    object SmincomesElectric: TSmallintField
      FieldName = 'Electric'
    end
    object SmincomesElecVAue: TFloatField
      FieldName = 'ElecVAue'
    end
    object SmincomesRemain: TSmallintField
      FieldName = 'Remain'
    end
    object SmincomesRemValue: TFloatField
      FieldName = 'RemValue'
    end
    object SmincomesW1: TFloatField
      FieldName = 'W1'
    end
    object SmincomesW2: TFloatField
      FieldName = 'W2'
    end
    object SmincomesV1: TFloatField
      FieldName = 'V1'
    end
    object SmincomesV2: TFloatField
      FieldName = 'V2'
    end
    object SmincomesNUmunit: TIntegerField
      FieldName = 'NUmunit'
    end
  end
  object SIIncome: TUniTable
    TableName = 'IIncome'
    Connection = DB1
    MasterSource = DSmincomes
    MasterFields = 'MinCome'
    DetailFields = 'Auto'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1130
    Top = 750
    object SIIncomeNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object SIIncomeAuto: TSmallintField
      FieldName = 'Auto'
      Required = True
    end
    object SIIncomeIncNum: TIntegerField
      FieldName = 'IncNum'
      Required = True
    end
    object SIIncomeIncName: TWideStringField
      FieldName = 'IncName'
      Size = 60
    end
    object SIIncomeIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object SIIncomeRsef: TFloatField
      FieldName = 'Rsef'
    end
    object SIIncomeStore: TFloatField
      FieldName = 'Store'
    end
    object SIIncomeDirect: TFloatField
      FieldName = 'Direct'
    end
    object SIIncomePerc: TFloatField
      FieldName = 'Perc'
    end
    object SIIncomeStatesNum: TSmallintField
      FieldName = 'StatesNum'
    end
    object SIIncomeElectric: TFloatField
      FieldName = 'Electric'
    end
    object SIIncomeTotalRsef: TFloatField
      FieldName = 'TotalRsef'
    end
    object SIIncomeTotalStore: TFloatField
      FieldName = 'TotalStore'
    end
    object SIIncomeTotalDirect: TFloatField
      FieldName = 'TotalDirect'
    end
    object SIIncomeLiner: TFloatField
      FieldName = 'Liner'
    end
    object SIIncomeTotalLiner: TFloatField
      FieldName = 'TotalLiner'
    end
    object SIIncomeTypeFator: TSmallintField
      FieldName = 'TypeFator'
    end
    object SIIncomeRHayaK: TFloatField
      FieldName = 'RHayaK'
    end
    object SIIncomeRHayaS: TFloatField
      FieldName = 'RHayaS'
    end
    object SIIncomeDirectState: TSmallintField
      FieldName = 'DirectState'
    end
    object SIIncomeSHAYAK: TFloatField
      FieldName = 'SHAYAK'
    end
    object SIIncomeSHAYAS: TFloatField
      FieldName = 'SHAYAS'
    end
    object SIIncomeMHAYAK: TFloatField
      FieldName = 'MHAYAK'
    end
    object SIIncomeMHAYAS: TFloatField
      FieldName = 'MHAYAS'
    end
    object SIIncomeMin: TFloatField
      FieldName = 'Min'
    end
    object SIIncomeMin2: TFloatField
      FieldName = 'Min2'
    end
  end
  object DSmincomes: TUniDataSource
    DataSet = Smincomes
    Left = 1130
    Top = 900
  end
  object QUnitCount: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT GROUP_CONCAT('#39'{ '#39', units.UName   , '#39'  ('#39', CAST(accunit.Ad' +
        'dCount AS INT) , '#39')'#39' ,   '#39' }'#39') as un'
      'FROM porte.accunit    accunit'
      
        '     INNER JOIN porte.units units ON (accunit.NumUnit = units.Nu' +
        'm)'
      'WHERE (accunit.NumAlist =:num)')
    Left = 1153
    Top = 520
    ParamData = <
      item
        DataType = ftInteger
        Name = 'num'
        ParamType = ptInput
        Value = nil
      end>
    object QUnitCountun: TWideMemoField
      Alignment = taRightJustify
      FieldName = 'un'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object QBoCount: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'SELECT GROUP_CONCAT('#39'('#39', accbollsa.Bollsa , '#39' )'#39') as unB'
      'FROM porte.accbollsa accbollsa'
      'WHERE (accbollsa.NumAcc =:Num)')
    Left = 1160
    Top = 610
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Num'
        ParamType = ptInput
        Value = nil
      end>
    object QBoCountunB: TWideMemoField
      FieldName = 'unB'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object RQUnitCount: TfrxDBDataset
    UserName = 'RQUnitCount'
    CloseDataSource = False
    FieldAliases.Strings = (
      'un=un')
    DataSet = QUnitCount
    BCDToCurrency = False
    Left = 1240
    Top = 520
  end
  object RQBoCount: TfrxDBDataset
    UserName = 'RQBoCount'
    CloseDataSource = False
    FieldAliases.Strings = (
      'unB=unB')
    DataSet = QBoCount
    BCDToCurrency = False
    Left = 1240
    Top = 610
  end
  object AccList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `acclist`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate`, `' +
        'EndEmpDate`, `GoodsDesc`, `GoodsQty`, `ShipBillNum`, `WeSpace`, ' +
        '`Total`, `AdmisMet`, `Stamp`, `Unit`, `BillNum`, `loukof`, `Tona' +
        'me`, `Electric`, `Remain`, `Wight`, `LocOrFor`, `Petrol`, `Dirty' +
        '`, `FTime1`, `EndTime1`, `Move1`, `FTime2`, `EndTime2`, `Move2`,' +
        ' `ShipType`, `Mezan`, `Kemawea`, `Frg`, `Tadl`, `FrgFlag`, `HjzF' +
        'lag`, `TadlFlag`, `Edafe1`, `Edafe2`, `Goodsname`, `Moveall`, `M' +
        'ovV1`, `MovV2`, `LocWitOut`, `ChechDate`, `Month`, `Cars`, `Stat' +
        'es`, `Qty2`, `Unit2`, `ElecDate`, `RemDate`, `MezDate`, `Roafe`,' +
        ' `Dama`, `TfteshCar`, `AttTo`, `Leverweight`, `Saba`, `WeeksNum`' +
        ', `States1`, `States2`, `Days`, `DaysM`, `EleeshDate`, `ReshDate' +
        '`, `DaysMM`, `Sapa`, `AutoDate`, `AginNm`, `F1Num`, `User`, `Dat' +
        'eTop`, `NumT`, `barcade`, `archiveF`, `HoursNum`, `couponIn`, `c' +
        'ouponOut`, `TelegramNum`, `PaidF`, `UnitRsom`, `Num1`, `Num2`, `' +
        'Num3`, `Num4`, `Num5`, `Num6`, `Num7`, `Num8`, `ShipMet`, `Reser' +
        've`, `FrgShip`, `Qty3`, `BillNum2`, `SubType`, `DelF`, `DelDate`' +
        ', `boat`, `AgntR`, `SharedF`, `ChemicalF`, `AlterBill`, `StampAb' +
        's`, `ListNumR`, `DailyNum`, `AttachNum`, `DisCount`, `DelWhy`, `' +
        'cutF`, `CurrntF`, `DebitF`, `CurrDate`, `DailyCurr`, `LockCurr`,' +
        ' `ClaimF`, `ClaimDate`, `ClaimNum`, `Msrahname`, `phoneMsr`, `NT' +
        'otal`, `NStamp`, `QRALL`, `loadnum`, `Billloading`, `TotalD`, `I' +
        'nvoiceD`, `NTotalD`, `NStampD`, `DollarPrice`, `Ex_Price`, `SubT' +
        'ype2`, `shared_usefork`, `To`, `ElecQty`, `RemQty`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`ShipNum`, :`ArriveDat' +
        'e`, :`EndEmpDate`, :`GoodsDesc`, :`GoodsQty`, :`ShipBillNum`, :`' +
        'WeSpace`, :`Total`, :`AdmisMet`, :`Stamp`, :`Unit`, :`BillNum`, ' +
        ':`loukof`, :`Toname`, :`Electric`, :`Remain`, :`Wight`, :`LocOrF' +
        'or`, :`Petrol`, :`Dirty`, :`FTime1`, :`EndTime1`, :`Move1`, :`FT' +
        'ime2`, :`EndTime2`, :`Move2`, :`ShipType`, :`Mezan`, :`Kemawea`,' +
        ' :`Frg`, :`Tadl`, :`FrgFlag`, :`HjzFlag`, :`TadlFlag`, :`Edafe1`' +
        ', :`Edafe2`, :`Goodsname`, :`Moveall`, :`MovV1`, :`MovV2`, :`Loc' +
        'WitOut`, :`ChechDate`, :`Month`, :`Cars`, :`States`, :`Qty2`, :`' +
        'Unit2`, :`ElecDate`, :`RemDate`, :`MezDate`, :`Roafe`, :`Dama`, ' +
        ':`TfteshCar`, :`AttTo`, :`Leverweight`, :`Saba`, :`WeeksNum`, :`' +
        'States1`, :`States2`, :`Days`, :`DaysM`, :`EleeshDate`, :`ReshDa' +
        'te`, :`DaysMM`, :`Sapa`, :`AutoDate`, :`AginNm`, :`F1Num`, :`Use' +
        'r`, :`DateTop`, :`NumT`, :`barcade`, :`archiveF`, :`HoursNum`, :' +
        '`couponIn`, :`couponOut`, :`TelegramNum`, :`PaidF`, :`UnitRsom`,' +
        ' :`Num1`, :`Num2`, :`Num3`, :`Num4`, :`Num5`, :`Num6`, :`Num7`, ' +
        ':`Num8`, :`ShipMet`, :`Reserve`, :`FrgShip`, :`Qty3`, :`BillNum2' +
        '`, :`SubType`, :`DelF`, :`DelDate`, :`boat`, :`AgntR`, :`SharedF' +
        '`, :`ChemicalF`, :`AlterBill`, :`StampAbs`, :`ListNumR`, :`Daily' +
        'Num`, :`AttachNum`, :`DisCount`, :`DelWhy`, :`cutF`, :`CurrntF`,' +
        ' :`DebitF`, :`CurrDate`, :`DailyCurr`, :`LockCurr`, :`ClaimF`, :' +
        '`ClaimDate`, :`ClaimNum`, :`Msrahname`, :`phoneMsr`, :`NTotal`, ' +
        ':`NStamp`, :`QRALL`, :`loadnum`, :`Billloading`, :`TotalD`, :`In' +
        'voiceD`, :`NTotalD`, :`NStampD`, :`DollarPrice`, :`Ex_Price`, :`' +
        'SubType2`, :`shared_usefork`, :`To`, :`ElecQty`, :`RemQty`)')
    SQLDelete.Strings = (
      'DELETE FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLUpdate.Strings = (
      'UPDATE `acclist`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `ShipNum` = :`ShipNum`, `ArriveDate` = :`ArriveDat' +
        'e`, `EndEmpDate` = :`EndEmpDate`, `GoodsDesc` = :`GoodsDesc`, `G' +
        'oodsQty` = :`GoodsQty`, `ShipBillNum` = :`ShipBillNum`, `WeSpace' +
        '` = :`WeSpace`, `Total` = :`Total`, `AdmisMet` = :`AdmisMet`, `S' +
        'tamp` = :`Stamp`, `Unit` = :`Unit`, `BillNum` = :`BillNum`, `lou' +
        'kof` = :`loukof`, `Toname` = :`Toname`, `Electric` = :`Electric`' +
        ', `Remain` = :`Remain`, `Wight` = :`Wight`, `LocOrFor` = :`LocOr' +
        'For`, `Petrol` = :`Petrol`, `Dirty` = :`Dirty`, `FTime1` = :`FTi' +
        'me1`, `EndTime1` = :`EndTime1`, `Move1` = :`Move1`, `FTime2` = :' +
        '`FTime2`, `EndTime2` = :`EndTime2`, `Move2` = :`Move2`, `ShipTyp' +
        'e` = :`ShipType`, `Mezan` = :`Mezan`, `Kemawea` = :`Kemawea`, `F' +
        'rg` = :`Frg`, `Tadl` = :`Tadl`, `FrgFlag` = :`FrgFlag`, `HjzFlag' +
        '` = :`HjzFlag`, `TadlFlag` = :`TadlFlag`, `Edafe1` = :`Edafe1`, ' +
        '`Edafe2` = :`Edafe2`, `Goodsname` = :`Goodsname`, `Moveall` = :`' +
        'Moveall`, `MovV1` = :`MovV1`, `MovV2` = :`MovV2`, `LocWitOut` = ' +
        ':`LocWitOut`, `ChechDate` = :`ChechDate`, `Month` = :`Month`, `C' +
        'ars` = :`Cars`, `States` = :`States`, `Qty2` = :`Qty2`, `Unit2` ' +
        '= :`Unit2`, `ElecDate` = :`ElecDate`, `RemDate` = :`RemDate`, `M' +
        'ezDate` = :`MezDate`, `Roafe` = :`Roafe`, `Dama` = :`Dama`, `Tft' +
        'eshCar` = :`TfteshCar`, `AttTo` = :`AttTo`, `Leverweight` = :`Le' +
        'verweight`, `Saba` = :`Saba`, `WeeksNum` = :`WeeksNum`, `States1' +
        '` = :`States1`, `States2` = :`States2`, `Days` = :`Days`, `DaysM' +
        '` = :`DaysM`, `EleeshDate` = :`EleeshDate`, `ReshDate` = :`ReshD' +
        'ate`, `DaysMM` = :`DaysMM`, `Sapa` = :`Sapa`, `AutoDate` = :`Aut' +
        'oDate`, `AginNm` = :`AginNm`, `F1Num` = :`F1Num`, `User` = :`Use' +
        'r`, `DateTop` = :`DateTop`, `NumT` = :`NumT`, `barcade` = :`barc' +
        'ade`, `archiveF` = :`archiveF`, `HoursNum` = :`HoursNum`, `coupo' +
        'nIn` = :`couponIn`, `couponOut` = :`couponOut`, `TelegramNum` = ' +
        ':`TelegramNum`, `PaidF` = :`PaidF`, `UnitRsom` = :`UnitRsom`, `N' +
        'um1` = :`Num1`, `Num2` = :`Num2`, `Num3` = :`Num3`, `Num4` = :`N' +
        'um4`, `Num5` = :`Num5`, `Num6` = :`Num6`, `Num7` = :`Num7`, `Num' +
        '8` = :`Num8`, `ShipMet` = :`ShipMet`, `Reserve` = :`Reserve`, `F' +
        'rgShip` = :`FrgShip`, `Qty3` = :`Qty3`, `BillNum2` = :`BillNum2`' +
        ', `SubType` = :`SubType`, `DelF` = :`DelF`, `DelDate` = :`DelDat' +
        'e`, `boat` = :`boat`, `AgntR` = :`AgntR`, `SharedF` = :`SharedF`' +
        ', `ChemicalF` = :`ChemicalF`, `AlterBill` = :`AlterBill`, `Stamp' +
        'Abs` = :`StampAbs`, `ListNumR` = :`ListNumR`, `DailyNum` = :`Dai' +
        'lyNum`, `AttachNum` = :`AttachNum`, `DisCount` = :`DisCount`, `D' +
        'elWhy` = :`DelWhy`, `cutF` = :`cutF`, `CurrntF` = :`CurrntF`, `D' +
        'ebitF` = :`DebitF`, `CurrDate` = :`CurrDate`, `DailyCurr` = :`Da' +
        'ilyCurr`, `LockCurr` = :`LockCurr`, `ClaimF` = :`ClaimF`, `Claim' +
        'Date` = :`ClaimDate`, `ClaimNum` = :`ClaimNum`, `Msrahname` = :`' +
        'Msrahname`, `phoneMsr` = :`phoneMsr`, `NTotal` = :`NTotal`, `NSt' +
        'amp` = :`NStamp`, `QRALL` = :`QRALL`, `loadnum` = :`loadnum`, `B' +
        'illloading` = :`Billloading`, `TotalD` = :`TotalD`, `InvoiceD` =' +
        ' :`InvoiceD`, `NTotalD` = :`NTotalD`, `NStampD` = :`NStampD`, `D' +
        'ollarPrice` = :`DollarPrice`, `Ex_Price` = :`Ex_Price`, `SubType' +
        '2` = :`SubType2`, `shared_usefork` = :`shared_usefork`, `To` = :' +
        '`To`, `ElecQty` = :`ElecQty`, `RemQty` = :`RemQty`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLLock.Strings = (
      'SELECT * FROM acclist'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `ListNum`, `ListType`, `ListDate`, `ShipNum`, `ArriveDate' +
        '`, `EndEmpDate`, `GoodsDesc`, `GoodsQty`, `ShipBillNum`, `WeSpac' +
        'e`, `Total`, `AdmisMet`, `Stamp`, `Unit`, `BillNum`, `loukof`, `' +
        'Toname`, `Electric`, `Remain`, `Wight`, `LocOrFor`, `Petrol`, `D' +
        'irty`, `FTime1`, `EndTime1`, `Move1`, `FTime2`, `EndTime2`, `Mov' +
        'e2`, `ShipType`, `Mezan`, `Kemawea`, `Frg`, `Tadl`, `FrgFlag`, `' +
        'HjzFlag`, `TadlFlag`, `Edafe1`, `Edafe2`, `Goodsname`, `Moveall`' +
        ', `MovV1`, `MovV2`, `LocWitOut`, `ChechDate`, `Month`, `Cars`, `' +
        'States`, `Qty2`, `Unit2`, `ElecDate`, `RemDate`, `MezDate`, `Roa' +
        'fe`, `Dama`, `TfteshCar`, `AttTo`, `Leverweight`, `Saba`, `Weeks' +
        'Num`, `States1`, `States2`, `Days`, `DaysM`, `EleeshDate`, `Resh' +
        'Date`, `DaysMM`, `Sapa`, `AutoDate`, `AginNm`, `F1Num`, `User`, ' +
        '`DateTop`, `NumT`, `barcade`, `archiveF`, `HoursNum`, `couponIn`' +
        ', `couponOut`, `TelegramNum`, `PaidF`, `UnitRsom`, `Num1`, `Num2' +
        '`, `Num3`, `Num4`, `Num5`, `Num6`, `Num7`, `Num8`, `ShipMet`, `R' +
        'eserve`, `FrgShip`, `Qty3`, `BillNum2`, `SubType`, `DelF`, `DelD' +
        'ate`, `boat`, `AgntR`, `SharedF`, `ChemicalF`, `AlterBill`, `Sta' +
        'mpAbs`, `ListNumR`, `DailyNum`, `AttachNum`, `DisCount`, `DelWhy' +
        '`, `cutF`, `CurrntF`, `DebitF`, `CurrDate`, `DailyCurr`, `LockCu' +
        'rr`, `ClaimF`, `ClaimDate`, `ClaimNum`, `Msrahname`, `phoneMsr`,' +
        ' `NTotal`, `NStamp`, `QRALL`, `loadnum`, `Billloading`, `TotalD`' +
        ', `InvoiceD`, `NTotalD`, `NStampD`, `DollarPrice`, `Ex_Price`, `' +
        'SubType2`, `shared_usefork`, `To`, `ElecQty`, `RemQty` FROM `acc' +
        'list`'
      'WHERE'
      '  `ListNum` = :`ListNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM acclist')
    Connection = DB1
    SQL.Strings = (
      'CALL VAccList(:VNum, :Vtype)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    BeforeInsert = AccListBeforeInsert
    AfterInsert = AccListAfterInsert
    BeforeEdit = AccListBeforeEdit
    BeforePost = AccListBeforePost
    AfterPost = AccListAfterPost
    BeforeDelete = AccListBeforeDelete
    AfterDelete = AccListAfterDelete
    AfterScroll = AccListAfterScroll
    OnCalcFields = AccListCalcFields
    Left = 260
    Top = 310
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VAccList'
    object AccListListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object AccListListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object AccListListDate: TDateField
      FieldName = 'ListDate'
    end
    object AccListGoodsQty: TFloatField
      FieldName = 'GoodsQty'
    end
    object AccListShipNum: TSmallintField
      FieldName = 'ShipNum'
      OnValidate = AccListShipNumValidate
    end
    object AccListGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object AccListArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object AccListAutoDate: TDateField
      FieldName = 'AutoDate'
    end
    object AccListShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object AccListWeSpace: TFloatField
      FieldName = 'WeSpace'
    end
    object AccListGoodsNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'GoodsNm'
      LookupDataSet = GoodsTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TName'
      KeyFields = 'GoodsDesc'
      Lookup = True
    end
    object AccListTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '0,0.000'
    end
    object AccListAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object AccListEndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object AccListAdmisMetNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AdmisMetNm'
      LookupDataSet = AdmisMet
      LookupKeyFields = 'Num'
      LookupResultField = 'MetName'
      KeyFields = 'AdmisMet'
      Size = 10
      Lookup = True
    end
    object AccListTfked: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Tfked'
      Size = 100
      Calculated = True
    end
    object AccListweeks: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'weeks'
      Calculated = True
    end
    object AccListStamp: TFloatField
      FieldName = 'Stamp'
    end
    object AccListNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0,0.000'
      Calculated = True
    end
    object AccListUnit: TSmallintField
      FieldName = 'Unit'
    end
    object AccListUnitNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Unit'
      Size = 15
      Lookup = True
    end
    object AccListAllwedDate: TDateField
      FieldKind = fkCalculated
      FieldName = 'AllwedDate'
      Calculated = True
    end
    object AccListStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object AccListToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object AccListElectric: TSmallintField
      FieldName = 'Electric'
    end
    object AccListWight: TFloatField
      FieldName = 'Wight'
    end
    object AccListRemain: TSmallintField
      FieldName = 'Remain'
    end
    object AccListDaysNum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DaysNum'
      Calculated = True
    end
    object AccListLocOrFor: TWideStringField
      FieldName = 'LocOrFor'
      Size = 6
    end
    object AccListPetrol: TSmallintField
      FieldName = 'Petrol'
    end
    object AccListDirty: TSmallintField
      FieldName = 'Dirty'
    end
    object AccListFTime1: TTimeField
      FieldName = 'FTime1'
      DisplayFormat = 'HH:MM'
      EditMask = '!90:00;1;_'
    end
    object AccListEndTime1: TTimeField
      FieldName = 'EndTime1'
    end
    object AccListMove1: TSmallintField
      FieldName = 'Move1'
    end
    object AccListFTime2: TTimeField
      FieldName = 'FTime2'
    end
    object AccListEndTime2: TTimeField
      FieldName = 'EndTime2'
    end
    object AccListMove2: TSmallintField
      FieldName = 'Move2'
    end
    object AccListTime1: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Time1'
      Calculated = True
    end
    object AccListFridayNum: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'FridayNum'
      Calculated = True
    end
    object AccListRsomWeeks: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'RsomWeeks'
      Calculated = True
    end
    object AccListTime2: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'Time2'
      Calculated = True
    end
    object AccListShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object AccListHoliDay: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'HoliDay'
      Calculated = True
    end
    object AccListMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object AccListKemawea: TSmallintField
      FieldName = 'Kemawea'
    end
    object AccListFrg: TSmallintField
      FieldName = 'Frg'
    end
    object AccListTadl: TSmallintField
      FieldName = 'Tadl'
    end
    object AccListFrgFlag: TSmallintField
      FieldName = 'FrgFlag'
    end
    object AccListHjzFlag: TSmallintField
      FieldName = 'HjzFlag'
    end
    object AccListTadlFlag: TSmallintField
      FieldName = 'TadlFlag'
    end
    object AccListEdafe1: TSmallintField
      FieldName = 'Edafe1'
    end
    object AccListEdafe2: TSmallintField
      FieldName = 'Edafe2'
    end
    object AccListGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 100
    end
    object AccListF1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'F1'
      Calculated = True
    end
    object AccListF11: TFloatField
      FieldKind = fkCalculated
      FieldName = 'F11'
      Calculated = True
    end
    object AccListF2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'F2'
      Calculated = True
    end
    object AccListF22: TFloatField
      FieldKind = fkCalculated
      FieldName = 'F22'
      Calculated = True
    end
    object AccListMoveall: TSmallintField
      FieldName = 'Moveall'
    end
    object AccListMovV1: TFloatField
      FieldName = 'MovV1'
    end
    object AccListMovV2: TFloatField
      FieldName = 'MovV2'
    end
    object AccListStNum: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'StNum'
      Calculated = True
    end
    object AccListLocWitOut: TSmallintField
      FieldName = 'LocWitOut'
    end
    object AccListChechDate: TDateField
      FieldName = 'ChechDate'
    end
    object AccListCars: TSmallintField
      FieldName = 'Cars'
    end
    object AccListStates: TSmallintField
      FieldName = 'States'
    end
    object AccListUnit2Nm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Unit2Nm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'Unit2'
      Lookup = True
    end
    object AccListElecDate: TDateField
      FieldName = 'ElecDate'
    end
    object AccListMonth: TSmallintField
      FieldName = 'Month'
    end
    object AccListRemDate: TDateField
      FieldName = 'RemDate'
    end
    object AccListMezDate: TDateField
      FieldName = 'MezDate'
    end
    object AccListRoafe: TSmallintField
      FieldName = 'Roafe'
    end
    object AccListDama: TSmallintField
      FieldName = 'Dama'
      OnValidate = AccListDamaValidate
    end
    object AccListTfteshCar: TSmallintField
      FieldName = 'TfteshCar'
    end
    object AccListAttTo: TWideStringField
      FieldName = 'AttTo'
    end
    object AccListLeverweight: TFloatField
      FieldName = 'Leverweight'
    end
    object AccListSaba: TSmallintField
      FieldName = 'Saba'
    end
    object AccListWeeksNum: TSmallintField
      FieldName = 'WeeksNum'
    end
    object AccListStates1: TSmallintField
      FieldName = 'States1'
    end
    object AccListStates2: TSmallintField
      FieldName = 'States2'
    end
    object AccListDays: TSmallintField
      FieldName = 'Days'
    end
    object AccListDaysM: TSmallintField
      FieldName = 'DaysM'
    end
    object AccListEleeshDate: TDateField
      FieldName = 'EleeshDate'
      OnValidate = AccListEleeshDateValidate
    end
    object AccListReshDate: TDateField
      FieldName = 'ReshDate'
      OnValidate = AccListReshDateValidate
    end
    object AccListDaysMM: TFloatField
      FieldName = 'DaysMM'
    end
    object AccListAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object AccListAgNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AgNm'
      LookupDataSet = Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AginNm'
      Size = 60
      Lookup = True
    end
    object AccListF1Num: TSmallintField
      FieldName = 'F1Num'
    end
    object AccListUser: TIntegerField
      FieldName = 'User'
    end
    object AccListuserNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'userNm'
      LookupDataSet = Perm
      LookupKeyFields = 'UserNum'
      LookupResultField = 'UserName'
      KeyFields = 'User'
      Size = 40
      Lookup = True
    end
    object AccListDateTop: TDateField
      FieldName = 'DateTop'
    end
    object AccListNumT: TIntegerField
      FieldName = 'NumT'
    end
    object AccListbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object AccListBillNum: TWideStringField
      FieldName = 'BillNum'
      Size = 300
    end
    object AccListAccTypeNmA: TStringField
      FieldKind = fkCalculated
      FieldName = 'AccTypeNmA'
      Size = 11
      Calculated = True
    end
    object AccListshipNm: TStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldKind = fkLookup
      FieldName = 'shipNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'ShipNum'
      Size = 100
      Lookup = True
    end
    object AccListSapa: TSmallintField
      FieldName = 'Sapa'
    end
    object AccListloukof: TSmallintField
      FieldName = 'loukof'
    end
    object AccListHoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object AccListcouponIn: TIntegerField
      FieldName = 'couponIn'
    end
    object AccListcouponOut: TIntegerField
      FieldName = 'couponOut'
    end
    object AccListTelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object AccListShTyNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShTyNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'ShipType'
      Size = 10
      Lookup = True
    end
    object AccListarchiveF: TShortintField
      FieldName = 'archiveF'
      Required = True
    end
    object AccListPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object AccListPaidNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaidNm'
      Size = 10
      Calculated = True
    end
    object AccListShipEnNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipEnNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'Name_En'
      KeyFields = 'ShipNum'
      Size = 100
      Lookup = True
    end
    object AccListUnitRsom: TSmallintField
      FieldName = 'UnitRsom'
    end
    object AccListShipRsomNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipRsomNm'
      LookupDataSet = shipment
      LookupKeyFields = 'shipNo'
      LookupResultField = 'ShipName'
      KeyFields = 'UnitRsom'
      Size = 15
      Lookup = True
    end
    object AccListNum1: TSmallintField
      FieldName = 'Num1'
    end
    object AccListNum2: TSmallintField
      FieldName = 'Num2'
    end
    object AccListNum3: TSmallintField
      FieldName = 'Num3'
    end
    object AccListNum4: TSmallintField
      FieldName = 'Num4'
    end
    object AccListNum5: TSmallintField
      FieldName = 'Num5'
    end
    object AccListNum6: TSmallintField
      FieldName = 'Num6'
    end
    object AccListNum7: TSmallintField
      FieldName = 'Num7'
    end
    object AccListNum8: TSmallintField
      FieldName = 'Num8'
    end
    object AccListShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object AccListShipTypeNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShipTypeNm'
      Size = 10
      Calculated = True
    end
    object AccListShipMetNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShipMetNm'
      Size = 10
      Calculated = True
    end
    object AccListReserve: TSmallintField
      FieldName = 'Reserve'
      OnValidate = AccListReserveValidate
    end
    object AccListReservNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ReservNm'
      LookupDataSet = Reserve
      LookupKeyFields = 'Res_Num'
      LookupResultField = 'Res_Desc'
      KeyFields = 'Reserve'
      Size = 150
      Lookup = True
    end
    object AccListFrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object AccListQty3: TSmallintField
      FieldName = 'Qty3'
    end
    object AccListRemainDays: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'RemainDays'
      Calculated = True
    end
    object AccListElecDays: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'ElecDays'
      Calculated = True
    end
    object AccListLockNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'LockNm'
      Size = 10
      Calculated = True
    end
    object AccListTypeNm: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'ShipType'
      Lookup = True
    end
    object AccListBillNum2: TWideStringField
      FieldName = 'BillNum2'
      Size = 300
    end
    object AccListHoursNum1: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'HoursNum1'
      Calculated = True
    end
    object AccListMonthsNum: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'MonthsNum'
      Calculated = True
    end
    object AccListHoursNum2: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'HoursNum2'
      Calculated = True
    end
    object AccListMontsNum2: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'MontsNum2'
      Calculated = True
    end
    object AccListSubType: TSmallintField
      FieldName = 'SubType'
    end
    object AccListDelF: TSmallintField
      FieldName = 'DelF'
    end
    object AccListDelDate: TDateField
      FieldName = 'DelDate'
    end
    object AccListboat: TSmallintField
      FieldName = 'boat'
    end
    object AccListAgntR: TSmallintField
      FieldName = 'AgntR'
    end
    object AccListAgRsNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgRsNm'
      LookupDataSet = agentsrs
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AgntR'
      Size = 60
      Lookup = True
    end
    object AccListSharedF: TSmallintField
      FieldName = 'SharedF'
    end
    object AccListChemicalF: TSmallintField
      FieldName = 'ChemicalF'
    end
    object AccListAlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object AccListDelNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'DelNm'
      Size = 15
      Calculated = True
    end
    object AccListStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object AccListListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
    object AccListDailyNum: TIntegerField
      FieldName = 'DailyNum'
    end
    object AccListAttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object AccListDisCount: TFloatField
      FieldName = 'DisCount'
    end
    object AccListDelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 70
    end
    object AccListListTypeNmR: TStringField
      FieldKind = fkCalculated
      FieldName = 'ListTypeNmR'
      LookupDataSet = SAccDet
      Calculated = True
    end
    object AccListcutF: TSmallintField
      FieldName = 'cutF'
      LookupDataSet = SAccDet
    end
    object AccListNetDays: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NetDays'
      Calculated = True
    end
    object AccListSabaOrLoc: TStringField
      FieldKind = fkCalculated
      FieldName = 'SabaOrLoc'
      Size = 5
      Calculated = True
    end
    object AccListCurrntF: TSmallintField
      FieldName = 'CurrntF'
    end
    object AccListDebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object AccListCurrDate: TDateField
      FieldName = 'CurrDate'
    end
    object AccListDailyCurr: TIntegerField
      FieldName = 'DailyCurr'
    end
    object AccListLockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object AccListClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object AccListClaimDate: TDateField
      FieldName = 'ClaimDate'
    end
    object AccListClaimNum: TIntegerField
      FieldName = 'ClaimNum'
    end
    object AccListQRALL: TWideMemoField
      FieldName = 'QRALL'
      BlobType = ftWideMemo
    end
    object AccListNTotal: TFloatField
      FieldName = 'NTotal'
    end
    object AccListNStamp: TFloatField
      FieldName = 'NStamp'
    end
    object AccListMsrahname: TWideStringField
      FieldName = 'Msrahname'
      Size = 70
    end
    object AccListphoneMsr: TWideStringField
      FieldName = 'phoneMsr'
      Size = 15
    end
    object AccListloadnum: TIntegerField
      FieldName = 'loadnum'
    end
    object AccListBillloading: TIntegerField
      FieldName = 'Billloading'
    end
    object AccListTotalD: TFloatField
      FieldName = 'TotalD'
    end
    object AccListInvoiceD: TSmallintField
      FieldName = 'InvoiceD'
    end
    object AccListNTotalD: TFloatField
      FieldName = 'NTotalD'
    end
    object AccListNStampD: TFloatField
      FieldName = 'NStampD'
    end
    object AccListDollarPrice: TFloatField
      FieldName = 'DollarPrice'
    end
    object AccListEx_Price: TFloatField
      FieldName = 'Ex_Price'
    end
    object AccListSubType2: TSmallintField
      FieldName = 'SubType2'
    end
    object AccListshared_usefork: TSmallintField
      FieldName = 'shared_usefork'
    end
    object AccListQty2: TSmallintField
      FieldName = 'Qty2'
    end
    object AccListUnit2: TSmallintField
      FieldName = 'Unit2'
    end
    object AccListTo: TSmallintField
      FieldName = 'To'
    end
    object AccListElecQty: TSmallintField
      FieldName = 'ElecQty'
    end
    object AccListRemQty: TSmallintField
      FieldName = 'RemQty'
    end
  end
  object DAccList: TUniDataSource
    AutoEdit = False
    DataSet = AccList
    Left = 320
    Top = 310
  end
  object AgentsV: TUniTable
    TableName = 'Agents'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'AgName'
    BeforePost = AgentsBeforePost
    BeforeDelete = AgentsBeforeDelete
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 620
    Top = 850
    object AgentsVAgName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      FieldName = 'AgName'
      Size = 60
    end
    object AgentsVNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object AgentsVAgAbsName: TWideStringField
      FieldName = 'AgAbsName'
      Size = 60
    end
    object AgentsVPhone: TWideStringField
      FieldName = 'Phone'
      Size = 50
    end
    object AgentsVFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object AgentsVE_Mail: TWideStringField
      FieldName = 'E_Mail'
      Size = 30
    end
    object AgentsVAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object AgentsVAgType: TSmallintField
      FieldName = 'AgType'
    end
    object AgentsVFirstBal: TFloatField
      FieldName = 'FirstBal'
    end
    object AgentsVCurrentBal: TFloatField
      FieldName = 'CurrentBal'
    end
    object AgentsVEsstF: TSmallintField
      FieldName = 'EsstF'
    end
    object AgentsVacc1: TSmallintField
      FieldName = 'acc1'
    end
    object AgentsVacc2: TSmallintField
      FieldName = 'acc2'
    end
    object AgentsVacc3: TSmallintField
      FieldName = 'acc3'
    end
    object AgentsVacc4: TSmallintField
      FieldName = 'acc4'
    end
    object AgentsVdebitState: TSmallintField
      FieldName = 'debitState'
    end
  end
  object DAgentsV: TDataSource
    DataSet = AgentsV
    Left = 700
    Top = 850
  end
  object VSUnitAccList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `accunit`'
      
        '  (`NumAuto`, `NumAlist`, `NumUnit`, `QtityNormal`, `QtitoyRor`,' +
        ' `NMIncome`, `ValNormal`, `ValRoro`, `FwozQ`, `FwozV`, `LanerQ`,' +
        ' `LanerV`, `RofaQ`, `RofaV`, `NRofaQ`, `NRofaV`, `Ejmale`, `AddC' +
        'ount`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumAlist`, :`NumUnit`, :`QtityNormal`, :`Qtitoy' +
        'Ror`, :`NMIncome`, :`ValNormal`, :`ValRoro`, :`FwozQ`, :`FwozV`,' +
        ' :`LanerQ`, :`LanerV`, :`RofaQ`, :`RofaV`, :`NRofaQ`, :`NRofaV`,' +
        ' :`Ejmale`, :`AddCount`)')
    SQLDelete.Strings = (
      'DELETE FROM `accunit`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `accunit`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumAlist` = :`NumAlist`, `NumUnit` = ' +
        ':`NumUnit`, `QtityNormal` = :`QtityNormal`, `QtitoyRor` = :`Qtit' +
        'oyRor`, `NMIncome` = :`NMIncome`, `ValNormal` = :`ValNormal`, `V' +
        'alRoro` = :`ValRoro`, `FwozQ` = :`FwozQ`, `FwozV` = :`FwozV`, `L' +
        'anerQ` = :`LanerQ`, `LanerV` = :`LanerV`, `RofaQ` = :`RofaQ`, `R' +
        'ofaV` = :`RofaV`, `NRofaQ` = :`NRofaQ`, `NRofaV` = :`NRofaV`, `E' +
        'jmale` = :`Ejmale`, `AddCount` = :`AddCount`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT * FROM accunit'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumAlist`, `NumUnit`, `QtityNormal`, `QtitoyR' +
        'or`, `NMIncome`, `ValNormal`, `ValRoro`, `FwozQ`, `FwozV`, `Lane' +
        'rQ`, `LanerV`, `RofaQ`, `RofaV`, `NRofaQ`, `NRofaV`, `Ejmale`, `' +
        'AddCount` FROM `accunit`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accunit')
    Connection = DB1
    SQL.Strings = (
      'CALL VUnitAccList(:VNum)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 200
    Top = 461
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VUnitAccList'
    object VSUnitAccListNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VSUnitAccListNumAlist: TIntegerField
      FieldName = 'NumAlist'
    end
    object VSUnitAccListNumUnit: TSmallintField
      FieldName = 'NumUnit'
    end
    object VSUnitAccListNMIncome: TIntegerField
      FieldName = 'NMIncome'
    end
    object VSUnitAccListValNormal: TFloatField
      FieldName = 'ValNormal'
    end
    object VSUnitAccListValRoro: TFloatField
      FieldName = 'ValRoro'
    end
    object VSUnitAccListFwozQ: TSmallintField
      FieldName = 'FwozQ'
    end
    object VSUnitAccListFwozV: TFloatField
      FieldName = 'FwozV'
    end
    object VSUnitAccListLanerQ: TSmallintField
      FieldName = 'LanerQ'
    end
    object VSUnitAccListLanerV: TFloatField
      FieldName = 'LanerV'
    end
    object VSUnitAccListRofaQ: TSmallintField
      FieldName = 'RofaQ'
    end
    object VSUnitAccListRofaV: TFloatField
      FieldName = 'RofaV'
    end
    object VSUnitAccListNRofaQ: TSmallintField
      FieldName = 'NRofaQ'
    end
    object VSUnitAccListNRofaV: TFloatField
      FieldName = 'NRofaV'
    end
    object VSUnitAccListEjmale: TFloatField
      FieldName = 'Ejmale'
    end
    object VSUnitAccListAddCount: TFloatField
      FieldName = 'AddCount'
    end
    object VSUnitAccListQtityNormal: TFloatField
      FieldName = 'QtityNormal'
    end
    object VSUnitAccListQtitoyRor: TFloatField
      FieldName = 'QtitoyRor'
    end
  end
  object VSBollAccList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO accbollsa'
      '  (NumAuto, Bollsa, NumLoad, NumAcc)'
      'VALUES'
      '  (:NumAuto, :Bollsa, :NumLoad, :NumAcc)')
    SQLDelete.Strings = (
      'DELETE FROM accbollsa'
      'WHERE'
      '  NumAuto = :Old_NumAuto')
    SQLUpdate.Strings = (
      'UPDATE accbollsa'
      'SET'
      
        '  NumAuto = :NumAuto, Bollsa = :Bollsa, NumLoad = :NumLoad, NumA' +
        'cc = :NumAcc'
      'WHERE'
      '  NumAuto = :Old_NumAuto')
    SQLLock.Strings = (
      'SELECT * FROM accbollsa'
      'WHERE'
      '  NumAuto = :Old_NumAuto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT NumAuto, Bollsa, NumLoad, NumAcc FROM accbollsa'
      'WHERE'
      '  NumAuto = :NumAuto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accbollsa')
    Connection = DB1
    SQL.Strings = (
      'CALL VBollAccList(:VNum)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 240
    Top = 700
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VBollAccList'
    object VSBollAccListNumAuto: TIntegerField
      FieldName = 'NumAuto'
    end
    object VSBollAccListBollsa: TWideStringField
      FieldName = 'Bollsa'
      Size = 100
    end
    object VSBollAccListNumLoad: TIntegerField
      FieldName = 'NumLoad'
    end
    object VSBollAccListNumAcc: TIntegerField
      FieldName = 'NumAcc'
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 1368
    Top = 173
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1340
    Top = 10
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 1340
    Top = 340
  end
  object MTENZincome: TUniTable
    TableName = 'MTENZincome'
    Connection = DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    OnCalcFields = MTENZincomeCalcFields
    Left = 1260
    Top = 760
    object MTENZincomeShipTypeNm: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1575#1582#1585#1577
      FieldKind = fkCalculated
      FieldName = 'ShipTypeNm'
      Calculated = True
    end
    object MTENZincomeMetNm: TStringField
      DisplayLabel = #1591#1585#1610#1602#1577' '#1575#1604#1578#1587#1604#1610#1605
      FieldKind = fkCalculated
      FieldName = 'MetNm'
      Calculated = True
    end
    object MTENZincomeUnitNm: TStringField
      DisplayLabel = #1578#1589#1606#1610#1601
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'NUmunit'
      Size = 120
      Lookup = True
    end
    object MTENZincomeIncType: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1576#1590#1575#1593#1577
      FieldKind = fkCalculated
      FieldName = 'IncType'
      Size = 50
      Calculated = True
    end
    object MTENZincomeMincome: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Mincome'
    end
    object MTENZincomeShipType: TSmallintField
      FieldName = 'ShipType'
      Required = True
    end
    object MTENZincomeShipMet: TSmallintField
      FieldName = 'ShipMet'
      Required = True
    end
    object MTENZincomeGoods: TSmallintField
      FieldName = 'Goods'
      Required = True
    end
    object MTENZincomeElectric: TSmallintField
      FieldName = 'Electric'
    end
    object MTENZincomeElecVAlue: TFloatField
      FieldName = 'ElecVAlue'
    end
    object MTENZincomeRemain: TSmallintField
      FieldName = 'Remain'
    end
    object MTENZincomeRemValue: TFloatField
      FieldName = 'RemValue'
    end
    object MTENZincomeW1: TFloatField
      FieldName = 'W1'
    end
    object MTENZincomeW2: TFloatField
      FieldName = 'W2'
    end
    object MTENZincomeV1: TFloatField
      FieldName = 'V1'
    end
    object MTENZincomeV2: TFloatField
      FieldName = 'V2'
    end
    object MTENZincomeNUmunit: TIntegerField
      FieldName = 'NUmunit'
    end
  end
  object DMTENZincome: TUniDataSource
    DataSet = MTENZincome
    Left = 1360
    Top = 760
  end
  object TENZincome: TUniTable
    TableName = 'TENZincome'
    Connection = DB1
    MasterSource = DMTENZincome
    MasterFields = 'Mincome'
    DetailFields = 'Auto'
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 1260
    Top = 860
    object TENZincomeNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object TENZincomeAuto: TSmallintField
      FieldName = 'Auto'
      Required = True
    end
    object TENZincomeIncNum: TIntegerField
      DisplayLabel = #1585#1602#1605
      FieldName = 'IncNum'
      Required = True
    end
    object TENZincomeIncName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1575#1574#1583
      FieldName = 'IncName'
      Size = 60
    end
    object TENZincomeIncAbsName: TWideStringField
      FieldName = 'IncAbsName'
      Size = 60
    end
    object TENZincomeRsef: TFloatField
      FieldName = 'Rsef'
    end
    object TENZincomeStore: TFloatField
      FieldName = 'Store'
    end
    object TENZincomeDirect: TFloatField
      FieldName = 'Direct'
    end
    object TENZincomePerc: TFloatField
      FieldName = 'Perc'
    end
    object TENZincomeStatesNum: TSmallintField
      FieldName = 'StatesNum'
    end
    object TENZincomeElectric: TFloatField
      FieldName = 'Electric'
    end
    object TENZincomeTotalRsef: TFloatField
      FieldName = 'TotalRsef'
    end
    object TENZincomeTotalStore: TFloatField
      FieldName = 'TotalStore'
    end
    object TENZincomeTotalDirect: TFloatField
      FieldName = 'TotalDirect'
    end
    object TENZincomeLiner: TFloatField
      FieldName = 'Liner'
    end
    object TENZincomeTotalLiner: TFloatField
      FieldName = 'TotalLiner'
    end
    object TENZincomeMin: TFloatField
      FieldName = 'Min'
    end
    object TENZincomeTypeFator: TSmallintField
      FieldName = 'TypeFator'
    end
    object TENZincomeRHayaK: TFloatField
      FieldName = 'RHayaK'
    end
    object TENZincomeRHayaS: TFloatField
      FieldName = 'RHayaS'
    end
    object TENZincomeDirectState: TSmallintField
      FieldName = 'DirectState'
    end
    object TENZincomeMin2: TFloatField
      FieldName = 'Min2'
    end
    object TENZincomeSHAYAK: TFloatField
      FieldName = 'SHAYAK'
    end
    object TENZincomeSHAYAS: TFloatField
      FieldName = 'SHAYAS'
    end
    object TENZincomeMHAYAK: TFloatField
      FieldName = 'MHAYAK'
    end
    object TENZincomeMHAYAS: TFloatField
      FieldName = 'MHAYAS'
    end
  end
  object DTENZincome: TUniDataSource
    DataSet = TENZincome
    Left = 1360
    Top = 860
  end
  object ReviewQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT `ListNum`,`ListType`,`ListDate`,`GoodsDesc`,arrivedate,sh' +
        'ipnum,subtype2 FROM `acclist` where `progress` >=:FromProgress a' +
        'nd `progress` <=:ToProgress and ListDate>=:FromDate and ListDate' +
        '<=:ToDate')
    Left = 1000
    Top = 240
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromProgress'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToProgress'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object ReviewQListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object ReviewQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object ReviewQListDate: TDateField
      FieldName = 'ListDate'
    end
    object ReviewQGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object ReviewQarrivedate: TDateField
      FieldName = 'arrivedate'
    end
    object ReviewQshipnum: TSmallintField
      FieldName = 'shipnum'
    end
    object ReviewQShipNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'shipnum'
      Size = 100
      Lookup = True
    end
    object ReviewQsubtype2: TSmallintField
      FieldName = 'subtype2'
    end
  end
  object DReviewQ: TDataSource
    DataSet = ReviewQ
    Left = 1048
    Top = 233
  end
  object SearchHQ: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `loadlist`'
      
        '  (`Num`, `TransNUm`, `TransType`, `ArriveDate`, `EmptyPort`, `S' +
        'ideWalk`, `Agent`, `ListDate`, `EndDate`, `RofR`, `Taghez`, `lon' +
        'gOf1`, `MixedF`, `ShipType`, `ShipMet`, `carsTfF`, `Byan_type`)'
      'VALUES'
      
        '  (:`Num`, :`TransNUm`, :`TransType`, :`ArriveDate`, :`EmptyPort' +
        '`, :`SideWalk`, :`Agent`, :`ListDate`, :`EndDate`, :`RofR`, :`Ta' +
        'ghez`, :`longOf1`, :`MixedF`, :`ShipType`, :`ShipMet`, :`carsTfF' +
        '`, :`Byan_type`)')
    SQLDelete.Strings = (
      'DELETE FROM `loadlist`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLUpdate.Strings = (
      'UPDATE `loadlist`'
      'SET'
      
        '  `Num` = :`Num`, `TransNUm` = :`TransNUm`, `TransType` = :`Tran' +
        'sType`, `ArriveDate` = :`ArriveDate`, `EmptyPort` = :`EmptyPort`' +
        ', `SideWalk` = :`SideWalk`, `Agent` = :`Agent`, `ListDate` = :`L' +
        'istDate`, `EndDate` = :`EndDate`, `RofR` = :`RofR`, `Taghez` = :' +
        '`Taghez`, `longOf1` = :`longOf1`, `MixedF` = :`MixedF`, `ShipTyp' +
        'e` = :`ShipType`, `ShipMet` = :`ShipMet`, `carsTfF` = :`carsTfF`' +
        ', `Byan_type` = :`Byan_type`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLLock.Strings = (
      'SELECT * FROM loadlist'
      'WHERE'
      '  `Num` = :`Old_Num`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Num`, `TransNUm`, `TransType`, `ArriveDate`, `EmptyPort`' +
        ', `SideWalk`, `Agent`, `ListDate`, `EndDate`, `RofR`, `Taghez`, ' +
        '`longOf1`, `MixedF`, `ShipType`, `ShipMet`, `carsTfF`, `Byan_typ' +
        'e` FROM `loadlist`'
      'WHERE'
      '  `Num` = :`Num`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM loadlist')
    Connection = DB1
    SQL.Strings = (
      'SELECT *'
      'FROM porte.loadlist loadlist'
      
        'WHERE (loadlist.ArriveDate >=:FROMDate AND loadlist.ArriveDate <' +
        '=:TODate)'
      
        'AND (loadlist.TransNum >=:FromTransNum and loadlist.TransNum <=:' +
        'ToTransNum)'
      'AND (loadlist.Agent >=:FromAgent and loadlist.Agent <=:ToAgent)'
      '      '
      'ORDER BY loadlist.Num;')
    Left = 633
    Top = 993
    ParamData = <
      item
        DataType = ftDate
        Name = 'FROMDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'TODate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'FromTransNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToTransNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'FromAgent'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToAgent'
        ParamType = ptInput
        Value = nil
      end>
    object SearchHQNum: TIntegerField
      FieldName = 'Num'
    end
    object SearchHQTransNUm: TSmallintField
      FieldName = 'TransNUm'
    end
    object SearchHQTransType: TSmallintField
      FieldName = 'TransType'
    end
    object SearchHQArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object SearchHQEmptyPort: TSmallintField
      FieldName = 'EmptyPort'
    end
    object SearchHQSideWalk: TSmallintField
      FieldName = 'SideWalk'
    end
    object SearchHQAgent: TSmallintField
      FieldName = 'Agent'
    end
    object SearchHQListDate: TDateField
      FieldName = 'ListDate'
    end
    object SearchHQEndDate: TDateField
      FieldName = 'EndDate'
    end
    object SearchHQRofR: TSmallintField
      FieldName = 'RofR'
    end
    object SearchHQTaghez: TSmallintField
      FieldName = 'Taghez'
      Required = True
    end
    object SearchHQlongOf1: TSmallintField
      FieldName = 'longOf1'
    end
    object SearchHQMixedF: TSmallintField
      FieldName = 'MixedF'
    end
    object SearchHQShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object SearchHQShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object SearchHQcarsTfF: TSmallintField
      FieldName = 'carsTfF'
      Required = True
    end
    object SearchHQByan_type: TSmallintField
      FieldName = 'Byan_type'
    end
    object SearchHQAgentNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNm'
      LookupDataSet = Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agent'
      Size = 150
      Lookup = True
    end
    object SearchHQShipName: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipName'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'TransNUm'
      Size = 150
      Lookup = True
    end
    object SearchHQShipNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipNm'
      LookupDataSet = Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'TransNUm'
      Size = 100
      Lookup = True
    end
  end
  object DSearchHQ: TDataSource
    DataSet = SearchHQ
    Left = 728
    Top = 1000
  end
  object GeneralQ: TUniQuery
    Connection = DB1
    Left = 304
    Top = 1008
  end
  object ReviewAttQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT `attachNum`,`accType`,`attachDate`,`oasve`,toname FROM `a' +
        'ttach` where `progress` >=:FromProgress and `progress` <=:ToProg' +
        'ress and attachDate>=:FromDate and attachDate<=:ToDate')
    Left = 1153
    Top = 233
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromProgress'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToProgress'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object ReviewAttQattachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'attachNum'
    end
    object ReviewAttQaccType: TIntegerField
      FieldName = 'accType'
      Required = True
    end
    object ReviewAttQattachDate: TDateField
      FieldName = 'attachDate'
    end
    object ReviewAttQoasve: TWideStringField
      FieldName = 'oasve'
      Size = 100
    end
    object ReviewAttQtoname: TWideStringField
      FieldName = 'toname'
      Size = 100
    end
  end
  object DReviewAttQ: TDataSource
    DataSet = ReviewAttQ
    Left = 1224
    Top = 216
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ','
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 1344
    Top = 113
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 1328
    Top = 208
  end
  object frxZPLExport1: TfrxZPLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    BMillimeters = False
    FontScale = 1.400000000000000000
    Left = 1320
    Top = 280
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 1336
    Top = 424
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 1304
    Top = 504
  end
  object Vunitaccdet: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `accdetunit`'
      
        '  (`NumAuto`, `NumAlist`, `NumUnit`, `QtityNormal`, `QtitoyRor`,' +
        ' `NMIncome`, `ValNormal`, `ValRoro`, `FwozQ`, `FwozV`, `LanerQ`,' +
        ' `LanerV`, `RofaQ`, `RofaV`, `NRofaQ`, `NRofaV`, `Ejmale`, `AddC' +
        'ount`, `ElectricQty`, `Size`, `NumAttach`, `ListType`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumAlist`, :`NumUnit`, :`QtityNormal`, :`Qtitoy' +
        'Ror`, :`NMIncome`, :`ValNormal`, :`ValRoro`, :`FwozQ`, :`FwozV`,' +
        ' :`LanerQ`, :`LanerV`, :`RofaQ`, :`RofaV`, :`NRofaQ`, :`NRofaV`,' +
        ' :`Ejmale`, :`AddCount`, :`ElectricQty`, :`Size`, :`NumAttach`, ' +
        ':`ListType`)')
    SQLDelete.Strings = (
      'DELETE FROM `accdetunit`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `accdetunit`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumAlist` = :`NumAlist`, `NumUnit` = ' +
        ':`NumUnit`, `QtityNormal` = :`QtityNormal`, `QtitoyRor` = :`Qtit' +
        'oyRor`, `NMIncome` = :`NMIncome`, `ValNormal` = :`ValNormal`, `V' +
        'alRoro` = :`ValRoro`, `FwozQ` = :`FwozQ`, `FwozV` = :`FwozV`, `L' +
        'anerQ` = :`LanerQ`, `LanerV` = :`LanerV`, `RofaQ` = :`RofaQ`, `R' +
        'ofaV` = :`RofaV`, `NRofaQ` = :`NRofaQ`, `NRofaV` = :`NRofaV`, `E' +
        'jmale` = :`Ejmale`, `AddCount` = :`AddCount`, `ElectricQty` = :`' +
        'ElectricQty`, `Size` = :`Size`, `NumAttach` = :`NumAttach`, `Lis' +
        'tType` = :`ListType`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT * FROM accdetunit'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumAlist`, `NumUnit`, `QtityNormal`, `QtitoyR' +
        'or`, `NMIncome`, `ValNormal`, `ValRoro`, `FwozQ`, `FwozV`, `Lane' +
        'rQ`, `LanerV`, `RofaQ`, `RofaV`, `NRofaQ`, `NRofaV`, `Ejmale`, `' +
        'AddCount`, `ElectricQty`, `Size`, `NumAttach`, `ListType` FROM `' +
        'accdetunit`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM accdetunit')
    Connection = DB1
    SQL.Strings = (
      'CALL VUnitAccDet(:ListNum, :NumAttach1)')
    AfterPost = VunitaccdetAfterPost
    AfterDelete = VunitaccdetAfterDelete
    Left = 1144
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ListNum'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'NumAttach1'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VUnitAccDet'
    object VunitaccdetNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VunitaccdetNumAlist: TIntegerField
      FieldName = 'NumAlist'
    end
    object VunitaccdetNumUnit: TSmallintField
      FieldName = 'NumUnit'
    end
    object VunitaccdetQtityNormal: TFloatField
      FieldName = 'QtityNormal'
    end
    object VunitaccdetQtitoyRor: TFloatField
      FieldName = 'QtitoyRor'
    end
    object VunitaccdetNMIncome: TIntegerField
      FieldName = 'NMIncome'
    end
    object VunitaccdetValNormal: TFloatField
      FieldName = 'ValNormal'
    end
    object VunitaccdetValRoro: TFloatField
      FieldName = 'ValRoro'
    end
    object VunitaccdetFwozV: TFloatField
      FieldName = 'FwozV'
    end
    object VunitaccdetLanerQ: TSmallintField
      FieldName = 'LanerQ'
    end
    object VunitaccdetLanerV: TFloatField
      FieldName = 'LanerV'
    end
    object VunitaccdetRofaQ: TSmallintField
      FieldName = 'RofaQ'
    end
    object VunitaccdetRofaV: TFloatField
      FieldName = 'RofaV'
    end
    object VunitaccdetNRofaQ: TSmallintField
      FieldName = 'NRofaQ'
    end
    object VunitaccdetNRofaV: TFloatField
      FieldName = 'NRofaV'
    end
    object VunitaccdetEjmale: TFloatField
      FieldName = 'Ejmale'
    end
    object VunitaccdetAddCount: TFloatField
      FieldName = 'AddCount'
    end
    object VunitaccdetElectricQty: TSmallintField
      FieldName = 'ElectricQty'
    end
    object VunitaccdetSize: TFloatField
      FieldName = 'Size'
    end
    object VunitaccdetNumAttach: TIntegerField
      FieldName = 'NumAttach'
    end
    object VunitaccdetListType: TSmallintField
      FieldName = 'ListType'
    end
    object VunitaccdetUnitNm: TStringField
      FieldKind = fkLookup
      FieldName = 'UnitNm'
      LookupDataSet = Units
      LookupKeyFields = 'Num'
      LookupResultField = 'UName'
      KeyFields = 'NumUnit'
      Lookup = True
    end
    object VunitaccdetFwozQ: TFloatField
      FieldName = 'FwozQ'
    end
  end
  object DVunitaccdet: TDataSource
    DataSet = Vunitaccdet
    Left = 1233
    Top = 16
  end
  object Dinfo: TDataSource
    DataSet = info
    Left = 160
    Top = 16
  end
  object DPeakTbl: TUniDataSource
    DataSet = PeakTbl
    Left = 1256
    Top = 984
  end
  object PeakTbl: TUniTable
    TableName = 'peaktbl'
    Connection = DB1
    BeforeDelete = PeakTblBeforeDelete
    Left = 1160
    Top = 1000
    object PeakTblPeak_From: TDateField
      FieldName = 'Peak_From'
    end
    object PeakTblPeak_To: TDateField
      FieldName = 'Peak_To'
    end
    object PeakTblPeak_Hours: TFloatField
      FieldName = 'Peak_Hours'
    end
    object PeakTblPeak_Value: TFloatField
      FieldName = 'Peak_Value'
    end
  end
  object PeakQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'select * from peaktbl where (peak_from <=:Fromdate and  peak_to ' +
        '>=:Todate)or(peak_from <:Fromdate and  peak_to >=:Todate)or(peak' +
        '_from <=:Fromdate and  peak_to >:Todate)'
      'or(peak_from <:Fromdate and  peak_to >:Todate)')
    Left = 1000
    Top = 1064
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fromdate'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Todate'
        Value = nil
      end>
  end
  object DsIIncome: TDataSource
    DataSet = SIIncome
    Left = 1184
    Top = 728
  end
  object QAccUnitcount: TUniQuery
    Connection = DB1
    SQL.Strings = (
      
        'SELECT GROUP_CONCAT('#39'{ '#39', units.UName   , '#39'  ('#39', CAST(accdetunit' +
        '.AddCount AS INT) , '#39')'#39' ,   '#39' }'#39') as un'
      'FROM porte.accdetunit    accdetunit'
      
        '     INNER JOIN porte.units units ON (accdetunit.NumUnit = units' +
        '.Num)'
      'WHERE (accdetunit.numattach =:num)')
    Left = 1176
    Top = 80
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'num'
        Value = nil
      end>
    object QAccUnitcountun: TWideMemoField
      FieldName = 'un'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object RQAccUnitcount: TfrxDBDataset
    UserName = 'RQAccUnitcount'
    CloseDataSource = False
    DataSet = QAccUnitcount
    BCDToCurrency = False
    Left = 1240
    Top = 88
  end
  object accdetunit_beforeQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'select * from accdetunit where numattach=:numattach')
    Left = 144
    Top = 1016
    ParamData = <
      item
        DataType = ftInteger
        Name = 'numattach'
        ParamType = ptInput
        Value = nil
      end>
    object accdetunit_beforeQNumAuto: TIntegerField
      FieldName = 'NumAuto'
    end
    object accdetunit_beforeQNumAlist: TIntegerField
      FieldName = 'NumAlist'
    end
    object accdetunit_beforeQNumUnit: TSmallintField
      FieldName = 'NumUnit'
    end
    object accdetunit_beforeQQtityNormal: TFloatField
      FieldName = 'QtityNormal'
    end
    object accdetunit_beforeQQtitoyRor: TFloatField
      FieldName = 'QtitoyRor'
    end
    object accdetunit_beforeQNMIncome: TIntegerField
      FieldName = 'NMIncome'
    end
    object accdetunit_beforeQValNormal: TFloatField
      FieldName = 'ValNormal'
    end
    object accdetunit_beforeQValRoro: TFloatField
      FieldName = 'ValRoro'
    end
    object accdetunit_beforeQFwozQ: TFloatField
      FieldName = 'FwozQ'
    end
    object accdetunit_beforeQFwozV: TFloatField
      FieldName = 'FwozV'
    end
    object accdetunit_beforeQLanerQ: TSmallintField
      FieldName = 'LanerQ'
    end
    object accdetunit_beforeQLanerV: TFloatField
      FieldName = 'LanerV'
    end
    object accdetunit_beforeQRofaQ: TSmallintField
      FieldName = 'RofaQ'
    end
    object accdetunit_beforeQRofaV: TFloatField
      FieldName = 'RofaV'
    end
    object accdetunit_beforeQNRofaQ: TSmallintField
      FieldName = 'NRofaQ'
    end
    object accdetunit_beforeQNRofaV: TFloatField
      FieldName = 'NRofaV'
    end
    object accdetunit_beforeQEjmale: TFloatField
      FieldName = 'Ejmale'
    end
    object accdetunit_beforeQAddCount: TFloatField
      FieldName = 'AddCount'
    end
    object accdetunit_beforeQElectricQty: TSmallintField
      FieldName = 'ElectricQty'
    end
    object accdetunit_beforeQSize: TFloatField
      FieldName = 'Size'
    end
    object accdetunit_beforeQNumAttach: TIntegerField
      FieldName = 'NumAttach'
    end
    object accdetunit_beforeQListType: TSmallintField
      FieldName = 'ListType'
    end
  end
  object DataSource1: TDataSource
    DataSet = VAccList1
    Left = 448
    Top = 256
  end
  object loadSearchQ: TUniQuery
    Connection = DB1
    SQL.Strings = (
      'select auto,lnum from loed')
    Left = 1152
    Top = 424
    object loadSearchQauto: TIntegerField
      FieldName = 'auto'
    end
    object loadSearchQlnum: TIntegerField
      FieldName = 'lnum'
      Required = True
    end
  end
end
