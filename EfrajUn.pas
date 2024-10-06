unit EfrajUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, sEdit, Buttons, sBitBtn, db, ExtCtrls,
  sPanel, ComCtrls, acProgressBar, DBCtrls, sLabel, Mask, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, System.ImageList, Vcl.ImgList, acAlphaImageList;

type
  TEfrajFm = class(TForm)
    sBitBtn1: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn2: TsBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    sPanel1: TsPanel;
    sProgressBar1: TsProgressBar;
    Bevel3: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    sBitBtn4: TsBitBtn;
    sLabel1: TsLabel;
    Label1: TLabel;
    Label2: TLabel;
    sBitBtn5: TsBitBtn;
    sLabel2: TsLabel;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    DBGridEh1: TDBGridEh;
    sBitBtn6: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EfrajFm: TEfrajFm;
  num1, num2, num3, num4, num5, num6, num7, num8, Type1, Type2, LeverF,
    SloadF: Smallint;
  UserSelected: Smallint;
  list_num:integer;

implementation

uses SysConst, MainUn, AcListUn, SrchUn, AiiradatUn,
  Attach2Un, Attach3Un, AttachUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DmdUm,
  HatkaUn, LocalAgantUn, LstDetUn, PermUn, SplashUn, SubSrcUn, UFEnterPass,
  VDateHrakUn, Dmd2Un, AngSerUn;

{$R *.dfm}

procedure TEfrajFm.FormActivate(Sender: TObject);
begin
  UserSelected := DmdFm.PermUserNum.Value;
  sProgressBar1.Max := 300;
  Panel1.Left := 1004;
  DBGrid2.Width := 995;
  DBGrid2.Width := 492;
  Panel1.Left := 500;
  // 1 DmdFm.VloadHrak.OrderFields:='Marks';
  SloadF := 0;
end;

procedure TEfrajFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // DmdFm.VloadHrak.FilterSQL := '';
  // 1 DmdFm.load.OrderFields:='Auto';
  // DmdFm.SVloadHrak.FilterSQL := '';
  DmdFm.QLoadEf.Close;
  DmdFm.QSLoadEf.Close;
  creEfraj := 0;
  // 1  DmdFm.DVloadHrak.AutoEdit := False;
end;

procedure TEfrajFm.sBitBtn1Click(Sender: TObject);
var
  i, j, unit1, unit2, Qty1, Qty2: Integer;
  kias, Weight: Real;
  place: TBookmark;
begin
  if DmdFm.PermAcList.Value = False then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.QLoadEf.IsEmpty then
    raise Exception.Create('ÌÃ» «Œ Ì«— «·»Ê«·’ √Ê·«');

  DmdFm.QLoadEf.First;
  while not DmdFm.QLoadEf.eof do
  begin
    if (DmdFm.QLoadEfEfrajNum.Value = '') or (DmdFm.QLoadEfStoreType.IsNull)
    then
    begin
      ShowMessage('ÌÃ»  ›—Ì€ «·»Ì«‰ √Ê·«');
      Abort;
    end
    else
      DmdFm.QLoadEf.Next;
  end;

  sPanel1.Visible := true;
  sPanel1.BringToFront;
  sPanel1.Refresh;

  acctype := 1;
  // MainFm.sBitBtn13Click(Sender);
  with DmdFm do
  begin
    QLoadEf.First;
    acctype := 1;

    Inco.FilterSQL := 'IncType=1';
    // 1 AccList.FilterSQL:=('ListType=1');
    // 1 AccList.Last;
    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := QLoadEfBillNum.Value;
    AccList.ParamByName('Vtype').Value := 1;
    AccList.Execute;

    if not AccList.IsEmpty then
    begin
      accdet.Close;
      accdet.ParamByName('VNum').Value := AccListListNum.Value;
      accdet.ParamByName('Vtype').Value := AccListListType.Value;
      accdet.Execute;

      VBollAccList.Close;
      VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VBollAccList.Execute;

      VUnitAccList.Close;
      VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VUnitAccList.Execute;

    end
    else
    BEGIN
      accdet.Close;
      VBollAccList.Close;
      VUnitAccList.Close;
    END;

  end;
   AngSerFm.ShowModal;
 // sBitBtn3Click(Sender);
end;

procedure TEfrajFm.sBitBtn2Click(Sender: TObject);
var
  i, j, unit1, unit2, Qty1, Qty2: Integer;
  kias, Weight: Real;
  place: TBookmark;
begin
  if DmdFm.PermAcList.Value = False then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.QLoadEf.IsEmpty then
    raise Exception.Create('ÌÃ» «Œ Ì«— «·»Ê«·’ √Ê·«');

  DmdFm.QLoadEf.First;
  while not DmdFm.QLoadEf.eof do
  begin
    if (DmdFm.QLoadEfEfrajNum.Value = '') or (DmdFm.QLoadEfStoreType.IsNull)
    then
    begin
      ShowMessage('ÌÃ»  ›—Ì€ «·»Ì«‰ √Ê·«');
      Abort;
    end
    else
      DmdFm.QLoadEf.Next;
  end;

  sPanel1.Visible := true;
  sPanel1.BringToFront;
  sPanel1.Refresh;

  acctype := 2;
  // MainFm.sBitBtn13Click(Sender);
  with DmdFm do
  begin
    QLoadEf.First;
    acctype := 2;

    Inco.FilterSQL := 'IncType=1';
    // 1 AccList.FilterSQL:=('ListType=1');
    // 1 AccList.Last;
    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := dmdfm.QLoadEfBillNum.Value;
    AccList.ParamByName('Vtype').Value := 2;
    AccList.Execute;

    if not AccList.IsEmpty then
    begin
      accdet.Close;
      accdet.ParamByName('VNum').Value := AccListListNum.Value;
      accdet.ParamByName('Vtype').Value := AccListListType.Value;
      accdet.Execute;

      VBollAccList.Close;
      VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VBollAccList.Execute;

      VUnitAccList.Close;
      VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VUnitAccList.Execute;

    end
    else
    BEGIN
      accdet.Close;
      VBollAccList.Close;
      VUnitAccList.Close;
    END;

  end;
     AngSerFm.ShowModal;
 // sBitBtn3Click(Sender);
