unit DelLstUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, sEdit, sPanel,
  sMaskEdit, sCustomComboEdit, sTooledit, sCheckBox;

type
  TDelLstFm = class(TForm)
    sPanel1: TsPanel;
    Label1: TLabel;
    sEdit1: TsEdit;
    Label2: TLabel;
    Label3: TLabel;
    sEdit3: TsEdit;
    sDateEdit1: TsDateEdit;
    sCheckBox1: TsCheckBox;
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure sDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelLstFm: TDelLstFm;

implementation

uses MainUn, RepUn, DmdUm, AcListUn, AddUnitUn, AgentUn, AiiradatUn, AngSerUn,
  Attach2Un, Attach3Un, AttachUn, BillloadUn, BillSrUn, CarryUn, CloseUn,
  Dervr6Un, Dervr7Un, DirectDeliveryUn, DlyViewU, Dmd2Un, EfrajUn, EINCmUn,
  HatkaUn, HelpUn, IncoEnterUn, IncoKEnterUn, IncoSEnterUn, ListShUn,
  LocalAgantUn, LstDetUn, PermUn, ServSerUn, ShipUn, SplashUn, SrchShUn, SrchUn,
  SubSrcUn, UFEnterPass, UnlockUn, VDateHrakUn, VdateHUn, ViewUn;

{$R *.dfm}

procedure TDelLstFm.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sDateEdit1.SetFocus;
end;

