unit FineUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ToolWin, ComCtrls, Mask, DBCtrls,
  Grids, DBGrids, DBActns, ActnList, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDFill,db, lmdstdcA,
  LMDCustomButton, LMDDockButton,dateutils, sPanel, sLabel, sSpeedButton,IniFiles;

type
  TFineFm = class(TForm)
    CoolBar1: TCoolBar;
    Panel2: TPanel;
    Label17: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn13: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Shape1: TShape;
    LMDFill1: TLMDFill;
    Label22: TLabel;
    DBText6: TDBText;
    Label23: TLabel;
    DBText7: TDBText;
    Label24: TLabel;
    DBText8: TDBText;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    DBEdit8: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Shape5: TShape;
    BitBtn14: TBitBtn;
    DBText12: TDBText;
    DBText13: TDBText;
    Label28: TLabel;
    Label29: TLabel;
    DBText14: TDBText;
    LMDFill2: TLMDFill;
    DBText15: TDBText;
    Label30: TLabel;
    Label27: TLabel;
    DBEdit15: TDBEdit;
    Label33: TLabel;
    DBEdit17: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label7: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    sPanel1: TsPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    sPanel2: TsPanel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    DBEdit21: TDBEdit;
    sPanel3: TsPanel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label39: TLabel;
    DBEdit25: TDBEdit;
    DBEdit27: TDBEdit;
    Label41: TLabel;
    sPanel4: TsPanel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit31: TDBEdit;
    Label46: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    sPanel5: TsPanel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label34: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit32: TDBEdit;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit33: TDBEdit;
    Label52: TLabel;
    DBEdit34: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    sPanel6: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    sLabel4: TsLabel;
    DBNavigator1: TDBNavigator;
    DBEdit39: TDBEdit;
    sLabel5: TsLabel;
    BitBtn15: TBitBtn;
    DBEdit40: TDBEdit;
    Label32: TLabel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    BitBtn16: TBitBtn;
    DBText2: TDBText;
    Label40: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    Label53: TLabel;
    sSpeedButton10: TsSpeedButton;
    Label42: TLabel;
    DBEdit3: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit28: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    procedure rsom;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure ArrFTimeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn15Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
    procedure sSpeedButton7Click(Sender: TObject);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure sSpeedButton9Click(Sender: TObject);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn16Click(Sender: TObject);
    procedure sSpeedButton10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FineFm: TFineFm;
  HoursEx:Smallint;
implementation

uses DmdUn, RepUn, MoveUn, RateUn, MainUn, LocalAgantUn;

{$R *.dfm}

{-------------------------}
procedure TFineFm.rsom;
  var h,m,s,ss,h1,m1,s1,ss1:word;
  hoursall,hours,MoveNum,daysNum:smallint;
  sumForce:real;{«·«÷ÿ—«—Ì}
begin
with DmdFm do
begin
//if (((not AccListEndEmpDate.IsNull)and(Not HourOf(AccListFTime1.IsNull)and(Not AccListFTime2.IsNull))and(AccListListType.Value=3))or(crefine=1)then
begin
AccDet.Locate('AccType',32,[]);
AccDet.Edit;
AccDetAccTotal.Value:=0;
AccDetAccValue.Value:=0;
AccDet.Post;

AccDet.Locate('AccType',33,[]);
AccDet.Edit;
AccDetAccTotal.Value:=0;
AccDetAccValue.Value:=0;
AccDet.Post;

AccDet.Locate('AccType',34,[]);
AccDet.Edit;
AccDetAccTotal.Value:=0;
AccDetAccValue.Value:=0;
AccDet.Post;



