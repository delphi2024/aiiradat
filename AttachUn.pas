unit AttachUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Mask, Buttons, db,
  DBActns, ActnList, ToolWin, ComCtrls, sSkinProvider, sBitBtn, sPanel,
  System.Actions, frxClass, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, System.ImageList,
  Vcl.ImgList, acAlphaImageList, Vcl.Menus, sBevel;

type
  TAttachFm = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBCheckBox1: TDBCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    sPanel1: TsPanel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    CoolBar1: TCoolBar;
    Panel1: TPanel;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
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
    Label12: TLabel;
    Label13: TLabel;
    sBitBtn13: TsBitBtn;
    sBitBtn14: TsBitBtn;
    sBitBtn15: TsBitBtn;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    DBText5: TDBText;
    Label18: TLabel;
    DBText6: TDBText;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBCheckBox4: TDBCheckBox;
    frxReport1: TfrxReport;
    DBGridEh1: TDBGridEh;
    DBText7: TDBText;
    sBitBtn16: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn13: TBitBtn;
    sBitBtn12: TsBitBtn;
    DBGridEh2: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label20: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    ActionList2: TActionList;
    DatasetPost2: TDataSetPost;
    BitBtn14: TBitBtn;
    sAlphaImageList2: TsAlphaImageList;
    sBevel1: TsBevel;
    sBevel2: TsBevel;
    sBevel3: TsBevel;
    sBevel4: TsBevel;
    sBevel5: TsBevel;
    sPanel2: TsPanel;
    DBCheckBox5: TDBCheckBox;
    procedure Label7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn13Click(Sender: TObject);
    procedure sBitBtn15Click(Sender: TObject);
    procedure sBitBtn14Click(Sender: TObject);
    procedure sBitBtn12Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sBitBtn16Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AttachFm: TAttachFm;

implementation

uses
  DateUtils, IniFiles, AcListUn, AiiradatUn, Attach2Un, Dervr6Un, Dervr7Un,
  DirectDeliveryUn, DmdUm, HatkaUn, LocalAgantUn, LstDetUn, MainUn, PermUn,
  SplashUn, SrchUn, SubSrcUn, UFEnterPass, VDateHrakUn, Attach3Un, Dmd2Un,
  AddAttachUnitUn;

{$R *.dfm}

procedure TAttachFm.Label7Click(Sender: TObject);
begin
  attachType := 6;
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

procedure TAttachFm.N1Click(Sender: TObject);
begin
if DmdFm.Vunitaccdet.RecordCount=1 then
 raise Exception.Create('·«Ì„ﬂ‰ﬂ «·Õ–› ... «·Ê’› ›«—€');
 if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

    DmdFm.Vunitaccdet.Delete;
end;

procedure TAttachFm.N2Click(Sender: TObject);
begin
if DmdFm.Attach.State=dsinsert then
   DmdFm.Attach.post;
  AddAttachUnitFm.ShowModal;
end;

procedure TAttachFm.BitBtn5Click(Sender: TObject);
var
  WVAlue: real;
  qty, Kias: real;
  ElecDate: TDate;
  num: integer;
