unit ListShUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, Buttons, DBActns, ActnList, db, dateutils,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl,
  LMDFill, sSkinProvider, inifiles, sBitBtn, sCheckBox, sDBCheckBox, Menus,
  sEdit,
  System.Actions, frxClass;

type
  TListShFm = class(TForm)
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
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn11: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Button1: TButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    BitBtn12: TBitBtn;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    sBitBtn14: TsBitBtn;
    sBitBtn13: TsBitBtn;
    sBitBtn18: TsBitBtn;
    DBCheckBox9: TDBCheckBox;
    DBText1: TDBText;
    DBEdit8: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    Label16: TLabel;
    DBText3: TDBText;
    Label15: TLabel;
    LMDFill1: TLMDFill;
    Label12: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    sBitBtn1: TsBitBtn;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    frxReport1: TfrxReport;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure sBitBtn18Click(Sender: TObject);
    procedure sBitBtn13Click(Sender: TObject);
    procedure sBitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListShFm: TListShFm;

implementation

uses
  AcListUn, AiiradatUn, Attach2Un, Attach3Un, AttachUn, BillSrUn, Dervr6Un,
  Dervr7Un, DirectDeliveryUn, DmdUm, EfrajUn, HatkaUn, LocalAgantUn, LstDetUn,
  MainUn, PermUn, SplashUn, SrchUn, SubSrcUn, UFEnterPass, VDateHrakUn;

{$R *.dfm}

procedure TListShFm.BitBtn10Click(Sender: TObject);
begin
  Close;
end;

procedure TListShFm.BitBtn11Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    Income.First;
    while not Income.Eof do
    begin
      AccDet.Insert;
      AccDetAccType.Value := IncomeIncNum.Value;
      Income.Next;
    end;
    AccDet.Post;
  end;

end;

procedure TListShFm.BitBtn12Click(Sender: TObject);
var
  q1, q2, q3, q4, q5, m10, m11, m12: real;
begin // 0
  with DmdFm do
  begin // 1
    Units.Locate('Num', AccListUnit.Value, []);
    q1 := UnitsStateValue.Value;
    Units.Locate('Num', AccListUnit2.Value, []);
    q2 := UnitsStateValue.Value;


    // ...................................................................................

    AccDet.First;
    while not AccDet.Eof do
    begin // 2
      // IIncome.Locate('IncNum',AccDetAccType.Value,[]);
      if (AccDetAccType.Value = 6) then
      begin // 3
        Store.Locate('Num', AccListWeeksNum.Value, []);
        AccDet.Edit;
        if AccListAdmisMet.Value = 3 then
          AccDetAccValue.Value := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          AccDetAccValue.Value := StoreStore.Value;
        if AccListAdmisMet.Value = 1 then
          AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        AccDet.Post;
      end; // 3\\
      if (AccDetAccType.Value = 16) and (AccListUnit.Value = 4) then
      begin
        AccDet.Edit;
        AccDetAccTotal.Value := AccListDaysM.Value * AccListDaysMM.Value *
          AccListGoodsQty.Value;
        AccDet.Post;
      end;
      // GoodsQty

      if (AccDetAccType.Value = 22) then
      begin
        q1 := AccListQty2.Value + AccListGoodsQty.Value;
        AccDet.Edit;
        AccDetAccTotal.Value := AccListDays.Value * MIncomeElecVAlue.Value * q1;
        AccDet.Post;
      end;

      if (AccDetAccType.Value = 9) and not(AccListStates2.IsNull) then
      begin
        q2 := 0;
        q3 := 0;
        // q1 := AccListQty2.Value + AccListGoodsQty.Value;
        Units.Locate('Num', AccListUnit.Value, []);
        q2 := (AccListStates2.Value * AccListGoodsQty.Value) *
          UnitsStateValue.Value;
        Units.Locate('Num', AccListUnit2.Value, []);
        q3 := (AccListStates2.Value * AccListQty2.Value) *
          UnitsStateValue.Value;
        AccDet.Edit;
        AccDetAccTotal.Value := q2 + q3;
        AccDet.Post;
      end;

      if (AccDetAccType.Value = 12) and not(AccListStates1.IsNull) then
      begin
        q4 := 0;
        q5 := 0;
        // q1 := AccListQty2.Value + AccListGoodsQty.Value;
        if not AccListGoodsQty.IsNull then
        begin
          Units.Locate('Num', AccListUnit.Value, []);
          q4 := (AccListStates1.Value * AccListGoodsQty.Value) *
            UnitsStateValue.Value;
        end;
        if not AccListQty2.IsNull then
        begin
          Units.Locate('UName', AccListUnit2Nm.Value, []);
          q5 := (AccListStates1.Value * AccListQty2.Value) *
            UnitsStateValue.Value;
        end;
        AccDet.Edit;
        // AccDetAccValue.Value :=AccListUnit2.Value;
        AccDetAccTotal.Value := q5 + q4;
        AccDet.Post;
      end;

      { if (AccDetAccType.Value=12) then
        begin
        // q1 := AccListQty2.Value + AccListGoodsQty.Value;
        AccDet.Edit;
        AccDetAccTotal.Value:= AccListDays.Value * MIncomeElecVAlue.Value * q1;
        AccDet.Post;
        end;
      }
      AccDet.Next;
    end; // 2//
  end; // 1//

