unit BillSrUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, sPanel, Vcl.StdCtrls,
  sEdit, sLabel, Vcl.Buttons, sBitBtn, Data.DB, Vcl.Grids, Vcl.DBGrids,
  acDBGrid;

type
  TBillSrFm = class(TForm)
    sBitBtn1: TsBitBtn;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sPanel1: TsPanel;
    sDBGrid1: TsDBGrid;
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillSrFm: TBillSrFm;

implementation

{$R *.dfm}

uses AcListUn, AiiradatUn, Attach2Un, Attach3Un, AttachUn, Dervr6Un, Dervr7Un,
  DirectDeliveryUn, DmdUm, EfrajUn, HatkaUn, LocalAgantUn, LstDetUn, MainUn,
  PermUn, SplashUn, SrchUn, SubSrcUn, UFEnterPass, VDateHrakUn, AgentUn, Dmd2Un,
  ShipUn, SrchShUn, VdateHUn, ListShUn;

procedure TBillSrFm.FormShow(Sender: TObject);
begin
  DmdFm.BillSrchQ.Close;
  sEdit1.Clear;
  sEdit2.Clear;
  sEdit1.SetFocus;
end;

procedure TBillSrFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TBillSrFm.sDBGrid1DblClick(Sender: TObject);
begin
  with DmdFm do
  begin
    if crelist = 2 then
      Close
    else
    begin
      DmdFm.Inco.FilterSQL := 'IncType=1';

      if DmdFm.BillSrchQlisttype.Value = 1 then
      begin
        if DmdFm.PermAcList.Value = false then
          raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
        AccType := 1;

        AccList.Close;
        AccList.ParamByName('VNum').Value := dmdfm.BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 1;
        AccList.Execute;

        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := dmdfm.AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := dmdfm.AccListListNum.Value;
        VUnitAccList.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := dmdfm.AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := dmdfm.AccListBillNum.Value;
        VloedB.Open;


        DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := Now;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (Now - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 1;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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
        AcListFm.sEdit1.Text := '0';
        AcListFm.sEdit5.Text := '0';
        AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
        AcListFm.sPanel3.Visible := True;
        AcListFm.sPanel4.Visible := false;

        AcListFm.Label22.Caption := '‰ﬁœÌ';
        AcListFm.ShowModal;
        AcListFm.Free;

      end

      else if DmdFm.BillSrchQlisttype.Value = 9 then
      begin
        if DmdFm.PermAcList.Value = false then
          raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
        AccType := 1;

        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 9;
        AccList.Execute;

        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


        DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := date;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (date - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 1;
        DmdFm.VDateHrak.Execute;

//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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
        AcListFm.sEdit1.Text := '0';
        AcListFm.sEdit5.Text := '0';
        AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
        AcListFm.sPanel3.Visible := True;
        AcListFm.sPanel4.Visible := false;

        AcListFm.Label22.Caption := '„œÌ‰Ê‰  »Ê·Ì’…';
        AcListFm.ShowModal;
        AcListFm.Free;

      end

      else if DmdFm.BillSrchQlisttype.Value = 2 then
      begin
        if DmdFm.PermAcList.Value = false then
          raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
        AccType := 2;

        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 2;
        AccList.Execute;

        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


        DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := date;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (date - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 1;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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
        AcListFm.sEdit1.Text := '0';
        AcListFm.sEdit5.Text := '0';
        AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
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
        AcListFm.ShowModal;
        AcListFm.Free;
      end

      else if DmdFm.BillSrchQlisttype.Value = 4 then
      begin

        AccType := 4;

        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 4;
        AccList.Execute;
        if not BillSrchQSubtype2.isnull then
           AccList.filterSQL:='Subtype2='+BillSrchQsubtype2.asstring;


        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


          DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := Now;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (Now - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 2;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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
        if (AccListSubType2.Value=2) or (AccListSubType2.Value=3)  then
        begin
            AcListFm.sBitBtn26.Visible := True;
            AcListFm.sBitBtn28.Visible := True;
            AcListFm.sBitBtn27.Visible := false;
            AcListFm.sBitBtn29.Visible := false;
        end
        else
           if AccListSubType2.Value=4   then
        begin
            AcListFm.sBitBtn26.Visible := false;
            AcListFm.sBitBtn28.Visible := false;
            AcListFm.sBitBtn27.Visible := true;
            AcListFm.sBitBtn29.Visible := true;
        end;

        AcListFm.sBitBtn4.Visible := false;
        AcListFm.sBitBtn24.Visible := false;
        if AccListSubType2.Value=2  then
         AcListFm.sEdit1.Text := '1'
         else
          AcListFm.sEdit1.Text := '2' ;
        AcListFm.sEdit5.Text := IntToStr(dmdfm.AccListTadl.Value);
        AcListFm.sEdit4.Text := IntToStr(AccListFrg.Value);
        AcListFm.sPanel4.Visible := True;
        AcListFm.sPanel3.Visible := false;

        AcListFm.Button1.Visible := false;
        AcListFm.DBCheckBox9.Visible := True;
        // AcListFm.sBitBtn4.SetFocus;

        if BillSrchQsubtype2.value=2  then
               AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ ›«—€'
         else
         if BillSrchQsubtype2.value=3  then
               AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ „„ ·∆'
          else
         if BillSrchQsubtype2.value=4  then
              begin
                DmdFm.services.Locate('NUmAuto',AccListTadl.Value,[]);
               AcListFm.Label22.Caption := 'Œœ„«  ‰ﬁœÌ '  +DmdFm.servicesNameServ.Value ;
         end
         else
                AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ';
        AcListFm.ShowModal;
        AcListFm.Free;
      end

      else if DmdFm.BillSrchQlisttype.Value = 5 then
      begin
        AccType := 5;
        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 5;
        AccList.Execute;
        if not BillSrchQSubtype2.isnull then
           AccList.filterSQL:='Subtype2='+BillSrchQsubtype2.asstring;

        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


         DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := Now;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (Now - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 2;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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

        if (AccListSubType2.Value=2) or (AccListSubType2.Value=3)  then
        begin
            AcListFm.sBitBtn26.Visible := True;
            AcListFm.sBitBtn28.Visible := True;
            AcListFm.sBitBtn27.Visible := false;
            AcListFm.sBitBtn29.Visible := false;
        end
        else
           if AccListSubType2.Value=4   then
        begin
            AcListFm.sBitBtn26.Visible := false;
            AcListFm.sBitBtn28.Visible := false;
            AcListFm.sBitBtn27.Visible := true;
            AcListFm.sBitBtn29.Visible := true;
        end;

        AcListFm.sBitBtn4.Visible := false;
        AcListFm.sBitBtn24.Visible := false;
        AcListFm.Button1.Visible := false;
        AcListFm.sPanel4.Visible := True;
        AcListFm.sPanel3.Visible := false;
        AcListFm.DBCheckBox9.Visible := True;
       if AccListSubType2.Value=2  then
         AcListFm.sEdit1.Text := '1'
         else
          AcListFm.sEdit1.Text := '2' ;
        if AccListSubType2.Value=4 then
            AcListFm.sEdit5.Text := IntToStr(DmdFm.AccListTadl.Value)
        else
          AcListFm.sEdit5.Text := IntToStr(AccListTadl.Value);
        AcListFm.sEdit4.Text := IntToStr(AccListFrg.Value);
        if BillSrchQsubtype2.value=2  then
               AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì ›«—€'
         else
         if BillSrchQsubtype2.value=3  then
               AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì „„ ·∆'
          else
         if BillSrchQsubtype2.value=4  then
          begin
                DmdFm.services.Locate('NUmAuto',AccListTadl.Value,[]);
               AcListFm.Label22.Caption := 'Œœ„«  Ã«—Ì '  +DmdFm.servicesNameServ.Value ;
         end
          else
                AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì';

        AcListFm.ShowModal;
        AcListFm.Free;
      end

      else if DmdFm.BillSrchQlisttype.Value = 6 then
      begin
        AccType := 6;
        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 6;
        AccList.Execute;

        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


         DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := Now;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (Now - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 1;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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

      else if DmdFm.BillSrchQlisttype.Value = 7 then
      begin
        AccType := 7;
        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 7;
        AccList.Execute;
        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


         DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := Now;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (Now - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 1;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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

      else if DmdFm.BillSrchQlisttype.Value = 8 then
      begin
        AccType := 8;
        AccList.Close;
        AccList.ParamByName('VNum').Value := BillSrchQListNum.Value;
        AccList.ParamByName('Vtype').Value := 8;
        AccList.Execute;
         if not BillSrchQSubtype2.isnull then
           AccList.filterSQL:='Subtype2='+BillSrchQsubtype2.asstring;

        VBollAccList.Close;
        VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VBollAccList.Execute;

        VUnitAccList.Close;
        VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
        VUnitAccList.Execute;

        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;

        VloedB.Close;
        VloedB.ParamByName('VAuto').Value := AccListNumT.Value;
        VloedB.ParamByName('VBillNum').Value := AccListBillNum.Value;
        VloedB.Open;


       DmdFm.VDateHrak.Close;
        DmdFm.VDateHrak.ParamByName('VDateTO').Value := Now;
        DmdFm.VDateHrak.ParamByName('VDateFROM').Value := (Now - 365);
        VDateHrak.ParamByName('VByan_Type').Value := 2;
        DmdFm.VDateHrak.Execute;
//
//
//        VloadHrak.Close;
//        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
//        VloadHrak.Open;

        DmdFm.loadSearchQ.Close;
        DmdFm.loadSearchQ.Open;
        DmdFm.loadSearchQ.Locate('Auto', DmdFm.AccListNumT.Value, []);

       DmdFm.VDateHrak.Locate('num', DmdFm.loadSearchQlnum.Value, []);

        VloadHrak.Close;
        VloadHrak.ParamByName('VNumT').Value :=dmdfm.VDateHrakNum.Value;
        VloadHrak.Open;

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
        if (AccListSubType2.Value=2) or (AccListSubType2.Value=3)  then
        begin
            AcListFm.sBitBtn26.Visible := True;
            AcListFm.sBitBtn28.Visible := True;
            AcListFm.sBitBtn27.Visible := false;
            AcListFm.sBitBtn29.Visible := false;
        end
        else
           if AccListSubType2.Value=4   then
        begin
            AcListFm.sBitBtn26.Visible := false;
            AcListFm.sBitBtn28.Visible := false;
            AcListFm.sBitBtn27.Visible := true;
            AcListFm.sBitBtn29.Visible := true;
        end;

        AcListFm.sBitBtn4.Visible := false;
        AcListFm.sBitBtn24.Visible := false;
        AcListFm.Button1.Visible := false;
        AcListFm.DBCheckBox9.Visible := True;

        AcListFm.sPanel4.Visible := True;
        AcListFm.sPanel3.Visible := false;
         if AccListSubType2.Value=2  then
         AcListFm.sEdit1.Text := '1'
         else
          AcListFm.sEdit1.Text := '2' ;
        AcListFm.sEdit5.Text := IntToStr(AccListTadl.Value);
        AcListFm.sEdit4.Text := IntToStr(AccListFrg.Value);
        if BillSrchQsubtype2.value=2  then
               AcListFm.Label22.Caption := '‘Õ‰ „œÌ‰Ê‰ ›«—€'
         else
         if BillSrchQsubtype2.value=3  then
               AcListFm.Label22.Caption := '‘Õ‰ „œÌ‰Ê‰ „„ ·∆'
          else
         if BillSrchQsubtype2.value=4  then
         begin
                DmdFm.services.Locate('NUmAuto',AccListTadl.Value,[]);
               AcListFm.Label22.Caption := 'Œœ„«  „œÌ‰Ê‰ '  +DmdFm.servicesNameServ.Value ;
         end
         else
                AcListFm.Label22.Caption := '‘Õ‰ „œÌ‰Ê‰';
         
        AcListFm.ShowModal;
        AcListFm.Free;
      end;

    end;

  end;

end;

procedure TBillSrFm.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    // if not Dmd2Fm.BillSrchQ.Locate('ListNum', sEdit1.Text, []) then
    with DmdFm do
    begin

      BillSrchQ.Close;
      BillSrchQ.ParamByName('num').Value := StrToInt(sEdit1.Text);
      BillSrchQ.Open;

      if BillSrchQ.IsEmpty then

        ShowMessage('·«  ÊÃœ ›« Ê—… »Â–« «·—ﬁ„');

    end;

  end;
end;

procedure TBillSrFm.sEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  begin
    if Key = #13 then
    begin

      // if not Dmd2Fm.BillSrchQ.Locate('ListNum', sEdit1.Text, []) then
      with DmdFm do
      begin

        ABillSrchQ.Close;
        ABillSrchQ.ParamByName('num').Value := StrToInt(sEdit2.Text);
        ABillSrchQ.Open;

        BillSrchQ.Close;
        BillSrchQ.ParamByName('num').Value := ABillSrchQListNum.Value;
        BillSrchQ.Open;

        if BillSrchQ.IsEmpty then

          ShowMessage('·«ÌÊÃœ „·Õﬁ »Â–« «·—ﬁ„');

      end;

    end;
  end;
end;

end.