end;

procedure TEfrajFm.sBitBtn3Click(Sender: TObject);
var
  i, j, unit1, unit2, Qty1, Qty2: Integer;
  kias, Weight: Real;
  place: TBookmark;
  goods:string;
begin

  Application.CreateForm(TAcListFm, AcListFm);
  AcListFm.sBitBtn4.Visible := true;
  AcListFm.sBitBtn24.Visible := true;

  AcListFm.sBitBtn26.Visible := False;
  AcListFm.sBitBtn28.Visible := False;
  AcListFm.sBitBtn27.Visible := False;
  AcListFm.sBitBtn29.Visible := False;

  AcListFm.sPanel3.Visible := true;
  AcListFm.sPanel4.Visible := False;
  // AcListFm.Button1.Visible := True;
  AcListFm.sBitBtn2.Enabled := true;
  AcListFm.sBitBtn12.Enabled := true;
  AcListFm.sBitBtn17.Enabled := true;
  AcListFm.sEdit1.Text := '0';
  AcListFm.sEdit5.Text := '0';
  AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
  AcListFm.Button2.Visible := False;
  AcListFm.DBCheckBox9.Visible := False;
  if acctype = 1 then
    AcListFm.Label22.Caption := '‰ﬁœÌ'
  else if acctype = 2 then
    AcListFm.Label22.Caption := 'Ã«—Ì'
  else if acctype = 9 then
    AcListFm.Label22.Caption := '„œÌ‰Ê‰';

  // -------------------------------------------
  with DmdFm do
  begin
  goods:='';
    QLoadEf.First;
    // --------------------------- «œ—«Ã «·»Ê·Ì’… ›Ì ﬁ«∆„… «·Õ ”«»

    if (DmdFm.VDateHrakTaghez.Value = 1) then
      if (DmdFm.VloadHrakStoreType.Value <> 1)and(NewEfraj<>2) then

        raise Exception.Create('’·Ì ⁄·Ï —”Ê· «··Â ’ﬁ⁄ ⁄·Ìﬂ Ì« Õ»Ê—');

    if NewEfraj = 1 then { ›« Ê—… ÃœÌœ… }
    begin
      AccList.Insert;
      AccListNumT.Value := QLoadEfAuto.Value;
      AccListListType.Value := acctype;
      AccListShipNum.Value := DmdFm.VDateHrakTransNUm.Value;
        AccListShipType.Value := VDateHrakShipType.Value;
      AccListShipMet.Value := VDateHrakShipMet.Value;
      AccListToName.Value := QLoadEfSend.Value; // «·„—”·… ≈·ÌÂ
      AccListGoodsname.Value := QLoadEfGoodsname.Value; // Ê’› «·»÷«⁄…
      DmdFm.AccListAginNm.Value := DmdFm.AgentsVnum.Value;
      if not DmdFm.VDateHrakEndDate.IsNull then
        AccListEndEmpDate.Value := DmdFm.VDateHrakEndDate.Value //   «· ›—Ì€
      else
        AccListEndEmpDate.Value := Date; //   «· ›—Ì€

      AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value; //   «·Ê’Ê·
      AccListAdmisMet.Value := QLoadEfStoreType.Value; // ÿ«—Ìﬁ «· ”·Ì„

      if (DmdFm.VDateHrakRofR.Value = 1) then
        AccListRoafe.Value := 1
      else
        AccListRoafe.Value := 0;
