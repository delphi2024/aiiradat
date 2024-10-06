object Dmd2Fm: TDmd2Fm
  OnCreate = DataModuleCreate
  Height = 932
  Width = 1204
  PixelsPerInch = 120
  object VDateHrak: TUniQuery
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
    Connection = DmdFm.DB1
    SQL.Strings = (
      'CALL VDateHrak(:VDateFROM, :VDateTO)')
    IndexFieldNames = 'ArriveDate'
    OnCalcFields = VDateHrakCalcFields
    Left = 240
    Top = 90
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'VDateFROM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'VDateTO'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VDateHrak'
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
      LookupDataSet = DmdFm.Ships
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
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agent'
      Size = 100
      Lookup = True
    end
    object VDateHrakMetNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'MetNm'
      Size = 10
      Calculated = True
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
      LookupDataSet = DmdFm.ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'ShipType'
      Lookup = True
    end
  end
  object DVDateHrak: TUniDataSource
    DataSet = VDateHrak
    Left = 286
    Top = 160
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
      'ShipTypeNm=ShipTypeNm')
    DataSet = VDateHrak
    BCDToCurrency = False
    Left = 320
    Top = 100
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'portetemp'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True'
      'MySQL.ConnectionTimeout=160')
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 170
    Top = 10
    EncryptedPassword = '9EFF9BFF92FF96FF91FF'
  end
  object DListAll1: TDataSource
    DataSet = listall1
    Left = 88
    Top = 420
  end
  object DListAll: TDataSource
    DataSet = ListAll3
    Left = 88
    Top = 350
  end
  object ListAll3: TUniTable
    TableName = 'listall'
    Connection = DmdFm.DB1
    LockMode = lmNone
    Left = 90
    Top = 280
    object ListAll3AccType: TSmallintField
      FieldName = 'AccType'
    end
    object ListAll3ListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object ListAll3ListType: TSmallintField
      FieldName = 'ListType'
    end
    object ListAll3ListDate: TDateField
      FieldName = 'ListDate'
    end
    object ListAll3ToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object ListAll3Total: TFloatField
      FieldName = 'Total'
    end
    object ListAll3Stamp: TFloatField
      FieldName = 'Stamp'
    end
    object ListAll3Net: TFloatField
      FieldName = 'Net'
    end
    object ListAll3AccValue: TFloatField
      FieldName = 'AccValue'
    end
    object ListAll3AccTotal: TFloatField
      FieldName = 'AccTotal'
    end
    object ListAll3Met: TSmallintField
      FieldName = 'Met'
    end
    object ListAll3NumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object ListAll3AccNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object ListAll3StampAbs: TFloatField
      FieldName = 'StampAbs'
    end
  end
  object ListAll: TVirtualTable
    FieldDefs = <
      item
        Name = 'AccType'
        DataType = ftSmallint
        Precision = 5
      end
      item
        Name = 'ListNum'
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = 'ListType'
        DataType = ftSmallint
        Precision = 5
      end
      item
        Name = 'ListDate'
        DataType = ftDate
        Precision = 10
      end
      item
        Name = 'ToName'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'Total'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'Stamp'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'Net'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'AccValue'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'AccTotal'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'Met'
        DataType = ftSmallint
        Precision = 5
      end
      item
        Name = 'NumAuto'
        DataType = ftInteger
        Precision = 10
      end
      item
        Name = 'LoukOf'
        DataType = ftSmallint
      end
      item
        Name = 'Agin'
        DataType = ftInteger
      end
      item
        Name = 'ListNumR'
        DataType = ftInteger
      end>
    Left = 20
    Top = 280
    Data = {
      04000F00070041636354797065020000000500000007004C6973744E756D0300
      00000A00000008004C69737454797065020000000500000008004C6973744461
      7465090000000A0000000600546F4E616D6518006400000000000500546F7461
      6C060000001600000005005374616D70060000001600000003004E6574060000
      0016000000080041636356616C756506000000160000000800416363546F7461
      6C060000001600000003004D6574020000000500000007004E756D4175746F03
      0000000A00000006004C6F756B4F66020000000000000004004167696E030000
      000000000008004C6973744E756D520300000000000000000000000000}
    object ListAllAccType: TSmallintField
      FieldName = 'AccType'
    end
    object ListAllListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object ListAllListType: TSmallintField
      FieldName = 'ListType'
    end
    object ListAllListDate: TDateField
      FieldName = 'ListDate'
    end
    object ListAllToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object ListAllTotal: TFloatField
      FieldName = 'Total'
    end
    object ListAllStamp: TFloatField
      FieldName = 'Stamp'
      DisplayFormat = '0,000.000'
    end
    object ListAllNet: TFloatField
      FieldName = 'Net'
      DisplayFormat = '0,000.000'
    end
    object ListAllAccValue: TFloatField
      FieldName = 'AccValue'
    end
    object ListAllAccNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object ListAllSupNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'SupNm'
      Size = 10
      Calculated = True
    end
    object ListAllAccTotal: TFloatField
      FieldName = 'AccTotal'
      DisplayFormat = '0,000.000'
    end
    object ListAllMet: TSmallintField
      FieldName = 'Met'
    end
    object ListAllNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object ListAllLoukOf: TSmallintField
      FieldName = 'LoukOf'
    end
    object ListAllAgin: TIntegerField
      FieldName = 'Agin'
    end
    object ListAllAgentNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agin'
      Size = 100
      Lookup = True
    end
    object ListAllListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
  end
  object listall1: TUniTable
    TableName = 'listall1'
    Connection = UniConnection1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    IndexFieldNames = 'ListNum'
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 20
    Top = 420
    object listall1AccType: TSmallintField
      FieldName = 'AccType'
    end
    object listall1ListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object listall1ListType: TSmallintField
      FieldName = 'ListType'
    end
    object listall1ListDate: TDateField
      FieldName = 'ListDate'
    end
    object listall1ToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object listall1Total: TFloatField
      FieldName = 'Total'
      DisplayFormat = '0,0.000'
    end
    object listall1Stamp: TFloatField
      FieldName = 'Stamp'
      DisplayFormat = '0,0.000'
    end
    object listall1Net: TFloatField
      FieldName = 'Net'
    end
    object listall1AccValue: TFloatField
      FieldName = 'AccValue'
      DisplayFormat = '0.000'
    end
    object listall1AccTotal: TFloatField
      FieldName = 'AccTotal'
      DisplayFormat = '0,0.000'
    end
    object listall1Met: TSmallintField
      FieldName = 'Met'
    end
    object listall1Agin: TSmallintField
      FieldName = 'Agin'
    end
    object listall1Sup: TSmallintField
      FieldName = 'Sup'
    end
    object listall1numAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object listall1SupNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'SupNm'
      Size = 10
      Calculated = True
    end
    object listall1AginNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AginNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agin'
      Size = 100
      Lookup = True
    end
    object listall1AccNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 100
      Lookup = True
    end
  end
  object QListAll1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `ListAll1`'
      '  (`ListNum`, `ListDate`, `Stamp`, `Net`, `Agin`, `Sup`)'
      'VALUES'
      '  (:`ListNum`, :`ListDate`, :`Stamp`, :`Net`, :`Agin`, :`Sup`)')
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT D.Agin, D.ListDate, D.ListNum, D.Stamp, D.Net, D' +
        '.Sup'
      'FROM ListAll1 D '
      'ORDER BY D.ListNum, D.Sup, D.ListDate, D.Agin, D.Stamp, D.Net')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 231
    Top = 350
    object QListAll1Agin: TSmallintField
      FieldName = 'Agin'
      Origin = 'PORTS."ListAll1".Agin'
    end
    object QListAll1ListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."ListAll1".ListDate'
    end
    object QListAll1ListNum: TIntegerField
      FieldName = 'ListNum'
      Origin = 'PORTS."ListAll1".ListNum'
    end
    object QListAll1Stamp: TFloatField
      FieldName = 'Stamp'
      Origin = 'PORTS."ListAll1".Stamp'
    end
    object QListAll1Net: TFloatField
      FieldName = 'Net'
      Origin = 'PORTS."ListAll1".Net'
    end
    object QListAll1Sup: TSmallintField
      FieldName = 'Sup'
      Origin = 'PORTS."ListAll1".Sup'
    end
    object QListAll1SupNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'SupNm'
      Size = 10
      Calculated = True
    end
    object QListAll1AginNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AginNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agin'
      Size = 40
      Lookup = True
    end
  end
  object QListAll: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `ListAll`'
      '  (`ListNum`, `ListDate`, `Stamp`, `Net`)'
      'VALUES'
      '  (:`ListNum`, :`ListDate`, :`Stamp`, :`Net`)')
    SQLDelete.Strings = (
      'DELETE FROM `ListAll`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `ListAll`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListDate` = :`ListDate`, `Stamp` = :`' +
        'Stamp`, `Net` = :`Net`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT * FROM ListAll'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `listall`.`ListNum`, `listall`.`ListDate`, `listall`.`Sta' +
        'mp`, `listall`.`Net` FROM `ListAll`'
      'WHERE'
      '  listall.`NumAuto` = :`NumAuto`')
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT  D.ListDate, D.ListNum, D.Stamp, D.Net'
      'FROM ListAll D '
      'ORDER BY D.ListNum, D.ListDate, D.Stamp, D.Net')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 231
    Top = 420
    object QListAllListDate: TDateField
      FieldName = 'ListDate'
    end
    object QListAllListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object QListAllStamp: TFloatField
      FieldName = 'Stamp'
    end
    object QListAllNet: TFloatField
      FieldName = 'Net'
    end
  end
  object DQListAll: TDataSource
    DataSet = QListAll
    Left = 290
    Top = 420
  end
  object FQLISTALL1: TfrxDBDataset
    UserName = 'FQLISTALL1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Agin=Agin'
      'ListDate=ListDate'
      'ListNum=ListNum'
      'Stamp=Stamp'
      'Net=Net'
      'Sup=Sup'
      'SupNm=SupNm'
      'AginNm=AginNm')
    DataSet = QListAll1
    BCDToCurrency = False
    Left = 301
    Top = 290
  end
  object FQLISTALL: TfrxDBDataset
    UserName = 'FQLISTALL'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListDate=ListDate'
      'ListNum=ListNum'
      'Stamp=Stamp'
      'Net=Net')
    DataSet = QListAll
    BCDToCurrency = False
    Left = 301
    Top = 350
  end
  object FrListAll: TfrxDBDataset
    UserName = 'FrListAll'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'ListNum=ListNum'
      'ListType=ListType'
      'ListDate=ListDate'
      'ToName=ToName'
      'Total=Total'
      'Stamp=Stamp'
      'Net=Net'
      'AccValue=AccValue'
      'AccNm=AccNm'
      'SupNm=SupNm'
      'AccTotal=AccTotal'
      'Met=Met'
      'NumAuto=NumAuto'
      'LoukOf=LoukOf'
      'Agin=Agin'
      'AgentNm=AgentNm'
      'ListNumR=ListNumR')
    DataSet = ListAll
    BCDToCurrency = False
    Left = 160
    Top = 350
  end
  object FrListAll1: TfrxDBDataset
    UserName = 'FrListAll1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'ListNum=ListNum'
      'ListType=ListType'
      'ListDate=ListDate'
      'ToName=ToName'
      'Total=Total'
      'Stamp=Stamp'
      'Net=Net'
      'AccValue=AccValue'
      'AccTotal=AccTotal'
      'Met=Met'
      'Agin=Agin'
      'Sup=Sup'
      'numAuto=numAuto'
      'SupNm=SupNm'
      'AginNm=AginNm'
      'AccNm=AccNm')
    DataSet = listall1
    BCDToCurrency = False
    Left = 160
    Top = 420
  end
  object KshfMlhg: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `Attach`'
      '  (`AccType`, `AttachNum`, `AttachDate`, `AttachValue`, `Met`)'
      'VALUES'
      
        '  (:`AccType`, :`AttachNum`, :`AttachDate`, :`AttachValue`, :`Me' +
        't`)')
    SQLDelete.Strings = (
      'DELETE FROM `Attach`'
      'WHERE'
      '  `AccType` = :`Old_AccType` AND `AttachNum` = :`Old_AttachNum`')
    SQLUpdate.Strings = (
      'UPDATE `Attach`'
      'SET'
      
        '  `AccType` = :`AccType`, `AttachNum` = :`AttachNum`, `AttachDat' +
        'e` = :`AttachDate`, `AttachValue` = :`AttachValue`, `Met` = :`Me' +
        't`'
      'WHERE'
      '  `AccType` = :`Old_AccType` AND `AttachNum` = :`Old_AttachNum`')
    SQLLock.Strings = (
      'SELECT * FROM Attach'
      'WHERE'
      '  `AccType` = :`Old_AccType` AND `AttachNum` = :`Old_AttachNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Attach`.`AccType`, `Attach`.`AttachNum`, `Attach`.`Attac' +
        'hDate`, `Attach`.`AttachValue`, `Attach`.`Met` FROM `Attach`'
      'WHERE'
      
        '  Attach.`AccType` = :`AccType` AND Attach.`AttachNum` = :`Attac' +
        'hNum`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.AttachDate,D.AccType, D.AttachNum, D1.Acctype,' +
        ' D1.Accvalue, D1.AccTotal,D.AttachValue,D.Met,d.stampflag'
      'FROM Attach D, AttachD D1'
      'WHERE'
      '((D.AccType =:Type1)'
      'or (D.AccType =:Type2)'
      'or (D.AccType =:Type3)'
      'or (D.AccType =:Type4)'
      'or (D.AccType =:Type5)'
      'or (D.AccType =:Type6)'
      'or (D.AccType =:Type7)'
      'or (D.AccType =:Type8))'
      ' AND (D.AttachDate >=:FromDate)'
      ' AND (D.AttachDate <=:ToDate)'
      ' AND (D1.ListNum = D.ListNum)'
      ' AND (D1.AttachNum = D.AttachNum)'
      ' AND (D1.AccTotal <> 0.0)'
      
        'ORDER BY D.AccType, D.AttachNum, D1.Acctype, D1.Accvalue, D1.Acc' +
        'Total,D.AttachValue')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 386
    Top = 370
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfMlhgAcctype_1: TSmallintField
      FieldName = 'Acctype_1'
      Origin = 'PORTS."AttachD".Acctype'
      ReadOnly = True
    end
    object KshfMlhgAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."Attach".AccType'
    end
    object KshfMlhgAttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
      Origin = 'PORTS."Attach".AttachNum'
    end
    object KshfMlhgAccvalue: TFloatField
      FieldName = 'Accvalue'
      Origin = 'PORTS."AttachD".Accvalue'
      ReadOnly = True
    end
    object KshfMlhgAccTotal: TFloatField
      FieldName = 'AccTotal'
      Origin = 'PORTS."AttachD".AccTotal'
      ReadOnly = True
    end
    object KshfMlhgAttachDate: TDateField
      FieldName = 'AttachDate'
      Origin = 'PORTS."Attach".AttachDate'
    end
    object KshfMlhgAttachValue: TFloatField
      FieldName = 'AttachValue'
      Origin = 'PORTS."Attach".AttachValue'
    end
    object KshfMlhgStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfMlhgNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfMlhgMet: TSmallintField
      FieldName = 'Met'
    end
    object KshfMlhgstampflag: TSmallintField
      FieldName = 'stampflag'
    end
  end
  object KshfQ: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `AccList`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `Total`, `AdmisMet`, `Tona' +
        'me`, `Dama`, `DateTop`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`Total`, :`AdmisMet`, ' +
        ':`Toname`, :`Dama`, :`DateTop`)')
    SQLDelete.Strings = (
      'DELETE FROM `AccList`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`')
    SQLUpdate.Strings = (
      'UPDATE `AccList`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `Total` = :`Total`, `AdmisMet` = :`AdmisMet`, `Ton' +
        'ame` = :`Toname`, `Dama` = :`Dama`, `DateTop` = :`DateTop`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`')
    SQLLock.Strings = (
      'SELECT * FROM AccList'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccList`.`ListNum`, `AccList`.`ListType`, `AccList`.`Lis' +
        'tDate`, `AccList`.`Total`, `AccList`.`AdmisMet`, `AccList`.`Tona' +
        'me`, `AccList`.`Dama`, `AccList`.`DateTop` FROM `AccList`'
      'WHERE'
      
        '  AccList.`ListNum` = :`ListNum` AND AccList.`ListType` = :`List' +
        'Type`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.ListType,D.Dama, D.ListDate, D.Date' +
        'Top, D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.A' +
        'dmisMet,d.stampabs,d.listnumr,D.AginNm, D.Sapa'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'OR(D.ListType =:Type2)'
      'OR(D.ListType =:Type3)'
      'OR(D.ListType =:Type4)'
      'OR(D.ListType =:Type5)'
      'OR(D.ListType =:Type6)'
      'OR(D.ListType =:Type7)'
      'OR(D.ListType =:Type8))'
      ' AND (D.DateTop >=:FromDate)'
      ' AND (D.DateTop <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.AccTotal <> 0.0)'
      'and ((D.Delf is null)or(D.DelF<>3))'
      'and(D.cutf<>1)'
      
        'ORDER BY D.ListNum,listnumr, D.ListType, D.ListDate, D.DateTop,D' +
        '.Dama,  D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,' +
        'D.AdmisMet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfQCalcFields
    Left = 390
    Top = 20
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfQTypeNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object KshfQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfQToName: TWideStringField
      FieldName = 'ToName'
      Origin = 'PORTS."AccList".Toname'
      Size = 100
    end
    object KshfQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfQListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
      Origin = 'PORTS."AccList".ListNum'
    end
    object KshfQListType: TSmallintField
      FieldName = 'ListType'
      Origin = 'PORTS."AccList".ListType'
    end
    object KshfQListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."AccList".ListDate'
    end
    object KshfQTotal: TFloatField
      FieldName = 'Total'
      Origin = 'PORTS."AccList".Total'
    end
    object KshfQAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."AccDet".AccType'
      ReadOnly = True
    end
    object KshfQAccValue: TFloatField
      FieldName = 'AccValue'
      Origin = 'PORTS."AccDet".AccValue'
      ReadOnly = True
      DisplayFormat = '0.000'
    end
    object KshfQAccTotal: TFloatField
      FieldName = 'AccTotal'
      Origin = 'PORTS."AccDet".AccTotal'
      ReadOnly = True
      DisplayFormat = '0.000'
    end
    object KshfQAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
      Origin = 'PORTS."AccList".AdmisMet'
    end
    object KshfQDateTop: TDateField
      FieldName = 'DateTop'
      Origin = 'PORTS."AccList".DateTop'
    end
    object KshfQDama: TSmallintField
      FieldName = 'Dama'
    end
    object KshfQstampabs: TFloatField
      FieldName = 'stampabs'
    end
    object KshfQlistnumr: TIntegerField
      FieldName = 'listnumr'
    end
    object KshfQAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object KshfQSapa: TSmallintField
      FieldName = 'Sapa'
    end
  end
  object KshfQ2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `AccList`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `Total`, `AdmisMet`, `Tona' +
        'me`, `Dama`, `DateTop`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`Total`, :`AdmisMet`, ' +
        ':`Toname`, :`Dama`, :`DateTop`)')
    SQLDelete.Strings = (
      'DELETE FROM `AccList`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`')
    SQLUpdate.Strings = (
      'UPDATE `AccList`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `Total` = :`Total`, `AdmisMet` = :`AdmisMet`, `Ton' +
        'ame` = :`Toname`, `Dama` = :`Dama`, `DateTop` = :`DateTop`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`')
    SQLLock.Strings = (
      'SELECT * FROM AccList'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccList`.`ListNum`, `AccList`.`ListType`, `AccList`.`Lis' +
        'tDate`, `AccList`.`Total`, `AccList`.`AdmisMet`, `AccList`.`Tona' +
        'me`, `AccList`.`Dama`, `AccList`.`DateTop` FROM `AccList`'
      'WHERE'
      
        '  AccList.`ListNum` = :`ListNum` AND AccList.`ListType` = :`List' +
        'Type`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.ListType,D.Dama, D.ListDate, D.Date' +
        'Top, D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.A' +
        'dmisMet,d.stampabs,d.listnumr,D.AginNm'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'OR(D.ListType =:Type2)'
      'OR(D.ListType =:Type3)'
      'OR(D.ListType =:Type4)'
      'OR(D.ListType =:Type5)'
      'OR(D.ListType =:Type6)'
      'OR(D.ListType =:Type7)'
      'OR(D.ListType =:Type8))'
      ''
      ' AND'
      ''
      '(D.DateTop >=:FromDate)'
      ' AND (D.DateTop <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.AccTotal <> 0.0)'
      'and ((D.Delf is null)or(D.DelF<>3))'
      'and(d.cutf<>1)'
      ''
      ''
      
        'ORDER BY D.ListNum,listnumr, D.ListType, D.ListDate, D.DateTop,D' +
        '.Dama,  D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,' +
        'D.AdmisMet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfQ2CalcFields
    Left = 389
    Top = 160
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object WideStringField1: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object FloatField6: TFloatField
      FieldName = 'stampabs'
    end
    object IntegerField2: TIntegerField
      FieldName = 'listnumr'
    end
    object IntegerField3: TIntegerField
      FieldName = 'AginNm'
    end
    object KshfQ2ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object KshfQ2ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object KshfQ2Dama: TSmallintField
      FieldName = 'Dama'
    end
    object KshfQ2ListDate: TDateField
      FieldName = 'ListDate'
    end
    object KshfQ2DateTop: TDateField
      FieldName = 'DateTop'
    end
    object KshfQ2Total: TFloatField
      FieldName = 'Total'
    end
    object KshfQ2Toname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object KshfQ2AccType: TSmallintField
      FieldName = 'AccType'
      ReadOnly = True
    end
    object KshfQ2AccValue: TFloatField
      FieldName = 'AccValue'
      ReadOnly = True
    end
    object KshfQ2AccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object KshfQ2AdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object KshfQ2StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfQ2Net: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
  end
  object FrKshfQ: TfrxDBDataset
    UserName = 'FrKshfQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TypeNm=TypeNm'
      'Net=Net'
      'ToName=ToName'
      'StampNet=StampNet'
      'ListNum=ListNum'
      'ListType=ListType'
      'ListDate=ListDate'
      'Total=Total'
      'AccType=AccType'
      'AccValue=AccValue'
      'AccTotal=AccTotal'
      'AdmisMet=AdmisMet'
      'DateTop=DateTop'
      'Dama=Dama'
      'stampabs=stampabs'
      'listnumr=listnumr'
      'AginNm=AginNm'
      'Sapa=Sapa')
    DataSet = KshfQ
    BCDToCurrency = False
    Left = 456
    Top = 20
  end
  object KshfQ3: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.ListType,D.Dama, D.ListDate, D.Date' +
        'Top, D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.A' +
        'dmisMet,d.stampabs,d.listnumr,D.AginNm'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'OR(D.ListType =:Type2)'
      'OR(D.ListType =:Type3)'
      'OR(D.ListType =:Type4)'
      'OR(D.ListType =:Type5)'
      'OR(D.ListType =:Type6)'
      'OR(D.ListType =:Type7)'
      'OR(D.ListType =:Type8))'
      ' AND ((D.DateTop >=:FromDate)'
      ' AND (D.DateTop <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.AccTotal <> 0.0)'
      'and ((D.Delf is null)or(D.DelF<>3)))'
      'and(d.cutf<>1)'
      
        'ORDER BY D.ListNum,listnumr, D.ListType, D.ListDate, D.DateTop,D' +
        '.Dama,  D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,' +
        'D.AdmisMet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfQ3CalcFields
    Left = 386
    Top = 230
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfQ3ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object KshfQ3ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object KshfQ3Dama: TSmallintField
      FieldName = 'Dama'
    end
    object KshfQ3ListDate: TDateField
      FieldName = 'ListDate'
    end
    object KshfQ3DateTop: TDateField
      FieldName = 'DateTop'
    end
    object KshfQ3Total: TFloatField
      FieldName = 'Total'
    end
    object KshfQ3Toname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object KshfQ3AccType: TSmallintField
      FieldName = 'AccType'
      ReadOnly = True
    end
    object KshfQ3AccValue: TFloatField
      FieldName = 'AccValue'
      ReadOnly = True
    end
    object KshfQ3AccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object KshfQ3AdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object KshfQ3stampabs: TFloatField
      FieldName = 'stampabs'
    end
    object KshfQ3listnumr: TIntegerField
      FieldName = 'listnumr'
    end
    object KshfQ3AginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object KshfQ3StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfQ3Net: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
  end
  object KshfQ1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `AccList`'
      
        '  (`ListNum`, `ListType`, `ListDate`, `Total`, `AdmisMet`, `Tona' +
        'me`, `Dama`, `Sapa`, `AginNm`, `DateTop`)'
      'VALUES'
      
        '  (:`ListNum`, :`ListType`, :`ListDate`, :`Total`, :`AdmisMet`, ' +
        ':`Toname`, :`Dama`, :`Sapa`, :`AginNm`, :`DateTop`)')
    SQLDelete.Strings = (
      'DELETE FROM `AccList`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`')
    SQLUpdate.Strings = (
      'UPDATE `AccList`'
      'SET'
      
        '  `ListNum` = :`ListNum`, `ListType` = :`ListType`, `ListDate` =' +
        ' :`ListDate`, `Total` = :`Total`, `AdmisMet` = :`AdmisMet`, `Ton' +
        'ame` = :`Toname`, `Dama` = :`Dama`, `Sapa` = :`Sapa`, `AginNm` =' +
        ' :`AginNm`, `DateTop` = :`DateTop`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`')
    SQLLock.Strings = (
      'SELECT * FROM AccList'
      'WHERE'
      '  `ListNum` = :`Old_ListNum` AND `ListType` = :`Old_ListType`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccList`.`ListNum`, `AccList`.`ListType`, `AccList`.`Lis' +
        'tDate`, `AccList`.`Total`, `AccList`.`AdmisMet`, `AccList`.`Tona' +
        'me`, `AccList`.`Dama`, `AccList`.`Sapa`, `AccList`.`AginNm`, `Ac' +
        'cList`.`DateTop` FROM `AccList`'
      'WHERE'
      
        '  AccList.`ListNum` = :`ListNum` AND AccList.`ListType` = :`List' +
        'Type`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.Dama ,D.AginNm, D.ListType, D.ListD' +
        'ate, D.DateTop, D.Total, D.Toname, D.Sapa, D1.AccType, D1.AccVal' +
        'ue, D1.AccTotal,D.AdmisMet,D.Stamp,d.stampabs'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'or(D.ListType =:Type2)'
      'or(D.ListType =:Type3))'
      'AND (D.DateTop >=:FromDate)'
      'AND (D.DateTop <=:ToDate)'
      'AND (D1.AccNum = D.ListNum)'
      'AND (D1.AccTotal <> 0.0)'
      'AND (D1.ListType = D.ListType)'
      
        'ORDER BY D.AginNm,D.ListNum, D.ListType, D.ListDate, D.Dama ,  D' +
        '.DateTop,  D.Total, D.Toname, D.Sapa, D1.AccType, D1.AccValue, D' +
        '1.AccTotal,D.AdmisMet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 390
    Top = 90
    ParamData = <
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
      end
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object KshfQ1ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
      Origin = 'PORTS."AccList".ListNum'
    end
    object KshfQ1AginNm: TIntegerField
      FieldName = 'AginNm'
      Origin = 'PORTS."AccList".AginNm'
    end
    object KshfQ1ListType: TSmallintField
      FieldName = 'ListType'
      Origin = 'PORTS."AccList".ListType'
    end
    object KshfQ1ListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."AccList".ListDate'
    end
    object KshfQ1DateTop: TDateField
      FieldName = 'DateTop'
      Origin = 'PORTS."AccList".DateTop'
    end
    object KshfQ1Total: TFloatField
      FieldName = 'Total'
      Origin = 'PORTS."AccList".Total'
    end
    object KshfQ1StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfQ1Toname: TWideStringField
      FieldName = 'Toname'
      Origin = 'PORTS."AccList".Toname'
      Size = 100
    end
    object KshfQ1AccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."AccDet".AccType'
      ReadOnly = True
    end
    object KshfQ1AccValue: TFloatField
      FieldName = 'AccValue'
      Origin = 'PORTS."AccDet".AccValue'
      ReadOnly = True
    end
    object KshfQ1AccTotal: TFloatField
      FieldName = 'AccTotal'
      Origin = 'PORTS."AccDet".AccTotal'
      ReadOnly = True
    end
    object KshfQ1AdmisMet: TSmallintField
      FieldName = 'AdmisMet'
      Origin = 'PORTS."AccList".AdmisMet'
    end
    object KshfQ1Sapa: TSmallintField
      FieldName = 'Sapa'
      Origin = 'PORTS."AccList".Sapa'
    end
    object KshfQ1Dama: TSmallintField
      FieldName = 'Dama'
      Origin = 'PORTS."AccList".Dama'
    end
    object KshfQ1Stamp: TFloatField
      FieldName = 'Stamp'
    end
    object KshfQ1stampabs: TFloatField
      FieldName = 'stampabs'
    end
  end
  object KshfQ4: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.ListType,D.Dama, D.ListDate, D.Date' +
        'Top, D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.A' +
        'dmisMet,d.stampabs,d.listnumr,D.AginNm,d.deldate'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'OR(D.ListType =:Type2)'
      'OR(D.ListType =:Type3)'
      'OR(D.ListType =:Type4)'
      'OR(D.ListType =:Type5)'
      'OR(D.ListType =:Type6)'
      'OR(D.ListType =:Type7)'
      'OR(D.ListType =:Type8))'
      ''
      ' AND'
      '(D.DelDate >=:FromDate)'
      ' AND (D.DelDate <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.AccTotal <> 0.0)'
      'and (D.DelF=3)'
      ''
      ''
      
        'ORDER BY D.ListNum,listnumr, D.ListType, D.ListDate, D.DateTop,D' +
        '.Dama,  D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,' +
        'D.AdmisMet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfQ4CalcFields
    Left = 386
    Top = 300
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfQ4ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object KshfQ4ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object KshfQ4Dama: TSmallintField
      FieldName = 'Dama'
    end
    object KshfQ4ListDate: TDateField
      FieldName = 'ListDate'
    end
    object KshfQ4DateTop: TDateField
      FieldName = 'DateTop'
    end
    object KshfQ4Total: TFloatField
      FieldName = 'Total'
    end
    object KshfQ4Toname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object KshfQ4AccType: TSmallintField
      FieldName = 'AccType'
      ReadOnly = True
    end
    object KshfQ4AccValue: TFloatField
      FieldName = 'AccValue'
      ReadOnly = True
    end
    object KshfQ4AccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object KshfQ4AdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object KshfQ4stampabs: TFloatField
      FieldName = 'stampabs'
    end
    object KshfQ4listnumr: TIntegerField
      FieldName = 'listnumr'
    end
    object KshfQ4AginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object KshfQ4StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfQ4Net: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfQ4deldate: TDateField
      FieldName = 'deldate'
    end
  end
  object KshfDelQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.ListType,D.Dama, D.ListDate, D.Date' +
        'Top, D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.A' +
        'dmisMet,D.StampAbs,D.AlterBill,ListNumR'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'OR(D.ListType =:Type2)'
      'OR(D.ListType =:Type3)'
      'OR(D.ListType =:Type4)'
      'OR(D.ListType =:Type5)'
      'OR(D.ListType =:Type6)'
      'OR(D.ListType =:Type7)'
      'OR(D.ListType =:Type8))'
      ' AND (D.DelDate >=:FromDate)'
      ' AND (D.DelDate <=:ToDate)'
      ' AND (D1.AccTotal <> 0.0)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      'and(d.delf=:DelF)'
      
        'ORDER BY D.ListNum, D.ListType, D.ListDate, D.DateTop,D.Dama,  D' +
        '.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.AdmisMe' +
        't')
    OnCalcFields = KshfDelQCalcFields
    Left = 386
    Top = 510
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
      end
      item
        DataType = ftSmallint
        Name = 'DelF'
        ParamType = ptInput
        Value = nil
      end>
    object KshfDelQListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object KshfDelQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object KshfDelQDama: TSmallintField
      FieldName = 'Dama'
    end
    object KshfDelQListDate: TDateField
      FieldName = 'ListDate'
    end
    object KshfDelQDateTop: TDateField
      FieldName = 'DateTop'
    end
    object KshfDelQTotal: TFloatField
      FieldName = 'Total'
    end
    object KshfDelQToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object KshfDelQAccType: TSmallintField
      FieldName = 'AccType'
      ReadOnly = True
    end
    object KshfDelQAccValue: TFloatField
      FieldName = 'AccValue'
      ReadOnly = True
    end
    object KshfDelQAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object KshfDelQAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object KshfDelQStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object KshfDelQAlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object KshfDelQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfDelQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfDelQListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
  end
  object KshfMlhg1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `Attach`'
      
        '  (`AccType`, `AttachNum`, `AttachDate`, `AttachValue`, `Met`, `' +
        'AginNm`)'
      'VALUES'
      
        '  (:`AccType`, :`AttachNum`, :`AttachDate`, :`AttachValue`, :`Me' +
        't`, :`AginNm`)')
    SQLDelete.Strings = (
      'DELETE FROM `Attach`'
      'WHERE'
      '  `AccType` = :`Old_AccType` AND `AttachNum` = :`Old_AttachNum`')
    SQLUpdate.Strings = (
      'UPDATE `Attach`'
      'SET'
      
        '  `AccType` = :`AccType`, `AttachNum` = :`AttachNum`, `AttachDat' +
        'e` = :`AttachDate`, `AttachValue` = :`AttachValue`, `Met` = :`Me' +
        't`, `AginNm` = :`AginNm`'
      'WHERE'
      '  `AccType` = :`Old_AccType` AND `AttachNum` = :`Old_AttachNum`')
    SQLLock.Strings = (
      'SELECT * FROM Attach'
      'WHERE'
      '  `AccType` = :`Old_AccType` AND `AttachNum` = :`Old_AttachNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Attach`.`AccType`, `Attach`.`AttachNum`, `Attach`.`Attac' +
        'hDate`, `Attach`.`AttachValue`, `Attach`.`Met`, `Attach`.`AginNm' +
        '` FROM `Attach`'
      'WHERE'
      
        '  Attach.`AccType` = :`AccType` AND Attach.`AttachNum` = :`Attac' +
        'hNum`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.AttachDate,D.AccType, D.AginNm, D.AttachNum, D' +
        '1.Acctype, D1.Accvalue, D1.AccTotal,D.AttachValue,D.Met,d.stampa' +
        'bs,d.stampflag'
      'FROM Attach D, AttachD D1'
      'WHERE'
      '((D.AccType =:Type1)'
      'or (D.AccType =:Type2)'
      'or (D.AccType =:Type3))'
      ' AND (D.AttachDate >=:FromDate)'
      ' AND (D.AttachDate <=:ToDate)'
      ''
      ' AND (D1.ListNum = D.ListNum)'
      ' AND (D1.AttachNum = D.AttachNum)'
      ' AND (D1.AccTotal <> 0.0)'
      
        'ORDER BY D.AccType, D.AttachNum, D.AginNm, D1.Acctype, D1.Accval' +
        'ue, D1.AccTotal,D.AttachValue')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 386
    Top = 440
    ParamData = <
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
      end
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object KshfMlhg1AttachDate: TDateField
      FieldName = 'AttachDate'
      Origin = 'PORTS."Attach".AttachDate'
    end
    object KshfMlhg1AccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."Attach".AccType'
    end
    object KshfMlhg1AginNm: TSmallintField
      FieldName = 'AginNm'
      Origin = 'PORTS."Attach".AginNm'
    end
    object KshfMlhg1AttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
      Origin = 'PORTS."Attach".AttachNum'
    end
    object KshfMlhg1Acctype_1: TSmallintField
      FieldName = 'Acctype_1'
      Origin = 'PORTS."AttachD".Acctype'
      ReadOnly = True
    end
    object KshfMlhg1Accvalue: TFloatField
      FieldName = 'Accvalue'
      Origin = 'PORTS."AttachD".Accvalue'
      ReadOnly = True
    end
    object KshfMlhg1AccTotal: TFloatField
      FieldName = 'AccTotal'
      Origin = 'PORTS."AttachD".AccTotal'
      ReadOnly = True
    end
    object KshfMlhg1AttachValue: TFloatField
      FieldName = 'AttachValue'
      Origin = 'PORTS."Attach".AttachValue'
    end
    object KshfMlhg1Met: TSmallintField
      FieldName = 'Met'
      Origin = 'PORTS."Attach".Met'
    end
    object KshfMlhg1Net: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfMlhg1StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfMlhg1stampabs: TFloatField
      FieldName = 'stampabs'
    end
    object KshfMlhg1stampflag: TSmallintField
      FieldName = 'stampflag'
    end
  end
  object KshfSumQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT  total,stamp,dama,stampabs'
      'FROM AccList'
      'WHERE'
      '((ListType = :type1)'
      'OR(ListType = :Type2)'
      'OR(ListType = :Type3)'
      'OR(ListType = :Type4)'
      'OR(ListType = :Type5)'
      'OR(ListType = :Type6)'
      'OR(ListType = :Type7)'
      'OR(ListType = :Type8))'
      ' AND (DateTop >= :FromDate)'
      ' AND (DateTop <= :ToDate)'
      'And((Delf<>2)and(delf<>3)or(delf is null))'
      'and(cutf<>1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfSumQCalcFields
    Left = 385
    Top = 580
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'type1'
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfSumQtotal: TFloatField
      FieldName = 'total'
    end
    object KshfSumQstamp: TFloatField
      FieldName = 'stamp'
    end
    object KshfSumQdama: TSmallintField
      FieldName = 'dama'
    end
    object KshfSumQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfSumQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfSumQstampabs: TFloatField
      FieldName = 'stampabs'
    end
  end
  object AlterQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListNum, D.ListType,D.Dama, D.ListDate, D.Date' +
        'Top, D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.A' +
        'dmisMet,D.StampAbs,D.AlterBill,D.DisCount,D.ListNumR'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '((D.ListType =:Type1)'
      'OR(D.ListType =:Type2)'
      'OR(D.ListType =:Type3)'
      'OR(D.ListType =:Type4)'
      'OR(D.ListType =:Type5)'
      'OR(D.ListType =:Type6)'
      'OR(D.ListType =:Type7))'
      ' AND (D.DelDate >=:FromDate)'
      ' AND (D.DelDate <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      'and(d.delf=:DelF)'
      'and(d.cutf=1)'
      
        'ORDER BY D.ListNum, D.ListType, D.ListDate, D.DateTop,D.Dama,  D' +
        '.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,D.AdmisMe' +
        't')
    OnCalcFields = AlterQCalcFields
    Left = 384
    Top = 645
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
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
      end
      item
        DataType = ftSmallint
        Name = 'DelF'
        ParamType = ptInput
        Value = nil
      end>
    object AlterQListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object AlterQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object AlterQDama: TSmallintField
      FieldName = 'Dama'
    end
    object AlterQListDate: TDateField
      FieldName = 'ListDate'
    end
    object AlterQDateTop: TDateField
      FieldName = 'DateTop'
    end
    object AlterQTotal: TFloatField
      FieldName = 'Total'
    end
    object AlterQToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object AlterQAccType: TSmallintField
      FieldName = 'AccType'
      ReadOnly = True
    end
    object AlterQAccValue: TFloatField
      FieldName = 'AccValue'
      ReadOnly = True
    end
    object AlterQAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object AlterQAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object AlterQStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object AlterQAlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object AlterQnet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'net'
      Calculated = True
    end
    object AlterQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object AlterQDisCount: TFloatField
      FieldName = 'DisCount'
    end
    object AlterQListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
  end
  object KshfSumAttachQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT  acclist.stamp,attach.attachvalue,attach.stampabs'
      
        'FROM AccList inner join attach on(acclist.listtype=attach.acctyp' +
        'e and acclist.listnum=attach.listnum)'
      'WHERE'
      '((acclist.ListType = :type1)'
      'OR(acclist.ListType = :Type2)'
      'OR(acclist.ListType = :Type3)'
      'OR(acclist.ListType = :Type4)'
      'OR(acclist.ListType = :Type5)'
      'OR(acclist.ListType = :Type6)'
      'OR(acclist.ListType = :Type7)'
      'OR(acclist.ListType = :Type8))'
      ' AND (attach.attachdate >= :FromDate)'
      ' AND (attach.attachdate <= :ToDate)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfSumAttachQCalcFields
    Left = 130
    Top = 564
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'type1'
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfSumAttachQstamp: TFloatField
      FieldName = 'stamp'
    end
    object KshfSumAttachQattachvalue: TFloatField
      FieldName = 'attachvalue'
      ReadOnly = True
    end
    object KshfSumAttachQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfSumAttachQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfSumAttachQstampabs: TFloatField
      FieldName = 'stampabs'
      ReadOnly = True
    end
  end
  object KshfDelSumQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT  total,stamp,dama,stampabs'
      'FROM AccList'
      'WHERE'
      '((ListType = :type1)'
      'OR(ListType = :Type2)'
      'OR(ListType = :Type3)'
      'OR(ListType = :Type4)'
      'OR(ListType = :Type5)'
      'OR(ListType = :Type6)'
      'OR(ListType = :Type7)'
      'OR(ListType = :Type8))'
      ' AND (DelDate >= :FromDate)'
      ' AND (DelDate <= :ToDate)'
      'And(Delf=1)')
    OnCalcFields = KshfDelSumQCalcFields
    Left = 130
    Top = 630
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'type1'
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object KshfDelSumQtotal: TFloatField
      FieldName = 'total'
    end
    object KshfDelSumQstamp: TFloatField
      FieldName = 'stamp'
    end
    object KshfDelSumQdama: TSmallintField
      FieldName = 'dama'
    end
    object KshfDelSumQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfDelSumQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfDelSumQstampabs: TFloatField
      FieldName = 'stampabs'
    end
  end
  object ListsQ: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `AccList`'
      
        '  (`ListType`, `ListDate`, `WeSpace`, `Total`, `Stamp`, `Toname`' +
        ', `DateTop`)'
      'VALUES'
      
        '  (:`ListType`, :`ListDate`, :`WeSpace`, :`Total`, :`Stamp`, :`T' +
        'oname`, :`DateTop`)')
    SQLDelete.Strings = (
      'DELETE FROM `AccList`'
      'WHERE'
      '  `ListType` = :`Old_ListType`')
    SQLUpdate.Strings = (
      'UPDATE `AccList`'
      'SET'
      
        '  `ListType` = :`ListType`, `ListDate` = :`ListDate`, `WeSpace` ' +
        '= :`WeSpace`, `Total` = :`Total`, `Stamp` = :`Stamp`, `Toname` =' +
        ' :`Toname`, `DateTop` = :`DateTop`'
      'WHERE'
      '  `ListType` = :`Old_ListType`')
    SQLLock.Strings = (
      'SELECT * FROM AccList'
      'WHERE'
      '  `ListType` = :`Old_ListType`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccList`.`ListType`, `AccList`.`ListDate`, `AccList`.`We' +
        'Space`, `AccList`.`Total`, `AccList`.`Stamp`, `AccList`.`Toname`' +
        ', `AccList`.`DateTop` FROM `AccList`'
      'WHERE'
      '  AccList.`ListType` = :`ListType`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListType, D.ListDate, D.DateTop,  D.WeSpace, D' +
        '.Total, D.Stamp, D.Toname, D1.AccNum, D1.ListType, SUM(D1.AccTot' +
        'al) AS acc'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '(D.DateTop >=:FromDate)'
      ' AND (D.DateTop <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.ListType >=:FromType)'
      ' AND (D1.ListType <=:Totype)'
      
        'GROUP BY D.ListType, D.ListDate, D.DateTop,  D.WeSpace, D.Total,' +
        ' D.Stamp, D.Toname, D1.AccNum, D1.ListType'
      
        'ORDER BY D.ListType, D.ListDate, D.DateTop,  D.WeSpace, D.Total,' +
        ' D.Stamp, D.Toname, D1.AccNum, D1.ListType')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = ListsQCalcFields
    Left = 516
    Top = 20
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'FromType'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Totype'
        ParamType = ptInput
        Value = nil
      end>
    object ListsQListType: TSmallintField
      FieldName = 'ListType'
      Origin = 'PORTS."AccList".ListType'
    end
    object ListsQListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."AccList".ListDate'
    end
    object ListsQWeSpace: TFloatField
      FieldName = 'WeSpace'
      Origin = 'PORTS."AccList".WeSpace'
    end
    object ListsQTotal: TFloatField
      FieldName = 'Total'
      Origin = 'PORTS."AccList".Total'
    end
    object ListsQStamp: TFloatField
      FieldName = 'Stamp'
      Origin = 'PORTS."AccList".Stamp'
    end
    object ListsQToname: TWideStringField
      FieldName = 'Toname'
      Origin = 'PORTS."AccList".Toname'
      Size = 100
    end
    object ListsQAccNum: TIntegerField
      FieldName = 'AccNum'
      Origin = 'PORTS."AccDet".AccNum'
    end
    object ListsQListType_1: TSmallintField
      FieldName = 'ListType_1'
      Origin = 'PORTS."AccDet".ListType'
    end
    object ListsQacc: TFloatField
      FieldName = 'acc'
      Origin = 'PORTS."AccDet".AccTotal'
    end
    object ListsQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object ListsQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object ListsQTypeNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'TypeNm'
      Size = 15
      Calculated = True
    end
    object ListsQDateTop: TDateField
      FieldName = 'DateTop'
    end
  end
  object ListsAllQ: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `AccList`'
      '  (`ListType`, `ListDate`, `Stamp`, `DateTop`)'
      'VALUES'
      '  (:`ListType`, :`ListDate`, :`Stamp`, :`DateTop`)')
    SQLDelete.Strings = (
      'DELETE FROM `AccList`'
      'WHERE'
      '  `ListType` = :`Old_ListType`')
    SQLUpdate.Strings = (
      'UPDATE `AccList`'
      'SET'
      
        '  `ListType` = :`ListType`, `ListDate` = :`ListDate`, `Stamp` = ' +
        ':`Stamp`, `DateTop` = :`DateTop`'
      'WHERE'
      '  `ListType` = :`Old_ListType`')
    SQLLock.Strings = (
      'SELECT * FROM AccList'
      'WHERE'
      '  `ListType` = :`Old_ListType`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccList`.`ListType`, `AccList`.`ListDate`, `AccList`.`St' +
        'amp`, `AccList`.`DateTop` FROM `AccList`'
      'WHERE'
      '  AccList.`ListType` = :`ListType`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.ListType,D.ListDate, D.DateTop, D.Stamp, SUM(D' +
        '1.AccTotal) AS AccTotal'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '(D.DateTop >=:FromDate)'
      ' AND (D.DateTop <=:ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.ListType >=:FromType)'
      ' AND (D1.ListType <=:ToType)'
      'GROUP BY D.ListType,D.ListDate, D.DateTop, D.Stamp'
      'ORDER BY D.ListType,D.ListDate, D.DateTop, D.Stamp')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = ListsAllQCalcFields
    Left = 516
    Top = 100
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'FromType'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToType'
        ParamType = ptInput
        Value = nil
      end>
    object ListsAllQListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."AccList".ListDate'
    end
    object ListsAllQAccTotal: TFloatField
      FieldName = 'AccTotal'
      Origin = 'PORTS."AccDet".AccTotal'
      DisplayFormat = '0.000'
    end
    object ListsAllQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object ListsAllQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object ListsAllQListType: TSmallintField
      FieldName = 'ListType'
      Origin = 'PORTS."AccList".ListType'
    end
    object ListsAllQTypeNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'TypeNm'
      Size = 15
      Calculated = True
    end
    object ListsAllQStamp: TFloatField
      FieldName = 'Stamp'
      Origin = 'PORTS."AccList".Stamp'
    end
  end
  object FrListsQ: TfrxDBDataset
    UserName = 'FrListsQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListType=ListType'
      'ListDate=ListDate'
      'WeSpace=WeSpace'
      'Total=Total'
      'Stamp=Stamp'
      'Toname=Toname'
      'AccNum=AccNum'
      'ListType_1=ListType_1'
      'acc=acc'
      'StampNet=StampNet'
      'Net=Net'
      'TypeNm=TypeNm')
    DataSet = ListsQ
    BCDToCurrency = False
    Left = 596
    Top = 20
  end
  object FrListsAllQ: TfrxDBDataset
    UserName = 'FrListsAllQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListDate=ListDate'
      'AccTotal=AccTotal'
      'StampNet=StampNet'
      'Net=Net'
      'ListType=ListType'
      'TypeNm=TypeNm'
      'Stamp=Stamp')
    DataSet = ListsAllQ
    BCDToCurrency = False
    Left = 596
    Top = 100
  end
  object KshfRsom: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `AccDet`'
      '  (`AccNum`, `AccType`, `AccValue`, `AccTotal`)'
      'VALUES'
      '  (:`AccNum`, :`AccType`, :`AccValue`, :`AccTotal`)')
    SQLDelete.Strings = (
      'DELETE FROM `AccDet`'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`')
    SQLUpdate.Strings = (
      'UPDATE `AccDet`'
      'SET'
      
        '  `AccNum` = :`AccNum`, `AccType` = :`AccType`, `AccValue` = :`A' +
        'ccValue`, `AccTotal` = :`AccTotal`'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`')
    SQLLock.Strings = (
      'SELECT * FROM AccDet'
      'WHERE'
      '  `AutoNm` = :`Old_AutoNm`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AccDet`.`AccNum`, `AccDet`.`AccType`, `AccDet`.`AccValue' +
        '`, `AccDet`.`AccTotal` FROM `AccDet`'
      'WHERE'
      '  AccDet.`AutoNm` = :`AutoNm`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT d.AccNum, d.AccType, D1.DateTop,  d.AccValue, D1' +
        '.ListNum, D1.ListDate, D1.To, D1.ShipNum, D1.ArriveDate, D1.EndE' +
        'mpDate, D1.GoodsDesc, D1.GoodsQty, D1.ShipBillNum, D1.WeSpace, D' +
        '1.Total, D1.AdmisMet, D1.Stamp, D1.Unit,d.acctotal,d1.ToName'
      'FROM AccDet d, AccList D1'
      'WHERE'
      '(D1.ListNum = d.AccNum)'
      'AND(d.ListType=d1.ListType)'
      'And(D.ListType =3)'
      ' AND (D1.DateTop >=:FromDate)'
      ' AND (D1.DateTop <=:ToDate)'
      'AND  (d.acctotal<>0)'
      'And(D.AccType<>15)'
      'And(D.AccType<>16)'
      'And(D.AccType<>17)'
      'And(D.AccType<>18)'
      'And(D.AccType<>19)'
      'And(D.AccType<>20)'
      'And(D.AccType<>7)'
      'And(D.AccType<>22)'
      'And(D.AccType<>32)'
      'And(D.AccType<>33)'
      'And(D.AccType<>34)'
      ''
      
        'ORDER BY d.AccNum, d.AccType, d.AccValue, D1.DateTop, D1.ListNum' +
        ', D1.ListDate, D1.To, D1.ShipNum, D1.ArriveDate, D1.EndEmpDate, ' +
        'D1.GoodsDesc, D1.GoodsQty, D1.ShipBillNum, D1.WeSpace, D1.Total,' +
        ' D1.AdmisMet, D1.Stamp, D1.Unit,d1.ToName')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfRsomCalcFields
    Left = 516
    Top = 180
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object KshfRsomAccNum: TIntegerField
      FieldName = 'AccNum'
      Origin = 'PORTS."AccDet".AccNum'
    end
    object KshfRsomAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."AccDet".AccType'
    end
    object KshfRsomAccValue: TFloatField
      FieldName = 'AccValue'
      Origin = 'PORTS."AccDet".AccValue'
    end
    object KshfRsomListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
      Origin = 'PORTS."AccList".ListNum'
    end
    object KshfRsomListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."AccList".ListDate'
    end
    object KshfRsomTo: TSmallintField
      FieldName = 'To'
      Origin = 'PORTS."AccList".To'
    end
    object KshfRsomShipNum: TSmallintField
      FieldName = 'ShipNum'
      Origin = 'PORTS."AccList".ShipNum'
    end
    object KshfRsomArriveDate: TDateField
      FieldName = 'ArriveDate'
      Origin = 'PORTS."AccList".ArriveDate'
    end
    object KshfRsomEndEmpDate: TDateField
      FieldName = 'EndEmpDate'
      Origin = 'PORTS."AccList".EndEmpDate'
    end
    object KshfRsomGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
      Origin = 'PORTS."AccList".GoodsDesc'
    end
    object KshfRsomGoodsQty: TFloatField
      FieldName = 'GoodsQty'
      Origin = 'PORTS."AccList".GoodsQty'
    end
    object KshfRsomShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
      Origin = 'PORTS."AccList".ShipBillNum'
    end
    object KshfRsomWeSpace: TFloatField
      FieldName = 'WeSpace'
      Origin = 'PORTS."AccList".WeSpace'
    end
    object KshfRsomTotal: TFloatField
      FieldName = 'Total'
      Origin = 'PORTS."AccList".Total'
    end
    object KshfRsomAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
      Origin = 'PORTS."AccList".AdmisMet'
    end
    object KshfRsomStamp: TFloatField
      FieldName = 'Stamp'
      Origin = 'PORTS."AccList".Stamp'
    end
    object KshfRsomUnit: TSmallintField
      FieldName = 'Unit'
      Origin = 'PORTS."AccList".Unit'
    end
    object KshfRsomacctotal: TFloatField
      FieldName = 'acctotal'
      Origin = 'PORTS."AccDet".AccTotal'
    end
    object KshfRsomToName: TWideStringField
      FieldName = 'ToName'
      Origin = 'PORTS."AccList".Toname'
      Size = 100
    end
    object KshfRsomNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfRsomStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfRsomTypeNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 50
      Lookup = True
    end
    object KshfRsomShipNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'ShipNm'
      Size = 10
      Calculated = True
    end
  end
  object KshfRsomM: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT d.AccNum, d.AccType, d.AccValue, D1.ListNum, D1.' +
        'ListDate, D1.To, D1.ShipNum, D1.ArriveDate, D1.EndEmpDate, D1.Go' +
        'odsDesc, D1.GoodsQty, D1.ShipBillNum, D1.WeSpace, D1.Total, D1.A' +
        'dmisMet, D1.Stamp, D1.Unit,d.acctotal,d1.ToName,D1.Month'
      'FROM AccDet d, AccList D1'
      'WHERE'
      '(D1.ListNum = d.AccNum)'
      'AND(d.ListType=d1.ListType)'
      'And(D.ListType =3)'
      ' AND (D1.Month >=:FromMonth)'
      ' AND (D1.MOnth <=:ToMonth)'
      'AND  (d.acctotal<>0)'
      'And(D.AccType<>15)'
      'And(D.AccType<>16)'
      'And(D.AccType<>17)'
      'And(D.AccType<>18)'
      'And(D.AccType<>19)'
      'And(D.AccType<>20)'
      'And(D.AccType<>7)'
      'And(D.AccType<>22)'
      'And(D.AccType<>32)'
      'And(D.AccType<>33)'
      'And(D.AccType<>34)'
      
        'ORDER BY d.AccNum, d.AccType, d.AccValue, D1.ListNum, D1.ListDat' +
        'e, D1.To, D1.ShipNum, D1.ArriveDate, D1.EndEmpDate, D1.GoodsDesc' +
        ', D1.GoodsQty, D1.ShipBillNum, D1.WeSpace, D1.Total, D1.AdmisMet' +
        ', D1.Stamp, D1.Unit,d1.ToName,D1.Month')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = KshfRsomMCalcFields
    Left = 516
    Top = 260
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end>
    object KshfRsomMAccNum: TIntegerField
      FieldName = 'AccNum'
      Origin = 'PORTS."AccDet".AccNum'
    end
    object KshfRsomMAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."AccDet".AccType'
    end
    object KshfRsomMAccValue: TFloatField
      FieldName = 'AccValue'
      Origin = 'PORTS."AccDet".AccValue'
    end
    object KshfRsomMListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
      Origin = 'PORTS."AccList".ListNum'
    end
    object KshfRsomMListDate: TDateField
      FieldName = 'ListDate'
      Origin = 'PORTS."AccList".ListDate'
    end
    object KshfRsomMTo: TSmallintField
      FieldName = 'To'
      Origin = 'PORTS."AccList".To'
    end
    object KshfRsomMShipNum: TSmallintField
      FieldName = 'ShipNum'
      Origin = 'PORTS."AccList".ShipNum'
    end
    object KshfRsomMArriveDate: TDateField
      FieldName = 'ArriveDate'
      Origin = 'PORTS."AccList".ArriveDate'
    end
    object KshfRsomMEndEmpDate: TDateField
      FieldName = 'EndEmpDate'
      Origin = 'PORTS."AccList".EndEmpDate'
    end
    object KshfRsomMGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
      Origin = 'PORTS."AccList".GoodsDesc'
    end
    object KshfRsomMGoodsQty: TFloatField
      FieldName = 'GoodsQty'
      Origin = 'PORTS."AccList".GoodsQty'
    end
    object KshfRsomMShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
      Origin = 'PORTS."AccList".ShipBillNum'
    end
    object KshfRsomMWeSpace: TFloatField
      FieldName = 'WeSpace'
      Origin = 'PORTS."AccList".WeSpace'
    end
    object KshfRsomMTotal: TFloatField
      FieldName = 'Total'
      Origin = 'PORTS."AccList".Total'
    end
    object KshfRsomMAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
      Origin = 'PORTS."AccList".AdmisMet'
    end
    object KshfRsomMStamp: TFloatField
      FieldName = 'Stamp'
      Origin = 'PORTS."AccList".Stamp'
    end
    object KshfRsomMUnit: TSmallintField
      FieldName = 'Unit'
      Origin = 'PORTS."AccList".Unit'
    end
    object KshfRsomMacctotal: TFloatField
      FieldName = 'acctotal'
      Origin = 'PORTS."AccDet".AccTotal'
    end
    object KshfRsomMToName: TWideStringField
      FieldName = 'ToName'
      Origin = 'PORTS."AccList".Toname'
      Size = 100
    end
    object KshfRsomMMonth: TSmallintField
      FieldName = 'Month'
      Origin = 'PORTS."AccList".Month'
    end
    object KshfRsomMNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object KshfRsomMStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object KshfRsomMMonthNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'MonthNm'
      Size = 8
      Calculated = True
    end
    object KshfRsomMTypeNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
  end
  object FrKshfRsomM: TfrxDBDataset
    UserName = 'FrKshfRsomM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccNum=AccNum'
      'AccType=AccType'
      'AccValue=AccValue'
      'ListNum=ListNum'
      'ListDate=ListDate'
      'To=To'
      'ShipNum=ShipNum'
      'ArriveDate=ArriveDate'
      'EndEmpDate=EndEmpDate'
      'GoodsDesc=GoodsDesc'
      'GoodsQty=GoodsQty'
      'ShipBillNum=ShipBillNum'
      'WeSpace=WeSpace'
      'Total=Total'
      'AdmisMet=AdmisMet'
      'Stamp=Stamp'
      'Unit=Unit'
      'acctotal=acctotal'
      'ToName=ToName'
      'Month=Month'
      'Net=Net'
      'StampNet=StampNet'
      'MonthNm=MonthNm'
      'TypeNm=TypeNm')
    DataSet = KshfRsomM
    BCDToCurrency = False
    Left = 596
    Top = 260
  end
  object FrKshfRsom: TfrxDBDataset
    UserName = 'FrKshfRsom'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccNum=AccNum'
      'AccType=AccType'
      'AccValue=AccValue'
      'ListNum=ListNum'
      'ListDate=ListDate'
      'To=To'
      'ShipNum=ShipNum'
      'ArriveDate=ArriveDate'
      'EndEmpDate=EndEmpDate'
      'GoodsDesc=GoodsDesc'
      'GoodsQty=GoodsQty'
      'ShipBillNum=ShipBillNum'
      'WeSpace=WeSpace'
      'Total=Total'
      'AdmisMet=AdmisMet'
      'Stamp=Stamp'
      'Unit=Unit'
      'acctotal=acctotal'
      'ToName=ToName'
      'Net=Net'
      'StampNet=StampNet'
      'TypeNm=TypeNm'
      'ShipNm=ShipNm')
    DataSet = KshfRsom
    BCDToCurrency = False
    Left = 596
    Top = 180
  end
  object QMlhq: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `Attach`'
      
        '  (`AccType`, `ListNum`, `AttachNum`, `Listtype`, `AttachDate`, ' +
        '`AttachValue`, `Mezan`, `Kias`, `Qty`, `Remin`, `Electric`, `Dat' +
        'e2`, `Date3`, `WeeksBef`, `Date4`, `Weight`, `Unit`, `ReminDays`' +
        ', `Met`, `St1`, `St2`, `AddWeeks`, `Yyy`, `Date22`, `Oasve`, `Po' +
        'lesa`, `AginNm`)'
      'VALUES'
      
        '  (:`AccType`, :`ListNum`, :`AttachNum`, :`Listtype`, :`AttachDa' +
        'te`, :`AttachValue`, :`Mezan`, :`Kias`, :`Qty`, :`Remin`, :`Elec' +
        'tric`, :`Date2`, :`Date3`, :`WeeksBef`, :`Date4`, :`Weight`, :`U' +
        'nit`, :`ReminDays`, :`Met`, :`St1`, :`St2`, :`AddWeeks`, :`Yyy`,' +
        ' :`Date22`, :`Oasve`, :`Polesa`, :`AginNm`)')
    SQLDelete.Strings = (
      'DELETE FROM `Attach`'
      'WHERE'
      
        '  `AccType` = :`Old_AccType` AND `ListNum` = :`Old_ListNum` AND ' +
        '`AttachNum` = :`Old_AttachNum` AND `Listtype` = :`Old_Listtype`')
    SQLUpdate.Strings = (
      'UPDATE `Attach`'
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
        'ginNm` = :`AginNm`'
      'WHERE'
      
        '  `AccType` = :`Old_AccType` AND `ListNum` = :`Old_ListNum` AND ' +
        '`AttachNum` = :`Old_AttachNum` AND `Listtype` = :`Old_Listtype`')
    SQLLock.Strings = (
      'SELECT * FROM Attach'
      'WHERE'
      
        '  `AccType` = :`Old_AccType` AND `ListNum` = :`Old_ListNum` AND ' +
        '`AttachNum` = :`Old_AttachNum` AND `Listtype` = :`Old_Listtype`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Attach`.`AccType`, `Attach`.`ListNum`, `Attach`.`AttachN' +
        'um`, `Attach`.`Listtype`, `Attach`.`AttachDate`, `Attach`.`Attac' +
        'hValue`, `Attach`.`Mezan`, `Attach`.`Kias`, `Attach`.`Qty`, `Att' +
        'ach`.`Remin`, `Attach`.`Electric`, `Attach`.`Date2`, `Attach`.`D' +
        'ate3`, `Attach`.`WeeksBef`, `Attach`.`Date4`, `Attach`.`Weight`,' +
        ' `Attach`.`Unit`, `Attach`.`ReminDays`, `Attach`.`Met`, `Attach`' +
        '.`St1`, `Attach`.`St2`, `Attach`.`AddWeeks`, `Attach`.`Yyy`, `At' +
        'tach`.`Date22`, `Attach`.`Oasve`, `Attach`.`Polesa`, `Attach`.`A' +
        'ginNm` FROM `Attach`'
      'WHERE'
      
        '  Attach.`AccType` = :`AccType` AND Attach.`ListNum` = :`ListNum' +
        '` AND Attach.`AttachNum` = :`AttachNum` AND Attach.`Listtype` = ' +
        ':`Listtype`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT D.AccType, D.ListNum, D.AttachNum, D.Listtype, D' +
        '.AttachDate, D.AttachValue, D.Mezan, D.Kias, D.Qty, D.Remin, D.E' +
        'lectric, D.Date2, D.Date3, D.WeeksBef, D.Date4, D.Weight, D.Unit' +
        ', D.ReminDays, D.Met, D.St1, D.St2, D.AddWeeks, D.Yyy, D.Date22,' +
        ' D.Oasve, D.Polesa, D.AginNm, D1.ListType, D1.ListNum, D1.Attach' +
        'Num, D1.Acctype, D1.Accvalue, D1.AccTotal, D1.FromDate, D1.ToDat' +
        'e'
      'FROM Attach D, AttachD D1'
      ''
      'WHERE'
      '((D.AccType=:Type1) '
      'OR (D.AccType=:Type2))'
      ' AND (D.AttachDate >=:FromDate)'
      ' AND (D.AttachDate <=:ToDate)'
      ' AND (D1.AttachNum= D.AttachNum)'
      
        'ORDER BY D.AccType, D.ListNum, D.AttachNum, D.Listtype, D.Attach' +
        'Date, D.AttachValue, D.Mezan, D.Kias, D.Qty, D.Remin, D.Electric' +
        ', D.Date2, D.Date3, D.WeeksBef, D.Date4, D.Weight, D.Unit, D.Rem' +
        'inDays, D.Met, D.St1, D.St2, D.AddWeeks, D.Yyy, D.Date22, D.Oasv' +
        'e, D.Polesa, D.AginNm, D1.ListType, D1.ListNum, D1.AttachNum, D1' +
        '.Acctype, D1.Accvalue')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 510
    Top = 330
    ParamData = <
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
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object QMlhqAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."Attach".AccType'
    end
    object QMlhqListNum: TIntegerField
      FieldName = 'ListNum'
      Origin = 'PORTS."Attach".ListNum'
    end
    object QMlhqAttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
      Origin = 'PORTS."Attach".AttachNum'
    end
    object QMlhqListtype: TIntegerField
      FieldName = 'Listtype'
      Origin = 'PORTS."Attach".Listtype'
    end
    object QMlhqAttachDate: TDateField
      FieldName = 'AttachDate'
      Origin = 'PORTS."Attach".AttachDate'
    end
    object QMlhqAttachValue: TFloatField
      FieldName = 'AttachValue'
      Origin = 'PORTS."Attach".AttachValue'
    end
    object QMlhqMezan: TSmallintField
      FieldName = 'Mezan'
      Origin = 'PORTS."Attach".Mezan'
    end
    object QMlhqKias: TFloatField
      FieldName = 'Kias'
      Origin = 'PORTS."Attach".Kias'
    end
    object QMlhqQty: TFloatField
      FieldName = 'Qty'
      Origin = 'PORTS."Attach".Qty'
    end
    object QMlhqRemin: TSmallintField
      FieldName = 'Remin'
      Origin = 'PORTS."Attach".Remin'
    end
    object QMlhqElectric: TSmallintField
      FieldName = 'Electric'
      Origin = 'PORTS."Attach".Electric'
    end
    object QMlhqDate2: TDateField
      FieldName = 'Date2'
      Origin = 'PORTS."Attach".Date2'
    end
    object QMlhqDate3: TDateField
      FieldName = 'Date3'
      Origin = 'PORTS."Attach".Date3'
    end
    object QMlhqWeeksBef: TSmallintField
      FieldName = 'WeeksBef'
      Origin = 'PORTS."Attach".WeeksBef'
    end
    object QMlhqDate4: TDateField
      FieldName = 'Date4'
      Origin = 'PORTS."Attach".Date4'
    end
    object QMlhqWeight: TFloatField
      FieldName = 'Weight'
      Origin = 'PORTS."Attach".Weight'
    end
    object QMlhqUnit: TSmallintField
      FieldName = 'Unit'
      Origin = 'PORTS."Attach".Unit'
    end
    object QMlhqReminDays: TSmallintField
      FieldName = 'ReminDays'
      Origin = 'PORTS."Attach".ReminDays'
    end
    object QMlhqMet: TSmallintField
      FieldName = 'Met'
      Origin = 'PORTS."Attach".Met'
    end
    object QMlhqSt1: TSmallintField
      FieldName = 'St1'
      Origin = 'PORTS."Attach".St1'
    end
    object QMlhqSt2: TSmallintField
      FieldName = 'St2'
      Origin = 'PORTS."Attach".St2'
    end
    object QMlhqAddWeeks: TSmallintField
      FieldName = 'AddWeeks'
      Origin = 'PORTS."Attach".AddWeeks'
    end
    object QMlhqYyy: TIntegerField
      FieldName = 'Yyy'
      Origin = 'PORTS."Attach".Yyy'
    end
    object QMlhqDate22: TDateField
      FieldName = 'Date22'
      Origin = 'PORTS."Attach".Date22'
    end
    object QMlhqOasve: TWideStringField
      FieldName = 'Oasve'
      Origin = 'PORTS."Attach".Oasve'
      Size = 100
    end
    object QMlhqPolesa: TWideStringField
      FieldName = 'Polesa'
      Origin = 'PORTS."Attach".Polesa'
    end
    object QMlhqAginNm: TSmallintField
      FieldName = 'AginNm'
      Origin = 'PORTS."Attach".AginNm'
    end
    object QMlhqListType_1: TIntegerField
      FieldName = 'ListType_1'
      Origin = 'PORTS."AttachD".ListType'
    end
    object QMlhqListNum_1: TIntegerField
      FieldName = 'ListNum_1'
      Origin = 'PORTS."AttachD".ListNum'
    end
    object QMlhqAttachNum_1: TIntegerField
      FieldName = 'AttachNum_1'
      Origin = 'PORTS."AttachD".AttachNum'
    end
    object QMlhqAcctype_1: TSmallintField
      FieldName = 'Acctype_1'
      Origin = 'PORTS."AttachD".Acctype'
    end
    object QMlhqAccvalue: TFloatField
      FieldName = 'Accvalue'
      Origin = 'PORTS."AttachD".Accvalue'
    end
    object QMlhqAccTotal: TFloatField
      FieldName = 'AccTotal'
      Origin = 'PORTS."AttachD".AccTotal'
    end
    object QMlhqFromDate: TDateField
      FieldName = 'FromDate'
      Origin = 'PORTS."AttachD".FromDate'
    end
    object QMlhqToDate: TDateField
      FieldName = 'ToDate'
      Origin = 'PORTS."AttachD".ToDate'
    end
    object QMlhqFloatField: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object QMlhqFloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
  end
  object DQMlhq: TDataSource
    DataSet = QMlhq
    Left = 590
    Top = 330
  end
  object AttachStamp: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT sum(stampabs) as sumstamp'
      
        ' FROM attach where (attachdate>= :FromDate) and(attachdate<= :To' +
        'Date)'
      ' and ((acctype= :Type1)or(acctype= :Type2)or(acctype= :Type3)'
      
        'or(acctype= :Type4)or(acctype= :Type5)or(acctype= :Type6)or(acct' +
        'ype= :Type7)'
      'or(acctype= :Type8))')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 760
    Top = 20
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
        ParamType = ptInput
        Value = nil
      end>
    object AttachStampsumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object SumStamp2: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(StampAbs)as sumstamp FROM `acclist` WHERE (dateTop>= ' +
        ':FromDate)and(DateTop<= :ToDate)'
      
        ' and ((listtype= :Type1)or (listtype= :Type2)or(listtype= :Type3' +
        ')or(listtype= :Type4)'
      
        'or(listtype= :Type5)or(listtype= :Type6)or(listtype= :Type7)or(l' +
        'isttype= :Type8))and ((Delf is null)or(DelF<>2))')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 760
    Top = 90
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
        ParamType = ptInput
        Value = nil
      end>
    object SumStamp2sumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object SumStamp3: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT sum(StampAbs)as sumstamp FROM `acclist` WHERE'
      ' (dateTop>= :FromDate)and'
      '(DateTop<= :ToDate)'
      ' and ((listtype= :Type1)'
      'or (listtype= :Type2)'
      'or(listtype= :Type3)'
      'or(listtype= :Type4)'
      'or(listtype= :Type5)'
      'or(listtype= :Type6)'
      'or(listtype= :Type7)'
      'or(listtype= :Type8))'
      'and((delf<>3)or(delf is null))'
      'and(cutf<>1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 760
    Top = 170
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
        ParamType = ptInput
        Value = nil
      end>
    object SumStamp3sumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object SumStamp: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT sum(StampAbs)as sumstamp FROM `acclist` '
      'WHERE'
      ' ((listtype= :Type1)'
      ' or (listtype= :Type2)'
      ' or(listtype= :Type3)'
      ' or(listtype= :Type4)'
      ' or(listtype= :Type5)'
      ' or(listtype= :Type6)'
      ' or(listtype= :Type7)'
      ' or(listtype= :Type8))'
      ''
      'and '
      ' (dateTop>= :FromDate)'
      ' and(DateTop<= :ToDate)'
      '  and((delf<>3)or(delf is null))'
      'and(cutf<>1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 760
    Top = 230
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object SumStampsumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object StampAlterQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(StampAbs)as sumstamp,alterbill FROM `acclist` WHERE (' +
        'alterbill is not null)and(Deldate>= :FromDate)and(DelDate<= :ToD' +
        'ate)and(cutf=1)'
      
        ' and ((listtype= :Type1)or (listtype= :Type2)or(listtype= :Type3' +
        ')or(listtype= :Type4)'
      
        'or(listtype= :Type5)or(listtype= :Type6)or(listtype= :Type7)or(l' +
        'isttype= :Type8))and(DelF=2)')
    Left = 860
    Top = 20
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
        ParamType = ptInput
        Value = nil
      end>
    object StampAlterQsumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
    object StampAlterQalterbill: TIntegerField
      FieldName = 'alterbill'
    end
  end
  object StampDelQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(StampAbs)as sumstamp FROM `acclist` WHERE (DelF =1)an' +
        'd(DelDate>= :FromDate)and(DelDate<= :ToDate)'
      
        ' and ((listtype= :Type1)or (listtype= :Type2)or(listtype= :Type3' +
        ')or(listtype= :Type4)'
      
        'or(listtype= :Type5)or(listtype= :Type6)or(listtype= :Type7)or(l' +
        'isttype= :Type8))'
      'and(cutf<>1)')
    Left = 860
    Top = 90
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
        ParamType = ptInput
        Value = nil
      end>
    object StampDelQsumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object SumTotalQ2: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(total),sum(stampabs),sapa,aginnm'
      'from acclist'
      'WHERE'
      '((ListType = :Type1)'
      'or(ListType = :Type2)'
      'or(ListType = :Type3))'
      'AND (DateTop >= :FromDate)'
      'AND (DateTop <= :ToDate)'
      'and((delf<>3)or(delf is null))'
      'and(cutf<>1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 860
    Top = 230
    ParamData = <
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
    object SumTotalQ2sumtotal: TFloatField
      FieldName = 'sum(total)'
      ReadOnly = True
    end
    object SumTotalQ2sumstampabs: TFloatField
      FieldName = 'sum(stampabs)'
      ReadOnly = True
    end
    object SumTotalQ2sapa: TSmallintField
      FieldName = 'sapa'
    end
    object SumTotalQ2aginnm: TIntegerField
      FieldName = 'aginnm'
    end
  end
  object SumTotalQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(total),sum(stampabs),sapa,aginnm'
      'from acclist'
      'WHERE'
      '((ListType = :Type1)'
      'or(ListType = :Type2)'
      'or(ListType = :Type3))'
      'AND (DateTop >= :FromDate)'
      'AND (DateTop <= :ToDate)'
      'and((delf<>3)or(delf is null))'
      'and(cutf<>1)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 860
    Top = 160
    ParamData = <
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
    object SumTotalQsumtotal: TFloatField
      FieldName = 'sum(total)'
      ReadOnly = True
    end
    object SumTotalQsapa: TSmallintField
      FieldName = 'sapa'
    end
    object SumTotalQaginnm: TIntegerField
      FieldName = 'aginnm'
    end
    object SumTotalQsumstampabs: TFloatField
      FieldName = 'sum(stampabs)'
      ReadOnly = True
    end
  end
  object QSumA: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM `Listall`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `Listall`'
      'SET'
      '  `AccType` = :`AccType`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT * FROM Listall'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `Listall`.`AccType` FROM `Listall`'
      'WHERE'
      '  Listall.`NumAuto` = :`NumAuto`')
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT DISTINCT D.AccType, SUM(D.AccTotal),Stamp,Sum(D.StampAbs)'
      'FROM Listall D '
      ' WHERE ((D.ListDate >=:FromDate)'
      '        And(D.ListDate <=:ToDate))'
      'GROUP BY D.AccType'
      'ORDER BY D.AccType')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 760
    Top = 430
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
    object QSumAAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."ListAll".AccType'
    end
    object QSumAAccNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object QSumASUMDAccTotal: TFloatField
      FieldName = 'SUM(D.AccTotal)'
      ReadOnly = True
    end
    object QSumAStamp: TFloatField
      FieldName = 'Stamp'
    end
    object QSumASumDStampAbs: TFloatField
      FieldName = 'Sum(D.StampAbs)'
      ReadOnly = True
    end
  end
  object SumSubTotal: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT DISTINCT D.AccType, SUM(D.AccTotal),Stamp,Sum(D.StampAbs)'
      'FROM Listall D '
      ' WHERE ((D.ListDate >=:FromDate)'
      '        And(D.ListDate <=:ToDate))'
      'and(d.acctype<>14)'
      'GROUP BY D.AccType'
      'ORDER BY D.AccType')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 760
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
      end>
    object SumSubTotalAccType: TSmallintField
      FieldName = 'AccType'
    end
    object SumSubTotalSUMDAccTotal: TFloatField
      FieldName = 'SUM(D.AccTotal)'
      ReadOnly = True
    end
    object SumSubTotalStamp: TFloatField
      FieldName = 'Stamp'
    end
    object SumSubTotalSumDStampAbs: TFloatField
      FieldName = 'Sum(D.StampAbs)'
      ReadOnly = True
    end
  end
  object SumErshadQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT DISTINCT  sum(D1.AccTotal)as SumErshad'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '(D.ListType =3)'
      ' AND (D.DateTop >= :FromDate)'
      ' AND (D.DateTop <= :ToDate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.AccTotal <> 0.0)'
      
        ' AND (D1.AccType = 15 or D1.AccType = 16 or D1.AccType = 17 or D' +
        '1.AccType = 18 or D1.AccType = 19 or D1.AccType = 20)'
      ''
      'and(d.alterbill is null)'
      
        'ORDER BY D.ListNum,listnumr, D.ListType, D.ListDate, D.DateTop,D' +
        '.Dama,  D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,' +
        'D.AdmisMet')
    Left = 760
    Top = 300
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
    object SumErshadQSumErshad: TFloatField
      FieldName = 'SumErshad'
      ReadOnly = True
    end
  end
  object FQSumA: TfrxDBDataset
    UserName = 'FQSumA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'AccNm=AccNm'
      'SUM(D.AccTotal)=SUM(D.AccTotal)'
      'Stamp=Stamp'
      'Sum(D.StampAbs)=Sum(D.StampAbs)')
    DataSet = QSumA
    BCDToCurrency = False
    Left = 970
    Top = 450
  end
  object StampAlter2Q: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(StampAbs)as sumstamp FROM `acclist` WHERE (alterbill ' +
        'is not null)and (delf=3)'
      
        ' and ((listtype= :Type1)or (listtype= :Type2)or(listtype= :Type3' +
        ')or(listtype= :Type4)'
      
        'or(listtype= :Type5)or(listtype= :Type6)or(listtype= :Type7)or(l' +
        'isttype= :Type8))'
      'and(delDate>= :FromDate)and(DelDate<= :ToDate)')
    Left = 860
    Top = 300
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object StampAlter2Qsumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object FrSumSubTotal: TfrxDBDataset
    UserName = 'FrSumSubTotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'SUM(D.AccTotal)=SUM(D.AccTotal)'
      'Stamp=Stamp'
      'Sum(D.StampAbs)=Sum(D.StampAbs)')
    DataSet = SumSubTotal
    BCDToCurrency = False
    Left = 970
    Top = 380
  end
  object SumStamp4: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT sum(StampAbs)as sumstamp FROM `acclist` '
      'WHERE'
      ' ((listtype= :Type1)'
      ' or (listtype= :Type2)'
      ' or(listtype= :Type3)'
      ' or(listtype= :Type4)'
      ' or(listtype= :Type5)'
      ' or(listtype= :Type6)'
      ' or(listtype= :Type7)'
      ' or(listtype= :Type8))'
      ''
      'and '
      '(DelDate >=:FromDate)'
      ' AND (DelDate <=:ToDate)'
      'and (DelF=3)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 760
    Top = 660
    ParamData = <
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
      end
      item
        DataType = ftSmallint
        Name = 'Type4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Type8'
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
    object SumStamp4sumstamp: TFloatField
      FieldName = 'sumstamp'
      ReadOnly = True
    end
  end
  object Q1SumA: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `ListAll1`'
      '  (`AccType`, `ToName`, `Agin`, `Sup`)'
      'VALUES'
      '  (:`AccType`, :`ToName`, :`Agin`, :`Sup`)')
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT D.AccType, D.ToName, D.Agin, D.Sup, SUM(D.AccTot' +
        'al) AS asd,total,stamp,net,listnum'
      'FROM ListAll1 D '
      'WHERE'
      '(D.ListDate>=:FromDate)'
      ' AND (D.ListDate<=:ToDate)'
      'GROUP BY D.AccType, D.Agin'
      'ORDER BY D.Agin,D.AccType, D.ToName , D.Sup')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    OnCalcFields = Q1SumACalcFields
    Left = 760
    Top = 590
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object Q1SumAAccType: TSmallintField
      FieldName = 'AccType'
      Origin = 'PORTS."ListAll1".AccType'
    end
    object Q1SumAToName: TWideStringField
      FieldName = 'ToName'
      Origin = 'PORTS."ListAll1".ToName'
      Size = 100
    end
    object Q1SumAAccNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'AccType'
      Size = 60
      Lookup = True
    end
    object Q1SumAAgin: TSmallintField
      FieldName = 'Agin'
      Origin = 'PORTS."ListAll1".Agin'
    end
    object Q1SumASup: TSmallintField
      FieldName = 'Sup'
      Origin = 'PORTS."ListAll1".Sup'
    end
    object Q1SumAasd: TFloatField
      FieldName = 'asd'
      Origin = 'PORTS."ListAll1".AccTotal'
      ReadOnly = True
    end
    object Q1SumASupNm: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'SupNm'
      Size = 10
      Calculated = True
    end
    object Q1SumAAginNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AginNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'Agin'
      Size = 100
      Lookup = True
    end
    object Q1SumAtotal: TFloatField
      FieldName = 'total'
    end
    object Q1SumAstamp: TFloatField
      FieldName = 'stamp'
    end
    object Q1SumAnet: TFloatField
      FieldName = 'net'
    end
    object Q1SumAlistnum: TIntegerField
      FieldName = 'listnum'
    end
  end
  object QSumAT: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `ListAll`'
      '  (`ListNum`, `Stamp`, `Net`)'
      'VALUES'
      '  (:`ListNum`, :`Stamp`, :`Net`)')
    SQLDelete.Strings = (
      'DELETE FROM `ListAll`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `ListAll`'
      'SET'
      '  `ListNum` = :`ListNum`, `Stamp` = :`Stamp`, `Net` = :`Net`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT * FROM ListAll'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `ListAll`.`ListNum`, `ListAll`.`Stamp`, `ListAll`.`Net` F' +
        'ROM `ListAll`'
      'WHERE'
      '  ListAll.`NumAuto` = :`NumAuto`')
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT DISTINCT D.ListNum, D.Stamp, D.Net'
      'FROM ListAll D '
      'WHERE'
      '(D.ListDate >=:FromDate)'
      ' AND (D.ListDate <=:ToDate)'
      'ORDER BY D.ListNum, D.Stamp, D.Net')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 760
    Top = 520
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
        Value = nil
      end>
    object QSumATListNum: TIntegerField
      FieldName = 'ListNum'
      Origin = 'PORTS."ListAll".ListNum'
    end
    object QSumATStamp: TFloatField
      FieldName = 'Stamp'
      Origin = 'PORTS."ListAll".Stamp'
    end
    object QSumATNet: TFloatField
      FieldName = 'Net'
      Origin = 'PORTS."ListAll".Net'
    end
  end
  object FQSumAT: TfrxDBDataset
    UserName = 'FQSumAT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListNum=ListNum'
      'Stamp=Stamp'
      'Net=Net')
    DataSet = QSumAT
    BCDToCurrency = False
    Left = 970
    Top = 520
  end
  object FQ1SumA: TfrxDBDataset
    UserName = 'FQ1SumA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccType=AccType'
      'ToName=ToName'
      'AccNm=AccNm'
      'Agin=Agin'
      'Sup=Sup'
      'asd=asd'
      'SupNm=SupNm'
      'AginNm=AginNm'
      'total=total'
      'stamp=stamp'
      'net=net')
    DataSet = Q1SumA
    BCDToCurrency = False
    Left = 960
    Top = 590
  end
  object CeadeQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT sum(D1.acctotal) as sumceade, D.ListType,D.Dama,' +
        ' D.ListDate, D.DateTop, D.Total, D.Toname, D1.AccType, D1.AccVal' +
        'ue, D1.AccTotal,D.AdmisMet,d.stampabs,d.listnumr,D.AginNm'
      'FROM AccList D, AccDet D1,Inco D2'
      'WHERE'
      '(D.ListType =3)'
      ' AND (D.DateTop >=:FromDate)'
      ' AND (D.DateTop <=:Todate)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      ' AND (D1.Acctype = D2.IncNum)'
      ' AND (D1.AccTotal <> 0.0)'
      'and(d.alterbill is null)'
      ' and(d2.ceade=true)'
      ''
      
        'ORDER BY D.ListNum,listnumr, D.ListType, D.ListDate, D.DateTop,D' +
        '.Dama,  D.Total, D.Toname, D1.AccType, D1.AccValue, D1.AccTotal,' +
        'D.AdmisMet')
    Left = 250
    Top = 10
    ParamData = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'Todate'
        ParamType = ptInput
        Value = nil
      end>
    object CeadeQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object CeadeQDama: TSmallintField
      FieldName = 'Dama'
    end
    object CeadeQListDate: TDateField
      FieldName = 'ListDate'
    end
    object CeadeQDateTop: TDateField
      FieldName = 'DateTop'
    end
    object CeadeQTotal: TFloatField
      FieldName = 'Total'
    end
    object CeadeQToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object CeadeQAccType: TSmallintField
      FieldName = 'AccType'
      ReadOnly = True
    end
    object CeadeQAccValue: TFloatField
      FieldName = 'AccValue'
      ReadOnly = True
    end
    object CeadeQAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object CeadeQAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object CeadeQstampabs: TFloatField
      FieldName = 'stampabs'
    end
    object CeadeQlistnumr: TIntegerField
      FieldName = 'listnumr'
    end
    object CeadeQAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object CeadeQsumceade: TFloatField
      FieldName = 'sumceade'
      ReadOnly = True
    end
  end
  object FrCeadeQ: TfrxDBDataset
    UserName = 'FrCeadeQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListType=ListType'
      'Dama=Dama'
      'ListDate=ListDate'
      'DateTop=DateTop'
      'Total=Total'
      'Toname=Toname'
      'AccType=AccType'
      'AccValue=AccValue'
      'AccTotal=AccTotal'
      'AdmisMet=AdmisMet'
      'stampabs=stampabs'
      'listnumr=listnumr'
      'AginNm=AginNm'
      'sumceade=sumceade')
    DataSet = CeadeQ
    BCDToCurrency = False
    Left = 310
    Top = 10
  end
  object EradQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal),accdet.acctype'
      'from accdet,acclist '
      'where (accdet.accnum=acclist.listnum)'
      'and((acclist.listtype=:listtype1)'
      'or (acclist.listtype=:listtype2)'
      'or(acclist.listtype=:listtype3))'
      'and(acclist.DateTop>= :FromDate)'
      'and(acclist.DateTop<= :ToDate) group by accdet.acctype')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 520
    Top = 410
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'listtype1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype3'
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
    object EradQsumaccdetacctotal: TFloatField
      FieldName = 'sum(accdet.acctotal)'
      ReadOnly = True
    end
    object EradQacctype: TSmallintField
      FieldName = 'acctype'
    end
    object EradQAccNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AccNm'
      LookupDataSet = DmdFm.Inco
      LookupKeyFields = 'IncNum'
      LookupResultField = 'IncName'
      KeyFields = 'acctype'
      Size = 60
      Lookup = True
    end
  end
  object FrEradQ: TfrxDBDataset
    UserName = 'FrEradQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sum(accdet.acctotal)=sum(accdet.acctotal)'
      'acctype=acctype'
      'AccNm=AccNm')
    DataSet = EradQ
    BCDToCurrency = False
    Left = 590
    Top = 410
  end
  object FrQDdle: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'numAuto=numAuto'
      'nameDlel=nameDlel'
      'Phone=Phone'
      'Phone2=Phone2'
      'fax=fax'
      'adress=adress'
      'Emeal=Emeal'
      'Norte=Norte'
      'FirstRsed=FirstRsed'
      'Rsed=Rsed')
    DataSet = dlelhzena
    BCDToCurrency = False
    Left = 504
    Top = 545
  end
  object Ddlelhzena: TUniDataSource
    DataSet = dlelhzena
    Left = 574
    Top = 605
  end
  object dlelhzena: TUniTable
    TableName = 'dlelhzena'
    Connection = DmdFm.DB1
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 574
    Top = 525
    object dlelhzenanumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 12
      FieldName = 'numAuto'
    end
    object dlelhzenanameDlel: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1605#1610#1604
      DisplayWidth = 46
      FieldName = 'nameDlel'
      Size = 60
    end
    object dlelhzenaPhone: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1575#1604#1607#1575#1578#1601
      DisplayWidth = 18
      FieldName = 'Phone'
      Size = 15
    end
    object dlelhzenaPhone2: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1575#1604#1606#1602#1575#1604
      DisplayWidth = 18
      FieldName = 'Phone2'
      Size = 15
    end
    object dlelhzenafax: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1601#1575#1603#1587
      DisplayWidth = 18
      FieldName = 'fax'
      Size = 15
    end
    object dlelhzenaadress: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606
      DisplayWidth = 48
      FieldName = 'adress'
      Size = 40
    end
    object dlelhzenaEmeal: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1575#1604#1573#1610#1605#1610#1604
      DisplayWidth = 36
      FieldName = 'Emeal'
      Size = 30
    end
    object dlelhzenaNorte: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      DisplayWidth = 84
      FieldName = 'Norte'
      Size = 70
    end
    object dlelhzenaFirstRsed: TFloatField
      DisplayLabel = #1585#1589#1610#1583' '#1575#1608#1604' '#1605#1583#1577
      FieldName = 'FirstRsed'
    end
    object dlelhzenaRsed: TFloatField
      DisplayLabel = #1585#1589#1610#1583
      FieldName = 'Rsed'
    end
  end
  object AgTotal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `acclist`'
      '  (`Dama`, `AginNm`)'
      'VALUES'
      '  (:`dama`, :`aginnm`)')
    SQLDelete.Strings = (
      'DELETE FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLUpdate.Strings = (
      'UPDATE `acclist`'
      'SET'
      '  `Dama` = :`dama`, `AginNm` = :`aginnm`'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`')
    SQLLock.Strings = (
      'SELECT * FROM acclist'
      'WHERE'
      '  `ListNum` = :`Old_ListNum`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `Dama`, `AginNm` FROM `acclist`'
      'WHERE'
      '  `ListNum` = :`ListNum`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM acclist')
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT '
      '       sum(CAST(stampabs AS DECIMAL(14, 3))) AS stampabs,'
      '       sum(CAST(total AS DECIMAL(14, 3))) AS total,'
      '       sum(CAST(stampabs AS DECIMAL(14, 3))) AS stampabs,'
      '       aginnm,'
      'sum(CAST(NTotal AS DECIMAL(14, 3))) AS NTotal,'
      'sum(CAST(NStamp AS DECIMAL(14, 3))) AS NStamp,'
      ''
      '       agents.agname,acclist.dama,'
      'sum(CAST(dama AS DECIMAL(14, 3))) AS dama1'
      '       '
      '     '
      ''
      'FROM `acclist` inner join agents on(acclist.aginnm=agents.num)'
      
        'WHERE datetop>= :Fromdate and datetop<= :ToDate and ((listtype= ' +
        ':Type1)or(listtype= :Type2)or(listtype= :Type3))'
      'and((delf<>3)or(delf is null))'
      'and(cutf<>1)'
      'group by aginnm'
      'order by aginnm')
    Left = 48
    Top = 578
    ParamData = <
      item
        DataType = ftDate
        Name = 'Fromdate'
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
    object AgTotalstampabs: TFloatField
      FieldName = 'stampabs'
      ReadOnly = True
    end
    object AgTotaltotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
    object AgTotalaginnm: TIntegerField
      FieldName = 'aginnm'
    end
    object AgTotalagname: TWideStringField
      FieldName = 'agname'
      ReadOnly = True
      Size = 60
    end
    object AgTotalstampabs_1: TFloatField
      FieldName = 'stampabs_1'
      ReadOnly = True
    end
    object AgTotalNTotal: TFloatField
      FieldName = 'NTotal'
      ReadOnly = True
    end
    object AgTotalNStamp: TFloatField
      FieldName = 'NStamp'
      ReadOnly = True
    end
    object AgTotaldama1: TFloatField
      FieldName = 'dama1'
      ReadOnly = True
    end
    object AgTotaldama: TSmallintField
      FieldName = 'dama'
    end
  end
  object FrAgTotal: TfrxDBDataset
    UserName = 'FrAgTotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'stampabs=stampabs'
      'total=total'
      'aginnm=aginnm'
      'agname=agname'
      'stampabs_1=stampabs_1'
      'dama=dama'
      'NTotal=NTotal'
      'NStamp=NStamp')
    DataSet = AgTotal
    BCDToCurrency = False
    Left = 38
    Top = 648
  end
  object AgTotalAttach: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT '
      'sum(CAST(stampabs AS DECIMAL(14, 3))) AS stampabs,'
      'sum(CAST(attachvalue AS DECIMAL(14, 3))) AS total,'
      ''
      'aginnm '
      'FROM `attach` '
      
        'WHERE attachdate>= :FromDate and attachdate<= :ToDate and ((acct' +
        'ype= :Type1)or(acctype= :Type2)or(acctype= :Type3))'
      'group by aginnm'
      'order by aginnm')
    Left = 38
    Top = 508
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
    object AgTotalAttachstampabs: TFloatField
      FieldName = 'stampabs'
      ReadOnly = True
    end
    object AgTotalAttachtotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
    object AgTotalAttachaginnm: TSmallintField
      FieldName = 'aginnm'
    end
  end
  object SumAttachQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(attachvalue),sum(stampabs),aginnm'
      'from attach'
      'WHERE'
      '((accType = :Type1)'
      'or(accType = :Type2)'
      'or(accType = :Type3))'
      'AND (attachDate >= :FromDate)'
      'AND (attachDate <= :ToDate)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 130
    Top = 704
    ParamData = <
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
    object SumAttachQsumattachvalue: TFloatField
      FieldName = 'sum(attachvalue)'
      ReadOnly = True
    end
    object SumAttachQsumstampabs: TFloatField
      FieldName = 'sum(stampabs)'
      ReadOnly = True
    end
    object SumAttachQaginnm: TSmallintField
      FieldName = 'aginnm'
    end
  end
  object AgGroup: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT agin FROM `listall1` group by agin order by ListNum desc')
    Left = 136
    Top = 494
    object AgGroupagin: TSmallintField
      FieldName = 'agin'
    end
  end
  object DailyQ: TUniQuery
    Connection = DmdFm.DB1
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
    Left = 260
    Top = 230
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
    Left = 310
    Top = 230
  end
  object QueryAll: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'select listnum,listtype,listdate,shipNum,total,stampabs,AginNm,T' +
        'oName,listNumR,dama,discount from acclist')
    OnCalcFields = QueryAllCalcFields
    Left = 20
    Top = 220
    object QueryAlllistnum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'listnum'
    end
    object QueryAlllisttype: TSmallintField
      FieldName = 'listtype'
      Required = True
    end
    object QueryAlllistdate: TDateField
      FieldName = 'listdate'
    end
    object QueryAllshipNum: TSmallintField
      FieldName = 'shipNum'
    end
    object QueryAllShipNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShipNm'
      LookupDataSet = DmdFm.Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'shipNum'
      Size = 100
      Lookup = True
    end
    object QueryAllTypeNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeNm'
      Size = 30
      Calculated = True
    end
    object QueryAlltotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '0,0.000'
    end
    object QueryAllstampabs: TFloatField
      FieldName = 'stampabs'
    end
    object QueryAllAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object QueryAllToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object QueryAllNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0,0.000'
      Calculated = True
    end
    object QueryAllAgNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AginNm'
      Size = 60
      Lookup = True
    end
    object QueryAlllistNumR: TIntegerField
      FieldName = 'listNumR'
    end
    object QueryAlldama: TSmallintField
      FieldName = 'dama'
    end
    object QueryAllstampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'stampNet'
      Calculated = True
    end
    object QueryAlldiscount: TFloatField
      FieldName = 'discount'
    end
  end
  object DQueryAll: TDataSource
    DataSet = QueryAll
    Left = 90
    Top = 220
  end
  object MaxDailyQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'Select Max(DailyNum) as DailyNum From Acclist')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 854
    Top = 380
    object MaxDailyQDailyNum: TIntegerField
      FieldName = 'DailyNum'
      ReadOnly = True
    end
  end
  object SAttach: TUniTable
    TableName = 'Attach'
    SmartFetch.LiveBlock = False
    Connection = DmdFm.DB1
    LockMode = lmNone
    OnCalcFields = SAttachCalcFields
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 660
    Top = 150
    object SAttachAccType: TSmallintField
      FieldName = 'AccType'
    end
    object SAttachListNum: TIntegerField
      FieldName = 'ListNum'
    end
    object SAttachAttachNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AttachNum'
    end
    object SAttachListtype: TIntegerField
      FieldName = 'Listtype'
    end
    object SAttachAttachDate: TDateField
      FieldName = 'AttachDate'
    end
    object SAttachAttachValue: TFloatField
      FieldName = 'AttachValue'
      DisplayFormat = '0,0.000'
    end
    object SAttachMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object SAttachKias: TFloatField
      FieldName = 'Kias'
    end
    object SAttachQty: TFloatField
      FieldName = 'Qty'
    end
    object SAttachRemin: TSmallintField
      FieldName = 'Remin'
    end
    object SAttachElectric: TSmallintField
      FieldName = 'Electric'
    end
    object SAttachDate2: TDateField
      FieldName = 'Date2'
    end
    object SAttachDate3: TDateField
      FieldName = 'Date3'
    end
    object SAttachWeeksBef: TSmallintField
      FieldName = 'WeeksBef'
    end
    object SAttachDate4: TDateField
      FieldName = 'Date4'
    end
    object SAttachWeight: TFloatField
      FieldName = 'Weight'
    end
    object SAttachUnit: TSmallintField
      FieldName = 'Unit'
    end
    object SAttachReminDays: TSmallintField
      FieldName = 'ReminDays'
    end
    object SAttachMet: TSmallintField
      FieldName = 'Met'
    end
    object SAttachSt1: TSmallintField
      FieldName = 'St1'
    end
    object SAttachSt2: TSmallintField
      FieldName = 'St2'
    end
    object SAttachAddWeeks: TSmallintField
      FieldName = 'AddWeeks'
    end
    object SAttachYyy: TIntegerField
      FieldName = 'Yyy'
    end
    object SAttachDate22: TDateField
      FieldName = 'Date22'
    end
    object SAttachOasve: TWideStringField
      FieldName = 'Oasve'
      Size = 100
    end
    object SAttachPolesa: TWideStringField
      FieldName = 'Polesa'
    end
    object SAttachAginNm: TSmallintField
      FieldName = 'AginNm'
    end
    object SAttachbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object SAttachUserNum: TSmallintField
      FieldName = 'UserNum'
      Required = True
    end
    object SAttachToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object SAttachStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object SAttachLockF: TSmallintField
      FieldName = 'LockF'
    end
    object SAttachNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0,0.000'
      Calculated = True
    end
    object SAttachAttDaily: TIntegerField
      FieldName = 'AttDaily'
    end
    object SAttachDebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object SAttachLockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object SAttachDailyCurr: TSmallintField
      FieldName = 'DailyCurr'
    end
    object SAttachCurrF: TSmallintField
      FieldName = 'CurrF'
    end
    object SAttachClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object SAttachPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object SAttachPaidNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaidNm'
      Size = 10
      Calculated = True
    end
  end
  object DSAttach: TDataSource
    DataSet = SAttach
    Left = 660
    Top = 220
  end
  object DSAccList: TDataSource
    DataSet = SAccList
    Left = 660
    Top = 80
  end
  object SAccList11: TUniTable
    TableName = 'AccList'
    SmartFetch.LiveBlock = False
    Connection = DmdFm.DB1
    LockMode = lmNone
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 644
    Top = 12
    object SAccList11ListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object SAccList11ListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object SAccList11ListDate: TDateField
      FieldName = 'ListDate'
    end
    object SAccList11ShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object SAccList11ArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object SAccList11StampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object SAccList11EndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object SAccList11GoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object SAccList11GoodsQty: TFloatField
      FieldName = 'GoodsQty'
    end
    object SAccList11ShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object SAccList11WeSpace: TFloatField
      FieldName = 'WeSpace'
    end
    object SAccList11Total: TFloatField
      FieldName = 'Total'
    end
    object SAccList11AdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object SAccList11Stamp: TFloatField
      FieldName = 'Stamp'
    end
    object SAccList11Unit: TSmallintField
      FieldName = 'Unit'
    end
    object SAccList11BillNum: TWideStringField
      FieldName = 'BillNum'
      Size = 300
    end
    object SAccList11Toname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object SAccList11Electric: TSmallintField
      FieldName = 'Electric'
    end
    object SAccList11Remain: TSmallintField
      FieldName = 'Remain'
    end
    object SAccList11Wight: TFloatField
      FieldName = 'Wight'
    end
    object SAccList11LocOrFor: TWideStringField
      FieldName = 'LocOrFor'
      Size = 6
    end
    object SAccList11Petrol: TSmallintField
      FieldName = 'Petrol'
    end
    object SAccList11Dirty: TSmallintField
      FieldName = 'Dirty'
    end
    object SAccList11ShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object SAccList11Mezan: TSmallintField
      FieldName = 'Mezan'
    end
    object SAccList11Frg: TSmallintField
      FieldName = 'Frg'
    end
    object SAccList11Tadl: TSmallintField
      FieldName = 'Tadl'
    end
    object SAccList11FrgFlag: TSmallintField
      FieldName = 'FrgFlag'
    end
    object SAccList11HjzFlag: TSmallintField
      FieldName = 'HjzFlag'
    end
    object SAccList11TadlFlag: TSmallintField
      FieldName = 'TadlFlag'
    end
    object SAccList11Edafe1: TSmallintField
      FieldName = 'Edafe1'
    end
    object SAccList11Edafe2: TSmallintField
      FieldName = 'Edafe2'
    end
    object SAccList11Goodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 100
    end
    object SAccList11LocWitOut: TSmallintField
      FieldName = 'LocWitOut'
    end
    object SAccList11ChechDate: TDateField
      FieldName = 'ChechDate'
    end
    object SAccList11Cars: TSmallintField
      FieldName = 'Cars'
    end
    object SAccList11States: TSmallintField
      FieldName = 'States'
    end
    object SAccList11ElecDate: TDateField
      FieldName = 'ElecDate'
    end
    object SAccList11RemDate: TDateField
      FieldName = 'RemDate'
    end
    object SAccList11MezDate: TDateField
      FieldName = 'MezDate'
    end
    object SAccList11Roafe: TSmallintField
      FieldName = 'Roafe'
    end
    object SAccList11Dama: TSmallintField
      FieldName = 'Dama'
    end
    object SAccList11TfteshCar: TSmallintField
      FieldName = 'TfteshCar'
    end
    object SAccList11AttTo: TWideStringField
      FieldName = 'AttTo'
    end
    object SAccList11Leverweight: TFloatField
      FieldName = 'Leverweight'
    end
    object SAccList11Saba: TSmallintField
      FieldName = 'Saba'
    end
    object SAccList11WeeksNum: TSmallintField
      FieldName = 'WeeksNum'
    end
    object SAccList11States1: TSmallintField
      FieldName = 'States1'
    end
    object SAccList11States2: TSmallintField
      FieldName = 'States2'
    end
    object SAccList11Days: TSmallintField
      FieldName = 'Days'
    end
    object SAccList11DaysM: TSmallintField
      FieldName = 'DaysM'
    end
    object SAccList11EleeshDate: TDateField
      FieldName = 'EleeshDate'
    end
    object SAccList11ReshDate: TDateField
      FieldName = 'ReshDate'
    end
    object SAccList11DaysMM: TFloatField
      FieldName = 'DaysMM'
    end
    object SAccList11Sapa: TSmallintField
      FieldName = 'Sapa'
    end
    object SAccList11AutoDate: TDateField
      FieldName = 'AutoDate'
    end
    object SAccList11AginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object SAccList11F1Num: TSmallintField
      FieldName = 'F1Num'
    end
    object SAccList11User: TIntegerField
      FieldName = 'User'
    end
    object SAccList11Net: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0.000'
      Calculated = True
    end
    object SAccList11AgNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AgNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AginNm'
      Size = 60
      Lookup = True
    end
    object SAccList11DateTop: TDateField
      FieldName = 'DateTop'
    end
    object SAccList11NumT: TIntegerField
      FieldName = 'NumT'
    end
    object SAccList11barcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object SAccList11loukof: TSmallintField
      FieldName = 'loukof'
    end
    object SAccList11ArchiveF: TSmallintField
      FieldName = 'ArchiveF'
    end
    object SAccList11HoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object SAccList11CouponIn: TIntegerField
      FieldName = 'CouponIn'
    end
    object SAccList11CouponOut: TIntegerField
      FieldName = 'CouponOut'
    end
    object SAccList11TelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object SAccList11PaidF: TSmallintField
      FieldName = 'PaidF'
      Required = True
    end
    object SAccList11TypeNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeNm'
      Size = 30
      Calculated = True
    end
    object SAccList11ShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object SAccList11Reserve: TSmallintField
      FieldName = 'Reserve'
    end
    object SAccList11FrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object SAccList11BillNum2: TWideStringField
      FieldName = 'BillNum2'
      Size = 300
    end
    object SAccList11SubType: TSmallintField
      FieldName = 'SubType'
    end
    object SAccList11DelDate: TDateField
      FieldName = 'DelDate'
    end
    object SAccList11AgntR: TSmallintField
      FieldName = 'AgntR'
    end
    object SAccList11SharedF: TSmallintField
      FieldName = 'SharedF'
    end
    object SAccList11ChemicalF: TSmallintField
      FieldName = 'ChemicalF'
    end
    object SAccList11AlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object SAccList11StampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object SAccList11ListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
    object SAccList11DailyNum: TIntegerField
      FieldName = 'DailyNum'
    end
    object SAccList11AttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object SAccList11DisCount: TFloatField
      FieldName = 'DisCount'
    end
    object SAccList11DelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 70
    end
    object SAccList11CutF: TSmallintField
      FieldName = 'CutF'
    end
    object SAccList11PaidNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaidNm'
      Size = 25
      Calculated = True
    end
    object SAccList11FTime1: TTimeField
      FieldName = 'FTime1'
    end
    object SAccList11EndTime1: TTimeField
      FieldName = 'EndTime1'
    end
    object SAccList11Move1: TSmallintField
      FieldName = 'Move1'
    end
    object SAccList11FTime2: TTimeField
      FieldName = 'FTime2'
    end
    object SAccList11EndTime2: TTimeField
      FieldName = 'EndTime2'
    end
    object SAccList11Move2: TSmallintField
      FieldName = 'Move2'
    end
    object SAccList11Kemawea: TSmallintField
      FieldName = 'Kemawea'
    end
    object SAccList11Month: TSmallintField
      FieldName = 'Month'
    end
    object SAccList11UnitRsom: TSmallintField
      FieldName = 'UnitRsom'
    end
    object SAccList11DelF: TSmallintField
      FieldName = 'DelF'
    end
    object SAccList11CurrntF: TSmallintField
      FieldName = 'CurrntF'
    end
    object SAccList11DebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object SAccList11CurrDate: TDateField
      FieldName = 'CurrDate'
    end
    object SAccList11DailyCurr: TIntegerField
      FieldName = 'DailyCurr'
    end
    object SAccList11LockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object SAccList11ClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object SAccList11ClaimDate: TDateField
      FieldName = 'ClaimDate'
    end
    object SAccList11ClaimNum: TIntegerField
      FieldName = 'ClaimNum'
    end
    object SAccList11Msrahname: TWideStringField
      FieldName = 'Msrahname'
      Size = 70
    end
    object SAccList11phoneMsr: TWideStringField
      FieldName = 'phoneMsr'
      Size = 15
    end
    object SAccList11NTotal: TFloatField
      FieldName = 'NTotal'
    end
    object SAccList11NStamp: TFloatField
      FieldName = 'NStamp'
    end
    object SAccList11QRALL: TWideMemoField
      FieldName = 'QRALL'
      BlobType = ftWideMemo
    end
    object SAccList11loadnum: TIntegerField
      FieldName = 'loadnum'
    end
    object SAccList11Billloading: TIntegerField
      FieldName = 'Billloading'
    end
    object SAccList11TotalD: TFloatField
      FieldName = 'TotalD'
    end
    object SAccList11InvoiceD: TSmallintField
      FieldName = 'InvoiceD'
    end
    object SAccList11NTotalD: TFloatField
      FieldName = 'NTotalD'
    end
    object SAccList11NStampD: TFloatField
      FieldName = 'NStampD'
    end
    object SAccList11SubType2: TSmallintField
      FieldName = 'SubType2'
    end
  end
  object AccList: TUniTable
    TableName = 'acclist'
    SmartFetch.LiveBlock = False
    Connection = DmdFm.DB1
    LockMode = lmNone
    BeforeEdit = AccListBeforeEdit
    AfterPost = AccListAfterPost
    OnCalcFields = AccListCalcFields
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 20
    Top = 30
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
    end
    object AccListGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object AccListArriveDate: TDateField
      FieldName = 'ArriveDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object AccListAutoDate: TDateField
      FieldName = 'AutoDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object AccListShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object AccListWeSpace: TFloatField
      FieldName = 'WeSpace'
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
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object AccListAdmisMetNm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AdmisMetNm'
      LookupDataSet = DmdFm.AdmisMet
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
      DisplayFormat = '0.000 %'
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
      LookupDataSet = DmdFm.Units
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
    object AccListToName: TWideStringField
      DisplayLabel = #1573#1604#1609
      FieldName = 'ToName'
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
      EditMask = '00:00;1; '
    end
    object g: TTimeField
      FieldName = 'EndTime1'
      DisplayFormat = 'HH:MM'
      EditMask = '00:00;1; '
    end
    object AccListMove1: TSmallintField
      FieldName = 'Move1'
    end
    object AccListFTime2: TTimeField
      FieldName = 'FTime2'
      DisplayFormat = 'HH:MM'
      EditMask = '00:00;1; '
    end
    object AccListEndTime2: TTimeField
      FieldName = 'EndTime2'
      DisplayFormat = 'HH:MM'
      EditMask = '00:00;1; '
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
    object AccListMoveAll: TSmallintField
      FieldName = 'MoveAll'
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
    object AccListLocWitout: TSmallintField
      FieldName = 'LocWitout'
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
    object AccListQty2: TSmallintField
      FieldName = 'Qty2'
    end
    object AccListUnit2: TSmallintField
      FieldName = 'Unit2'
    end
    object AccListUnit2Nm: TWideStringField
      FieldKind = fkLookup
      FieldName = 'Unit2Nm'
      LookupDataSet = DmdFm.Units
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
      DisplayLabel = #1585#1608#1575#1601#1593
      FieldName = 'Roafe'
    end
    object AccListDama: TSmallintField
      DisplayLabel = #1583#1605#1594#1577
      FieldName = 'Dama'
    end
    object AccListTfteshCar: TSmallintField
      DisplayLabel = #1578#1601#1578#1610#1588' '#1587#1610#1575#1585#1575#1578
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
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
    end
    object AccListReshDate: TDateField
      FieldName = 'ReshDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
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
      LookupDataSet = DmdFm.Agents
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
      LookupDataSet = DmdFm.Perm
      LookupKeyFields = 'UserNum'
      LookupResultField = 'UserName'
      KeyFields = 'User'
      Size = 40
      Lookup = True
    end
    object AccListDateTop: TDateField
      FieldName = 'DateTop'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
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
      LookupDataSet = DmdFm.Ships
      LookupKeyFields = 'NumAuto'
      LookupResultField = 'SName'
      KeyFields = 'ShipNum'
      Size = 100
      Lookup = True
    end
    object AccListSapa: TSmallintField
      DefaultExpression = #39'1'#39
      DisplayLabel = #1589#1593#1576#1577
      FieldName = 'Sapa'
    end
    object AccListloukof: TSmallintField
      FieldName = 'loukof'
    end
    object AccListHoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object AccListCouponIn: TIntegerField
      FieldName = 'CouponIn'
    end
    object AccListCouponOut: TIntegerField
      FieldName = 'CouponOut'
    end
    object AccListTelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object AccListShTyNm: TStringField
      FieldKind = fkLookup
      FieldName = 'ShTyNm'
      LookupDataSet = DmdFm.ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'ShipType'
      Size = 10
      Lookup = True
    end
    object AccListArchiveF: TSmallintField
      FieldName = 'ArchiveF'
      MaxValue = 1
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
      LookupDataSet = DmdFm.Ships
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
      LookupDataSet = DmdFm.shipment
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
    end
    object AccListFrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object AccListQty3: TSmallintField
      FieldName = 'Qty3'
    end
    object AccListTypeNm: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = DmdFm.ShipTy
      LookupKeyFields = 'Num'
      LookupResultField = 'TyName'
      KeyFields = 'ShipType'
      Lookup = True
    end
    object AccListLockNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'LockNm'
      Size = 10
      Calculated = True
    end
    object AccListElecDays: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'ElecDays'
      Calculated = True
    end
    object AccListRemainDays: TSmallintField
      FieldKind = fkCalculated
      FieldName = 'RemainDays'
      Calculated = True
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
      DisplayWidth = 10
      FieldName = 'DelDate'
      DisplayFormat = 'yyyy/mm/dd'
      EditMask = '00/00/0000;1; '
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
      LookupDataSet = DmdFm.agentsrs
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
      Calculated = True
    end
    object AccListCutF: TSmallintField
      FieldName = 'CutF'
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
    object AccListclaimNum: TIntegerField
      FieldName = 'claimNum'
    end
  end
  object DAccList: TDataSource
    DataSet = AccList
    Left = 90
    Top = 30
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 160
    Top = 140
  end
  object ListAll123: TUniTable
    TableName = 'listall'
    Connection = UniConnection1
    LockMode = lmNone
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 20
    Top = 350
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
      LookupDataSet = DmdFm.Inco
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
  object SideQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT * FROM `acclist` WHERE'
      
        ' (aginnm= :AginNm and datetop>= :FromDate and dateTop<= :ToDate)' +
        'and(listtype<>3)and(listtype=:listtype1 or listtype=:listtype2 o' +
        'r listtype=:listtype3 or listtype=:listtype4 or listtype=:listty' +
        'pe5 or listtype=:listtype6 or listtype=:listtype7 or listtype=:l' +
        'isttype8)')
    Left = 950
    Top = 200
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'AginNm'
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
      end
      item
        DataType = ftSmallint
        Name = 'listtype1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'listtype8'
        ParamType = ptInput
        Value = nil
      end>
    object SideQListNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ListNum'
    end
    object SideQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object SideQListDate: TDateField
      FieldName = 'ListDate'
    end
    object SideQTo: TSmallintField
      FieldName = 'To'
    end
    object SideQShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object SideQArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object SideQEndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object SideQGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object SideQGoodsQty: TFloatField
      FieldName = 'GoodsQty'
    end
    object SideQShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object SideQWeSpace: TFloatField
      FieldName = 'WeSpace'
    end
    object SideQTotal: TFloatField
      FieldName = 'Total'
    end
    object SideQAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object SideQStamp: TFloatField
      FieldName = 'Stamp'
    end
    object SideQUnit: TSmallintField
      FieldName = 'Unit'
    end
    object SideQBillNum: TWideStringField
      FieldName = 'BillNum'
      Size = 300
    end
    object SideQloukof: TSmallintField
      FieldName = 'loukof'
    end
    object SideQToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object SideQElectric: TSmallintField
      FieldName = 'Electric'
    end
    object SideQRemain: TSmallintField
      FieldName = 'Remain'
    end
    object SideQWight: TFloatField
      FieldName = 'Wight'
    end
    object SideQLocOrFor: TWideStringField
      FieldName = 'LocOrFor'
      Size = 6
    end
    object SideQPetrol: TSmallintField
      FieldName = 'Petrol'
    end
    object SideQDirty: TSmallintField
      FieldName = 'Dirty'
    end
    object SideQFTime1: TTimeField
      FieldName = 'FTime1'
    end
    object SideQEndTime1: TTimeField
      FieldName = 'EndTime1'
    end
    object SideQMove1: TSmallintField
      FieldName = 'Move1'
    end
    object SideQFTime2: TTimeField
      FieldName = 'FTime2'
    end
    object SideQEndTime2: TTimeField
      FieldName = 'EndTime2'
    end
    object SideQMove2: TSmallintField
      FieldName = 'Move2'
    end
    object SideQShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object SideQMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object SideQKemawea: TSmallintField
      FieldName = 'Kemawea'
    end
    object SideQFrg: TSmallintField
      FieldName = 'Frg'
    end
    object SideQTadl: TSmallintField
      FieldName = 'Tadl'
    end
    object SideQFrgFlag: TSmallintField
      FieldName = 'FrgFlag'
    end
    object SideQHjzFlag: TSmallintField
      FieldName = 'HjzFlag'
    end
    object SideQTadlFlag: TSmallintField
      FieldName = 'TadlFlag'
    end
    object SideQEdafe1: TSmallintField
      FieldName = 'Edafe1'
    end
    object SideQEdafe2: TSmallintField
      FieldName = 'Edafe2'
    end
    object SideQGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 100
    end
    object SideQMoveall: TSmallintField
      FieldName = 'Moveall'
    end
    object SideQMovV1: TFloatField
      FieldName = 'MovV1'
    end
    object SideQMovV2: TFloatField
      FieldName = 'MovV2'
    end
    object SideQElecQty: TSmallintField
      FieldName = 'ElecQty'
    end
    object SideQRemQty: TSmallintField
      FieldName = 'RemQty'
    end
    object SideQLocWitOut: TSmallintField
      FieldName = 'LocWitOut'
    end
    object SideQChechDate: TDateField
      FieldName = 'ChechDate'
    end
    object SideQMonth: TSmallintField
      FieldName = 'Month'
    end
    object SideQCars: TSmallintField
      FieldName = 'Cars'
    end
    object SideQStates: TSmallintField
      FieldName = 'States'
    end
    object SideQQty2: TSmallintField
      FieldName = 'Qty2'
    end
    object SideQUnit2: TSmallintField
      FieldName = 'Unit2'
    end
    object SideQElecDate: TDateField
      FieldName = 'ElecDate'
    end
    object SideQRemDate: TDateField
      FieldName = 'RemDate'
    end
    object SideQMezDate: TDateField
      FieldName = 'MezDate'
    end
    object SideQRoafe: TSmallintField
      FieldName = 'Roafe'
    end
    object SideQDama: TSmallintField
      FieldName = 'Dama'
    end
    object SideQTfteshCar: TSmallintField
      FieldName = 'TfteshCar'
    end
    object SideQAttTo: TWideStringField
      FieldName = 'AttTo'
    end
    object SideQLeverweight: TFloatField
      FieldName = 'Leverweight'
    end
    object SideQSaba: TSmallintField
      FieldName = 'Saba'
    end
    object SideQWeeksNum: TSmallintField
      FieldName = 'WeeksNum'
    end
    object SideQStates1: TSmallintField
      FieldName = 'States1'
    end
    object SideQStates2: TSmallintField
      FieldName = 'States2'
    end
    object SideQDays: TSmallintField
      FieldName = 'Days'
    end
    object SideQDaysM: TSmallintField
      FieldName = 'DaysM'
    end
    object SideQEleeshDate: TDateField
      FieldName = 'EleeshDate'
    end
    object SideQReshDate: TDateField
      FieldName = 'ReshDate'
    end
    object SideQDaysMM: TFloatField
      FieldName = 'DaysMM'
    end
    object SideQSapa: TSmallintField
      FieldName = 'Sapa'
    end
    object SideQAutoDate: TDateField
      FieldName = 'AutoDate'
    end
    object SideQAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object SideQF1Num: TSmallintField
      FieldName = 'F1Num'
    end
    object SideQUser: TIntegerField
      FieldName = 'User'
    end
    object SideQDateTop: TDateField
      FieldName = 'DateTop'
    end
    object SideQNumT: TIntegerField
      FieldName = 'NumT'
    end
    object SideQbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object SideQArchiveF: TSmallintField
      FieldName = 'ArchiveF'
    end
    object SideQHoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object SideQCouponIn: TIntegerField
      FieldName = 'CouponIn'
    end
    object SideQCouponOut: TIntegerField
      FieldName = 'CouponOut'
    end
    object SideQTelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object SideQPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object SideQUnitRsom: TSmallintField
      FieldName = 'UnitRsom'
    end
    object SideQNum1: TSmallintField
      FieldName = 'Num1'
    end
    object SideQNum2: TSmallintField
      FieldName = 'Num2'
    end
    object SideQNum3: TSmallintField
      FieldName = 'Num3'
    end
    object SideQNum4: TSmallintField
      FieldName = 'Num4'
    end
    object SideQNum5: TSmallintField
      FieldName = 'Num5'
    end
    object SideQNum6: TSmallintField
      FieldName = 'Num6'
    end
    object SideQNum7: TSmallintField
      FieldName = 'Num7'
    end
    object SideQNum8: TSmallintField
      FieldName = 'Num8'
    end
    object SideQShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object SideQReserve: TSmallintField
      FieldName = 'Reserve'
    end
    object SideQFrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object SideQQty3: TSmallintField
      FieldName = 'Qty3'
    end
    object SideQBillNum2: TWideStringField
      FieldName = 'BillNum2'
      Size = 300
    end
    object SideQAgNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AginNm'
      Size = 100
      Lookup = True
    end
    object SideQSubType: TSmallintField
      FieldName = 'SubType'
    end
    object SideQDelF: TSmallintField
      FieldName = 'DelF'
    end
    object SideQDelDate: TDateField
      FieldName = 'DelDate'
    end
    object SideQboat: TSmallintField
      FieldName = 'boat'
    end
    object SideQAgntR: TSmallintField
      FieldName = 'AgntR'
    end
    object SideQSharedF: TSmallintField
      FieldName = 'SharedF'
    end
    object SideQChemicalF: TSmallintField
      FieldName = 'ChemicalF'
    end
    object SideQAlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object SideQStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object SideQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
    object SideQListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
    object SideQDailyNum: TIntegerField
      FieldName = 'DailyNum'
    end
    object SideQAttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object SideQDisCount: TFloatField
      FieldName = 'DisCount'
    end
    object SideQDelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 70
    end
    object SideQcutF: TSmallintField
      FieldName = 'cutF'
    end
    object SideQCurrntF: TSmallintField
      FieldName = 'CurrntF'
    end
    object SideQDebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object SideQCurrDate: TDateField
      FieldName = 'CurrDate'
    end
    object SideQDailyCurr: TIntegerField
      FieldName = 'DailyCurr'
    end
    object SideQLockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object SideQClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object SideQClaimDate: TDateField
      FieldName = 'ClaimDate'
    end
    object SideQClaimNum: TIntegerField
      FieldName = 'ClaimNum'
    end
    object SideQMsrahname: TWideStringField
      FieldName = 'Msrahname'
      Size = 70
    end
    object SideQphoneMsr: TWideStringField
      FieldName = 'phoneMsr'
      Size = 15
    end
    object SideQNTotal: TFloatField
      FieldName = 'NTotal'
    end
    object SideQNStamp: TFloatField
      FieldName = 'NStamp'
    end
  end
  object FrSideQ: TfrxDBDataset
    UserName = 'FrSideQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListNum=ListNum'
      'ListType=ListType'
      'ListDate=ListDate'
      'To=To'
      'ShipNum=ShipNum'
      'ArriveDate=ArriveDate'
      'EndEmpDate=EndEmpDate'
      'GoodsDesc=GoodsDesc'
      'GoodsQty=GoodsQty'
      'ShipBillNum=ShipBillNum'
      'WeSpace=WeSpace'
      'Total=Total'
      'AdmisMet=AdmisMet'
      'Stamp=Stamp'
      'Unit=Unit'
      'BillNum=BillNum'
      'loukof=loukof'
      'Toname=Toname'
      'Electric=Electric'
      'Remain=Remain'
      'Wight=Wight'
      'LocOrFor=LocOrFor'
      'Petrol=Petrol'
      'Dirty=Dirty'
      'FTime1=FTime1'
      'EndTime1=EndTime1'
      'Move1=Move1'
      'FTime2=FTime2'
      'EndTime2=EndTime2'
      'Move2=Move2'
      'ShipType=ShipType'
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
      'Moveall=Moveall'
      'MovV1=MovV1'
      'MovV2=MovV2'
      'ElecQty=ElecQty'
      'RemQty=RemQty'
      'LocWitOut=LocWitOut'
      'ChechDate=ChechDate'
      'Month=Month'
      'Cars=Cars'
      'States=States'
      'Qty2=Qty2'
      'Unit2=Unit2'
      'ElecDate=ElecDate'
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
      'Sapa=Sapa'
      'AutoDate=AutoDate'
      'AginNm=AginNm'
      'F1Num=F1Num'
      'User=User'
      'DateTop=DateTop'
      'NumT=NumT'
      'barcade=barcade'
      'ArchiveF=ArchiveF'
      'HoursNum=HoursNum'
      'CouponIn=CouponIn'
      'CouponOut=CouponOut'
      'TelegramNum=TelegramNum'
      'PaidF=PaidF'
      'UnitRsom=UnitRsom'
      'Num1=Num1'
      'Num2=Num2'
      'Num3=Num3'
      'Num4=Num4'
      'Num5=Num5'
      'Num6=Num6'
      'Num7=Num7'
      'Num8=Num8'
      'ShipMet=ShipMet'
      'Reserve=Reserve'
      'FrgShip=FrgShip'
      'Qty3=Qty3'
      'BillNum2=BillNum2'
      'AgNm=AgNm'
      'SubType=SubType'
      'DelF=DelF'
      'DelDate=DelDate'
      'boat=boat'
      'AgntR=AgntR'
      'SharedF=SharedF'
      'ChemicalF=ChemicalF'
      'AlterBill=AlterBill'
      'StampAbs=StampAbs'
      'Net=Net'
      'ListNumR=ListNumR'
      'DailyNum=DailyNum'
      'AttachNum=AttachNum'
      'DisCount=DisCount'
      'DelWhy=DelWhy'
      'cutF=cutF'
      'CurrntF=CurrntF'
      'DebitF=DebitF'
      'CurrDate=CurrDate'
      'DailyCurr=DailyCurr'
      'LockCurr=LockCurr'
      'ClaimF=ClaimF'
      'ClaimDate=ClaimDate'
      'ClaimNum=ClaimNum'
      'Msrahname=Msrahname'
      'phoneMsr=phoneMsr'
      'NTotal=NTotal'
      'NStamp=NStamp')
    DataSet = SideQ
    BCDToCurrency = False
    Left = 1020
    Top = 190
  end
  object SidesAttach: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT * FROM `attach` WHERE'
      
        ' (aginnm= :aginNm and attachdate>= :FromDate and attachdate<= :T' +
        'oDate)and(acctype<>3)and(acctype=:acctype1 or acctype=:acctype2 ' +
        'or acctype=:acctype3 or acctype=:acctype4 or acctype=:acctype5 o' +
        'r acctype=:acctype6 or acctype=:acctype7 or acctype=:acctype8)')
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 1060
    Top = 260
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'aginNm'
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
      end
      item
        DataType = ftSmallint
        Name = 'acctype1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype4'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype5'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype6'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype7'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'acctype8'
        ParamType = ptInput
        Value = nil
      end>
    object SidesAttachAccType: TIntegerField
      FieldName = 'AccType'
      Required = True
    end
    object SidesAttachListNum: TIntegerField
      FieldName = 'ListNum'
      Required = True
    end
    object SidesAttachAttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object SidesAttachListtype: TIntegerField
      FieldName = 'Listtype'
      Required = True
    end
    object SidesAttachAttachDate: TDateField
      FieldName = 'AttachDate'
    end
    object SidesAttachAttachValue: TFloatField
      FieldName = 'AttachValue'
    end
    object SidesAttachMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object SidesAttachKias: TFloatField
      FieldName = 'Kias'
    end
    object SidesAttachQty: TFloatField
      FieldName = 'Qty'
    end
    object SidesAttachRemin: TSmallintField
      FieldName = 'Remin'
    end
    object SidesAttachElectric: TSmallintField
      FieldName = 'Electric'
    end
    object SidesAttachDate2: TDateField
      FieldName = 'Date2'
    end
    object SidesAttachDate3: TDateField
      FieldName = 'Date3'
    end
    object SidesAttachWeeksBef: TSmallintField
      FieldName = 'WeeksBef'
    end
    object SidesAttachDate4: TDateField
      FieldName = 'Date4'
    end
    object SidesAttachWeight: TFloatField
      FieldName = 'Weight'
    end
    object SidesAttachUnit: TSmallintField
      FieldName = 'Unit'
    end
    object SidesAttachReminDays: TSmallintField
      FieldName = 'ReminDays'
    end
    object SidesAttachMet: TSmallintField
      FieldName = 'Met'
    end
    object SidesAttachSt1: TSmallintField
      FieldName = 'St1'
    end
    object SidesAttachSt2: TSmallintField
      FieldName = 'St2'
    end
    object SidesAttachAddWeeks: TSmallintField
      FieldName = 'AddWeeks'
    end
    object SidesAttachYyy: TIntegerField
      FieldName = 'Yyy'
    end
    object SidesAttachDate22: TDateField
      FieldName = 'Date22'
    end
    object SidesAttachOasve: TWideStringField
      FieldName = 'Oasve'
      Size = 100
    end
    object SidesAttachPolesa: TWideStringField
      FieldName = 'Polesa'
    end
    object SidesAttachAginNm: TSmallintField
      FieldName = 'AginNm'
    end
    object SidesAttachbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object SidesAttachUserNum: TSmallintField
      FieldName = 'UserNum'
      Required = True
    end
    object SidesAttachToName: TWideStringField
      FieldName = 'ToName'
      Size = 100
    end
    object SidesAttachStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object SidesAttachLockF: TSmallintField
      FieldName = 'LockF'
    end
    object SidesAttachAttDaily: TIntegerField
      FieldName = 'AttDaily'
    end
  end
  object AcclistQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT listnum,ListType,Toname,AginNm,Total,PaidF,dama,discount,' +
        'loukof FROM `acclist` WHERE (ListType=:ListType1 or ListType=:Li' +
        'stType2 or ListType=:ListType3) and archiveF=1 and loukof=1 and ' +
        'DateTop>=:FromDate and DateTop<=:ToDate '
      'order by listnum')
    OnCalcFields = AcclistQCalcFields
    Left = 953
    Top = 33
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'ListType1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ListType2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ListType3'
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
    object AcclistQlistnum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'listnum'
    end
    object AcclistQListType: TSmallintField
      FieldName = 'ListType'
      Required = True
    end
    object AcclistQToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object AcclistQAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object AcclistQTotal: TFloatField
      FieldName = 'Total'
    end
    object AcclistQPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object AcclistQPaidNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaidNm'
      Size = 12
      Calculated = True
    end
    object AcclistQTypeNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeNm'
      Size = 50
      Calculated = True
    end
    object AcclistQNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      DisplayFormat = '0,0.000'
      Calculated = True
    end
    object AcclistQStampNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'StampNet'
      Calculated = True
    end
    object AcclistQdama: TSmallintField
      FieldName = 'dama'
    end
    object AcclistQdiscount: TFloatField
      FieldName = 'discount'
    end
    object AcclistQloukof: TSmallintField
      FieldName = 'loukof'
    end
    object AcclistQAgentNm: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNm'
      LookupDataSet = DmdFm.Agents
      LookupKeyFields = 'Num'
      LookupResultField = 'AgName'
      KeyFields = 'AginNm'
      Size = 100
      Lookup = True
    end
  end
  object DAcclistQ: TDataSource
    DataSet = AcclistQ
    Left = 1024
    Top = 33
  end
  object Change_Type: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'update acclist set listtype=:listtype , subtype=:subtype where l' +
        'istnum=:listnum')
    Left = 888
    Top = 704
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'listtype'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'subtype'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'listnum'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Funds: TUniTable
    TableName = 'funds'
    OrderFields = 'AccType'
    Connection = DmdFm.DB1
    MasterSource = Dfundsmas
    MasterFields = 'AutoNum'
    DetailFields = 'MasNum'
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.StrictUpdate = False
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 535
    Top = 686
    object FundsrealRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'realRate'
      DisplayFormat = '0.000 %'
      Calculated = True
    end
    object FundsAccType: TSmallintField
      FieldName = 'AccType'
      Required = True
    end
    object FundsAutoNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AutoNum'
    end
    object FundsMasNum: TIntegerField
      FieldName = 'MasNum'
      Required = True
    end
    object FundsTgValue: TFloatField
      FieldName = 'TgValue'
      DisplayFormat = '0,0.000'
    end
    object FundsRuleValueM: TFloatField
      FieldName = 'RuleValueM'
      DisplayFormat = '0,0.000'
    end
    object FundsRuleValueAll: TFloatField
      FieldName = 'RuleValueAll'
      DisplayFormat = '0,0.000'
    end
    object FundsTypeNm: TStringField
      FieldKind = fkLookup
      FieldName = 'TypeNm'
      LookupDataSet = IncoEr
      LookupKeyFields = 'AccNum'
      LookupResultField = 'AccName'
      KeyFields = 'AccType'
      Size = 100
      Lookup = True
    end
    object FundsCeadea: TBooleanField
      FieldName = 'Ceadea'
    end
  end
  object Dfundsmas: TDataSource
    DataSet = fundsmas
    Left = 594
    Top = 744
  end
  object FrFunds: TfrxDBDataset
    UserName = 'FrFunds'
    CloseDataSource = False
    FieldAliases.Strings = (
      'realRate=realRate'
      'AccType=AccType'
      'AutoNum=AutoNum'
      'MasNum=MasNum'
      'TgValue=TgValue'
      'RuleValueM=RuleValueM'
      'RuleValueAll=RuleValueAll'
      'TypeNm=TypeNm')
    DataSet = Funds
    BCDToCurrency = False
    Left = 483
    Top = 690
  end
  object fundsmas: TUniTable
    TableName = 'fundsmas'
    Connection = DmdFm.DB1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 494
    Top = 746
    object fundsmasAutoNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AutoNum'
    end
    object fundsmasMonth_No: TSmallintField
      FieldName = 'Month_No'
      Required = True
    end
    object fundsmasYear_No: TSmallintField
      FieldName = 'Year_No'
      Required = True
    end
  end
  object Dfunds: TDataSource
    DataSet = Funds
    Left = 596
    Top = 688
  end
  object Sfunds: TUniTable
    TableName = 'funds'
    Connection = DmdFm.DB1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 654
    Top = 688
    object SfundsAutoNum: TIntegerField
      FieldName = 'AutoNum'
    end
    object SfundsMasNum: TIntegerField
      FieldName = 'MasNum'
      Required = True
    end
    object SfundsAccType: TSmallintField
      FieldName = 'AccType'
    end
    object SfundsTgValue: TFloatField
      FieldName = 'TgValue'
    end
    object SfundsRuleValueM: TFloatField
      FieldName = 'RuleValueM'
    end
    object SfundsRuleValueAll: TFloatField
      FieldName = 'RuleValueAll'
    end
  end
  object MonthBefErQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal),accdet.acctype,acclist.listtype'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.datetop)<' +
        '= :Month_No)and(month(acclist.datetop)>= :ToMonth_No)and(year(ac' +
        'clist.datetop)= :Year_No)'
      'and((acclist.delf<>3)or(acclist.delf is null))'
      'and(cutf<>1)'
      'group by accdet.acctype,acclist.listtype')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 294
    Top = 766
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'Month_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object MonthBefErQsumaccdetacctotal: TFloatField
      FieldName = 'sum(accdet.acctotal)'
      ReadOnly = True
    end
    object MonthBefErQacctype: TSmallintField
      FieldName = 'acctype'
    end
    object MonthBefErQlisttype: TSmallintField
      FieldName = 'listtype'
      ReadOnly = True
      Required = True
    end
  end
  object FrMonthBefErQ: TfrxDBDataset
    UserName = 'FrMonthBefErQ'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sum(accdet.acctotal)=sum(accdet.acctotal)'
      'acctype=acctype')
    DataSet = MonthBefErQ
    BCDToCurrency = False
    Left = 214
    Top = 756
  end
  object MonthErQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal),accdet.acctype,acclist.listtype'
      'from accdet,acclist '
      'where (accdet.accnum=acclist.listnum)'
      'and'
      '('
      '('
      '(month(acclist.datetop)= :Month_No)'
      'and(year(acclist.datetop)= :Year_No) '
      'and ((acclist.Delf is null)or(acclist.DelF<>3))'
      ')'
      'or'
      '('
      '(month(acclist.Deldate)= :Month_No2)'
      'and(year(acclist.Deldate)= :Year_No2) '
      'and (acclist.DelF=3)'
      ')'
      ''
      ')'
      'group by accdet.acctype,acclist.listtype')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 304
    Top = 696
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'Month_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Month_No2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No2'
        ParamType = ptInput
        Value = nil
      end>
    object MonthErQsumaccdetacctotal: TFloatField
      FieldName = 'sum(accdet.acctotal)'
      ReadOnly = True
    end
    object MonthErQacctype: TSmallintField
      FieldName = 'acctype'
      ReadOnly = True
    end
    object MonthErQlisttype: TSmallintField
      FieldName = 'listtype'
      ReadOnly = True
      Required = True
    end
  end
  object MonthErQ2: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal),accdet.acctype,acclist.listtype'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.Deldate)<' +
        '= :Month_No)and(month(acclist.Deldate)>= :ToMonth_No)and(year(ac' +
        'clist.Deldate)= :Year_No)'
      'and(delf=3)'
      'group by accdet.acctype,acclist.listtype')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 314
    Top = 636
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'Month_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object MonthErQ2sumaccdetacctotal: TFloatField
      FieldName = 'sum(accdet.acctotal)'
      ReadOnly = True
    end
    object MonthErQ2acctype: TSmallintField
      FieldName = 'acctype'
    end
    object MonthErQ2listtype: TSmallintField
      FieldName = 'listtype'
      ReadOnly = True
      Required = True
    end
  end
  object AttacBefQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'select sum(attachd.acctotal)as acctotal,attachd.acctype,attach.l' +
        'isttype'
      'from attachd,attach '
      
        'where (attachd.attachnum=attach.attachnum)and(month(attach.attac' +
        'hdate)<= :FromMonth)and(month(attach.attachdate)>= :ToMonth)and(' +
        'year(attach.attachdate)= :Year_No)'
      ' group by attachd.acctype,attach.listtype')
    Left = 836
    Top = 774
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object AttacBefQacctype: TSmallintField
      FieldName = 'acctype'
      Required = True
    end
    object AttacBefQacctotal: TFloatField
      FieldName = 'acctotal'
      ReadOnly = True
    end
    object AttacBefQlisttype: TIntegerField
      FieldName = 'listtype'
      ReadOnly = True
      Required = True
    end
  end
  object AdmisMetEr: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal)as AccTotal,admismet'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.datetop)>' +
        '= :FromMonth)and(month(acclist.datetop)<= :ToMonth)and(year(accl' +
        'ist.datetop)= :Year_No)'
      'and(accdet.acctype=6)'
      'and(acclist.listtype<>3)'
      'and((acclist.delf is null)or(acclist.delf<>3))'
      'and(cutf<>1)'
      'group by accdet.acctype,admismet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 776
    Top = 754
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object AdmisMetErAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object AdmisMetEradmismet: TSmallintField
      FieldName = 'admismet'
    end
  end
  object AdmisMetEr2: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal)as AccTotal,admismet'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.deldate)>' +
        '= :FromMonth)and(month(acclist.Deldate)<= :ToMonth)and(year(accl' +
        'ist.Deldate)= :Year_No)'
      'and(accdet.acctype=6)'
      'and(acclist.listtype<>3)'
      'and(acclist.delf=3)'
      'group by accdet.acctype,admismet')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 726
    Top = 734
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object AdmisMetEr2AccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object AdmisMetEr2admismet: TSmallintField
      FieldName = 'admismet'
    end
  end
  object AdmisMetAttach: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(attachd.acctotal)as acctotal,met'
      'from attachd,attach '
      
        'where (attachd.attachnum=attach.attachnum)and(month(attach.attac' +
        'hdate)>= :FromMonth)and(month(attach.attachdate)<= :ToMonth)and(' +
        'year(attach.attachdate)= :Year_NO)'
      'and(attachd.acctype=6)and(attach.listtype<>3)'
      ' group by met')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 726
    Top = 784
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_NO'
        ParamType = ptInput
        Value = nil
      end>
    object AdmisMetAttachacctotal: TFloatField
      FieldName = 'acctotal'
      ReadOnly = True
    end
    object AdmisMetAttachmet: TSmallintField
      FieldName = 'met'
    end
  end
  object AdmisDel: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal)as AccTotal,admismet'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.Deldate)>' +
        '= :FromMonth)and(month(acclist.DelDate)<= :ToMonth)and(year(accl' +
        'ist.DelDate)= :Year_No)'
      'and(accdet.acctype=6)'
      'and(acclist.listtype<>3)'
      'and(acclist.delf=1)'
      'group by accdet.acctype,admismet')
    Left = 996
    Top = 716
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object AdmisDelAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object AdmisDeladmismet: TSmallintField
      FieldName = 'admismet'
    end
  end
  object EradDelQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'SELECT DISTINCT d1.acctype,d.listtype,sum(acctotal)as AccTotal'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '  (month(D.DelDate)>= :FromMonth)'
      'and(month(D.DelDate)<= :ToMonth)'
      'and(year(D.DelDate)= :Year_No)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      'and(d.delf=1)'
      'group by listtype,acctype')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 930
    Top = 640
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Year_No'
        Value = nil
      end>
    object EradDelQacctype: TSmallintField
      FieldName = 'acctype'
    end
    object EradDelQlisttype: TSmallintField
      FieldName = 'listtype'
      ReadOnly = True
      Required = True
    end
    object EradDelQAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
  end
  object EradAlterQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT DISTINCT d1.acctype,d.listtype,sum(acctotal)as AccTotal,A' +
        'lterBill,d1.accnum,d.listnum'
      'FROM AccList D, AccDet D1'
      'WHERE'
      '  (month(D.DelDate)>= :FromMonth)'
      'and(month(D.DelDate)<= :ToMonth)'
      'and(year(D.DelDate)= :Year_No)'
      ' AND (D1.AccNum = D.ListNum)'
      ' AND (D1.ListType = D.ListType)'
      'and (d.delf=2)'
      'group by listtype,d.listnum,acctype')
    Left = 863
    Top = 573
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object EradAlterQacctype: TSmallintField
      FieldName = 'acctype'
    end
    object EradAlterQlisttype: TSmallintField
      FieldName = 'listtype'
      ReadOnly = True
      Required = True
    end
    object EradAlterQAccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object EradAlterQAlterBill: TIntegerField
      FieldName = 'AlterBill'
      ReadOnly = True
    end
    object EradAlterQaccnum: TIntegerField
      FieldName = 'accnum'
    end
    object EradAlterQlistnum: TIntegerField
      FieldName = 'listnum'
      ReadOnly = True
    end
  end
  object AlterQ1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO acclist'
      '  (AdmisMet)'
      'VALUES'
      '  (:AdmisMet)')
    SQLDelete.Strings = (
      'DELETE FROM acclist'
      'WHERE'
      '  ListNum = :Old_ListNum')
    SQLUpdate.Strings = (
      'UPDATE acclist'
      'SET'
      '  AdmisMet = :AdmisMet'
      'WHERE'
      '  ListNum = :Old_ListNum')
    SQLLock.Strings = (
      'SELECT * FROM acclist'
      'WHERE'
      '  ListNum = :Old_ListNum'
      'FOR UPDATE')
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal)as AccTotal,admismet'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.Deldate)>' +
        '= :FromMonth)and(month(acclist.DelDate)<= :ToMonth)and(year(accl' +
        'ist.DelDate)= :Year_No)'
      'and(accdet.acctype=6)'
      'and(acclist.listtype<>3)'
      'and(acclist.delf=2)'
      'group by accdet.acctype,admismet')
    Left = 666
    Top = 578
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object AlterQ1AccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object AlterQ1admismet: TSmallintField
      FieldName = 'admismet'
    end
  end
  object AlterQ2: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select sum(accdet.acctotal)as AccTotal,admismet'
      'from accdet,acclist '
      
        'where (accdet.accnum=acclist.listnum)and(month(acclist.Deldate)>' +
        '= :FromMonth)and(month(acclist.DelDate)<= :ToMonth)and(year(accl' +
        'ist.DelDate)= :Year_No)'
      'and(accdet.acctype=6)'
      'and(acclist.listtype<>3)'
      'and(acclist.delf=3)'
      'group by accdet.acctype,admismet')
    Left = 658
    Top = 523
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FromMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'ToMonth'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object AlterQ2AccTotal: TFloatField
      FieldName = 'AccTotal'
      ReadOnly = True
    end
    object AlterQ2admismet: TSmallintField
      FieldName = 'admismet'
    end
  end
  object CeadeErQ: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(RuleValueAll)as ruleValueAll,sum(RuleValueM)as RuleVa' +
        'lueM ,sum(TgValue)as TgValue'
      'FROM `funds`,fundsmas '
      'where (fundsmas.autonum=funds.masnum ) and'
      '(funds.ceadea=True)'
      'and(fundsmas.month_no= :Month_No)and(fundsmas.year_no= :Year_No)')
    Left = 390
    Top = 690
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'Month_No'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'Year_No'
        ParamType = ptInput
        Value = nil
      end>
    object CeadeErQruleValueAll: TFloatField
      FieldName = 'ruleValueAll'
      ReadOnly = True
    end
    object CeadeErQRuleValueM: TFloatField
      FieldName = 'RuleValueM'
      ReadOnly = True
    end
    object CeadeErQTgValue: TFloatField
      FieldName = 'TgValue'
      ReadOnly = True
    end
  end
  object MezMas: TUniTable
    TableName = 'mezmas'
    Connection = DmdFm.DB1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 298
    Top = 498
    object MezMasYear_No: TSmallintField
      FieldName = 'Year_No'
      Required = True
    end
  end
  object MezDet: TUniTable
    TableName = 'mezdet'
    Connection = DmdFm.DB1
    MasterSource = DMezMas
    MasterFields = 'Year_No'
    DetailFields = 'Year_No'
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Left = 298
    Top = 578
    object MezDetAutoNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AutoNum'
    end
    object MezDetYear_No: TSmallintField
      FieldName = 'Year_No'
    end
    object MezDetInco_Value: TFloatField
      FieldName = 'Inco_Value'
    end
    object MezDetInc_Num: TSmallintField
      FieldName = 'Inc_Num'
      Required = True
    end
    object MezDetInc_Nm: TStringField
      FieldKind = fkLookup
      FieldName = 'Inc_Nm'
      LookupKeyFields = 'AccNum'
      LookupResultField = 'AccName'
      KeyFields = 'Inc_Num'
      Size = 100
      Lookup = True
    end
  end
  object DMezMas: TDataSource
    DataSet = MezMas
    Left = 228
    Top = 508
  end
  object DMezDet: TDataSource
    DataSet = MezDet
    Left = 238
    Top = 578
  end
  object SumEradAll: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(tgvalue)as TgValue,sum(rulevalueM)as RuleValueM,sum(R' +
        'uleValueAll)as RuleValueAll FROM `funds`'
      
        'where (acctype<>50)and(acctype<>52)and(acctype<>53)and(MasNum= :' +
        'MasNum)')
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 610
    Top = 816
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'MasNum'
        ParamType = ptInput
        Value = nil
      end>
    object SumEradAllTgValue: TFloatField
      FieldName = 'TgValue'
      ReadOnly = True
    end
    object SumEradAllRuleValueM: TFloatField
      FieldName = 'RuleValueM'
      ReadOnly = True
    end
    object SumEradAllRuleValueAll: TFloatField
      FieldName = 'RuleValueAll'
      ReadOnly = True
    end
  end
  object FrSumEradAll: TfrxDBDataset
    UserName = 'FrSumEradAll'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TgValue=TgValue'
      'RuleValueM=RuleValueM'
      'RuleValueAll=RuleValueAll')
    DataSet = SumEradAll
    BCDToCurrency = False
    Left = 536
    Top = 826
  end
  object SumErad: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      
        'SELECT sum(tgvalue)as TgValue,sum(rulevalueM)as RuleValueM,sum(R' +
        'uleValueAll)as RuleValueAll FROM `funds`'
      
        'where (acctype<>42) and(acctype<>50)and(acctype<>51)and(acctype<' +
        '>52)and(acctype<>53)and((ceadea=false)or (ceadea is null))and(Ma' +
        'sNum= :MasNum)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 476
    Top = 816
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'MasNum'
        ParamType = ptInput
        Value = nil
      end>
    object SumEradTgValue: TFloatField
      FieldName = 'TgValue'
      ReadOnly = True
    end
    object SumEradRuleValueM: TFloatField
      FieldName = 'RuleValueM'
      ReadOnly = True
    end
    object SumEradRuleValueAll: TFloatField
      FieldName = 'RuleValueAll'
      ReadOnly = True
    end
  end
  object FrSumErad: TfrxDBDataset
    UserName = 'FrSumErad'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TgValue=TgValue'
      'RuleValueM=RuleValueM'
      'RuleValueAll=RuleValueAll')
    DataSet = SumErad
    BCDToCurrency = False
    Left = 406
    Top = 816
  end
  object IncoEr: TUniTable
    TableName = 'incoer'
    Connection = DmdFm.DB1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 33
    Top = 803
    object IncoErAccNum: TIntegerField
      FieldName = 'AccNum'
      Required = True
    end
    object IncoErAccName: TWideStringField
      FieldName = 'AccName'
      Required = True
      Size = 100
    end
  end
  object DIncoEr: TDataSource
    DataSet = IncoEr
    Left = 93
    Top = 803
  end
  object SAccList: TUniQuery
    Connection = DmdFm.DB1
    SQL.Strings = (
      'select * from acclist where listnum=:listnum')
    OnCalcFields = SAccListCalcFields
    Left = 704
    ParamData = <
      item
        DataType = ftInteger
        Name = 'listnum'
        ParamType = ptInput
        Value = nil
      end>
    object SAccListlistnum: TIntegerField
      FieldName = 'listnum'
    end
    object SAccListlisttype: TSmallintField
      FieldName = 'listtype'
      Required = True
    end
    object SAccListListDate: TDateField
      FieldName = 'ListDate'
    end
    object SAccListShipNum: TSmallintField
      FieldName = 'ShipNum'
    end
    object SAccListArriveDate: TDateField
      FieldName = 'ArriveDate'
    end
    object SAccListEndEmpDate: TDateField
      FieldName = 'EndEmpDate'
    end
    object SAccListGoodsDesc: TSmallintField
      FieldName = 'GoodsDesc'
    end
    object SAccListGoodsQty: TFloatField
      FieldName = 'GoodsQty'
    end
    object SAccListShipBillNum: TSmallintField
      FieldName = 'ShipBillNum'
    end
    object SAccListWeSpace: TFloatField
      FieldName = 'WeSpace'
    end
    object SAccListTotal: TFloatField
      FieldName = 'Total'
    end
    object SAccListAdmisMet: TSmallintField
      FieldName = 'AdmisMet'
    end
    object SAccListStamp: TFloatField
      FieldName = 'Stamp'
    end
    object SAccListUnit: TSmallintField
      FieldName = 'Unit'
    end
    object SAccListBillNum: TWideStringField
      FieldName = 'BillNum'
      Size = 300
    end
    object SAccListloukof: TSmallintField
      FieldName = 'loukof'
    end
    object SAccListToname: TWideStringField
      FieldName = 'Toname'
      Size = 100
    end
    object SAccListElectric: TSmallintField
      FieldName = 'Electric'
    end
    object SAccListRemain: TSmallintField
      FieldName = 'Remain'
    end
    object SAccListWight: TFloatField
      FieldName = 'Wight'
    end
    object SAccListLocOrFor: TWideStringField
      FieldName = 'LocOrFor'
      Size = 6
    end
    object SAccListPetrol: TSmallintField
      FieldName = 'Petrol'
    end
    object SAccListDirty: TSmallintField
      FieldName = 'Dirty'
    end
    object SAccListFTime1: TTimeField
      FieldName = 'FTime1'
    end
    object SAccListEndTime1: TTimeField
      FieldName = 'EndTime1'
    end
    object SAccListMove1: TSmallintField
      FieldName = 'Move1'
    end
    object SAccListFTime2: TTimeField
      FieldName = 'FTime2'
    end
    object SAccListEndTime2: TTimeField
      FieldName = 'EndTime2'
    end
    object SAccListMove2: TSmallintField
      FieldName = 'Move2'
    end
    object SAccListShipType: TSmallintField
      FieldName = 'ShipType'
    end
    object SAccListMezan: TSmallintField
      FieldName = 'Mezan'
    end
    object SAccListKemawea: TSmallintField
      FieldName = 'Kemawea'
    end
    object SAccListFrg: TSmallintField
      FieldName = 'Frg'
    end
    object SAccListTadl: TSmallintField
      FieldName = 'Tadl'
    end
    object SAccListFrgFlag: TSmallintField
      FieldName = 'FrgFlag'
    end
    object SAccListHjzFlag: TSmallintField
      FieldName = 'HjzFlag'
    end
    object SAccListTadlFlag: TSmallintField
      FieldName = 'TadlFlag'
    end
    object SAccListEdafe1: TSmallintField
      FieldName = 'Edafe1'
    end
    object SAccListEdafe2: TSmallintField
      FieldName = 'Edafe2'
    end
    object SAccListGoodsname: TWideStringField
      FieldName = 'Goodsname'
      Size = 100
    end
    object SAccListMoveall: TSmallintField
      FieldName = 'Moveall'
    end
    object SAccListMovV1: TFloatField
      FieldName = 'MovV1'
    end
    object SAccListMovV2: TFloatField
      FieldName = 'MovV2'
    end
    object SAccListLocWitOut: TSmallintField
      FieldName = 'LocWitOut'
    end
    object SAccListChechDate: TDateField
      FieldName = 'ChechDate'
    end
    object SAccListMonth: TSmallintField
      FieldName = 'Month'
    end
    object SAccListCars: TSmallintField
      FieldName = 'Cars'
    end
    object SAccListStates: TSmallintField
      FieldName = 'States'
    end
    object SAccListQty2: TSmallintField
      FieldName = 'Qty2'
    end
    object SAccListUnit2: TSmallintField
      FieldName = 'Unit2'
    end
    object SAccListElecDate: TDateField
      FieldName = 'ElecDate'
    end
    object SAccListRemDate: TDateField
      FieldName = 'RemDate'
    end
    object SAccListMezDate: TDateField
      FieldName = 'MezDate'
    end
    object SAccListRoafe: TSmallintField
      FieldName = 'Roafe'
    end
    object SAccListDama: TSmallintField
      FieldName = 'Dama'
    end
    object SAccListTfteshCar: TSmallintField
      FieldName = 'TfteshCar'
    end
    object SAccListAttTo: TWideStringField
      FieldName = 'AttTo'
    end
    object SAccListLeverweight: TFloatField
      FieldName = 'Leverweight'
    end
    object SAccListSaba: TSmallintField
      FieldName = 'Saba'
    end
    object SAccListWeeksNum: TSmallintField
      FieldName = 'WeeksNum'
    end
    object SAccListStates1: TSmallintField
      FieldName = 'States1'
    end
    object SAccListStates2: TSmallintField
      FieldName = 'States2'
    end
    object SAccListDays: TSmallintField
      FieldName = 'Days'
    end
    object SAccListDaysM: TSmallintField
      FieldName = 'DaysM'
    end
    object SAccListEleeshDate: TDateField
      FieldName = 'EleeshDate'
    end
    object SAccListReshDate: TDateField
      FieldName = 'ReshDate'
    end
    object SAccListDaysMM: TFloatField
      FieldName = 'DaysMM'
    end
    object SAccListSapa: TSmallintField
      FieldName = 'Sapa'
    end
    object SAccListAutoDate: TDateField
      FieldName = 'AutoDate'
    end
    object SAccListAginNm: TIntegerField
      FieldName = 'AginNm'
    end
    object SAccListF1Num: TSmallintField
      FieldName = 'F1Num'
    end
    object SAccListUser: TIntegerField
      FieldName = 'User'
    end
    object SAccListDateTop: TDateField
      FieldName = 'DateTop'
    end
    object SAccListNumT: TIntegerField
      FieldName = 'NumT'
    end
    object SAccListbarcade: TWideStringField
      FieldName = 'barcade'
      Size = 35
    end
    object SAccListarchiveF: TShortintField
      FieldName = 'archiveF'
      Required = True
    end
    object SAccListHoursNum: TSmallintField
      FieldName = 'HoursNum'
    end
    object SAccListcouponIn: TIntegerField
      FieldName = 'couponIn'
    end
    object SAccListcouponOut: TIntegerField
      FieldName = 'couponOut'
    end
    object SAccListTelegramNum: TIntegerField
      FieldName = 'TelegramNum'
    end
    object SAccListPaidF: TSmallintField
      FieldName = 'PaidF'
    end
    object SAccListUnitRsom: TSmallintField
      FieldName = 'UnitRsom'
    end
    object SAccListNum1: TSmallintField
      FieldName = 'Num1'
    end
    object SAccListNum2: TSmallintField
      FieldName = 'Num2'
    end
    object SAccListNum3: TSmallintField
      FieldName = 'Num3'
    end
    object SAccListNum4: TSmallintField
      FieldName = 'Num4'
    end
    object SAccListNum5: TSmallintField
      FieldName = 'Num5'
    end
    object SAccListNum6: TSmallintField
      FieldName = 'Num6'
    end
    object SAccListNum7: TSmallintField
      FieldName = 'Num7'
    end
    object SAccListNum8: TSmallintField
      FieldName = 'Num8'
    end
    object SAccListShipMet: TSmallintField
      FieldName = 'ShipMet'
    end
    object SAccListReserve: TSmallintField
      FieldName = 'Reserve'
    end
    object SAccListFrgShip: TSmallintField
      FieldName = 'FrgShip'
    end
    object SAccListQty3: TSmallintField
      FieldName = 'Qty3'
    end
    object SAccListBillNum2: TWideStringField
      FieldName = 'BillNum2'
      Size = 300
    end
    object SAccListSubType: TSmallintField
      FieldName = 'SubType'
    end
    object SAccListDelF: TSmallintField
      FieldName = 'DelF'
    end
    object SAccListDelDate: TDateField
      FieldName = 'DelDate'
    end
    object SAccListboat: TSmallintField
      FieldName = 'boat'
    end
    object SAccListAgntR: TSmallintField
      FieldName = 'AgntR'
    end
    object SAccListSharedF: TSmallintField
      FieldName = 'SharedF'
    end
    object SAccListChemicalF: TSmallintField
      FieldName = 'ChemicalF'
    end
    object SAccListAlterBill: TIntegerField
      FieldName = 'AlterBill'
    end
    object SAccListStampAbs: TFloatField
      FieldName = 'StampAbs'
    end
    object SAccListListNumR: TIntegerField
      FieldName = 'ListNumR'
    end
    object SAccListDailyNum: TIntegerField
      FieldName = 'DailyNum'
    end
    object SAccListAttachNum: TIntegerField
      FieldName = 'AttachNum'
    end
    object SAccListDisCount: TFloatField
      FieldName = 'DisCount'
    end
    object SAccListDelWhy: TWideStringField
      FieldName = 'DelWhy'
      Size = 70
    end
    object SAccListcutF: TSmallintField
      FieldName = 'cutF'
    end
    object SAccListCurrntF: TSmallintField
      FieldName = 'CurrntF'
    end
    object SAccListDebitF: TSmallintField
      FieldName = 'DebitF'
    end
    object SAccListCurrDate: TDateField
      FieldName = 'CurrDate'
    end
    object SAccListDailyCurr: TIntegerField
      FieldName = 'DailyCurr'
    end
    object SAccListLockCurr: TSmallintField
      FieldName = 'LockCurr'
    end
    object SAccListClaimF: TSmallintField
      FieldName = 'ClaimF'
    end
    object SAccListClaimDate: TDateField
      FieldName = 'ClaimDate'
    end
    object SAccListClaimNum: TIntegerField
      FieldName = 'ClaimNum'
    end
    object SAccListMsrahname: TWideStringField
      FieldName = 'Msrahname'
      Size = 70
    end
    object SAccListphoneMsr: TWideStringField
      FieldName = 'phoneMsr'
      Size = 15
    end
    object SAccListNTotal: TFloatField
      FieldName = 'NTotal'
    end
    object SAccListNStamp: TFloatField
      FieldName = 'NStamp'
    end
    object SAccListQRALL: TWideMemoField
      FieldName = 'QRALL'
      BlobType = ftWideMemo
    end
    object SAccListloadnum: TIntegerField
      FieldName = 'loadnum'
    end
    object SAccListBillloading: TIntegerField
      FieldName = 'Billloading'
    end
    object SAccListTotalD: TFloatField
      FieldName = 'TotalD'
    end
    object SAccListInvoiceD: TSmallintField
      FieldName = 'InvoiceD'
    end
    object SAccListNTotalD: TFloatField
      FieldName = 'NTotalD'
    end
    object SAccListNStampD: TFloatField
      FieldName = 'NStampD'
    end
    object SAccListTo: TSmallintField
      FieldName = 'To'
    end
    object SAccListElecQty: TSmallintField
      FieldName = 'ElecQty'
    end
    object SAccListRemQty: TSmallintField
      FieldName = 'RemQty'
    end
    object SAccListDollarPrice: TFloatField
      FieldName = 'DollarPrice'
    end
    object SAccListEx_Price: TFloatField
      FieldName = 'Ex_Price'
    end
    object SAccListSubType2: TSmallintField
      FieldName = 'SubType2'
    end
    object SAccListshared_usefork: TSmallintField
      FieldName = 'shared_usefork'
    end
    object SAccListPaidNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaidNm'
      Calculated = True
    end
    object SAccListTypeNm: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeNm'
      Size = 30
      Calculated = True
    end
    object SAccListStampnet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Stampnet'
      Calculated = True
    end
    object SAccListNet: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Net'
      Calculated = True
    end
  end
end