procedure TDelLstFm.sEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    with DmdFm do
    begin
      AlterBill := sEdit1.Text;
      if (AlterBill <> '') then
      begin
        if RsomOrEr = 1 then
        begin

        Dmd2Fm.SAccList.close ;
        Dmd2Fm.SAccList.ParamByName('listnum').Value:=AlterBill;
        Dmd2Fm.SAccList.open ;

       //   if not Dmd2Fm.sAccList.Locate('ListNum', strtoint(AlterBill), []) then
         if Dmd2Fm.sAccList.IsEmpty then

            raise Exception.Create('«·›« Ê—… €Ì— „ÊÃÊœ…')

          else
          begin
            if Dmd2Fm.sAccListListType.Value = 1 then
            begin
              DmdFm.Inco.FilterSQL := 'IncType=1';

              // if DmdFm.BillSrchQlisttype.Value = 1 then
              // begin
              if DmdFm.PermAcList.Value = false then
                raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
              AccType := 1;

              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 1;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;

              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;

              Application.CreateForm(TAcListFm, AcListFm);
              AcListFm.DBLookupComboBox6.Visible := false;
              AcListFm.DBRadioGroup1.Visible := false;
              AcListFm.sBitBtn4.Visible := True;
              AcListFm.sBitBtn24.Visible := True;

              AcListFm.sBitBtn26.Visible := false;
              AcListFm.sBitBtn28.Visible := false;
              AcListFm.sBitBtn27.Visible := false;
              AcListFm.sBitBtn29.Visible := false;

              AcListFm.Button2.Visible := false;
              AcListFm.DBCheckBox9.Visible := false;

              AcListFm.DBEdit16.Visible := false;
              AcListFm.Label30.Visible := false;

              AcListFm.sPanel3.Visible := True;
              AcListFm.sPanel4.Visible := false;

              AcListFm.DBEdit26.Visible := false;
              AcListFm.DBEdit9.Visible := false;
              AcListFm.Label31.Visible := false;


              AcListFm.Label22.Caption := '‰ﬁœÌ';

              /// ////////////////////////////////////////////

              Dmd2Fm.SAccList.Locate('ListNum', AlterBill, []);
              DmdFm.AccList.Insert;
              DmdFm.AccListShipNum.Value := Dmd2Fm.SAccListShipNum.Value;
              DmdFm.AccListArriveDate.Value := Dmd2Fm.SAccListArriveDate.Value;
              DmdFm.AccListBillNum2.Value := Dmd2Fm.SAccListBillNum2.Value;
              DmdFm.AccListBillNum.Value := Dmd2Fm.SAccListBillNum.Value;
              DmdFm.AccListToName.Value := Dmd2Fm.SAccListToname.Value;
              DmdFm.AccListAginNm.Value := Dmd2Fm.SAccListAginNm.Value;
              DmdFm.AccListEndEmpDate.Value := Dmd2Fm.SAccListEndEmpDate.Value;
              DmdFm.AccListGoodsname.Value := Dmd2Fm.SAccListGoodsname.Value;
              DmdFm.AccListWeSpace.Value := Dmd2Fm.SAccListWeSpace.Value;
              DmdFm.AccListWight.Value := Dmd2Fm.SAccListWight.Value;
              if Dmd2Fm.SAccListCars.Value > 0 then
                DmdFm.AccListCars.Value := Dmd2Fm.SAccListCars.Value;
              if Dmd2Fm.SAccListStates.Value > 0 then
                DmdFm.AccListStates.Value := Dmd2Fm.SAccListStates.Value;
              DmdFm.AccListGoodsQty.Value := Dmd2Fm.SAccListGoodsQty.Value;
              DmdFm.AccListUnit.Value := Dmd2Fm.SAccListUnit.Value;
         //     DmdFm.AccListQty2.Value := Dmd2Fm.SAccListQty2.Value;
         //     DmdFm.AccListUnit2.Value := Dmd2Fm.SAccListUnit2.Value;
         //     if Dmd2Fm.SAccListQty3.Value > 0 then
         //       DmdFm.AccListQty3.Value := Dmd2Fm.SAccListQty3.Value;
              DmdFm.AccListAdmisMet.Value := Dmd2Fm.SAccListAdmisMet.Value;
        //      DmdFm.AccListNum1.Value := Dmd2Fm.SAccListNum1.Value;
        //      DmdFm.AccListNum2.Value := Dmd2Fm.SAccListNum2.Value;
       //       DmdFm.AccListNum5.Value := Dmd2Fm.SAccListNum5.Value;
        //      DmdFm.AccListNum6.Value := Dmd2Fm.SAccListNum6.Value;
              DmdFm.AccListShipMet.Value := Dmd2Fm.SAccListShipMet.Value;
              DmdFm.AccListShipType.Value := Dmd2Fm.SAccListShipType.Value;
              DmdFm.AccListRoafe.Value := Dmd2Fm.SAccListRoafe.Value;
              DmdFm.AccListListDate.Value := Dmd2Fm.SAccListListDate.Value;

              DmdFm.AccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
              DmdFm.AccListDelWhy.Value := DelLstFm.sEdit3.Text;
              if DelLstFm.sCheckBox1.Checked = True then
                DmdFm.AccListCutF.Value := 1
              else
                DmdFm.AccListCutF.Value := 0;

              DmdFm.AccList.Post;

              VSUnitAccList.First;
              while not VSUnitAccList.Eof do
              begin

                VUnitAccList.Insert;

                VUnitAccListNumAlist.Value := AccListListNum.Value;
                VUnitAccListNumUnit.Value := VSUnitAccListNumUnit.Value;
                VUnitAccListQtityNormal.Value := VSUnitAccListQtityNormal.Value;
                VUnitAccListQtitoyRor.Value := VSUnitAccListQtitoyRor.Value;
                VUnitAccListNMIncome.Value := VSUnitAccListNMIncome.Value;
                VUnitAccListValNormal.Value := VSUnitAccListValNormal.Value;
                VUnitAccListValRoro.Value := VSUnitAccListValRoro.Value;
                VUnitAccListFwozQ.Value := VSUnitAccListFwozQ.Value;
                VUnitAccListFwozV.Value := VSUnitAccListFwozV.Value;
                VUnitAccListLanerQ.Value := VSUnitAccListLanerQ.Value;
                VUnitAccListLanerV.Value := VSUnitAccListLanerV.Value;
                VUnitAccListRofaQ.Value := VSUnitAccListRofaQ.Value;
                VUnitAccListRofaV.Value := VSUnitAccListRofaV.Value;
                VUnitAccListNRofaQ.Value := VSUnitAccListNRofaQ.Value;
                VUnitAccListNRofaV.Value := VSUnitAccListNRofaV.Value;
                VUnitAccListEjmale.Value := VSUnitAccListEjmale.Value;
                VUnitAccListAddCount.Value := VSUnitAccListAddCount.Value;
                VUnitAccList.Post;

                VSUnitAccList.Next;
              end;

              VSBollAccList.First;
              while not VSBollAccList.Eof do
              begin
                VBollAccList.Insert;

                VBollAccListNumAcc.Value := AccListListNum.Value;
                VBollAccListBollsa.Value := VSBollAccListBollsa.Value;
                VBollAccListNumLoad.Value := VSBollAccListNumLoad.Value;
                VBollAccList.Post;

                VSBollAccList.Next;
              end;
              /// ////////////////////////////////////////

              AcListFm.ShowModal;
              AcListFm.Free;

            end

            else if Dmd2Fm.sAccListListType.Value = 2 then
            begin
              if DmdFm.PermAcList.Value = false then
                raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
              AccType := 2;

              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 2;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              accdet.Close;
              accdet.ParamByName('VNum').Value := AccListListNum.Value;
              accdet.ParamByName('Vtype').Value := AccListListType.Value;
              accdet.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;

              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;
              Application.CreateForm(TAcListFm, AcListFm);
              AcListFm.DBLookupComboBox6.Visible := false;
              AcListFm.DBRadioGroup1.Visible := false;
              AcListFm.sBitBtn4.Visible := True;
              AcListFm.sBitBtn24.Visible := True;

              AcListFm.sBitBtn26.Visible := false;
              AcListFm.sBitBtn28.Visible := false;
              AcListFm.sBitBtn27.Visible := false;
              AcListFm.sBitBtn29.Visible := false;
              AcListFm.sPanel3.Visible := True;
              AcListFm.sPanel4.Visible := false;
              AcListFm.Button2.Visible := false;
              AcListFm.DBCheckBox9.Visible := false;
              /// AcListFm.sBitBtn4.SetFocus;
              AcListFm.Label22.Caption := 'Ã«—Ì';

              Dmd2Fm.SAccList.Locate('ListNum', AlterBill, []);
              DmdFm.AccList.Insert;
              DmdFm.AccListShipNum.Value := Dmd2Fm.SAccListShipNum.Value;
              DmdFm.AccListArriveDate.Value := Dmd2Fm.SAccListArriveDate.Value;
              DmdFm.AccListBillNum2.Value := Dmd2Fm.SAccListBillNum2.Value;
              DmdFm.AccListBillNum.Value := Dmd2Fm.SAccListBillNum.Value;
              DmdFm.AccListToName.Value := Dmd2Fm.SAccListToname.Value;
              DmdFm.AccListAginNm.Value := Dmd2Fm.SAccListAginNm.Value;
              DmdFm.AccListEndEmpDate.Value := Dmd2Fm.SAccListEndEmpDate.Value;
              DmdFm.AccListGoodsname.Value := Dmd2Fm.SAccListGoodsname.Value;
              DmdFm.AccListWeSpace.Value := Dmd2Fm.SAccListWeSpace.Value;
              DmdFm.AccListWight.Value := Dmd2Fm.SAccListWight.Value;
              if Dmd2Fm.SAccListCars.Value > 0 then
                DmdFm.AccListCars.Value := Dmd2Fm.SAccListCars.Value;
              if Dmd2Fm.SAccListStates.Value > 0 then
                DmdFm.AccListStates.Value := Dmd2Fm.SAccListStates.Value;
              DmdFm.AccListGoodsQty.Value := Dmd2Fm.SAccListGoodsQty.Value;
              DmdFm.AccListUnit.Value := Dmd2Fm.SAccListUnit.Value;
         //     DmdFm.AccListQty2.Value := Dmd2Fm.SAccListQty2.Value;
         //     DmdFm.AccListUnit2.Value := Dmd2Fm.SAccListUnit2.Value;
         //     if Dmd2Fm.SAccListQty3.Value > 0 then
         //       DmdFm.AccListQty3.Value := Dmd2Fm.SAccListQty3.Value;
              DmdFm.AccListAdmisMet.Value := Dmd2Fm.SAccListAdmisMet.Value;
         //     DmdFm.AccListNum1.Value := Dmd2Fm.SAccListNum1.Value;
         //     DmdFm.AccListNum2.Value := Dmd2Fm.SAccListNum2.Value;
         //     DmdFm.AccListNum5.Value := Dmd2Fm.SAccListNum5.Value;
         //     DmdFm.AccListNum6.Value := Dmd2Fm.SAccListNum6.Value;
              DmdFm.AccListShipMet.Value := Dmd2Fm.SAccListShipMet.Value;
              DmdFm.AccListShipType.Value := Dmd2Fm.SAccListShipType.Value;
              DmdFm.AccListRoafe.Value := Dmd2Fm.SAccListRoafe.Value;
              DmdFm.AccListListDate.Value := Dmd2Fm.SAccListListDate.Value;

              DmdFm.AccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
              DmdFm.AccListDelWhy.Value := DelLstFm.sEdit3.Text;
              if DelLstFm.sCheckBox1.Checked = True then
                DmdFm.AccListCutF.Value := 1
              else
                DmdFm.AccListCutF.Value := 0;

              DmdFm.AccList.Post;

              VSUnitAccList.First;
              while not VSUnitAccList.Eof do
              begin

                VUnitAccList.Insert;

                VUnitAccListNumAlist.Value := AccListListNum.Value;
                VUnitAccListNumUnit.Value := VSUnitAccListNumUnit.Value;
                VUnitAccListQtityNormal.Value := VSUnitAccListQtityNormal.Value;
                VUnitAccListQtitoyRor.Value := VSUnitAccListQtitoyRor.Value;
                VUnitAccListNMIncome.Value := VSUnitAccListNMIncome.Value;
                VUnitAccListValNormal.Value := VSUnitAccListValNormal.Value;
                VUnitAccListValRoro.Value := VSUnitAccListValRoro.Value;
                VUnitAccListFwozQ.Value := VSUnitAccListFwozQ.Value;
                VUnitAccListFwozV.Value := VSUnitAccListFwozV.Value;
                VUnitAccListLanerQ.Value := VSUnitAccListLanerQ.Value;
                VUnitAccListLanerV.Value := VSUnitAccListLanerV.Value;
                VUnitAccListRofaQ.Value := VSUnitAccListRofaQ.Value;
                VUnitAccListRofaV.Value := VSUnitAccListRofaV.Value;
                VUnitAccListNRofaQ.Value := VSUnitAccListNRofaQ.Value;
                VUnitAccListNRofaV.Value := VSUnitAccListNRofaV.Value;
                VUnitAccListEjmale.Value := VSUnitAccListEjmale.Value;
                VUnitAccListAddCount.Value := VSUnitAccListAddCount.Value;
                VUnitAccList.Post;

                VSUnitAccList.Next;
              end;

              VSBollAccList.First;
              while not VSBollAccList.Eof do
              begin
                VBollAccList.Insert;

                VBollAccListNumAcc.Value := AccListListNum.Value;
                VBollAccListBollsa.Value := VSBollAccListBollsa.Value;
                VBollAccListNumLoad.Value := VSBollAccListNumLoad.Value;
                VBollAccList.Post;

                VSBollAccList.Next;
              end;
              /// ////////////////////////////////////////

              AcListFm.ShowModal;
              AcListFm.Free;
            end

            else if Dmd2Fm.sAccListListType.Value = 4 then
            begin
              AccType := 4;
              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 4;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              accdet.Close;
              accdet.ParamByName('VNum').Value := AccListListNum.Value;
              accdet.ParamByName('Vtype').Value := AccListListType.Value;
              accdet.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;
              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;
              Application.CreateForm(TAcListFm, AcListFm);
              AcListFm.DBLookupComboBox6.Visible := True;
              AcListFm.DBRadioGroup1.Visible := True;
              AcListFm.sBitBtn26.Visible := True;
              AcListFm.sBitBtn28.Visible := True;
              AcListFm.sBitBtn27.Visible := false;
              AcListFm.sBitBtn29.Visible := false;
              AcListFm.sBitBtn4.Visible := false;
              AcListFm.sBitBtn24.Visible := false;
              AcListFm.sEdit1.Text := '1';
              AcListFm.sPanel4.Visible := True;
              AcListFm.sPanel3.Visible := false;

              AcListFm.Button1.Visible := false;
              AcListFm.DBCheckBox9.Visible := True;
              // AcListFm.sBitBtn4.SetFocus;
              AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ ›«—€';

              Dmd2Fm.SAccList.Locate('ListNum', AlterBill, []);
              DmdFm.AccList.Insert;
              DmdFm.AccListShipNum.Value := Dmd2Fm.SAccListShipNum.Value;
              DmdFm.AccListArriveDate.Value := Dmd2Fm.SAccListArriveDate.Value;
              DmdFm.AccListBillNum2.Value := Dmd2Fm.SAccListBillNum2.Value;
              DmdFm.AccListBillNum.Value := Dmd2Fm.SAccListBillNum.Value;
              DmdFm.AccListToName.Value := Dmd2Fm.SAccListToname.Value;
              DmdFm.AccListAginNm.Value := Dmd2Fm.SAccListAginNm.Value;
              DmdFm.AccListEndEmpDate.Value := Dmd2Fm.SAccListEndEmpDate.Value;
              DmdFm.AccListGoodsname.Value := Dmd2Fm.SAccListGoodsname.Value;
              DmdFm.AccListWeSpace.Value := Dmd2Fm.SAccListWeSpace.Value;
              DmdFm.AccListWight.Value := Dmd2Fm.SAccListWight.Value;
              if Dmd2Fm.SAccListCars.Value > 0 then
                DmdFm.AccListCars.Value := Dmd2Fm.SAccListCars.Value;
              if Dmd2Fm.SAccListStates.Value > 0 then
                DmdFm.AccListStates.Value := Dmd2Fm.SAccListStates.Value;
              DmdFm.AccListGoodsQty.Value := Dmd2Fm.SAccListGoodsQty.Value;
              DmdFm.AccListUnit.Value := Dmd2Fm.SAccListUnit.Value;
         //     DmdFm.AccListQty2.Value := Dmd2Fm.SAccListQty2.Value;
         //     DmdFm.AccListUnit2.Value := Dmd2Fm.SAccListUnit2.Value;
         //     if Dmd2Fm.SAccListQty3.Value > 0 then
         //       DmdFm.AccListQty3.Value := Dmd2Fm.SAccListQty3.Value;
              DmdFm.AccListAdmisMet.Value := Dmd2Fm.SAccListAdmisMet.Value;
         //     DmdFm.AccListNum1.Value := Dmd2Fm.SAccListNum1.Value;
         //     DmdFm.AccListNum2.Value := Dmd2Fm.SAccListNum2.Value;
         //     DmdFm.AccListNum5.Value := Dmd2Fm.SAccListNum5.Value;
         //     DmdFm.AccListNum6.Value := Dmd2Fm.SAccListNum6.Value;
              DmdFm.AccListShipMet.Value := Dmd2Fm.SAccListShipMet.Value;
              DmdFm.AccListShipType.Value := Dmd2Fm.SAccListShipType.Value;
              DmdFm.AccListRoafe.Value := Dmd2Fm.SAccListRoafe.Value;
              DmdFm.AccListListDate.Value := Dmd2Fm.SAccListListDate.Value;

              DmdFm.AccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
              DmdFm.AccListDelWhy.Value := DelLstFm.sEdit3.Text;
              if DelLstFm.sCheckBox1.Checked = True then
                DmdFm.AccListCutF.Value := 1
              else
                DmdFm.AccListCutF.Value := 0;

              DmdFm.AccList.Post;

              VSUnitAccList.First;
              while not VSUnitAccList.Eof do
              begin

                VUnitAccList.Insert;

                VUnitAccListNumAlist.Value := AccListListNum.Value;
                VUnitAccListNumUnit.Value := VSUnitAccListNumUnit.Value;
                VUnitAccListQtityNormal.Value := VSUnitAccListQtityNormal.Value;
                VUnitAccListQtitoyRor.Value := VSUnitAccListQtitoyRor.Value;
                VUnitAccListNMIncome.Value := VSUnitAccListNMIncome.Value;
                VUnitAccListValNormal.Value := VSUnitAccListValNormal.Value;
                VUnitAccListValRoro.Value := VSUnitAccListValRoro.Value;
                VUnitAccListFwozQ.Value := VSUnitAccListFwozQ.Value;
                VUnitAccListFwozV.Value := VSUnitAccListFwozV.Value;
                VUnitAccListLanerQ.Value := VSUnitAccListLanerQ.Value;
                VUnitAccListLanerV.Value := VSUnitAccListLanerV.Value;
                VUnitAccListRofaQ.Value := VSUnitAccListRofaQ.Value;
                VUnitAccListRofaV.Value := VSUnitAccListRofaV.Value;
                VUnitAccListNRofaQ.Value := VSUnitAccListNRofaQ.Value;
                VUnitAccListNRofaV.Value := VSUnitAccListNRofaV.Value;
                VUnitAccListEjmale.Value := VSUnitAccListEjmale.Value;
                VUnitAccListAddCount.Value := VSUnitAccListAddCount.Value;
                VUnitAccList.Post;

                VSUnitAccList.Next;
              end;

              VSBollAccList.First;
              while not VSBollAccList.Eof do
              begin
                VBollAccList.Insert;

                VBollAccListNumAcc.Value := AccListListNum.Value;
                VBollAccListBollsa.Value := VSBollAccListBollsa.Value;
                VBollAccListNumLoad.Value := VSBollAccListNumLoad.Value;
                VBollAccList.Post;

                VSBollAccList.Next;
              end;
              /// ////////////////////////////////////////

              AcListFm.ShowModal;
              AcListFm.Free;
            end

            else if Dmd2Fm.sAccListListType.Value = 5 then
            begin
              AccType := 5;
              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 5;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              accdet.Close;
              accdet.ParamByName('VNum').Value := AccListListNum.Value;
              accdet.ParamByName('Vtype').Value := AccListListType.Value;
              accdet.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;
              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;
              Application.CreateForm(TAcListFm, AcListFm);
              AcListFm.DBLookupComboBox6.Visible := True;
              AcListFm.DBRadioGroup1.Visible := True;

              AcListFm.sBitBtn26.Visible := True;
              AcListFm.sBitBtn28.Visible := True;
              AcListFm.sBitBtn27.Visible := false;
              AcListFm.sBitBtn29.Visible := false;

              AcListFm.sBitBtn4.Visible := false;
              AcListFm.sBitBtn24.Visible := false;
              AcListFm.Button1.Visible := false;
              AcListFm.sPanel4.Visible := True;
              AcListFm.sPanel3.Visible := false;
              AcListFm.DBCheckBox9.Visible := True;
              AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì';

              Dmd2Fm.SAccList.Locate('ListNum', AlterBill, []);
              DmdFm.AccList.Insert;
              DmdFm.AccListShipNum.Value := Dmd2Fm.SAccListShipNum.Value;
              DmdFm.AccListArriveDate.Value := Dmd2Fm.SAccListArriveDate.Value;
              DmdFm.AccListBillNum2.Value := Dmd2Fm.SAccListBillNum2.Value;
              DmdFm.AccListBillNum.Value := Dmd2Fm.SAccListBillNum.Value;
              DmdFm.AccListToName.Value := Dmd2Fm.SAccListToname.Value;
              DmdFm.AccListAginNm.Value := Dmd2Fm.SAccListAginNm.Value;
              DmdFm.AccListEndEmpDate.Value := Dmd2Fm.SAccListEndEmpDate.Value;
              DmdFm.AccListGoodsname.Value := Dmd2Fm.SAccListGoodsname.Value;
              DmdFm.AccListWeSpace.Value := Dmd2Fm.SAccListWeSpace.Value;
              DmdFm.AccListWight.Value := Dmd2Fm.SAccListWight.Value;
              if Dmd2Fm.SAccListCars.Value > 0 then
                DmdFm.AccListCars.Value := Dmd2Fm.SAccListCars.Value;
              if Dmd2Fm.SAccListStates.Value > 0 then
                DmdFm.AccListStates.Value := Dmd2Fm.SAccListStates.Value;
              DmdFm.AccListGoodsQty.Value := Dmd2Fm.SAccListGoodsQty.Value;
              DmdFm.AccListUnit.Value := Dmd2Fm.SAccListUnit.Value;
        //      DmdFm.AccListQty2.Value := Dmd2Fm.SAccListQty2.Value;
        //      DmdFm.AccListUnit2.Value := Dmd2Fm.SAccListUnit2.Value;
        //      if Dmd2Fm.SAccListQty3.Value > 0 then
        //        DmdFm.AccListQty3.Value := Dmd2Fm.SAccListQty3.Value;
              DmdFm.AccListAdmisMet.Value := Dmd2Fm.SAccListAdmisMet.Value;
       //       DmdFm.AccListNum1.Value := Dmd2Fm.SAccListNum1.Value;
       //       DmdFm.AccListNum2.Value := Dmd2Fm.SAccListNum2.Value;
       //       DmdFm.AccListNum5.Value := Dmd2Fm.SAccListNum5.Value;
       //       DmdFm.AccListNum6.Value := Dmd2Fm.SAccListNum6.Value;
              DmdFm.AccListShipMet.Value := Dmd2Fm.SAccListShipMet.Value;
              DmdFm.AccListShipType.Value := Dmd2Fm.SAccListShipType.Value;
              DmdFm.AccListRoafe.Value := Dmd2Fm.SAccListRoafe.Value;
              DmdFm.AccListListDate.Value := Dmd2Fm.SAccListListDate.Value;

              DmdFm.AccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
              DmdFm.AccListDelWhy.Value := DelLstFm.sEdit3.Text;
              if DelLstFm.sCheckBox1.Checked = True then
                DmdFm.AccListCutF.Value := 1
              else
                DmdFm.AccListCutF.Value := 0;

              DmdFm.AccList.Post;

              VSUnitAccList.First;
              while not VSUnitAccList.Eof do
              begin

                VUnitAccList.Insert;

                VUnitAccListNumAlist.Value := AccListListNum.Value;
                VUnitAccListNumUnit.Value := VSUnitAccListNumUnit.Value;
                VUnitAccListQtityNormal.Value := VSUnitAccListQtityNormal.Value;
                VUnitAccListQtitoyRor.Value := VSUnitAccListQtitoyRor.Value;
                VUnitAccListNMIncome.Value := VSUnitAccListNMIncome.Value;
                VUnitAccListValNormal.Value := VSUnitAccListValNormal.Value;
                VUnitAccListValRoro.Value := VSUnitAccListValRoro.Value;
                VUnitAccListFwozQ.Value := VSUnitAccListFwozQ.Value;
                VUnitAccListFwozV.Value := VSUnitAccListFwozV.Value;
                VUnitAccListLanerQ.Value := VSUnitAccListLanerQ.Value;
                VUnitAccListLanerV.Value := VSUnitAccListLanerV.Value;
                VUnitAccListRofaQ.Value := VSUnitAccListRofaQ.Value;
                VUnitAccListRofaV.Value := VSUnitAccListRofaV.Value;
                VUnitAccListNRofaQ.Value := VSUnitAccListNRofaQ.Value;
                VUnitAccListNRofaV.Value := VSUnitAccListNRofaV.Value;
                VUnitAccListEjmale.Value := VSUnitAccListEjmale.Value;
                VUnitAccListAddCount.Value := VSUnitAccListAddCount.Value;
                VUnitAccList.Post;

                VSUnitAccList.Next;
              end;

              VSBollAccList.First;
              while not VSBollAccList.Eof do
              begin
                VBollAccList.Insert;

                VBollAccListNumAcc.Value := AccListListNum.Value;
                VBollAccListBollsa.Value := VSBollAccListBollsa.Value;
                VBollAccListNumLoad.Value := VSBollAccListNumLoad.Value;
                VBollAccList.Post;

                VSBollAccList.Next;
              end;
              /// ////////////////////////////////////////

              AcListFm.ShowModal;
              AcListFm.Free;
            end

            else if Dmd2Fm.sAccListListType.Value = 6 then
            begin
              AccType := 6;
              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 6;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              accdet.Close;
              accdet.ParamByName('VNum').Value := AccListListNum.Value;
              accdet.ParamByName('Vtype').Value := AccListListType.Value;
              accdet.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;
              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;
              Application.CreateForm(TListShFm, ListShFm);
              ListShFm.DBCheckBox9.Visible := True;
              ListShFm.ShowModal;
              ListShFm.Free;
            end

            else if Dmd2Fm.sAccListListType.Value = 7 then
            begin
              AccType := 7;
              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 7;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              accdet.Close;
              accdet.ParamByName('VNum').Value := AccListListNum.Value;
              accdet.ParamByName('Vtype').Value := AccListListType.Value;
              accdet.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;
              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;
              Application.CreateForm(TListShFm, ListShFm);
              ListShFm.DBCheckBox9.Visible := True;
              ListShFm.ShowModal;
              ListShFm.Free;
            end

            else if Dmd2Fm.sAccListListType.Value = 8 then
            begin
              AccType := 8;
              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 8;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              accdet.Close;
              accdet.ParamByName('VNum').Value := AccListListNum.Value;
              accdet.ParamByName('Vtype').Value := AccListListType.Value;
              accdet.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;
              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;
              Application.CreateForm(TAcListFm, AcListFm);
              AcListFm.DBLookupComboBox6.Visible := True;
              AcListFm.DBRadioGroup1.Visible := True;
              AcListFm.sPanel4.Visible := True;
              AcListFm.sPanel3.Visible := false;
              AcListFm.sBitBtn26.Visible := True;
              AcListFm.sBitBtn28.Visible := True;
              AcListFm.sBitBtn27.Visible := false;
              AcListFm.sBitBtn29.Visible := false;

              AcListFm.sBitBtn4.Visible := false;
              AcListFm.sBitBtn24.Visible := false;
              AcListFm.Button1.Visible := false;
              AcListFm.DBCheckBox9.Visible := True;

              AcListFm.sPanel4.Visible := True;
              AcListFm.sPanel3.Visible := false;

              AcListFm.Label22.Caption := '„œÌ‰Ê‰';

              Dmd2Fm.SAccList.Locate('ListNum', AlterBill, []);
              DmdFm.AccList.Insert;
              DmdFm.AccListShipNum.Value := Dmd2Fm.SAccListShipNum.Value;
              DmdFm.AccListArriveDate.Value := Dmd2Fm.SAccListArriveDate.Value;
              DmdFm.AccListBillNum2.Value := Dmd2Fm.SAccListBillNum2.Value;
              DmdFm.AccListBillNum.Value := Dmd2Fm.SAccListBillNum.Value;
              DmdFm.AccListToName.Value := Dmd2Fm.SAccListToname.Value;
              DmdFm.AccListAginNm.Value := Dmd2Fm.SAccListAginNm.Value;
              DmdFm.AccListEndEmpDate.Value := Dmd2Fm.SAccListEndEmpDate.Value;
              DmdFm.AccListGoodsname.Value := Dmd2Fm.SAccListGoodsname.Value;
              DmdFm.AccListWeSpace.Value := Dmd2Fm.SAccListWeSpace.Value;
              DmdFm.AccListWight.Value := Dmd2Fm.SAccListWight.Value;
              if Dmd2Fm.SAccListCars.Value > 0 then
                DmdFm.AccListCars.Value := Dmd2Fm.SAccListCars.Value;
              if Dmd2Fm.SAccListStates.Value > 0 then
                DmdFm.AccListStates.Value := Dmd2Fm.SAccListStates.Value;
              DmdFm.AccListGoodsQty.Value := Dmd2Fm.SAccListGoodsQty.Value;
              DmdFm.AccListUnit.Value := Dmd2Fm.SAccListUnit.Value;
       //       DmdFm.AccListQty2.Value := Dmd2Fm.SAccListQty2.Value;
       //       DmdFm.AccListUnit2.Value := Dmd2Fm.SAccListUnit2.Value;
       //       if Dmd2Fm.SAccListQty3.Value > 0 then
       //         DmdFm.AccListQty3.Value := Dmd2Fm.SAccListQty3.Value;
              DmdFm.AccListAdmisMet.Value := Dmd2Fm.SAccListAdmisMet.Value;
       //       DmdFm.AccListNum1.Value := Dmd2Fm.SAccListNum1.Value;
       //       DmdFm.AccListNum2.Value := Dmd2Fm.SAccListNum2.Value;
       //       DmdFm.AccListNum5.Value := Dmd2Fm.SAccListNum5.Value;
       //       DmdFm.AccListNum6.Value := Dmd2Fm.SAccListNum6.Value;
              DmdFm.AccListShipMet.Value := Dmd2Fm.SAccListShipMet.Value;
              DmdFm.AccListShipType.Value := Dmd2Fm.SAccListShipType.Value;
              DmdFm.AccListRoafe.Value := Dmd2Fm.SAccListRoafe.Value;
              DmdFm.AccListListDate.Value := Dmd2Fm.SAccListListDate.Value;

              DmdFm.AccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
              DmdFm.AccListDelWhy.Value := DelLstFm.sEdit3.Text;
              if DelLstFm.sCheckBox1.Checked = True then
                DmdFm.AccListCutF.Value := 1
              else
                DmdFm.AccListCutF.Value := 0;

              DmdFm.AccList.Post;

              VSUnitAccList.First;
              while not VSUnitAccList.Eof do
              begin

                VUnitAccList.Insert;

                VUnitAccListNumAlist.Value := AccListListNum.Value;
                VUnitAccListNumUnit.Value := VSUnitAccListNumUnit.Value;
                VUnitAccListQtityNormal.Value := VSUnitAccListQtityNormal.Value;
                VUnitAccListQtitoyRor.Value := VSUnitAccListQtitoyRor.Value;
                VUnitAccListNMIncome.Value := VSUnitAccListNMIncome.Value;
                VUnitAccListValNormal.Value := VSUnitAccListValNormal.Value;
                VUnitAccListValRoro.Value := VSUnitAccListValRoro.Value;
                VUnitAccListFwozQ.Value := VSUnitAccListFwozQ.Value;
                VUnitAccListFwozV.Value := VSUnitAccListFwozV.Value;
                VUnitAccListLanerQ.Value := VSUnitAccListLanerQ.Value;
                VUnitAccListLanerV.Value := VSUnitAccListLanerV.Value;
                VUnitAccListRofaQ.Value := VSUnitAccListRofaQ.Value;
                VUnitAccListRofaV.Value := VSUnitAccListRofaV.Value;
                VUnitAccListNRofaQ.Value := VSUnitAccListNRofaQ.Value;
                VUnitAccListNRofaV.Value := VSUnitAccListNRofaV.Value;
                VUnitAccListEjmale.Value := VSUnitAccListEjmale.Value;
                VUnitAccListAddCount.Value := VSUnitAccListAddCount.Value;
                VUnitAccList.Post;

                VSUnitAccList.Next;
              end;

              VSBollAccList.First;
              while not VSBollAccList.Eof do
              begin
                VBollAccList.Insert;

                VBollAccListNumAcc.Value := AccListListNum.Value;
                VBollAccListBollsa.Value := VSBollAccListBollsa.Value;
                VBollAccListNumLoad.Value := VSBollAccListNumLoad.Value;
                VBollAccList.Post;

                VSBollAccList.Next;
              end;
              /// ////////////////////////////////////////

              AcListFm.ShowModal;
              AcListFm.Free;
            end

            else if Dmd2Fm.sAccListListType.Value = 9 then
            begin
              if DmdFm.PermAcList.Value = false then
                raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
              AccType := 1;

              AccList.Close;
              AccList.ParamByName('VNum').Value := AlterBill;
              AccList.ParamByName('Vtype').Value := 9;
              AccList.Execute;

              VBollAccList.Close;
              VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VBollAccList.Execute;

              VUnitAccList.Close;
              VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VUnitAccList.Execute;

              VSBollAccList.Close;
              VSBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSBollAccList.Execute;

              VSUnitAccList.Close;
              VSUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
              VSUnitAccList.Execute;

              VloedB.Close;
              VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
              VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
              VloedB.Open;

              VloadHrak.Close;
              VloadHrak.ParamByName('VNumT').Value := VloedBLNum.Value;
              VloadHrak.Open;

              DmdFm.VDateHrak.Close;
              DmdFm.VDateHrak.ParamByName('VDateTO').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.ParamByName('VDateFROM').Value :=
                AccListArriveDate.Value;
              DmdFm.VDateHrak.Execute;

              VDervr6.Close;
              VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
              VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
              VDervr6.Execute;

              VDervr7.Close;
              VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
              VDervr7.Execute;

              Application.CreateForm(TAcListFm, AcListFm);
              AcListFm.DBLookupComboBox6.Visible := false;
              AcListFm.DBRadioGroup1.Visible := false;
              AcListFm.sBitBtn4.Visible := True;
              AcListFm.sBitBtn24.Visible := True;

              AcListFm.sBitBtn26.Visible := false;
              AcListFm.sBitBtn28.Visible := false;
              AcListFm.sBitBtn27.Visible := false;
              AcListFm.sBitBtn29.Visible := false;

              AcListFm.Button2.Visible := false;
              AcListFm.DBCheckBox9.Visible := false;

              AcListFm.DBEdit16.Visible := false;
              AcListFm.Label30.Visible := false;

              AcListFm.sPanel3.Visible := True;
              AcListFm.sPanel4.Visible := false;

              AcListFm.Label22.Caption := '„œÌ‰Ê‰  »Ê·Ì’…';

              Dmd2Fm.SAccList.Locate('ListNum', AlterBill, []);
              DmdFm.AccList.Insert;
              DmdFm.AccListShipNum.Value := Dmd2Fm.SAccListShipNum.Value;
              DmdFm.AccListArriveDate.Value := Dmd2Fm.SAccListArriveDate.Value;
              DmdFm.AccListBillNum2.Value := Dmd2Fm.SAccListBillNum2.Value;
              DmdFm.AccListBillNum.Value := Dmd2Fm.SAccListBillNum.Value;
              DmdFm.AccListToName.Value := Dmd2Fm.SAccListToname.Value;
              DmdFm.AccListAginNm.Value := Dmd2Fm.SAccListAginNm.Value;
              DmdFm.AccListEndEmpDate.Value := Dmd2Fm.SAccListEndEmpDate.Value;
              DmdFm.AccListGoodsname.Value := Dmd2Fm.SAccListGoodsname.Value;
              DmdFm.AccListWeSpace.Value := Dmd2Fm.SAccListWeSpace.Value;
              DmdFm.AccListWight.Value := Dmd2Fm.SAccListWight.Value;
              if Dmd2Fm.SAccListCars.Value > 0 then
                DmdFm.AccListCars.Value := Dmd2Fm.SAccListCars.Value;
              if Dmd2Fm.SAccListStates.Value > 0 then
                DmdFm.AccListStates.Value := Dmd2Fm.SAccListStates.Value;
              DmdFm.AccListGoodsQty.Value := Dmd2Fm.SAccListGoodsQty.Value;
              DmdFm.AccListUnit.Value := Dmd2Fm.SAccListUnit.Value;
     //         DmdFm.AccListQty2.Value := Dmd2Fm.SAccListQty2.Value;
     //         DmdFm.AccListUnit2.Value := Dmd2Fm.SAccListUnit2.Value;
     //         if Dmd2Fm.SAccListQty3.Value > 0 then
     //           DmdFm.AccListQty3.Value := Dmd2Fm.SAccListQty3.Value;
              DmdFm.AccListAdmisMet.Value := Dmd2Fm.SAccListAdmisMet.Value;
    //          DmdFm.AccListNum1.Value := Dmd2Fm.SAccListNum1.Value;
    //          DmdFm.AccListNum2.Value := Dmd2Fm.SAccListNum2.Value;
    //          DmdFm.AccListNum5.Value := Dmd2Fm.SAccListNum5.Value;
    //          DmdFm.AccListNum6.Value := Dmd2Fm.SAccListNum6.Value;
              DmdFm.AccListShipMet.Value := Dmd2Fm.SAccListShipMet.Value;
              DmdFm.AccListShipType.Value := Dmd2Fm.SAccListShipType.Value;
              DmdFm.AccListRoafe.Value := Dmd2Fm.SAccListRoafe.Value;
              DmdFm.AccListListDate.Value := Dmd2Fm.SAccListListDate.Value;

              DmdFm.AccListDelDate.Value := StrToDate(DelLstFm.sDateEdit1.Text);
              DmdFm.AccListDelWhy.Value := DelLstFm.sEdit3.Text;
              if DelLstFm.sCheckBox1.Checked = True then
                DmdFm.AccListCutF.Value := 1
              else
                DmdFm.AccListCutF.Value := 0;

              DmdFm.AccList.Post;

              VSUnitAccList.First;
              while not VSUnitAccList.Eof do
              begin

                VUnitAccList.Insert;

                VUnitAccListNumAlist.Value := AccListListNum.Value;
                VUnitAccListNumUnit.Value := VSUnitAccListNumUnit.Value;
                VUnitAccListQtityNormal.Value := VSUnitAccListQtityNormal.Value;
                VUnitAccListQtitoyRor.Value := VSUnitAccListQtitoyRor.Value;
                VUnitAccListNMIncome.Value := VSUnitAccListNMIncome.Value;
                VUnitAccListValNormal.Value := VSUnitAccListValNormal.Value;
                VUnitAccListValRoro.Value := VSUnitAccListValRoro.Value;
                VUnitAccListFwozQ.Value := VSUnitAccListFwozQ.Value;
                VUnitAccListFwozV.Value := VSUnitAccListFwozV.Value;
                VUnitAccListLanerQ.Value := VSUnitAccListLanerQ.Value;
                VUnitAccListLanerV.Value := VSUnitAccListLanerV.Value;
                VUnitAccListRofaQ.Value := VSUnitAccListRofaQ.Value;
                VUnitAccListRofaV.Value := VSUnitAccListRofaV.Value;
                VUnitAccListNRofaQ.Value := VSUnitAccListNRofaQ.Value;
                VUnitAccListNRofaV.Value := VSUnitAccListNRofaV.Value;
                VUnitAccListEjmale.Value := VSUnitAccListEjmale.Value;
                VUnitAccListAddCount.Value := VSUnitAccListAddCount.Value;
                VUnitAccList.Post;

                VSUnitAccList.Next;
              end;

              VSBollAccList.First;
              while not VSBollAccList.Eof do
              begin
                VBollAccList.Insert;

                VBollAccListNumAcc.Value := AccListListNum.Value;
                VBollAccListBollsa.Value := VSBollAccListBollsa.Value;
                VBollAccListNumLoad.Value := VSBollAccListNumLoad.Value;
                VBollAccList.Post;

                VSBollAccList.Next;
              end;
              /// ////////////////////////////////////////

              AcListFm.ShowModal;
              AcListFm.Free;

            end;

          end;
        end
        else
        begin
          if not DmdFm.AccList.Locate('ListNumR', AlterBill, []) then
            raise Exception.Create('«·›« Ê—… €Ì— „ÊÃÊœ…')
          else
          begin
            if DmdFm.AccListSubType.Value = 1 then
              MainFm.k1Click(Sender)
            else if DmdFm.AccListSubType.Value = 2 then
              MainFm.MenuItem6Click(Sender)
            else if DmdFm.AccListSubType.Value = 9 then
              MainFm.MenuItem7Click(Sender)
          end;
        end;
      end;
    end;
  end;

end;

procedure TDelLstFm.sDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sEdit3.SetFocus;

end;

procedure TDelLstFm.FormActivate(Sender: TObject);
begin
  DmdFm.AccList.FilterSQL := '';
end;

end.