{---------------------------------------ÕÃ“ «·—’Ì› »⁄œ «‰ Â«¡ √⁄„«· «·„‰«Ê·…-------------------}
AccDet.Locate('AccType',41,[]);
Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
AccDet.Edit;
{------------------------------------------------}
if (TadlF=1)and(((AccListHoursNum2.Value*60)+AccListMontsNum2.Value)>0) then
begin
if (DmdFm.AccListReserve.Value=1) or(DmdFm.AccListReserve.Value=2)then
begin
 if AccListDaysNum.Value>2 then
   dmdfm.AccDetAccTotal.Value:=(DmdFm.IncoValue1.Value*2)+(DmdFm.IncoValue1.Value*(AccListDaysNum.Value-2)*2)
 else
   dmdfm.AccDetAccTotal.Value:=DmdFm.IncoValue1.Value*AccListDaysNum.Value;
end
else
if (DmdFm.AccListReserve.Value=3)then
begin
 if (AccListDaysNum.Value>7) and (AccListDaysNum.Value<=14) then
   dmdfm.AccDetAccTotal.Value:=(DmdFm.IncoValue1.Value*7)+(((DmdFm.IncoValue1.Value*50/100)+DmdFm.IncoValue1.Value)*(AccListDaysNum.Value-7))
else
 if (AccListDaysNum.Value>14) then
   dmdfm.AccDetAccTotal.Value:=(DmdFm.IncoValue1.Value*7)+((DmdFm.IncoValue1.Value*2)*(AccListDaysNum.Value-14))
                                +(((DmdFm.IncoValue1.Value*50/100)+DmdFm.IncoValue1.Value)*7)
 else
   dmdfm.AccDetAccTotal.Value:=DmdFm.IncoValue1.Value*AccListDaysNum.Value;
end
else
begin
   if (dmdfm.AccListHoursNum2.Value-dmdfm.AccListNum2.Value) <=24 then
        dmdfm.AccDetAccTotal.Value:=IncoValue1.Value
   else
    if ((AccListHoursNum2.Value-AccListNum2.Value)Div 24)=0  then
        dmdfm.AccDetAccTotal.Value:=IncoValue1.Value* ((AccListHoursNum2.Value-AccListNum2.Value)Div 24)
    else
        dmdfm.AccDetAccTotal.Value:=DmdFm.IncoValue1.Value* (((AccListHoursNum2.Value-AccListNum2.Value)Div 24)+1);
 end;
end;

{---------------------------------------ÕÃ“ «·—’Ì› ·€Ì— √€—«÷ «·„‰«Ê·…-------------------}
if (TadlF=2) then
begin
daysNum:=DaysBetween(AccListArriveDate.Value,AccListEndEmpDate.Value);

if (AccListReserve.Value=1)or(AccListReserve.Value=2)then{«·”»» «·√Ê· Ê«·À«‰Ì »⁄œ 2 ÌÊ„ Ì ÷«⁄› «·„»·€}
begin
  if daysNum<=2 then
      AccDetAccTotal.Value:=IncoValue2.Value
  else
      AccDetAccTotal.Value:=(IncoValue2.Value*2)+(IncoValue2.Value*2*(daysNum-2));
end
else
if (AccListReserve.Value=3) then
begin
  if daysNum<=7 then
      AccDetAccTotal.Value:=IncoValue2.Value*daysNum
  else
  if (daysNum>7)and(daysNum<=14) then
      AccDetAccTotal.Value:=(IncoValue2.Value*daysnum)+(IncoValue2.Value*(daysNum-7)*50/100)
  else
  if daysNum>14 then
      AccDetAccTotal.Value:=(IncoValue2.Value*daysNum)+(IncoValue2.Value*(daysNum-14)*2)