end; // 0//

procedure TListShFm.sBitBtn18Click(Sender: TObject);
var
  q1, q2, q3, q4, q5, m10, m11, m12: real;
begin // 0
  with DmdFm do
  begin // 1
    Units.Locate('Num', AccListUnit.Value, []);
    q1 := UnitsStateValue.Value;
    Units.Locate('Num', AccListUnit2.Value, []);
    q2 := UnitsStateValue.Value;


    // ...................................................................................

    AccDet.First;
    while not AccDet.Eof do
    begin // 2
      // IIncome.Locate('IncNum',AccDetAccType.Value,[]);
      if (AccDetAccType.Value = 6) then
      begin // 3
        Store.Locate('Num', AccListWeeksNum.Value, []);
        AccDet.Edit;
        if AccListAdmisMet.Value = 3 then
          AccDetAccValue.Value := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          AccDetAccValue.Value := StoreStore.Value;
        if AccListAdmisMet.Value = 1 then
          AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        AccDet.Post;
      end; // 3\\

      // ---------------------------»ﬁ«¡
      if (AccDetAccType.Value = 16) and (AccListUnit.Value = 4) then
      begin
        AccDet.Edit;
        AccDetAccTotal.Value := AccListDaysM.Value * AccListDaysMM.Value *
          AccListGoodsQty.Value;
        AccDet.Post;
        if not(AccDetAccTotal.IsNull) and (AccDetAccTotal.Value <> 0) then
        begin // 30
          AccDet.Edit;
          AccDetFromDate.Value := AccListReshDate.Value;
          AccDetToDate.Value := AccListListDate.Value;
        end // 30//
        else
        begin // 31
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 31//
      end
      else if ((AccDetAccType.Value = 16) and (AccListRemain.Value = 0)) then
      begin // 31
        AccDet.Edit;
        AccDetFromDate.Clear;
        AccDetToDate.Clear;
        AccDetAccValue.Clear;
        AccDetAccTotal.Clear;
      end; // 31//
      // GoodsQty

      if ((AccDetAccType.Value = 22) and (AccListElectric.Value = 1)) then
      begin
        q1 := AccListQty2.Value + AccListGoodsQty.Value;
        AccDet.Edit;
        AccDetAccTotal.Value := AccListDays.Value * MIncomeElecVAlue.Value * q1;
        AccDet.Post;

        if not(AccDetAccTotal.IsNull) and (AccDetAccTotal.Value <> 0) then
        begin // 30
          AccDet.Edit;
          AccDetFromDate.Value := AccListEleeshDate.Value;
          AccDetToDate.Value := AccListListDate.Value;
        end // 30//
        else
        begin // 31
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 31//
      end
      else if ((AccDetAccType.Value = 22) and (AccListElectric.Value = 0)) then
      begin // 31
        AccDet.Edit;
        AccDetFromDate.Clear;
        AccDetToDate.Clear;
        AccDetAccValue.Clear;
        AccDetAccTotal.Clear;
      end; // 31//

      if (AccDetAccType.Value = 9) and not(AccListStates2.IsNull) then
      begin
        q2 := 0;
        q3 := 0;
        // q1 := AccListQty2.Value + AccListGoodsQty.Value;
        Units.Locate('Num', AccListUnit.Value, []);
        q2 := (AccListStates2.Value * AccListGoodsQty.Value) *
          UnitsStateValue.Value;
        Units.Locate('Num', AccListUnit2.Value, []);
        q3 := (AccListStates2.Value * AccListQty2.Value) *
          UnitsStateValue.Value;
        AccDet.Edit;
        AccDetAccTotal.Value := q2 + q3;
        AccDet.Post;
      end;

      if (AccDetAccType.Value = 12) and not(AccListStates1.IsNull) then
      begin
        q4 := 0;
        q5 := 0;
        // q1 := AccListQty2.Value + AccListGoodsQty.Value;
        if not AccListGoodsQty.IsNull then
        begin
          Units.Locate('Num', AccListUnit.Value, []);
          q4 := (AccListStates1.Value * AccListGoodsQty.Value) *
            UnitsStateValue.Value;
        end;
        if not AccListQty2.IsNull then
        begin
          Units.Locate('UName', AccListUnit2Nm.Value, []);
          q5 := (AccListStates1.Value * AccListQty2.Value) *
            UnitsStateValue.Value;
        end;
        AccDet.Edit;
        // AccDetAccValue.Value :=AccListUnit2.Value;
        AccDetAccTotal.Value := q5 + q4;
        AccDet.Post;
      end;

      { ----------------------- «—ÌŒ «· Œ“Ì‰-------------------------- }
      if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value <> 0) then
      begin // 30
        AccDet.Edit;
        AccDetFromDate.Value := AccListArriveDate.Value;
        AccDetToDate.Value := AccListArriveDate.Value +
          ((AccListWeeksNum.Value * 7) - 1);
      end; // 30//
      if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value = 0) then
      begin // 31
        AccDet.Edit;
        AccDetFromDate.Clear;
        AccDetToDate.Clear;
      end; // 31//
      { if (AccDetAccType.Value=12) then
        begin
        // q1 := AccListQty2.Value + AccListGoodsQty.Value;
        AccDet.Edit;
        AccDetAccTotal.Value:= AccListDays.Value * MIncomeElecVAlue.Value * q1;
        AccDet.Post;
        end;
      }
      AccDet.Next;
    end; // 2//
  end; // 1//