begin
  with DmdFm do
  begin
    if AttachQty.IsNull then
      qty := AccListGoodsQty.Value
    else
      qty := AttachQty.Value;
    if AttachKias.IsNull then
      Kias := AccListWeSpace.Value
    else
      Kias := AttachKias.Value;
    AttachD.First;
    while not AttachD.Eof do
    begin
      AttachD.Edit;
      if (AttachDAcctype.Value = 22) and (AccListElectric.Value = 1) then
      begin
        AttachD.Edit;
        AttachDFromDate.Value := AccListListDate.Value;
        AttachDToDate.Value := AttachAttachDate.Value;
      end;
      if (AttachDAcctype.Value = 22) and (AccListElectric.Value = 0) then
      begin
        AttachD.Edit;
        AttachDFromDate.Clear;
        AttachDToDate.Clear;
      end;
      { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
      if (AttachDAcctype.Value = 16) and (AccListRemain.Value = 1) then
      begin
        AttachD.Edit;
        AttachDFromDate.Value := AccListListDate.Value;
        AttachDToDate.Value := AttachAttachDate.Value;
      end;
      if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 1) then
      begin
        AttachD.Edit;
        AttachDFromDate.Value := AccListEndEmpDate.Value + 7;
        AttachDToDate.Value := AttachAttachDate.Value;
      end;
      if (AttachDAcctype.Value = 16) and (AccListRemain.Value = 0) and
        (AttachRemin.Value = 0) then
      begin
        AttachD.Edit;
        AttachDFromDate.Clear;
        AttachDToDate.Clear;
      end;
      { ------------------------------------------------- }
      if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value <> 0) then
      begin
        AttachD.Edit;
        AttachDFromDate.Value := AttachDate3.Value;
        AttachDToDate.Value := AttachAttachDate.Value;
      end;
      if (AttachDAcctype.Value = 6) and (AttachDAccvalue.Value = 0) then
      begin
        AttachD.Edit;
        AttachDFromDate.Clear;
        AttachDToDate.Clear;
      end;
      if (AttachDAcctype.Value = 6) and (AccListGoodsDesc.Value = 1) then
      begin
        Store.Locate('Num', AttachWeeks.Value, []);
        if AccListAdmisMet.Value = 3 then
          WVAlue := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          WVAlue := StoreStore.Value;
        Store.Locate('Num', AttachWeeks.Value, []);
        AttachD.Edit;
        if AccListAdmisMet.Value = 3 then
          AttachAttachValue.Value := (StoreWalk.Value - WVAlue) +
            (StoreWalk.Value * IncomePerc.Value / 100);;
        if AccListAdmisMet.Value = 2 then
          AttachDAccvalue.Value := (StoreStore.Value - WVAlue) +
            (StoreStore.Value * IncomePerc.Value / 100);;
        if AccListAdmisMet.Value = 1 then
          AttachDAccvalue.Value := 0;
        if AttachKias.IsNull then
          AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWeSpace.Value
        else
          AttachDAccTotal.Value := AttachDAccvalue.Value * AttachKias.Value;
      end;
      if (AttachDAcctype.Value = 6) and (AccListGoodsDesc.Value <> 1) then
      begin
        Store.Locate('Num', AttachWeeks.Value, []);
        if AccListAdmisMet.Value = 3 then
          WVAlue := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          WVAlue := StoreStore.Value;
        Store.Locate('Num', AttachWeeks.Value, []);
        AttachD.Edit;
        if AccListAdmisMet.Value = 3 then
          AttachDAccvalue.Value := StoreWalk.Value - WVAlue;
        if AccListAdmisMet.Value = 2 then
          AttachDAccvalue.Value := StoreStore.Value - WVAlue;
        if AccListAdmisMet.Value = 1 then
          AttachDAccvalue.Value := 0;
        if AttachKias.IsNull then
          AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWeSpace.Value
        else
          AttachDAccTotal.Value := AttachDAccvalue.Value * AttachKias.Value;
      end;
      if AttachDAcctype.Value = 22 then
      begin
        if (AttachElectric.Value = 1) then
        begin
          if AccListElectric.Value = 1 then
            ElecDate := AccListListDate.Value
          else
            ElecDate := AccListArriveDate.Value;
          num := AttachAttachNum.Value;

          sAttach1.Close;
          sAttach1.ParamByName('VNum').Value := AttachListNum.Value;
          sAttach1.ParamByName('Vtype').Value := 4;
          sAttach1.Execute;

          // sAttach.Filtered := false;
          // sAttach.Filter := 'ListType = 4 and SAttachListNum = ' +
          /// AttachListNum.AsString;
          // sAttach.Filtered := true;
          sAttach1.First;
          while not sAttach1.Eof do
          begin
            if (sAttach1Electric.Value = 1) and (SAttach1AttachNum.Value < num)
            then
              ElecDate := sAttach1AttachDate.Value;
            sAttach1.Next;
          end;
          AttachDAccTotal.Value :=
            (DaysBetween(AttachAttachDate.Value, ElecDate) + 1) * qty *
            MIncomeElecVAlue.Value
        end
        else
          AttachDAccTotal.Value := 0
      end
      else
        { ------------------------«·»ﬁ«¡------------------------ }
        if AttachDAcctype.Value = 16 then
        begin
          case (AccListRemain.Value) of
            1:
              begin
                if AttachQty.IsNull then
                begin
                  if (AccListWight.Value <= MIncomeW2.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListListDate.Value)) * MIncomev2.Value *
                      AccListGoodsQty.Value
                  else if (AccListWight.Value > MIncomeW1.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListListDate.Value)) * MIncomev1.Value *
                      AccListGoodsQty.Value
                  else
                    AttachDAccTotal.Value := 0
                end
                else
                begin
                  if (not AttachQty.IsNull) then
                  begin
                    if (AccListWight.Value <= MIncomeW2.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value,
                        AccListListDate.Value)) * MIncomev2.Value *
                        AttachQty.Value
                    else if (AccListRemain.Value = 1) and
                      (AccListWight.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value,
                        AccListListDate.Value)) * MIncomev1.Value *
                        AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end;
                end;
              end;
            0:
              begin
                if (AttachKias.IsNull) and (AttachQty.IsNull) then
                begin
                  if (AttachRemin.Value = 1) and
                    (AccListWight.Value <= MIncomeW2.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev2.Value *
                      AccListGoodsQty.Value
                  else if (AccListRemain.Value = 1) and
                    (AccListWight.Value > MIncomeW1.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev1.Value *
                      AccListGoodsQty.Value
                  else
                    AttachDAccTotal.Value := 0
                end
                else if (AttachDAcctype.Value = 16) and (not AttachKias.IsNull)
                  and (AttachQty.IsNull) then
                begin
                  if (AttachRemin.Value = 1) and
                    (AttachKias.Value <= MIncomeW2.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev2.Value *
                      AccListGoodsQty.Value
                  else if (AccListRemain.Value = 1) and
                    (AttachKias.Value > MIncomeW1.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev1.Value *
                      AccListGoodsQty.Value
                  else
                    AttachDAccTotal.Value := 0
                end
                else if (AttachDAcctype.Value = 16) and (AttachKias.IsNull) and
                  (not AttachQty.IsNull) then
                begin
                  if (AttachRemin.Value = 1) and
                    (AccListWight.Value <= MIncomeW2.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev2.Value *
                      AttachQty.Value
                  else if (AccListRemain.Value = 1) and
                    (AccListWight.Value > MIncomeW1.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev1.Value *
                      AttachQty.Value
                  else
                    AttachDAccTotal.Value := 0
                end
                else if (AttachDAcctype.Value = 16) and (not AttachKias.IsNull)
                  and (not AttachQty.IsNull) then
                begin
                  if (AttachRemin.Value = 1) and
                    (AttachKias.Value <= MIncomeW2.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev2.Value *
                      AttachQty.Value
                  else if (AttachRemin.Value = 1) and
                    (AttachKias.Value > MIncomeW1.Value) then
                    AttachDAccTotal.Value :=
                      (DaysBetween(AttachAttachDate.Value,
                      AccListEndEmpDate.Value + 6)) * MIncomev1.Value *
                      AttachQty.Value
                  else
                    AttachDAccTotal.Value := 0
                end;
              end;
          end;
        end;
      { ------------------------------------------------ }
      Income.Locate('IncNum', 13, []);
      if (AttachDAcctype.Value = 13) and (AttachMezan.Value = 1) then
      begin
        AttachDAccvalue.Value := IncomeRsef.Value;
        AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWight.Value;
      end;
      if (AttachDAcctype.Value = 13) and (AttachMezan.Value = 0) then
      begin
        AttachDAccvalue.Value := 0;
        AttachDAccTotal.Value := 0;
      end;
      AttachD.Next;
    end;
  end;
end;

procedure TAttachFm.DBGrid1CellClick(Column: TColumn);
begin
  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
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

  end;
end;

procedure TAttachFm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
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

  end;
end;

procedure TAttachFm.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with DmdFm do
  begin

    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    if not Attach.IsEmpty then
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

  end;
end;

procedure TAttachFm.sBitBtn2Click(Sender: TObject);
begin
  dmdfm.QAccUnitcount.Close;
    dmdfm.QAccUnitcount.ParamByName('num').Value := dmdfm.AttachAttachNum.Value;
    dmdfm.QAccUnitcount.Open;
  // Application.CreateForm(TRepFm, RepFm);
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\Attach.fr3');
  frxReport1.Variables.Variables['ASDM'] := '''«’· ··“»Ê‰''';
  frxReport1.ShowReport(true);

end;

procedure TAttachFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TAttachFm.sBitBtn13Click(Sender: TObject);
var
  d: integer;
begin
  with DmdFm do
  begin
    if Attach.IsEmpty then
      raise Exception.Create('√œŒ· »Ì«‰«  «·„·Õﬁ √Ê·«');
    if not AttachD.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (Attach.State = dsedit) or (Attach.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');

    if not Attach.IsEmpty then
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

    Income.First;
    while not Income.Eof do
    begin
      AttachD.Insert;
      AttachDAttachNum.Value := AttachAttachNum.Value;
      AttachDListNum.Value := AttachListNum.Value;
      AttachDListType.Value := AttachListtype.Value;
      AttachDAcctype.Value := IncomeIncNum.Value;
      AttachD.Post;

      Income.Next;
    end;


    // Attach.Close;
    // Attach.ParamByName('VNum').Value := AccListListNum.Value;
    // Attach.ParamByName('Vtype').Value := 4;
    // Attach.Execute;

    // if not Attach.IsEmpty then
    // begin
    // AttachD.Close;
    // AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
    // AttachD.ParamByName('VNum').Value := AttachListNum.Value;
    // AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
    // AttachD.Execute;
    // end;

    // AttachD.Refresh;
  end;

 
  sBitBtn15Click(Sender);
  // DmdFm.AttachD.Refresh;
  // with DmdFm do
  // begin
  //
  // if not Attach.IsEmpty then
  // begin
  // AttachD.Close;
  // AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
  // AttachD.ParamByName('VNum').Value := AttachListNum.Value;
  // AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
  // AttachD.Execute;
  // end;

  // end;
end;

procedure TAttachFm.sBitBtn15Click(Sender: TObject);
var
  WVAlue: real;
  qty, Kias, m10, qtf,peak_value1,peak_value2: real;
  arrive_date,list_date:TDateTime;
begin
  qty := qtf;
  with DmdFm do
  begin

    m10 := 0;

    VUnitAccList.First;
    while not VUnitAccList.Eof do
    begin

      m10 := VUnitAccListAddCount.Value;

      VUnitAccList.Next;
    end;

    if AttachQty.IsNull then
      qty := m10
    else
      qty := AttachQty.Value;
    if AttachKias.IsNull then
      Kias := AccListWeSpace.Value
    else
      Kias := AttachKias.Value;

     

    case Attach.RecNo of
      { ------------------√Ê· „·Õﬁ--------------------------- }
      1:
        begin // 0
          AttachD.First;
          while not AttachD.Eof do
          begin // 1
            AttachD.Edit;
            if (AttachDAcctype.Value = 22) and (AccListElectric.Value = 1) then
            begin // 2
              AttachD.Edit;
              AttachDFromDate.Value := AccListListDate.Value + 1;
              AttachDToDate.Value := AttachAttachDate.Value;
            end; // 2//
            if (AttachDAcctype.Value = 22) and (AccListElectric.Value = 0) then
            begin // 3
              AttachD.Edit;
              AttachDFromDate.Clear;
              AttachDToDate.Clear;
            end; // 3//

            if (AttachDAcctype.Value = 22) and (AccListElectric.Value = 0) and
              (AttachElectric.Value = 1) then
            begin // 6
              AttachD.Edit;
              AttachDFromDate.Value := AccListArriveDate.Value;
              AttachDToDate.Value := AttachAttachDate.Value;
            end; // 6//

            if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 0) and
              (AttachRemin.Value = 0) then
            begin // 6
              AttachD.Edit;
              AttachDFromDate.Clear;
              AttachDToDate.Clear;
            end; // 6//

            if (dmdfm.AttachDAcctype.Value = 6) and (dmdfm.AccListGoodsDesc.Value = 1) then
            begin // 7
              Store.Locate('Num', DmdFm.AttachYyy.Value -
                dmdfm.AttachWeeks.Value, []);
              if AccListAdmisMet.Value = 3 then
                WVAlue := dmdfm.StoreWalk.Value;
              if AccListAdmisMet.Value = 2 then
                WVAlue := dmdfm.StoreStore.Value;
              Store.Locate('Num', dmdfm.AttachYyy.Value, []);
              // Store.Locate('Num',AttachWeeks.Value,[]);
              { AttachD.Edit;
                if AccListAdmisMet.Value=3 then
                AttachAttachValue.Value:=(StoreWalk.Value-WVAlue)+(StoreWalk.Value*IncomePerc.Value/100);;
                if AccListAdmisMet.Value=2 then
                AttachDAccvalue.Value:=(StoreStore.Value-WVAlue)+(StoreStore.Value*IncomePerc.Value/100);;
                if AccListAdmisMet.Value=1 then
                AttachDAccvalue.Value:=0;
                if AttachKias.IsNull then
                AttachDAccTotal.Value:=AttachDAccvalue.Value*AccListWeSpace.Value
                else
                AttachDAccTotal.Value:=AttachDAccvalue.Value*AttachKias.Value; }

              AttachD.Edit;
              if AttachWeeks.Value <> 5455 then
              begin // 8
                if AccListAdmisMet.Value = 3 then
                  dmdfm.AttachAttachValue.Value := (dmdfm.StoreWalk.Value - WVAlue) +
                    (StoreWalk.Value * IncomePerc.Value / 100);;
                if AccListAdmisMet.Value = 2 then
                  dmdfm.AttachDAccvalue.Value := (dmdfm.StoreStore.Value - WVAlue) +
                    (dmdfm.StoreStore.Value * IncomePerc.Value / 100);;
                if AccListAdmisMet.Value = 1 then
                  dmdfm.AttachDAccvalue.Value := 0;
                if AttachKias.IsNull then
                  AttachDAccTotal.Value := AttachDAccvalue.Value *
                    AccListWeSpace.Value
                else
                  AttachDAccTotal.Value := AttachDAccvalue.Value *
                    AttachKias.Value;
              end // 8//
              else
              begin // 9
                AttachDAccvalue.Value := 0;
                AttachDAccTotal.Value := 0;
              end; // 9//
            end; // 7//

            if (AttachDAcctype.Value = 6) and (AccListGoodsDesc.Value <> 1) then
            begin // 10
            if DmdFm.AttachYyy.Value - dmdfm.AttachWeeks.Value=0 then
              Store.Locate('Num', 1, [])
                else
              Store.Locate('Num', DmdFm.AttachYyy.Value -
                dmdfm.AttachWeeks.Value, []);
              if AccListAdmisMet.Value = 3 then
                WVAlue := dmdfm.StoreWalk.Value;
              if AccListAdmisMet.Value = 2 then
                WVAlue := StoreStore.Value;
              Store.Locate('Num', AttachYyy.Value, []);
              // Store.Locate('Num',AttachWeeks.Value,[]);
              { AttachD.Edit;
                if AccListAdmisMet.Value=3 then
                AttachDAccvalue.Value:=StoreWalk.Value-WVAlue;
                if AccListAdmisMet.Value=2 then
                AttachDAccvalue.Value:=StoreStore.Value-WVAlue;
                if AccListAdmisMet.Value=1 then
                AttachDAccvalue.Value:=0;
                if AttachKias.IsNull then
                AttachDAccTotal.Value:=AttachDAccvalue.Value*AccListWeSpace.Value
                else
                AttachDAccTotal.Value:=AttachDAccvalue.Value*AttachKias.Value;
                end; }
              AttachD.Edit;
              if AttachWeeks.Value <> 5455 then
              begin // 11
                if AccListAdmisMet.Value = 3 then
                  dmdfm.AttachDAccvalue.Value := dmdfm.StoreWalk.Value - WVAlue;
                if AccListAdmisMet.Value = 2 then
                  dmdfm.AttachDAccvalue.Value := dmdfm.StoreStore.Value - WVAlue;
                if AccListAdmisMet.Value = 1 then
                  dmdfm.AttachDAccvalue.Value := 0;
                if AttachKias.IsNull then
                  dmdfm.AttachDAccTotal.Value := dmdfm.AttachDAccvalue.Value *
                    AccListWeSpace.Value
                else
                  dmdfm.AttachDAccTotal.Value := dmdfm.AttachDAccvalue.Value *
                    dmdfm.attachKias.Value;
              end // 11//
              else
              begin // 12
                AttachDAccvalue.Value := 0;
                AttachDAccTotal.Value := 0;
              end; // 12//

              { ------------------------⁄Ê«¡œ «· Œ“Ì‰------------------------- }
              if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value <> 0)
              then
              begin // 13
                AttachD.Edit;
                AttachDFromDate.Value := AccListAllwedDate.Value + 1;
                AttachDToDate.Value := AccListAllwedDate.Value +
                  (AttachWeeks.Value * 7);
              end; // 13//
              if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value = 0) then
              begin // 14
                AttachD.Edit;
                AttachDFromDate.Clear;
                AttachDToDate.Clear;
              end; // 11//

            end; // 0//
            // end;
            { ------------------------«·ﬂÂ—»«¡------------------------ }
            if AttachDAcctype.Value = 22 then
            begin
              case AccListElectric.Value of
                0:
                  begin
                    if (AttachElectric.Value = 1) then
                    begin
                    {$REGION '«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…'}
                     if infoPeak_active.Value=true then //«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…
                     begin
                      arrive_date:=(AccListArriveDate.Value+1) ;
                      list_date:=(AttachAttachDate.Value);

                        //«·Ê’Ê· Ê«·≈⁄œ«œ ›Ì «·–—Ê…
                        if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(list_date<=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(AttachAttachDate.Value, AccListArriveDate.Value) + 1);
                          peak_value2:=peak_value1*(DaysBetween(AttachAttachDate.Value, AccListArriveDate.Value) + 1);
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          + 1) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                        else
                         //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
                         if (arrive_date<=dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) + 1);
                          peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) + 1);
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          + 1) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                        else
                         //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ ›Ì «·–—Ê…
                         if (arrive_date<dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_From.Value) AND (list_date<=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(PeakTblPeak_From.Value, list_date) + 1);
                          peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_From.Value, list_date) + 1);
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          + 1) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                           else
                         //«·Ê’Ê· ›Ì «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
                         if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(arrive_date<=dmdfm.PeakTblPeak_To.Value) AND (list_date>dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(arrive_date, PeakTblPeak_To.Value) + 1);
                          peak_value2:=peak_value1*(DaysBetween(arrive_date, PeakTblPeak_To.Value) + 1);
                           dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          + 1) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                         else  //·Ì” ›Ì «·–—Ê…
                          AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate22.Value)
                        + 1) * qty * MIncomeElecVAlue.Value

                     end
                       else  //·Ì” ›Ì «·–—Ê…
                          dmdfm.AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate22.Value-1)
                        ) * qty * MIncomeElecVAlue.Value
                    {$ENDREGION}


                    end{if (AttachElectric.Value = 1)}
                    else
                      AttachDAccTotal.Value := 0
                  end;
                1:
                  begin
                    if (AttachElectric.Value = 1) then
                    begin
                            {$REGION '«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…'}
                     if infoPeak_active.Value=true then //«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…
                     begin
                      arrive_date:=(AttachDate22.Value+1) ;
                      list_date:=(AttachAttachDate.Value);

                        //«·Ê’Ê· Ê«·≈⁄œ«œ ›Ì «·–—Ê…
                        if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(list_date<=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(AttachAttachDate.Value, arrive_date) +1);
                          peak_value2:=peak_value1*(DaysBetween(AttachAttachDate.Value, arrive_date)+1 );
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                        else
                         //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
                         if (arrive_date<=dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) );
                          peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) );
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                        else
                         //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ ›Ì «·–—Ê…
                         if (arrive_date<dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_From.Value) AND (list_date<=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(PeakTblPeak_From.Value, list_date) );
                          peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_From.Value, list_date) );
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                           else
                         //«·Ê’Ê· ›Ì «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
                         if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(arrive_date<=dmdfm.PeakTblPeak_To.Value) AND (list_date>dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(arrive_date, PeakTblPeak_To.Value)+1 );
                          peak_value2:=peak_value1*(DaysBetween(arrive_date, PeakTblPeak_To.Value)+1 );
                           dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                         else  //·Ì” ›Ì «·–—Ê…
                          AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate22.Value)
                        ) * qty * MIncomeElecVAlue.Value

                     end
                    {$ENDREGION}
                        else  //·Ì” ›Ì «·–—Ê…

                           dmdfm.AttachDAccTotal.Value :=
                          (DaysBetween(AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * MIncomeElecVAlue.Value



                    end{if (AttachElectric.Value = 1)}
                    else
                      AttachDAccTotal.Value := 0
                  end;
              end;
            end
            else
              { ------------------------«·»ﬁ«¡------------------------ }
              if dmdfm.AttachDAcctype.Value = 16 then
              begin
                case (AttachRemin.Value) of
                    1..2:
                    begin
                      if AttachQty.IsNull then
                      begin
                        if (AccListWight.Value <= MIncomeW2.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value)) * MIncomev2.Value *
                            AttachQty.Value
                        else if (AccListWight.Value > MIncomeW1.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value)) * MIncomev1.Value *
                            AttachQty.Value
                        else
                          AttachDAccTotal.Value := 0
                      end
                      else
                      begin
                        if (not AttachQty.IsNull) then
                        begin
                          if (AccListRemain.Value = 1) then
                            AttachDAccTotal.Value :=
                              (DaysBetween(AttachAttachDate.Value,
                              AttachDate4.Value)) * MIncomev2.Value *
                              AttachQty.Value
                          else
                            AttachDAccTotal.Value :=
                              (DaysBetween(AttachAttachDate.Value,
                              AttachDate4.Value)) * MIncomev1.Value *
                              AttachQty.Value

                        end
                        else
                        AttachDAccTotal.Value := 0;
                      end;
                    end;
                  0:
                    begin
                      if (AttachKias.IsNull) and (AttachQty.IsNull) then
                      begin
                        if (AttachRemin.Value = 1) and
                          (AccListWight.Value <= MIncomeW2.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev2.Value *
                            AttachQty.Value
                        else if (AttachRemin.Value = 1) and
                          (AccListWight.Value > MIncomeW1.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev1.Value *
                            AttachQty.Value
                        else
                          AttachDAccTotal.Value := 0
                      end
                      else if (AttachDAcctype.Value = 16) and
                        (not AttachKias.IsNull) and (AttachQty.IsNull) then
                      begin
                        if (AttachRemin.Value = 1) and
                          (AttachKias.Value <= MIncomeW2.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev2.Value *
                            AttachQty.Value
                        else if (AttachRemin.Value = 1) and
                          (AttachKias.Value > MIncomeW1.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev1.Value *
                            AttachQty.Value
                        else
                          AttachDAccTotal.Value := 0
                      end
                      else if (AttachDAcctype.Value = 16) and
                        (AttachKias.IsNull) and (not AttachQty.IsNull) then
                      begin
                        if (AttachRemin.Value = 1) and
                          (AccListWight.Value <= MIncomeW2.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev2.Value *
                            AttachQty.Value
                        else if (AttachRemin.Value = 1) and
                          (AccListWight.Value > MIncomeW1.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev1.Value *
                            AttachQty.Value
                        else
                          AttachDAccTotal.Value := 0
                      end
                      else if (AttachDAcctype.Value = 16) and
                        (not AttachKias.IsNull) and (not AttachQty.IsNull) then
                      begin
                        if (AttachRemin.Value = 1) and
                          (AttachKias.Value <= MIncomeW2.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev2.Value *
                            AttachQty.Value
                        else if (AttachRemin.Value = 1) and
                          (AttachKias.Value > MIncomeW1.Value) then
                          AttachDAccTotal.Value :=
                            (DaysBetween(AttachAttachDate.Value,
                            AttachDate4.Value + 6)) * MIncomev1.Value *
                            AttachQty.Value
                        else
                          AttachDAccTotal.Value := 0
                      end;
                    end;
                end;
              end;

            { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
              if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 1) then
            begin // 4
              AttachD.Edit;
              AttachDFromDate.Value := AttachDate4.Value + 1;
              AttachDToDate.Value := AttachAttachDate.Value;
            end; // 4//
            if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 1) then
            begin // 5
              AttachD.Edit;
              AttachDFromDate.Value := AttachDate4.Value + 1;
              AttachDToDate.Value := AttachAttachDate.Value;
            end; // 5//
            { ------------------------------------------------ }
            Income.Locate('IncNum', 13, []);
            if (AttachDAcctype.Value = 13) and (AttachMezan.Value = 1) then
            begin
              AttachDAccvalue.Value := IncomeRsef.Value;
              AttachDAccTotal.Value := AttachDAccvalue.Value *
                AccListWight.Value;
            end;
            if (AttachDAcctype.Value = 13) and (AttachMezan.Value = 0) then
            begin
              AttachDAccvalue.Value := 0;
              AttachDAccTotal.Value := 0;
            end;
            AttachD.Next;
          end;
        end

      //88888888888888888888888888888888888888888888888888888888888888888888888
      { ------------------»«ﬁÌ «·„·«Õﬁ--------------------------- }
    else
      begin
        AttachD.First;
        while not AttachD.Eof do
        begin
          AttachD.Edit;

          { ------------------------------------------------- }

          if (AttachDAcctype.Value = 6) and (AccListGoodsDesc.Value = 1) then
          begin // 1
            Store.Locate('Num', DmdFm.AttachYyy.Value - AttachWeeks.Value, []);
            if AccListAdmisMet.Value = 3 then
              WVAlue := StoreWalk.Value;
            if AccListAdmisMet.Value = 2 then
              WVAlue := StoreStore.Value;
            Store.Locate('Num', AttachYyy.Value, []);
            // Store.Locate('Num',AttachWeeks.Value,[]);
            AttachD.Edit;
            if AttachWeeks.Value <> 5455 then
            begin // 2
              if AccListAdmisMet.Value = 3 then
                AttachAttachValue.Value := (StoreWalk.Value - WVAlue) +
                  (StoreWalk.Value * IncomePerc.Value / 100);;
              if AccListAdmisMet.Value = 2 then
                AttachDAccvalue.Value := (StoreStore.Value - WVAlue) +
                  (StoreStore.Value * IncomePerc.Value / 100);;
              if AccListAdmisMet.Value = 1 then
                AttachDAccvalue.Value := 0;
              if AttachKias.IsNull then
                AttachDAccTotal.Value := AttachDAccvalue.Value *
                  AttachKias.Value
              else
                AttachDAccTotal.Value := AttachDAccvalue.Value *
                  AttachKias.Value;
            end // 2//
            else
            begin // 3
              AttachDAccvalue.Value := 0;
              AttachDAccTotal.Value := 0;
            end; // 3//

          end; // 1//
          if (AttachDAcctype.Value = 6) and (AccListGoodsDesc.Value <> 1) then
          begin // 4
            Store.Locate('Num', DmdFm.AttachYyy.Value - AttachWeeks.Value, []);
            if AccListAdmisMet.Value = 3 then
              WVAlue := StoreWalk.Value;
            if AccListAdmisMet.Value = 2 then
              WVAlue := StoreStore.Value;
            Store.Locate('Num', AttachYyy.Value, []);
            // Store.Locate('Num',AttachWeeks.Value,[]);
            AttachD.Edit;
            if AttachWeeks.Value <> 5455 then
            begin // 5
              if AccListAdmisMet.Value = 3 then
                AttachDAccvalue.Value := StoreWalk.Value - WVAlue;
              if AccListAdmisMet.Value = 2 then
                AttachDAccvalue.Value := StoreStore.Value - WVAlue;
              if AccListAdmisMet.Value = 1 then
                AttachDAccvalue.Value := 0;
              if AttachKias.IsNull then
                AttachDAccTotal.Value := AttachDAccvalue.Value *
                  AttachKias.Value
              else
                AttachDAccTotal.Value := AttachDAccvalue.Value *
                  AttachKias.Value;
            end // 5//
            else
            begin
              AttachDAccvalue.Value := 0;
              AttachDAccTotal.Value := 0;
            end;
          end;

          if (AttachDAcctype.Value = 6) and (AttachDAccTotal.Value <> 0) then
          begin
            AttachD.Edit;
            AttachDFromDate.Value := AttachDate3.Value + 1;
            AttachDToDate.Value := AttachDate3.Value + (AttachWeeks.Value * 7);
          end;
          if (AttachDAcctype.Value = 6) and (AttachDAccvalue.Value = 0) then
          begin
            AttachD.Edit;
            AttachDFromDate.Clear;
            AttachDToDate.Clear;
          end;

          { .................................................... }
          if AttachDAcctype.Value = 22 then
          begin
            case AttachElectric.Value of
              0:
                begin
                  // if (AttachElectric.Value=1) then
                  // AttachDAccTotal.Value:=(DaysBetween(AttachAttachDate.Value,AttachDate22.Value)+1)*Qty*MIncomeElecVAlue.Value
                  // else
                  AttachDAccTotal.Value := 0
                end;
              1:
                begin
{$REGION '«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…'}
                     if infoPeak_active.Value=true then //«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…
                     begin
                      arrive_date:=(AttachDate22.Value+1) ;
                      list_date:=  (AttachAttachDate.Value);

                        //«·Ê’Ê· Ê«·≈⁄œ«œ ›Ì «·–—Ê…
                        if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(list_date<=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(AttachAttachDate.Value, arrive_date) +1);
                          peak_value2:=peak_value1*(DaysBetween(AttachAttachDate.Value, arrive_date)+1 );
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                        else
                         //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
                         if (arrive_date<=dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) );
                          peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) );
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                        else
                         //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ ›Ì «·–—Ê…
                         if (arrive_date<dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_From.Value) AND (list_date<=dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(PeakTblPeak_From.Value, list_date) );
                          peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_From.Value, list_date)) ;
                          dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                           else
                         //«·Ê’Ê· ›Ì «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
                         if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(arrive_date<=dmdfm.PeakTblPeak_To.Value) AND (list_date>dmdfm.PeakTblPeak_To.Value)then
                        begin
                          peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
                          peak_value2:=(DaysBetween(arrive_date, PeakTblPeak_To.Value) );
                          peak_value2:=peak_value1*(DaysBetween(arrive_date, PeakTblPeak_To.Value));
                           dmdfm.AttachDAccTotal.Value :=
                         ((DaysBetween(dmdfm.AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                          ) * qty * dmdfm.MIncomeElecVAlue.Value)+(peak_value2*qty)
                        end
                         else  //·Ì” ›Ì «·–—Ê…
                          AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate22.Value)
                        ) * qty * MIncomeElecVAlue.Value

                     end
                      else  //·Ì” ›Ì «·–—Ê…
                          AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, dmdfm.AttachDate22.Value)
                        ) * qty * dmdfm.MIncomeElecVAlue.Value
{$ENDREGION}


                    end{if (AttachElectric.Value = 1)}
            end;
          end
          else if dmdfm.AttachDAcctype.Value = 16 then
          begin
            case (AttachRemin.Value) of
              1:
                begin
                  if (AttachQty.IsNull) then
                  begin
                    if (AccListWight.Value <= MIncomeW2.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev2.Value * AttachQty.Value
                    else if (AttachRemin.Value = 1) and
                      (AccListWight.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev1.Value * AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end
                  else if (not AttachQty.IsNull) then
                  begin
                    if (dmdfm.AccListRemain.Value = 1)  then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev2.Value * AttachQty.Value
                    else if (AttachRemin.Value = 1) and
                      (AccListWight.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev1.Value * AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end
                end;
              0:
                begin
                  if (AttachKias.IsNull) and (AttachQty.IsNull) then
                  begin
                    if (AttachRemin.Value = 1) and
                      (AccListWight.Value <= MIncomeW2.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev2.Value * AttachQty.Value
                    else if (AttachRemin.Value = 1) and
                      (AccListWight.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev1.Value * AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end
                  else if (AttachDAcctype.Value = 16) and
                    (not AttachKias.IsNull) and (AttachQty.IsNull) then
                  begin
                    if (AttachRemin.Value = 1) and
                      (AttachKias.Value <= MIncomeW2.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev2.Value * AttachQty.Value
                    else if (AttachRemin.Value = 1) and
                      (AttachKias.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev1.Value * AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end
                  else if (AttachDAcctype.Value = 16) and (AttachKias.IsNull)
                    and (not AttachQty.IsNull) then
                  begin
                    if (AttachRemin.Value = 1) and
                      (AccListWight.Value <= MIncomeW2.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev2.Value * AttachQty.Value
                    else if (AttachRemin.Value = 1) and
                      (AccListWight.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev1.Value * AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end
                  else if (AttachDAcctype.Value = 16) and
                    (not AttachKias.IsNull) and (not AttachQty.IsNull) then
                  begin
                    if (AttachRemin.Value = 1) and
                      (AttachKias.Value <= MIncomeW2.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev2.Value * AttachQty.Value
                    else if (AttachRemin.Value = 1) and
                      (AttachKias.Value > MIncomeW1.Value) then
                      AttachDAccTotal.Value :=
                        (DaysBetween(AttachAttachDate.Value, AttachDate4.Value))
                        * MIncomev1.Value * AttachQty.Value
                    else
                      AttachDAccTotal.Value := 0
                  end;
                end;
            end;
          end;

          if (AttachDAcctype.Value = 22) and (AccListElectric.Value = 1) then
          begin
            AttachD.Edit;
            AttachDFromDate.Value := AttachDate22.Value;
            AttachDToDate.Value := AttachAttachDate.Value;
          end;

          if ((AttachDAcctype.Value = 22) and (AttachElectric.Value = 1)) then
          begin
            AttachD.Edit;
            AttachDFromDate.Value := dmdfm.AttachDate22.Value+1 ;
            AttachDToDate.Value := dmdfm.AttachAttachDate.Value;
          end;

          if (AttachDAcctype.Value = 22) and (AttachElectric.Value = 0) then
          begin
            AttachD.Edit;
            AttachDFromDate.Clear;
            AttachDToDate.Clear;
          end;
          { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
          if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 1) then
          begin
            AttachD.Edit;
            AttachDFromDate.Value := AttachDate4.Value;
            AttachDToDate.Value := AttachAttachDate.Value;
          end;
          if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 1) then
          begin
            AttachD.Edit;
            AttachDFromDate.Value := AttachDate4.Value + 1;
            AttachDToDate.Value := AttachAttachDate.Value;
          end;
          if (AttachDAcctype.Value = 16) and (AttachRemin.Value = 0) and
            (AttachRemin.Value = 0) then
          begin
            AttachD.Edit;
            AttachDFromDate.Clear;
            AttachDToDate.Clear;
          end;

          Income.Locate('IncNum', 13, []);
          if (AttachDAcctype.Value = 13) and (AttachMezan.Value = 1) then
          begin
            AttachDAccvalue.Value := IncomeRsef.Value;
            AttachDAccTotal.Value := AttachDAccvalue.Value * AccListWight.Value;
          end;
          if (AttachDAcctype.Value = 13) and (AttachMezan.Value = 0) then
          begin
            AttachDAccvalue.Value := 0;
            AttachDAccTotal.Value := 0;
          end;
          AttachD.Next;
        end;
      end;
    end;
  end;
end;

procedure TAttachFm.sBitBtn16Click(Sender: TObject);
begin
{if (DmdFm.attachprogress.Value=0)or(DmdFm.attachprogress.Value=3) then
 begin
  if Application.messagebox('≈—”«· «·„·Õﬁ ··„—«Ã⁄… ... Â· √‰  „ √ﬂœø', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
   DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='update attach set progress=1 where attachnum='+DmdFm.AttachAttachNum.AsString;
  DmdFm.generalq.ExecSQL;

  DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name,attoracclist)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AttachAttachNum.AsString+',1,'+QuotedStr('≈—”«· ··„—«Ã⁄…')+',2)';
  DmdFm.generalq.ExecSQL;
 ShowMessage(' „ «·≈—”«· ··„—«Ã⁄…')
 end
 else
 ShowMessage('·« Ì„ﬂ‰ﬂ «·«—”«· ··„—«Ã⁄…')}
end;

procedure TAttachFm.sBitBtn14Click(Sender: TObject);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  DmdFm.AttachD.First;
  while not DmdFm.AttachD.Eof do
  begin
    DmdFm.AttachD.Delete;


  //  with DmdFm do
  //  begin

      // Attach.Close;
      // Attach.ParamByName('VNum').Value := AccListListNum.Value;
      // Attach.ParamByName('Vtype').Value := 4;
      // Attach.Execute;

      // if not Attach.IsEmpty then
      // begin
      // AttachD.Close;
      // AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
      // AttachD.ParamByName('VNum').Value := AttachListNum.Value;
      /// AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
      // AttachD.Execute;
  //  end;

  end;

  

end;

procedure TAttachFm.sBitBtn12Click(Sender: TObject);
var
  pr1, pr2: string;
  sss: integer;
  w1, S, t, S1: string;
  nwes: string;
  i: integer;
begin
  with DmdFm do
  begin

    with TIniFile.Create(changefileext(paramstr(0), '.INI')) do
      try

        pr1 := readstring('Data', 'Print Fatora', '');
        pr2 := readstring('Data', 'Print Barcode', '');

      finally
      end;

    // Application.CreateForm(TRepFm, RepFm);
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\reports\Attach.fr3');

    frxReport1.PrintOptions.Printer := pr1;
    frxReport1.PrintOptions.Copies := 5;
    frxReport1.PrintOptions.ShowDialog := false;
    frxReport1.PrepareReport();
    frxReport1.Print;

    // frxReport1.PrintOptions.Printer := pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''’Ê—… ··“»Ê‰''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;

    // RepFm.frxReport1.PrintOptions.Printer:=pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    // frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);
    // RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''··Œ“Ì‰…''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;

    // frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);
    /// RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''··Õ”«»« ''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;

    // frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);
    // RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''··Õ›Ÿ''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;
    // RepFm.Free;

  end;
end;

procedure TAttachFm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if Edit1.Text <> '' then
    begin
      if DmdFm.AccList.Locate('ListNum', Edit1.Text, []) then
      begin
        Edit1.Color := clWhite;
        Edit1.Font.Color := clblack;
      end
      else
      begin
        Edit1.Color := clblack;
        Edit1.Font.Color := clred;
      end;
    end;

  end;

end;

procedure TAttachFm.FormActivate(Sender: TObject);
begin
DmdFm.Vunitaccdet.Close;
DmdFm.Vunitaccdet.ParamByName('ListNum').Value:=DmdFm.AccListListNum.Value;
DmdFm.Vunitaccdet.ParamByName('NumAttach1').Value:=DmdFm.AttachAttachNum.Value;
DmdFm.Vunitaccdet.open;

end;

end.