end;
end
{-------------------›—ﬁ ≈‰ «ÃÌ… √Ê ÕÃ“ —’Ì› ›Ì Õ«·…  ⁄ÿ· «·”›Ì‰… »«·ﬂ«„·-----------------------}
else
if (TadlF=3) then
begin
if (AccListFrgFlag.Value=1)and(TadlF=3) then
 begin
    AccDet.Locate('AccType',32,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    AccDet.Edit;
    dmdfm.AccDetAccTotal.Value:=200*(dmdfm.AccListNum2.Value);
    dmdfm.AccDetAccValue.Value:=IncoValue2.Value;

    if AccDetAccTotal.Value<IncoValue2.Value then
       AccDetAccTotal.Value:=IncoValue2.Value;
 end;
  AccDet.Locate('AccType',33,[]);
  Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
      AccDet.Edit;
      dmdfm.AccDetAccTotal.Value:=dmdfm.IncoValue1.Value*dmdfm.AccListNum1.Value*dmdfm.AccListFrgShip.Value;
      dmdfm.AccDetAccValue.Value:=IncoValue1.Value;

      if AccDetAccTotal.Value<IncoValue2.Value then
        AccDetAccTotal.Value:=IncoValue2.Value;
  AccDet.Locate('AccType',34,[]);
  Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    AccDet.Edit;
          dmdfm.AccDetAccTotal.Value:=IncoValue1.Value*AccListNum1.Value*AccListFrgShip.Value;
          dmdfm.AccDetAccValue.Value:=IncoValue1.Value;

      if AccDetAccTotal.Value<IncoMin.Value then
        AccDetAccTotal.Value:=IncoMin.Value;
end
{-------------------«·«” ⁄«‰… »«·€ÿ«”-----------------------}
else
if (TadlF=4) then
begin
if (AccListNum1.Value>0) then
 begin
    AccDet.Locate('AccType',13,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    AccDet.Edit;
    if ShipsShipType.Value=0 then
    begin
      dmdfm.AccDetAccTotal.Value:=IncoValue1.Value*dmdfm.AccListNum1.Value;
      dmdfm.AccDetAccValue.Value:=IncoValue1.Value;
    end
    else
    begin
      dmdfm.AccDetAccTotal.Value:=IncoValue1.Value*InfoValue2.Value*dmdfm.AccListNum1.Value;
      dmdfm.AccDetAccValue.Value:=IncoValue1.Value*InfoValue2.Value;
    end;

    if AccDetAccTotal.Value<IncoValue2.Value then
       AccDetAccTotal.Value:=IncoValue2.Value;
end;
end
{-------------------«” Œœ«„ «·‘»«ﬂ-----------------------}
else
if (TadlF=5) then
begin
    AccDet.Locate('AccType',39,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    AccDet.Edit;
    if ShipsShipType.Value=0 then
    begin
      dmdfm.AccDetAccTotal.Value:=IncoValue1.Value*(DaysBetween(dmdfm.AccListArriveDate.Value,DmdFm.AccListEndEmpDate.Value)+1);
      dmdfm.AccDetAccValue.Value:=IncoValue1.Value;
    end
    else
    begin
      dmdfm.AccDetAccTotal.Value:=IncoValue1.Value*InfoValue2.Value*(DaysBetween(dmdfm.AccListArriveDate.Value,DmdFm.AccListEndEmpDate.Value)+1);
      dmdfm.AccDetAccValue.Value:=IncoValue1.Value*InfoValue2.Value;
    end;

    if AccDetAccTotal.Value<IncoValue2.Value then
       AccDetAccTotal.Value:=IncoValue2.Value;
end
{-------------------„—Ê— √‰«»Ì» «·‰›ÿ-----------------------}
else
if (TadlF=6) then
begin
if (AccListWeSpace.Value>0) then
 begin
    AccDet.Locate('AccType',40,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    AccDet.Edit;
    dmdfm.AccDetAccTotal.Value:=IncoValue1.Value*dmdfm.AccListWeSpace.Value;
    dmdfm.AccDetAccValue.Value:=IncoValue1.Value;

    if AccDetAccTotal.Value<IncoValue2.Value then
       AccDetAccTotal.Value:=IncoValue2.Value;
end;
end
{-------------------≈ÌÃ«— ﬁÊ«ÿ—-----------------------}
else
if (TadlF=7) then
begin
if (AccListNum1.Value>0) then
 begin
    AccDet.Locate('AccType',35,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    AccDet.Edit;
    dmdfm.AccDetAccTotal.Value:=500*dmdfm.AccListNum1.Value;
    dmdfm.AccDetAccValue.Value:=500;
end;
end
{-------------------Õ—ﬂ…-----------------------}
else
if (TadlF=8) then
begin
{----------------------—”Ê„ «·œŒÊ·-------------------}
    AccDet.Locate('AccType',15,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    if AccListAginNm.Value<>1 then
    begin
      if (AccListSharedF.Value=1)or(AccListSharedF.Value=2) then{≈–« ﬂ«‰  „‘ —ﬂ… œŒÊ· √Ê· Œ—ÊÃ}
      begin
        DmdFm.AccDet.Edit;
        dmdfm.AccDetAccTotal.Value:=(dmdfm.IncoValue1.Value/1000*dmdfm.AccListWeSpace.Value)/2;
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end
      else
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=IncoValue1.Value/1000*AccListWeSpace.Value;
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value;
      end;
    end
    else
    begin
      if (AccListSharedF.Value=1)or(AccListSharedF.Value=2) then{≈–« ﬂ«‰  „‘ —ﬂ… œŒÊ· √Ê· Œ—ÊÃ}
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=((IncoValue1.Value*50/100)/1000*AccListWeSpace.Value)/2;
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end
      else
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=(IncoValue1.Value*50/100)/1000*AccListWeSpace.Value;
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value;
      end;
      if      DmdFm.AccDet.state=dsedit then
      DmdFm.AccDet.Post;

    end;
{-----------------------------—”Ê„ «·Œ—ÊÃ------------------}
    AccDet.Locate('AccType',16,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    if AccListAginNm.Value<>1 then
    begin
      if (AccListSharedF.Value=1)or(AccListSharedF.Value=2) then{≈–« ﬂ«‰  „‘ —ﬂ… œŒÊ· √Ê· Œ—ÊÃ}
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=(IncoValue1.Value/1000*AccListWeSpace.Value)/2;
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end
      else
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=IncoValue1.Value/1000*AccListWeSpace.Value;
        AccDetAccValue.Value:=DmdFm.IncoValue1.Value;
      end;
    end
    else
    begin
      if (AccListSharedF.Value=1)or(AccListSharedF.Value=2) then{≈–« ﬂ«‰  „‘ —ﬂ… œŒÊ· √Ê· Œ—ÊÃ}
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=((IncoValue1.Value*50/100)/1000*AccListWeSpace.Value)/2;
        AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end
      else
      begin
        DmdFm.AccDet.Edit;
        AccDetAccTotal.Value:=(IncoValue1.Value*50/100)/1000*AccListWeSpace.Value;
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end;
      if      DmdFm.AccDet.state=dsedit then
      DmdFm.AccDet.Post;
    end;
{------------------------------≈÷«›Ì «·„—‘œÌ‰----------------------------}
    AccDet.Locate('AccType',18,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    hours:=0;
    Move2.First;
    while not Move2.Eof do
    begin
      if Move2Hours.Value>1 then
      hours:=hours+(Move2Hours.Value-1);
      Move2.Next;
    end;
    if AccListAginNm.Value=1 then
    begin
      DmdFm.AccDet.Edit;
      if ((AccListWeSpace.Value>8000) and (AccListWeSpace.Value<=20000) and  ((AccListShipType.Value=1) or (AccListShipType.Value=2))) then
        AccDetAccTotal.Value:=(AccListHoursNum.Value-2)*(IncoValue1.Value*50/100)
      else
      if (AccListWeSpace.Value>20000)  and  (AccListShipType.Value=1) then
        AccDetAccTotal.Value:=(AccListHoursNum.Value-2)*(IncoValue1.Value*50/100)*2;
     end
     else
    begin
      if ((AccListWeSpace.Value>8000) and (AccListWeSpace.Value<=20000) and  ((AccListShipType.Value=1) or (AccListShipType.Value=2))) then
        AccDetAccTotal.Value:=(dmdfm.AccListHoursNum.Value-2)*dmdfm.IncoValue1.Value
      else
      if (AccListWeSpace.Value>20000)  and  (AccListShipType.Value=1) then
        AccDetAccTotal.Value:=(AccListHoursNum.Value-2)*IncoValue1.Value*2;
     end;
      if   DmdFm.AccDet.state=dsedit then
      DmdFm.AccDet.Post;

{-----------------------------”«⁄«  «·⁄„· «·≈÷«›Ì-------------------}

    AccDet.Locate('AccType',19,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    if AccListAginNm.Value=1 then
    begin
      DmdFm.AccDet.Edit;

      if (AccListEdafe1.Value=1)and(AccListEdafe2.Value=1) then
      begin
        AccDetAccTotal.Value:=((IncoValue1.Value*50/100)/1000*AccListWeSpace.Value)+AccListMovV1.Value;
        AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end;
      if ((AccListEdafe1.Value=1)and(AccListEdafe2.Value=0))or((AccListEdafe1.Value=0)and(AccListEdafe2.Value=1)) then
      begin
        AccDetAccTotal.Value:=((IncoValue2.Value*50/100)/1000*AccListWeSpace.Value)+AccListMovV1.Value;
        AccDetAccValue.Value:=DmdFm.IncoValue2.Value/2;
      end;
      if (AccListEdafe1.Value=0)and(AccListEdafe2.Value=0) then
        AccDetAccTotal.Value:=AccListMovV1.Value;
     end
     else
    begin
      DmdFm.AccDet.Edit;

      if (AccListEdafe1.Value=1)and(AccListEdafe2.Value=1)and(AccListHoliDay.Value=0)and(AccListFridayNum.Value=0) then
      begin
        AccDetAccTotal.Value:=(IncoValue1.Value/1000*AccListWeSpace.Value)+AccListMovV1.Value;
        AccDetAccValue.Value:=DmdFm.IncoValue1.Value;
      end
      else
      if (AccListEdafe1.Value=1)and(AccListEdafe2.Value=1)and((AccListHoliDay.Value=1)or(AccListFridayNum.Value=1)) then
      begin
        AccDetAccTotal.Value:=((IncoValue1.Value/1000)/2*AccListWeSpace.Value)+AccListMovV1.Value;
        AccDetAccValue.Value:=DmdFm.IncoValue1.Value/2;
      end
      else
      if (AccListEdafe1.Value=1)and(AccListEdafe2.Value=1)and (AccListHoliDay.Value=1)and(AccListFridayNum.Value=1) then
        AccDetAccTotal.Value:=AccListMovV1.Value
      else
      if ((AccListEdafe1.Value=1)and(AccListEdafe2.Value=0))or((AccListEdafe1.Value=0)and(AccListEdafe2.Value=1)) then
      begin
        AccDetAccTotal.Value:=(IncoValue2.Value/1000*AccListWeSpace.Value)+AccListMovV1.Value;
        AccDetAccValue.Value:=DmdFm.IncoValue2.Value;
      end
      else
      if (AccListEdafe1.Value=0)and(AccListEdafe2.Value=0) then
        AccDetAccTotal.Value:=AccListMovV1.Value;
     end;
      if   DmdFm.AccDet.state=dsedit then
      DmdFm.AccDet.Post;

{-------------------------«·«—”«¡ Ê«·«»Õ«—-----------------}
    AccDet.Locate('AccType',35,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);

  if (AccDetAccType.Value=35)and (AccListboat.Value=0) then
  begin
    dmdfm.AccDetAccTotal.Value:=dmdfm.IncoValue1.Value/1000*dmdfm.AccListWeSpace.Value*(dmdfm.AccListHoursNum.Value+dmdfm.AccListMoveAll.Value);
       AccDetAccValue.Value:=DmdFm.IncoValue1.Value*dmdfm.AccListHoursNum.Value;
   end;
  if (AccDetAccType.Value=35)and (AccListboat.Value=1) then
    AccDetAccTotal.Value:=0;

{-----------------------------«·Ã„⁄ Ê«·⁄ÿ·« ----------------------}
    AccDet.Locate('AccType',20,[]);
    Inco.Locate('IncNum;IncType',VarArrayOf([DmdFm.AccDetAccType.Value,2]),[]);
    if AccListAginNm.Value<>1 then
    begin
      dmdfm.AccDetAccTotal.Value:=(dmdfm.IncoValue1.Value/1000*dmdfm.AccListWeSpace.Value)+dmdfm.AccListMovV2.Value;
    end
    else
    begin
      AccDetAccTotal.Value:=((IncoValue1.Value*50/100)/1000*AccListWeSpace.Value)+dmdfm.AccListMovV2.Value;
//      AccDetAccValue.Value:=IncoValue1.Value*(AccListFridayNum.Value+AccListHoliDay.Value);
    end;
end;

{-----------------------------------------------------}
end;
end;
end;
{----------------------⁄Ê«∆œ «·—”Ê„-----------------}
procedure TFineFm.BitBtn12Click(Sender: TObject);
var ershad,Ndafa,tadel:Real;
Total:string;
begin
rsom;
with DmdFm do
begin
AccDet.DisableControls;
ershad:=0;
Ndafa:=0;
Tadel:=0;
AccDet.First;
while not AccDet.Eof do
begin
Total:=FormatFloat('0.000',AccDetAccTotal.Value);
  case AccDetAccType.Value of
  15..20:ershad:=ershad+StrToFloat(Total);
  7,22:Ndafa:=Ndafa+StrToFloat(Total);
  32,33,34:tadel:=tadel+StrToFloat(Total);
  end;
 AccDet.Next;
end;
if AccDet.Locate('AccType',14,[]) then
begin
AccDet.Edit;
AccDetAccTotal.Value:=ershad;
end;
if AccDet.Locate('AccType',37,[])then
begin
AccDet.Edit;
AccDetAccTotal.Value:=Ndafa;
end;
if AccDet.Locate('AccType',38,[]) then
begin
AccDet.Edit;
AccDetAccTotal.Value:=tadel;
end;
if AccDet.State=dsedit then
AccDet.Post;
AccDet.EnableControls;
end;
end;
{----------------------------------------------------}
procedure TFineFm.BitBtn10Click(Sender: TObject);

begin
Close;
end;

procedure TFineFm.BitBtn13Click(Sender: TObject);
begin
Application.CreateForm(TRepFm,RepFm);
if tadlf=1 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\RsomDes.fr3')
else
if tadlf=3 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\RsomTadl.fr3')
  else
if tadlf=4 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Diver.fr3')

else
if tadlf=5 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Rsomnet.fr3')
else
if tadlf=6 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Petrol.fr3')

else
if tadlf=7 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Ejar.fr3')

else
if tadlf=8 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Damage.fr3')

else
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Rsom.fr3');

RepFm.frxReport1.ShowReport(True);

RepFm.Free;

end;

procedure TFineFm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if (((Column.Field = DmdFm.AccDetTypeNm)or
  (Column.Field = DmdFm.AccDetAccValue)or
  (Column.Field = DmdFm.AccDetAccTotal))AND(DmdFm.AccDetAccTotal.Value<>0)) then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.Canvas.Font.Color := clRed;
  end
  else
  if gdselected in state then
    DBGrid1.Canvas.Font.Color := clHighlightText
  else
  DBGrid1.Canvas.Font.Color := Column.Font.Color;

  DBGrid1.Canvas.TextRect(rect, Rect.Left, Rect.Top, Column.Field.DisplayText);

end;

procedure TFineFm.FormActivate(Sender: TObject);
begin
    FineFm.DBEdit26.Visible:=false;
    FineFm.DBEdit28.Visible:=false;
    FineFm.Label54.Visible:=false;
    FineFm.Label55.Visible:=false;

DmdFm.Agents.FilterSQL:='AgType = 2';

DmdFm.Ships.FilterSQL:='Name_En is not null';
DmdFm.Ships.OrderFields:='Name_En';

end;

procedure TFineFm.ArrFTimeChange(Sender: TObject);
begin
//DmdFm.AccList.Edit;
end;

procedure TFineFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with DmdFm do
begin
  if (AccList.State=dsedit)or (AccList.State=dsinsert) then
    raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
  if (AccDet.State=dsedit)or (AccDet.State=dsinsert) then
    raise Exception.Create('«Õ›Ÿ »Ì«‰«  «·⁄Ê«∆œ √Ê·«');
end;
crefine:=0;
DmdFm.AccDet.FilterSQL:='';

DmdFm.Agents.FilterSQL:='';

end;

procedure TFineFm.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.BitBtn14Click(Sender: TObject);
begin
if DmdFm.AccList.IsEmpty then
Abort;
if Application.messagebox('          Â· √‰  „ √ﬂœ','',1+mb_defbutton2)=2 then
raise EAbort.Create('');

DmdFm.AccDet.First;
while not DmdFm.AccDet.Eof do
DmdFm.AccDet.Delete;
end;

procedure TFineFm.BitBtn11Click(Sender: TObject);
begin
with DmdFm do
begin
if AccList.IsEmpty then
raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
if not AccDet.IsEmpty then
raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
if (AccList.State=dsedit)or (AccList.State=dsinsert) then
raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
  //Inco.CancelRange;
if TadlF=1 then
  Inco.FilterSQL:='IncType=2 and (IncNum=41)'
else
if TadlF=3 then
  Inco.FilterSQL:='IncType=2 and (IncNum=32 or IncNum=33 or IncNum=34)'
else
if TadlF=4 then
  Inco.FilterSQL:='IncType=2 and (IncNum=13)'
else
if TadlF=5 then
  Inco.FilterSQL:='IncType=2 and (IncNum=39)'
else
if TadlF=6 then
  Inco.FilterSQL:='IncType=2 and (IncNum=40)'
else
if TadlF=7 then
  Inco.FilterSQL:='IncType=2 and (IncNum=35)'
else
if TadlF=8 then
  Inco.FilterSQL:='IncType=2 and (IncNum=36)'
else
  Inco.FilterSQL:='IncType=2 and (IncNum=32 or IncNum=33 or IncNum=34 or IncNum=38)';
  //Inco.SetRange([2],[2]);
Inco.First;
while not Inco.Eof do
begin
  AccDet.Insert;
  AccDetAccType.Value:=IncoIncNum.Value;
  Inco.Next;
end;
AccDet.Post;
end;
//rsom;
BitBtn12Click(sender);
end;

procedure TFineFm.Edit1Change(Sender: TObject);
begin
DmdFm.AccList.Locate('ListNumR',Edit1.Text,[loPartialKey]);
end;

procedure TFineFm.FormCreate(Sender: TObject);
begin
crefine:=1;

end;

procedure TFineFm.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.BitBtn15Click(Sender: TObject);
begin
  MainFm.sBitBtn13Click(Sender);

end;

procedure TFineFm.sSpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);

LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=False;
LocalAgantFm.DBGrid3.Visible:=True;
LocalAgantFm.ShowModal;
LocalAgantFm.Free;

end;

procedure TFineFm.sSpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);

LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=False;
LocalAgantFm.DBGrid3.Visible:=True;
LocalAgantFm.ShowModal;
LocalAgantFm.Free;

end;

procedure TFineFm.sSpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);

LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=False;
LocalAgantFm.DBGrid3.Visible:=True;
LocalAgantFm.ShowModal;
LocalAgantFm.Free;

end;

procedure TFineFm.sSpeedButton4Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);

LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=False;
LocalAgantFm.DBGrid3.Visible:=True;
LocalAgantFm.ShowModal;
LocalAgantFm.Free;

end;

procedure TFineFm.sSpeedButton5Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);

LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=False;
LocalAgantFm.DBGrid3.Visible:=True;
LocalAgantFm.ShowModal;
LocalAgantFm.Free;

end;

procedure TFineFm.sSpeedButton6Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);
LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=True;

DmdFm.Agents.FilterSQL:='AgType = 2';
LocalAgantFm.ShowModal;
LocalAgantFm.Free;
DmdFm.Agents.FilterSQL:='';

end;

procedure TFineFm.sSpeedButton7Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);
LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=True;

DmdFm.Agents.FilterSQL:='AgType = 2';
LocalAgantFm.ShowModal;
LocalAgantFm.Free;

DmdFm.Agents.FilterSQL:='';

end;

procedure TFineFm.sSpeedButton8Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);
LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=True;

DmdFm.Agents.FilterSQL:='AgType = 2';
LocalAgantFm.ShowModal;
LocalAgantFm.Free;
DmdFm.Agents.FilterSQL:='';

end;

procedure TFineFm.sSpeedButton9Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);
LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=True;