end; // 0//

procedure TListShFm.sBitBtn13Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    Income.First;
    while not Income.Eof do
    begin
      AccDet.Insert;
      accdetAccNum.Value := AccListListNum.Value;
      accdetListType.Value := AccListListType.Value;
      AccDetAccType.Value := IncomeIncNum.Value;
      Income.Next;
    end;
    AccDet.Post;
    AccDet.Refresh;
  end;
  sBitBtn18Click(Sender);
end;

procedure TListShFm.sBitBtn14Click(Sender: TObject);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  DmdFm.AccDet.First;
  while not DmdFm.AccDet.Eof do
    DmdFm.AccDet.Delete;

end;

procedure TListShFm.BitBtn13Click(Sender: TObject);
begin

  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\AcListYadoy.fr3');

  if DmdFm.AccListSapa.Value = 2 then
    frxReport1.Variables.Variables['ASD'] := ''' ’⁄»…'''
  else
    frxReport1.Variables.Variables['ASD'] := ''' ''';

  if DmdFm.AccListAttTo.IsNull then
    frxReport1.Variables.Variables['ASD1'] := ''' '''
  else
    frxReport1.Variables.Variables['ASD1'] := '''„·Õﬁ ··›« Ê—… ' +
      DmdFm.AccListAttTo.Value + '''';

  frxReport1.Variables.Variables['ASDM'] := '''«’· ··“»Ê‰''';

  frxReport1.ShowReport(True);
  // RepFm.Free;
end;

procedure TListShFm.FormShow(Sender: TObject);
begin
  ListShFm.BitBtn1.SetFocus;
end;

procedure TListShFm.sBitBtn1Click(Sender: TObject);
var
  pr1, pr2: string;
  sss: integer;
  w1,  t, S1: string;
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

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\reports\AcListYadoy.fr3');

    if DmdFm.AccListSapa.Value = 2 then
      frxReport1.Variables.Variables['ASD'] := ''' ’⁄»…'''
    else
      frxReport1.Variables.Variables['ASD'] := ''' ''';

    if DmdFm.AccListAttTo.IsNull then
      frxReport1.Variables.Variables['ASD1'] := ''' '''
    else
      frxReport1.Variables.Variables['ASD1'] := '''„·Õﬁ ··›« Ê—… ' +
        DmdFm.AccListAttTo.Value + '''';

    frxReport1.PrintOptions.Printer := pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''«’· ··“»Ê‰''';
    frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    frxReport1.Print;

    frxReport1.PrintOptions.Printer := pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''’Ê—… ··“»Ê‰''';
    frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    frxReport1.Print;

    frxReport1.PrintOptions.Printer := pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);
    // RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''··Œ“Ì‰…''';
    frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    frxReport1.Print;

    frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);
    /// RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''··Õ”«»« ''';
    frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    frxReport1.Print;

    frxReport1.PrintOptions.ShowDialog := false;
    // RepFm.frxReport1.ShowReport(True);
    // RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''··Õ›Ÿ''';
    frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    frxReport1.Print;

  end;
end;

end.
