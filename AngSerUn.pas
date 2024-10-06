unit AngSerUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TAngSerFm = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AngSerFm: TAngSerFm;

implementation

{$R *.dfm}

uses AcListUn, AgentUn, AiiradatUn, Attach2Un, Attach3Un, AttachUn, BillSrUn,
  CarryUn, CloseUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DlyViewU, Dmd2Un,
  DmdUm, EfrajUn, HatkaUn, IncoEnterUn, ListShUn, LocalAgantUn, LstDetUn,
  MainUn, PermUn, ShipUn, SplashUn, SrchShUn, SrchUn, SubSrcUn, UFEnterPass,
  UnlockUn, VDateHrakUn, VdateHUn, ViewUn;

procedure TAngSerFm.DBGridEh1DblClick(Sender: TObject);
begin
 if creEfraj=0 then
 begin
  with DmdFm do
  begin
    if AccList.IsEmpty then
    // begin
    begin { «·›« Ê—… €Ì— „ÊÃÊœ… }
      // raise Exception.Create('Â–« «·»Ê·Ì’… ﬁœ  „ «Õ ”«»Â« ›Ì ›« Ê—… ”«»ﬁ…');

      // --------------------------- «œ—«Ã «·»Ê·Ì’… ›Ì ﬁ«∆„… «·Õ ”«»

      if (DmdFm.VDateHrakTaghez.Value = 1) then
        if (DmdFm.VloadHrakStoreType.Value <> 1) then
          raise Exception.Create('’·Ì ⁄·Ï —”Ê· «··Â ’ﬁ⁄ ⁄·Ìﬂ Ì« Õ»Ê—');

      AccList.Insert;
      AccListNumT.Value := VloadHrakAuto.Value;
      AccListShipNum.Value := DmdFm.VDateHrakTransNUm.Value;
      AccListToName.Value := VloadHrakSend.Value; // «·„—”·… ≈·ÌÂ
      if VloadHrakKias.Value < 1 then
        AccListWeSpace.Value := 1 // «·ﬁÌ«”
      else
        AccListWeSpace.Value := VloadHrakKias.Value; // «·ﬁÌ«”

      AccListWight.Value := VloadHrakWeight.Value; // «·Ê“‰
      AccListGoodsname.Value := VloadHrakGoodsname.Value; // Ê’› «·»÷«⁄…
      if not DmdFm.VDateHrakEndDate.isnull then
        AccListEndEmpDate.Value := DmdFm.VDateHrakEndDate.Value //   «· ›—Ì€
      else
        AccListEndEmpDate.Value := Date; //   «· ›—Ì€
      AccListBillNum.Clear;
      // AccListBillNum.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
      // AccListBillNum2.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
      AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value; //   «·Ê’Ê·
      AccListAdmisMet.Value := VloadHrakStoreType.Value; // ÿ«—Ìﬁ «· ”·Ì„
      // AccListAginNm.Value := LoadListAgent.Value; // «·ÊﬂÌ·

      if (DmdFm.VDateHrakRofR.Value = 1) then
        AccListRoafe.Value := 1
      else
        AccListRoafe.Value := 0;

      if (DmdFm.VDateHrakcarsTfF.Value = 1) then
        AccListTfteshCar.Value := 1
      else
        AccListTfteshCar.Value := 0;


      AccListShipType.Value := VDateHrakShipType.Value;
      AccListShipMet.Value := VDateHrakShipMet.Value;
        AccListAginNm.Value := AgentsVnum.Value;
      // raise Exception.Create('«Œ — «·ÊﬂÌ· √Ê·«');
      // if AccListWeSpace.isnull then
      AccList.Post;

      // ***************************************

      VBollAccList.Close;
      VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VBollAccList.Execute;

      VUnitAccList.Close;
      VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VUnitAccList.Execute;

      // 999999999999999999999999999999999999999999999999
      VBollAccList.Insert;
      VBollAccListBollsa.Value := VloadHrakBillloading.Value;
      VBollAccListNumLoad.Value := VloadHrakAuto.Value;
      VBollAccListNumAcc.Value := AccListListNum.Value;
      VBollAccList.Post;

      if VloadHrakMarks.Value = 7 then
      begin

        QTajmieData.Close;
        QTajmieData.ParamByName('Lnum').Value := VDervr6Num.Value;
        QTajmieData.ParamByName('Auto').Value := VDervr6Lnum.Value;
        QTajmieData.Open;

        QTajmieData.First;

        while not QTajmieData.Eof do
        begin
          VUnitAccList.Insert;
          VUnitAccListAddCount.Value := QTajmieDatatypeHowa1.Value;
          VUnitAccListNumAlist.Value := AccListListNum.Value;
          VUnitAccListNumUnit.Value := QTajmieDataTypeNm.Value;
          if VDervr7.IsEmpty then
          BEGIN
            VUnitAccListQtityNormal.Value := VDervr6Qty.Value;
            // VUnitAccListQtityNormal.Value := QTajmieDataEadiatFyus.AsInteger;
            VUnitAccListQtitoyRor.Value := QTajmieDataEadiatLaynar.Value;
            VUnitAccListFwozQ.Value := QTajmieDataRuruFyus.AsInteger;
            VUnitAccListLanerQ.Value := QTajmieDataRuruLaynar.AsInteger;
            VUnitAccListRofaQ.Value := QTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := QTajmieDataBLever.AsInteger;
          END
          ELSE
          BEGIN

            VUnitAccListQtityNormal.Value := QTajmieDataEadiatFyus.Value;
            VUnitAccListQtitoyRor.Value := QTajmieDataEadiatLaynar.Value;
            VUnitAccListFwozQ.Value := QTajmieDataRuruFyus.AsInteger;
            VUnitAccListLanerQ.Value := QTajmieDataRuruLaynar.AsInteger;
            VUnitAccListRofaQ.Value := QTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := QTajmieDataBLever.AsInteger;

          END;
          VUnitAccList.Post;
          QTajmieData.Next;
        end;

      end
      else
      begin

        QLTajmieData.Close;
        QLTajmieData.ParamByName('Num').Value := dmdfm.VloadHrakAuto.Value;
        QLTajmieData.Open;

        QLTajmieData.First;

        while not QLTajmieData.Eof do
        begin
          VUnitAccList.Insert;
          VUnitAccListAddCount.Value := VloadHrakQty.Value;
          VUnitAccListNumAlist.Value := AccListListNum.Value;
          VUnitAccListNumUnit.Value := VloadHrakMarks.Value;

          if (VDervr7.IsEmpty)or(VDervr7num.value=0)  then
          BEGIN
           if (VDateHrakShipType.Value=1)and(VDateHrakShipMet.Value=1) then
            VUnitAccListQtityNormal.Value := dmdfm.VloadHrakQty.Value
           else
           if (VDateHrakShipType.Value=1)and(VDateHrakShipMet.Value=0) then
            VUnitAccListQtitoyRor.Value := dmdfm.VloadHrakQty.Value
           else
           if (VDateHrakShipType.Value=2)and(VDateHrakShipMet.Value=1) then
            VUnitAccListFwozQ.Value := dmdfm.VloadHrakQty.AsInteger
           else
           if (VDateHrakShipType.Value=2)and(VDateHrakShipMet.Value=0) then
            VUnitAccListLanerQ.Value := dmdfm.VloadHrakQty.AsInteger;
            VUnitAccListRofaQ.Value := QLTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := QLTajmieDataBLever.AsInteger;

          END
          ELSE
          BEGIN
         
            VUnitAccListQtityNormal.Value :=dmdfm.QLTajmieDataEadiatFyus.Value;
            VUnitAccListQtitoyRor.Value := QLTajmieDataEadiatLaynar.Value;
            VUnitAccListFwozQ.Value := QLTajmieDataRuruFyus.AsInteger;
            VUnitAccListLanerQ.Value := QLTajmieDataRuruLaynar.AsInteger;
            VUnitAccListRofaQ.Value := QLTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := QLTajmieDataBLever.AsInteger;

          END;

          // VUnitAccList.Value := QTajmieData.value;
          // VUnitAccList.Value := QTajmieData.value;
          // VUnitAccList.Value := QTajmieData.value;
          VUnitAccList.Post;
          QLTajmieData.Next;
        end;

      end;



      // 000000000000000000000000000000000000000000000000

    end;
  end;
  AcListFm.ShowModal;
  AcListFm.Free;
 end
 else
 if creEfraj=1 then
 begin


        EfrajFm.sBitBtn3Click(Sender);


 end;

  Close;
end;

procedure TAngSerFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DBGridEh1.SearchPanel.CancelSearchFilter;
  with DmdFm do
  begin
   // if AccListAginNm.isnull then
   //   raise Exception.Create('«Œ — «·ÊﬂÌ· √Ê·«');

  end;
end;

procedure TAngSerFm.FormShow(Sender: TObject);
begin
DmdFm.AgentsV.Refresh;
end;

end.