DmdFm.Agents.FilterSQL:='AgType = 2';
LocalAgantFm.ShowModal;
LocalAgantFm.Free;
DmdFm.Agents.FilterSQL:='';

end;

procedure TFineFm.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.DBEdit28KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.DBLookupComboBox5KeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key=#13 Then //-- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
    Begin
      PerForm(WM_NEXTDLGCTL,0,0) //-- ﬁœ„ «·Ï «·«„«„
    End

end;

procedure TFineFm.BitBtn16Click(Sender: TObject);
var pr1,pr2 :String;

begin
                  with TIniFile.create (changefileext(paramstr(0),'.INI')) do
                  try
                    Pr1                := readstring ('Data', 'Print Fatora', '');
                    Pr2                := readstring ('Data', 'Print Barcode', '');
                    finally
                   end;

Application.CreateForm(TRepFm,RepFm);
if tadlf=1 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\RsomDes.fr3')
else
if tadlf=3 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\RsomTadl.fr3')
  else
if tadlf=4 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Diver.fr3')

else
if tadlf=5 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Rsomnet.fr3')
else
if tadlf=6 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Petrol.fr3')

else
if tadlf=7 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Ejar.fr3')

else
if tadlf=8 then
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Damage.fr3')

else
  RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Rsom.fr3');

