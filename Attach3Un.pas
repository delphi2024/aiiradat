unit Attach3Un;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, db,
  dateutils,
  sSkinProvider, frxClass;

type
  TAttach3Fm = class(TForm)
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    frxReport1: TfrxReport;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Attach3Fm: TAttach3Fm;

implementation

uses
  AcListUn, AiiradatUn, Attach2Un, Dervr6Un, Dervr7Un,
  DirectDeliveryUn, DmdUm, HatkaUn, LocalAgantUn, LstDetUn, MainUn, PermUn,
  SplashUn, SrchUn, SubSrcUn, UFEnterPass, VDateHrakUn;

{$R *.dfm}

procedure TAttach3Fm.BitBtn1Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if Attach2.IsEmpty then
      raise Exception.Create('√œŒ· »Ì«‰«  «·„·Õﬁ √Ê·«');
    if not Attach2D.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (Attach2.State = dsedit) or (Attach2.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    Income.First;
    while not Income.Eof do
    begin
      Attach2D.Insert;
      attach2dAccType.Value := attach2Acctype.Value;
      attach2dListNum.Value := attach2ListNum.Value;
      attach2dAttachNum.Value := attach2AttachNum.Value;
      attach2dAttachNum2.Value := attach2AttachNum2.Value;
      attach2dListType.Value := attach2ListType.Value;
      attach2dAttType.Value := attach2AttashType.Value;

      Attach2DAttType2.Value := IncomeIncNum.Value;
      Income.Next;
    end;
    Attach2D.Post;

    with DmdFm do
    begin
      // Attach2.Filtered := false;
      // Attach2.Filter := 'AttashType = 6';

      // attach2.Close;
      // attach2.ParamByName('VNum').Value := AttachListNum.Value;
      // attach2.ParamByName('Vtype').Value := AttachAccType.Value;
      // attach2.ParamByName('VANum').Value := AttachAttachNum.Value;
      // attach2.ParamByName('VLtype').Value := AttachListtype.Value;
      // attach2.Execute;

      if not Attach2.IsEmpty then
      begin
        Attach2D.Close;
        Attach2D.ParamByName('VNum').Value := attach2ListNum.Value;
        Attach2D.ParamByName('Vtype').Value := attach2Acctype.Value;
        Attach2D.ParamByName('VANum').Value := attach2AttachNum.Value;
        Attach2D.ParamByName('VLtype').Value := attach2ListType.Value;
        Attach2D.ParamByName('VANum2').Value := attach2AttachNum2.Value;
        Attach2D.ParamByName('Vttype').Value := attach2AttashType.Value;
        Attach2D.Execute;
      end;

    end;
  end;

end;

procedure TAttach3Fm.BitBtn2Click(Sender: TObject);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  DmdFm.Attach2D.First;
  while not DmdFm.Attach2D.Eof do
    DmdFm.Attach2D.Delete;
  with DmdFm do
  begin
    if not Attach2.IsEmpty then
    begin
      Attach2D.Close;
      Attach2D.ParamByName('VNum').Value := attach2ListNum.Value;
      Attach2D.ParamByName('Vtype').Value := attach2Acctype.Value;
      Attach2D.ParamByName('VANum').Value := attach2AttachNum.Value;
      Attach2D.ParamByName('VLtype').Value := attach2ListType.Value;
      Attach2D.ParamByName('VANum2').Value := attach2AttachNum2.Value;
      Attach2D.ParamByName('Vttype').Value := attach2AttashType.Value;
      Attach2D.Execute;
    end;

  end;
end;

procedure TAttach3Fm.BitBtn3Click(Sender: TObject);
var
  WVAlue: Real;
begin
  with DmdFm do
  begin
    Attach2D.First;
    while not Attach2D.Eof do
    begin
      Attach2D.Edit;
      { ----------------------- }
      if (Attach2DAttType2.Value = 22) and (AccListElectric.Value = 1) then
      begin
        Attach2D.Edit;
        Attach2DFromDate.Value := AttachAttachDate.Value;
        Attach2DToDate.Value := Attach2AttachDate.Value;
      end;
      if (Attach2DAttType2.Value = 22) and (AccListElectric.Value = 0) then
      begin
        Attach2D.Edit;
        Attach2DFromDate.Clear;
        Attach2DToDate.Clear;
      end;
      { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
      if (Attach2DAttType2.Value = 16) and (AccListRemain.Value = 1) then
      begin
        Attach2D.Edit;
        Attach2DFromDate.Value := AttachAttachDate.Value;
        Attach2DToDate.Value := Attach2AttachDate.Value;
      end;
      if (Attach2DAttType2.Value = 16) and (AccListRemain.Value = 0) then
      begin
        Attach2D.Edit;
        Attach2DFromDate.Clear;
        Attach2DToDate.Clear;
      end;

      { ------------------------------------------------- }
      if (Attach2DAttType2.Value = 6) and (Attach2DAccTotal.Value <> 0) then
      begin
        Attach2D.Edit;
        Attach2DFromDate.Value := AccListAllwedDate.Value;
        Attach2DToDate.Value := Attach2AttachDate.Value;
      end;
      if (Attach2DAttType2.Value = 6) and (Attach2DAccvalue.Value = 0) then
      begin
        Attach2D.Edit;
        Attach2DFromDate.Clear;
        Attach2DToDate.Clear;
      end;

      if (Attach2DAttType2.Value = 6) and (AccListGoodsDesc.Value = 1) and
        (AttachWeeksBef.Value <> Attach2Weeks.Value) then
      begin
        Store.Locate('Num', AccListweeks.Value + AttachWeeksBef.Value, []);
        if AccListAdmisMet.Value = 3 then
          WVAlue := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          WVAlue := StoreStore.Value;
        Store.Locate('Num', Attach2Weeks.Value + AccListweeks.Value, []);
        Attach2D.Edit;
        if AccListAdmisMet.Value = 3 then
          Attach2AttachValue.Value := (StoreWalk.Value - WVAlue) +
            (StoreWalk.Value * IncomePerc.Value / 100);;
        if AccListAdmisMet.Value = 2 then
          Attach2DAccvalue.Value := (StoreStore.Value - WVAlue) +
            (StoreStore.Value * IncomePerc.Value / 100);;
        if AccListAdmisMet.Value = 1 then
          Attach2DAccvalue.Value := 0;
        Attach2DAccTotal.Value := Attach2DAccvalue.Value * AccListWeSpace.Value;

      end;
      if (Attach2DAttType2.Value = 6) and (AccListGoodsDesc.Value <> 1) then
      begin
        Store.Locate('Num', AccListweeks.Value + AttachWeeksBef.Value, []);
        if AccListAdmisMet.Value = 3 then
          WVAlue := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          WVAlue := StoreStore.Value;

        Store.Locate('Num', Attach2Weeks.Value + AccListweeks.Value, []);
        Attach2D.Edit;
        if AccListAdmisMet.Value = 3 then
          Attach2DAccvalue.Value := StoreWalk.Value - WVAlue;
        if AccListAdmisMet.Value = 2 then
          Attach2DAccvalue.Value := StoreStore.Value - WVAlue;
        if AccListAdmisMet.Value = 1 then
          Attach2DAccvalue.Value := 0;
        Attach2DAccTotal.Value := Attach2DAccvalue.Value * AccListWeSpace.Value;
      end;
      if Attach2DAttType2.Value = 22 then
      begin
        if AccListElectric.Value = 1 then
          Attach2DAccTotal.Value :=
            (DaysBetween(Attach2AttachDate.Value, AttachAttachDate.Value)) *
            MIncomeElecVAlue.Value
        else
          Attach2DAccTotal.Value := 0
      end
      ELSE if Attach2DAttType2.Value = 16 then
      begin
        if (AccListRemain.Value = 1) and
          (AccListWeSpace.Value <= MIncomeW2.Value) then
          Attach2DAccTotal.Value :=
            (DaysBetween(Attach2AttachDate.Value, AttachAttachDate.Value)) *
            MIncomev2.Value
        else if (AccListRemain.Value = 1) and
          (AccListWeSpace.Value > MIncomeW1.Value) then
          Attach2DAccTotal.Value :=
            (DaysBetween(Attach2AttachDate.Value, AttachAttachDate.Value)) *
            MIncomev1.Value
        else
          Attach2DAccTotal.Value := 0
      end;
      Income.Locate('IncNum', 13, []);
      if (Attach2DAttType2.Value = 13) and (Attach2AttachMezan.Value = 1) then
      begin
        Attach2DAccvalue.Value := IncomeRsef.Value;
        Attach2DAccTotal.Value := Attach2DAccvalue.Value * AccListWight.Value;
      end;
      if (Attach2DAttType.Value = 13) and (Attach2AttachMezan.Value = 0) then
      begin
        Attach2DAccvalue.Value := 0;
        Attach2DAccTotal.Value := 0;
      end;
      Attach2D.Next;
    end;
  end;

end;

procedure TAttach3Fm.BitBtn4Click(Sender: TObject);
begin
  // Application.CreateForm(TRepFm,RepFm);
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\Attach2.fr3');
  frxReport1.ShowReport(True);
  Free;

end;

end.
