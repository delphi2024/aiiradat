
unit DmdUm;

interface

uses
  SysUtils, Classes, DB, Uni, DBAccess, MemDS, inifiles, forms, messages,
  dialogs, windows, controls, variants, ActnList, UniProvider, MySQLUniProvider,
  DASQLMonitor, UniSQLMonitor, frxDBSet, frxClass, graphics, frxGZip, frxDMPExport, frxGradient, frxChBox, frxCross, frxRich, frxOLE,
  frxDesgn, DateUtils, frxBarcode, DADump, UniDump, XPMan,
  StdCtrls,
  shellapi,
  frxExportImage,
  frxExportRTF,  frxExportHTML, frxExportPDF,
  MemData,

  ComCtrls, frxExportBaseDialog, frxExportDOCX, frxExportXLSX, frxExportZPL,
  frxExportXLS, frxExportCSV;

type
  TDmdFm = class(TDataModule)
    info: TUniTable;
    Frinfo: TfrxDBDataset;
    infoSide: TWideStringField;
    infoAddress1: TWideStringField;
    infoAddress2: TWideStringField;
    infoStamp: TFloatField;
    infoFromDate: TDateField;
    infoToDate: TDateField;
    infoValue1: TFloatField;
    infoValue2: TFloatField;
    infoNum1: TIntegerField;
    infoNum2: TIntegerField;
    infoNum3: TIntegerField;
    infoStampTotal: TFloatField;
    infoTotal: TFloatField;
    infoNum4: TIntegerField;
    Perm: TUniTable;
    PermUserNum: TAutoIncField;
    PermUserName: TWideStringField;
    PermPass: TWideStringField;
    PermShipData: TBooleanField;
    PermAgent: TBooleanField;
    PermHelp: TBooleanField;
    PermIncome: TBooleanField;
    PermShipp: TBooleanField;
    PermAdmis: TBooleanField;
    PermAcList: TBooleanField;
    PermPerm: TBooleanField;
    PermReports: TBooleanField;
    PermConst: TBooleanField;
    PermLockList: TBooleanField;
    PermCommList: TBooleanField;
    PermRsomList: TBooleanField;
    PermRga: TBooleanField;
    Permpyan1: TBooleanField;
    Permpyan2: TBooleanField;
    PermpyanD: TBooleanField;
    PermDrevle: TBooleanField;
    PermPoapa: TBooleanField;
    PermAdorfrze: TBooleanField;
    PermKzena: TBooleanField;
    PermDelload: TBooleanField;
    PermDelBillload: TBooleanField;
    PermDelTrans: TBooleanField;
    PermCarry: TBooleanField;
    PermArchive: TBooleanField;
    PermRsomBill: TBooleanField;
    PermDelList: TBooleanField;
    PermEnbEdit: TBooleanField;
    PermCarryRsom: TBooleanField;
    PermDailyClose: TBooleanField;
    PermDailyView: TBooleanField;
    PermUnlockBill: TBooleanField;
    PermAlterBill: TBooleanField;
    PermShipRsom: TBooleanField;
    PermAgentRsom: TBooleanField;
    PermHelpRsom: TBooleanField;
    PermCarryDRsom: TBooleanField;
    PermCloseRsom: TBooleanField;
    PermUnlockRsom: TBooleanField;
    PermAlterBillR: TBooleanField;
    PermDelBillR: TBooleanField;
    PermReportsRsom: TBooleanField;
    PermDailyViewR: TBooleanField;
    PermChType: TBooleanField;
    PermRetDaily: TBooleanField;
    PermPrepRep: TBooleanField;
    PermIncoRep: TBooleanField;
    PermFinalRep: TBooleanField;
    PermGenRep: TBooleanField;
    PermDelRep: TBooleanField;
    PermGenRepEnt: TBooleanField;
    PermChTypeR: TBooleanField;
    PermRecalc: TBooleanField;
    PermTgValue: TBooleanField;
    PermEsalTr: TBooleanField;
    PermAgentsTr: TBooleanField;
    PermConsTr: TBooleanField;
    PermSrchTr: TBooleanField;
    PermRepTr: TBooleanField;
    PermPermTr: TBooleanField;
    PermCurrent: TBooleanField;
    PermDebit: TBooleanField;
    PermLockEsal: TBooleanField;
    PermUnLockEsal: TBooleanField;
    PermAdmArchive: TBooleanField;
    PermAcclistArch: TBooleanField;
    PermCreDataBase: TBooleanField;
    PermOutPort: TBooleanField;
    DPerm: TDataSource;
    FPerm: TfrxDBDataset;
    VDervr1: TUniQuery;
    VDervr2: TUniQuery;
    VDervr3: TUniQuery;
    VDervr4: TUniQuery;
    VDervr5: TUniQuery;
    VDervr1ListNum: TIntegerField;
    VDervr1barcade: TWideStringField;
    VDervr1NumT: TIntegerField;
    DVDervr1: TUniDataSource;
    DVDervr2: TUniDataSource;
    DVDervr3: TUniDataSource;
    DVDervr4: TUniDataSource;
    DVDervr5: TUniDataSource;
    VDervr2Auto: TIntegerField;
    VDervr2Billloading: TWideStringField;
    VDervr2LNum: TIntegerField;
    VDervr2Qty: TFloatField;
    VDervr2Marks: TSmallintField;
    VDervr2GoodsType: TSmallintField;
    VDervr2OrgPort: TSmallintField;
    VDervr2Loader: TWideStringField;
    VDervr2Sender: TSmallintField;
    VDervr2Kias: TFloatField;
    VDervr2Weight: TFloatField;
    VDervr2Send: TWideStringField;
    VDervr2Goodsname: TWideStringField;
    VDervr2Tfasel: TSmallintField;
    VDervr2EfrajNum: TWideStringField;
    VDervr2EfrajDate: TDateField;
    VDervr2Flag: TSmallintField;
    VDervr2BillNum: TIntegerField;
    VDervr2BillType: TSmallintField;
    VDervr2StoreType: TSmallintField;
    VDervr2Notes: TWideStringField;
    VDervr2selectF: TSmallintField;
    VDervr2StopF: TSmallintField;
    VDervr2StopWhy: TWideStringField;
    VDervr2EnbEdit: TSmallintField;
    VDervr3TransNUm: TSmallintField;
    VDervr3TransType: TSmallintField;
    VDervr3EmptyPort: TSmallintField;
    VDervr3ArriveDate: TDateField;
    VDervr3SideWalk: TSmallintField;
    VDervr3Agent: TSmallintField;
    VDervr3ListDate: TDateField;
    VDervr3EndDate: TDateField;
    VDervr3RofR: TSmallintField;
    VDervr3Taghez: TSmallintField;
    VDervr3longOf1: TSmallintField;
    VDervr3MixedF: TSmallintField;
    VDervr3ShipType: TSmallintField;
    VDervr3ShipMet: TSmallintField;
    VDervr3carsTfF: TSmallintField;
    VDervr3Num: TIntegerField;
    VDervr4numAuto: TIntegerField;
    VDervr4numLoad: TIntegerField;
    VDervr4DateAmer: TDateField;
    VDervr4NameMstelm: TWideStringField;
    VDervr4MsrhJomrke: TWideStringField;
    VDervr4numCar: TWideStringField;
    VDervr4NameSCar: TWideStringField;
    VDervr4NUmBatka: TWideStringField;
    VDervr4NameMMstelm: TWideStringField;
    VDervr4NUMBMM: TWideStringField;
    VDervr4NameShip: TWideStringField;
    VDervr4NameOkel: TWideStringField;
    VDervr4DateOsole: TDateField;
    VDervr4BolesaNum: TWideStringField;
    VDervr4User: TWideStringField;
    VDervr4NUMAfraje: TWideStringField;
    VDervr4barcade: TWideStringField;
    VDervr4numloadlist: TIntegerField;
    VDervr4ozen: TWideStringField;
    VDervr4kyse: TWideStringField;
    VDervr4smhea: TDateField;
    VDervr4MklfNum: TSmallintField;
    VDervr5numAuto: TIntegerField;
    VDervr5numAmer: TIntegerField;
    VDervr5numAlama: TWideStringField;
    VDervr5OasfeB: TWideStringField;
    VDervr5TypeCar: TWideStringField;
    VDervr5NumCar: TWideStringField;
    VDervr5type: TWideStringField;
    VDervr5MstlmName: TWideStringField;
    VDervr5OutPort: TSmallintField;
    VDervr6: TUniQuery;
    VDervr7: TUniQuery;
    DVDervr6: TUniDataSource;
    DVDervr7: TUniDataSource;
    VDervr6Num: TIntegerField;
    VDervr6Lnum: TIntegerField;
    VDervr6numAuto: TIntegerField;
    VDervr6Qty: TSmallintField;
    VDervr6TypeNm: TSmallintField;
    VDervr6Hawea_Num: TWideStringField;
    VDervr6Tfasel: TSmallintField;
    VDervr7Num: TIntegerField;
    VDervr7BillNum: TWideStringField;
    VDervr7numAuto: TIntegerField;
    VDervr7Qty: TFloatField;
    VDervr7Unit: TSmallintField;
    VDervr7NumAutoS: TIntegerField;
    VDervr7shipType: TSmallintField;
    VDervr7shipMet: TSmallintField;
    VDervr7Lever: TSmallintField;
    Units: TUniTable;
    UnitsNum: TAutoIncField;
    UnitsStateValue: TFloatField;
    DUnits: TDataSource;
    VDervr6UnitNm: TStringField;
    DPorts: TDataSource;
    Ports: TUniTable;
    PortsPortName: TWideStringField;
    PortsNum: TAutoIncField;
    PortsPAbsName: TWideStringField;
    Ships: TUniTable;
    ShipsSName: TWideStringField;
    ShipsNum: TIntegerField;
    ShipsSAbsName: TWideStringField;
    ShipsSType: TSmallintField;
    ShipsSNation: TSmallintField;
    ShipsTypeNm: TWideStringField;
    ShipsNatNm: TWideStringField;
    ShipsWeight: TFloatField;
    ShipsShipMet: TSmallintField;
    ShipsShipType: TSmallintField;
    ShipsTypeRsom: TSmallintField;
    ShipsTypeRsNm: TWideStringField;
    ShipsNumAuto: TIntegerField;
    ShipsLocOrFor: TStringField;
    ShipsGross: TFloatField;
    ShipsImoNum: TIntegerField;
    ShipsName_En: TWideStringField;
    ShipsSerialNum: TIntegerField;
    ShipsNotes: TWideStringField;
    ShipsRecCer: TSmallintField;
    DShips: TDataSource;
    AdmisMet: TUniTable;
    AdmisMetMetName: TWideStringField;
    AdmisMetNum: TAutoIncField;
    AdmisMetMetAbsName: TWideStringField;
    AdmisMetMetVAlue: TFloatField;
    DAdmisMet: TDataSource;
    nation: TUniTable;
    nationNatname: TWideStringField;
    nationNum: TAutoIncField;
    nationAbsName: TWideStringField;
    Dnation: TDataSource;
    Agents: TUniTable;
    AgentsAgName: TWideStringField;
    AgentsAgAbsName: TWideStringField;
    AgentsPhone: TWideStringField;
    AgentsFax: TWideStringField;
    AgentsE_Mail: TWideStringField;
    AgentsAddress: TWideStringField;
    AgentsAgType: TSmallintField;
    AgentsFirstBal: TFloatField;
    AgentsCurrentBal: TFloatField;
    AgentsNum: TIntegerField;
    AgentsEsstF: TSmallintField;
    DAgents: TDataSource;
    GoodsTy: TUniTable;
    GoodsTyTName: TWideStringField;
    GoodsTyNum: TAutoIncField;
    GoodsTyTAbsName: TWideStringField;
    Store: TUniTable;
    StoreNum: TSmallintField;
    StoreWalk: TFloatField;
    StoreStore: TFloatField;
    DStore: TDataSource;
    Sides: TUniTable;
    SidesSName: TWideStringField;
    SidesSNum: TAutoIncField;
    SidesSAbsName: TWideStringField;
    DSides: TDataSource;
    DShipTy: TDataSource;
    ShipTy: TUniTable;
    ShipTyTyName: TWideStringField;
    ShipTyNum: TAutoIncField;
    ShipTyTyAbsName: TWideStringField;
    ShipTyRsom: TSmallintField;
    ShipTyNumAuto: TIntegerField;
    VDervr2PortNm: TWideStringField;
    VDervr2LoaderNm: TWideStringField;
    VDervr2MarkNm: TWideStringField;
    VDervr2StoreTypeNm: TWideStringField;
    VDervr2GoodsNm: TWideStringField;
    RVDervr4: TfrxDBDataset;
    RVDervr5: TfrxDBDataset;
    VDervr1AllwedDate: TDateField;
    VDervr1weeks: TSmallintField;
    VDervr1ListDate: TDateField;
    VDervr1EndEmpDate: TDateField;
    VDervr1AginNm: TIntegerField;
    VDervr1AgNm: TWideStringField;
    SAgents: TUniTable;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    SmallintField1: TSmallintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField1: TIntegerField;
    SmallintField2: TSmallintField;
    DSAgents: TDataSource;
    VDervr1ShipNum: TSmallintField;
    VDervr1Toname: TWideStringField;
    SShips: TUniTable;
    WideStringField7: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField8: TWideStringField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    FloatField3: TFloatField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    WideStringField11: TWideStringField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    FloatField4: TFloatField;
    IntegerField4: TIntegerField;
    WideStringField12: TWideStringField;
    IntegerField5: TIntegerField;
    WideStringField13: TWideStringField;
    SmallintField8: TSmallintField;
    DSShips: TDataSource;
    VDervr1ShipNm: TStringField;
    VDervr3AgentNm: TStringField;
    VDervr4log1: TSmallintField;
    DVloadHrak: TUniDataSource;
    QGROUPCONCAT: TUniQuery;
    QGROUPCONCATShipNm: TStringField;
    QGROUPCONCATNum: TIntegerField;
    QGROUPCONCATTransNUm: TSmallintField;
    QGROUPCONCATArriveDate: TDateField;
    QGROUPCONCATListDate: TDateField;
    QGROUPCONCATGROUP_CONCATadmdet2BillNum: TMemoField;
    QGROUPCONCATCOUNTadmdet2BillNum: TLargeintField;
    FRQGROUPCONCAT: TfrxDBDataset;
    SPerm: TUniTable;
    SPermUserNum: TIntegerField;
    SPermUserName: TWideStringField;
    SPermPass: TWideStringField;
    SPermShipData: TBooleanField;
    SPermAgent: TBooleanField;
    SPermHelp: TBooleanField;
    SPermIncome: TBooleanField;
    SPermShipp: TBooleanField;
    SPermAdmis: TBooleanField;
    SPermAcList: TBooleanField;
    SPermPerm: TBooleanField;
    SPermReports: TBooleanField;
    SPermConst: TBooleanField;
    SPermLockList: TBooleanField;
    SPermCommList: TBooleanField;
    SPermRsomList: TBooleanField;
    SPermRga: TBooleanField;
    SPermpyan1: TBooleanField;
    SPermpyan2: TBooleanField;
    SPermpyanD: TBooleanField;
    SPermDrevle: TBooleanField;
    SPermpoapa: TBooleanField;
    SPermAdorfrze: TBooleanField;
    SPermkzena: TBooleanField;
    SPermdelload: TBooleanField;
    SPermdelbillload: TBooleanField;
    SPermdeltrans: TBooleanField;
    SPermCarry: TBooleanField;
    SPermArchive: TBooleanField;
    SPermRsomBill: TBooleanField;
    SPermDelList: TBooleanField;
    SPermEnbEdit: TBooleanField;
    SPermCarryRsom: TBooleanField;
    SPermDailyClose: TBooleanField;
    SPermDailyView: TBooleanField;
    SPermUnlockBill: TBooleanField;
    SPermAlterBill: TBooleanField;
    SPermShipRsom: TBooleanField;
    SPermAgentRsom: TBooleanField;
    SPermHelpRsom: TBooleanField;
    SPermCarryDRsom: TBooleanField;
    SPermCloseRsom: TBooleanField;
    SPermUnlockRsom: TBooleanField;
    SPermAlterBillR: TBooleanField;
    SPermDelBillR: TBooleanField;
    SPermReportsRsom: TBooleanField;
    SPermDailyViewR: TBooleanField;
    SPermChType: TBooleanField;
    SPermRetDaily: TBooleanField;
    SPermPrepRep: TBooleanField;
    SPermIncoRep: TBooleanField;
    SPermDelRep: TBooleanField;
    SPermFinalRep: TBooleanField;
    SPermGenRep: TBooleanField;
    SPermGenRepEnt: TBooleanField;
    SPermChTypeR: TBooleanField;
    SPermReCalc: TBooleanField;
    SPermTgValue: TBooleanField;
    SPermEsalTr: TBooleanField;
    SPermAgentsTr: TBooleanField;
    SPermConsTr: TBooleanField;
    SPermSrchTr: TBooleanField;
    SPermRepTr: TBooleanField;
    SPermPermTr: TBooleanField;
    SPermCurrent: TBooleanField;
    SPermDebit: TBooleanField;
    SPermLockEsal: TBooleanField;
    SPermUnLockEsal: TBooleanField;
    SPermAdmArchive: TBooleanField;
    SPermAcclistArch: TBooleanField;
    SPermCreDataBase: TBooleanField;
    SPermOutPort: TBooleanField;
    QLoad: TUniQuery;
    QLoadLNum: TIntegerField;
    QLoadAuto: TIntegerField;
    QLoadQty: TFloatField;
    QLoadMarkNm: TWideStringField;
    QLoadMarks: TSmallintField;
    QLoadGoodsType: TSmallintField;
    QLoadOrgPort: TSmallintField;
    QLoadLoader: TWideStringField;
    QLoadBillloading: TWideStringField;
    QLoadGoodsNm: TWideStringField;
    QLoadPortNm: TWideStringField;
    QLoadLoaderNm: TWideStringField;
    QLoadSender: TSmallintField;
    QLoadKias: TFloatField;
    QLoadWeight: TFloatField;
    QLoadSend: TWideStringField;
    QLoadGoodsname: TWideStringField;
    QLoadNum: TWideStringField;
    QLoadTfasel: TSmallintField;
    QLoadEfrajNum: TWideStringField;
    QLoadEfrajDate: TDateField;
    QLoadFlag: TSmallintField;
    QLoadBillNum: TSmallintField;
    QLoadBillType: TSmallintField;
    QLoadStoreType: TSmallintField;
    QLoadStoreTypeNm: TWideStringField;
    QLoadNotes: TWideStringField;
    DQLoad: TDataSource;
    QSend: TUniQuery;
    QSendLNum: TIntegerField;
    QSendQty: TFloatField;
    QSendAuto: TIntegerField;
    QSendMarks: TSmallintField;
    QSendGoodsType: TSmallintField;
    QSendOrgPort: TSmallintField;
    QSendLoader: TWideStringField;
    QSendBillloading: TWideStringField;
    QSendSender: TSmallintField;
    QSendKias: TFloatField;
    QSendWeight: TFloatField;
    QSendSend: TWideStringField;
    QSendGoodsname: TWideStringField;
    QSendNum: TWideStringField;
    QSendTfasel: TSmallintField;
    QSendEfrajNum: TWideStringField;
    QSendEfrajDate: TDateField;
    QSendFlag: TSmallintField;
    QSendBillNum: TSmallintField;
    QSendBillType: TSmallintField;
    QSendStoreType: TSmallintField;
    QSendMarkNm: TWideStringField;
    QSendNotes: TWideStringField;
    DQSend: TDataSource;
    QHSend: TUniQuery;
    QHSendLNum: TIntegerField;
    QHSendAuto: TIntegerField;
    QHSendQty: TFloatField;
    QHSendMarks: TSmallintField;
    QHSendGoodsType: TSmallintField;
    QHSendOrgPort: TSmallintField;
    QHSendLoader: TWideStringField;
    QHSendBillloading: TWideStringField;
    QHSendSender: TSmallintField;
    QHSendKias: TFloatField;
    QHSendWeight: TFloatField;
    QHSendSend: TWideStringField;
    QHSendGoodsname: TWideStringField;
    QHSendNum: TWideStringField;
    QHSendTfasel: TSmallintField;
    QHSendMarkNm: TWideStringField;
    QHSendEfrajNum: TWideStringField;
    QHSendEfrajDate: TDateField;
    QHSendFlag: TSmallintField;
    QHSendBillNum: TSmallintField;
    QHSendBillType: TSmallintField;
    QHSendStoreType: TSmallintField;
    QHSendNotes: TWideStringField;
    DQHSend: TDataSource;
    QNumHekelS: TUniQuery;
    QNumHekelSLNum: TIntegerField;
    QNumHekelSAuto: TIntegerField;
    QNumHekelSQty: TFloatField;
    QNumHekelSMarks: TSmallintField;
    QNumHekelSGoodsType: TSmallintField;
    QNumHekelSOrgPort: TSmallintField;
    QNumHekelSLoader: TWideStringField;
    QNumHekelSBillloading: TWideStringField;
    QNumHekelSSender: TSmallintField;
    QNumHekelSKias: TFloatField;
    QNumHekelSWeight: TFloatField;
    QNumHekelSSend: TWideStringField;
    QNumHekelSNum: TWideStringField;
    QNumHekelSGoodsname: TWideStringField;
    QNumHekelSTfasel: TSmallintField;
    QNumHekelSEfrajNum: TWideStringField;
    QNumHekelSEfrajDate: TDateField;
    QNumHekelSFlag: TSmallintField;
    QNumHekelSBillNum: TSmallintField;
    QNumHekelSBillType: TSmallintField;
    QNumHekelSStoreType: TSmallintField;
    QNumHekelSNotes: TWideStringField;
    QNumHekelSNum_1: TIntegerField;
    QNumHekelSTransNUm: TSmallintField;
    QNumHekelSTransType: TSmallintField;
    QNumHekelSArriveDate: TDateField;
    QNumHekelSEmptyPort: TSmallintField;
    QNumHekelSSideWalk: TSmallintField;
    QNumHekelSAgent: TSmallintField;
    QNumHekelSListDate: TDateField;
    QNumHekelSEndDate: TDateField;
    QNumHekelSRofR: TSmallintField;
    QNumHekelSNum_2: TIntegerField;
    QNumHekelSnumAuto: TIntegerField;
    QNumHekelSQty_1: TSmallintField;
    QNumHekelSTypeNm: TSmallintField;
    QNumHekelSHawea_Num: TWideStringField;
    QNumHekelSTfasel_1: TSmallintField;
    QNumHekelSNum_3: TIntegerField;
    QNumHekelSBillNum_1: TWideStringField;
    QNumHekelSnumAuto_1: TIntegerField;
    QNumHekelSQty_2: TFloatField;
    QNumHekelSUnit: TSmallintField;
    QNumHekelSNumAutoS: TIntegerField;
    QNumHekelSLnum_1: TIntegerField;
    DQNumHekelS: TDataSource;
    QEfrajSrch: TUniQuery;
    QEfrajSrchLNum: TIntegerField;
    QEfrajSrchAuto: TIntegerField;
    QEfrajSrchQty: TFloatField;
    QEfrajSrchMarks: TSmallintField;
    QEfrajSrchGoodsType: TSmallintField;
    QEfrajSrchOrgPort: TSmallintField;
    QEfrajSrchLoader: TWideStringField;
    QEfrajSrchBillloading: TWideStringField;
    QEfrajSrchSender: TSmallintField;
    QEfrajSrchKias: TFloatField;
    QEfrajSrchWeight: TFloatField;
    QEfrajSrchSend: TWideStringField;
    QEfrajSrchGoodsname: TWideStringField;
    QEfrajSrchNum: TWideStringField;
    QEfrajSrchTfasel: TSmallintField;
    QEfrajSrchEfrajNum: TWideStringField;
    QEfrajSrchEfrajDate: TDateField;
    QEfrajSrchFlag: TSmallintField;
    QEfrajSrchBillNum: TIntegerField;
    QEfrajSrchBillType: TSmallintField;
    QEfrajSrchStoreType: TSmallintField;
    QEfrajSrchNotes: TWideStringField;
    DQEfrajSrch: TDataSource;
    DQNumHekel: TDataSource;
    QNumHekel: TUniQuery;
    QNumHekelLNum: TIntegerField;
    QNumHekelAuto: TIntegerField;
    QNumHekelQty: TFloatField;
    QNumHekelMarks: TSmallintField;
    QNumHekelGoodsType: TSmallintField;
    QNumHekelOrgPort: TSmallintField;
    QNumHekelLoader: TWideStringField;
    QNumHekelMarkNm: TWideStringField;
    QNumHekelBillloading: TWideStringField;
    QNumHekelSender: TSmallintField;
    QNumHekelKias: TFloatField;
    QNumHekelWeight: TFloatField;
    QNumHekelSend: TWideStringField;
    QNumHekelGoodsname: TWideStringField;
    QNumHekelNum: TWideStringField;
    QNumHekelTfasel: TSmallintField;
    QNumHekelEfrajNum: TWideStringField;
    QNumHekelEfrajDate: TDateField;
    QNumHekelFlag: TSmallintField;
    QNumHekelBillNum: TSmallintField;
    QNumHekelBillType: TSmallintField;
    QNumHekelStoreType: TSmallintField;
    QNumHekelNotes: TWideStringField;
    QNumHekelNum_1: TIntegerField;
    QNumHekelTransNUm: TSmallintField;
    QNumHekelTransType: TSmallintField;
    QNumHekelArriveDate: TDateField;
    QNumHekelEmptyPort: TSmallintField;
    QNumHekelSideWalk: TSmallintField;
    QNumHekelAgent: TSmallintField;
    QNumHekelListDate: TDateField;
    QNumHekelEndDate: TDateField;
    QNumHekelRofR: TSmallintField;
    QNumHekelNum_2: TIntegerField;
    QNumHekelnumAuto: TIntegerField;
    QNumHekelQty_1: TSmallintField;
    QNumHekelTypeNm: TSmallintField;
    QNumHekelHawea_Num: TWideStringField;
    QNumHekelTfasel_1: TSmallintField;
    QNumHekelNum_3: TIntegerField;
    QNumHekelBillNum_1: TWideStringField;
    QNumHekelnumAuto_1: TIntegerField;
    QNumHekelQty_2: TFloatField;
    QNumHekelUnit: TSmallintField;
    QNumHekelNumAutoS: TIntegerField;
    QNumHekelLnum_1: TIntegerField;
    SearchQ: TUniQuery;
    SearchQMarkNm: TWideStringField;
    SearchQLNum: TIntegerField;
    SearchQAuto: TIntegerField;
    SearchQMarks: TSmallintField;
    SearchQGoodsType: TSmallintField;
    SearchQOrgPort: TSmallintField;
    SearchQLoader: TWideStringField;
    SearchQBillloading: TWideStringField;
    SearchQSender: TSmallintField;
    SearchQKias: TFloatField;
    SearchQWeight: TFloatField;
    SearchQSend: TWideStringField;
    SearchQGoodsname: TWideStringField;
    SearchQGoodsNm: TWideStringField;
    SearchQPortNm: TWideStringField;
    SearchQLoaderNm: TWideStringField;
    SearchQStoreTypeNm: TWideStringField;
    SearchQNum: TWideStringField;
    SearchQBillNum: TSmallintField;
    SearchQStoreType: TSmallintField;
    SearchQNotes: TWideStringField;
    SearchQStringField: TWideStringField;
    SearchQQty: TFloatField;
    SearchQTfasel: TSmallintField;
    SearchQEfrajDate: TDateField;
    SearchQFlag: TSmallintField;
    SearchQBillType: TSmallintField;
    DSearchQ: TUniDataSource;
    VDH: TUniQuery;
    VDHNum: TIntegerField;
    VDHArriveDate: TDateField;
    VDHListDate: TDateField;
    VDervr4TypeAmer: TSmallintField;
    VDervr4FarkeW: TFloatField;
    VDervr5FarkeWazen: TFloatField;
    LoadCountQ: TUniQuery;
    LoadCountQcountauto: TLargeintField;
    SVloadHrak: TUniQuery;
    SVloadHrakAuto: TIntegerField;
    SVloadHrakBillloading: TWideStringField;
    SVloadHrakLNum: TIntegerField;
    SVloadHrakQty: TFloatField;
    SVloadHrakMarks: TSmallintField;
    SVloadHrakGoodsType: TSmallintField;
    SVloadHrakOrgPort: TSmallintField;
    SVloadHrakLoader: TWideStringField;
    SVloadHrakSender: TSmallintField;
    SVloadHrakKias: TFloatField;
    SVloadHrakWeight: TFloatField;
    SVloadHrakSend: TWideStringField;
    SVloadHrakGoodsname: TWideStringField;
    SVloadHrakTfasel: TSmallintField;
    SVloadHrakEfrajNum: TWideStringField;
    SVloadHrakEfrajDate: TDateField;
    SVloadHrakFlag: TSmallintField;
    SVloadHrakBillNum: TIntegerField;
    SVloadHrakBillType: TSmallintField;
    SVloadHrakStoreType: TSmallintField;
    SVloadHrakNotes: TWideStringField;
    SVloadHrakselectF: TSmallintField;
    SVloadHrakStopF: TSmallintField;
    SVloadHrakStopWhy: TWideStringField;
    SVloadHrakEnbEdit: TSmallintField;
    accdet: TUniQuery;
    Attach: TUniQuery;
    AttachD: TUniQuery;
    Daccdet: TUniDataSource;
    DAttach: TUniDataSource;
    DAttachD: TUniDataSource;
    accdetAccNum: TIntegerField;
    accdetAutoNm: TIntegerField;
    accdetListType: TSmallintField;
    accdetAccType: TSmallintField;
    accdetAccValue: TFloatField;
    accdetAccTotal: TFloatField;
    accdetEnter: TIntegerField;
    accdetExit: TIntegerField;
    accdetNum: TWideStringField;
    accdetFromDate: TDateField;
    accdetToDate: TDateField;
    accdetNasb: TFloatField;
    AttachAccType: TIntegerField;
    AttachListNum: TIntegerField;
    AttachAttachNum: TIntegerField;
    AttachListtype: TIntegerField;
    AttachAttachDate: TDateField;
    AttachAttachValue: TFloatField;
    AttachMezan: TSmallintField;
    AttachKias: TFloatField;
    AttachQty: TFloatField;
    AttachRemin: TSmallintField;
    AttachElectric: TSmallintField;
    AttachDate2: TDateField;
    AttachDate3: TDateField;
    AttachWeeksBef: TSmallintField;
    AttachDate4: TDateField;
    AttachWeight: TFloatField;
    AttachUnit: TSmallintField;
    AttachReminDays: TSmallintField;
    AttachMet: TSmallintField;
    AttachSt1: TSmallintField;
    AttachSt2: TSmallintField;
    AttachAddWeeks: TSmallintField;
    AttachYyy: TIntegerField;
    AttachDate22: TDateField;
    AttachOasve: TWideStringField;
    AttachAginNm: TSmallintField;
    Attachbarcade: TWideStringField;
    AttachUserNum: TSmallintField;
    AttachToName: TWideStringField;
    AttachStampAbs: TFloatField;
    AttachLockF: TSmallintField;
    AttachAttDaily: TIntegerField;
    AttachDebitF: TSmallintField;
    AttachLockCurr: TSmallintField;
    AttachDailyCurr: TSmallintField;
    AttachCurrF: TSmallintField;
    AttachClaimF: TSmallintField;
    AttachPaidF: TSmallintField;
    AttachDListType: TIntegerField;
    AttachDListNum: TIntegerField;
    AttachDAttachNum: TIntegerField;
    AttachDAcctype: TSmallintField;
    AttachDAccvalue: TFloatField;
    AttachDAccTotal: TFloatField;
    AttachDFromDate: TDateField;
    AttachDToDate: TDateField;
    AttachDnumAuto: TIntegerField;
    accdetTypeNm: TWideStringField;
    accdetTotal: TFloatField;
    AttachWeeks: TIntegerField;
    AttachTfkid: TWideStringField;
    AttachNet: TFloatField;
    AttachStampNet: TFloatField;
    AttachUserNm: TStringField;
    AttachDTotal: TFloatField;
    AttachDAccNm: TStringField;
    DInco: TDataSource;
    Inco: TUniTable;
    IncoIncNum: TIntegerField;
    IncoIncType: TSmallintField;
    IncoNumAuto: TIntegerField;
    IncoIncName: TWideStringField;
    IncoIncAbsName: TWideStringField;
    IncoValue1: TFloatField;
    IncoValue2: TFloatField;
    IncoMin: TFloatField;
    IncoCeade: TBooleanField;
    Dshipment: TDataSource;
    shipment: TUniTable;
    shipmentshipNo: TSmallintField;
    shipmentShipName: TWideStringField;
    shipmentShipType: TSmallintField;
    Reserve: TUniTable;
    ReserveRes_Desc: TWideStringField;
    ReserveRes_Num: TSmallintField;
    ReserveAllowTime: TSmallintField;
    DReserve: TDataSource;
    agentsrs: TUniTable;
    agentsrsAgName: TWideStringField;
    agentsrsNum: TIntegerField;
    agentsrsAgAbsName: TWideStringField;
    agentsrsPhone: TWideStringField;
    agentsrsFax: TWideStringField;
    agentsrsE_Mail: TWideStringField;
    agentsrsAddress: TWideStringField;
    Dagentsrs: TDataSource;
    Income: TUniTable;
    DIncome: TDataSource;
    IIncome: TUniTable;
    IIncomeNumAuto: TIntegerField;
    IIncomeIncName: TWideStringField;
    IIncomeIncAbsName: TWideStringField;
    IIncomeRsef: TFloatField;
    IIncomeStore: TFloatField;
    IIncomeDirect: TFloatField;
    IIncomePerc: TFloatField;
    IIncomeStatesNum: TSmallintField;
    IIncomeElectric: TFloatField;
    IIncomeTotalRsef: TFloatField;
    IIncomeTotalStore: TFloatField;
    IIncomeTotalDirect: TFloatField;
    IIncomeLiner: TFloatField;
    IIncomeTotalLiner: TFloatField;
    IIncomeTypeFator: TSmallintField;
    IIncomeRHayaK: TFloatField;
    IIncomeRHayaS: TFloatField;
    IIncomeDirectState: TSmallintField;
    IIncomeSHAYAK: TFloatField;
    IIncomeSHAYAS: TFloatField;
    IIncomeMHAYAK: TFloatField;
    IIncomeMHAYAS: TFloatField;
    IIncomeAuto: TSmallintField;
    IIncomeIncNum: TIntegerField;
    DIIncome: TDataSource;
    MIncome: TUniTable;
    DMIncome: TDataSource;
    Move: TUniTable;
    MoveListNum: TIntegerField;
    MoveListType: TSmallintField;
    MoveMoveNum: TAutoIncField;
    MoveFromTime: TTimeField;
    MoveToTime: TTimeField;
    MoveFMove: TFloatField;
    MoveTMove: TFloatField;
    MoveMoveType: TSmallintField;
    MoveMoveDate: TDateField;
    MoveHolFlag: TSmallintField;
    MoveFriFlag: TSmallintField;
    MoveHours: TSmallintField;
    Move2: TUniTable;
    Move2ListNum: TIntegerField;
    Move2ListType: TSmallintField;
    Move2MoveNum: TIntegerField;
    Move2MoveType: TSmallintField;
    Move2MoveDate: TDateField;
    Move2FromTime: TTimeField;
    Move2ToTime: TTimeField;
    Move2HolFlag: TSmallintField;
    Move2FriFlag: TSmallintField;
    Move2Hours: TSmallintField;
    Move2FMove: TSmallintField;
    Move2TMove: TSmallintField;
    DMove: TDataSource;
    DMove2: TDataSource;
    VloedB: TUniQuery;
    VloedBLNum: TIntegerField;
    VloedBAuto: TIntegerField;
    VloedBQty: TFloatField;
    VloedBMarks: TSmallintField;
    VloedBGoodsType: TSmallintField;
    VloedBOrgPort: TSmallintField;
    VloedBLoader: TWideStringField;
    VloedBBillloading: TWideStringField;
    VloedBSender: TSmallintField;
    VloedBKias: TFloatField;
    VloedBWeight: TFloatField;
    VloedBSend: TWideStringField;
    VloedBGoodsname: TWideStringField;
    VloedBNum: TWideStringField;
    VloedBTfasel: TSmallintField;
    VloedBEfrajNum: TWideStringField;
    VloedBEfrajDate: TDateField;
    VloedBFlag: TSmallintField;
    VloedBBillNum: TIntegerField;
    VloedBBillType: TSmallintField;
    VloedBStoreType: TSmallintField;
    VloedBNotes: TWideStringField;
    VloedBselectF: TSmallintField;
    VloedBStopF: TSmallintField;
    VloedBStopWhy: TWideStringField;
    VloedBEnbEdit: TSmallintField;
    VloedBUserSelected: TSmallintField;
    VAccList1: TUniQuery;
    VAccList1ListNum: TIntegerField;
    VAccList1ListType: TSmallintField;
    VAccList1ListDate: TDateField;
    VAccList1ShipNum: TSmallintField;
    VAccList1ArriveDate: TDateField;
    VAccList1EndEmpDate: TDateField;
    VAccList1GoodsDesc: TSmallintField;
    VAccList1GoodsQty: TFloatField;
    VAccList1ShipBillNum: TSmallintField;
    VAccList1WeSpace: TFloatField;
    VAccList1Total: TFloatField;
    VAccList1AdmisMet: TSmallintField;
    VAccList1Stamp: TFloatField;
    VAccList1Unit: TSmallintField;
    VAccList1BillNum: TWideStringField;
    VAccList1loukof: TSmallintField;
    VAccList1Toname: TWideStringField;
    VAccList1Electric: TSmallintField;
    VAccList1Remain: TSmallintField;
    VAccList1Wight: TFloatField;
    VAccList1LocOrFor: TWideStringField;
    VAccList1Petrol: TSmallintField;
    VAccList1Dirty: TSmallintField;
    VAccList1FTime1: TTimeField;
    VAccList1EndTime1: TTimeField;
    VAccList1Move1: TSmallintField;
    VAccList1FTime2: TTimeField;
    VAccList1EndTime2: TTimeField;
    VAccList1Move2: TSmallintField;
    VAccList1ShipType: TSmallintField;
    VAccList1Mezan: TSmallintField;
    VAccList1Kemawea: TSmallintField;
    VAccList1Frg: TSmallintField;
    VAccList1Tadl: TSmallintField;
    VAccList1FrgFlag: TSmallintField;
    VAccList1HjzFlag: TSmallintField;
    VAccList1TadlFlag: TSmallintField;
    VAccList1Edafe1: TSmallintField;
    VAccList1Edafe2: TSmallintField;
    VAccList1Goodsname: TWideStringField;
    VAccList1Moveall: TSmallintField;
    VAccList1MovV1: TFloatField;
    VAccList1MovV2: TFloatField;
    VAccList1LocWitOut: TSmallintField;
    VAccList1ChechDate: TDateField;
    VAccList1Month: TSmallintField;
    VAccList1Cars: TSmallintField;
    VAccList1States: TSmallintField;
    VAccList1Qty2: TSmallintField;
    VAccList1Unit2: TSmallintField;
    VAccList1ElecDate: TDateField;
    VAccList1RemDate: TDateField;
    VAccList1MezDate: TDateField;
    VAccList1Roafe: TSmallintField;
    VAccList1Dama: TSmallintField;
    VAccList1TfteshCar: TSmallintField;
    VAccList1AttTo: TWideStringField;
    VAccList1Leverweight: TFloatField;
    VAccList1Saba: TSmallintField;
    VAccList1WeeksNum: TSmallintField;
    VAccList1States1: TSmallintField;
    VAccList1States2: TSmallintField;
    VAccList1Days: TSmallintField;
    VAccList1DaysM: TSmallintField;
    VAccList1EleeshDate: TDateField;
    VAccList1ReshDate: TDateField;
    VAccList1DaysMM: TFloatField;
    VAccList1Sapa: TSmallintField;
    VAccList1AutoDate: TDateField;
    VAccList1AginNm: TIntegerField;
    VAccList1F1Num: TSmallintField;
    VAccList1User: TIntegerField;
    VAccList1DateTop: TDateField;
    VAccList1NumT: TIntegerField;
    VAccList1barcade: TWideStringField;
    VAccList1archiveF: TShortintField;
    VAccList1HoursNum: TSmallintField;
    VAccList1couponIn: TIntegerField;
    VAccList1couponOut: TIntegerField;
    VAccList1TelegramNum: TIntegerField;
    VAccList1PaidF: TSmallintField;
    VAccList1UnitRsom: TSmallintField;
    VAccList1Num1: TSmallintField;
    VAccList1Num2: TSmallintField;
    VAccList1Num3: TSmallintField;
    VAccList1Num4: TSmallintField;
    VAccList1Num5: TSmallintField;
    VAccList1Num6: TSmallintField;
    VAccList1Num7: TSmallintField;
    VAccList1Num8: TSmallintField;
    VAccList1ShipMet: TSmallintField;
    VAccList1Reserve: TSmallintField;
    VAccList1FrgShip: TSmallintField;
    VAccList1Qty3: TSmallintField;
    VAccList1BillNum2: TWideStringField;
    VAccList1SubType: TSmallintField;
    VAccList1DelF: TSmallintField;
    VAccList1DelDate: TDateField;
    VAccList1boat: TSmallintField;
    VAccList1AgntR: TSmallintField;
    VAccList1SharedF: TSmallintField;
    VAccList1ChemicalF: TSmallintField;
    VAccList1AlterBill: TIntegerField;
    VAccList1StampAbs: TFloatField;
    VAccList1ListNumR: TIntegerField;
    VAccList1DailyNum: TIntegerField;
    VAccList1AttachNum: TIntegerField;
    VAccList1DisCount: TFloatField;
    VAccList1DelWhy: TWideStringField;
    VAccList1cutF: TSmallintField;
    VAccList1CurrntF: TSmallintField;
    VAccList1DebitF: TSmallintField;
    VAccList1CurrDate: TDateField;
    VAccList1DailyCurr: TIntegerField;
    VAccList1LockCurr: TSmallintField;
    VAccList1ClaimF: TSmallintField;
    VAccList1ClaimDate: TDateField;
    VAccList1ClaimNum: TIntegerField;
    DHoliday: TDataSource;
    Holiday: TUniTable;
    HolidayHolyDate: TDateField;
    DWorkTime: TDataSource;
    WorkTime: TUniTable;
    WorkTimeFromTime: TTimeField;
    WorkTimeToTime: TTimeField;
    WorkTimeTimeType: TSmallintField;
    WorkTimeTime2: TFloatField;
    WorkTimeTime1: TFloatField;
    WorkTimenumAuto: TIntegerField;
    weights: TUniTable;
    weightsAutoNum: TSmallintField;
    weightsFromW: TIntegerField;
    weightsToW: TIntegerField;
    weightsHoursNum: TSmallintField;
    weightscarsF: TSmallintField;
    Dweights: TDataSource;
    MaxListNumRQ: TUniQuery;
    MaxListNumRQListNumR: TIntegerField;
    DailyQ: TUniQuery;
    DailyQdailynum: TIntegerField;
    DailyQdatetop: TDateField;
    DailyQlisttype: TSmallintField;
    DailyQminDate: TDateField;
    DailyQmaxDate: TDateField;
    DDailyQ: TDataSource;
    CountQ: TUniQuery;
    CountQnum: TLargeintField;
    VSloadH: TUniQuery;
    VSloadHLNum: TIntegerField;
    VSloadHAuto: TIntegerField;
    VSloadHQty: TFloatField;
    VSloadHMarks: TSmallintField;
    VSloadHGoodsType: TSmallintField;
    VSloadHOrgPort: TSmallintField;
    VSloadHLoader: TWideStringField;
    VSloadHBillloading: TWideStringField;
    VSloadHSender: TSmallintField;
    VSloadHKias: TFloatField;
    VSloadHWeight: TFloatField;
    VSloadHSend: TWideStringField;
    VSloadHGoodsname: TWideStringField;
    VSloadHNum: TWideStringField;
    VSloadHTfasel: TSmallintField;
    VSloadHEfrajNum: TWideStringField;
    VSloadHEfrajDate: TDateField;
    VSloadHFlag: TSmallintField;
    VSloadHBillNum: TIntegerField;
    VSloadHBillType: TSmallintField;
    VSloadHStoreType: TSmallintField;
    VSloadHNotes: TWideStringField;
    VSloadHselectF: TSmallintField;
    VSloadHStopF: TSmallintField;
    VSloadHStopWhy: TWideStringField;
    VSloadHEnbEdit: TSmallintField;
    VSloadHUserSelected: TSmallintField;
    QAgents: TUniQuery;
    QAgentsAgName: TWideStringField;
    QAgentsNum: TIntegerField;
    QAgentsAgAbsName: TWideStringField;
    QAgentsPhone: TWideStringField;
    QAgentsFax: TWideStringField;
    QAgentsE_Mail: TWideStringField;
    QAgentsAddress: TWideStringField;
    DQAgents: TUniDataSource;
    SrchShEQ: TUniQuery;
    SrchShEQNumAuto: TIntegerField;
    SrchShEQSName: TWideStringField;
    SrchShEQNum: TIntegerField;
    SrchShEQSAbsName: TWideStringField;
    SrchShEQSType: TSmallintField;
    SrchShEQSNation: TSmallintField;
    SrchShEQWeight: TFloatField;
    SrchShEQShipMet: TSmallintField;
    SrchShEQShipType: TSmallintField;
    SrchShEQTypeRsom: TSmallintField;
    SrchShEQGross: TFloatField;
    SrchShEQImoNum: TIntegerField;
    SrchShEQName_En: TWideStringField;
    DSrchShQ: TDataSource;
    DSrchShEQ: TDataSource;
    DSrchAgQ: TDataSource;
    SrchAgQ: TUniQuery;
    SrchAgQAgName: TWideStringField;
    SrchAgQNum: TIntegerField;
    SrchAgQAgAbsName: TWideStringField;
    SrchAgQPhone: TWideStringField;
    SrchAgQFax: TWideStringField;
    SrchAgQE_Mail: TWideStringField;
    SrchAgQAddress: TWideStringField;
    SrchShQ: TUniQuery;
    SrchShQNumAuto: TIntegerField;
    SrchShQSName: TWideStringField;
    SrchShQNum: TIntegerField;
    SrchShQSAbsName: TWideStringField;
    SrchShQSType: TSmallintField;
    SrchShQSNation: TSmallintField;
    SrchShQWeight: TFloatField;
    SrchShQShipMet: TSmallintField;
    SrchShQShipType: TSmallintField;
    SrchShQTypeRsom: TSmallintField;
    ImoSrchQ: TUniQuery;
    ImoSrchQNumAuto: TIntegerField;
    ImoSrchQSName: TWideStringField;
    ImoSrchQNum: TIntegerField;
    ImoSrchQSAbsName: TWideStringField;
    ImoSrchQSType: TSmallintField;
    ImoSrchQSNation: TSmallintField;
    ImoSrchQWeight: TFloatField;
    ImoSrchQShipMet: TSmallintField;
    ImoSrchQShipType: TSmallintField;
    ImoSrchQTypeRsom: TSmallintField;
    ImoSrchQGross: TFloatField;
    ImoSrchQImoNum: TIntegerField;
    ImoSrchQName_En: TWideStringField;
    ImoSrchQSerialNum: TIntegerField;
    ImoSrchQNotes: TWideStringField;
    DImoSrchQ: TDataSource;
    FrAccList1: TfrxDBDataset;
    FrAccList: TfrxDBDataset;
    FrAccDet: TfrxDBDataset;
    attach2: TUniQuery;
    attach2d: TUniQuery;
    Dattach2: TUniDataSource;
    Dattach2d: TUniDataSource;
    attach2Acctype: TSmallintField;
    attach2ListNum: TIntegerField;
    attach2AttachNum: TIntegerField;
    attach2ListType: TSmallintField;
    attach2AttashType: TSmallintField;
    attach2AttachNum2: TIntegerField;
    attach2AttachDate: TDateField;
    attach2AttachValue: TFloatField;
    attach2AttachMezan: TSmallintField;
    attach2dAccType: TSmallintField;
    attach2dListNum: TIntegerField;
    attach2dAttachNum: TIntegerField;
    attach2dListType: TSmallintField;
    attach2dAttachNum2: TIntegerField;
    attach2dAttType: TSmallintField;
    attach2dAttType2: TSmallintField;
    attach2dAccValue: TFloatField;
    attach2dAccTotal: TFloatField;
    attach2dFromDate: TDateField;
    attach2dToDate: TDateField;
    attach2Weeks: TFloatField;
    attach2StampNet: TFloatField;
    attach2Net: TFloatField;
    attach2Tfkid: TWideStringField;
    SAttach1: TUniQuery;
    DSAttach: TUniDataSource;
    SAttach1AccType: TIntegerField;
    SAttach1ListNum: TIntegerField;
    SAttach1AttachNum: TIntegerField;
    SAttach1Listtype: TIntegerField;
    SAttach1AttachDate: TDateField;
    SAttach1AttachValue: TFloatField;
    SAttach1Mezan: TSmallintField;
    SAttach1Kias: TFloatField;
    SAttach1Qty: TFloatField;
    SAttach1Remin: TSmallintField;
    SAttach1Electric: TSmallintField;
    SAttach1Date2: TDateField;
    SAttach1Date3: TDateField;
    SAttach1WeeksBef: TSmallintField;
    SAttach1Date4: TDateField;
    SAttach1Weight: TFloatField;
    SAttach1Unit: TSmallintField;
    SAttach1ReminDays: TSmallintField;
    SAttach1Met: TSmallintField;
    SAttach1St1: TSmallintField;
    SAttach1St2: TSmallintField;
    SAttach1AddWeeks: TSmallintField;
    SAttach1Yyy: TIntegerField;
    SAttach1Date22: TDateField;
    SAttach1Oasve: TWideStringField;
    SAttach1Polesa: TWideStringField;
    SAttach1AginNm: TSmallintField;
    SAttach1barcade: TWideStringField;
    SAttach1UserNum: TSmallintField;
    SAttach1ToName: TWideStringField;
    SAttach1StampAbs: TFloatField;
    SAttach1LockF: TSmallintField;
    SAttach1AttDaily: TIntegerField;
    SAttach1DebitF: TSmallintField;
    SAttach1LockCurr: TSmallintField;
    SAttach1DailyCurr: TSmallintField;
    SAttach1CurrF: TSmallintField;
    SAttach1ClaimF: TSmallintField;
    SAttach1PaidF: TSmallintField;
    VDervr1ArriveDate: TDateField;
    VDervr1ListType: TSmallintField;
    VDervr1Electric: TSmallintField;
    VDervr1Remain: TSmallintField;
    VSAccList: TUniQuery;
    VSAccListListNum: TIntegerField;
    VSAccListListType: TSmallintField;
    VSAccListListDate: TDateField;
    VSAccListShipNum: TSmallintField;
    VSAccListArriveDate: TDateField;
    VSAccListEndEmpDate: TDateField;
    VSAccListGoodsDesc: TSmallintField;
    VSAccListGoodsQty: TFloatField;
    VSAccListShipBillNum: TSmallintField;
    VSAccListWeSpace: TFloatField;
    VSAccListTotal: TFloatField;
    VSAccListAdmisMet: TSmallintField;
    VSAccListStamp: TFloatField;
    VSAccListUnit: TSmallintField;
    VSAccListBillNum: TWideStringField;
    VSAccListloukof: TSmallintField;
    VSAccListToname: TWideStringField;
    VSAccListElectric: TSmallintField;
    VSAccListRemain: TSmallintField;
    VSAccListWight: TFloatField;
    VSAccListLocOrFor: TWideStringField;
    VSAccListPetrol: TSmallintField;
    VSAccListDirty: TSmallintField;
    VSAccListFTime1: TTimeField;
    VSAccListEndTime1: TTimeField;
    VSAccListMove1: TSmallintField;
    VSAccListFTime2: TTimeField;
    VSAccListEndTime2: TTimeField;
    VSAccListMove2: TSmallintField;
    VSAccListShipType: TSmallintField;
    VSAccListMezan: TSmallintField;
    VSAccListKemawea: TSmallintField;
    VSAccListFrg: TSmallintField;
    VSAccListTadl: TSmallintField;
    VSAccListFrgFlag: TSmallintField;
    VSAccListHjzFlag: TSmallintField;
    VSAccListTadlFlag: TSmallintField;
    VSAccListEdafe1: TSmallintField;
    VSAccListEdafe2: TSmallintField;
    VSAccListGoodsname: TWideStringField;
    VSAccListMoveall: TSmallintField;
    VSAccListMovV1: TFloatField;
    VSAccListMovV2: TFloatField;
    VSAccListLocWitOut: TSmallintField;
    VSAccListChechDate: TDateField;
    VSAccListMonth: TSmallintField;
    VSAccListCars: TSmallintField;
    VSAccListStates: TSmallintField;
    VSAccListQty2: TSmallintField;
    VSAccListUnit2: TSmallintField;
    VSAccListElecDate: TDateField;
    VSAccListRemDate: TDateField;
    VSAccListMezDate: TDateField;
    VSAccListRoafe: TSmallintField;
    VSAccListDama: TSmallintField;
    VSAccListTfteshCar: TSmallintField;
    VSAccListAttTo: TWideStringField;
    VSAccListLeverweight: TFloatField;
    VSAccListSaba: TSmallintField;
    VSAccListWeeksNum: TSmallintField;
    VSAccListStates1: TSmallintField;
    VSAccListStates2: TSmallintField;
    VSAccListDays: TSmallintField;
    VSAccListDaysM: TSmallintField;
    VSAccListEleeshDate: TDateField;
    VSAccListReshDate: TDateField;
    VSAccListDaysMM: TFloatField;
    VSAccListSapa: TSmallintField;
    VSAccListAutoDate: TDateField;
    VSAccListAginNm: TIntegerField;
    VSAccListF1Num: TSmallintField;
    VSAccListUser: TIntegerField;
    VSAccListDateTop: TDateField;
    VSAccListNumT: TIntegerField;
    VSAccListbarcade: TWideStringField;
    VSAccListarchiveF: TShortintField;
    VSAccListHoursNum: TSmallintField;
    VSAccListcouponIn: TIntegerField;
    VSAccListcouponOut: TIntegerField;
    VSAccListTelegramNum: TIntegerField;
    VSAccListPaidF: TSmallintField;
    VSAccListUnitRsom: TSmallintField;
    VSAccListNum1: TSmallintField;
    VSAccListNum2: TSmallintField;
    VSAccListNum3: TSmallintField;
    VSAccListNum4: TSmallintField;
    VSAccListNum5: TSmallintField;
    VSAccListNum6: TSmallintField;
    VSAccListNum7: TSmallintField;
    VSAccListNum8: TSmallintField;
    VSAccListShipMet: TSmallintField;
    VSAccListReserve: TSmallintField;
    VSAccListFrgShip: TSmallintField;
    VSAccListQty3: TSmallintField;
    VSAccListBillNum2: TWideStringField;
    VSAccListSubType: TSmallintField;
    VSAccListDelF: TSmallintField;
    VSAccListDelDate: TDateField;
    VSAccListboat: TSmallintField;
    VSAccListAgntR: TSmallintField;
    VSAccListSharedF: TSmallintField;
    VSAccListChemicalF: TSmallintField;
    VSAccListAlterBill: TIntegerField;
    VSAccListStampAbs: TFloatField;
    VSAccListListNumR: TIntegerField;
    VSAccListDailyNum: TIntegerField;
    VSAccListAttachNum: TIntegerField;
    VSAccListDisCount: TFloatField;
    VSAccListDelWhy: TWideStringField;
    VSAccListcutF: TSmallintField;
    VSAccListCurrntF: TSmallintField;
    VSAccListDebitF: TSmallintField;
    VSAccListCurrDate: TDateField;
    VSAccListDailyCurr: TIntegerField;
    VSAccListLockCurr: TSmallintField;
    VSAccListClaimF: TSmallintField;
    VSAccListClaimDate: TDateField;
    VSAccListClaimNum: TIntegerField;
    SVloadHrakNum: TWideStringField;
    SVloadHrakUserSelected: TSmallintField;
    DSVloadHrak: TUniDataSource;
    DQLoadEf: TUniDataSource;
    QSLoadEf: TUniQuery;
    DQSQLoadEf: TUniDataSource;
    QSLoadEfLNum: TIntegerField;
    QSLoadEfAuto: TIntegerField;
    QSLoadEfQty: TFloatField;
    QSLoadEfMarks: TSmallintField;
    QSLoadEfGoodsType: TSmallintField;
    QSLoadEfOrgPort: TSmallintField;
    QSLoadEfLoader: TWideStringField;
    QSLoadEfBillloading: TWideStringField;
    QSLoadEfSender: TSmallintField;
    QSLoadEfKias: TFloatField;
    QSLoadEfWeight: TFloatField;
    QSLoadEfSend: TWideStringField;
    QSLoadEfGoodsname: TWideStringField;
    QSLoadEfNum: TWideStringField;
    QSLoadEfTfasel: TSmallintField;
    QSLoadEfEfrajNum: TWideStringField;
    QSLoadEfEfrajDate: TDateField;
    QSLoadEfFlag: TSmallintField;
    QSLoadEfBillNum: TIntegerField;
    QSLoadEfBillType: TSmallintField;
    QSLoadEfStoreType: TSmallintField;
    QSLoadEfNotes: TWideStringField;
    QSLoadEfselectF: TSmallintField;
    QSLoadEfStopF: TSmallintField;
    QSLoadEfStopWhy: TWideStringField;
    QSLoadEfEnbEdit: TSmallintField;
    QSLoadEfUserSelected: TSmallintField;
    QLoadEf: TUniQuery;
    QLoadEfLNum: TIntegerField;
    QLoadEfAuto: TIntegerField;
    QLoadEfQty: TFloatField;
    QLoadEfMarks: TSmallintField;
    QLoadEfGoodsType: TSmallintField;
    QLoadEfOrgPort: TSmallintField;
    QLoadEfLoader: TWideStringField;
    QLoadEfBillloading: TWideStringField;
    QLoadEfSender: TSmallintField;
    QLoadEfKias: TFloatField;
    QLoadEfWeight: TFloatField;
    QLoadEfSend: TWideStringField;
    QLoadEfGoodsname: TWideStringField;
    QLoadEfNum: TWideStringField;
    QLoadEfTfasel: TSmallintField;
    QLoadEfEfrajNum: TWideStringField;
    QLoadEfEfrajDate: TDateField;
    QLoadEfFlag: TSmallintField;
    QLoadEfBillNum: TIntegerField;
    QLoadEfBillType: TSmallintField;
    QLoadEfStoreType: TSmallintField;
    QLoadEfNotes: TWideStringField;
    QLoadEfselectF: TSmallintField;
    QLoadEfStopF: TSmallintField;
    QLoadEfStopWhy: TWideStringField;
    QLoadEfEnbEdit: TSmallintField;
    QLoadEfUserSelected: TSmallintField;
    SVloadHrakMarkNm: TWideStringField;
    SVloadHrakStoreTypeNm: TWideStringField;
    QLoadEfMarkNm: TWideStringField;
    QLoadEfStoreTypeNm: TWideStringField;
    QSLoadEfMarkNm: TWideStringField;
    QSLoadEfStoreTypeNm: TWideStringField;
    attach2dAttNm: TWideStringField;
    FrAttach: TfrxDBDataset;
    FrAttachD: TfrxDBDataset;
    FrAttach2: TfrxDBDataset;
    FrAttach2D: TfrxDBDataset;
    BillSrchQ: TUniQuery;
    ABillSrchQ: TUniQuery;
    DBillSrchQ: TUniDataSource;
    BillSrchQListNum: TIntegerField;
    BillSrchQListType: TSmallintField;
    BillSrchQShipNum: TSmallintField;
    BillSrchQArriveDate: TDateField;
    BillSrchQshipNm: TStringField;
    BillSrchQListTypeNm: TStringField;
    ABillSrchQListNum: TIntegerField;
    ABillSrchQAttachNum: TIntegerField;
    ABillSrchQListtype: TIntegerField;
    ABillSrchQAttachDate: TDateField;
    ABillSrchQAccType: TIntegerField;
    QMaxAccList: TUniQuery;
    QMaxAccListMax_ListNum: TIntegerField;
    QMaxAccListListType: TSmallintField;
    SrchOffQ: TUniQuery;
    SrchOffQAgName: TWideStringField;
    SrchOffQNum: TIntegerField;
    SrchOffQAgAbsName: TWideStringField;
    SrchOffQPhone: TWideStringField;
    SrchOffQFax: TWideStringField;
    SrchOffQE_Mail: TWideStringField;
    SrchOffQAddress: TWideStringField;
    DSrchOffQ: TDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    DB1: TUniConnection;
    MaxSerShp: TUniQuery;
    MaxSerShpserialNum: TIntegerField;
    QShipList: TUniQuery;
    QAngList: TUniQuery;
    QAngListAgent: TSmallintField;
    QShipListTransNUm: TSmallintField;
    QuserEnter: TUniQuery;
    QuserEnterCount_ListNum: TLargeintField;
    QuserEnterUser: TIntegerField;
    QuserEnterUserNm: TStringField;
    RQuserEnter: TfrxDBDataset;
    FRQuserEnter: TfrxReport;
    QSerFull: TUniQuery;
    QSerFullLNum: TIntegerField;
    QSerFullAuto: TIntegerField;
    QSerFullQty: TFloatField;
    QSerFullMarks: TSmallintField;
    QSerFullGoodsType: TSmallintField;
    QSerFullOrgPort: TSmallintField;
    QSerFullLoader: TWideStringField;
    QSerFullBillloading: TWideStringField;
    QSerFullSender: TSmallintField;
    QSerFullKias: TFloatField;
    QSerFullWeight: TFloatField;
    QSerFullSend: TWideStringField;
    QSerFullGoodsname: TWideStringField;
    QSerFullNum: TWideStringField;
    QSerFullTfasel: TSmallintField;
    QSerFullEfrajNum: TWideStringField;
    QSerFullEfrajDate: TDateField;
    QSerFullFlag: TSmallintField;
    QSerFullBillNum: TIntegerField;
    QSerFullBillType: TSmallintField;
    QSerFullStoreType: TSmallintField;
    QSerFullNotes: TWideStringField;
    QSerFullselectF: TSmallintField;
    QSerFullStopF: TSmallintField;
    QSerFullStopWhy: TWideStringField;
    QSerFullEnbEdit: TSmallintField;
    QSerFullUserSelected: TSmallintField;
    QSerFullNum_1: TIntegerField;
    QSerFullLnum_1: TIntegerField;
    QSerFullnumAuto: TIntegerField;
    QSerFullQty_1: TSmallintField;
    QSerFullTypeNm: TSmallintField;
    QSerFullHawea_Num: TWideStringField;
    QSerFullTfasel_1: TSmallintField;
    QSerFullNum_2: TIntegerField;
    QSerFullBillNum_1: TWideStringField;
    QSerFullnumAuto_1: TIntegerField;
    QSerFullQty_2: TFloatField;
    QSerFullUnit: TSmallintField;
    QSerFullNumAutoS: TIntegerField;
    QSerFullshipType: TSmallintField;
    QSerFullshipMet: TSmallintField;
    QSerFullLever: TSmallintField;
    VDervr7TypeNm: TStringField;
    VDervr7MetNm: TStringField;
    VDervr7leverNm: TStringField;
    VVldHk: TUniQuery;
    VVldHkLNum: TIntegerField;
    VVldHkBillNum: TIntegerField;
    VVldHkAuto: TIntegerField;
    UpdAccDetQ: TUniQuery;
    frSAccDet: TfrxDBDataset;
    SAccDet: TUniTable;
    SAccDetAccNum: TIntegerField;
    SAccDetAccType: TSmallintField;
    SAccDetAccValue: TFloatField;
    SAccDetAccTotal: TFloatField;
    SAccDetTypeNm: TWideStringField;
    SAccDetListType: TSmallintField;
    SAccDetEnter: TIntegerField;
    SAccDetExit: TIntegerField;
    SAccDetNum: TWideStringField;
    SAccDetFromDate: TDateField;
    SAccDetToDate: TDateField;
    SAccDetNasb: TFloatField;
    Vaccdet: TUniQuery;
    VaccdetAccNum: TIntegerField;
    VaccdetAutoNm: TIntegerField;
    VaccdetListType: TSmallintField;
    VaccdetAccType: TSmallintField;
    VaccdetAccValue: TFloatField;
    VaccdetAccTotal: TFloatField;
    VaccdetEnter: TIntegerField;
    VaccdetExit: TIntegerField;
    VaccdetNum: TWideStringField;
    VaccdetFromDate: TDateField;
    VaccdetToDate: TDateField;
    VaccdetNasb: TFloatField;
    QDuserEnter: TUniQuery;
    QDuserEnterCount_ListNum: TLargeintField;
    QDuserEnterListDate: TDateField;
    QDuserEnterUser: TIntegerField;
    QDuserEnterUserNm: TStringField;
    RQDuserEnter: TfrxDBDataset;
    FRQDuserEnter: TfrxReport;
    VNStamp: TUniStoredProc;
    FRVDateHrak: TfrxDBDataset;
    VDateHrak: TUniQuery;
    VDateHrakNum: TIntegerField;
    VDateHrakTransNUm: TSmallintField;
    VDateHrakTransType: TSmallintField;
    VDateHrakArriveDate: TDateField;
    VDateHrakEmptyPort: TSmallintField;
    VDateHrakSideWalk: TSmallintField;
    VDateHrakAgent: TSmallintField;
    VDateHrakListDate: TDateField;
    VDateHrakEndDate: TDateField;
    VDateHrakRofR: TSmallintField;
    VDateHrakTaghez: TSmallintField;
    VDateHraklongOf1: TSmallintField;
    VDateHrakMixedF: TSmallintField;
    VDateHrakShipType: TSmallintField;
    VDateHrakShipMet: TSmallintField;
    VDateHrakcarsTfF: TSmallintField;
    VloadlistQShipNm: TStringField;
    VloadlistQAgentNm: TStringField;
    VDateHrakMixedNm: TStringField;
    VloadlistQShipTypeNm: TStringField;
    DVDateHrak: TUniDataSource;
    MIncomeMincome: TIntegerField;
    MIncomeShipType: TSmallintField;
    MIncomeShipMet: TSmallintField;
    MIncomeGoods: TSmallintField;
    MIncomeElectric: TSmallintField;
    MIncomeElecVAlue: TFloatField;
    MIncomeRemain: TSmallintField;
    MIncomeRemValue: TFloatField;
    MIncomeW1: TFloatField;
    MIncomeW2: TFloatField;
    MIncomeV1: TFloatField;
    MIncomeV2: TFloatField;
    MIncomeIncType: TStringField;
    MIncomeShipTypeNm: TStringField;
    MIncomeMetNm: TStringField;
    IncomeNumAuto: TIntegerField;
    IncomeIncName: TWideStringField;
    IncomeIncAbsName: TWideStringField;
    IncomeRsef: TFloatField;
    IncomeStore: TFloatField;
    IncomeDirect: TFloatField;
    IncomePerc: TFloatField;
    IncomeStatesNum: TSmallintField;
    IncomeElectric: TFloatField;
    IncomeTotalRsef: TFloatField;
    IncomeTotalStore: TFloatField;
    IncomeTotalDirect: TFloatField;
    IncomeLiner: TFloatField;
    IncomeTotalLiner: TFloatField;
    IncomeTypeFator: TSmallintField;
    IncomeRHayaK: TFloatField;
    IncomeRHayaS: TFloatField;
    IncomeDirectState: TSmallintField;
    IncomeSHAYAK: TFloatField;
    IncomeSHAYAS: TFloatField;
    IncomeMHAYAK: TFloatField;
    IncomeMHAYAS: TFloatField;
    IncomeAuto: TSmallintField;
    IncomeIncNum: TIntegerField;
    MIncomeNUmunit: TIntegerField;
    MIncomeUnitNm: TStringField;
    VUnitAccList: TUniQuery;
    VUnitAccListNumAuto: TIntegerField;
    VUnitAccListNumAlist: TIntegerField;
    VUnitAccListNumUnit: TSmallintField;
    VUnitAccListNMIncome: TIntegerField;
    VUnitAccListValNormal: TFloatField;
    VUnitAccListValRoro: TFloatField;
    VUnitAccListUnitNm: TStringField;
    QTajmieData: TUniQuery;
    QLTajmieData: TUniQuery;
    QTajmieDataTypeNm: TSmallintField;
    QTajmieDatatypeHowa1: TLargeintField;
    QTajmieDataSLever: TFloatField;
    QTajmieDataBLever: TFloatField;
    QTajmieDataUName: TWideStringField;
    QLTajmieDataSLever: TFloatField;
    QLTajmieDataBLever: TFloatField;
    QLTajmieDataUName: TWideStringField;
    QLTajmieDataQty: TFloatField;
    DVUnitAccList: TUniDataSource;
    VUnitAccListFwozQ: TSmallintField;
    VUnitAccListFwozV: TFloatField;
    VUnitAccListLanerQ: TSmallintField;
    VUnitAccListLanerV: TFloatField;
    VUnitAccListRofaQ: TSmallintField;
    VUnitAccListRofaV: TFloatField;
    VUnitAccListNRofaQ: TSmallintField;
    VUnitAccListNRofaV: TFloatField;
    VUnitAccListEjmale: TFloatField;
    VBollAccList: TUniQuery;
    DVBollAccList: TUniDataSource;
    VBollAccListNumAuto: TIntegerField;
    VBollAccListBollsa: TWideStringField;
    VBollAccListNumLoad: TIntegerField;
    VBollAccListNumAcc: TIntegerField;
    IncomeMin: TFloatField;
    IncomeMin2: TFloatField;
    QTajmieDataEadiatFyus: TFloatField;
    QTajmieDataEadiatLaynar: TFloatField;
    QTajmieDataRuruFyus: TFloatField;
    QTajmieDataRuruLaynar: TFloatField;
    QLTajmieDataEadiatFyus: TFloatField;
    QLTajmieDataEadiatLaynar: TFloatField;
    QLTajmieDataRuruFyus: TFloatField;
    QLTajmieDataRuruLaynar: TFloatField;
    Sincome: TUniTable;
    SincomeNumAuto: TIntegerField;
    SincomeAuto: TSmallintField;
    SincomeIncNum: TIntegerField;
    SincomeIncName: TWideStringField;
    SincomeIncAbsName: TWideStringField;
    SincomeRsef: TFloatField;
    SincomeStore: TFloatField;
    SincomeDirect: TFloatField;
    SincomePerc: TFloatField;
    SincomeStatesNum: TSmallintField;
    SincomeElectric: TFloatField;
    SincomeTotalRsef: TFloatField;
    SincomeTotalStore: TFloatField;
    SincomeTotalDirect: TFloatField;
    SincomeLiner: TFloatField;
    SincomeTotalLiner: TFloatField;
    SincomeMin: TFloatField;
    SincomeTypeFator: TSmallintField;
    SincomeRHayaK: TFloatField;
    SincomeRHayaS: TFloatField;
    SincomeDirectState: TSmallintField;
    SincomeMin2: TFloatField;
    SincomeSHAYAK: TFloatField;
    SincomeSHAYAS: TFloatField;
    SincomeMHAYAK: TFloatField;
    SincomeMHAYAS: TFloatField;
    Smincome: TUniTable;
    SmincomeMincome: TIntegerField;
    SmincomeShipType: TSmallintField;
    SmincomeShipMet: TSmallintField;
    SmincomeGoods: TSmallintField;
    SmincomeElectric: TSmallintField;
    SmincomeElecVAlue: TFloatField;
    SmincomeRemain: TSmallintField;
    SmincomeRemValue: TFloatField;
    SmincomeW1: TFloatField;
    SmincomeW2: TFloatField;
    SmincomeV1: TFloatField;
    SmincomeV2: TFloatField;
    SmincomeNUmunit: TIntegerField;
    DSmincome: TUniDataSource;
    VloadHrak: TUniQuery;
    VloadHrakAuto: TIntegerField;
    VloadHrakBillloading: TWideStringField;
    VloadHrakLNum: TIntegerField;
    VloadHrakQty: TFloatField;
    VloadHrakMarks: TSmallintField;
    VloadHrakGoodsType: TSmallintField;
    VloadHrakOrgPort: TSmallintField;
    VloadHrakLoader: TWideStringField;
    VloadHrakSender: TSmallintField;
    VloadHrakKias: TFloatField;
    VloadHrakWeight: TFloatField;
    VloadHrakSend: TWideStringField;
    VloadHrakGoodsname: TWideStringField;
    VloadHrakTfasel: TSmallintField;
    VloadHrakEfrajNum: TWideStringField;
    VloadHrakEfrajDate: TDateField;
    VloadHrakFlag: TSmallintField;
    VloadHrakBillNum: TIntegerField;
    VloadHrakBillType: TSmallintField;
    VloadHrakStoreType: TSmallintField;
    VloadHrakNotes: TWideStringField;
    VloadHrakselectF: TSmallintField;
    VloadHrakStopF: TSmallintField;
    VloadHrakStopWhy: TWideStringField;
    VloadHrakMarkNm: TWideStringField;
    VloadHrakStoreTypeNm: TWideStringField;
    VloadHrakEnbEdit: TSmallintField;
    VloadHrakNum: TWideStringField;
    VloadHrakUserSelected: TSmallintField;
    VloadHrakRF: TSmallintField;
    ListAll123: TUniTable;
    ListAll123AccType: TSmallintField;
    ListAll123ListNum: TIntegerField;
    ListAll123ListType: TSmallintField;
    ListAll123ListDate: TDateField;
    ListAll123ToName: TWideStringField;
    ListAll123Total: TFloatField;
    ListAll123Stamp: TFloatField;
    ListAll123Net: TFloatField;
    ListAll123AccValue: TFloatField;
    ListAll123AccNm: TWideStringField;
    ListAll123SupNm: TWideStringField;
    ListAll123AccTotal: TFloatField;
    ListAll123Met: TSmallintField;
    ListAll123NumAuto: TIntegerField;
    mincomes: TUniTable;
    mincomek: TUniTable;
    incomek: TUniTable;
    Dmincomes: TUniDataSource;
    Dmincomek: TUniDataSource;
    Dincomek: TUniDataSource;
    mincomesMinCome: TIntegerField;
    mincomesShipType: TSmallintField;
    mincomesShipMet: TSmallintField;
    mincomesGoods: TSmallintField;
    mincomesElectric: TSmallintField;
    mincomesElecVAue: TFloatField;
    mincomesRemain: TSmallintField;
    mincomesRemValue: TFloatField;
    mincomesW1: TFloatField;
    mincomesW2: TFloatField;
    mincomesV1: TFloatField;
    mincomesV2: TFloatField;
    mincomesNUmunit: TIntegerField;
    mincomekMincome: TIntegerField;
    mincomekShipType: TSmallintField;
    mincomekShipMet: TSmallintField;
    mincomekGoods: TSmallintField;
    mincomekElectric: TSmallintField;
    mincomekElecVAlue: TFloatField;
    mincomekRemain: TSmallintField;
    mincomekRemValue: TFloatField;
    mincomekW1: TFloatField;
    mincomekW2: TFloatField;
    mincomekV1: TFloatField;
    mincomekV2: TFloatField;
    mincomekNUmunit: TIntegerField;
    incomekNumAuto: TIntegerField;
    incomekAuto: TSmallintField;
    incomekIncNum: TIntegerField;
    incomekIncName: TWideStringField;
    incomekIncAbsName: TWideStringField;
    incomekRsef: TFloatField;
    incomekStore: TFloatField;
    incomekDirect: TFloatField;
    incomekPerc: TFloatField;
    incomekStatesNum: TSmallintField;
    incomekElectric: TFloatField;
    incomekTotalRsef: TFloatField;
    incomekTotalStore: TFloatField;
    incomekTotalDirect: TFloatField;
    incomekLiner: TFloatField;
    incomekTotalLiner: TFloatField;
    incomekMin: TFloatField;
    incomekTypeFator: TSmallintField;
    incomekRHayaK: TFloatField;
    incomekRHayaS: TFloatField;
    incomekDirectState: TSmallintField;
    incomekMin2: TFloatField;
    incomekSHAYAK: TFloatField;
    incomekSHAYAS: TFloatField;
    incomekMHAYAK: TFloatField;
    incomekMHAYAS: TFloatField;
    mincomesShipTypeNm: TStringField;
    mincomesMetNm: TStringField;
    mincomesUnitNm: TStringField;
    mincomesIncType: TStringField;
    mincomekShipTypeNm: TStringField;
    mincomekMetNm: TStringField;
    mincomekUnitNm: TStringField;
    mincomekIncType: TStringField;
    services: TUniTable;
    servicesNUmAuto: TIntegerField;
    servicesNameServ: TWideStringField;
    servicesNort: TWideStringField;
    servicesServDou: TFloatField;
    Dservices: TUniDataSource;
    hrakunit: TUniTable;
    hrakunitNumAuto: TIntegerField;
    hrakunitNumAede: TIntegerField;
    hrakunitNumUnit: TIntegerField;
    hrakunitAedeDubel: TFloatField;
    Dhrakunit: TUniDataSource;
    hrakunitUnitNm: TStringField;
    Smincomes: TUniTable;
    SIIncome: TUniTable;
    SmincomesMinCome: TIntegerField;
    SmincomesShipType: TSmallintField;
    SmincomesShipMet: TSmallintField;
    SmincomesGoods: TSmallintField;
    SmincomesElectric: TSmallintField;
    SmincomesElecVAue: TFloatField;
    SmincomesRemain: TSmallintField;
    SmincomesRemValue: TFloatField;
    SmincomesW1: TFloatField;
    SmincomesW2: TFloatField;
    SmincomesV1: TFloatField;
    SmincomesV2: TFloatField;
    SmincomesNUmunit: TIntegerField;
    SIIncomeNumAuto: TIntegerField;
    SIIncomeAuto: TSmallintField;
    SIIncomeIncNum: TIntegerField;
    SIIncomeIncName: TWideStringField;
    SIIncomeIncAbsName: TWideStringField;
    SIIncomeRsef: TFloatField;
    SIIncomeStore: TFloatField;
    SIIncomeDirect: TFloatField;
    SIIncomePerc: TFloatField;
    SIIncomeStatesNum: TSmallintField;
    SIIncomeElectric: TFloatField;
    SIIncomeTotalRsef: TFloatField;
    SIIncomeTotalStore: TFloatField;
    SIIncomeTotalDirect: TFloatField;
    SIIncomeLiner: TFloatField;
    SIIncomeTotalLiner: TFloatField;
    SIIncomeTypeFator: TSmallintField;
    SIIncomeRHayaK: TFloatField;
    SIIncomeRHayaS: TFloatField;
    SIIncomeDirectState: TSmallintField;
    SIIncomeSHAYAK: TFloatField;
    SIIncomeSHAYAS: TFloatField;
    SIIncomeMHAYAK: TFloatField;
    SIIncomeMHAYAS: TFloatField;
    DSmincomes: TUniDataSource;
    VDervr7RF: TSmallintField;
    VDervr7RFNm: TStringField;
    UnitsTrtepNum: TIntegerField;
    IIncomeMin: TFloatField;
    IIncomeMin2: TFloatField;
    SIIncomeMin: TFloatField;
    SIIncomeMin2: TFloatField;
    UnitsKyass: TFloatField;
    VDervr7HalaH: TSmallintField;
    VDervr7OutHrak: TSmallintField;
    QUnitCount: TUniQuery;
    QBoCount: TUniQuery;
    RQUnitCount: TfrxDBDataset;
    RQBoCount: TfrxDBDataset;
    QUnitCountun: TWideMemoField;
    QBoCountunB: TWideMemoField;
    AttachNTotal: TFloatField;
    AttachNStamp: TFloatField;
    AttachQRALL: TWideStringField;
    AccList: TUniQuery;
    AccListListNum: TIntegerField;
    AccListListType: TSmallintField;
    AccListListDate: TDateField;
    AccListGoodsQty: TFloatField;
    AccListShipNum: TSmallintField;
    AccListGoodsDesc: TSmallintField;
    AccListArriveDate: TDateField;
    AccListAutoDate: TDateField;
    AccListShipBillNum: TSmallintField;
    AccListWeSpace: TFloatField;
    AccListGoodsNm: TWideStringField;
    AccListTotal: TFloatField;
    AccListAdmisMet: TSmallintField;
    AccListEndEmpDate: TDateField;
    AccListAdmisMetNm: TWideStringField;
    AccListTfked: TWideStringField;
    AccListweeks: TSmallintField;
    AccListStamp: TFloatField;
    AccListNet: TFloatField;
    AccListUnit: TSmallintField;
    AccListUnitNm: TWideStringField;
    AccListAllwedDate: TDateField;
    AccListStampNet: TFloatField;
    AccListToname: TWideStringField;
    AccListElectric: TSmallintField;
    AccListWight: TFloatField;
    AccListRemain: TSmallintField;
    AccListDaysNum: TIntegerField;
    AccListLocOrFor: TWideStringField;
    AccListPetrol: TSmallintField;
    AccListDirty: TSmallintField;
    AccListFTime1: TTimeField;
    AccListEndTime1: TTimeField;
    AccListMove1: TSmallintField;
    AccListFTime2: TTimeField;
    AccListEndTime2: TTimeField;
    AccListMove2: TSmallintField;
    AccListTime1: TSmallintField;
    AccListFridayNum: TSmallintField;
    AccListRsomWeeks: TSmallintField;
    AccListTime2: TSmallintField;
    AccListShipType: TSmallintField;
    AccListHoliDay: TSmallintField;
    AccListMezan: TSmallintField;
    AccListKemawea: TSmallintField;
    AccListFrg: TSmallintField;
    AccListTadl: TSmallintField;
    AccListFrgFlag: TSmallintField;
    AccListHjzFlag: TSmallintField;
    AccListTadlFlag: TSmallintField;
    AccListEdafe1: TSmallintField;
    AccListEdafe2: TSmallintField;
    AccListGoodsname: TWideStringField;
    AccListF1: TFloatField;
    AccListF11: TFloatField;
    AccListF2: TFloatField;
    AccListF22: TFloatField;
    AccListMoveall: TSmallintField;
    AccListMovV1: TFloatField;
    AccListMovV2: TFloatField;
    AccListStNum: TSmallintField;
    AccListLocWitOut: TSmallintField;
    AccListChechDate: TDateField;
    AccListCars: TSmallintField;
    AccListStates: TSmallintField;
    AccListUnit2Nm: TWideStringField;
    AccListElecDate: TDateField;
    AccListMonth: TSmallintField;
    AccListRemDate: TDateField;
    AccListMezDate: TDateField;
    AccListRoafe: TSmallintField;
    AccListDama: TSmallintField;
    AccListTfteshCar: TSmallintField;
    AccListAttTo: TWideStringField;
    AccListLeverweight: TFloatField;
    AccListSaba: TSmallintField;
    AccListWeeksNum: TSmallintField;
    AccListStates1: TSmallintField;
    AccListStates2: TSmallintField;
    AccListDays: TSmallintField;
    AccListDaysM: TSmallintField;
    AccListEleeshDate: TDateField;
    AccListReshDate: TDateField;
    AccListDaysMM: TFloatField;
    AccListAginNm: TIntegerField;
    AccListAgNm: TWideStringField;
    AccListF1Num: TSmallintField;
    AccListUser: TIntegerField;
    AccListuserNm: TWideStringField;
    AccListDateTop: TDateField;
    AccListNumT: TIntegerField;
    AccListbarcade: TWideStringField;
    AccListBillNum: TWideStringField;
    AccListAccTypeNmA: TStringField;
    AccListshipNm: TStringField;
    AccListSapa: TSmallintField;
    AccListloukof: TSmallintField;
    AccListHoursNum: TSmallintField;
    AccListcouponIn: TIntegerField;
    AccListcouponOut: TIntegerField;
    AccListTelegramNum: TIntegerField;
    AccListShTyNm: TStringField;
    AccListarchiveF: TShortintField;
    AccListPaidF: TSmallintField;
    AccListPaidNm: TStringField;
    AccListShipEnNm: TStringField;
    AccListUnitRsom: TSmallintField;
    AccListShipRsomNm: TStringField;
    AccListNum1: TSmallintField;
    AccListNum2: TSmallintField;
    AccListNum3: TSmallintField;
    AccListNum4: TSmallintField;
    AccListNum5: TSmallintField;
    AccListNum6: TSmallintField;
    AccListNum7: TSmallintField;
    AccListNum8: TSmallintField;
    AccListShipMet: TSmallintField;
    AccListShipTypeNm: TStringField;
    AccListShipMetNm: TStringField;
    AccListReserve: TSmallintField;
    AccListReservNm: TStringField;
    AccListFrgShip: TSmallintField;
    AccListQty3: TSmallintField;
    AccListRemainDays: TSmallintField;
    AccListElecDays: TSmallintField;
    AccListLockNm: TStringField;
    AccListTypeNm: TStringField;
    AccListBillNum2: TWideStringField;
    AccListHoursNum1: TSmallintField;
    AccListMonthsNum: TSmallintField;
    AccListHoursNum2: TSmallintField;
    AccListMontsNum2: TSmallintField;
    AccListSubType: TSmallintField;
    AccListDelF: TSmallintField;
    AccListDelDate: TDateField;
    AccListboat: TSmallintField;
    AccListAgntR: TSmallintField;
    AccListAgRsNm: TStringField;
    AccListSharedF: TSmallintField;
    AccListChemicalF: TSmallintField;
    AccListAlterBill: TIntegerField;
    AccListDelNm: TStringField;
    AccListStampAbs: TFloatField;
    AccListListNumR: TIntegerField;
    AccListDailyNum: TIntegerField;
    AccListAttachNum: TIntegerField;
    AccListDisCount: TFloatField;
    AccListDelWhy: TWideStringField;
    AccListListTypeNmR: TStringField;
    AccListcutF: TSmallintField;
    AccListNetDays: TIntegerField;
    AccListSabaOrLoc: TStringField;
    AccListCurrntF: TSmallintField;
    AccListDebitF: TSmallintField;
    AccListCurrDate: TDateField;
    AccListDailyCurr: TIntegerField;
    AccListLockCurr: TSmallintField;
    AccListClaimF: TSmallintField;
    AccListClaimDate: TDateField;
    AccListClaimNum: TIntegerField;
    DAccList: TUniDataSource;
    AccListQRALL: TWideMemoField;
    AccListNTotal: TFloatField;
    UnitsUName: TWideStringField;
    AgentsV: TUniTable;
    DAgentsV: TDataSource;
    AgentsVAgName: TWideStringField;
    AgentsVNum: TIntegerField;
    AgentsVAgAbsName: TWideStringField;
    AgentsVPhone: TWideStringField;
    AgentsVFax: TWideStringField;
    AgentsVE_Mail: TWideStringField;
    AgentsVAddress: TWideStringField;
    AgentsVAgType: TSmallintField;
    AgentsVFirstBal: TFloatField;
    AgentsVCurrentBal: TFloatField;
    AgentsVEsstF: TSmallintField;
    AgentsVacc1: TSmallintField;
    AgentsVacc2: TSmallintField;
    AgentsVacc3: TSmallintField;
    AgentsVacc4: TSmallintField;
    AgentsVdebitState: TSmallintField;
    infostore1: TFloatField;
    infostore2: TFloatField;
    AccListNStamp: TFloatField;
    VSUnitAccList: TUniQuery;
    VSUnitAccListNumAuto: TIntegerField;
    VSUnitAccListNumAlist: TIntegerField;
    VSUnitAccListNumUnit: TSmallintField;
    VSUnitAccListNMIncome: TIntegerField;
    VSUnitAccListValNormal: TFloatField;
    VSUnitAccListValRoro: TFloatField;
    VSUnitAccListFwozQ: TSmallintField;
    VSUnitAccListFwozV: TFloatField;
    VSUnitAccListLanerQ: TSmallintField;
    VSUnitAccListLanerV: TFloatField;
    VSUnitAccListRofaQ: TSmallintField;
    VSUnitAccListRofaV: TFloatField;
    VSUnitAccListNRofaQ: TSmallintField;
    VSUnitAccListNRofaV: TFloatField;
    VSUnitAccListEjmale: TFloatField;
    VSBollAccList: TUniQuery;
    VSBollAccListNumAuto: TIntegerField;
    VSBollAccListBollsa: TWideStringField;
    VSBollAccListNumLoad: TIntegerField;
    VSBollAccListNumAcc: TIntegerField;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    VUnitAccListAddCount: TFloatField;
    VSUnitAccListAddCount: TFloatField;
    VUnitAccListQtityNormal: TFloatField;
    VUnitAccListQtitoyRor: TFloatField;
    VSUnitAccListQtityNormal: TFloatField;
    VSUnitAccListQtitoyRor: TFloatField;
    MTENZincome: TUniTable;
    MTENZincomeMincome: TIntegerField;
    MTENZincomeShipType: TSmallintField;
    MTENZincomeShipMet: TSmallintField;
    MTENZincomeGoods: TSmallintField;
    MTENZincomeElectric: TSmallintField;
    MTENZincomeElecVAlue: TFloatField;
    MTENZincomeRemain: TSmallintField;
    MTENZincomeRemValue: TFloatField;
    MTENZincomeW1: TFloatField;
    MTENZincomeW2: TFloatField;
    MTENZincomeV1: TFloatField;
    MTENZincomeV2: TFloatField;
    MTENZincomeNUmunit: TIntegerField;
    MTENZincomeShipTypeNm: TStringField;
    MTENZincomeMetNm: TStringField;
    MTENZincomeUnitNm: TStringField;
    MTENZincomeIncType: TStringField;
    DMTENZincome: TUniDataSource;
    TENZincome: TUniTable;
    TENZincomeNumAuto: TIntegerField;
    TENZincomeAuto: TSmallintField;
    TENZincomeIncNum: TIntegerField;
    TENZincomeIncName: TWideStringField;
    TENZincomeIncAbsName: TWideStringField;
    TENZincomeRsef: TFloatField;
    TENZincomeStore: TFloatField;
    TENZincomeDirect: TFloatField;
    TENZincomePerc: TFloatField;
    TENZincomeStatesNum: TSmallintField;
    TENZincomeElectric: TFloatField;
    TENZincomeTotalRsef: TFloatField;
    TENZincomeTotalStore: TFloatField;
    TENZincomeTotalDirect: TFloatField;
    TENZincomeLiner: TFloatField;
    TENZincomeTotalLiner: TFloatField;
    TENZincomeMin: TFloatField;
    TENZincomeTypeFator: TSmallintField;
    TENZincomeRHayaK: TFloatField;
    TENZincomeRHayaS: TFloatField;
    TENZincomeDirectState: TSmallintField;
    TENZincomeMin2: TFloatField;
    TENZincomeSHAYAK: TFloatField;
    TENZincomeSHAYAS: TFloatField;
    TENZincomeMHAYAK: TFloatField;
    TENZincomeMHAYAS: TFloatField;
    DTENZincome: TUniDataSource;
    PermTransit: TBooleanField;
    SPermTransit: TBooleanField;
    VloadHrakTransitF: TSmallintField;
    QSLoadEfRF: TSmallintField;
    QSLoadEfTransitF: TSmallintField;
    QLoadEfRF: TSmallintField;
    QLoadEfTransitF: TSmallintField;
    VDateHrakByan_type: TSmallintField;
    AccListMsrahname: TWideStringField;
    AccListphoneMsr: TWideStringField;
    AccListloadnum: TIntegerField;
    AccListBillloading: TIntegerField;
    AccListTotalD: TFloatField;
    AccListInvoiceD: TSmallintField;
    AccListNTotalD: TFloatField;
    AccListNStampD: TFloatField;
    AccListDollarPrice: TFloatField;
    AccListEx_Price: TFloatField;
    AccListSubType2: TSmallintField;
    BillSrchQSubType2: TSmallintField;
    PermTrHelp: TBooleanField;
    PermTrRep: TBooleanField;
    PermTrIncome: TBooleanField;
    PermFreezing: TBooleanField;
    PermPers_Name: TWideStringField;
    AttachEx_Price: TFloatField;
    AttachDate_Top: TDateField;
    AttachDelF: TSmallintField;
    AttachDelDAte: TDateField;
    AttachDelWhy: TWideStringField;
    AttachAlterAttach: TIntegerField;
    ReviewQ: TUniQuery;
    DReviewQ: TDataSource;
    ReviewQListNum: TIntegerField;
    ReviewQListType: TSmallintField;
    ReviewQListDate: TDateField;
    ReviewQGoodsDesc: TSmallintField;
    SearchHQ: TUniQuery;
    DSearchHQ: TDataSource;
    SearchHQNum: TIntegerField;
    SearchHQTransNUm: TSmallintField;
    SearchHQTransType: TSmallintField;
    SearchHQArriveDate: TDateField;
    SearchHQEmptyPort: TSmallintField;
    SearchHQSideWalk: TSmallintField;
    SearchHQAgent: TSmallintField;
    SearchHQListDate: TDateField;
    SearchHQEndDate: TDateField;
    SearchHQRofR: TSmallintField;
    SearchHQTaghez: TSmallintField;
    SearchHQlongOf1: TSmallintField;
    SearchHQMixedF: TSmallintField;
    SearchHQShipType: TSmallintField;
    SearchHQShipMet: TSmallintField;
    SearchHQcarsTfF: TSmallintField;
    SearchHQByan_type: TSmallintField;
    SearchHQAgentNm: TStringField;
    SearchHQShipName: TStringField;
    SearchHQShipNm: TStringField;
    GeneralQ: TUniQuery;
    ReviewQarrivedate: TDateField;
    ReviewQshipnum: TSmallintField;
    ReviewQShipNm: TStringField;
    ReviewQsubtype2: TSmallintField;
    PermDelBill: TBooleanField;
    Perminvoice_Print: TBooleanField;
    ReviewAttQ: TUniQuery;
    DReviewAttQ: TDataSource;
    ReviewAttQattachNum: TIntegerField;
    ReviewAttQaccType: TIntegerField;
    ReviewAttQattachDate: TDateField;
    ReviewAttQoasve: TWideStringField;
    ReviewAttQtoname: TWideStringField;
    Permmain_options: TBooleanField;
    UnitsGroupNo: TSmallintField;
    Unitsshared_value: TFloatField;
    AccListshared_usefork: TSmallintField;
    frxCSVExport1: TfrxCSVExport;
    frxXLSExport1: TfrxXLSExport;
    frxZPLExport1: TfrxZPLExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxDOCXExport1: TfrxDOCXExport;
    QNumHekelSMarkNm: TStringField;
    Vunitaccdet: TUniQuery;
    DVunitaccdet: TDataSource;
    VunitaccdetNumAuto: TIntegerField;
    VunitaccdetNumAlist: TIntegerField;
    VunitaccdetNumUnit: TSmallintField;
    VunitaccdetQtityNormal: TFloatField;
    VunitaccdetQtitoyRor: TFloatField;
    VunitaccdetNMIncome: TIntegerField;
    VunitaccdetValNormal: TFloatField;
    VunitaccdetValRoro: TFloatField;
    VunitaccdetFwozV: TFloatField;
    VunitaccdetLanerQ: TSmallintField;
    VunitaccdetLanerV: TFloatField;
    VunitaccdetRofaQ: TSmallintField;
    VunitaccdetRofaV: TFloatField;
    VunitaccdetNRofaQ: TSmallintField;
    VunitaccdetNRofaV: TFloatField;
    VunitaccdetEjmale: TFloatField;
    VunitaccdetAddCount: TFloatField;
    VunitaccdetElectricQty: TSmallintField;
    VunitaccdetSize: TFloatField;
    VunitaccdetNumAttach: TIntegerField;
    VunitaccdetListType: TSmallintField;
    Dinfo: TDataSource;
    infonumAuto: TIntegerField;
    infoCurrentPrice: TFloatField;
    infoLastPrice: TFloatField;
    infoCurrentDate: TDateField;
    infoLastDate: TDateField;
    infoPeak_active: TBooleanField;
    DPeakTbl: TUniDataSource;
    PeakTbl: TUniTable;
    PeakTblPeak_From: TDateField;
    PeakTblPeak_To: TDateField;
    PeakTblPeak_Hours: TFloatField;
    PeakTblPeak_Value: TFloatField;
    PeakQ: TUniQuery;
    VDateHrakMetNm: TWideStringField;
    AccListQty2: TSmallintField;
    AccListUnit2: TSmallintField;
    AccListTo: TSmallintField;
    AccListElecQty: TSmallintField;
    AccListRemQty: TSmallintField;
    VSAccListMsrahname: TWideStringField;
    VSAccListphoneMsr: TWideStringField;
    VSAccListNTotal: TFloatField;
    VSAccListNStamp: TFloatField;
    VSAccListQRALL: TWideMemoField;
    VSAccListloadnum: TIntegerField;
    VSAccListBillloading: TIntegerField;
    VSAccListTotalD: TFloatField;
    VSAccListInvoiceD: TSmallintField;
    VSAccListNTotalD: TFloatField;
    VSAccListNStampD: TFloatField;
    VSAccListDollarPrice: TFloatField;
    VSAccListEx_Price: TFloatField;
    VSAccListSubType2: TSmallintField;
    VSAccListshared_usefork: TSmallintField;
    VSAccListTo: TSmallintField;
    VSAccListElecQty: TSmallintField;
    VSAccListRemQty: TSmallintField;
    DsIIncome: TDataSource;
    VunitaccdetUnitNm: TStringField;
    QAccUnitcount: TUniQuery;
    RQAccUnitcount: TfrxDBDataset;
    QAccUnitcountun: TWideMemoField;
    VunitaccdetFwozQ: TFloatField;
    Attachprogress: TSmallintField;
    Attachstampflag: TSmallintField;
    AttachPolesa: TWideStringField;
    AttachMetNm: TStringField;
    accdetunit_beforeQ: TUniQuery;
    accdetunit_beforeQNumAuto: TIntegerField;
    accdetunit_beforeQNumAlist: TIntegerField;
    accdetunit_beforeQNumUnit: TSmallintField;
    accdetunit_beforeQQtityNormal: TFloatField;
    accdetunit_beforeQQtitoyRor: TFloatField;
    accdetunit_beforeQNMIncome: TIntegerField;
    accdetunit_beforeQValNormal: TFloatField;
    accdetunit_beforeQValRoro: TFloatField;
    accdetunit_beforeQFwozQ: TFloatField;
    accdetunit_beforeQFwozV: TFloatField;
    accdetunit_beforeQLanerQ: TSmallintField;
    accdetunit_beforeQLanerV: TFloatField;
    accdetunit_beforeQRofaQ: TSmallintField;
    accdetunit_beforeQRofaV: TFloatField;
    accdetunit_beforeQNRofaQ: TSmallintField;
    accdetunit_beforeQNRofaV: TFloatField;
    accdetunit_beforeQEjmale: TFloatField;
    accdetunit_beforeQAddCount: TFloatField;
    accdetunit_beforeQElectricQty: TSmallintField;
    accdetunit_beforeQSize: TFloatField;
    accdetunit_beforeQNumAttach: TIntegerField;
    accdetunit_beforeQListType: TSmallintField;
    DataSource1: TDataSource;
    loadSearchQ: TUniQuery;
    loadSearchQauto: TIntegerField;
    loadSearchQlnum: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DB1ConnectionLost(Sender: TObject; Component: TComponent;
      ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    procedure str(var ch: string);
    function WriteNo(No: string): string;
    function GetNo(Ns: string; Power: Integer;
      Frst, Frst1, Scnd, Thrd: array of string): string;
    procedure manykzenaCalcFields(DataSet: TDataSet);
    procedure EdaQBeforeDelete(DataSet: TDataSet);
    procedure Trsed;
    procedure EdaBanksDAfterPost(DataSet: TDataSet);
    procedure manykzenaBeforeInsert(DataSet: TDataSet);
    procedure VDervr4AfterInsert(DataSet: TDataSet);
    procedure VDervr1CalcFields(DataSet: TDataSet);
    procedure VDervr4BeforeInsert(DataSet: TDataSet);
    procedure VDervr4BeforePost(DataSet: TDataSet);
    procedure VDervr4BeforeDelete(DataSet: TDataSet);
    procedure VDervr4BeforeEdit(DataSet: TDataSet);
    procedure VDervr5BeforeEdit(DataSet: TDataSet);
    procedure VDervr5BeforeInsert(DataSet: TDataSet);
    procedure VDervr5BeforeDelete(DataSet: TDataSet);
    procedure hrweightAfterInsert(DataSet: TDataSet);
    procedure hrweightBeforePost(DataSet: TDataSet);
    procedure VloadHrakBeforeEdit(DataSet: TDataSet);
    procedure VloadHrakBeforePost(DataSet: TDataSet);
    procedure AccListAfterInsert(DataSet: TDataSet);
    procedure AccListAfterPost(DataSet: TDataSet);
    procedure AccListBeforeDelete(DataSet: TDataSet);
    procedure AccListBeforeEdit(DataSet: TDataSet);
    procedure AccListBeforeInsert(DataSet: TDataSet);
    procedure AccListBeforePost(DataSet: TDataSet);
    procedure AccListCalcFields(DataSet: TDataSet);
    procedure accdetAfterInsert(DataSet: TDataSet);
    procedure accdetAfterPost(DataSet: TDataSet);
    procedure accdetBeforeDelete(DataSet: TDataSet);
    procedure accdetBeforeEdit(DataSet: TDataSet);
    procedure accdetBeforePost(DataSet: TDataSet);
    procedure accdetAccValueValidate(Sender: TField);
    procedure AttachAfterInsert(DataSet: TDataSet);
    procedure AttachAfterPost(DataSet: TDataSet);
    procedure AttachAfterRefresh(DataSet: TDataSet);
    procedure AttachBeforeCancel(DataSet: TDataSet);
    procedure AttachBeforeDelete(DataSet: TDataSet);
    procedure AttachBeforeEdit(DataSet: TDataSet);
    procedure AttachBeforeInsert(DataSet: TDataSet);
    procedure AttachBeforePost(DataSet: TDataSet);
    procedure AttachCalcFields(DataSet: TDataSet);
    procedure AttachDAfterPost(DataSet: TDataSet);
    procedure AttachDBeforeDelete(DataSet: TDataSet);
    procedure AttachDBeforeEdit(DataSet: TDataSet);
    procedure attach2AfterInsert(DataSet: TDataSet);
    procedure attach2BeforeCancel(DataSet: TDataSet);
    procedure attach2BeforeInsert(DataSet: TDataSet);
    procedure attach2CalcFields(DataSet: TDataSet);
    procedure attach2dBeforePost(DataSet: TDataSet);
    procedure BillSrchQCalcFields(DataSet: TDataSet);
    procedure ShipsCalcFields(DataSet: TDataSet);
    procedure ShipsBeforePost(DataSet: TDataSet);
    procedure ShipsBeforeInsert(DataSet: TDataSet);
    procedure ShipsBeforeDelete(DataSet: TDataSet);
    procedure ShipsAfterInsert(DataSet: TDataSet);
    procedure ShipsSNameValidate(Sender: TField);
    procedure AgentsBeforeDelete(DataSet: TDataSet);
    procedure AgentsBeforePost(DataSet: TDataSet);
    procedure AgentsAgNameValidate(Sender: TField);
    procedure AccListAfterScroll(DataSet: TDataSet);
    procedure AttachAfterScroll(DataSet: TDataSet);
    procedure AccListShipNumValidate(Sender: TField);
    procedure AccListReserveValidate(Sender: TField);
    procedure AccListEleeshDateValidate(Sender: TField);
    procedure AccListReshDateValidate(Sender: TField);
    procedure VDervr7CalcFields(DataSet: TDataSet);
    procedure MIncomeCalcFields(DataSet: TDataSet);
    procedure MIncomeAfterInsert(DataSet: TDataSet);
    procedure MIncomeBeforeDelete(DataSet: TDataSet);
    procedure mincomekAfterInsert(DataSet: TDataSet);
    procedure mincomesAfterInsert(DataSet: TDataSet);
    procedure mincomesBeforeDelete(DataSet: TDataSet);
    procedure mincomesCalcFields(DataSet: TDataSet);
    procedure mincomekCalcFields(DataSet: TDataSet);
    procedure mincomekBeforeDelete(DataSet: TDataSet);
    procedure VDervr7AfterInsert(DataSet: TDataSet);
    procedure PermAfterInsert(DataSet: TDataSet);
    procedure PermBeforeDelete(DataSet: TDataSet);
    procedure MTENZincomeCalcFields(DataSet: TDataSet);
    procedure AccListAfterDelete(DataSet: TDataSet);
    procedure accdetAfterDelete(DataSet: TDataSet);
    procedure AccListDamaValidate(Sender: TField);
    procedure PeakTblBeforeDelete(DataSet: TDataSet);
    procedure AttachstampflagValidate(Sender: TField);
    procedure VunitaccdetAfterPost(DataSet: TDataSet);
    procedure VunitaccdetAfterDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public

    function Tkrib(M: Real): Real;

    { Public declarations }
  end;

var
  DmdFm: TDmdFm;
  lockOrDel, acctype,subType2, ret123, CreClose,edit_flag: Smallint;
  EsalV, BillV, EdaV, TransV, EdaCheck, MoneyC, Balance, CreTresury: Real;
  accNum, yyy, lastnum, delLoad, LastNumR: Integer;
  ShipNum, P1, crerate, crelist, creshipp, crefine, creshmnd, crebillsrch,
    creEfraj, creadmin, EditList, DelDet, RepType, SubType, AlterF, SharedF,
    CreUnlock, Whatholiday, EdafeF: Smallint;
  attdate, checkdate, Date2, Date4, DDate: TDate;
  EditEfraj, AlterBill: string;
  day, month, year, day1, month1, year1: Word;
  as12, as13, DetTotal: Real;
  incoType, TadlF,editorinsert,Electric_f,attach_accdet: Smallint;
    iniflie:TIniFile;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AiiradatUn,
  MainUn, Dmd2Un, AcListUn, SplashUn, HatkaUn, Attach2Un, Attach3Un, AttachUn,
  BillSrUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, EfrajUn, LocalAgantUn,
  LstDetUn, PermUn, ShipUn, SrchShUn, SrchUn, SubSrcUn, UFEnterPass,
  VDateHrakUn, VdateHUn;

{$R *.dfm}

procedure TDmdFm.Trsed;
begin
  EsalV := 0;
  BillV := 0;
  EdaV := 0;
  TransV := 0;
  EdaCheck := 0;
  MoneyC := 0;
  CreClose := 0;
  CreTresury := 0;

end;

function TDmdFm.Tkrib(M: Real): Real;
var
  s: string;
begin
  s := FLOATTOSTR(M);
  // IF pos('.',S)>0 THEN
  if Frac(M) > 0 then
    s := copy(s, pos('.', s) + 4, 1);

  if s = '' then
    s := '0';
  if Frac(M) > 0 then
  begin

    if strtofloat(s) >= 5 then
      Result := strtofloat(copy(FLOATTOSTR(M), 0, pos('.', FLOATTOSTR(M)) +
        3)) + 0.000
    else
      Result := strtofloat(copy(FLOATTOSTR(M), 0, pos('.', FLOATTOSTR(M)) +
        3)) + 0.000;
  end
  else
    Result := M;
end;

procedure TDmdFm.VDervr1CalcFields(DataSet: TDataSet);
var
  w, di: Smallint;
begin
  w := (DaysBetween(VDervr1ListDate.Value + 1, VDervr1EndEmpDate.Value) mod 7);
  di := (DaysBetween(VDervr1ListDate.Value + 1, VDervr1EndEmpDate.Value) div 7);
  if w <> 0 then
  begin
    VDervr1weeks.Value := di + 1;
    VDervr1AllwedDate.Value := VDervr1ListDate.Value + (7 - w);
  end
  else
  begin
    VDervr1weeks.Value := di;
    VDervr1AllwedDate.Value := VDervr1ListDate.Value;
  end;
end;

procedure TDmdFm.VDervr4AfterInsert(DataSet: TDataSet);
begin
  VDervr4DateAmer.Value := Now;
  VDervr4NameMstelm.Value := VDervr2Send.Value;
  // SShips.Locate('Num',VDervr1ShipNum.Value,[]) ;
  VDervr4NameShip.Value := VDervr1ShipNm.Value;

  VDervr4NameOkel.Value := VDervr3AgentNm.Value;

  VDervr4MsrhJomrke.Value := VDervr1AgNm.Value;
  VDervr4BolesaNum.Value := VDervr2Billloading.Value;
  VDervr4DateOsole.Value := VDervr3ArriveDate.Value;
  VDervr4User.Value := PermUserName.Value;
  VDervr4NUMAfraje.Value := VDervr2EfrajNum.Value;
  VDervr4NameSCar.Value := DmdFm.VDervr2Goodsname.Value;
  VDervr4smhea.Value := VDervr1AllwedDate.Value;
  VDervr4ozen.Value := FLOATTOSTR(VDervr2Weight.Value);
  VDervr4kyse.Value := FLOATTOSTR(VDervr2Kias.Value);
  VDervr4log1.Value := 1;

end;

procedure TDmdFm.VDervr4BeforeDelete(DataSet: TDataSet);
begin

  if PermDelload.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if not VDervr5.IsEmpty then
    raise Exception.Create('Ì« ‘ÌŒ «·⁄—» ..... «Õœ› «—ﬁ«„ «·„⁄„«·… ﬁ»· ');

  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
end;

procedure TDmdFm.VDervr4BeforeEdit(DataSet: TDataSet);
begin
  if (VDervr4log1.Value = 2) AND (PermLockList.Value = false) then
    raise Exception.Create
      ('Ì« ⁄“Ì“Ì —«ÂÊÊÊÊÊÊÊÊÊÊ «·›« Ê—… „ﬁ›·… ·· ⁄œÌ· «·—Ã«¡ › Õ «·›« Ê—…');
end;

procedure TDmdFm.VDervr4BeforeInsert(DataSet: TDataSet);
begin
  if DmdFm.VDervr2EfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

end;

procedure TDmdFm.VDervr4BeforePost(DataSet: TDataSet);
begin

  // QMaxDr.Close;
  // QMaxDr.Open;
  // VDervr4barcade.Value := IntToStr(QMaxDrMax_numAuto.Value + 1);

  // VDervr4barcade.Value := VDervr1barcade.Value;
  VDervr4numloadlist.Value := VDervr3Num.Value;
  VDervr4numLoad.Value := VDervr2Auto.Value;

end;

procedure TDmdFm.VDervr5BeforeDelete(DataSet: TDataSet);
begin
  if (VDervr4log1.Value = 2) then
    raise Exception.Create
      ('Ì« ⁄“Ì“Ì —«ÂÊÊÊÊÊÊÊÊÊÊ «·›« Ê—… „ﬁ›·… ·· ⁄œÌ· «·—Ã«¡ › Õ «·›« Ê—…');

  // if PermDelload.Value = false then
  // raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

end;

procedure TDmdFm.VDervr5BeforeEdit(DataSet: TDataSet);
begin
  if (VDervr4log1.Value = 2) then
    raise Exception.Create
      ('Ì« ⁄“Ì“Ì —«ÂÊÊÊÊÊÊÊÊÊÊ «·›« Ê—… „ﬁ›·… ·· ⁄œÌ· «·—Ã«¡ › Õ «·›« Ê—…');
end;

procedure TDmdFm.VDervr5BeforeInsert(DataSet: TDataSet);
begin
  if (VDervr4log1.Value = 2) then
    raise Exception.Create
      ('Ì« ⁄“Ì“Ì —«ÂÊÊÊÊÊÊÊÊÊÊ «·›« Ê—… „ﬁ›·… ·· ⁄œÌ· «·—Ã«¡ › Õ «·›« Ê—…');

end;

procedure TDmdFm.VDervr7AfterInsert(DataSet: TDataSet);
begin
  VDervr7shipType.Value := 1;
  VDervr7shipMet.Value := 1;
  VDervr7Lever.Value := 1;
  VDervr7RF.Value := 1;
end;

procedure TDmdFm.VDervr7CalcFields(DataSet: TDataSet);
begin
  if VDervr7shipMet.Value = 1 then
    VDervr7MetNm.Value := '›ÌÊ”'
  else if VDervr7shipMet.isnull then
    VDervr7MetNm.Value := ''
  else if VDervr7shipMet.Value = 0 then
    VDervr7MetNm.Value := '·«Ì‰—';

  if VDervr7shipType.Value = 1 then
    VDervr7TypeNm.Value := '⁄«œÌ…'
  else if VDervr7shipType.Value = 2 then
    VDervr7TypeNm.Value := '—Ê—Ê';

  if VDervr7Lever.Value = 1 then
    VDervr7leverNm.Value := '—Ê«›⁄ «·„Ì‰«¡'
  else if VDervr7Lever.Value = 2 then
    VDervr7leverNm.Value := '—Ê«›⁄ «·”›Ì‰…';

  if VDervr7RF.Value = 1 then
    VDervr7RFNm.Value := '»œÊ‰'
  else if VDervr7RF.Value = 2 then
    VDervr7RFNm.Value := 'À·«Ã…';

end;

procedure TDmdFm.VloadHrakBeforeEdit(DataSet: TDataSet);
begin

  if ((not VloadHrakBillNum.isnull) and (NewEfraj <> 2) and (NewEfraj <> 1))
  then
  begin
    // if SAccList.Locate('ListNum', loadBillNum.Value, []) then
    VSAccList.Close;
    VSAccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    VSAccList.Execute;

    if VSAccListloukof.Value = 0 then
      raise Exception.Create('«·›« Ê—… „ﬁ›·… ·« Ì„ﬂ‰ﬂ «· ⁄œÌ·');
  end;
  EditEfraj := VloadHrakEfrajNum.Value;
  { if creshipp = 1 then
    begin
    if (not loadBillNum.IsNull) and (loadEnbEdit.Value = 0) then
    begin
    shippFm.DBGrid1.Columns[0].ReadOnly := true;
    shippFm.DBGrid1.Columns[1].ReadOnly := true;
    shippFm.DBGrid1.Columns[2].ReadOnly := true;
    shippFm.DBGrid1.Columns[5].ReadOnly := true;
    shippFm.DBGrid1.Columns[6].ReadOnly := true;

    end
    else
    begin
    shippFm.DBGrid1.Columns[0].ReadOnly := False;
    shippFm.DBGrid1.Columns[1].ReadOnly := False;
    shippFm.DBGrid1.Columns[2].ReadOnly := False;
    shippFm.DBGrid1.Columns[5].ReadOnly := False;
    shippFm.DBGrid1.Columns[6].ReadOnly := False;
    end;

    if (vLoadList.State = dsedit) or (vLoadList.State = dsinsert) then
    raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·‘Õ‰ «Ê·«');
    end;
  }
end;

procedure TDmdFm.VloadHrakBeforePost(DataSet: TDataSet);
begin
  // if (NewEfraj <> 1) and (NewEfraj <> 2) then
  // VloadHrakEfrajDate.Value := Date;
  // if VloadHrakQty.isnull then
  // raise Exception.Create('«·”Ã· ›«—€');

  /// /////////////////
  // SVloadHrak.Close;
  // SVloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
  // SVloadHrak.Execute;
  /// /////////////////

  // if (Sload.Locate('EfrajNum', loadEfrajNum.Value, [])) and (dmdfm.loadEfrajNum.Value <> EditEfraj) and (DmdFm.loadEfrajNum.Value <> '') then
  // raise Exception.Create('—ﬁ„ «·≈›—«Ã „ﬂ——');

  // if not(SVloadHrak.Locate('EfrajNum', VloadHrakEfrajNum.Value, [])) and
  // (DmdFm.VloadHrakEfrajNum.Value <> EditEfraj) and
  // (DmdFm.VloadHrakEfrajNum.Value <> '') then
  // raise Exception.Create('—ﬁ„ «·≈›—«Ã „ﬂ——');

  // if (DmdFm.VloadHrakEfrajNum.Value <> EditEfraj) and
  // (DmdFm.VloadHrakEfrajNum.Value <> '') then
  // raise Exception.Create('—ﬁ„ «·≈›—«Ã „ﬂ——');

end;

procedure TDmdFm.VunitaccdetAfterDelete(DataSet: TDataSet);
var sumqty:Real;
begin
DmdFm.Vunitaccdet.First;
while not DmdFm.Vunitaccdet.Eof do
begin
 sumqty:=sumqty+DmdFm.VunitaccdetAddCount.Value;
 DmdFm.Vunitaccdet.Next;
end;
       DmdFm.Attach.Edit;
        DmdFm.AttachQty.Value:=sumQty;
        DmdFm.Attach.post;
end;

procedure TDmdFm.VunitaccdetAfterPost(DataSet: TDataSet);
var sumqty:Real;
begin

DmdFm.Vunitaccdet.First;
while not DmdFm.Vunitaccdet.Eof do
begin
 sumqty:=sumqty+DmdFm.VunitaccdetAddCount.Value;
 DmdFm.Vunitaccdet.Next;
end;
       DmdFm.Attach.Edit;
        DmdFm.AttachQty.Value:=sumQty;
        DmdFm.Attach.post;
end;

function TDmdFm.WriteNo(No: string): string;
var
  FirstArray: array [0 .. 9] of string;
  FirstArray1: array [0 .. 2] of string;
  SecondArray: array [0 .. 9] of string;
  ThirdArray: array [0 .. 9] of string;
  Parts: array [0 .. 4] of string;
  PartStr: array [0 .. 4] of string;
  valV, ValCode, Len, I, TempLen: Integer;
  NoString, Txt: string;
begin

  for I := 0 to 4 do
  begin
    Parts[I] := '';
    PartStr[I] := '';
  end;
  FirstArray[1] := 'Ê«Õœ';
  FirstArray[2] := '«À‰«‰';
  FirstArray[3] := 'À·«À…';
  FirstArray[4] := '√—»⁄…';
  FirstArray[5] := 'Œ„”…';
  FirstArray[6] := '” …';
  FirstArray[7] := '”»⁄…';
  FirstArray[8] := 'À„«‰Ì…';
  FirstArray[9] := ' ”⁄…';

  FirstArray1[0] := '√Õœ';
  FirstArray1[1] := '«À‰«';

  SecondArray[1] := '⁄‘—…';
  SecondArray[2] := '⁄‘—Ê‰';
  SecondArray[3] := 'À·«ÀÊ‰';
  SecondArray[4] := '√—»⁄Ê‰';
  SecondArray[5] := 'Œ„”Ê‰';
  SecondArray[6] := '” Ê‰';
  SecondArray[7] := '”»⁄Ê‰';
  SecondArray[8] := 'À„«‰Ê‰';
  SecondArray[9] := ' ”⁄Ê‰';

  ThirdArray[1] := '„«∆…';
  ThirdArray[2] := '„∆ «‰';
  ThirdArray[3] := 'À·«À„«∆…';
  ThirdArray[4] := '√—»⁄„«∆…';
  ThirdArray[5] := 'Œ„”„«∆…';
  ThirdArray[6] := '” „«∆…';
  ThirdArray[7] := '”»⁄„«∆…';
  ThirdArray[8] := 'À„«‰„«∆…';
  ThirdArray[9] := ' ”⁄„«∆…';
  Txt := '';
  I := -1;
  val(No, valV, ValCode);
  if valV = 0 then
  begin
    Result := '’›—';
    exit;
  end;
  NoString := Trim(No);
  Len := Length(NoString);
  TempLen := Len;
  Parts[0] := NoString;
  while TempLen >= 3 do
  begin
    TempLen := TempLen - 3;
    I := I + 1;
    Parts[I] := copy(NoString, TempLen + 1, 3);
    NoString := copy(NoString, 0, TempLen);
  end;
  Parts[I + 1] := NoString;
  for I := 0 to 3 do
  begin
    if Length(Parts[I]) > 0 then
      PartStr[I] := GetNo(Parts[I], I, FirstArray, FirstArray1, SecondArray,
        ThirdArray)
      // Else
      // exit;
  end; // end of for

  for I := 3 downto 0 do
    if Length(PartStr[I]) > 0 then
      if Length(PartStr[I - 1]) > 0 then
        if (I > 0) then
          Txt := Txt + ' ' + PartStr[I] + ' Ê'
        else
          Txt := Txt + ' ' + PartStr[I]
      else
        Txt := Txt + ' ' + PartStr[I] + ' ';
  WriteNo := Txt;
end; // end  function

function TDmdFm.GetNo(Ns: string; Power: Integer;
  Frst, Frst1, Scnd, Thrd: array of string): string;
var
  Indx: array [0 .. 4] of Integer;
  TmpArray: array [0 .. 2] of string;
  // Tms:String;
  Lngth, J: Integer;
label
  last;
begin
  { «·¬Õ«œ }
  for J := 0 to 4 do
    Indx[J] := 0;
  for J := 0 to 2 do
    TmpArray[J] := '';

  Lngth := Length(Ns);
  Indx[1] := strtoint(copy(Ns, Lngth, 1));
  TmpArray[0] := Frst[Indx[1]];
  Lngth := Lngth - 1;

  if Lngth > 0 then
  { «·⁄‘—«  }
  begin
    Indx[2] := strtoint(copy(Ns, Lngth, 1));
    if TmpArray[0] <> '' then
      TmpArray[1] := Scnd[Indx[2]]
    else
      TmpArray[1] := Scnd[Indx[2]];
  end;

  if (Indx[2] > 1) and (TmpArray[0] <> '') then
    TmpArray[0] := TmpArray[0] + ' Ê'
  else if (Indx[1] = 1) and (Indx[2] = 1) then
    TmpArray[0] := Frst1[0]
  else if (Indx[1] = 2) and (Indx[2] = 1) then
    TmpArray[0] := Frst1[1];
  // ShowMessage(frst1[12]);

  Lngth := Lngth - 1;
  { «·„∆«  }
  if Lngth > 0 then
  begin
    Indx[3] := strtoint(copy(Ns, Lngth, 1));
    TmpArray[2] := Thrd[Indx[3]];
    if (Indx[3] > 0) and (TmpArray[0] <> '') or (TmpArray[1] <> '') then
      TmpArray[2] := TmpArray[2] + ' Ê'
    else
      goto last;
  end
  else
    goto last;
last:
  begin
    case Power of
      0:
        begin
          GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1];
        end;
      1:
        begin
          if (Indx[1] = 1) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' √·›'
          else if (Indx[1] = 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' √·›«‰'
          else if (Indx[1] > 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[0] + ' ¬·«›'
          else if (Indx[1] = 0) and (Indx[2] = 1) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' ¬·«›'
          else if (Indx[1] = 0) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1]
          else
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' √·›';

        end; // end of 1
      2:
        begin
          if (Indx[1] = 1) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·ÌÊ‰'
          else if (Indx[1] = 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·ÌÊ‰«‰'
          else if (Indx[1] > 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[0] + ' „·«ÌÌ‰'
          else if (Indx[1] = 0) and (Indx[2] = 1) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·«ÌÌ‰'
          else if (Indx[1] = 0) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1]
          else
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·ÌÊ‰';
        end; // end of 2
      3:
        begin
          if (Indx[1] = 1) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·Ì«—'
          else if (Indx[1] = 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·Ì«—«‰'
          else if (Indx[1] > 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[0] + ' „·Ì«—« '
          else if (Indx[1] = 0) and (Indx[2] = 1) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·Ì«—« '
          else
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·Ì«—';
        end; // end of 3

    end; // end of case
  end;
end;

/// /////////////////////////////////////////////////////////////////

procedure TDmdFm.str(var ch: string);
begin
  while (pos('‹', ch) > 0) or (pos(' ', ch) > 0) do
  begin
    delete(ch, pos('‹', ch), 1);
    delete(ch, pos(' ', ch), 1);
  end;
  while (pos('√', ch) > 0) or (pos('≈', ch) > 0) or (pos('¬', ch) > 0) or
    (pos('–', ch) > 0) or (pos('Ì', ch) > 0) or (pos('…', ch) > 0) do
  begin
    if pos('√', ch) > 0 then
      ch[pos('√', ch)] := '«';
    if pos('≈', ch) > 0 then
      ch[pos('≈', ch)] := '«';
    if pos('¬', ch) > 0 then
      ch[pos('¬', ch)] := '«';
    if pos('…', ch) > 0 then
      ch[pos('…', ch)] := 'Â';
    if pos('Ì', ch) > 0 then
      ch[pos('Ì', ch)] := 'Ï';
    if pos('–', ch) > 0 then
      ch[pos('–', ch)] := 'œ';
  end;
end;

procedure TDmdFm.accdetAccValueValidate(Sender: TField);
begin
  if acctype = 4 then
  begin

    if (accdetAccType.Value = 9) then
    begin
      if not(AccListLeverweight.isnull) then
        accdetAccTotal.Value := accdetAccValue.Value * AccListLeverweight.Value
          * AccListSaba.Value
      else

        accdetAccTotal.Value := accdetAccValue.Value * AccListWeSpace.Value;

    end
    else
      accdetAccTotal.Value := accdetAccValue.Value * AccListWeSpace.Value;
  end

  else if (TadlF <> 3) and (TadlF <> 4) and (TadlF <> 5) and (SubType <> 1) and
    (TadlF <> 7) and (TadlF <> 8) and (SubType <> 2) and (SubType <> 3) and
    (SharedF <> 4) and (SharedF <> 1) and (SharedF <> 2) then
    accdetAccTotal.Value := accdetAccValue.Value * AccListWeSpace.Value;
  // AccDetAccTotal.Value:= Tkrib(AccDetAccTotal.Value);

  if (((acctype = 7) or (acctype = 6)) and (accdetAccType.Value = 9)) then
    accdetAccTotal.Value := accdetAccValue.Value * AccListLeverweight.Value *
      AccListSaba.Value;
  if (((acctype = 7) or (acctype = 6)) and (accdetAccType.Value = 9) and
    (AccListLeverweight.isnull)) then
    accdetAccTotal.Value := accdetAccValue.Value * AccListWeSpace.Value;

  accdetAccTotal.Value := Tkrib(accdetAccTotal.Value);

end;

procedure TDmdFm.accdetAfterDelete(DataSet: TDataSet);

begin
      EditList := 1;
      AccList.Edit;
      AccListTotal.Value := 0;
     DmdFm.AccListStampAbs.Value := 0;
      AccList.Post;

      if NewEfraj = 2 then
        EditList := 0;

end;

procedure TDmdFm.accdetAfterInsert(DataSet: TDataSet);
begin
  accdetNasb.Value := 0;
end;

procedure TDmdFm.accdetAfterPost(DataSet: TDataSet);
var
  f, g, sum, b: Real;
  a: string;
  bookmark: TBookmark;
begin
  if lockOrDel <> 3 then
  begin
    if accdetAccType.isnull then
      accdet.delete
    else
    begin
      sum := 0;
      accdet.DisableControls;
      bookmark := accdet.GetBookmark;
      accdet.First;
      while not accdet.Eof do
      begin
        if ((accdetListType.Value = 3) and (accdetAccType.Value <> 14) and
          (accdetAccType.Value <> 37) and (accdetAccType.Value <> 38)) then
        begin
          a := FormatFloat('0.000', accdetAccTotal.Value);
          sum := sum + strtofloat(a);
        end
        else if (accdetListType.Value = 4) or (accdetListType.Value = 5) then
        begin
          a := FormatFloat('0.000', accdetAccTotal.Value);
          sum := sum + strtofloat(a);
        end
        else if (accdetListType.Value = 1) or (accdetListType.Value = 2) or
          (accdetListType.Value = 6) or (accdetListType.Value = 7) or
          (accdetListType.Value = 8) or (accdetListType.Value = 9) then
        begin
          a := FormatFloat('0.000', accdetAccTotal.Value);
          sum := sum + strtofloat(a);
        end;
        accdet.Next;
      end;
      accdet.GotoBookmark(bookmark);
      accdet.EnableControls;
      EditList := 1;
      AccList.Edit;
      AccListTotal.Value := sum;
      AccList.Post;

      { -------------Õ”«» «·œ„€…----------------- }
      if DmdFm.AccListDama.Value = 0 then
      begin
        AccList.Edit;
        f := int(DmdFm.AccListTotal.Value * 0.005);
        g := (DmdFm.AccListTotal.Value * 0.005) - f;
        if (g = 0.500) or (g = 0.000) then
          DmdFm.AccListStampAbs.Value := (DmdFm.AccListTotal.Value * 0.005)
        else if g < 0.500 then
          DmdFm.AccListStampAbs.Value := (f + 0.500)
        else if g > 0.500 then
          DmdFm.AccListStampAbs.Value := (f + 1);
        AccList.Post;
      end
      else
      begin
        AccList.Edit;
        DmdFm.AccListStampAbs.Value := 0;
        AccList.Post;
      end;

      if NewEfraj = 2 then
        EditList := 0;
    end;
  end;
end;

procedure TDmdFm.accdetBeforeDelete(DataSet: TDataSet);
begin
  if (AccListloukof.Value = 0) and (PermLockList.Value = false) then
    raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');
  if (AccListDelF.Value = 1) then
    raise Exception.Create('ﬁ«∆„… «·Õ”«» „·€Ì…');

  if (AccListListType.Value = 3) and (not Move.IsEmpty) and (TadlF <> 8) then
    raise Exception.Create(' ÊÃœ Õ—ﬂ«  ... «Õ–› «·Õ—ﬂ«  √Ê·«');

  if (AccListListType.Value = 3) and (not Move2.IsEmpty) and (TadlF = 8) then
    raise Exception.Create(' ÊÃœ Õ—ﬂ«  ... «Õ–› «·Õ—ﬂ«  √Ê·«');

end;

procedure TDmdFm.accdetBeforeEdit(DataSet: TDataSet);
begin
  if (AccListloukof.Value = 0) and (PermLockList.Value = false) then
    raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');

  // if (AccListDelF.Value=1) then
  // raise Exception.Create('ﬁ«∆„… «·Õ”«» „·€Ì…');

end;

procedure TDmdFm.accdetBeforePost(DataSet: TDataSet);
begin
  if accdetAccType.isnull then
    raise Exception.Create('·« ÌÃÊ“ ≈÷«›… »‰œ ›«—€');

end;

procedure TDmdFm.AccListAfterDelete(DataSet: TDataSet);
begin
  AcListFm.Edit1.Text := '2';
  AcListFm.Close;

end;

procedure TDmdFm.AccListAfterInsert(DataSet: TDataSet);
var
  day, month, year, day1, month1, year1: Word;
begin

  AccListDateTop.Value := Now;
  AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value;
  AccListListType.Value := acctype;
  AccListSubType.Value := SubType;
    AccListSubType2.Value := SubType2;
  AccListCurrntF.Value := 0;
  AccListDebitF.Value := 0;

  AccListFrg.Value := strtoint(AcListFm.sEdit4.Text);
  AccListTadl.Value := strtoint(AcListFm.sEdit5.Text);

  if (TadlF = 1) or (TadlF = 2) or (TadlF = 3) or (TadlF = 4) or (TadlF = 5) or
    (TadlF = 6) or (TadlF = 7) or (TadlF = 8) or (TadlF = 9) then
    AccListTadlFlag.Value := TadlF
  else
    AccListTadlFlag.Clear;

  AccListListDate.Value := Now;
  AccListAutoDate.Value := Now;
  AccListUser.Value := PermUserNum.Value;
  AccListStamp.Value := infoStamp.Value;
  AccListDama.Value := 0;
  AccListarchiveF.Value := 1;
  AccListPaidF.Value := 1;
  AccListPetrol.Value := 0;
  AccListLocWitOut.Value := 0;
  AccListDirty.Value := 0;
  AccListloukof.Value := 1;
  AccListDelF.Value := 0;
  AccListboat.Value := 0;
  AccListcutF.Value := 0;
  AccListChemicalF.Value := 0;
  if (SharedF = 1) or (SharedF = 2) or (SharedF = 4) then
    AccListSharedF.Value := SharedF
  else
    AccListSharedF.Value := 0;

  { --------------—ﬁ„ «·›« Ê—… «·»œÌ·…----------------- }
  if AlterF = 1 then
    AccListAlterBill.Value := strtoint(AlterBill);
  // AccListreal_date.Value:=date;
   AccListshared_usefork.Value:=0;
end;

procedure TDmdFm.AccListAfterPost(DataSet: TDataSet);
var
  I: Smallint;
  Sender: TObject;
begin
  I := 1;

  if AlterF = 1 then
  begin
    // DmdFm.SAccList.Locate('ListNum', DmdFm.AccListListNum.Value, []);
    // DmdFm.sAccList.Edit;
    // DmdFm.SAccListAlterBill.Value := DmdFm.AccListListNum.Value;
    // DmdFm.SAccListDelF.Value := 1;
    // DmdFm.SAccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
    // DmdFm.sAccList.Post;
  end;

  if lockOrDel = 3 then
  begin
    DmdFm.UpdAccDetQ.Close;
    DmdFm.UpdAccDetQ.ParamByName('Listtype').Value :=
      DmdFm.AccListListType.Value;
    DmdFm.UpdAccDetQ.ParamByName('ListNum').Value := DmdFm.AccListListNum.Value;
    DmdFm.UpdAccDetQ.Execute;
    DmdFm.accdet.Refresh;
  end;

  { if not AccList.IsEmpty then
    begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    //  if AccListT then

    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;
    end;
  }

  VNStamp.Close;
  VNStamp.ParamByName('VNum').Value := AccListListNum.Value;
  VNStamp.ParamByName('VT').Value := AccListNet.Value;
  VNStamp.ParamByName('VS').Value := AccListStampNet.Value;
  VNStamp.Execute;

end;

procedure TDmdFm.AccListAfterScroll(DataSet: TDataSet);
begin
  accdet.Close;
  accdet.ParamByName('VNum').Value := AccListListNum.Value;
  accdet.ParamByName('Vtype').Value := AccListListType.Value;
  accdet.Execute;

  // Attach.Close;
  // Attach.ParamByName('VNum').Value := AccListListNum.Value;
  // Attach.ParamByName('Vtype').Value := AccListListType.Value;

  // Attach.Execute;

  // AttachD.Close;
  // AttachD.ParamByName('VNum').Value := AttachAttachNum.Value;
  // AttachD.ParamByName('VNum1').Value := AttachListNum.Value;
  // AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
  // AttachD.Execute;

  VBollAccList.Close;
  VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
  VBollAccList.Execute;

  VUnitAccList.Close;
  VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
  VUnitAccList.Execute;

end;

procedure TDmdFm.AccListBeforeDelete(DataSet: TDataSet);
var typenm:string;
begin
  if (AccListloukof.Value = 0) and (PermLockList.Value = false) then
    raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');
  if not accdet.IsEmpty then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «·Õ–›');
  if (not Attach.IsEmpty) and ((AccListListType.Value = 1) or
    (AccListListType.Value = 2)) then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «·Õ–› ...  ÊÃœ „·«Õﬁ');
  if (AccListListType.Value = 3) and (not Move.IsEmpty) then
    raise Exception.Create(' ÊÃœ Õ—ﬂ«  ... «Õ–› «·Õ—ﬂ«  √Ê·«');

  if AccListListType.Value <> 3 then
  begin
    if Application.messagebox
      ('          ”Ê› Ì „ Õ–› «·›« Ê—… Ê«·—ﬁ„ «·„ﬁ«»· ›Ì  ›—Ì€ «·»Ì«‰', '',
      1 + mb_defbutton2) = 2 then
      raise EAbort.Create('');

    VloedB.Close;
    VloedB.ParamByName('VAuto').Value := dmdfm.VloadHrakLNum.Value;
    VloedB.ParamByName('VBillNum').Value := dmdfm.VloadHrakBillNum.AsString;
    VloedB.Open;

    // Sload.FilterSQL := 'BillNum = ' + DmdFm.AccListListNum.AsString;
    if (not VloedB.IsEmpty)and(dmdfm.AccListDelF.Value<>3) then
    begin
      VloedB.First;
      while not VloedB.Eof do
      begin
        VloedB.Edit;
        dmdfm.VloedBBillNum.value:=0;
        VloedB.Post;
        VloedB.Next;
      end;
      if VloedB.State = dsedit then
        VloedB.Post;

    end;
    VloadHrak.Close;
    VloadHrak.ParamByName('VNumT').Value := DmdFm.VDateHrakNum.Value;
    VloadHrak.Execute;

  end
  else if AccListListType.Value = 3 then
  begin
    if Application.messagebox('”Ê› Ì „ Õ–› «·›« Ê—… ... Â· √‰  „ √ﬂœø', '',
      1 + mb_defbutton2) = 2 then
      raise EAbort.Create('');
  end;

  { ›Ì Õ«·… ≈·€«¡ «·›« Ê—… «·»œÌ·… Ì „ „”Õ »Ì«‰«  «·›« Ê—… «·√’·Ì… }

  VAccList1.Close;
  VAccList1.ParamByName('VNum').Value := dmdfm.AccListAlterBill.Value;
  VAccList1.ParamByName('Vtype').Value := dmdfm.AccListListType.Value;
  VAccList1.Execute;

  if not VAccList1.IsEmpty then

  begin

    // SAccList.Locate('ListNum;ListType',
    // vararrayof([AccListAlterBill.Value, AccListListType.Value]), []);
    VAccList1.Edit;
    VAccList1DelF.Value := 0;
    VAccList1DelDate.Clear;
    VAccList1DelWhy.Clear;
    VAccList1AlterBill.Clear;
    VAccList1.Post;

  end;

  { -------------------------- ⁄œÌ· —’Ìœ «·⁄„Ì· ··„œÌ‰Ê‰------------------------------------------------- }
  if DmdFm.AccListListType.Value = 8 then
  begin
    DmdFm.Agents.Edit;
    DmdFm.AgentsCurrentBal.Value := DmdFm.AgentsCurrentBal.Value +
      DmdFm.AccListNet.Value;
    DmdFm.Agents.Post;
  end;

  VBollAccList.First;
  while not VBollAccList.Eof do
  begin
    VBollAccList.delete;
  end;

  VUnitAccList.First;
  while not VUnitAccList.Eof do
  begin
    VUnitAccList.delete;
  end;
  //  »⁄ Õ—ﬂ… Õ–› «·›« Ê—…
  if DmdFm.AccListListType.Value=1 then
      typenm:=' ›—Ì€ ‰ﬁœÌ'
  else
   if DmdFm.AccListListType.Value=2 then
      typenm:=' ›—Ì€ Ã«—Ì'
   else
    if DmdFm.AccListListType.Value=9 then
      typenm:=' ›—Ì€ „œÌ‰Ê‰'
   else
    if (DmdFm.AccListListType.Value=4) and (DmdFm.AccListSubType2.Value=2)  then
      typenm:='‘Õ‰ ‰ﬁœÌ ›«—€'
     else
    if (DmdFm.AccListListType.Value=5) and (DmdFm.AccListSubType2.Value=2)  then
      typenm:='‘Õ‰ Ã«—Ì ›«—€'
    else
    if (DmdFm.AccListListType.Value=6) and (DmdFm.AccListSubType2.Value=2)  then
      typenm:='‘Õ‰ „œÌ‰Ê‰ ›«—€'
    else
    if (DmdFm.AccListListType.Value=4) and (DmdFm.AccListSubType2.Value=3)  then
      typenm:='‘Õ‰ ‰ﬁœÌ „„ ·∆'
     else
    if (DmdFm.AccListListType.Value=5) and (DmdFm.AccListSubType2.Value=3)  then
      typenm:='‘Õ‰ Ã«—Ì „„ ·∆'
     else
    if (DmdFm.AccListListType.Value=8) and (DmdFm.AccListSubType2.Value=3)  then
      typenm:='‘Õ‰ „œÌ‰Ê‰ „„ ·∆'
     else
    if (DmdFm.AccListListType.Value=4) and (DmdFm.AccListSubType2.Value=4)  then
      typenm:='Œœ„«  ‰ﬁœÌ'
     else
    if (DmdFm.AccListListType.Value=4) and (DmdFm.AccListSubType2.Value=5)  then
      typenm:='Œœ„«  Ã«—Ì'
     else
    if (DmdFm.AccListListType.Value=4) and (DmdFm.AccListSubType2.Value=8)  then
      typenm:='Œœ„«  „œÌ‰Ê‰';
    {   DmdFm.generalq.close;
        DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AccListListNum.AsString+',0,'+QuotedStr(' Õ–› ›« Ê—… ')+QuotedStr(typenm)+')';
        DmdFm.generalq.ExecSQL;}
end;

procedure TDmdFm.AccListBeforeEdit(DataSet: TDataSet);
begin
  if (DmdFm.AccListloukof.Value = 0) and (lockOrDel <> 1) and (lockOrDel <> 2)
    and (PermLockList.Value = false)and(edit_flag<>1) then
    raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');

  // if (dmdfm.AccListDelF.Value=1) and (CreUnlock=0) then
  // raise Exception.Create('ﬁ«∆„… «·Õ”«» „·€Ì…');

  // if (NewEfraj=2)and(editlist=0) then
  // raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... Ì„ﬂ‰ﬂ ≈⁄«œ… «·«Õ ”«» ›ﬁÿ');
  { -------------------------- ⁄œÌ· —’Ìœ «·⁄„Ì· ··„œÌ‰Ê‰------------------------------------------------- }
  if DmdFm.AccListListType.Value = 8 then
  begin
  //ShowMessage(DmdFm.AgentsAgName.Value);
    DmdFm.Agents.Edit;
    DmdFm.AgentsCurrentBal.Value := DmdFm.AgentsCurrentBal.Value +
      DmdFm.AccListNet.Value;
    DmdFm.Agents.Post;
  end;

end;

procedure TDmdFm.AccListBeforeInsert(DataSet: TDataSet);
begin
  if acctype = 3 then
  begin
    if AccListEndEmpDate.Value > AccListListDate.Value then
      raise Exception.Create(' «—ÌŒ «·ÕÃ“ √ﬂ»— „‰  «—ÌŒ «·ÌÊ„');
  end;

  accdet.Close;
  VUnitAccList.Close;
  VBollAccList.Close;

end;

procedure TDmdFm.AccListBeforePost(DataSet: TDataSet);
var
  y, d, M: Word;
  weightNum: Smallint;
begin

  { «·—”Ê„ }
  if (acctype = 3) and ((SubType = 1) or (SubType = 2) or (SubType = 3)) and
    (TadlF = 0) and (EditFlag = 0) then
  begin
    if AccListShipNum.isnull then
      raise Exception.Create('«Œ — «·”›Ì‰… √Ê·«');
    if AccListUnitRsom.isnull then
      raise Exception.Create('«Œ — ‰Ê⁄ «·‘Õ‰… √Ê·«');
    if AccListShipType.isnull then
      raise Exception.Create('«Œ — ‰Ê⁄ «·”›Ì‰… √Ê·«');
    if AccListArriveDate.isnull then
      raise Exception.Create('√œŒ·  «—ÌŒ «·Ê’Ê· √Ê·«');
    if AccListcouponIn.isnull then
      raise Exception.Create('√œŒ· —ﬁ„ ﬁ”Ì„… «·œŒÊ·');
    if AccListFTime1.isnull then
      raise Exception.Create('√œŒ· »œ«Ì… ’⁄Êœ «·„—‘œ ··Ê’Ê· √Ê·«');
    if AccListEndTime1.isnull then
      raise Exception.Create('√œŒ· ‰Â«Ì… ’⁄Êœ «·„—‘œ ··Ê’Ê· √Ê·«');
    if (AccListEndEmpDate.isnull) and (SharedF <> 1) then
      raise Exception.Create('√Œ·  «—ÌŒ «·”›—');
    if (AccListFTime2.isnull) and (SharedF <> 1) then
      raise Exception.Create('√œŒ· »œ«Ì… ’⁄Êœ «·„—‘œ ··”›— √Ê·«');
    if (AccListEndTime2.isnull) and (SharedF <> 1) then
      raise Exception.Create('√œŒ· ‰Â«Ì… ’⁄Êœ «·„—‘œ ··”›— √Ê·«');
    if AccListAginNm.isnull then
      raise Exception.Create('«Œ — «·ÊﬂÌ· √Ê·«');
    if AccListWeSpace.isnull then
      raise Exception.Create('√œŒ· «·Õ„Ê·… «·’«›Ì… »«·√ÿ‰«‰');
    if AccListTelegramNum.isnull then
      raise Exception.Create('√œŒ· —ﬁ„ «·»—ﬁÌ…');
  end;
  {  ⁄ÿÌ· ›—ﬁ «‰ «ÃÌ… ÊÕÃ“ —’Ì› }
  if (acctype = 3) and (TadlF = 3) then
  begin
    if AccListArriveDate.isnull then
      raise Exception.Create('Õœœ  «—ÌŒ «·ÕÃ“ √Ê·«');
    if AccListHjzFlag.isnull then
      raise Exception.Create('«Œ —  ⁄ÿÌ· «·›—ﬁ √Ê·«');
    if AccListNum1.isnull then
      raise Exception.Create('√œŒ· ”«⁄«   ⁄ÿÌ· «·›—ﬁ √Ê·«');
    if AccListShipNum.isnull then
      raise Exception.Create('√Œ — «·»«Œ—… √Ê·«');
    if AccListAginNm.isnull then
      raise Exception.Create('«Œ — «·ÊﬂÌ· √Ê·«');

  end;

  { ----------------------- }
  if DelDet = 0 then
  begin
    if ((acctype <> 6) and (acctype <> 7)) then
    begin
      if (AccListListType.Value <> 3) then
      begin
        if AccListAdmisMet.isnull then
          raise Exception.Create('Õœœ ÿ—Ìﬁ… «· ”·Ì„ √Ê·«');

        if (AccListAginNm.isnull)and (NewEfraj<>1)and(NewEfraj<>2) then
          raise Exception.Create('Õœœ «·ÊﬂÌ· «Ê·«');

        if AccListShipNum.isnull then
          raise Exception.Create('«Œ — «·”›Ì‰… √Ê·«');
        if AccListListDate.isnull then
          raise Exception.Create('√œŒ·  «—ÌŒ «·„⁄«„·… √Ê·«');
        if AccListWeSpace.isnull then
          raise Exception.Create('√œŒ· «·Ê“‰ √Ê «·ﬁÌ«” √Ê·«');
      end;

      if (AccListEndEmpDate.isnull) and (crefine <> 1) and
        (AccListListType.Value <> 4) and (AccListListType.Value <> 5) and
        (SharedF <> 4) and (SharedF <> 2) and (TadlF <> 3) and (lockOrDel = 0)
      then
        raise Exception.Create('√œŒ·  «—ÌŒ «‰ Â«¡ «· ›—Ì€');
      if (AccListArriveDate.isnull) and (crefine <> 1) and
        (AccListListType.Value <> 4) and (AccListListType.Value <> 5) and
        (SharedF <> 4) and (SharedF <> 1) and (TadlF <> 3) and (lockOrDel = 0)
      then
        raise Exception.Create('√œŒ·  «—ÌŒ «·Ê’Ê·');
    end;

    if (AccListDelF.Value = 1) and (AccListDelDate.isnull) then
      raise Exception.Create('ÌÃ» ≈œŒ«·  «—ÌŒ ≈·€«¡ «·›« Ê—… √Ê·«');

    { -------------›« Ê—… »œÌ·…---------------- }
    if AlterF = 1 then
    begin
      AccListDelF.Value := 3;
      AccListAlterBill.Value := strtoint(AlterBill);
    end;
    { ------„‘ —ﬂ… œŒÊ· √Ê Œ—ÊÃ ›Ì «·—”Ê„------- }
    if (AccListListType.Value = 3) and (AccListFTime1.isnull) and (SharedF <> 4)
    then
      AccListSharedF.Value := 2;

    if (AccListListType.Value = 3) and (AccListFTime2.isnull) and (SharedF <> 4)
    then
      AccListSharedF.Value := 1;

    if AccListDelF.Value = 0 then
      AccListDelDate.Clear;
    if Attach.IsEmpty then
    begin
      AccListElecDate.Value := AccListListDate.Value;
      AccListRemDate.Value := AccListListDate.Value;
      AccListMezDate.Value := AccListListDate.Value;
    end;
    DecodeDate(AccListListDate.Value, d, M, y);
    AccListMonth.Value := M;
    if (AccListElectric.Value = 1) and (AccList.State = dsInsert) then
      AccListChechDate.Value := AccListListDate.Value;
    if (AccListElectric.Value = 0) and (AccList.State = dsInsert) then
      AccListChechDate.Value := AccListArriveDate.Value;

    if (acctype = 3) and (AccList.State = dsInsert) and
      (AccListArriveDate.Value = AccListEndEmpDate.Value) and
      ((AccListF11.Value >= 1440) or (AccListF22.Value >= 1440)) and
      (SharedF <> 4) then
      ShowMessage(' √ﬂœ „‰  «—ÌŒ «·Ê’Ê· Ê«·”›—');

    { -----------√Ì«„ «·⁄ÿ·---------- }
    Holiday.Active := TRUE;
    begin
      Whatholiday := 0;
      EdafeF := 0;

      DecodeDate(AccListArriveDate.Value, year, month, day);
      Holiday.First;
      while not Holiday.Eof do
      begin
        DecodeDate(HolidayHolyDate.Value, year1, month1, day1);
        if (month = month1) and (day = day1) and (year = year1) then
        begin
          Whatholiday := 1;
          EdafeF := 1;
        end;
        Holiday.Next;
      end;

      DecodeDate(AccListEndEmpDate.Value, year, month, day);
      Holiday.First;
      while not Holiday.Eof do
      begin
        DecodeDate(HolidayHolyDate.Value, year1, month1, day1);
        if (month = month1) and (day = day1) and (year = year1) then
        begin
          if Whatholiday = 1 then
            Whatholiday := 2
          else
            Whatholiday := 1;
          if EdafeF = 1 then
            EdafeF := 2
          else
            EdafeF := 3;
        end;
        Holiday.Next;
      end;
      DmdFm.AccListHoliDay.Value := Whatholiday;
    end;

    AccListEdafe1.Value := 0;
    AccListEdafe2.Value := 0;
    if AccListListType.Value = 3 then
    begin
      WorkTime.First;
      while not WorkTime.Eof do
      begin
        if (((DmdFm.AccListF1.Value >= DmdFm.WorkTimeTime1.Value) and
          (AccListF1.Value <= WorkTimeTime2.Value) and
          (WorkTimeTimeType.Value = 1)) or
          ((AccListF11.Value >= WorkTimeTime1.Value) and
          (AccListF11.Value <= WorkTimeTime2.Value) and
          (WorkTimeTimeType.Value = 1))) and
          (DayOfTheWeek(AccListArriveDate.Value) <> 5) and
          (not AccListFTime1.isnull) and (EdafeF <> 1) then
          AccListEdafe1.Value := 1;
        if (((AccListF2.Value >= WorkTimeTime1.Value) and
          (AccListF2.Value <= WorkTimeTime2.Value) and
          (WorkTimeTimeType.Value = 1)) or
          ((AccListF22.Value >= WorkTimeTime1.Value) and
          (AccListF22.Value <= WorkTimeTime2.Value) and
          (WorkTimeTimeType.Value = 1))) and
          (DayOfTheWeek(AccListEndEmpDate.Value) <> 5) and
          (not AccListFTime2.isnull) and (EdafeF <> 3) then
          AccListEdafe2.Value := 1;
        WorkTime.Next;
      end;
      { ------------------------⁄œœ ”«⁄«  «·⁄„· »«·‰”»… ··Ê“‰------------------ }
      if SharedF <> 4 then
      begin
        DmdFm.weights.Filtered := false;
        DmdFm.weights.Filter := 'carsF = ' + DmdFm.shipmentShipType.AsString;
        DmdFm.weights.Filtered := TRUE;
        weights.First;
        while not weights.Eof do
        begin
          if (AccListWeSpace.Value >= weightsFromW.Value) and
            (AccListWeSpace.Value <= weightsToW.Value) then
            weightNum := weightsHoursNum.Value;
          weights.Next;
        end;
        AccListHoursNum.Value := weightNum;
      end
      else
        AccListHoursNum.Value := 0;
      { ----------------------------------------------------------------------- }

    end;
    if (acctype = 1) or (acctype = 4) or (acctype = 6) then
      AccListF1Num.Value := 1
    else if (acctype = 2) or (acctype = 5) or (acctype = 7) then
      AccListF1Num.Value := 2

    else if (acctype = 8) or (acctype = 9) then
      AccListF1Num.Value := 3;

    AccListbarcade.Value := inttostr(10000000000 + AccListListNum.Value);

    { —ﬁ„ ›Ê« Ì— «·—”Ê„ }

    if (acctype = 3) and (AccList.State = dsInsert) then
    begin
      MaxListNumRQ.Close;
      MaxListNumRQ.ExecSQL;
      if MaxListNumRQ.RecordCount = 0 then
        LastNumR := 1
      else
        LastNumR := MaxListNumRQListNumR.Value + 1;

      AccListListNumR.Value := LastNumR;
    end;
  end;
  { -------------------------≈Ìﬁ«›  €ÌÌ— ‰Ê⁄ «·›« Ê—… ·ÌÊ„Ì… „ﬁ›·…------------- }
  if (CreUnlock = 1) and (lockOrDel <> 2) and (lockOrDel <> 1) then
  begin
    DailyQ.Close;
    DailyQ.ParamByName('FromDate').Value := DmdFm.AccListDateTop.Value;
    DailyQ.ParamByName('ToDate').Value := DmdFm.AccListDateTop.Value;
    if DmdFm.AccListListType.Value = 1 then
    begin
      DailyQ.ParamByName('Type1').Value := 1;
      DailyQ.ParamByName('Type2').Value := 4;
      DailyQ.ParamByName('Type3').Value := 6;
    end
    else if DmdFm.AccListListType.Value = 2 then
    begin
      DailyQ.ParamByName('Type1').Value := 2;
      DailyQ.ParamByName('Type2').Value := 5;
      DailyQ.ParamByName('Type3').Value := 7;
    end
    else if DmdFm.AccListListType.Value = 4 then
    begin
      DailyQ.ParamByName('Type1').Value := 1;
      DailyQ.ParamByName('Type2').Value := 4;
      DailyQ.ParamByName('Type3').Value := 6;
    end
    else if DmdFm.AccListListType.Value = 5 then
    begin
      DailyQ.ParamByName('Type1').Value := 2;
      DailyQ.ParamByName('Type2').Value := 5;
      DailyQ.ParamByName('Type3').Value := 7;
    end
    else if DmdFm.AccListListType.Value = 8 then
    begin
      DailyQ.ParamByName('Type1').Value := 8;
      DailyQ.ParamByName('Type2').Value := 8;
      DailyQ.ParamByName('Type3').Value := 8;
    end
    else if DmdFm.AccListListType.Value = 9 then
    begin
      DailyQ.ParamByName('Type1').Value := 9;
      DailyQ.ParamByName('Type2').Value := 9;
      DailyQ.ParamByName('Type3').Value := 9;
    end;
    DailyQ.Open;

    if DailyQ.RecordCount > 0 then
    begin
      raise Exception.Create('·«Ì„ﬂ‰ﬂ «· —ÕÌ· ... «·ÌÊ„Ì… „ﬁ›·…');
    end;

  end;

  { -------------------------- ⁄œÌ· —’Ìœ «·⁄„Ì· ··„œÌ‰Ê‰------------------------------------------------- }
  if DmdFm.AccListListType.Value = 8 then
  begin
    DmdFm.Agents.Edit;
    DmdFm.AgentsCurrentBal.Value := DmdFm.AgentsCurrentBal.Value -
      DmdFm.AccListNet.Value;
    DmdFm.Agents.Post;
  end;
  AccListTotal.Value := Tkrib(AccListTotal.Value);
end;

procedure TDmdFm.AccListCalcFields(DataSet: TDataSet);
var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr, hours, DaysNum, hours2: Real;
  w, di, DaysH, HoursH: Smallint;
  t: TTime;
  h, M, se, ss, h2, m2, s2, ss2, day, month, year, day1, month1, year1: Word;
begin


    {Õ”«» ⁄œœ «·”«⁄«  ›Ì «·€—«„«  Ê«· ⁄ÿÌ· }
  {try
    if (crefine = 1) and (SharedF <> 4) then
    begin
      t := AccListFTime1.Value;
      DecodeTime(t, h, M, se, ss);
      if (h = 0) then
        h := 24;
      t := AccListEndTime1.Value;
      DecodeTime(t, h2, m2, s2, ss2);
      if (h2 = 0) then
        h2 := 24;

      DaysH := DaysBetween(AccListArriveDate.Value, AccListEndEmpDate.Value);
      if DaysH = 0 then
      begin
        if h <> 24 then
          hours := ((((h2 * 60 + m2) + (DaysH * 24 * 60)) - (h * 60 + M)) / 60)
        else
          hours := ((((h * 60 + M) + (DaysH * 24 * 60)) - (h2 * 60 + m2)) / 60);

        DmdFm.AccListHoursNum1.AsFloat := int(hours);
        if m2 < M then
          hours := (m2) + (60 - M)
        else
          hours := m2 - M;

        DmdFm.AccListMonthsNum.AsFloat := hours;

        DmdFm.AccListHoursNum2.AsFloat := DmdFm.AccListHoursNum1.AsFloat -
          DmdFm.AccListNum2.AsFloat;
        DmdFm.AccListMontsNum2.AsFloat := hours;

      end
      else
      // if daysh=1 then
      begin
        if ((M = 0) and (m2 <> 0)) or ((M <> 0) and (m2 <> 0)) or
          ((M <> 0) and (m2 = 0)) then
          hours := ((h2 * 60 + m2) + ((DaysH * 24 * 60) - (h * 60 + M))) / 60
        else if (M = 0) and (m2 = 0) then
          hours := ((((h2 * 60) + m2) + ((DaysH * 24 * 60) - (h * 60)
            + M)) / 60)
        else
          hours := ((((h2 * 60) + m2) + ((DaysH * 24 * 60) - (h * 60) +
            M)) / 60);
        DmdFm.AccListHoursNum1.AsFloat := int(hours);
        hours := (hours - int(hours)) * 60;
        DmdFm.AccListMonthsNum.AsFloat := hours;

        { ’«›Ì «·”«⁄«  }
      {  hours := ((((h2 * 60 + m2) + ((DaysH * 24 * 60) - (h * 60 + M)))) -
          (AccListNum2.Value * 60)) / 60;
        DmdFm.AccListHoursNum2.AsFloat := int(hours);
        hours := (hours - int(hours)) * 60;
        DmdFm.AccListMontsNum2.AsFloat := hours;
      end;

      DaysNum := ((DmdFm.AccListHoursNum2.Value * 60) +
        DmdFm.AccListMontsNum2.Value) / 1440; { 1440=24*60 }
     { if DaysNum = int(DaysNum) then
        AccListDaysNum.AsFloat := DaysNum
      else
        AccListDaysNum.AsFloat := int(DaysNum) + 1;

    end;
  except
  end;   }
  { --------------------------------------- }

  if AccListShipType.Value = 1 then
    AccListShipTypeNm.Value := '⁄«œÌ…'
  else if AccListShipType.Value = 2 then
    AccListShipTypeNm.Value := '—Ê—Ê'
  else if AccListShipType.Value = 3 then
    AccListShipTypeNm.Value := '„Œ ·ÿ…';

  if AccListShipMet.Value = 0 then
    AccListShipMetNm.Value := '·«Ì‰—'
  else if AccListShipMet.Value = 1 then
    AccListShipMetNm.Value := '›ÌÊ”';

  if AccListPaidF.Value = 1 then
    AccListPaidNm.Value := '„”œœ…'
  else
    AccListPaidNm.Value := '€Ì— „”œœ…';

  if AccListloukof.Value = 0 then
    AccListLockNm.Value := '„ﬁ›·…'
  else if AccListloukof.Value = 1 then
    AccListLockNm.Value := '€Ì— „ﬁ›·…';

  if AccListDelF.Value = 1 then
    AccListDelNm.Value := '„·€Ì…'
  else if AccListDelF.Value = 2 then
    AccListDelNm.Value := '»œÌ·… ·‹'
  else if AccListDelF.Value = 3 then
    AccListDelNm.Value := '»œÌ·… ·‹';

  { -------------√Ì«„ ﬂÂ—»«¡--------------- }
  try
    dmdfm.AccListElecDays.Value := DaysBetween(dmdfm.AccListArriveDate.Value,
      dmdfm.AccListListDate.Value) + 1;
  except
  end;
  { -------------√Ì«„ »ﬁ«¡--------------- }
  try
    if (AccListEndEmpDate.Value + 6) < AccListListDate.Value then
      AccListRemainDays.Value := DaysBetween(AccListListDate.Value,
        AccListEndEmpDate.Value + 6)
    else
      AccListRemainDays.Value := 0;
  except
  end;
  { ------------------------------------------- }
 { t := AccListFTime1.Value;
  DecodeTime(t, h, M, se, ss);
  if (h = 0) then
    h := h + 24;
  t := AccListEndTime1.Value;
  DecodeTime(t, h2, m2, s2, ss2);
  if (h2 = 0) then
    h2 := 24;

  if h > h2 then
    h2 := h2 + 24;

  dd := ((h2 * 60 + m2) - (h * 60 + M)) / 60;
  if dd - int(dd) <> 0 then
    dd := int(dd) + 1;
  if int(dd) = 0 then
    dd := 1;
  AccListTime1.AsFloat := dd;

  t := AccListFTime2.Value;
  DecodeTime(t, h, M, se, ss);
  if (h = 0) then
    h := 24;

  t := AccListEndTime2.Value;
  DecodeTime(t, h2, m2, s2, ss2);
  if (h2 = 0) then
    h2 := 24;

  if h > h2 then
    h2 := h2 + 24;

  rr := ((h2 * 60 + m2) - (h * 60 + M)) / 60;
  if rr - int(rr) <> 0 then
    rr := int(rr) + 1;
  if int(rr) = 0 then
    rr := 1;
  AccListTime2.AsFloat := rr;
  { ------------------------------- }
 { DecodeTime(AccListFTime1.Value, h, M, se, ss);
  DecodeTime(AccListEndTime1.Value, h2, m2, s2, ss2);
  if (h2 >= 0) and (h2 < 7) then
  begin
    h2 := (h2 + 24) * 60 + m2;
    AccListF11.Value := h2;
  end
  else
    AccListF11.Value := h2 * 60 + m2;
  if (h >= 0) and (h < 7) then
  begin
    h := (h + 24) * 60 + M;
    AccListF1.Value := h;
  end
  else
    AccListF1.Value := h * 60 + M;

  DecodeTime(AccListFTime2.Value, h, M, se, ss);
  DecodeTime(AccListEndTime2.Value, h2, m2, s2, ss2);
  if (h2 >= 0) and (h2 < 7) then
  begin
    h2 := (h2 + 24) * 60 + m2;
    AccListF22.Value := h2;
  end
  else
    AccListF22.Value := h2 * 60 + m2;

  if (h >= 0) and (h < 7) then
  begin
    h := (h + 24) * 60 + M;
    AccListF2.Value := h;
  end
  else
    AccListF2.Value := h * 60 + M;
  { -----------⁄œœ «·Õ«·« ---------- }
  if AccListUnit.Value = 1 then
    if AccListWeSpace.isnull then
    begin
      AccListStNum.Value := 35;
    end
    else
      AccListStNum.Value := 35 / AccListWeSpace.AsVariant;
  if AccListUnit.Value = 2 then
    if AccListWeSpace.isnull then
    begin
      AccListStNum.Value := 70;
    end
    else
      AccListStNum.Value := 70 / AccListWeSpace.AsVariant;

  { -----------œŒÊ· √Ê Œ—ÊÃ ›Ì ÌÊ„ Ã„⁄…---------- }

  if (DayOfTheWeek(AccListArriveDate.Value) = 5) and
    (DayOfTheWeek(AccListEndEmpDate.Value) = 5) then
    AccListFridayNum.Value := 2;
  if (DayOfTheWeek(AccListArriveDate.Value) <> 5) and
    (DayOfTheWeek(AccListEndEmpDate.Value) <> 5) then
    AccListFridayNum.Value := 0;
  if (DayOfTheWeek(AccListArriveDate.Value) = 5) and
    (DayOfTheWeek(AccListEndEmpDate.Value) <> 5) then
    AccListFridayNum.Value := 1;
  if (DayOfTheWeek(AccListArriveDate.Value) <> 5) and
    (DayOfTheWeek(AccListEndEmpDate.Value) = 5) then
    AccListFridayNum.Value := 1;

  { -----------------⁄œœ «·√Ì«„ - «·—”Ê„----------------- }
 { if crefine = 0 then
    AccListDaysNum.Value := DaysBetween(AccListEndEmpDate.Value,
      AccListArriveDate.Value) + 1;

  { -------------Õ”«» «·œ„€…----------------- }
  if AccListDama.Value = 0 then
  begin
    f := int(AccListTotal.Value * 0.005);
    g := (AccListTotal.Value * 0.005) - f;
    if (g = 0.500) or (g = 0.000) then
      AccListStampNet.Value := (AccListTotal.Value * 0.005)
    else if g < 0.500 then
      AccListStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      AccListStampNet.Value := (f + 1);
    AccListNet.Value :=
      (AccListTotal.Value - (AccListTotal.Value * AccListDisCount.Value / 100))
      + AccListStampNet.Value;
  end
  else
  begin
    AccListNet.Value :=
      (AccListTotal.Value - (AccListTotal.Value * AccListDisCount.Value / 100));
  end;

  { ----------------⁄œœ «·√”«»Ì⁄ - «·„‰«Ê·…---------------- }
  w := (DaysBetween(AccListListDate.Value + 1, AccListEndEmpDate.Value) mod 7);
  di := (DaysBetween(AccListListDate.Value + 1, AccListEndEmpDate.Value) div 7);
  if w <> 0 then
  begin
    AccListweeks.Value := di + 1;
    AccListAllwedDate.Value := AccListListDate.Value + (7 - w);
  end
  else
  begin
    AccListweeks.Value := di;
    AccListAllwedDate.Value := AccListListDate.Value;
  end;
  { ---------------«· ›ﬁÌÿ------------------ }

  safe := DmdFm.AccListNet.Value;
  R := FLOATTOSTR(int(safe));
  AccListTfked.Value := '›ﬁÿ' + AcListFm.WriteNo(R);
  s := AccListTfked.Value;
  a := FormatFloat('0.000', (safe - (int(safe))));
  if safe - int(safe) <> 0 then
    AccListTfked.Value := s + ' œÌ‰«— Ê ' + a + ' ' + 'œ—Â„ ·«€Ì—' + '.#'
  else
    AccListTfked.Value := s + ' œÌ‰«— ·«€Ì—' + '.#';

  { ----------------------⁄œœ «·√”«»Ì⁄ »⁄œ «·⁄‘—… √Ì«„ «·√Ê·Ï - «·—”Ê„--------------------- }
 { if (DaysBetween(AccListArriveDate.Value, AccListEndEmpDate.Value) + 1) <= 10
  then
    AccListRsomWeeks.Value := 0
  else
  begin
    w := ((DaysBetween(AccListArriveDate.Value + 10, AccListEndEmpDate.Value) +
      1) mod 7);
    di := ((DaysBetween(AccListArriveDate.Value + 10, AccListEndEmpDate.Value) +
      1) div 7);
    if w <> 0 then
      AccListRsomWeeks.Value := di + 1
    else
      AccListRsomWeeks.Value := di;
  end;
  { ------------------------------------------------------------------------------------ }

  case AccListListType.Value of
    1:
      AccListAccTypeNmA.Value := '‰ﬁœÌ';
    4:
      AccListAccTypeNmA.Value := '‰ﬁœÌ';
    6:
      AccListAccTypeNmA.Value := 'Ã«—Ì';
    2:
      AccListAccTypeNmA.Value := 'Ã«—Ì';
    5:
      AccListAccTypeNmA.Value := 'Ã«—Ì';
    7:
      AccListAccTypeNmA.Value := 'Ã«—Ì';
    8:
      AccListAccTypeNmA.Value := '„œÌ‰Ê‰';
    9:
      AccListAccTypeNmA.Value := '„œÌ‰Ê‰';
  end;

  case AccListSubType.Value of
    1:
      AccListListTypeNmR.Value := '‰ﬁœÌ';
    2:
      AccListListTypeNmR.Value := 'Ã«—Ì';
    3:
      AccListListTypeNmR.Value := '„œÌ‰Ê‰';
  end;

  if TadlF = 5 then
    AccListNetDays.Value := (DaysBetween(DmdFm.AccListArriveDate.Value,
      DmdFm.AccListEndEmpDate.Value) + 1)
end;

procedure TDmdFm.AccListDamaValidate(Sender: TField);
var f,g:real;
begin
 if DmdFm.AccListDama.Value = 0 then
      begin
        AccList.Edit;
        f := int(DmdFm.AccListTotal.Value * 0.005);
        g := (DmdFm.AccListTotal.Value * 0.005) - f;
        if (g = 0.500) or (g = 0.000) then
          DmdFm.AccListStampAbs.Value := (DmdFm.AccListTotal.Value * 0.005)
        else if g < 0.500 then
          DmdFm.AccListStampAbs.Value := (f + 0.500)
        else if g > 0.500 then
          DmdFm.AccListStampAbs.Value := (f + 1);
      end
      else
      begin

        DmdFm.AccListStampAbs.Value := 0;

      end;
end;

procedure TDmdFm.AccListEleeshDateValidate(Sender: TField);
begin
  AccListDays.Value := (DaysBetween(AccListListDate.Value,
    AccListEleeshDate.Value) + 1);

end;

procedure TDmdFm.AccListReserveValidate(Sender: TField);
begin
  AccListNum2.Value := ReserveAllowTime.Value;
  if (DmdFm.AccListReserve.Value = 6) then
  begin
    ShowMessage(inttostr(HourOf(DmdFm.AccListFTime1.Value) * 60 +
      MinuteOf(DmdFm.AccListFTime1.Value)));
    if (HourOf(DmdFm.AccListFTime1.Value) * 60 +
      MinuteOf(DmdFm.AccListFTime1.Value) >= 1141) and
      (HourOf(DmdFm.AccListFTime1.Value) <= 00) then
      DmdFm.AccListNum2.Value := HoursBetween(strtotime('12:00:00'),
        DmdFm.AccListFTime1.Value);

  end

end;

procedure TDmdFm.AccListReshDateValidate(Sender: TField);
begin
  AccListDaysM.Value := (DaysBetween(AccListListDate.Value,
    AccListReshDate.Value) + 1);
end;

procedure TDmdFm.AccListShipNumValidate(Sender: TField);
begin
  if (DmdFm.AccListListType.Value = 3) and (TadlF <> 6) then
    AccListWeSpace.Value := ShipsWeight.Value
  else if (AccListListType.Value = 3) and (ShipsWeight.isnull) then
    AccListWeSpace.Clear;

  if (acctype = 4) or (acctype = 5) or (acctype = 6) or (acctype = 7) or
    (acctype = 8) then
  begin
    AccListShipType.Value := ShipsSType.Value;
    AccListShipMet.Value := ShipsShipMet.Value;
  end;
end;

procedure TDmdFm.AgentsAgNameValidate(Sender: TField);
var
  ch: string;
begin
  ch := AgentsAgName.Value;
  str(ch);
  AgentsAgAbsName.Value := ch;
end;

procedure TDmdFm.AgentsBeforeDelete(DataSet: TDataSet);
begin
  // if SAccList.Locate('AginNm', AgentsNum.Value, []) then
  // raise Exception.Create('«·ÊﬂÌ·  „  ⁄ÌÌ‰… ·›« Ê—… „‰ ﬁ»· ... ·«Ì„ﬂ‰ﬂ «·Õ–›ø');
  QAngList.Close;
  QAngList.ParamByName('numA').Value := AgentsvNum.Value;
  QAngList.Open;
  if not QAngList.IsEmpty then

    // if Vloadlist.Locate('Agent', AgentsNum.Value, []) then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «·Õ–› «·ÊﬂÌ·  „  ⁄ÌÌ‰Â ·»Ì«‰ Õ„Ê·…!');

  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

end;

procedure TDmdFm.AgentsBeforePost(DataSet: TDataSet);
begin
//ShowMessage(AgentsvAgName.Value);
  if AgentsVAgName.isnull then
    raise Exception.Create('√œŒ· «”„ «·ÊﬂÌ· √Ê·«');

   if AgentsVAgType.isnull

   then
  raise Exception.Create('«Œ — «·‰Ê⁄ √Ê·«');

end;

procedure TDmdFm.attach2AfterInsert(DataSet: TDataSet);
begin

  attach2Acctype.Value := AttachAccType.Value;
  attach2AttachNum.Value := AttachAttachNum.Value;
  attach2ListNum.Value := AttachListNum.Value;
  attach2ListType.Value := AttachListtype.Value;

  attach2AttashType.Value := attachType;
  attach2AttachDate.Value := Now;
  if acctype = 1 then
    attach2AttachNum2.Value := infoNum1.Value
  else
    attach2AttachNum2.Value := infoNum2.Value;

end;

procedure TDmdFm.attach2BeforeCancel(DataSet: TDataSet);
begin
  if attach2.State = dsInsert then
  begin
    info.Edit;
    if ((attachType = 4) or (attachType = 5) or (attachType = 6) or
      (attachType = 7)) and (acctype = 1) then
      infoNum1.Value := infoNum1.Value - 1
    else
      infoNum2.Value := infoNum2.Value - 1;
    info.Post;
  end;
end;

procedure TDmdFm.attach2BeforeInsert(DataSet: TDataSet);
begin
  info.Edit;
  if ((attachType = 4) or (attachType = 5) or (attachType = 6) or
    (attachType = 7)) and (acctype = 1) then
    infoNum1.Value := infoNum1.Value + 1
  else
    infoNum2.Value := infoNum2.Value + 1;
  info.Post;
end;

procedure TDmdFm.attach2CalcFields(DataSet: TDataSet);
var
  w, di: Integer;
  f, g, c, e, safe: Real;
  R, s, a: string;
begin
  with DmdFm do
  begin
    if attach2AttachDate.Value > AttachAttachDate.Value then
    begin
      w := (DaysBetween(attach2AttachDate.Value + 1,
        AccListAllwedDate.Value) mod 7);
      di := (DaysBetween(attach2AttachDate.Value + 1,
        AccListAllwedDate.Value) div 7);
      if w <> 0 then
        attach2Weeks.Value := di + 1
      else
        attach2Weeks.Value := di;
    end;
    f := int(attach2AttachValue.Value * AccListStamp.Value);
    g := (attach2AttachValue.Value * AccListStamp.Value) - f;
    if g < 0.500 then
      attach2StampNet.Value := (f + 0.500)
    else
      attach2StampNet.Value := (f + 1);
    c := int(attach2AttachValue.Value * AccListStamp.Value);
    e := (attach2AttachValue.Value * AccListStamp.Value) - c;
    if e < 0.500 then
      attach2Net.Value := (attach2AttachValue.Value + (c + 0.500))
    else
      attach2Net.Value := (attach2AttachValue.Value + (c + 1));
    safe := DmdFm.attach2Net.Value;
    R := FLOATTOSTR(int(safe));
    attach2Tfkid.Value := '›ﬁÿ' + AcListFm.WriteNo(R) + '.#';
    s := attach2Tfkid.Value;
    a := FormatFloat('0.000', (safe - (int(safe))));
    if safe - int(safe) <> 0 then
      attach2Tfkid.Value := s + ' œÌ‰«— Ê ' + a + ' ' + 'œ—Â„ ·«€Ì—'
    else
      attach2Tfkid.Value := s + ' œÌ‰«— ·«€Ì—';

  end;

end;

procedure TDmdFm.attach2dBeforePost(DataSet: TDataSet);
begin
  // VDervr7NumAutoS.Value := VloadHrakNum.Value;
  // AdmDet2NumAutoS.Value := VloadlistNum.Value;
end;

procedure TDmdFm.AttachAfterInsert(DataSet: TDataSet);
var
  m10: Real;
begin
 AttachMet.Value := AccListAdmisMet.Value;
Attachstampflag.Value:=DmdFm.AccListDama.Value;

  AttachAccType.Value := AccListListType.Value;

  AttachListNum.Value := AccListListNum.Value;

  AttachAttachDate.Value := Now;
     AttachDate_Top.Value := Now;
  AttachToName.Value := AccListToname.Value;

  if VBollAccList.RecordCount=1 then
   AttachPolesa.Value :=VBollAccListBollsa.Value
  else
  begin
    VBollAccList.First;
    while not VBollAccList.Eof do
    begin
      AttachPolesa.Value := AttachPolesa.Value +','+ VBollAccListBollsa.Value;
      VBollAccList.Next;
    end;
  end;

  AttachOasve.Value := AccListGoodsname.Value;

  AttachKias.Value := AccListWeSpace.Value;

  // AttachQty.Value := AccListGoodsQty.Value + AccListQty2.Value;

  AttachLockF.Value := 1;
  AttachPaidF.Value := 0;

  if P1 = 1 then
  begin
    if AccListElectric.Value = 1 then
      AttachDate22.Value := AccListListDate.Value
    else
      AttachDate22.Value := AccListArriveDate.Value;

    if (AccListweeks.Value <= 1) then
      AttachDate4.Value := AccListEndEmpDate.Value + 6

    else
    begin
      accdet.Locate('AccType', 16, []);
      if accdetAccTotal.Value > 0 then
        AttachDate4.Value := AccListListDate.Value
      else
        AttachDate4.Value := AccListEndEmpDate.Value + 6;

    end;
  end;
  if P1 = 0 then
  begin
    if Electric_f = 1 then
      AttachDate22.Value := DDate
    else
      AttachDate22.Value := Date2;
   // AttachDate22.Value := DDate ;
     if AttachRemin.Value =1 then
     AttachDate4.Value := DDate
     else
     AttachDate4.Value := Date4;
  end;

  AttachListtype.Value := attachType;

  AttachDate3.Value := attdate;
  AttachUserNum.Value := PermUserNum.Value;

  m10 := 0;

  VUnitAccList.First;
  while not VUnitAccList.Eof do
  begin

    m10 := VUnitAccListAddCount.Value;

    VUnitAccList.Next;
  end;

  AttachQty.Value := m10;
   // Attach.Refresh;
  // if AccType=1 then
  // AttachAttachNum.Value:=InfoNum1.Value
  // else
  // AttachAttachNum.Value:=InfoNum2.Value;
  // AttachDate2.Value:=attdate;
end;

procedure TDmdFm.AttachAfterPost(DataSet: TDataSet);
begin
edit_flag:=1;
  if (AttachElectric.Value = 1) and (Attach.RecNo <> 1) then
  begin
    AccList.Edit;
    AccListChechDate.Value := AttachAttachDate.Value;
    AccList.Post;
  end;
edit_flag:=0;

if editorinsert=0 then//›Ì Õ«·… «·«÷«›… ›ﬁÿ
begin
  if DmdFm.Attach.RecordCount=1 then
  begin
    DmdFm.Vunitaccdet.Close;
    DmdFm.Vunitaccdet.ParamByName('ListNum').Value:=DmdFm.AccListListNum.Value;
    DmdFm.Vunitaccdet.ParamByName('NumAttach1').Value:=DmdFm.AttachAttachNum.Value;
    DmdFm.Vunitaccdet.open;
    {≈÷«›… «·Ê’›}
    with DmdFm do
    begin
      VUnitAccdet.First;
        while not VUnitAccdet.Eof do
        begin
          VUnitAccdet.Delete;
        end;
       vunitacclist.First;

          while not vunitacclist.Eof do
          begin
            VUnitAccdet.Insert;
            VUnitAccdetNumAlist.Value := VUnitAccListNumAlist.Value;
            VUnitAccdetNumUnit.Value := VUnitAccListNumUnit.Value;
            VunitaccdetNumAttach.Value := AttachAttachNum.Value;
             VunitaccdetAddCount.Value := VUnitAccListAddCount.Value;

              VUnitAccdetQtityNormal.Value := VDervr6Qty.Value;
              // VUnitAccListQtityNormal.Value := QTajmieDataEadiatFyus.AsInteger;
              VUnitAccdetQtitoyRor.Value := VUnitAccListQtitoyRor.Value;
              VUnitAccdetFwozQ.Value := VUnitAccListQtityNormal.AsInteger;
              VUnitAccdetLanerQ.Value := VUnitAccListLanerQ.AsInteger;
              VUnitAccdetRofaQ.Value := VUnitAccListRofaQ.AsInteger;
              VUnitAccdetNRofaQ.Value := VUnitAccListNRofaQ.AsInteger;
            VUnitAccdet.Post;
            vunitacclist.Next;
          end;

    end;
  end
  else
  begin
    DmdFm.accdetunit_beforeQ.Close;
    DmdFm.accdetunit_beforeQ.ParamByName('numattach').Value:=attach_accdet;
    DmdFm.accdetunit_beforeQ.open;
    {≈÷«›… «·Ê’›}
    with DmdFm do
    begin
       accdetunit_beforeQ.First;

          while not accdetunit_beforeQ.Eof do
          begin
            VUnitAccdet.Insert;
            VUnitAccdetNumAlist.Value := dmdfm.accdetunit_beforeQNumAlist.Value;
            VUnitAccdetNumUnit.Value := dmdfm.accdetunit_beforeQNumUnit.Value;
            VunitaccdetNumAttach.Value := dmdfm.AttachAttachNum.Value;
             VunitaccdetAddCount.Value := dmdfm.accdetunit_beforeQAddCount.Value;

              VUnitAccdetQtityNormal.Value := dmdfm.VDervr6Qty.Value;
              // VUnitAccListQtityNormal.Value := QTajmieDataEadiatFyus.AsInteger;
              VUnitAccdetQtitoyRor.Value := dmdfm.accdetunit_beforeQQtitoyRor.Value;
              VUnitAccdetFwozQ.Value := dmdfm.accdetunit_beforeQQtityNormal.AsInteger;
              VUnitAccdetLanerQ.Value :=dmdfm.accdetunit_beforeQLanerQ.AsInteger;
              VUnitAccdetRofaQ.Value := dmdfm.accdetunit_beforeQRofaQ.AsInteger;
              VUnitAccdetNRofaQ.Value := dmdfm.accdetunit_beforeQNRofaQ.AsInteger;
            VUnitAccdet.Post;
            accdetunit_beforeQ.Next;
          end;

    end;
  end

end;
end;

procedure TDmdFm.AttachAfterRefresh(DataSet: TDataSet);
begin
  Date4 := AttachDate4.Value;
end;

procedure TDmdFm.AttachAfterScroll(DataSet: TDataSet);
begin
  AttachD.Close;
  AttachD.ParamByName('VNum').Value := AttachAttachNum.Value;
  AttachD.ParamByName('VNum1').Value := AttachListNum.Value;
  AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
  AttachD.Execute;

  DmdFm.Vunitaccdet.Close;
  DmdFm.Vunitaccdet.ParamByName('ListNum').Value:=DmdFm.AccListListNum.Value;
  DmdFm.Vunitaccdet.ParamByName('NumAttach1').Value:=DmdFm.AttachAttachNum.Value;
  DmdFm.Vunitaccdet.open;
end;

procedure TDmdFm.AttachBeforeCancel(DataSet: TDataSet);
begin
  if Attach.State = dsInsert then
  begin
    info.Edit;
    if ((attachType = 4) or (attachType = 5) or (attachType = 6) or
      (attachType = 7)) and (acctype = 1) then
      infoNum1.Value := infoNum1.Value - 1
    else
      infoNum2.Value := infoNum2.Value - 1;
    info.Post;
  end;
end;

procedure TDmdFm.AttachBeforeDelete(DataSet: TDataSet);
begin
  if (DmdFm.AttachLockF.Value = 0) and (DmdFm.PermLockList.Value = false) then
    raise Exception.Create('«·„·Õﬁ „ﬁ›·');

  if not AttachD.IsEmpty then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «·Õ–›');
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
  if (AttachAttachNum.Value = infoNum1.Value) then
  begin
    info.Edit;
    if ((attachType = 4) or (attachType = 5)) and (acctype = 1) then
      infoNum1.Value := infoNum1.Value - 1
    else
      infoNum2.Value := infoNum2.Value - 1;
    info.Post;
  end;


  if (AttachElectric.Value = 1) and (Attach.RecNo <> 1) then
  begin
    AccList.Edit;
    AccListChechDate.Value := AccListListDate.Value;
    AccList.Post;
  end;
   dmdfm.VUnitAccdet.First;
      while not dmdfm.VUnitAccdet.Eof do
      begin
        dmdfm.VUnitAccdet.Delete;
   end;
        { DmdFm.generalq.close;
        DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AccListListNum.AsString+',0,'+QuotedStr('Õ–› „·Õﬁ')+')';
        DmdFm.generalq.ExecSQL;  }
end;

procedure TDmdFm.AttachBeforeEdit(DataSet: TDataSet);
begin
  if (DmdFm.AttachLockF.Value = 0) and (DmdFm.PermLockList.Value = false) then
    raise Exception.Create('«·„·Õﬁ „ﬁ›·');
 editorinsert:=1;
end;

procedure TDmdFm.AttachBeforeInsert(DataSet: TDataSet);
begin
if p1=0 then
  Electric_f:=DmdFm.AttachElectric.Value;
  info.Edit;
  if ((attachType = 4) or (attachType = 5)) and (acctype = 1) then
    infoNum1.Value := infoNum1.Value + 1
  else
    infoNum2.Value := infoNum2.Value + 1;
  info.Post;

  Attach.last;
  if not Attach.IsEmpty then
  begin
  if dmdfm.AttachWeeksBef.Value<5455 then
    attdate := dmdfm.AttachDate3.Value + (dmdfm.AttachWeeksBef.Value * 7)
  else
    attdate := dmdfm.AttachDate3.Value ;

    yyy := AttachYyy.Value;
    Date2 := AttachDate22.Value;
    if AttachRemin.Value = 0 then
      Date4 := AttachDate4.Value
    else
      Date4 := AttachAttachDate.Value;
    DDate := AttachAttachDate.Value;
    P1 := 0;
  end
  else
  begin

    attdate := AccListAllwedDate.Value;
    if AccListRemain.Value = 0 then
      Date4 := AccListEndEmpDate.Value + 6
    else
      Date4 := AccListListDate.Value;
    yyy := AccListweeks.Value;
    P1 := 1;
  end;
  editorinsert:=0;
  attach_accdet:=DmdFm.AttachAttachNum.Value;
end;

procedure TDmdFm.AttachBeforePost(DataSet: TDataSet);
begin

  // if AttachKias.IsNull then
  // raise Exception.Create('Ì« ⁄“Ì“Ì √œŒ· «·ﬁÌ«” ');
  // if AttachQty.IsNull then
  // raise Exception.Create('Ì« ’œÌﬁÌ ÊÌ‰ «·ﬂ„Ì…');
  { if AttachListtype.Value = 5 then
    begin
    if (AttachWeeks.Value = 5455) then
    begin
    Attach.Edit;
    AttachWeeks.Value := 0;
    Attach.Post;
    end;
    end; }
  checkdate := AccListChechDate.Value;
  AttachWeeksBef.Value := AttachWeeks.Value;
  if DmdFm.Attach.State<>dsedit then
  begin
      if (AttachWeeks.Value <> 5455) then
      begin

        AttachWeeksBef.Value := AttachWeeks.Value;
        AttachYyy.Value := yyy + dmdfm.AttachWeeks.Value;
      end
      else
      begin
        AttachWeeksBef.Value := 0;
        AttachYyy.Value := yyy;
      end;
  end;

  if P1 = 0 then
  begin
   // if (Attach.RecNo > 1)and(Attach.State=dsinsert)then
    //  AttachDate22.Value := DDate;


    // else
    // AttachDate22.Value := Date2;


    // if AttachRemin.Value =1 then

    // else
    // AttachDate4.Value := Date4;
  end;
  // if AttachRemin.Value = 1 then
  /// //////////////////////////////////////  AttachDate4.Value := Date4;
  // else
  // AttachDate4.Value := AttachDate4.Value;
  AttachAginNm.Value := AccListAginNm.Value;

  Attachbarcade.Value := inttostr(10000000000 + AttachDAttachNum.Value);


end;

procedure TDmdFm.AttachCalcFields(DataSet: TDataSet);
var
  week, week2, week3, w2, di2, w, wwww, di: Integer;
  f, g, c, e, safe: Real;
  R, s, a: string;
begin
  with DmdFm do
  begin

    if (AttachAttachDate.Value >= AttachDate3.Value) then
    begin
      if (AttachAttachDate.Value > AccListAllwedDate.Value) and
        (Attach.RecNo = 1) then
      begin
        w := (DaysBetween(AttachAttachDate.Value, AttachDate3.Value) mod 7);
        di := (DaysBetween(AttachAttachDate.Value, AttachDate3.Value) div 7);
        if w <> 0 then
          AttachWeeks.Value := di + 1
        else
          AttachWeeks.Value := di;
       if Attachstampflag.Value = 0 then
        begin
              f := int(AttachAttachValue.Value * 0.005);
              g := (AttachAttachValue.Value * 0.005) - f;
              if (g = 0.500) or (g = 0.000) then
                AttachStampNet.Value := (AttachAttachValue.Value * 0.005)
              else if g < 0.500 then
                AttachStampNet.Value := (f + 0.500)
              else if g > 0.500 then
                AttachStampNet.Value := (f + 1);

              c := int(AttachAttachValue.Value * 0.005);
              e := (AttachAttachValue.Value * 0.005) - c;
              if e < 0.500 then
                AttachNet.Value := (AttachAttachValue.Value + AttachStampNet.Value)
              else
                AttachNet.Value := (AttachAttachValue.Value + AttachStampNet.Value);
        end

          else
          AttachNet.Value := AttachAttachValue.Value ;
        safe := DmdFm.AttachNet.Value;
        R := FLOATTOSTR(int(safe));
        AttachTfkid.Value := '›ﬁÿ' + AcListFm.WriteNo(R) + '.#';
        s := AttachTfkid.Value;
        a := FormatFloat('0.000', (safe - (int(safe))));
        if safe - int(safe) <> 0 then
          AttachTfkid.Value := s + ' œÌ‰«— Ê ' + a + ' ' + 'œ—Â„ ·«€Ì—'
        else
          AttachTfkid.Value := s + ' œÌ‰«— ·«€Ì—';
      end
      { -------------------------------- }
      else
      begin
        if (AttachAttachDate.Value > AttachDate3.Value) and (Attach.RecNo <> 1)
        then
        begin
          w := (DaysBetween(AttachAttachDate.Value, AttachDate3.Value) mod 7);
          di := (DaysBetween(AttachAttachDate.Value, AttachDate3.Value) div 7);
          if w <> 0 then
            week := di + 1
          else
            week := di;
          w2 := (DaysBetween(AttachDate3.Value, AttachDate3.Value) mod 7);
          di2 := (DaysBetween(AttachDate3.Value, AttachDate3.Value) div 7);
          if AttachDate3.Value > AccListAllwedDate.Value then
          begin
            if w2 <> 0 then
              week2 := di2 + 1
            else
              week2 := di2;
          end
          else
            week2 := 0;

          week3 := week - week2;
          // ShowMessage(IntToStr(week));
          // ShowMessage(IntToStr(week2));
          // ShowMessage(IntToStr(week3));
          AttachWeeks.Value := week3;
        end;
        f := int(AttachAttachValue.Value * 0.005);
        g := (AttachAttachValue.Value * 0.005) - f;
        if Attachstampflag.Value = 0 then
         begin
            if (g = 0.500) or (g = 0.000) then
              AttachStampNet.Value := (AttachAttachValue.Value * 0.005)
            else if g < 0.500 then
              AttachStampNet.Value := (f + 0.500)
            else if g > 0.500 then
              AttachStampNet.Value := (f + 1);

            // if g < 0.500 then
            // AttachStampNet.Value:=(f+0.500)
            // else
            // AttachStampNet.Value:=(f+1) ;
            c := int(AttachAttachValue.Value * 0.005);
            e := (AttachAttachValue.Value * 0.005) - c;
            if e < 0.500 then
              AttachNet.Value := (AttachAttachValue.Value + AttachStampNet.Value)
            else
              AttachNet.Value := (AttachAttachValue.Value + AttachStampNet.Value);
         end
         else
            AttachNet.Value := AttachAttachValue.Value;
        safe := DmdFm.AttachNet.Value;
        R := FLOATTOSTR(int(safe));
        AttachTfkid.Value := '›ﬁÿ' + AcListFm.WriteNo(R) + '.#';
        s := AttachTfkid.Value;
        a := FormatFloat('0.000', (safe - (int(safe))));
        if safe - int(safe) <> 0 then
          AttachTfkid.Value := s + ' œÌ‰«— Ê ' + a + ' ' + 'œ—Â„ ·«€Ì—'
        else
          AttachTfkid.Value := s + ' œÌ‰«— ·«€Ì—';
      end;
    end

    else
    begin
      AttachWeeks.Value := 5455;
      // w = 0;
      f := int(AttachAttachValue.Value * 0.005);
      g := (AttachAttachValue.Value * 0.005) - f;
      if (g = 0.500) or (g = 0.000) then
        AttachStampNet.Value := (AttachAttachValue.Value * 0.005)
      else if g < 0.500 then
        AttachStampNet.Value := (f + 0.500)
      else if g > 0.500 then
        AttachStampNet.Value := (f + 1);
      c := int(AttachAttachValue.Value * 0.005);
      e := (AttachAttachValue.Value * 0.005) - c;
      if e < 0.500 then
        AttachNet.Value := (AttachAttachValue.Value + AttachStampNet.Value)
      else
        AttachNet.Value := (AttachAttachValue.Value + AttachStampNet.Value);
      safe := DmdFm.AttachNet.Value;
      R := FLOATTOSTR(int(safe));
      AttachTfkid.Value := '›ﬁÿ' + AcListFm.WriteNo(R) + '.#';
      s := AttachTfkid.Value;
      a := FormatFloat('0.000', (safe - (int(safe))));
      if safe - int(safe) <> 0 then
        AttachTfkid.Value := s + ' œÌ‰«— Ê ' + a + ' ' + 'œ—Â„ ·«€Ì—'
      else
        AttachTfkid.Value := s + ' œÌ‰«— ·«€Ì—';
    end;
    { -------------------------------- }

    end


end;

procedure TDmdFm.AttachDAfterPost(DataSet: TDataSet);
var
  sum, f, g: Real;
  bookmark: TBookmark;
begin
  sum := 0;
  AttachD.DisableControls;
  bookmark := AttachD.GetBookmark;
  AttachD.First;
  while not AttachD.Eof do
  begin
    if AttachAccType.Value <> 23 then
      sum := sum + AttachDAccTotal.Value;
    AttachD.Next;
  end;
  AttachD.GotoBookmark(bookmark);
  AttachD.EnableControls;
  Attach.Edit;
  AttachAttachValue.Value := sum;
  Attach.Post;
  { ---------------------- }
  Attach.Edit;
  f := int(AttachAttachValue.Value * 0.005);
  g := (AttachAttachValue.Value * 0.005) - f;
  if (g = 0.500) or (g = 0.000) then
    AttachStampAbs.Value := (AttachAttachValue.Value * 0.005)
  else if g < 0.500 then
    AttachStampAbs.Value := (f + 0.500)
  else if g > 0.500 then
    AttachStampAbs.Value := (f + 1);
  Attach.Post;

end;

procedure TDmdFm.AttachDBeforeDelete(DataSet: TDataSet);
begin
  if (DmdFm.AttachLockF.Value = 0) and (DmdFm.PermLockList.Value = false) then
    raise Exception.Create('«·„·Õﬁ „ﬁ›·');

end;

procedure TDmdFm.AttachDBeforeEdit(DataSet: TDataSet);
begin
  if (DmdFm.AttachLockF.Value = 0) and (DmdFm.PermLockList.Value = false) then
    raise Exception.Create('«·„·Õﬁ „ﬁ›·');

end;

procedure TDmdFm.AttachstampflagValidate(Sender: TField);

var f,g:real;
begin
 if DmdFm.Attachstampflag.Value = 0 then
      begin
        attach.Edit;
        f := int(DmdFm.AttachAttachValue.Value * 0.005);
        g := (DmdFm.AttachAttachValue.Value * 0.005) - f;
        if (g = 0.500) or (g = 0.000) then
          DmdFm.AttachStampAbs.Value := (DmdFm.AttachAttachValue.Value * 0.005)
        else if g < 0.500 then
          DmdFm.AttachStampAbs.Value := (f + 0.500)
        else if g > 0.500 then
          DmdFm.AttachStampAbs.Value := (f + 1);
      end
      else
      begin

        DmdFm.AttachStampAbs.Value := 0;

      end;
end;

procedure TDmdFm.BillSrchQCalcFields(DataSet: TDataSet);
begin
  case BillSrchQListType.Value of
    1:
      BillSrchQListTypeNm.Value := '‰ﬁœÌ';
    2:
      BillSrchQListTypeNm.Value := 'Ã«—Ì';
  end;
end;

procedure TDmdFm.DataModuleCreate(Sender: TObject);
var
  VProviderName, VUserName, VPassword, VServer, VDatabase, VPort,
    Slahia: string;
  I, J: Integer;
  ruta, servidor, rutaprivate, rutanet: string;
  // I:Integer;
begin
edit_flag:=0;
  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
    try

      // IsTahmilMasrofat :=1;
      VProviderName := readstring('Data', 'ProviderName', '');
      VUserName := readstring('Data', 'Username', '');
      VPassword := readstring('Data', 'Password', '');
      VServer := readstring('Data', 'Server', '');
      VDatabase := readstring('Data', 'Database', '');
      VPort := readstring('Data', 'Port', '');
      Slahia := readstring('Data', 'It is the Slahia', '');
      // ShowMessage(VServer);
      if VProviderName = '' then
      begin
        while not(VProviderName <> '') do
          VProviderName := InputBox('ProviderName', 'ProviderName', 'MySQL');
        writestring('Data', 'ProviderName', VProviderName);
      end;
      if VUserName = '' then
      begin
        while not(VUserName <> '') do
          VUserName := InputBox('UserName', 'UserName', 'root');
        writestring('Data', 'UserName', VUserName);
      end;
      if VPassword = '' then
        writestring('Data', 'PassWord', VPassword);

      if VServer = '' then
      begin
        while not(VServer <> '') do
          VServer := InputBox('Server', 'Server', 'localhost');
        writestring('Data', 'Server', VServer);
      end;
      if VDatabase = '' then
      begin
        while not(VDatabase <> '') do
          VDatabase := InputBox('Database...', 'Database', 'Porte');
        writestring('Data', 'Database', VDatabase);
      end;
      if VPort = '' then
      begin
        while not(VPort <> '') do
          VPort := InputBox('Port...', 'Port', '3306');
        writestring('Data', 'Port', VPort);
      end;

      if Slahia = '' then
      begin
        while not(Slahia <> '') do
          Slahia := InputBox('Slahia...', 'It is this team the Slahia?/',
            'yes/no');
        if (UpperCase(Slahia) = 'YES') then
          writestring('Data', 'It is the Slahia', '1')
        else
          writestring('Data', 'It is the Slahia', '0');
      end;
    finally
    end;

  /// //////////////////////////

  with DB1 do
  begin

    Connected := false;
    ProviderName := VProviderName;
    Username := VUserName;
    Password := VPassword;
    Server := VServer;
    Database := VDatabase;
    Port := strtoint(VPort);
    Connected := TRUE;


  //  DmdFm.GeneralQ.Close;
    //DmdFm.GeneralQ.SQL.Add('ALTER TABLE `attach` add column IF NOT EXISTS  `progress` SMALLINT(3) NULL DEFAULT 0');
//    DmdFm.GeneralQ.SQL.Add('ALTER TABLE `perm` add column IF NOT EXISTS  `main_options` tinyint(1) NULL DEFAULT 0');
  //  DmdFm.GeneralQ.SQL.Add('ALTER TABLE `units` add column IF NOT EXISTS  `shared_value` double NULL');
//    DmdFm.GeneralQ.SQL.Add('ALTER TABLE `acclist` add column IF NOT EXISTS  `shared_usefork` SMALLINT(2) NULL DEFAULT 0');
 //   DmdFm.GeneralQ.SQL.Add('ALTER TABLE `info` add column IF NOT EXISTS  `SPeak_From` date NULL');
 //    DmdFm.GeneralQ.SQL.Add('ALTER TABLE `info` add column IF NOT EXISTS  `SPeak_To` date NULL');
 //   DmdFm.GeneralQ.SQL.Add('ALTER TABLE `info` add column IF NOT EXISTS  `WPeak_From` date NULL');

//    DmdFm.GeneralQ.ExecSQL;
//      DmdFm.GeneralQ.SQL.Clear;
     DmdFm.GeneralQ.Close;
      DmdFm.GeneralQ.SQL.Add('CREATE TABLE if not exists `acc_tracking` ( ');
      DmdFm.GeneralQ.SQL.Add('`user_num` int(11) NOT NULL COMMENT '+QuotedStr('—ﬁ„ «·„” Œœ„')+',');
      DmdFm.GeneralQ.SQL.Add('`list_num` int(11) DEFAULT NULL COMMENT '+QuotedStr('—ﬁ„ «·›« Ê—…')+', ');
      DmdFm.GeneralQ.SQL.Add('`operation_num` varchar(10) NOT NULL COMMENT '+QuotedStr('—ﬁ„ «·⁄„·Ì…')+',');
      DmdFm.GeneralQ.SQL.Add('`operation_name` varchar(150) NOT NULL COMMENT '+QuotedStr('Ê’› «·⁄„·Ì…')+',');
      DmdFm.GeneralQ.SQL.Add('`tracking_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT '+QuotedStr('«· «—ÌŒ')+',') ;
      DmdFm.GeneralQ.SQL.Add('`autonum` int(11) NOT NULL AUTO_INCREMENT COMMENT '+QuotedStr('«·—ﬁ„ «·¬·Ì')+',') ;
      DmdFm.GeneralQ.SQL.Add('`AttOrAcclist` smallint(6) DEFAULT NULL COMMENT '+QuotedStr('›« Ê—… «Ê „·Õﬁ')+',');
      DmdFm.GeneralQ.SQL.Add('`return_reason` varchar(100) DEFAULT NULL COMMENT '+QuotedStr('”»» «· —ÃÌ⁄')+', ') ;
      DmdFm.GeneralQ.SQL.Add('PRIMARY KEY (`autonum`)') ;
      DmdFm.GeneralQ.SQL.Add(') ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=cp1256');
  DmdFm.GeneralQ.ExecSQL;

    IF not Connected THEN
      Raise Exception.Create('·« ÌÊÃœ « ’«· »«·ÃÂ«“ «·„Õ·Ì');

  end;

  J := 0;
  for I := 0 to DmdFm.ComponentCount - 1 do
    if (DmdFm.Components[I] is TUniTable) and
      ((DmdFm.Components[I] as TUniTable).Name <> 'Years') then
    begin
      J := J + 1;
      SplashFm.sProgressBar1.StepIt;
      (DmdFm.Components[I] as TUniTable).Open;
    end;


  // DmdFm.checksAll.Close;
  // DmdFm.checksAll.Open;



  // ShowMessage(VDatabase);

end;

procedure TDmdFm.DB1ConnectionLost(Sender: TObject; Component: TComponent;
  ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
begin
  ShowMessage('⁄–—«...«‰ﬁÿ⁄ «·« ’«·');
  RetryMode := rmReconnectExecute;
end;

procedure TDmdFm.manykzenaCalcFields(DataSet: TDataSet);
var
  safe: Real;
  R, s, a: string;
begin

end;

procedure TDmdFm.MIncomeAfterInsert(DataSet: TDataSet);
begin
  MIncomeGoods.Value := 0;
  MIncomeShipType.Value := 1;
  MIncomeShipMet.Value := 1;
  MIncomeNUmunit.Value := 1;
  MIncomeElectric.Value := 0;
  MIncomeElecVAlue.Value := 0;
  MIncomeRemain.Value := 0;
  MIncomeRemValue.Value := 0;
  MIncomeW1.Value := 0;
  MIncomeW2.Value := 0;
  MIncomeV1.Value := 0;
  MIncomeV2.Value := 0;

end;

procedure TDmdFm.MIncomeBeforeDelete(DataSet: TDataSet);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  if not Income.IsEmpty then
    raise Exception.Create('⁄›Ê« ·«Ì„ﬂ‰ Õ–› «· ’‰Ì› ..... «Õ–› «·⁄Ê«∆œ «Ê·«');

end;

procedure TDmdFm.MIncomeCalcFields(DataSet: TDataSet);
begin
  case MIncomeGoods.Value of
    0:
      MIncomeIncType.Value := 'Õ«ÊÌ« ';
    1:
      MIncomeIncType.Value := '√Œ—Ï';
    2:
      MIncomeIncType.Value := '„—ﬂ»« ';
  end;
  case MIncomeShipType.Value of
    1:
      MIncomeShipTypeNm.Value := '⁄«œÌ…';
    2:
      MIncomeShipTypeNm.Value := '—Ê—Ê';
  end;
  case MIncomeShipMet.Value of
    0:
      MIncomeMetNm.Value := '·«Ì‰—';
    1:
      MIncomeMetNm.Value := '›ÌÊ”';
  end;
end;

procedure TDmdFm.mincomekAfterInsert(DataSet: TDataSet);
begin
  mincomekGoods.Value := 0;
  mincomekShipType.Value := 1;
  mincomekShipMet.Value := 1;
  mincomekNUmunit.Value := 1;
  mincomekElectric.Value := 0;
  mincomekElecVAlue.Value := 0;
  mincomekRemain.Value := 0;
  mincomekRemValue.Value := 0;
  mincomekW1.Value := 0;
  mincomekW2.Value := 0;
  mincomekV1.Value := 0;
  mincomekV2.Value := 0;
end;

procedure TDmdFm.mincomekBeforeDelete(DataSet: TDataSet);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  if not incomek.IsEmpty then
    raise Exception.Create('⁄›Ê« ·«Ì„ﬂ‰ Õ–› «· ’‰Ì› ..... «Õ–› «·⁄Ê«∆œ «Ê·«');

end;

procedure TDmdFm.mincomekCalcFields(DataSet: TDataSet);
begin
  case mincomekGoods.Value of
    0:
      mincomekIncType.Value := 'Õ«ÊÌ« ';
    1:
      mincomekIncType.Value := '√Œ—Ï';
    2:
      mincomekIncType.Value := '„—ﬂ»« ';
  end;
  case mincomekShipType.Value of
    1:
      mincomekShipTypeNm.Value := '⁄«œÌ…';
    2:
      mincomekShipTypeNm.Value := '—Ê—Ê';
  end;
  case mincomekShipMet.Value of
    0:
      mincomekMetNm.Value := '·«Ì‰—';
    1:
      mincomekMetNm.Value := '›ÌÊ”';
  end;
end;

procedure TDmdFm.mincomesAfterInsert(DataSet: TDataSet);
begin
  mincomesGoods.Value := 0;
  mincomesShipType.Value := 1;
  mincomesShipMet.Value := 1;
  mincomesNUmunit.Value := 1;
  mincomesElectric.Value := 0;
  mincomesElecVAue.Value := 0;
  mincomesRemain.Value := 1;
  mincomesRemValue.Value := 0;
  mincomesW1.Value := 0;
  mincomesW2.Value := 0;
  mincomesV1.Value := 0;
  mincomesV2.Value := 0;
end;

procedure TDmdFm.mincomesBeforeDelete(DataSet: TDataSet);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  if not IIncome.IsEmpty then
    raise Exception.Create('⁄›Ê« ·«Ì„ﬂ‰ Õ–› «· ’‰Ì› ..... «Õ–› «·⁄Ê«∆œ «Ê·«');

end;

procedure TDmdFm.mincomesCalcFields(DataSet: TDataSet);
begin
  case mincomesGoods.Value of
    0:
      mincomesIncType.Value := 'Õ«ÊÌ« ';
    1:
      mincomesIncType.Value := '√Œ—Ï';
    2:
      mincomesIncType.Value := '„—ﬂ»« ';
  end;
  case mincomesShipType.Value of
    1:
      mincomesShipTypeNm.Value := '⁄«œÌ…';
    2:
      mincomesShipTypeNm.Value := '—Ê—Ê';
  end;
  case mincomesShipMet.Value of
    0:
      mincomesMetNm.Value := '·«Ì‰—';
    1:
      mincomesMetNm.Value := '›ÌÊ”';
  end;
end;

procedure TDmdFm.MTENZincomeCalcFields(DataSet: TDataSet);
begin
  case MTENZincomeGoods.Value of
    0:
      MTENZincomeIncType.Value := 'Õ«ÊÌ« ';
    1:
      MTENZincomeIncType.Value := '√Œ—Ï';
    2:
      MTENZincomeIncType.Value := '„—ﬂ»« ';
  end;
  case MTENZincomeShipType.Value of
    1:
      MTENZincomeShipTypeNm.Value := '⁄«œÌ…';
    2:
      MTENZincomeShipTypeNm.Value := '—Ê—Ê';
  end;
  case MTENZincomeShipMet.Value of
    0:
      MTENZincomeMetNm.Value := '·«Ì‰—';
    1:
      MTENZincomeMetNm.Value := '›ÌÊ”';
  end;
end;

procedure TDmdFm.PeakTblBeforeDelete(DataSet: TDataSet);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
end;

procedure TDmdFm.PermAfterInsert(DataSet: TDataSet);
begin
  Permpyan1.Value := TRUE;
  Permpyan2.Value := TRUE;
  PermpyanD.Value := TRUE;
  PermDrevle.Value := TRUE;
  PermPoapa.Value := TRUE;
  PermKzena.Value := TRUE;
  PermRga.Value := false;
  PermAdorfrze.Value := false;
  PermDelload.Value := false;
  PermDelBillload.Value := false;
  PermDelTrans.Value := false;
  PermCarry.Value := false;
  PermArchive.Value := false;
  PermRsomBill.Value := false;
  PermDelList.Value := false;
  PermEnbEdit.Value := false;
  PermCarryRsom.Value := false;
  PermShipData.Value := false;
  PermAgent.Value := false;
  PermHelp.Value := false;
  PermIncome.Value := false;
  PermShipp.Value := false;
  PermAdmis.Value := false;
  PermAcList.Value := false;
  PermPerm.Value := false;
  PermReports.Value := false;
  PermConst.Value := false;
  PermLockList.Value := false;
  PermCommList.Value := false;
  PermRsomList.Value := false;
  PermOutPort.Value := false;
  PermCurrent.Value := false;
  PermDebit.Value := false;
end;

procedure TDmdFm.PermBeforeDelete(DataSet: TDataSet);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
end;

procedure TDmdFm.ShipsAfterInsert(DataSet: TDataSet);
begin
  if Ships.IsEmpty then
    ShipsNum.Value := 1
  else
    ShipsNum.Value := ShipNum + 1;

  if ShipFm.DBGridEh1.Columns[0].Visible = TRUE then
  begin
    DmdFm.MaxSerShp.Close;
    DmdFm.MaxSerShp.Open;

    DmdFm.ShipsSerialNum.Value := DmdFm.MaxSerShpserialNum.Value + 1;
  end;
  DmdFm.ShipsRecCer.Value := 0;

end;

procedure TDmdFm.ShipsBeforeDelete(DataSet: TDataSet);
begin
  // if SAccList.Locate('ShipNum', ShipsNumAuto.Value, []) then
  // raise Exception.Create('«·”›Ì‰…  „ «Œ Ì«—Â« ›Ì ›« Ê—… ... ·« Ì„ﬂ‰ﬂ «·Õ–›!');
  QShipList.Close;
  QShipList.ParamByName('numS').Value := ShipsNumAuto.Value;
  QShipList.Open;
  if not QShipList.IsEmpty then
    raise Exception.Create
      ('·« Ì„ﬂ‰ﬂ «·Õ–› ... «·”›Ì‰…  „ «Œ Ì«—Â« ›Ì »Ì«‰ Õ„Ê·…');

  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

end;

procedure TDmdFm.ShipsBeforeInsert(DataSet: TDataSet);
begin
  Ships.Filtered := false;
  Ships.last;
  ShipNum := ShipsNum.Value;

end;

procedure TDmdFm.ShipsBeforePost(DataSet: TDataSet);
begin
  if ShipsSType.isnull then
    raise Exception.Create('«Œ — ‰Ê⁄ «·”›Ì‰… √Ê·«');

  if (ShipsSName.isnull) and (ShipsName_En.isnull) then
    raise Exception.Create('«œŒ· «”„ «·”›‰Ì… √Ê·«');

  if ShipsShipType.isnull then
    raise Exception.Create('«Œ — «·”›Ì‰… „Õ·Ì… √Ê √Ã‰»Ì… √Ê·«');

  if ShipsShipMet.isnull then
    raise Exception.Create('«Œ — ›ÌÊ” √Ê ·«Ì‰— √Ê·«');

end;

procedure TDmdFm.ShipsCalcFields(DataSet: TDataSet);
begin
  if ShipsShipType.Value = 0 then
    ShipsLocOrFor.Value := '„Õ·Ì…'
  else if ShipsShipType.Value = 1 then
    ShipsLocOrFor.Value := '√Ã‰»Ì…';

end;

procedure TDmdFm.ShipsSNameValidate(Sender: TField);
var
  ch: string;
begin
  ch := ShipsSName.Value;
  str(ch);
  ShipsSAbsName.Value := ch;
end;

procedure TDmdFm.EdaQBeforeDelete(DataSet: TDataSet);
begin

  if Application.messagebox('”Ê› Ì „ Õ–› «·≈Ìœ«⁄ «·Õ«·Ì ... Â· √‰  „ √ﬂœø', '',
    1 + mb_defbutton2) = 2 then
    raise EAbort.Create('');

end;

procedure TDmdFm.EdaBanksDAfterPost(DataSet: TDataSet);
var
  SumChecks: Real;
begin

end;

procedure TDmdFm.manykzenaBeforeInsert(DataSet: TDataSet);
begin
  // manykzena.Last;
  // if (EdaQ.IsEmpty)and(Checks.IsEmpty)and(EdaCheckQ.IsEmpty)and(TransQ.IsEmpty)and(EsalType<>4)then
  // raise Exception.Create('«·≈Ì’«· «·”«»ﬁ ·« ÌÕ ÊÌ ⁄·Ï »Ì«‰«  ... ·« Ì„ﬂ‰ﬂ ≈÷«›… ≈Ì’«· ÃœÌœ');

end;

procedure TDmdFm.hrweightAfterInsert(DataSet: TDataSet);
begin
  { QMaxBar.Close;
    QMaxBar.Open;

    if QMaxBarMax_BarcodeHW.isnull then

    hrweightBarcodeHW.Value := 100001
    else
    hrweightBarcodeHW.Value := (QMaxBarMax_BarcodeHW.Value + 1);

    hrweightDateHarkW.Value := Now;
    hrweightuserH.Value := PermUserName.Value;
    hrweightHEmpty.Value := StrToFloat(FormComPort.Edit1.Text);

  }
end;

procedure TDmdFm.hrweightBeforePost(DataSet: TDataSet);
begin

  {

    if (hrweight.State = dsinsert) then
    begin

    QMaxBar.Close;
    QMaxBar.open;

    if QMaxBarMax_BarcodeHW.IsNull then

    hrweightBarcodeHW.Value := 100001
    else
    hrweightBarcodeHW.Value := (QMaxBarMax_BarcodeHW.Value + 1);

    end; }
end;

end.
