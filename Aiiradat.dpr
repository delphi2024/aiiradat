program Aiiradat;

uses
  LMDFullVersion,
  Forms,
  sysutils,
  AiiradatUn in 'AiiradatUn.pas' {AiiradatFm},
  MainUn in 'MainUn.pas' {MainFm},
  Dervr6Un in 'Dervr6Un.pas' {Dervr6Fm},
  Dervr7Un in 'Dervr7Un.pas' {Dervr7Fm},
  DirectDeliveryUn in 'DirectDeliveryUn.pas' {DirectDeliveryFm},
  SplashUn in 'SplashUn.pas' {SplashFm},
  SrchUn in 'SrchUn.pas' {SrchFm},
  SubSrcUn in 'SubSrcUn.pas' {SubSrchFm},
  HatkaUn in 'HatkaUn.pas' {HatkaFm},
  AcListUn in 'AcListUn.pas' {AcListFm},
  LstDetUn in 'LstDetUn.pas' {LstDetFm},
  LocalAgantUn in 'LocalAgantUn.pas' {LocalAgantFm},
  Attach2Un in 'Attach2Un.pas' {Attach2Fm},
  AttachUn in 'AttachUn.pas' {AttachFm},
  Attach3Un in 'Attach3Un.pas' {Attach3Fm},
  EfrajUn in 'EfrajUn.pas' {EfrajFm},
  ShipUn in 'ShipUn.pas' {ShipFm},
  SrchShUn in 'SrchShUn.pas' {SrchShFm},
  VdateHUn in 'VdateHUn.pas' {VdateHFM},
  VDateHrakUn in 'VDateHrakUn.pas' {VDateHrakFM},
  Dmd2Un in 'Dmd2Un.pas' {Dmd2Fm: TDataModule},
  DmdUm in 'DmdUm.pas' {DmdFm: TDataModule},
  UFEnterPass in 'UFEnterPass.pas' {FEnterPass},
  BillSrUn in 'BillSrUn.pas' {BillSrFm},
  AgentUn in 'AgentUn.pas' {AgentFm},
  ListShUn in 'ListShUn.pas' {ListShFm},
  DlyViewU in 'DlyViewU.pas' {DlyViewF},
  CloseUn in 'CloseUn.pas' {CloseFm},
  ViewUn in 'ViewUn.pas' {ViewFm},
  CarryUn in 'CarryUn.pas' {CarryFm},
  UnlockUn in 'UnlockUn.pas' {UnlockFm},
  IncoEnterUn in 'IncoEnterUn.pas' {IncoEnterFm},
  HelpUn in 'HelpUn.pas' {HelpFm},
  AngSerUn in 'AngSerUn.pas' {AngSerFm},
  EINCmUn in 'EINCmUn.pas' {EINCmFM},
  IncoSEnterUn in 'IncoSEnterUn.pas' {IncoSEnterFm},
  IncoKEnterUn in 'IncoKEnterUn.pas' {IncoKEnterFm},
  ServSerUn in 'ServSerUn.pas' {ServSerFm},
  BillloadUn in 'BillloadUn.pas' {BillloadFm},
  DelLstUn in 'DelLstUn.pas' {DelLstFm},
  PermUn in 'PermUn.pas' {PermFm},
  RepUn in 'RepUn.pas' {RepFm},
  SearchUn in 'SearchUn.pas' {SearchFm},
  ReviewUn in 'ReviewUn.pas' {ReviewFm},
  ReturnedUn in 'ReturnedUn.pas' {ReturnedFm},
  FundsUn in 'FundsUn.pas' {FundsFm},
  EradUn in 'EradUn.pas' {EradFm},
  MezUn in 'MezUn.pas' {MezFm},
  PeakUn in 'PeakUn.pas' {PeakFm},
  AddAttachUnitUn in 'AddAttachUnitUn.pas' {AddAttachUnitFm},
  AddUnitUn in 'AddUnitUn.pas' {AddUnitFm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
    //ReportMemoryLeaksOnShutdown:=true; {leak memory}
  Application.Initialize;
  Application.Title := '‰Ÿ«„ «·≈Ì—œ« ';
  SplashFm := TSplashFm.Create(Application);
  try
    SplashFm.Show;
    Application.Initialize;
    SplashFm.Update;

   Sleep(100); // Or a delay command. }

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFEnterPass, FEnterPass);
  Application.CreateForm(TMainFm, MainFm);
  Application.CreateForm(TDmdFm, DmdFm);
  Application.CreateForm(TVDateHrakFM, VDateHrakFM);
  Application.CreateForm(THatkaFm, HatkaFm);
  Application.CreateForm(TIncoEnterFm, IncoEnterFm);
  Application.CreateForm(TDmd2Fm, Dmd2Fm);
  Application.CreateForm(TAngSerFm, AngSerFm);
  Application.CreateForm(TEINCmFM, EINCmFM);
  Application.CreateForm(TIncoSEnterFm, IncoSEnterFm);
  Application.CreateForm(TIncoKEnterFm, IncoKEnterFm);
  Application.CreateForm(TServSerFm, ServSerFm);
  Application.CreateForm(TBillloadFm, BillloadFm);
  Application.CreateForm(TDelLstFm, DelLstFm);
  Application.CreateForm(TPermFm, PermFm);
  Application.CreateForm(TRepFm, RepFm);
  Application.CreateForm(TRepFm, RepFm);
  Application.CreateForm(TReturnedFm, ReturnedFm);
  Application.CreateForm(TFundsFm, FundsFm);
  Application.CreateForm(TEradFm, EradFm);
  Application.CreateForm(TMezFm, MezFm);
  Application.CreateForm(TAddAttachUnitFm, AddAttachUnitFm);
  Application.CreateForm(TAddUnitFm, AddUnitFm);
  Application.CreateForm(TAddUnitFm, AddUnitFm);
  SplashFm.sProgressBar1.StepIt;

  SplashFm.sProgressBar1.StepIt;


    SplashFm.Hide;
 finally
   SplashFm.Free;
 end;

  Application.Run;
end.
