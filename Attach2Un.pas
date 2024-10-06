unit Attach2Un;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, db, ExtCtrls,
  DBActns, ActnList, ToolWin,
  ComCtrls, sSkinProvider, sBitBtn, System.Actions, frxClass;

type
  TAttach2Fm = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    Image1: TImage;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sBitBtn8: TsBitBtn;
    sBitBtn9: TsBitBtn;
    sBitBtn10: TsBitBtn;
    sBitBtn11: TsBitBtn;
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
    sBitBtn13: TsBitBtn;
    sBitBtn14: TsBitBtn;
    sBitBtn15: TsBitBtn;
    frxReport1: TfrxReport;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn13Click(Sender: TObject);
    procedure sBitBtn15Click(Sender: TObject);
    procedure sBitBtn14Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Attach2Fm: TAttach2Fm;

implementation

uses
  DateUtils, IniFiles, AcListUn, AiiradatUn, Dervr6Un, Dervr7Un,
  DirectDeliveryUn, DmdUm, HatkaUn, LocalAgantUn, LstDetUn, MainUn, PermUn,
  SplashUn, SrchUn, SubSrcUn, UFEnterPass, VDateHrakUn, Attach3Un, AttachUn;

{$R *.dfm}

procedure TAttach2Fm.BitBtn1Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if Attach.IsEmpty then
      raise Exception.Create('√œŒ· »Ì«‰«  «·„·Õﬁ √Ê·«');
    if not AttachD.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (Attach.State = dsedit) or (Attach.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    Income.First;
    while not Income.Eof do
    begin
      AttachD.Insert;
      AttachDAcctype.Value := IncomeIncNum.Value;
      Income.Next;
    end;
    AttachD.Post;
  end;
  BitBtn2Click(Sender);

  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
    begin
      AttachD.Close;
      AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
      AttachD.ParamByName('VNum').Value := AttachListNum.Value;
      AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
      AttachD.Execute;
    end;

  end;
end;

procedure TAttach2Fm.BitBtn2Click(Sender: TObject);
var
  rsef, storew: real;
begin
  with DmdFm do
  begin
    Ships.Locate('Num', AccListShipNum.Value, []);
    if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([ShipsSType.Value, ShipsShipMet.Value, 0]), []);
    if (AccListUnit.Value = 3) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([ShipsSType.Value, ShipsShipMet.Value, 1]), []);
    if (AccListUnit.Value = 4) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([ShipsSType.Value, ShipsShipMet.Value, 2]), []);

    AttachD.First;
    while not AttachD.Eof do
    begin
      Income.Locate('IncNum', AttachDAcctype.Value, []);
      AttachD.Edit;
      if AttachDAcctype.Value = 3 then
        rsef := IncomeRsef.Value;
      if (AttachDAcctype.Value = 4) then
      begin
        AttachDAccvalue.Value := IncomeStore.Value - rsef;
        AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWeSpace.Value;
      end;
      { if (AttachDAcctype.Value=4)AND(AttachWeeks.Value<>0) then
        begin
        Store.Locate('Num',AccListweeks.Value+AttachWeeks.Value,[]);
        AttachDAccvalue.Value:=StoreStore.Value+(IncomeStore.Value-rsef);
        AttachDAccTotal.Value:=AttachDAccvalue.Value*AccListWeSpace.Value;
        end; }

      if AttachDAcctype.Value = 7 then
      begin
        AttachDAccvalue.Value := IncomeStore.Value - IncomeRsef.Value;
        AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWeSpace.Value;
      end;
      if AttachDAcctype.Value = 6 then
      begin
        Store.Locate('Num', AccListweeks.Value, []);
        storew := StoreWalk.Value;
        // ShowMessage(FloatToStr(storew));
        Store.Locate('Num', AccListweeks.Value + AttachWeeksBef.Value, []);
        AttachDAccvalue.Value := StoreStore.Value - storew;
        AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWeSpace.Value;

      end;

      AttachD.Next;
    end;
  end;
end;

procedure TAttach2Fm.BitBtn4Click(Sender: TObject);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  DmdFm.AttachD.First;
  while not DmdFm.AttachD.Eof do
    DmdFm.AttachD.Delete;
  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
    begin
      AttachD.Close;
      AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
      AttachD.ParamByName('VNum').Value := AttachListNum.Value;
      AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
      AttachD.Execute;
    end;

  end;
end;

procedure TAttach2Fm.Label7Click(Sender: TObject);
begin
  attachType := 6;
  // with DmdFm do
  // begin
  // Attach2.Filtered := false;
  // Attach.Filter := 'ListType = 6 and ListNum = ' + AccListListNum.AsString;
  // Attach.Filtered := true;
  // end;

  with DmdFm do
  begin
    // Attach2.Filtered := false;
    // Attach2.Filter := 'AttashType = 6';

    attach2.Close;
    attach2.ParamByName('VNum').Value := AttachListNum.Value;
    attach2.ParamByName('Vtype').Value := AttachAccType.Value;
    attach2.ParamByName('VANum').Value := AttachAttachNum.Value;
    attach2.ParamByName('VLtype').Value := AttachListtype.Value;
    attach2.Execute;

    if not attach2.IsEmpty then
    begin
      attach2d.Close;
      attach2d.ParamByName('VNum').Value := attach2ListNum.Value;
      attach2d.ParamByName('Vtype').Value := attach2Acctype.Value;
      attach2d.ParamByName('VANum').Value := attach2AttachNum.Value;
      attach2d.ParamByName('VLtype').Value := attach2ListType.Value;
      attach2d.ParamByName('VANum2').Value := attach2AttachNum2.Value;
      attach2d.ParamByName('Vttype').Value := attach2AttashType.Value;
      attach2d.Execute;
    end;

  end;

  Application.CreateForm(TAttach3Fm, Attach3Fm);
  Attach3Fm.ShowModal;
  Attach3Fm.Free;