//      AngSerFm.ShowModal;

      AccListWeSpace.Value := 0; // «·ﬁÌ«”
      AccListWight.Value := 0; // «·Ê“‰

      AccList.Post;

      // ***************************************

    end
    else if NewEfraj = 2 then
    begin
      EditList := 1;
     if AccList.Locate('ListNum;ListType', vararrayof([list_num,acctype]), [])then
      AccList.Edit;
      AccListWeSpace.Value := 0; // «·ﬁÌ«”
      AccListWight.Value := 0; // «·Ê“‰
      EditList := 0;
      AccListAdmisMet.Value := QLoadEfStoreType.Value; // ÿ«—Ìﬁ «· ”·Ì„
      AccListToName.Value   := QLoadEfSend.Value; // «·„—”·… ≈·ÌÂ
      AccListShipType.Value :=dmdfm. VDateHrakShipType.Value;
      AccListShipMet.Value  := dmdfm.VDateHrakShipMet.Value;
      //  goods := dmdfm.QLoadEfGoodsname.Value; // Ê’› «·»÷«⁄…
      DmdFm.AccListAginNm.Value := DmdFm.AgentsVnum.Value;
      DmdFm.AccListShipNum.Value := DmdFm.VDateHrakTransNUm.Value;

        if not DmdFm.VDateHrakEndDate.IsNull then
        AccListEndEmpDate.Value := DmdFm.VDateHrakEndDate.Value //   «· ›—Ì€
      else
        AccListEndEmpDate.Value := Date; //   «· ›—Ì€

      AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value; //   «·Ê’Ê·
      VBollAccList.Close;
      VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VBollAccList.Execute;

      VUnitAccList.Close;
      VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VUnitAccList.Execute;

      VBollAccList.First;
      while NOT VBollAccList.eof do
      BEGIN
        VBollAccList.Delete;

      END;

      VUnitAccList.First;
      while NOT VUnitAccList.eof do
      BEGIN
        VUnitAccList.Delete;

      END;

      // 515689

    end;

    i := 1;
    j := 0;
    kias := 0;
    Weight := 0;
    Qty1 := 0;
    Qty2 := 0;
    unit1 := 0;
    unit2 := 0;
    num1 := 0;
    num2 := 0;
    num3 := 0;
    num4 := 0;
    num5 := 0;
    num6 := 0;
    num7 := 0;
    num8 := 0;

    // QLoadEf.Refresh;

    // DmdFm.QLoadEf.First;

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    VBollAccList.Close;
    VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
    VBollAccList.Execute;

    VUnitAccList.Close;
    VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
    VUnitAccList.Execute;
    // QLoadEf.First;

    while not DmdFm.QLoadEf.eof do
    begin

      VDervr6.Close;
      VDervr6.ParamByName('VNumT').Value := QLoadEfLNum.Value;
      VDervr6.ParamByName('VNumT1').Value := QLoadEfAuto.Value;
      VDervr6.Execute;

      VDervr7.Close;
      VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
      VDervr7.Execute;

      // 999999999999999999999999999999999999999999999999
      VBollAccList.Insert;
      VBollAccListBollsa.Value := QLoadEfBillloading.Value;
      VBollAccListNumLoad.Value := QLoadEfAuto.Value;
      VBollAccListNumAcc.Value := AccListListNum.Value;
      VBollAccList.Post;

      if QLoadEfMarks.Value = 7 then
      begin

        QTajmieData.Close;
        QTajmieData.ParamByName('Lnum').Value := dmdfm.VDervr6Num.Value;
        QTajmieData.ParamByName('Auto').Value := dmdfm.VDervr6Lnum.Value;
        QTajmieData.Open;

        QTajmieData.First;

        while not QTajmieData.eof do
        begin

          if VUnitAccList.Locate('NumUnit', QTajmieDataTypeNm.Value, []) then
          begin
            VUnitAccList.Edit;
            VUnitAccListAddCount.Value := dmdfm.VUnitAccListAddCount.Value +
              dmdfm.QTajmieDatatypeHowa1.Value;
            // VUnitAccListNumAlist.Value := AccListListNum.Value;
            // VUnitAccListNumUnit.Value := QTajmieDataTypeNm.Value;
            VUnitAccListQtityNormal.Value := dmdfm.VUnitAccListQtityNormal.Value +
              dmdfm.QTajmieDataEadiatFyus.Value;
            VUnitAccListQtitoyRor.Value := VUnitAccListQtitoyRor.Value +
              QTajmieDataEadiatLaynar.Value;
            VUnitAccListFwozQ.Value := VUnitAccListFwozQ.Value +
              QTajmieDataRuruFyus.AsInteger;
            VUnitAccListLanerQ.Value := VUnitAccListLanerQ.Value +
              QTajmieDataRuruLaynar.AsInteger;
            VUnitAccListRofaQ.Value := VUnitAccListRofaQ.Value +
              QTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := VUnitAccListNRofaQ.Value +
              QTajmieDataBLever.AsInteger;

          end
          else
          begin
            VUnitAccList.Insert;
            VUnitAccListAddCount.Value := QTajmieDatatypeHowa1.Value;
            VUnitAccListNumAlist.Value := AccListListNum.Value;
            VUnitAccListNumUnit.Value := QTajmieDataTypeNm.Value;
            VUnitAccListQtityNormal.Value := QTajmieDataEadiatFyus.Value;
            VUnitAccListQtitoyRor.Value := QTajmieDataEadiatLaynar.Value;
            VUnitAccListFwozQ.Value := QTajmieDataRuruFyus.AsInteger;
            VUnitAccListLanerQ.Value := QTajmieDataRuruLaynar.AsInteger;
            VUnitAccListRofaQ.Value := QTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := QTajmieDataBLever.AsInteger;

          end;
          VUnitAccList.Post;
          QTajmieData.Next;
        end;

      end
      else
      begin

        QLTajmieData.Close;
        QLTajmieData.ParamByName('Num').Value := dmdfm.QLoadEfAuto.Value;
        QLTajmieData.Open;

        QLTajmieData.First;

        while not QLTajmieData.eof do
        begin

          if VUnitAccList.Locate('NumUnit', dmdfm.QLoadEfMarks.Value, []) then
          begin

            VUnitAccList.Edit;
            VUnitAccListAddCount.Value := VUnitAccListAddCount.Value +
              QLoadEfQty.AsInteger;

            if VDervr7.IsEmpty then
            BEGIN
              VUnitAccListQtityNormal.Value := dmdfm.VUnitAccListQtityNormal.Value +
                dmdfm.QLoadEfQty.Value;
              VUnitAccListQtitoyRor.Value := VUnitAccListQtitoyRor.Value +
                QLTajmieDataEadiatLaynar.Value;
              VUnitAccListFwozQ.Value := VUnitAccListFwozQ.Value +
                QLTajmieDataRuruFyus.AsInteger;
              VUnitAccListLanerQ.Value := VUnitAccListLanerQ.Value +
                QLTajmieDataRuruLaynar.AsInteger;
              VUnitAccListRofaQ.Value := VUnitAccListRofaQ.Value +
                QLTajmieDataSLever.AsInteger;
              VUnitAccListNRofaQ.Value := VUnitAccListNRofaQ.Value +
                QLTajmieDataBLever.AsInteger;
            END
            ELSE
            BEGIN

              VUnitAccListQtityNormal.Value := VUnitAccListQtityNormal.Value +
                dmdfm.QLTajmieDataEadiatFyus.Value;
              VUnitAccListQtitoyRor.Value := VUnitAccListQtitoyRor.Value +
                dmdfm.QLTajmieDataEadiatLaynar.Value;
              VUnitAccListFwozQ.Value := VUnitAccListFwozQ.Value +
                dmdfm.QLTajmieDataRuruFyus.AsInteger;
              VUnitAccListLanerQ.Value := VUnitAccListLanerQ.Value +
                dmdfm.QLTajmieDataRuruLaynar.AsInteger;
              VUnitAccListRofaQ.Value := VUnitAccListRofaQ.Value +
                dmdfm.QLTajmieDataSLever.AsInteger;
              VUnitAccListNRofaQ.Value := VUnitAccListNRofaQ.Value +
                dmdfm.QLTajmieDataBLever.AsInteger;
            END;

            {

              VUnitAccListQtityNormal.Value := VUnitAccListQtityNormal.Value +
              QLTajmieDataEadiatFyus.AsInteger;

              VUnitAccListQtitoyRor.Value := VUnitAccListQtitoyRor.Value +
              QLTajmieDataEadiatLaynar.AsInteger;

              VUnitAccListFwozQ.Value := VUnitAccListFwozQ.Value +
              QLTajmieDataRuruFyus.AsInteger;

              VUnitAccListLanerQ.Value := VUnitAccListLanerQ.Value +
              QLTajmieDataRuruLaynar.AsInteger;

              VUnitAccListRofaQ.Value := VUnitAccListRofaQ.Value +
              QLTajmieDataSLever.AsInteger;

              VUnitAccListNRofaQ.Value := VUnitAccListNRofaQ.Value +
              QLTajmieDataBLever.AsInteger; }

          end
          else
          begin
            VUnitAccList.Insert;
            VUnitAccListAddCount.Value := dmdfm.QLoadEfQty.Value;
            VUnitAccListNumAlist.Value := AccListListNum.Value;
            VUnitAccListNumUnit.Value := QLoadEfMarks.Value;

            if VDervr7.IsEmpty then
            BEGIN
              VUnitAccListQtityNormal.Value := QLoadEfQty.Value;
              VUnitAccListQtitoyRor.Value := QLTajmieDataEadiatLaynar.Value;
              VUnitAccListFwozQ.Value := QLTajmieDataRuruFyus.AsInteger;
              VUnitAccListLanerQ.Value := QLTajmieDataRuruLaynar.AsInteger;
              VUnitAccListRofaQ.Value := QLTajmieDataSLever.AsInteger;
              VUnitAccListNRofaQ.Value := QLTajmieDataBLever.AsInteger;
            END
            ELSE
            BEGIN

              VUnitAccListQtityNormal.Value := dmdfm.QLTajmieDataEadiatFyus.Value;
              VUnitAccListQtitoyRor.Value := dmdfm.QLTajmieDataEadiatLaynar.Value;
              VUnitAccListFwozQ.Value := dmdfm.QLTajmieDataRuruFyus.AsInteger;
              VUnitAccListLanerQ.Value := dmdfm.QLTajmieDataRuruLaynar.AsInteger;
              VUnitAccListRofaQ.Value := dmdfm.QLTajmieDataSLever.AsInteger;
              VUnitAccListNRofaQ.Value := dmdfm.QLTajmieDataBLever.AsInteger;
            END;

            { VUnitAccListQtityNormal.Value := QLTajmieDataEadiatFyus.AsInteger;
              VUnitAccListQtitoyRor.Value := QLTajmieDataEadiatLaynar.AsInteger;
              VUnitAccListFwozQ.Value := QLTajmieDataRuruFyus.AsInteger;
              VUnitAccListLanerQ.Value := QLTajmieDataRuruLaynar.AsInteger;
              VUnitAccListRofaQ.Value := QLTajmieDataSLever.AsInteger;
              VUnitAccListNRofaQ.Value := QLTajmieDataBLever.AsInteger; }

          end;

          VUnitAccList.Post;
          QLTajmieData.Next;
        end;
      end;

      AccList.Edit;
      AccListWeSpace.Value := AccListWeSpace.Value + QLoadEfKias.Value;
      // «·ﬁÌ«”
      AccListWight.Value := AccListWight.Value + QLoadEfWeight.Value; // «·Ê“‰
      if goods<>'' then
             goods:= goods+'+'+dmdfm.QLoadEfGoodsname.Value // Ê’› «·»÷«⁄…
      else
       goods:= dmdfm.QLoadEfGoodsname.Value; // Ê’› «·»÷«⁄…
      QLoadEf.Next;
      AccList.Edit;
       dmdfm.AccListGoodsname.Value :=goods;
    end;

    if EditFlag = 1 then
    begin

      AcListFm.Button5.Enabled := true;
      AcListFm.Button7.Enabled := true;
      AcListFm.sBitBtn4.Enabled := true;
      AcListFm.sBitBtn24.Enabled := true;
      AcListFm.sBitBtn2.Enabled := true;
      AcListFm.sBitBtn12.Enabled := true;
      AcListFm.sBitBtn17.Enabled := true;
      AcListFm.DBLookupComboBox3.Enabled := true;
      AcListFm.DBEdit13.Enabled := true;
      AcListFm.DBEdit11.Enabled := true;
      AcListFm.DBEdit12.Enabled := true;
      AcListFm.DBEdit3.Enabled := true;
      AcListFm.DBEdit5.Enabled := true;

    end;

    if AccListWeSpace.Value < 1 then
    begin
      // AccList.Edit;
      AccListWeSpace.Value := 1 // «·ﬁÌ«”
    end;
    AccList.Post;
    DmdFm.QLoadEf.First;
    DmdFm.VloadHrak.Locate('Auto', DmdFm.QLoadEfAuto.Value, []);
    DmdFm.VDervr6.Close;
    DmdFm.VDervr6.ParamByName('VNumT').Value := DmdFm.QLoadEfLNum.Value;
    DmdFm.VDervr6.ParamByName('VNumT1').Value := DmdFm.QLoadEfAuto.Value;
    DmdFm.VDervr6.Execute;
    DmdFm.VDervr7.Close;
    DmdFm.VDervr7.ParamByName('VNumT').Value := DmdFm.VDervr6numAuto.Value;
    DmdFm.VDervr7.Execute;

    AcListFm.ShowModal;
    AcListFm.Free;
    sPanel1.Visible := False;
    EditList := 1;
    Close;
  end;
