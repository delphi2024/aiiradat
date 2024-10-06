unit Dmd2Un;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, frxClass,
  frxDBSet, VirtualTable, UniProvider, MySQLUniProvider;

type
  TDmd2Fm = class(TDataModule)
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
    DVDateHrak: TUniDataSource;
    VloadlistQShipNm: TStringField;
    VloadlistQAgentNm: TStringField;
    VloadlistQShipTypeNm: TStringField;
    FRVDateHrak: TfrxDBDataset;
    VDateHrakMetNm: TStringField;
    VDateHrakMixedNm: TStringField;
    UniConnection1: TUniConnection;
    DListAll1: TDataSource;
    DListAll: TDataSource;
    ListAll3: TUniTable;
    ListAll3AccType: TSmallintField;
    ListAll3ListNum: TIntegerField;
    ListAll3ListType: TSmallintField;
    ListAll3ListDate: TDateField;
    ListAll3ToName: TWideStringField;
    ListAll3Total: TFloatField;
    ListAll3Stamp: TFloatField;
    ListAll3Net: TFloatField;
    ListAll3AccValue: TFloatField;
    ListAll3AccTotal: TFloatField;
    ListAll3Met: TSmallintField;
    ListAll3NumAuto: TIntegerField;
    ListAll3AccNm: TStringField;
    ListAll3StampAbs: TFloatField;
    ListAll: TVirtualTable;
    ListAllAccType: TSmallintField;
    ListAllListNum: TIntegerField;
    ListAllListType: TSmallintField;
    ListAllListDate: TDateField;
    ListAllToName: TWideStringField;
    ListAllTotal: TFloatField;
    ListAllStamp: TFloatField;
    ListAllNet: TFloatField;
    ListAllAccValue: TFloatField;
    ListAllAccNm: TWideStringField;
    ListAllSupNm: TWideStringField;
    ListAllAccTotal: TFloatField;
    ListAllMet: TSmallintField;
    ListAllNumAuto: TIntegerField;
    ListAllLoukOf: TSmallintField;
    ListAllAgin: TIntegerField;
    ListAllAgentNm: TStringField;
    ListAllListNumR: TIntegerField;
    listall1: TUniTable;
    listall1AccType: TSmallintField;
    listall1ListNum: TIntegerField;
    listall1ListType: TSmallintField;
    listall1ListDate: TDateField;
    listall1ToName: TWideStringField;
    listall1Total: TFloatField;
    listall1Stamp: TFloatField;
    listall1Net: TFloatField;
    listall1AccValue: TFloatField;
    listall1AccTotal: TFloatField;
    listall1Met: TSmallintField;
    listall1Agin: TSmallintField;
    listall1Sup: TSmallintField;
    listall1numAuto: TIntegerField;
    listall1SupNm: TStringField;
    listall1AginNm: TStringField;
    listall1AccNm: TStringField;
    QListAll1: TUniQuery;
    QListAll1Agin: TSmallintField;
    QListAll1ListDate: TDateField;
    QListAll1ListNum: TIntegerField;
    QListAll1Stamp: TFloatField;
    QListAll1Net: TFloatField;
    QListAll1Sup: TSmallintField;
    QListAll1SupNm: TWideStringField;
    QListAll1AginNm: TWideStringField;
    QListAll: TUniQuery;
    QListAllListDate: TDateField;
    QListAllListNum: TIntegerField;
    QListAllStamp: TFloatField;
    QListAllNet: TFloatField;
    DQListAll: TDataSource;
    FQLISTALL1: TfrxDBDataset;
    FQLISTALL: TfrxDBDataset;
    FrListAll: TfrxDBDataset;
    FrListAll1: TfrxDBDataset;
    KshfMlhg: TUniQuery;
    KshfMlhgAcctype_1: TSmallintField;
    KshfMlhgAccType: TSmallintField;
    KshfMlhgAttachNum: TIntegerField;
    KshfMlhgAccvalue: TFloatField;
    KshfMlhgAccTotal: TFloatField;
    KshfMlhgAttachDate: TDateField;
    KshfMlhgAttachValue: TFloatField;
    KshfMlhgStampNet: TFloatField;
    KshfMlhgNet: TFloatField;
    KshfMlhgMet: TSmallintField;
    KshfQ: TUniQuery;
    KshfQTypeNm: TWideStringField;
    KshfQNet: TFloatField;
    KshfQToName: TWideStringField;
    KshfQStampNet: TFloatField;
    KshfQListNum: TIntegerField;
    KshfQListType: TSmallintField;
    KshfQListDate: TDateField;
    KshfQTotal: TFloatField;
    KshfQAccType: TSmallintField;
    KshfQAccValue: TFloatField;
    KshfQAccTotal: TFloatField;
    KshfQAdmisMet: TSmallintField;
    KshfQDateTop: TDateField;
    KshfQDama: TSmallintField;
    KshfQstampabs: TFloatField;
    KshfQlistnumr: TIntegerField;
    KshfQAginNm: TIntegerField;
    KshfQSapa: TSmallintField;
    KshfQ2: TUniQuery;
    WideStringField1: TWideStringField;
    FloatField6: TFloatField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    KshfQ2ListNum: TIntegerField;
    KshfQ2ListType: TSmallintField;
    KshfQ2Dama: TSmallintField;
    KshfQ2ListDate: TDateField;
    KshfQ2DateTop: TDateField;
    KshfQ2Total: TFloatField;
    KshfQ2Toname: TWideStringField;
    KshfQ2AccType: TSmallintField;
    KshfQ2AccValue: TFloatField;
    KshfQ2AccTotal: TFloatField;
    KshfQ2AdmisMet: TSmallintField;
    KshfQ2StampNet: TFloatField;
    KshfQ2Net: TFloatField;
    FrKshfQ: TfrxDBDataset;
    KshfQ3: TUniQuery;
    KshfQ3ListNum: TIntegerField;
    KshfQ3ListType: TSmallintField;
    KshfQ3Dama: TSmallintField;
    KshfQ3ListDate: TDateField;
    KshfQ3DateTop: TDateField;
    KshfQ3Total: TFloatField;
    KshfQ3Toname: TWideStringField;
    KshfQ3AccType: TSmallintField;
    KshfQ3AccValue: TFloatField;
    KshfQ3AccTotal: TFloatField;
    KshfQ3AdmisMet: TSmallintField;
    KshfQ3stampabs: TFloatField;
    KshfQ3listnumr: TIntegerField;
    KshfQ3AginNm: TIntegerField;
    KshfQ3StampNet: TFloatField;
    KshfQ3Net: TFloatField;
    KshfQ1: TUniQuery;
    KshfQ1ListNum: TIntegerField;
    KshfQ1AginNm: TIntegerField;
    KshfQ1ListType: TSmallintField;
    KshfQ1ListDate: TDateField;
    KshfQ1DateTop: TDateField;
    KshfQ1Total: TFloatField;
    KshfQ1StampNet: TFloatField;
    KshfQ1Toname: TWideStringField;
    KshfQ1AccType: TSmallintField;
    KshfQ1AccValue: TFloatField;
    KshfQ1AccTotal: TFloatField;
    KshfQ1AdmisMet: TSmallintField;
    KshfQ1Sapa: TSmallintField;
    KshfQ1Dama: TSmallintField;
    KshfQ1Stamp: TFloatField;
    KshfQ1stampabs: TFloatField;
    KshfQ4: TUniQuery;
    KshfQ4ListNum: TIntegerField;
    KshfQ4ListType: TSmallintField;
    KshfQ4Dama: TSmallintField;
    KshfQ4ListDate: TDateField;
    KshfQ4DateTop: TDateField;
    KshfQ4Total: TFloatField;
    KshfQ4Toname: TWideStringField;
    KshfQ4AccType: TSmallintField;
    KshfQ4AccValue: TFloatField;
    KshfQ4AccTotal: TFloatField;
    KshfQ4AdmisMet: TSmallintField;
    KshfQ4stampabs: TFloatField;
    KshfQ4listnumr: TIntegerField;
    KshfQ4AginNm: TIntegerField;
    KshfQ4StampNet: TFloatField;
    KshfQ4Net: TFloatField;
    KshfQ4deldate: TDateField;
    KshfDelQ: TUniQuery;
    KshfDelQListNum: TIntegerField;
    KshfDelQListType: TSmallintField;
    KshfDelQDama: TSmallintField;
    KshfDelQListDate: TDateField;
    KshfDelQDateTop: TDateField;
    KshfDelQTotal: TFloatField;
    KshfDelQToname: TWideStringField;
    KshfDelQAccType: TSmallintField;
    KshfDelQAccValue: TFloatField;
    KshfDelQAccTotal: TFloatField;
    KshfDelQAdmisMet: TSmallintField;
    KshfDelQStampAbs: TFloatField;
    KshfDelQAlterBill: TIntegerField;
    KshfDelQStampNet: TFloatField;
    KshfDelQNet: TFloatField;
    KshfDelQListNumR: TIntegerField;
    KshfMlhg1: TUniQuery;
    KshfMlhg1AttachDate: TDateField;
    KshfMlhg1AccType: TSmallintField;
    KshfMlhg1AginNm: TSmallintField;
    KshfMlhg1AttachNum: TIntegerField;
    KshfMlhg1Acctype_1: TSmallintField;
    KshfMlhg1Accvalue: TFloatField;
    KshfMlhg1AccTotal: TFloatField;
    KshfMlhg1AttachValue: TFloatField;
    KshfMlhg1Met: TSmallintField;
    KshfMlhg1Net: TFloatField;
    KshfMlhg1StampNet: TFloatField;
    KshfMlhg1stampabs: TFloatField;
    KshfSumQ: TUniQuery;
    KshfSumQtotal: TFloatField;
    KshfSumQstamp: TFloatField;
    KshfSumQdama: TSmallintField;
    KshfSumQNet: TFloatField;
    KshfSumQStampNet: TFloatField;
    KshfSumQstampabs: TFloatField;
    AlterQ: TUniQuery;
    AlterQListNum: TIntegerField;
    AlterQListType: TSmallintField;
    AlterQDama: TSmallintField;
    AlterQListDate: TDateField;
    AlterQDateTop: TDateField;
    AlterQTotal: TFloatField;
    AlterQToname: TWideStringField;
    AlterQAccType: TSmallintField;
    AlterQAccValue: TFloatField;
    AlterQAccTotal: TFloatField;
    AlterQAdmisMet: TSmallintField;
    AlterQStampAbs: TFloatField;
    AlterQAlterBill: TIntegerField;
    AlterQnet: TFloatField;
    AlterQStampNet: TFloatField;
    AlterQDisCount: TFloatField;
    AlterQListNumR: TIntegerField;
    KshfSumAttachQ: TUniQuery;
    KshfSumAttachQstamp: TFloatField;
    KshfSumAttachQattachvalue: TFloatField;
    KshfSumAttachQStampNet: TFloatField;
    KshfSumAttachQNet: TFloatField;
    KshfSumAttachQstampabs: TFloatField;
    KshfDelSumQ: TUniQuery;
    KshfDelSumQtotal: TFloatField;
    KshfDelSumQstamp: TFloatField;
    KshfDelSumQdama: TSmallintField;
    KshfDelSumQNet: TFloatField;
    KshfDelSumQStampNet: TFloatField;
    KshfDelSumQstampabs: TFloatField;
    ListsQ: TUniQuery;
    ListsQListType: TSmallintField;
    ListsQListDate: TDateField;
    ListsQWeSpace: TFloatField;
    ListsQTotal: TFloatField;
    ListsQStamp: TFloatField;
    ListsQToname: TWideStringField;
    ListsQAccNum: TIntegerField;
    ListsQListType_1: TSmallintField;
    ListsQacc: TFloatField;
    ListsQStampNet: TFloatField;
    ListsQNet: TFloatField;
    ListsQTypeNm: TWideStringField;
    ListsQDateTop: TDateField;
    ListsAllQ: TUniQuery;
    ListsAllQListDate: TDateField;
    ListsAllQAccTotal: TFloatField;
    ListsAllQStampNet: TFloatField;
    ListsAllQNet: TFloatField;
    ListsAllQListType: TSmallintField;
    ListsAllQTypeNm: TWideStringField;
    ListsAllQStamp: TFloatField;
    FrListsQ: TfrxDBDataset;
    FrListsAllQ: TfrxDBDataset;
    KshfRsom: TUniQuery;
    KshfRsomAccNum: TIntegerField;
    KshfRsomAccType: TSmallintField;
    KshfRsomAccValue: TFloatField;
    KshfRsomListNum: TIntegerField;
    KshfRsomListDate: TDateField;
    KshfRsomTo: TSmallintField;
    KshfRsomShipNum: TSmallintField;
    KshfRsomArriveDate: TDateField;
    KshfRsomEndEmpDate: TDateField;
    KshfRsomGoodsDesc: TSmallintField;
    KshfRsomGoodsQty: TFloatField;
    KshfRsomShipBillNum: TSmallintField;
    KshfRsomWeSpace: TFloatField;
    KshfRsomTotal: TFloatField;
    KshfRsomAdmisMet: TSmallintField;
    KshfRsomStamp: TFloatField;
    KshfRsomUnit: TSmallintField;
    KshfRsomacctotal: TFloatField;
    KshfRsomToName: TWideStringField;
    KshfRsomNet: TFloatField;
    KshfRsomStampNet: TFloatField;
    KshfRsomTypeNm: TWideStringField;
    KshfRsomShipNm: TWideStringField;
    KshfRsomM: TUniQuery;
    KshfRsomMAccNum: TIntegerField;
    KshfRsomMAccType: TSmallintField;
    KshfRsomMAccValue: TFloatField;
    KshfRsomMListNum: TIntegerField;
    KshfRsomMListDate: TDateField;
    KshfRsomMTo: TSmallintField;
    KshfRsomMShipNum: TSmallintField;
    KshfRsomMArriveDate: TDateField;
    KshfRsomMEndEmpDate: TDateField;
    KshfRsomMGoodsDesc: TSmallintField;
    KshfRsomMGoodsQty: TFloatField;
    KshfRsomMShipBillNum: TSmallintField;
    KshfRsomMWeSpace: TFloatField;
    KshfRsomMTotal: TFloatField;
    KshfRsomMAdmisMet: TSmallintField;
    KshfRsomMStamp: TFloatField;
    KshfRsomMUnit: TSmallintField;
    KshfRsomMacctotal: TFloatField;
    KshfRsomMToName: TWideStringField;
    KshfRsomMMonth: TSmallintField;
    KshfRsomMNet: TFloatField;
    KshfRsomMStampNet: TFloatField;
    KshfRsomMMonthNm: TWideStringField;
    KshfRsomMTypeNm: TWideStringField;
    FrKshfRsomM: TfrxDBDataset;
    FrKshfRsom: TfrxDBDataset;
    QMlhq: TUniQuery;
    QMlhqAccType: TSmallintField;
    QMlhqListNum: TIntegerField;
    QMlhqAttachNum: TIntegerField;
    QMlhqListtype: TIntegerField;
    QMlhqAttachDate: TDateField;
    QMlhqAttachValue: TFloatField;
    QMlhqMezan: TSmallintField;
    QMlhqKias: TFloatField;
    QMlhqQty: TFloatField;
    QMlhqRemin: TSmallintField;
    QMlhqElectric: TSmallintField;
    QMlhqDate2: TDateField;
    QMlhqDate3: TDateField;
    QMlhqWeeksBef: TSmallintField;
    QMlhqDate4: TDateField;
    QMlhqWeight: TFloatField;
    QMlhqUnit: TSmallintField;
    QMlhqReminDays: TSmallintField;
    QMlhqMet: TSmallintField;
    QMlhqSt1: TSmallintField;
    QMlhqSt2: TSmallintField;
    QMlhqAddWeeks: TSmallintField;
    QMlhqYyy: TIntegerField;
    QMlhqDate22: TDateField;
    QMlhqOasve: TWideStringField;
    QMlhqPolesa: TWideStringField;
    QMlhqAginNm: TSmallintField;
    QMlhqListType_1: TIntegerField;
    QMlhqListNum_1: TIntegerField;
    QMlhqAttachNum_1: TIntegerField;
    QMlhqAcctype_1: TSmallintField;
    QMlhqAccvalue: TFloatField;
    QMlhqAccTotal: TFloatField;
    QMlhqFromDate: TDateField;
    QMlhqToDate: TDateField;
    QMlhqFloatField: TFloatField;
    QMlhqFloatField2: TFloatField;
    DQMlhq: TDataSource;
    AttachStamp: TUniQuery;
    AttachStampsumstamp: TFloatField;
    SumStamp2: TUniQuery;
    SumStamp2sumstamp: TFloatField;
    SumStamp3: TUniQuery;
    SumStamp3sumstamp: TFloatField;
    SumStamp: TUniQuery;
    SumStampsumstamp: TFloatField;
    StampAlterQ: TUniQuery;
    StampAlterQsumstamp: TFloatField;
    StampAlterQalterbill: TIntegerField;
    StampDelQ: TUniQuery;
    StampDelQsumstamp: TFloatField;
    SumTotalQ2: TUniQuery;
    SumTotalQ2sumtotal: TFloatField;
    SumTotalQ2sumstampabs: TFloatField;
    SumTotalQ2sapa: TSmallintField;
    SumTotalQ2aginnm: TIntegerField;
    SumTotalQ: TUniQuery;
    SumTotalQsumtotal: TFloatField;
    SumTotalQsapa: TSmallintField;
    SumTotalQaginnm: TIntegerField;
    SumTotalQsumstampabs: TFloatField;
    QSumA: TUniQuery;
    QSumAAccType: TSmallintField;
    QSumAAccNm: TWideStringField;
    QSumASUMDAccTotal: TFloatField;
    QSumAStamp: TFloatField;
    QSumASumDStampAbs: TFloatField;
    SumSubTotal: TUniQuery;
    SumSubTotalAccType: TSmallintField;
    SumSubTotalSUMDAccTotal: TFloatField;
    SumSubTotalStamp: TFloatField;
    SumSubTotalSumDStampAbs: TFloatField;
    SumErshadQ: TUniQuery;
    SumErshadQSumErshad: TFloatField;
    FQSumA: TfrxDBDataset;
    StampAlter2Q: TUniQuery;
    StampAlter2Qsumstamp: TFloatField;
    FrSumSubTotal: TfrxDBDataset;
    SumStamp4: TUniQuery;
    SumStamp4sumstamp: TFloatField;
    Q1SumA: TUniQuery;
    Q1SumAAccType: TSmallintField;
    Q1SumAToName: TWideStringField;
    Q1SumAAccNm: TWideStringField;
    Q1SumAAgin: TSmallintField;
    Q1SumASup: TSmallintField;
    Q1SumAasd: TFloatField;
    Q1SumASupNm: TWideStringField;
    Q1SumAAginNm: TWideStringField;
    Q1SumAtotal: TFloatField;
    Q1SumAstamp: TFloatField;
    Q1SumAnet: TFloatField;
    Q1SumAlistnum: TIntegerField;
    QSumAT: TUniQuery;
    QSumATListNum: TIntegerField;
    QSumATStamp: TFloatField;
    QSumATNet: TFloatField;
    FQSumAT: TfrxDBDataset;
    FQ1SumA: TfrxDBDataset;
    CeadeQ: TUniQuery;
    CeadeQListType: TSmallintField;
    CeadeQDama: TSmallintField;
    CeadeQListDate: TDateField;
    CeadeQDateTop: TDateField;
    CeadeQTotal: TFloatField;
    CeadeQToname: TWideStringField;
    CeadeQAccType: TSmallintField;
    CeadeQAccValue: TFloatField;
    CeadeQAccTotal: TFloatField;
    CeadeQAdmisMet: TSmallintField;
    CeadeQstampabs: TFloatField;
    CeadeQlistnumr: TIntegerField;
    CeadeQAginNm: TIntegerField;
    CeadeQsumceade: TFloatField;
    FrCeadeQ: TfrxDBDataset;
    EradQ: TUniQuery;
    EradQsumaccdetacctotal: TFloatField;
    EradQacctype: TSmallintField;
    EradQAccNm: TStringField;
    FrEradQ: TfrxDBDataset;
    FrQDdle: TfrxDBDataset;
    Ddlelhzena: TUniDataSource;
    dlelhzena: TUniTable;
    dlelhzenanumAuto: TIntegerField;
    dlelhzenanameDlel: TWideStringField;
    dlelhzenaPhone: TWideStringField;
    dlelhzenaPhone2: TWideStringField;
    dlelhzenafax: TWideStringField;
    dlelhzenaadress: TWideStringField;
    dlelhzenaEmeal: TWideStringField;
    dlelhzenaNorte: TWideStringField;
    dlelhzenaFirstRsed: TFloatField;
    dlelhzenaRsed: TFloatField;
    AgTotal: TUniQuery;
    AgTotalstampabs: TFloatField;
    AgTotaltotal: TFloatField;
    AgTotalaginnm: TIntegerField;
    AgTotalagname: TWideStringField;
    FrAgTotal: TfrxDBDataset;
    AgTotalAttach: TUniQuery;
    AgTotalAttachstampabs: TFloatField;
    AgTotalAttachtotal: TFloatField;
    AgTotalAttachaginnm: TSmallintField;
    SumAttachQ: TUniQuery;
    SumAttachQsumattachvalue: TFloatField;
    SumAttachQsumstampabs: TFloatField;
    SumAttachQaginnm: TSmallintField;
    AgGroup: TUniQuery;
    AgGroupagin: TSmallintField;
    DailyQ: TUniQuery;
    DailyQdailynum: TIntegerField;
    DailyQdatetop: TDateField;
    DailyQlisttype: TSmallintField;
    DailyQminDate: TDateField;
    DailyQmaxDate: TDateField;
    DDailyQ: TDataSource;
    QueryAll: TUniQuery;
    QueryAlllistnum: TIntegerField;
    QueryAlllisttype: TSmallintField;
    QueryAlllistdate: TDateField;
    QueryAllshipNum: TSmallintField;
    QueryAllShipNm: TStringField;
    QueryAllTypeNm: TStringField;
    QueryAlltotal: TFloatField;
    QueryAllstampabs: TFloatField;
    QueryAllAginNm: TIntegerField;
    QueryAllToName: TWideStringField;
    QueryAllNet: TFloatField;
    QueryAllAgNm: TStringField;
    QueryAlllistNumR: TIntegerField;
    DQueryAll: TDataSource;
    MaxDailyQ: TUniQuery;
    MaxDailyQDailyNum: TIntegerField;
    SAttach: TUniTable;
    SAttachAccType: TSmallintField;
    SAttachListNum: TIntegerField;
    SAttachAttachNum: TIntegerField;
    SAttachListtype: TIntegerField;
    SAttachAttachDate: TDateField;
    SAttachAttachValue: TFloatField;
    SAttachMezan: TSmallintField;
    SAttachKias: TFloatField;
    SAttachQty: TFloatField;
    SAttachRemin: TSmallintField;
    SAttachElectric: TSmallintField;
    SAttachDate2: TDateField;
    SAttachDate3: TDateField;
    SAttachWeeksBef: TSmallintField;
    SAttachDate4: TDateField;
    SAttachWeight: TFloatField;
    SAttachUnit: TSmallintField;
    SAttachReminDays: TSmallintField;
    SAttachMet: TSmallintField;
    SAttachSt1: TSmallintField;
    SAttachSt2: TSmallintField;
    SAttachAddWeeks: TSmallintField;
    SAttachYyy: TIntegerField;
    SAttachDate22: TDateField;
    SAttachOasve: TWideStringField;
    SAttachPolesa: TWideStringField;
    SAttachAginNm: TSmallintField;
    SAttachbarcade: TWideStringField;
    SAttachUserNum: TSmallintField;
    SAttachToName: TWideStringField;
    SAttachStampAbs: TFloatField;
    SAttachLockF: TSmallintField;
    SAttachNet: TFloatField;
    SAttachAttDaily: TIntegerField;
    SAttachDebitF: TSmallintField;
    SAttachLockCurr: TSmallintField;
    SAttachDailyCurr: TSmallintField;
    SAttachCurrF: TSmallintField;
    SAttachClaimF: TSmallintField;
    SAttachPaidF: TSmallintField;
    DSAttach: TDataSource;
    DSAccList: TDataSource;
    SAccList11: TUniTable;
    SAccList11ListNum: TIntegerField;
    SAccList11ListType: TSmallintField;
    SAccList11ListDate: TDateField;
    SAccList11ShipNum: TSmallintField;
    SAccList11ArriveDate: TDateField;
    SAccList11StampNet: TFloatField;
    SAccList11EndEmpDate: TDateField;
    SAccList11GoodsDesc: TSmallintField;
    SAccList11GoodsQty: TFloatField;
    SAccList11ShipBillNum: TSmallintField;
    SAccList11WeSpace: TFloatField;
    SAccList11Total: TFloatField;
    SAccList11AdmisMet: TSmallintField;
    SAccList11Stamp: TFloatField;
    SAccList11Unit: TSmallintField;
    SAccList11BillNum: TWideStringField;
    SAccList11Toname: TWideStringField;
    SAccList11Electric: TSmallintField;
    SAccList11Remain: TSmallintField;
    SAccList11Wight: TFloatField;
    SAccList11LocOrFor: TWideStringField;
    SAccList11Petrol: TSmallintField;
    SAccList11Dirty: TSmallintField;
    SAccList11ShipType: TSmallintField;
    SAccList11Mezan: TSmallintField;
    SAccList11Frg: TSmallintField;
    SAccList11Tadl: TSmallintField;
    SAccList11FrgFlag: TSmallintField;
    SAccList11HjzFlag: TSmallintField;
    SAccList11TadlFlag: TSmallintField;
    SAccList11Edafe1: TSmallintField;
    SAccList11Edafe2: TSmallintField;
    SAccList11Goodsname: TWideStringField;
    SAccList11LocWitOut: TSmallintField;
    SAccList11ChechDate: TDateField;
    SAccList11Cars: TSmallintField;
    SAccList11States: TSmallintField;
    SAccList11ElecDate: TDateField;
    SAccList11RemDate: TDateField;
    SAccList11MezDate: TDateField;
    SAccList11Roafe: TSmallintField;
    SAccList11Dama: TSmallintField;
    SAccList11TfteshCar: TSmallintField;
    SAccList11AttTo: TWideStringField;
    SAccList11Leverweight: TFloatField;
    SAccList11Saba: TSmallintField;
    SAccList11WeeksNum: TSmallintField;
    SAccList11States1: TSmallintField;
    SAccList11States2: TSmallintField;
    SAccList11Days: TSmallintField;
    SAccList11DaysM: TSmallintField;
    SAccList11EleeshDate: TDateField;
    SAccList11ReshDate: TDateField;
    SAccList11DaysMM: TFloatField;
    SAccList11Sapa: TSmallintField;
    SAccList11AutoDate: TDateField;
    SAccList11AginNm: TIntegerField;
    SAccList11F1Num: TSmallintField;
    SAccList11User: TIntegerField;
    SAccList11Net: TFloatField;
    SAccList11AgNm: TWideStringField;
    SAccList11DateTop: TDateField;
    SAccList11NumT: TIntegerField;
    SAccList11barcade: TWideStringField;
    SAccList11loukof: TSmallintField;
    SAccList11ArchiveF: TSmallintField;
    SAccList11HoursNum: TSmallintField;
    SAccList11CouponIn: TIntegerField;
    SAccList11CouponOut: TIntegerField;
    SAccList11TelegramNum: TIntegerField;
    SAccList11PaidF: TSmallintField;
    SAccList11TypeNm: TStringField;
    SAccList11ShipMet: TSmallintField;
    SAccList11Reserve: TSmallintField;
    SAccList11FrgShip: TSmallintField;
    SAccList11BillNum2: TWideStringField;
    SAccList11SubType: TSmallintField;
    SAccList11DelDate: TDateField;
    SAccList11AgntR: TSmallintField;
    SAccList11SharedF: TSmallintField;
    SAccList11ChemicalF: TSmallintField;
    SAccList11AlterBill: TIntegerField;
    SAccList11StampAbs: TFloatField;
    SAccList11ListNumR: TIntegerField;
    SAccList11DailyNum: TIntegerField;
    SAccList11AttachNum: TIntegerField;
    SAccList11DisCount: TFloatField;
    SAccList11DelWhy: TWideStringField;
    SAccList11CutF: TSmallintField;
    AccList: TUniTable;
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
    AccListToName: TWideStringField;
    AccListElectric: TSmallintField;
    AccListWight: TFloatField;
    AccListRemain: TSmallintField;
    AccListDaysNum: TIntegerField;
    AccListLocOrFor: TWideStringField;
    AccListPetrol: TSmallintField;
    AccListDirty: TSmallintField;
    AccListFTime1: TTimeField;
    // g: TTimeField;
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
    AccListMoveAll: TSmallintField;
    AccListMovV1: TFloatField;
    AccListMovV2: TFloatField;
    AccListStNum: TSmallintField;
    AccListLocWitout: TSmallintField;
    AccListChechDate: TDateField;
    AccListCars: TSmallintField;
    AccListStates: TSmallintField;
    AccListQty2: TSmallintField;
    AccListUnit2: TSmallintField;
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
    AccListCouponIn: TIntegerField;
    AccListCouponOut: TIntegerField;
    AccListTelegramNum: TIntegerField;
    AccListShTyNm: TStringField;
    AccListArchiveF: TSmallintField;
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
    AccListFrgShip: TSmallintField;
    AccListQty3: TSmallintField;
    AccListTypeNm: TStringField;
    AccListLockNm: TStringField;
    AccListElecDays: TSmallintField;
    AccListRemainDays: TSmallintField;
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
    AccListCutF: TSmallintField;
    AccListNetDays: TIntegerField;
    AccListSabaOrLoc: TStringField;
    AccListCurrntF: TSmallintField;
    AccListDebitF: TSmallintField;
    AccListCurrDate: TDateField;
    AccListDailyCurr: TIntegerField;
    AccListLockCurr: TSmallintField;
    AccListClaimF: TSmallintField;
    AccListClaimDate: TDateField;
    AccListclaimNum: TIntegerField;
    DAccList: TDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
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
    SideQ: TUniQuery;
    SideQListNum: TIntegerField;
    SideQListType: TSmallintField;
    SideQListDate: TDateField;
    SideQTo: TSmallintField;
    SideQShipNum: TSmallintField;
    SideQArriveDate: TDateField;
    SideQEndEmpDate: TDateField;
    SideQGoodsDesc: TSmallintField;
    SideQGoodsQty: TFloatField;
    SideQShipBillNum: TSmallintField;
    SideQWeSpace: TFloatField;
    SideQTotal: TFloatField;
    SideQAdmisMet: TSmallintField;
    SideQStamp: TFloatField;
    SideQUnit: TSmallintField;
    SideQBillNum: TWideStringField;
    SideQloukof: TSmallintField;
    SideQToname: TWideStringField;
    SideQElectric: TSmallintField;
    SideQRemain: TSmallintField;
    SideQWight: TFloatField;
    SideQLocOrFor: TWideStringField;
    SideQPetrol: TSmallintField;
    SideQDirty: TSmallintField;
    SideQFTime1: TTimeField;
    SideQEndTime1: TTimeField;
    SideQMove1: TSmallintField;
    SideQFTime2: TTimeField;
    SideQEndTime2: TTimeField;
    SideQMove2: TSmallintField;
    SideQShipType: TSmallintField;
    SideQMezan: TSmallintField;
    SideQKemawea: TSmallintField;
    SideQFrg: TSmallintField;
    SideQTadl: TSmallintField;
    SideQFrgFlag: TSmallintField;
    SideQHjzFlag: TSmallintField;
    SideQTadlFlag: TSmallintField;
    SideQEdafe1: TSmallintField;
    SideQEdafe2: TSmallintField;
    SideQGoodsname: TWideStringField;
    SideQMoveall: TSmallintField;
    SideQMovV1: TFloatField;
    SideQMovV2: TFloatField;
    SideQElecQty: TSmallintField;
    SideQRemQty: TSmallintField;
    SideQLocWitOut: TSmallintField;
    SideQChechDate: TDateField;
    SideQMonth: TSmallintField;
    SideQCars: TSmallintField;
    SideQStates: TSmallintField;
    SideQQty2: TSmallintField;
    SideQUnit2: TSmallintField;
    SideQElecDate: TDateField;
    SideQRemDate: TDateField;
    SideQMezDate: TDateField;
    SideQRoafe: TSmallintField;
    SideQDama: TSmallintField;
    SideQTfteshCar: TSmallintField;
    SideQAttTo: TWideStringField;
    SideQLeverweight: TFloatField;
    SideQSaba: TSmallintField;
    SideQWeeksNum: TSmallintField;
    SideQStates1: TSmallintField;
    SideQStates2: TSmallintField;
    SideQDays: TSmallintField;
    SideQDaysM: TSmallintField;
    SideQEleeshDate: TDateField;
    SideQReshDate: TDateField;
    SideQDaysMM: TFloatField;
    SideQSapa: TSmallintField;
    SideQAutoDate: TDateField;
    SideQAginNm: TIntegerField;
    SideQF1Num: TSmallintField;
    SideQUser: TIntegerField;
    SideQDateTop: TDateField;
    SideQNumT: TIntegerField;
    SideQbarcade: TWideStringField;
    SideQArchiveF: TSmallintField;
    SideQHoursNum: TSmallintField;
    SideQCouponIn: TIntegerField;
    SideQCouponOut: TIntegerField;
    SideQTelegramNum: TIntegerField;
    SideQPaidF: TSmallintField;
    SideQUnitRsom: TSmallintField;
    SideQNum1: TSmallintField;
    SideQNum2: TSmallintField;
    SideQNum3: TSmallintField;
    SideQNum4: TSmallintField;
    SideQNum5: TSmallintField;
    SideQNum6: TSmallintField;
    SideQNum7: TSmallintField;
    SideQNum8: TSmallintField;
    SideQShipMet: TSmallintField;
    SideQReserve: TSmallintField;
    SideQFrgShip: TSmallintField;
    SideQQty3: TSmallintField;
    SideQBillNum2: TWideStringField;
    SideQAgNm: TStringField;
    SideQSubType: TSmallintField;
    SideQDelF: TSmallintField;
    SideQDelDate: TDateField;
    SideQboat: TSmallintField;
    SideQAgntR: TSmallintField;
    SideQSharedF: TSmallintField;
    SideQChemicalF: TSmallintField;
    SideQAlterBill: TIntegerField;
    SideQStampAbs: TFloatField;
    SideQNet: TFloatField;
    SideQListNumR: TIntegerField;
    SideQDailyNum: TIntegerField;
    SideQAttachNum: TIntegerField;
    SideQDisCount: TFloatField;
    SideQDelWhy: TWideStringField;
    SideQcutF: TSmallintField;
    FrSideQ: TfrxDBDataset;
    SidesAttach: TUniQuery;
    SidesAttachAccType: TIntegerField;
    SidesAttachListNum: TIntegerField;
    SidesAttachAttachNum: TIntegerField;
    SidesAttachListtype: TIntegerField;
    SidesAttachAttachDate: TDateField;
    SidesAttachAttachValue: TFloatField;
    SidesAttachMezan: TSmallintField;
    SidesAttachKias: TFloatField;
    SidesAttachQty: TFloatField;
    SidesAttachRemin: TSmallintField;
    SidesAttachElectric: TSmallintField;
    SidesAttachDate2: TDateField;
    SidesAttachDate3: TDateField;
    SidesAttachWeeksBef: TSmallintField;
    SidesAttachDate4: TDateField;
    SidesAttachWeight: TFloatField;
    SidesAttachUnit: TSmallintField;
    SidesAttachReminDays: TSmallintField;
    SidesAttachMet: TSmallintField;
    SidesAttachSt1: TSmallintField;
    SidesAttachSt2: TSmallintField;
    SidesAttachAddWeeks: TSmallintField;
    SidesAttachYyy: TIntegerField;
    SidesAttachDate22: TDateField;
    SidesAttachOasve: TWideStringField;
    SidesAttachPolesa: TWideStringField;
    SidesAttachAginNm: TSmallintField;
    SidesAttachbarcade: TWideStringField;
    SidesAttachUserNum: TSmallintField;
    SidesAttachToName: TWideStringField;
    SidesAttachStampAbs: TFloatField;
    SidesAttachLockF: TSmallintField;
    SidesAttachAttDaily: TIntegerField;
    AgTotalstampabs_1: TFloatField;
    AgTotalNTotal: TFloatField;
    AgTotalNStamp: TFloatField;
    SideQCurrntF: TSmallintField;
    SideQDebitF: TSmallintField;
    SideQCurrDate: TDateField;
    SideQDailyCurr: TIntegerField;
    SideQLockCurr: TSmallintField;
    SideQClaimF: TSmallintField;
    SideQClaimDate: TDateField;
    SideQClaimNum: TIntegerField;
    SideQMsrahname: TWideStringField;
    SideQphoneMsr: TWideStringField;
    SideQNTotal: TFloatField;
    SideQNStamp: TFloatField;
    SAccList11PaidNm: TStringField;
    SAttachPaidNm: TStringField;
    AcclistQ: TUniQuery;
    DAcclistQ: TDataSource;
    AcclistQlistnum: TIntegerField;
    AcclistQListType: TSmallintField;
    AcclistQToname: TWideStringField;
    AcclistQAginNm: TIntegerField;
    AcclistQTotal: TFloatField;
    AcclistQPaidF: TSmallintField;
    AcclistQPaidNm: TStringField;
    AcclistQTypeNm: TStringField;
    AcclistQNet: TFloatField;
    AcclistQStampNet: TFloatField;
    AcclistQdama: TSmallintField;
    AcclistQdiscount: TFloatField;
    AcclistQloukof: TSmallintField;
    AcclistQAgentNm: TStringField;
    AgTotaldama1: TFloatField;
    AgTotaldama: TSmallintField;
    Change_Type: TUniQuery;
    Funds: TUniTable;
    FundsrealRate: TFloatField;
    FundsAccType: TSmallintField;
    FundsAutoNum: TIntegerField;
    FundsMasNum: TIntegerField;
    FundsTgValue: TFloatField;
    FundsRuleValueM: TFloatField;
    FundsRuleValueAll: TFloatField;
    FundsTypeNm: TStringField;
    FundsCeadea: TBooleanField;
    Dfundsmas: TDataSource;
    FrFunds: TfrxDBDataset;
    fundsmas: TUniTable;
    fundsmasAutoNum: TIntegerField;
    fundsmasMonth_No: TSmallintField;
    fundsmasYear_No: TSmallintField;
    Dfunds: TDataSource;
    Sfunds: TUniTable;
    SfundsAutoNum: TIntegerField;
    SfundsMasNum: TIntegerField;
    SfundsAccType: TSmallintField;
    SfundsTgValue: TFloatField;
    SfundsRuleValueM: TFloatField;
    SfundsRuleValueAll: TFloatField;
    MonthBefErQ: TUniQuery;
    MonthBefErQsumaccdetacctotal: TFloatField;
    MonthBefErQacctype: TSmallintField;
    MonthBefErQlisttype: TSmallintField;
    FrMonthBefErQ: TfrxDBDataset;
    MonthErQ: TUniQuery;
    MonthErQsumaccdetacctotal: TFloatField;
    MonthErQacctype: TSmallintField;
    MonthErQlisttype: TSmallintField;
    MonthErQ2: TUniQuery;
    MonthErQ2sumaccdetacctotal: TFloatField;
    MonthErQ2acctype: TSmallintField;
    MonthErQ2listtype: TSmallintField;
    AttacBefQ: TUniQuery;
    AttacBefQacctype: TSmallintField;
    AttacBefQacctotal: TFloatField;
    AttacBefQlisttype: TIntegerField;
    AdmisMetEr: TUniQuery;
    AdmisMetErAccTotal: TFloatField;
    AdmisMetEradmismet: TSmallintField;
    AdmisMetEr2: TUniQuery;
    AdmisMetEr2AccTotal: TFloatField;
    AdmisMetEr2admismet: TSmallintField;
    AdmisMetAttach: TUniQuery;
    AdmisMetAttachacctotal: TFloatField;
    AdmisMetAttachmet: TSmallintField;
    AdmisDel: TUniQuery;
    AdmisDelAccTotal: TFloatField;
    AdmisDeladmismet: TSmallintField;
    EradDelQ: TUniQuery;
    EradDelQacctype: TSmallintField;
    EradDelQlisttype: TSmallintField;
    EradDelQAccTotal: TFloatField;
    EradAlterQ: TUniQuery;
    EradAlterQacctype: TSmallintField;
    EradAlterQlisttype: TSmallintField;
    EradAlterQAccTotal: TFloatField;
    EradAlterQAlterBill: TIntegerField;
    EradAlterQaccnum: TIntegerField;
    EradAlterQlistnum: TIntegerField;
    AlterQ1: TUniQuery;
    AlterQ1AccTotal: TFloatField;
    AlterQ1admismet: TSmallintField;
    AlterQ2: TUniQuery;
    AlterQ2AccTotal: TFloatField;
    AlterQ2admismet: TSmallintField;
    CeadeErQ: TUniQuery;
    CeadeErQruleValueAll: TFloatField;
    CeadeErQRuleValueM: TFloatField;
    CeadeErQTgValue: TFloatField;
    MezMas: TUniTable;
    MezMasYear_No: TSmallintField;
    MezDet: TUniTable;
    MezDetAutoNum: TIntegerField;
    MezDetYear_No: TSmallintField;
    MezDetInco_Value: TFloatField;
    MezDetInc_Num: TSmallintField;
    MezDetInc_Nm: TStringField;
    DMezMas: TDataSource;
    DMezDet: TDataSource;
    SumEradAll: TUniQuery;
    SumEradAllTgValue: TFloatField;
    SumEradAllRuleValueM: TFloatField;
    SumEradAllRuleValueAll: TFloatField;
    FrSumEradAll: TfrxDBDataset;
    SumErad: TUniQuery;
    SumEradTgValue: TFloatField;
    SumEradRuleValueM: TFloatField;
    SumEradRuleValueAll: TFloatField;
    FrSumErad: TfrxDBDataset;
    IncoEr: TUniTable;
    IncoErAccNum: TIntegerField;
    IncoErAccName: TWideStringField;
    DIncoEr: TDataSource;
    SAccList11FTime1: TTimeField;
    SAccList11EndTime1: TTimeField;
    SAccList11Move1: TSmallintField;
    SAccList11FTime2: TTimeField;
    SAccList11EndTime2: TTimeField;
    SAccList11Move2: TSmallintField;
    SAccList11Kemawea: TSmallintField;
    SAccList11Month: TSmallintField;
    SAccList11UnitRsom: TSmallintField;
    SAccList11DelF: TSmallintField;
    SAccList11CurrntF: TSmallintField;
    SAccList11DebitF: TSmallintField;
    SAccList11CurrDate: TDateField;
    SAccList11DailyCurr: TIntegerField;
    SAccList11LockCurr: TSmallintField;
    SAccList11ClaimF: TSmallintField;
    SAccList11ClaimDate: TDateField;
    SAccList11ClaimNum: TIntegerField;
    SAccList11Msrahname: TWideStringField;
    SAccList11phoneMsr: TWideStringField;
    SAccList11NTotal: TFloatField;
    SAccList11NStamp: TFloatField;
    SAccList11QRALL: TWideMemoField;
    SAccList11loadnum: TIntegerField;
    SAccList11Billloading: TIntegerField;
    SAccList11TotalD: TFloatField;
    SAccList11InvoiceD: TSmallintField;
    SAccList11NTotalD: TFloatField;
    SAccList11NStampD: TFloatField;
    SAccList11SubType2: TSmallintField;
    SAccList: TUniQuery;
    SAccListlistnum: TIntegerField;
    SAccListlisttype: TSmallintField;
    SAccListListDate: TDateField;
    SAccListShipNum: TSmallintField;
    SAccListArriveDate: TDateField;
    SAccListEndEmpDate: TDateField;
    SAccListGoodsDesc: TSmallintField;
    SAccListGoodsQty: TFloatField;
    SAccListShipBillNum: TSmallintField;
    SAccListWeSpace: TFloatField;
    SAccListTotal: TFloatField;
    SAccListAdmisMet: TSmallintField;
    SAccListStamp: TFloatField;
    SAccListUnit: TSmallintField;
    SAccListBillNum: TWideStringField;
    SAccListloukof: TSmallintField;
    SAccListToname: TWideStringField;
    SAccListElectric: TSmallintField;
    SAccListRemain: TSmallintField;
    SAccListWight: TFloatField;
    SAccListLocOrFor: TWideStringField;
    SAccListPetrol: TSmallintField;
    SAccListDirty: TSmallintField;
    SAccListFTime1: TTimeField;
    SAccListEndTime1: TTimeField;
    SAccListMove1: TSmallintField;
    SAccListFTime2: TTimeField;
    SAccListEndTime2: TTimeField;
    SAccListMove2: TSmallintField;
    SAccListShipType: TSmallintField;
    SAccListMezan: TSmallintField;
    SAccListKemawea: TSmallintField;
    SAccListFrg: TSmallintField;
    SAccListTadl: TSmallintField;
    SAccListFrgFlag: TSmallintField;
    SAccListHjzFlag: TSmallintField;
    SAccListTadlFlag: TSmallintField;
    SAccListEdafe1: TSmallintField;
    SAccListEdafe2: TSmallintField;
    SAccListGoodsname: TWideStringField;
    SAccListMoveall: TSmallintField;
    SAccListMovV1: TFloatField;
    SAccListMovV2: TFloatField;
    SAccListLocWitOut: TSmallintField;
    SAccListChechDate: TDateField;
    SAccListMonth: TSmallintField;
    SAccListCars: TSmallintField;
    SAccListStates: TSmallintField;
    SAccListQty2: TSmallintField;
    SAccListUnit2: TSmallintField;
    SAccListElecDate: TDateField;
    SAccListRemDate: TDateField;
    SAccListMezDate: TDateField;
    SAccListRoafe: TSmallintField;
    SAccListDama: TSmallintField;
    SAccListTfteshCar: TSmallintField;
    SAccListAttTo: TWideStringField;
    SAccListLeverweight: TFloatField;
    SAccListSaba: TSmallintField;
    SAccListWeeksNum: TSmallintField;
    SAccListStates1: TSmallintField;
    SAccListStates2: TSmallintField;
    SAccListDays: TSmallintField;
    SAccListDaysM: TSmallintField;
    SAccListEleeshDate: TDateField;
    SAccListReshDate: TDateField;
    SAccListDaysMM: TFloatField;
    SAccListSapa: TSmallintField;
    SAccListAutoDate: TDateField;
    SAccListAginNm: TIntegerField;
    SAccListF1Num: TSmallintField;
    SAccListUser: TIntegerField;
    SAccListDateTop: TDateField;
    SAccListNumT: TIntegerField;
    SAccListbarcade: TWideStringField;
    SAccListarchiveF: TShortintField;
    SAccListHoursNum: TSmallintField;
    SAccListcouponIn: TIntegerField;
    SAccListcouponOut: TIntegerField;
    SAccListTelegramNum: TIntegerField;
    SAccListPaidF: TSmallintField;
    SAccListUnitRsom: TSmallintField;
    SAccListNum1: TSmallintField;
    SAccListNum2: TSmallintField;
    SAccListNum3: TSmallintField;
    SAccListNum4: TSmallintField;
    SAccListNum5: TSmallintField;
    SAccListNum6: TSmallintField;
    SAccListNum7: TSmallintField;
    SAccListNum8: TSmallintField;
    SAccListShipMet: TSmallintField;
    SAccListReserve: TSmallintField;
    SAccListFrgShip: TSmallintField;
    SAccListQty3: TSmallintField;
    SAccListBillNum2: TWideStringField;
    SAccListSubType: TSmallintField;
    SAccListDelF: TSmallintField;
    SAccListDelDate: TDateField;
    SAccListboat: TSmallintField;
    SAccListAgntR: TSmallintField;
    SAccListSharedF: TSmallintField;
    SAccListChemicalF: TSmallintField;
    SAccListAlterBill: TIntegerField;
    SAccListStampAbs: TFloatField;
    SAccListListNumR: TIntegerField;
    SAccListDailyNum: TIntegerField;
    SAccListAttachNum: TIntegerField;
    SAccListDisCount: TFloatField;
    SAccListDelWhy: TWideStringField;
    SAccListcutF: TSmallintField;
    SAccListCurrntF: TSmallintField;
    SAccListDebitF: TSmallintField;
    SAccListCurrDate: TDateField;
    SAccListDailyCurr: TIntegerField;
    SAccListLockCurr: TSmallintField;
    SAccListClaimF: TSmallintField;
    SAccListClaimDate: TDateField;
    SAccListClaimNum: TIntegerField;
    SAccListMsrahname: TWideStringField;
    SAccListphoneMsr: TWideStringField;
    SAccListNTotal: TFloatField;
    SAccListNStamp: TFloatField;
    SAccListQRALL: TWideMemoField;
    SAccListloadnum: TIntegerField;
    SAccListBillloading: TIntegerField;
    SAccListTotalD: TFloatField;
    SAccListInvoiceD: TSmallintField;
    SAccListNTotalD: TFloatField;
    SAccListNStampD: TFloatField;
    SAccListTo: TSmallintField;
    SAccListElecQty: TSmallintField;
    SAccListRemQty: TSmallintField;
    SAccListDollarPrice: TFloatField;
    SAccListEx_Price: TFloatField;
    SAccListSubType2: TSmallintField;
    SAccListshared_usefork: TSmallintField;
    SAccListPaidNm: TStringField;
    SAccListTypeNm: TStringField;
    SAccListStampnet: TFloatField;
    SAccListNet: TFloatField;
    QueryAlldama: TSmallintField;
    QueryAllstampNet: TFloatField;
    QueryAlldiscount: TFloatField;
    KshfMlhgstampflag: TSmallintField;
    KshfMlhg1stampflag: TSmallintField;
    procedure VDateHrakCalcFields(DataSet: TDataSet);
    procedure KshfSumQCalcFields(DataSet: TDataSet);
    procedure KshfDelSumQCalcFields(DataSet: TDataSet);
    procedure AlterQCalcFields(DataSet: TDataSet);
    procedure KshfDelQCalcFields(DataSet: TDataSet);
    procedure KshfQ4CalcFields(DataSet: TDataSet);
    procedure KshfQCalcFields(DataSet: TDataSet);
    procedure KshfQ2CalcFields(DataSet: TDataSet);
    procedure KshfRsomCalcFields(DataSet: TDataSet);
    procedure KshfRsomMCalcFields(DataSet: TDataSet);
    procedure KshfQ3CalcFields(DataSet: TDataSet);
    procedure ListsQCalcFields(DataSet: TDataSet);
    procedure ListsAllQCalcFields(DataSet: TDataSet);
    procedure KshfSumAttachQCalcFields(DataSet: TDataSet);
    procedure Q1SumACalcFields(DataSet: TDataSet);
    procedure AccListCalcFields(DataSet: TDataSet);
    procedure SAttachCalcFields(DataSet: TDataSet);
    procedure AccListAfterPost(DataSet: TDataSet);
    procedure AccListBeforeEdit(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure AcclistQCalcFields(DataSet: TDataSet);
    procedure SAccListCalcFields(DataSet: TDataSet);
    procedure QueryAllCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmd2Fm: TDmd2Fm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AcListUn, AiiradatUn, Attach2Un, Attach3Un, AttachUn, BillSrUn, Dervr6Un,
  Dervr7Un, DirectDeliveryUn, EfrajUn, HatkaUn, LocalAgantUn, LstDetUn, MainUn,
  PermUn, ShipUn, SplashUn, SrchShUn, SrchUn, SubSrcUn, UFEnterPass,
  VDateHrakUn, VdateHUn, DmdUm;

{$R *.dfm}

procedure TDmd2Fm.AccListAfterPost(DataSet: TDataSet);
begin
  DmdFm.Vaccdet.First;
  while not  DmdFm.Vaccdet.Eof do
  begin
    DmdFm.Vaccdet.Edit;
    DmdFm.vaccdetListType.Value := Dmd2Fm.AccListListType.Value;
    DmdFm.Vaccdet.Post;

    DmdFm.Vaccdet.Next;
  end;
end;

procedure TDmd2Fm.AccListBeforeEdit(DataSet: TDataSet);
begin
//  DmdFm.AccList.Close;
//  DmdFm.AccList.ParamByName('VNum').Value := Dmd2Fm.AccListListNum.Value;
//  DmdFm.AccList.ParamByName('Vtype').Value := Dmd2Fm.AccListListType.Value;
//  DmdFm.AccList.Execute;

  DmdFm.Vaccdet.Close;
  DmdFm.Vaccdet.ParamByName('VNum').Value := Dmd2Fm.AccListListNum.Value;
  DmdFm.Vaccdet.ParamByName('Vtype').Value := Dmd2Fm.AccListListType.Value;
  DmdFm.Vaccdet.Execute;

end;

procedure TDmd2Fm.AccListCalcFields(DataSet: TDataSet);
var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr, hours, DaysNum, hours2: Real;
  w, di, DaysH, HoursH: Smallint;
  t: TTime;
  h, M, se, ss, h2, m2, s2, ss2, day, month, year, day1, month1, year1: Word;
begin
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
end;

procedure TDmd2Fm.AcclistQCalcFields(DataSet: TDataSet);
var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr: Real;
begin

  if AccListQPaidF.Value = 1 then
    AccListQPaidNm.Value := '„”œœ…'
  else
    AccListQPaidNm.Value := '€Ì— „”œœ…';

  case AccListQListType.Value of
    1:
      AccListQTypeNm.Value := '‰ﬁœÌ';
    2:
      AccListQTypeNm.Value := 'Ã«—Ì';
    3:
      AccListQTypeNm.Value := '—”Ê„';
    4:
      AccListQTypeNm.Value := '‘Õ‰ ‰ﬁœÌ';
    5:
      AccListQTypeNm.Value := 'Ã«—Ì';
    6:
      AccListQTypeNm.Value := '‘Õ‰ ‰ﬁœÌ Ã«—Ì';
    7:
      AccListQTypeNm.Value := 'Ã«—Ì';
  end;

  { -------------Õ”«» «·œ„€…----------------- }
  if AccListQDama.Value = 0 then
  begin
    f := int(AccListQTotal.Value * 0.005);
    g := (AccListQTotal.Value * 0.005) - f;

    if (g = 0.500) or (g = 0.000) then
      AccListQStampNet.Value := (AccListQTotal.Value * 0.005)
    else if g < 0.500 then
      AccListQStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      AccListQStampNet.Value := (f + 1);

    { c:=int(AccListTotal.Value*accListStamp.Value);

      e:=(AccListTotal.Value*accListStamp.Value)-c;

      if e = 0.500 then
      AccListNet.Value:=c
      else if e < 0.500 then
      AccListNet.Value:=(AccListTotal.Value+(c+0.500))
      else if e > 0.500 then
      AccListNet.Value:=(AccListTotal.Value+(c+1)); }
    AccListQNet.Value :=
      (AccListQTotal.Value - (AccListQTotal.Value * AccListQDisCount.Value)) +
      AccListQStampNet.Value;
  end
  else
  begin
    // c:=int(AccListTotal.Value);
    // e:=(AccListTotal.Value)-c;
    // if e < 0.500 then
    // AccListNet.Value:=(c+0.500)
    // else
    AccListQNet.Value :=
      (AccListQTotal.Value - (AccListQTotal.Value * AccListQDisCount.Value));
  end;

end;

procedure TDmd2Fm.AlterQCalcFields(DataSet: TDataSet);
var
  f, g: Real;
begin
  if AlterQDama.Value = 0 then
  begin
    f := int(AlterQTotal.Value * 0.005);
    g := (AlterQTotal.Value * 0.005) - f;
    if (g = 0.500) or (g = 0.000) then
      AlterQStampNet.Value := (AlterQTotal.Value * 0.005)
    else if g < 0.500 then
      AlterQStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      AlterQStampNet.Value := (f + 1);
    AlterQnet.Value :=
      (AlterQTotal.Value - (AlterQTotal.Value * AlterQDisCount.Value / 100)) +
      AlterQStampNet.Value;
  end
  else
  begin
    AlterQnet.Value :=
      (AlterQTotal.Value - (AlterQTotal.Value * AlterQDisCount.Value / 100));
  end;

end;

procedure TDmd2Fm.DataModuleCreate(Sender: TObject);
begin
  Dmd2Fm.AccList.Open;
end;

procedure TDmd2Fm.KshfDelQCalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(KshfDelQTotal.Value * KshfDelQAccValue.Value);
  g := (KshfDelQTotal.Value * KshfDelQAccValue.Value) - f;
  if g < 0.500 then
    KshfDelQStampNet.Value := (f + 0.500)
  else
    KshfDelQStampNet.Value := (f + 1);
  c := int(KshfDelQTotal.Value * KshfDelQAccValue.Value);
  e := (KshfDelQTotal.Value * KshfDelQAccValue.Value) - c;
  if e < 0.500 then
    KshfDelQNet.Value := (KshfDelQTotal.Value + (c + 0.500))
  else
    KshfDelQNet.Value := (KshfDelQTotal.Value + (c + 1));

end;

procedure TDmd2Fm.KshfDelSumQCalcFields(DataSet: TDataSet);
var
  f, g: Real;
begin
  if Dmd2Fm.KshfDelSumQdama.Value = 0 then
  begin
    f := int(Dmd2Fm.KshfDelSumQtotal.Value * 0.005);
    g := (Dmd2Fm.KshfDelSumQtotal.Value * 0.005) - f;
    if (g = 0.500) or (g = 0.000) then
      Dmd2Fm.KshfDelSumQStampNet.Value :=
        (Dmd2Fm.KshfDelSumQtotal.Value * 0.005)
    else if g < 0.500 then
      Dmd2Fm.KshfDelSumQStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      Dmd2Fm.KshfDelSumQStampNet.Value := (f + 1);
    Dmd2Fm.KshfDelSumQNet.Value := Dmd2Fm.KshfDelSumQtotal.Value +
      Dmd2Fm.KshfDelSumQStampNet.Value;
  end
  else
  begin
    Dmd2Fm.KshfDelSumQNet.Value := Dmd2Fm.KshfDelSumQtotal.Value;
  end;

end;

procedure TDmd2Fm.KshfQ2CalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(KshfQ2Total.Value * KshfQ2AccValue.Value);
  g := (KshfQ2Total.Value * KshfQ2AccValue.Value) - f;
  if g < 0.500 then
    KshfQ2StampNet.Value := (f + 0.500)
  else
    KshfQ2StampNet.Value := (f + 1);
  c := int(KshfQ2Total.Value * KshfQ2AccValue.Value);
  e := (KshfQ2Total.Value * KshfQ2AccValue.Value) - c;
  if e < 0.500 then
    KshfQ2Net.Value := (KshfQ2Total.Value + (c + 0.500))
  else
    KshfQ2Net.Value := (KshfQ2Total.Value + (c + 1));

  // KshfQNet.Value:=KshfQTotal.Value+(KshfQTotal.Value*KshfQStamp.Value);

end;

procedure TDmd2Fm.KshfQ3CalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(KshfQ3Total.Value * KshfQ3AccValue.Value);
  g := (KshfQ3Total.Value * KshfQ3AccValue.Value) - f;
  if g < 0.500 then
    KshfQ3StampNet.Value := (f + 0.500)
  else
    KshfQ3StampNet.Value := (f + 1);
  c := int(KshfQ3Total.Value * KshfQ3AccValue.Value);
  e := (KshfQ3Total.Value * KshfQ3AccValue.Value) - c;
  if e < 0.500 then
    KshfQ3Net.Value := (KshfQ3Total.Value + (c + 0.500))
  else
    KshfQ3Net.Value := (KshfQ3Total.Value + (c + 1));

  // KshfQNet.Value:=KshfQTotal.Value+(KshfQTotal.Value*KshfQStamp.Value);

end;

procedure TDmd2Fm.KshfQ4CalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(KshfQ4Total.Value * KshfQ4AccValue.Value);
  g := (KshfQ4Total.Value * KshfQ4AccValue.Value) - f;
  if g < 0.500 then
    KshfQ4StampNet.Value := (f + 0.500)
  else
    KshfQ4StampNet.Value := (f + 1);
  c := int(KshfQ4Total.Value * KshfQ4AccValue.Value);
  e := (KshfQ4Total.Value * KshfQ4AccValue.Value) - c;
  if e < 0.500 then
    KshfQ4Net.Value := (KshfQ4Total.Value + (c + 0.500))
  else
    KshfQ4Net.Value := (KshfQ4Total.Value + (c + 1));

  // KshfQNet.Value:=KshfQTotal.Value+(KshfQTotal.Value*KshfQStamp.Value);

end;

procedure TDmd2Fm.KshfQCalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(KshfQTotal.Value * KshfQAccValue.Value);
  g := (KshfQTotal.Value * KshfQAccValue.Value) - f;
  if g < 0.500 then
    KshfQStampNet.Value := (f + 0.500)
  else
    KshfQStampNet.Value := (f + 1);
  c := int(KshfQTotal.Value * KshfQAccValue.Value);
  e := (KshfQTotal.Value * KshfQAccValue.Value) - c;
  if e < 0.500 then
    KshfQNet.Value := (KshfQTotal.Value + (c + 0.500))
  else
    KshfQNet.Value := (KshfQTotal.Value + (c + 1));

  // KshfQNet.Value := KshfQTotal.Value + (KshfQTotal.Value * KshfQStamp.Value);
end;

procedure TDmd2Fm.KshfRsomCalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  DmdFm.Ships.Locate('Num', KshfRsomShipNum.Value, []);
  if DmdFm.ShipsShipType.Value = 0 then
    KshfRsomShipNm.Value := '„Õ·Ì…'
  else
    KshfRsomShipNm.Value := '√Ã‰»Ì…';

  { -------------Õ”«» «·œ„€…----------------- }

  f := int(KshfRsomTotal.Value * KshfRsomStamp.Value);
  g := (KshfRsomTotal.Value * KshfRsomStamp.Value) - f;
  if g < 0.500 then
    KshfRsomStampNet.Value := (f + 0.500)
  else
    KshfRsomStampNet.Value := (f + 1);
  c := int(KshfRsomTotal.Value * KshfRsomStamp.Value);
  e := (KshfRsomTotal.Value * KshfRsomStamp.Value) - c;
  if e < 0.500 then
    KshfRsomNet.Value := (KshfRsomTotal.Value + (c + 0.500))
  else
    KshfRsomNet.Value := (KshfRsomTotal.Value + (c + 1));

end;

procedure TDmd2Fm.KshfRsomMCalcFields(DataSet: TDataSet);
var
  f, g, c, e: Real;
begin
  KshfRsomMMonthNm.Value := '«·‘Â—';
  { -------------Õ”«» «·œ„€…----------------- }
  f := int(KshfRsomMTotal.Value * KshfRsomMStamp.Value);
  g := (KshfRsomMTotal.Value * KshfRsomMStamp.Value) - f;
  if g < 0.500 then
    KshfRsomMStampNet.Value := (f + 0.500)
  else
    KshfRsomMStampNet.Value := (f + 1);
  c := int(KshfRsomMTotal.Value * KshfRsomMStamp.Value);
  e := (KshfRsomMTotal.Value * KshfRsomMStamp.Value) - c;
  if e < 0.500 then
    KshfRsomMNet.Value := (KshfRsomMTotal.Value + (c + 0.500))
  else
    KshfRsomMNet.Value := (KshfRsomMTotal.Value + (c + 1));

end;

procedure TDmd2Fm.KshfSumAttachQCalcFields(DataSet: TDataSet);
var
  f, g: Real;
begin
  f := int(KshfSumAttachQattachvalue.Value * KshfSumAttachQstamp.Value);
  g := (KshfSumAttachQattachvalue.Value * KshfSumAttachQstamp.Value) - f;
  if g < 0.500 then
    KshfSumAttachQStampNet.Value := (f + 0.500)
  else
    KshfSumAttachQStampNet.Value := (f + 1);

  Dmd2Fm.KshfSumAttachQNet.Value := Dmd2Fm.KshfSumAttachQattachvalue.Value +
    Dmd2Fm.KshfSumAttachQStampNet.Value;

end;

procedure TDmd2Fm.KshfSumQCalcFields(DataSet: TDataSet);
var
  f, g: Real;
begin
  if Dmd2Fm.KshfSumQdama.Value = 0 then
  begin
    f := int(Dmd2Fm.KshfSumQtotal.Value * 0.005);
    g := (Dmd2Fm.KshfSumQtotal.Value * 0.005) - f;
    if (g = 0.500) or (g = 0.000) then
      Dmd2Fm.KshfSumQStampNet.Value := (Dmd2Fm.KshfSumQtotal.Value * 0.005)
    else if g < 0.500 then
      Dmd2Fm.KshfSumQStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      Dmd2Fm.KshfSumQStampNet.Value := (f + 1);
    Dmd2Fm.KshfSumQNet.Value := Dmd2Fm.KshfSumQtotal.Value +
      Dmd2Fm.KshfSumQstampabs.Value;
  end
  else
  begin
    Dmd2Fm.KshfSumQNet.Value := Dmd2Fm.KshfSumQtotal.Value;
  end;

end;

procedure TDmd2Fm.ListsAllQCalcFields(DataSet: TDataSet);
var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr: Real;
  w, di: Smallint;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(ListsAllQAccTotal.Value * ListsAllQStamp.Value);
  g := (ListsAllQAccTotal.Value * ListsAllQStamp.Value) - f;
  if g < 0.500 then
    ListsAllQStampNet.Value := (f + 0.500)
  else
    ListsAllQStampNet.Value := (f + 1);
  c := int(ListsAllQAccTotal.Value * ListsAllQStamp.Value);
  e := (ListsAllQAccTotal.Value * ListsAllQStamp.Value) - c;
  if e < 0.500 then
    ListsAllQNet.Value := (ListsAllQAccTotal.Value + (c + 0.500))
  else
    ListsAllQNet.Value := (ListsAllQAccTotal.Value + (c + 1));

  case ListsAllQListType.Value of
    1:
      ListsAllQTypeNm.Value := '„‰«Ê·… - ‰ﬁœÌ';
    2:
      ListsAllQTypeNm.Value := '„‰«Ê·… - Ã«—Ì';
    3:
      ListsAllQTypeNm.Value := '—”Ê„';
  end;

end;

procedure TDmd2Fm.ListsQCalcFields(DataSet: TDataSet);
var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr: Real;
  w, di: Smallint;
begin
  { -------------Õ”«» «·œ„€…----------------- }

  f := int(ListsQTotal.Value * ListsQStamp.Value);
  g := (ListsQTotal.Value * ListsQStamp.Value) - f;
  if g < 0.500 then
    ListsQStampNet.Value := (f + 0.500)
  else
    ListsQStampNet.Value := (f + 1);
  c := int(ListsQTotal.Value * ListsQStamp.Value);
  e := (ListsQTotal.Value * ListsQStamp.Value) - c;
  if e < 0.500 then
    ListsQNet.Value := (ListsQTotal.Value + (c + 0.500))
  else
    ListsQNet.Value := (ListsQTotal.Value + (c + 1));

  case ListsQListType.Value of
    1:
      ListsQTypeNm.Value := '„‰«Ê·… - ‰ﬁœÌ';
    2:
      ListsQTypeNm.Value := '„‰«Ê·… - Ã«—Ì';
    3:
      ListsQTypeNm.Value := '—”Ê„';
  end;
end;

procedure TDmd2Fm.Q1SumACalcFields(DataSet: TDataSet);
begin

  case Dmd2Fm.Q1SumASup.Value of
    1:
      Dmd2Fm.Q1SumASupNm.Value := '„Õ·Ì';
    2:
      Dmd2Fm.Q1SumASupNm.Value := '’⁄»…';
  end;
end;

procedure TDmd2Fm.QueryAllCalcFields(DataSet: TDataSet);
var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr, hours, DaysNum, hours2: Real;
  w, di, DaysH, HoursH: Smallint;
  t: TTime;
  h, M, se, ss, h2, m2, s2, ss2, day, month, year, day1, month1, year1: Word;
begin
 { -------------Õ”«» «·œ„€…----------------- }
  if QueryAllDama.Value = 0 then
  begin
    f := int(QueryAllTotal.Value * 0.005);
    g := (QueryAllTotal.Value * 0.005) - f;
    if (g = 0.500) or (g = 0.000) then
      QueryAllStampNet.Value := (QueryAllTotal.Value * 0.005)
    else if g < 0.500 then
      QueryAllStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      QueryAllStampNet.Value := (f + 1);
    QueryAllNet.Value :=
      (QueryAllTotal.Value - (QueryAllTotal.Value * QueryAllDisCount.Value / 100))
      + QueryAllStampNet.Value;
  end
  else
  begin
    QueryAllNet.Value :=
      (QueryAllTotal.Value - (QueryAllTotal.Value * QueryAllDisCount.Value / 100));
  end;
end;

procedure TDmd2Fm.SAccListCalcFields(DataSet: TDataSet);

var
  a, b, R, s, d, dr, da: string;
  c, e, f, g, safe, Drive, dd, rr: Real;
begin
  if SAccListPaidF.Value = 1 then
    SAccListPaidNm.Value := '„”œœ…'
  else
    SAccListPaidNm.Value := '€Ì— „”œœ…';

  case SAccListListType.Value of
    1:
      SAccListTypeNm.Value := '‰ﬁœÌ';
    2:
      SAccListTypeNm.Value := 'Ã«—Ì';
    3:
      SAccListTypeNm.Value := '—”Ê„';
    4:
      SAccListTypeNm.Value := '‘Õ‰ ‰ﬁœÌ';
    5:
      SAccListTypeNm.Value := 'Ã«—Ì';
    6:
      SAccListTypeNm.Value := '‘Õ‰ ‰ﬁœÌ Ã«—Ì';
    7:
      SAccListTypeNm.Value := 'Ã«—Ì';
  end;

  { -------------Õ”«» «·œ„€…----------------- }
  if sAccListDama.Value = 0 then
  begin
    f := int(SAccListTotal.Value * 0.005);
    g := (SAccListTotal.Value * 0.005) - f;

    if (g = 0.500) or (g = 0.000) then
      SAccListStampNet.Value := (SAccListTotal.Value * 0.005)
    else if g < 0.500 then
      SAccListStampNet.Value := (f + 0.500)
    else if g > 0.500 then
      SAccListStampNet.Value := (f + 1);


    SAccListNet.Value :=
      (SAccListTotal.Value - (AccListTotal.Value * AccListDisCount.Value)) +
      SAccListStampNet.Value;
  end
  else
  begin
   
    SAccListNet.Value :=
      (SAccListTotal.Value - (AccListTotal.Value * AccListDisCount.Value));
  end;

end;

procedure TDmd2Fm.SAttachCalcFields(DataSet: TDataSet);
begin
  SAttachNet.Value := (SAttachAttachValue.Value + SAttachStampAbs.Value)    ;
  if  SAttachPaidF.Value = 0 then
    SAttachPaidNm.Value := '„”œœ'
  else
    SAttachPaidNm.Value := '€Ì— „”œœ';
end;

procedure TDmd2Fm.VDateHrakCalcFields(DataSet: TDataSet);
begin
  if VDateHrakShipMet.Value = 0 then
    VDateHrakMetNm.Value := '·«Ì‰—'
  else
    VDateHrakMetNm.Value := '›ÌÊ”';

  if VDateHrakMixedF.Value = 1 then
    VDateHrakMixedNm.Value := '„Œ ·ÿ…'
  else
    VDateHrakMixedNm.Value := '' ;


end;

end.