end;

procedure TAttach2Fm.sBitBtn2Click(Sender: TObject);
begin
  // Application.CreateForm(TRepFm,RepFm);
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\Attach17.fr3');

  // RepFm.frxReport1.Variables.Variables['ASD']:= ''' „Œ“‰'+'''';
  // FManyDayFT.Variables.Variables['ASD']:= '''  ﬁ«—Ì— Õ”» «· Õ·Ì· «· Ì  „  „‰ Œ·«· «·ﬁ —… „‰' +  FormatDateTime('yyyy/mm/dd' ,DateTimePicker1.Date)+' ≈·Ï '+ FormatDateTime('yyyy/mm/dd' ,DateTimePicker2.Date)+'''';
  frxReport1.ShowReport(true);
  // RepFm.Free;
end;

procedure TAttach2Fm.sBitBtn13Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if Attach.IsEmpty then
      raise Exception.Create('√œŒ· »Ì«‰«  «·„·Õﬁ √Ê·«');
    if not AttachD.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (Attach.State = dsedit) or (Attach.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    Income.First;
    while not Income.Eof do
    begin
      AttachD.Insert;
      AttachDAttachNum.Value := AttachAttachNum.Value;
      AttachDListNum.Value := AttachListNum.Value;
      AttachDListType.Value := AttachListtype.Value;
      AttachDAcctype.Value := IncomeIncNum.Value;
      Income.Next;
      AttachD.Post;
    end;


    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
    begin
      AttachD.Close;
      AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
      AttachD.ParamByName('VNum').Value := AttachListNum.Value;
      AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
      AttachD.Execute;
    end;

  end;
  sBitBtn15Click(Sender);
  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
    begin
      AttachD.Close;
      AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
      AttachD.ParamByName('VNum').Value := AttachListNum.Value;
      AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
      AttachD.Execute;
    end;

  end;
end;

procedure TAttach2Fm.sBitBtn15Click(Sender: TObject);
var
  rsef, storew: real;
begin
  with DmdFm do

  begin

    Ships.Locate('Num', AccListShipNum.Value, []);
    if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([ShipsSType.Value, ShipsShipMet.Value, 0]), []);
    if (AccListUnit.Value = 3) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([ShipsSType.Value, ShipsShipMet.Value, 1]), []);
    if (AccListUnit.Value = 4) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([ShipsSType.Value, ShipsShipMet.Value, 2]), []);

    AttachD.First;
    while not AttachD.Eof do
    begin
      Income.Locate('IncNum', AttachDAcctype.Value, []);
      AttachD.Edit;
      if AttachDAcctype.Value = 3 then
        rsef := IncomeRsef.Value;
      { if (AttachDAcctype.Value=4) then
        begin
        AttachDAccvalue.Value:=IncomeStore.Value-rsef;
        AttachDAccTotal.Value:=AttachDAccvalue.Value*AccListWeSpace.Value;
        end;
        if (AttachDAcctype.Value=4)AND(AttachWeeks.Value<>0) then
        begin
        Store.Locate('Num',AccListweeks.Value+AttachWeeks.Value,[]);
        AttachDAccvalue.Value:=StoreStore.Value+(IncomeStore.Value-rsef);
        AttachDAccTotal.Value:=AttachDAccvalue.Value*AccListWeSpace.Value;
        end;

        if AttachDAcctype.Value=7 then
        begin
        AttachDAccvalue.Value:=IncomeStore.Value-IncomeRsef.Value;
        AttachDAccTotal.Value:=AttachDAccvalue.Value*AccListWeSpace.Value;
        end; }
      if AttachDAcctype.Value = 6 then
      begin
        Store.Locate('Num', AccListweeks.Value, []);
        storew := StoreWalk.Value;
        // ShowMessage(FloatToStr(storew));
        Store.Locate('Num', AccListweeks.Value + AttachWeeksBef.Value, []);
        AttachDAccvalue.Value := StoreStore.Value - storew;
        AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWeSpace.Value;

        AttachDAccTotal.Value := Tkrib(AttachDAccTotal.Value);

      end;

      { ------------------------⁄Ê«¡œ «· Œ“Ì‰------------------------- }

      if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value <> 0) and
        (AttachWeeks.Value = 5455) then
      begin // 13
        AttachD.Edit;
        AttachDFromDate.Value := AccListEndEmpDate.Value;
        AttachDToDate.Value := AccListAllwedDate.Value;
      end // 13//
      else if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value <> 0) then
      begin // 13
        AttachD.Edit;
        AttachDFromDate.Value := AccListEndEmpDate.Value;
        AttachDToDate.Value := AccListAllwedDate.Value +
          (AttachWeeks.Value * 7);
      end; // 13//
      if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value = 0) then
      begin // 14
        AttachD.Edit;
        AttachDFromDate.Clear;
        AttachDToDate.Clear;
      end; // 11//

      AttachD.Next;
    end;
  end;
end;

procedure TAttach2Fm.sBitBtn14Click(Sender: TObject);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  DmdFm.AttachD.First;
  while not DmdFm.AttachD.Eof do
    DmdFm.AttachD.Delete;
  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
    begin
      AttachD.Close;
      AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
      AttachD.ParamByName('VNum').Value := AttachListNum.Value;
      AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
      AttachD.Execute;
    end;

  end;
end;

procedure TAttach2Fm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