//RepFm.frxReport1.ShowReport(True);

RepFm.frxReport1.PrintOptions.Printer:=pr1;
RepFm.frxReport1.PrintOptions.ShowDialog:= false;
RepFm.frxReport1.PrepareReport();
RepFm.frxReport1.Print;


RepFm.frxReport1.PrintOptions.Printer:=pr1;
RepFm.frxReport1.PrepareReport();
RepFm.frxReport1.Print;

RepFm.frxReport1.PrintOptions.Printer:=pr1;
RepFm.frxReport1.PrintOptions.ShowDialog:= false;
RepFm.frxReport1.PrepareReport();
RepFm.frxReport1.Print;


RepFm.frxReport1.PrintOptions.ShowDialog:= false;
RepFm.frxReport1.PrepareReport();
RepFm.frxReport1.Print;

RepFm.Free;
end;

procedure TFineFm.sSpeedButton10Click(Sender: TObject);
begin
Application.CreateForm(TLocalAgantFm,LocalAgantFm);
LocalAgantFm.sBitBtn1.Visible:=False;
LocalAgantFm.DBGrid1.Visible:=False;
LocalAgantFm.DBGrid2.Visible:=True;

DmdFm.Agents.FilterSQL:='AgType = 2';
LocalAgantFm.ShowModal;
LocalAgantFm.Free;
DmdFm.Agents.FilterSQL:='';

end;

end.