end;

procedure TEfrajFm.DBGrid2EditButtonClick(Sender: TObject);
begin
  {
    if (DmdFm.VloadHrak.State = dsedit) or (DmdFm.VloadHrak.State = dsinsert) then
    raise Exception.Create('√Õ›Ÿ «·»Ì«‰«  «Ê·«');
    SloadF := 0;

    /// //////////////////////////////

    { if DmdFm.VloadHrakMarks.Value = 7 then
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    Load2Fm.ShowModal;
    Load2Fm.Free;
    end
    else
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    if DmdFm.Load2.IsEmpty then
    begin
    DmdFm.Load2.Insert;
    DmdFm.Load2Lnum.Value := DmdFm.loadAuto.Value;
    DmdFm.Load2num.Value := DmdFm.loadLNum.Value;
    DmdFm.Load2.Post;
    end;
    // DmdFm.Load2.Locate('LNum',DmdFm.loadAuto.Value,[]);
    Application.CreateForm(TAdmDetFm, AdmDetFm);
    if DmdFm.VloadlistMixedF.Value = 1 then
    begin
    AdmDetFm.DBGrid1.Columns[1].Visible := true;
    AdmDetFm.DBGrid1.Columns[2].Visible := true;
    AdmDetFm.DBGrid1.Columns[3].Visible := true;
    AdmDetFm.DBRadioGroup1.Visible := true;
    AdmDetFm.DBRadioGroup2.Visible := true;
    AdmDetFm.sBitBtn3.Visible := true;
    end
    else
    begin
    AdmDetFm.DBGrid1.Columns[1].Visible := False;
    AdmDetFm.DBGrid1.Columns[2].Visible := False;
    AdmDetFm.DBGrid1.Columns[3].Visible := False;
    AdmDetFm.DBRadioGroup1.Visible := False;
    AdmDetFm.DBRadioGroup2.Visible := False;
    AdmDetFm.sBitBtn3.Visible := False;
    end;
    AdmDetFm.ShowModal;
    AdmDetFm.Free;
    end;

    with DmdFm do
    begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    end;

    if DmdFm.QLoadEfMarks.Value = 7 then
    begin
    Application.CreateForm(TDervr6Fm, Dervr6Fm);
    Dervr6Fm.ShowModal;
    Dervr6Fm.Free;
    end
    else
    begin
    with DmdFm do
    begin
    IF (NOT(VDervr6Qty.IsNull)) THEN
    BEGIN

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    Application.CreateForm(TDervr7Fm, Dervr7Fm);
    Dervr7Fm.ShowModal;
    Dervr7Fm.Free;
    END;

    end;

    end;

    { if DmdFm.loadMarks.Value = 7 then
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    Load2Fm.ShowModal;
    Load2Fm.Free;
    end
    else
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    DmdFm.Load2.Insert;
    DmdFm.Load2LNum.Value := DmdFm.loadAuto.Value;
    DmdFm.Load2.Post;
    DmdFm.Load2.Locate('LNum', DmdFm.loadAuto.Value, []);
    Application.CreateForm(TAdmDetFm, AdmDetFm);
    AdmDetFm.ShowModal;
    AdmDetFm.Free;
    end;
  }
end;

procedure TEfrajFm.Panel1Click(Sender: TObject);
begin
  if Panel1.Left = 500 then
  begin
    Panel1.Left := 1004;
    DBGrid2.Width := 995;
    DBGrid2.BringToFront;
    Panel1.BringToFront;
    Panel1.Caption := '>>';

    DBGridEh1.Width := 487;
    Panel2.Left := 516;
    DBGridEh1.Left := 532;
    Panel2.Caption := '>>';

  end
  else
  begin
    DBGrid2.Width := 492;
    Panel1.Left := 500;
    Panel1.Caption := '<<';

  end;

end;

procedure TEfrajFm.Panel2Click(Sender: TObject);
begin
  if Panel2.Left = 516 then
  begin
    Panel2.Left := 4;
    DBGridEh1.Width := 1000;
    Panel2.Caption := '<<';
    DBGridEh1.Left := 19;
    DBGridEh1.BringToFront;
    Panel2.BringToFront;

    DBGrid2.Width := 492;
    Panel1.Left := 500;
  end
  else
  begin
    DBGridEh1.Width := 487;
    Panel2.Left := 516;
    DBGridEh1.Left := 532;
    Panel2.Caption := '>>';

  end;

end;

procedure TEfrajFm.DBGrid1EditButtonClick(Sender: TObject);
begin
  { SloadF := 1;
    if (DmdFm.QsLoadEf.State = dsedit) or (DmdFm.QsLoadEf.State = dsinsert) then
    raise Exception.Create('√Õ›Ÿ «·»Ì«‰«  «Ê·«');
    // pppppppppppppppppppppp

    with DmdFm do
    begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QsLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QsLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    end;

    if DmdFm.QsLoadEfMarks.Value = 7 then
    begin
    Application.CreateForm(TDervr6Fm, Dervr6Fm);
    Dervr6Fm.ShowModal;
    Dervr6Fm.Free;
    end
    else
    begin
    with DmdFm do
    begin
    IF (NOT(VDervr6Qty.IsNull)) THEN
    BEGIN

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    Application.CreateForm(TDervr7Fm, Dervr7Fm);
    Dervr7Fm.ShowModal;
    Dervr7Fm.Free;
    END;

    end;

    end;

    { if DmdFm.loadMarks.Value = 7 then
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    Load2Fm.ShowModal;
    Load2Fm.Free;
    end
    else
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    DmdFm.Load2.Insert;
    DmdFm.Load2LNum.Value := DmdFm.loadAuto.Value;
    DmdFm.Load2.Post;
    DmdFm.Load2.Locate('LNum', DmdFm.loadAuto.Value, []);
    Application.CreateForm(TAdmDetFm, AdmDetFm);
    AdmDetFm.ShowModal;
    AdmDetFm.Free;
    end;
  }
end;

{ if DmdFm.sloadMarks.Value = 7 then
  begin
  Application.CreateForm(TLoad2Fm, Load2Fm);
  Load2Fm.DBGrid1.DataSource := DmdFm.DSload2;
  Load2Fm.ShowModal;
  Load2Fm.Free;
  end
  else
  begin
  Application.CreateForm(TLoad2Fm, Load2Fm);
  if DmdFm.sload2.IsEmpty then
  begin
  DmdFm.sload2.Insert;
  DmdFm.sLoad2Lnum.Value := DmdFm.loadAuto.Value;
  DmdFm.sLoad2num.Value := DmdFm.loadLNum.Value;
  DmdFm.sload2.Post;
  end;

  Application.CreateForm(TAdmDetFm, AdmDetFm);
  if DmdFm.VloadlistMixedF.Value = 1 then
  begin
  AdmDetFm.DBGrid1.DataSource := DmdFm.DSadmdet2;
  AdmDetFm.DBGrid1.Columns[1].Visible := true;
  AdmDetFm.DBGrid1.Columns[2].Visible := true;
  AdmDetFm.DBGrid1.Columns[3].Visible := true;
  AdmDetFm.DBRadioGroup1.Visible := true;
  AdmDetFm.DBRadioGroup2.Visible := true;
  AdmDetFm.sBitBtn3.Visible := true;
  end
  else
  begin
  AdmDetFm.DBGrid1.DataSource := DmdFm.DSadmdet2;
  AdmDetFm.DBGrid1.Columns[1].Visible := False;
  AdmDetFm.DBGrid1.Columns[2].Visible := False;
  AdmDetFm.DBGrid1.Columns[3].Visible := False;
  AdmDetFm.DBRadioGroup1.Visible := False;
  AdmDetFm.DBRadioGroup2.Visible := False;
  AdmDetFm.sBitBtn3.Visible := False;
  end;
  AdmDetFm.ShowModal;
  AdmDetFm.Free;
  end;
  SloadF := 1;

  end; }

procedure TEfrajFm.FormCreate(Sender: TObject);
begin
  creEfraj := 1;
  // DmdFm.DVloadHrak.AutoEdit := true;
end;

procedure TEfrajFm.sBitBtn4Click(Sender: TObject);
begin
  SporGen := 1;
  Application.CreateForm(TSrchFm, SrchFm);
  SrchFm.ShowModal;
  SrchFm.Free;

end;

procedure TEfrajFm.sBitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TEfrajFm.sBitBtn6Click(Sender: TObject);
var
  i, j, unit1, unit2, Qty1, Qty2: Integer;
  kias, Weight: Real;
  place: TBookmark;
begin
  if DmdFm.PermAcList.Value = False then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.QLoadEf.IsEmpty then
    raise Exception.Create('ÌÃ» «Œ Ì«— «·»Ê«·’ √Ê·«');

  DmdFm.QLoadEf.First;
  while not DmdFm.QLoadEf.eof do
  begin
    if (DmdFm.QLoadEfEfrajNum.Value = '') or (DmdFm.QLoadEfStoreType.IsNull)
    then
    begin
      ShowMessage('ÌÃ»  ›—Ì€ «·»Ì«‰ √Ê·«');
      Abort;
    end
    else
      DmdFm.QLoadEf.Next;
  end;

  sPanel1.Visible := true;
  sPanel1.BringToFront;
  sPanel1.Refresh;

  acctype := 9;
  // MainFm.sBitBtn13Click(Sender);
  with DmdFm do
  begin
    QLoadEf.First;
    acctype := 9;

    Inco.FilterSQL := 'IncType=1';
    // 1 AccList.FilterSQL:=('ListType=1');
    // 1 AccList.Last;
    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := QLoadEfBillNum.Value;
    AccList.ParamByName('Vtype').Value := 9;
    AccList.Execute;

    if not AccList.IsEmpty then
    begin
      accdet.Close;
      accdet.ParamByName('VNum').Value := AccListListNum.Value;
      accdet.ParamByName('Vtype').Value := AccListListType.Value;
      accdet.Execute;

      VBollAccList.Close;
      VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VBollAccList.Execute;

      VUnitAccList.Close;
      VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VUnitAccList.Execute;

    end
    else
    BEGIN
      accdet.Close;
      VBollAccList.Close;
      VUnitAccList.Close;
    END;

  end;
      AngSerFm.ShowModal;
 // sBitBtn3Click(Sender);

end;

procedure TEfrajFm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  place: TBookmark;
begin
  if Key = VK_F2 then
  begin

    place := DmdFm.QSLoadEf.GetBookmark;
    DmdFm.VloadHrak.Locate('Auto', DmdFm.QSLoadEfAuto.Value, []);
    DmdFm.VloadHrak.Edit;
    DmdFm.VloadHrakselectF.Value := 1;
    DmdFm.VloadHrakUserSelected.Value := UserSelected;
    DmdFm.VloadHrak.Post;

    DmdFm.VloadHrak.Refresh;
    // DmdFm.SVloadHrak.Refresh;
    // DmdFm.QLoadEf.Refresh;
    // DmdFm.QLoadEf.DeleteWhere;
    // DmdFm.QLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
    // DmdFm.QLoadEf.AddWhere('selectF=1');
    // DmdFm.QLoadEf.AddWhere('UserSelected=' + DmdFm.PermUserNum.AsString);
    // DmdFm.QLoadEf.Open;

      DmdFm.QSLoadEf.Refresh;
    DmdFm.QLoadEf.Refresh;

    DmdFm.QSLoadEf.GotoBookmark(place);
  end;
end;

procedure TEfrajFm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    DmdFm.VloadHrak.Locate('Auto', DmdFm.QLoadEfAuto.Value, []);
    DmdFm.VloadHrak.Edit;
    DmdFm.VloadHrakselectF.Value := 0;
    DmdFm.VloadHrakUserSelected.Value := 0;
    DmdFm.VloadHrak.Post;

    DmdFm.QLoadEf.Refresh;
    DmdFm.QSLoadEf.Refresh;
  end;
end;

procedure TEfrajFm.DBGrid1ColEnter(Sender: TObject);
begin
  // DmdFm.SVloadHrak.Refresh;
  // DmdFm.VloadHrak.Refresh;

end;

procedure TEfrajFm.DBGrid2ColEnter(Sender: TObject);
begin
  // DmdFm.SVloadHrak.Refresh;
  // DmdFm.VloadHrak.Refresh;

end;

procedure TEfrajFm.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // DmdFm.SVloadHrak.Refresh;
  // DmdFm.VloadHrak.Refresh;

end;

procedure TEfrajFm.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    // DmdFm.SVloadHrak.Refresh;
    // DmdFm.VloadHrak.Refresh;
  end;
end;

procedure TEfrajFm.DBGridEh1EditButtonClick(Sender: TObject);
begin

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QsLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QSLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

  end;

  if DmdFm.VloadHrakMarks.Value = 7 then
  begin
    Application.CreateForm(TDervr6Fm, Dervr6Fm);
    Dervr6Fm.ShowModal;
    Dervr6Fm.Free;
  end
  else
  begin
    with DmdFm do
    begin
      IF (NOT(VDervr6Qty.IsNull)) THEN
      BEGIN

        VDervr7.Close;
        VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
        VDervr7.Execute;

        Application.CreateForm(TDervr7Fm, Dervr7Fm);
        Dervr7Fm.ShowModal;
        Dervr7Fm.Free;
      END;

    end;

  end;

  { SloadF := 1;
    if (DmdFm.QsLoadEf.State = dsedit) or (DmdFm.QsLoadEf.State = dsinsert) then
    raise Exception.Create('√Õ›Ÿ «·»Ì«‰«  «Ê·«');
    // pppppppppppppppppppppp

    with DmdFm do
    begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := QsLoadEfLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := QsLoadEfAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    end;

    if DmdFm.QsLoadEfMarks.Value = 7 then
    begin
    Application.CreateForm(TDervr6Fm, Dervr6Fm);
    Dervr6Fm.ShowModal;
    Dervr6Fm.Free;
    end
    else
    begin
    with DmdFm do
    begin
    IF (NOT(VDervr6Qty.IsNull)) THEN
    BEGIN

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    Application.CreateForm(TDervr7Fm, Dervr7Fm);
    Dervr7Fm.ShowModal;
    Dervr7Fm.Free;
    END;

    end;

    end;

    { if DmdFm.loadMarks.Value = 7 then
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    Load2Fm.ShowModal;
    Load2Fm.Free;
    end
    else
    begin
    Application.CreateForm(TLoad2Fm, Load2Fm);
    DmdFm.Load2.Insert;
    DmdFm.Load2LNum.Value := DmdFm.loadAuto.Value;
    DmdFm.Load2.Post;
    DmdFm.Load2.Locate('LNum', DmdFm.loadAuto.Value, []);
    Application.CreateForm(TAdmDetFm, AdmDetFm);
    AdmDetFm.ShowModal;
    AdmDetFm.Free;
    end;
  }
end;

procedure TEfrajFm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  place: TBookmark;
begin
  if Key = VK_F2 then
  begin

    if DmdFm.VDateHrakByan_type.Value = 2 then
      raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«·‘Õ‹‹‹‹‹‹‹‹‹‰');

    if DmdFm.QSLoadEfTransitF.Value = 2 then
      raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');
      //ShowMessage(DmdFm.QSLoadEfStopF.AsString) ;
      if DmdFm.QSLoadEfStopF.Value = 1 then
      raise Exception.Create('«·»Ê·Ì’… „ÊﬁÊ›…');
    place := DmdFm.QSLoadEf.GetBookmark;
    DmdFm.VloadHrak.Locate('Auto', DmdFm.QSLoadEfAuto.Value, []);
    DmdFm.VloadHrak.Edit;
    DmdFm.VloadHrakselectF.Value := 1;
    DmdFm.VloadHrakUserSelected.Value := UserSelected;
    DmdFm.VloadHrak.Post;

    DmdFm.VloadHrak.Refresh;
    // DmdFm.SVloadHrak.Refresh;
    // DmdFm.QLoadEf.Refresh;
    // DmdFm.QLoadEf.DeleteWhere;
    // DmdFm.QLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
    // DmdFm.QLoadEf.AddWhere('selectF=1');
    // DmdFm.QLoadEf.AddWhere('UserSelected=' + DmdFm.PermUserNum.AsString);
    // DmdFm.QLoadEf.Open;

    DmdFm.QSLoadEf.Refresh;
    DmdFm.QLoadEf.Refresh;
  if not DmdFm.QSLoadEf.IsEmpty then
    DmdFm.QSLoadEf.GotoBookmark(place);
  end;
end;

procedure TEfrajFm.BitBtn1Click(Sender: TObject);
var
  Store_Num: Smallint;
  Efraj_Num: String;
  Eb: Integer;
begin

  DmdFm.QLoadEf.First;
  while not DmdFm.QLoadEf.eof do
  begin
    if not DmdFm.QLoadEfEfrajNum.IsNull then
    begin
      Efraj_Num := DmdFm.QLoadEfEfrajNum.Value;
      Store_Num := DmdFm.QLoadEfStoreType.AsInteger;
      Eb := DmdFm.QLoadEfBillNum.Value
    end;
    DmdFm.QLoadEf.Next;
  end;

  DmdFm.QLoadEf.First;
  while not DmdFm.QLoadEf.eof do
  begin

    DmdFm.VloadHrak.Locate('auto', DmdFm.QLoadEfAuto.Value, []);

    DmdFm.VloadHrak.Edit;
    DmdFm.VloadHrakEfrajNum.Value := Efraj_Num;
    DmdFm.VloadHrakStoreType.AsInteger := Store_Num;
    DmdFm.VloadHrakBillNum.Value := Eb;
    DmdFm.VloadHrak.Post;

    DmdFm.QLoadEf.Next;

  end;
  if DmdFm.VloadHrak.State = dsedit then
    DmdFm.VloadHrak.Post;

  DmdFm.QLoadEf.DeleteWhere;
  DmdFm.QLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
  DmdFm.QLoadEf.AddWhere('selectF=1');
  DmdFm.QLoadEf.AddWhere('UserSelected= ' + DmdFm.PermUserNum.AsString);
  DmdFm.QLoadEf.Open;
end;

procedure TEfrajFm.BitBtn2Click(Sender: TObject);
var
  Store_Num: Smallint;
begin

end;

procedure TEfrajFm.Button1Click(Sender: TObject);
begin

  DmdFm.VloadHrak.Refresh;

  DmdFm.QLoadEf.DeleteWhere;
  DmdFm.QLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
  DmdFm.QLoadEf.AddWhere('selectF=1');
  DmdFm.QLoadEf.AddWhere('UserSelected=' + DmdFm.PermUserNum.AsString);
  DmdFm.QLoadEf.Open;

  DmdFm.QSLoadEf.Refresh;
  DmdFm.QLoadEf.Refresh;

end;

end.
