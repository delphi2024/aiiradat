unit CarryUn;

interface

uses
  {Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sTooledit, Grids,
    DBGrids, Buttons, sBitBtn, ComCtrls,dateutils, DB, MemDS, DBAccess, Uni,
    sEdit, ExtCtrls,ExtDlgs,menus,DBCtrls;}

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, Mask, ExtCtrls, DBActns,
  ActnList, db, ComCtrls, jpeg, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseShape, LMDShapeControl, ExtDlgs, ADODB, Menus,
  MemDS, DBAccess, Uni, sEdit, sBitBtn, dateutils, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh,     sComboBoxes,  sSpinEdit,
  sComboBox,    inifiles,
  acProgressBar,  sPanel, sLabel, frxClass, sPageControl, LMDPopupMenu,
  System.ImageList, Vcl.ImgList, acAlphaImageList;

type
  TCarryFm = class(TForm)
    Label1: TLabel;
    sBitBtn1: TsBitBtn;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    UpdatePaid: TUniQuery;
    sBitBtn2: TsBitBtn;
    sEdit1: TsEdit;
    sBitBtn3: TsBitBtn;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    sBitBtn4: TsBitBtn;
    Label5: TLabel;
    DateTimePicker3: TDateTimePicker;
    Label6: TLabel;
    sBitBtn5: TsBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    UpdatePaid2: TUniQuery;
    Update_Attach: TUniQuery;
    DBGridEh1: TDBGridEh;
    procedure sBitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sBitBtn4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sBitBtn5Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarryFm: TCarryFm;
  Net, total, AttTotal, AttNet: real;

implementation

uses
  DmdUm, AcListUn, Dmd2Un, ViewUn;

{$R *.dfm}

procedure TCarryFm.sBitBtn1Click(Sender: TObject);
begin
  with Dmd2Fm do
  begin
    { ------------›Ê« Ì— «·‰ﬁœÌ---- }
   // sAccList.FilterSQL := '';
    SAttach.FilterSQL := '';
    if MonOrCurr = 1 then
    begin
       AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=1;
       AccListq.ParamByName('Listtype2').Value:=4;
       AccListq.ParamByName('Listtype3').Value:=6;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker1.Date;
       AcclistQ.Open;

     // sAccList.FilterSQL :=
      //  '(ListType=1 or ListType=4 or ListType=6) and archiveF=1 and loukof=1 and DateTop = '
      //  + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime));
      SAttach.FilterSQL :=
        '(AccType=1 or AccType=4 or AccType=6)  and LockF=1 and attachdate = ' +
        QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime))
    end
    else if MonOrCurr = 2 then { Ã«—Ì }
    begin
     // sAccList.FilterSQL :=
     //   '(ListType=2 or ListType=5 or ListType=7) and archiveF=1 and loukof=1 and DateTop >= '
      //  + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
     //   ' and DateTop <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
     //   DateTimePicker3.DateTime));
          AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=2;
       AccListq.ParamByName('Listtype2').Value:=5;
       AccListq.ParamByName('Listtype3').Value:=7;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker3.Date;
       AcclistQ.Open ;
      SAttach.FilterSQL :=
        '(AccType=2 or AccType=5 or AccType=7)  and LockF=1 and attachdate >= ' +
        QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
        ' and attachdate <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
         DateTimePicker3.DateTime));
    end
    else if MonOrCurr = 3 then
    begin
     // sAccList.FilterSQL :=
     //   '(ListType=8 or ListType=9) and archiveF=1 and loukof=1 and DateTop >= ' +
     //   QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
     //   ' and DateTop <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
     //   DateTimePicker3.DateTime));
          AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=8;
       AccListq.ParamByName('Listtype2').Value:=9;
       AccListq.ParamByName('Listtype3').Value:=9;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker3.Date;
       AcclistQ.Open ;

      SAttach.FilterSQL := '(AccType=8 or acctype=9)  and LockF=1 and attachdate>= ' +
        QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime))+
        ' and attachdate <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
        DateTimePicker3.DateTime));
    end;
    total := 0;
      Net := 0;
    if AccListQ.RecordCount > 0 then
    begin
      AccListQ.DisableControls;
      Dmd2Fm.AccListQ.First;
      while not AccListQ.Eof do
      begin
        Net := Net + Dmd2Fm.AccListQNet.Value;
        Dmd2Fm.AccListQ.Next;
      end;
      AccListQ.EnableControls;

      Label5.Caption := '⁄œœ «·›Ê« Ì— : ' + IntToStr(AccListQ.RecordCount);
    end
    else
    begin
      Label5.Caption := '⁄œœ «·›Ê« Ì— : 0';
      ShowMessage('·«  ÊÃœ »Ì«‰«  √Ê «·ÌÊ„Ì… „ﬁ›·…');
    end;

    { «·„·«Õﬁ }
       AttTotal := 0;
      AttNet := 0;
    if (SAttach.RecordCount > 0) {and (MonOrCurr <> 3)} then
    begin

      SAttach.DisableControls;
      Dmd2Fm.SAttach.First;
      while not SAttach.Eof do
      begin
        AttNet := AttNet + Dmd2Fm.SAttachNet.Value;
        Dmd2Fm.SAttach.Next;
      end;
      SAttach.EnableControls;

      Label8.Caption := '⁄œœ «·„·«Õﬁ : ' + IntToStr(SAttach.RecordCount);
    end
    else
    begin
      Label8.Caption := '⁄œœ «·„·«Õﬁ : 0';
    end;
    if Net + AttNet <> 0 then
      Label7.Caption := '≈Ã„«·Ì «·›Ê« Ì— : ' + FormatFloat('0,0.000',
        Net + AttNet)
    else
      Label7.Caption := '≈Ã„«·Ì «·›Ê« Ì— : 0';

  end;
end;

procedure TCarryFm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{
  if (((Column.Field = Dmd2Fm.SAccListListNum) or
    (Column.Field = Dmd2Fm.SAccListTypeNm) or
    (Column.Field = Dmd2Fm.SAccListPaidNm)) and (Dmd2Fm.SAccListPaidF.Value = 0))
  then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
  end
  else if gdselected in State then
    DBGrid1.Canvas.Font.Color := clHighlightText
  else
    DBGrid1.Canvas.Font.Color := Column.Font.Color;

  DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, Column.Field.DisplayText);
  }
end;

procedure TCarryFm.DBGrid1DblClick(Sender: TObject);
begin
  if Dmd2Fm.AccListQloukof.Value = 0 then
    raise Exception.Create(' „ «ﬁ›«· ÌÊ„Ì… ﬁ«∆„… «·Õ”«»');
  Dmd2Fm.AccListQ.Edit;
  if Dmd2Fm.AccListQPaidF.Value = 0 then
    Dmd2Fm.AccListQPaidF.Value := 1
  else
    Dmd2Fm.AccListQPaidF.Value := 0;
  Dmd2Fm.AccListQ.Post;

end;

procedure TCarryFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // DmdFm.AccList.Refresh;
  // DmdFm.AccList.Last;

end;

procedure TCarryFm.FormActivate(Sender: TObject);
begin
  Dmd2Fm.SAttach.Active := True;
  
  DateTimePicker1.Date :=Date;
  DateTimePicker2.Date :=Date + 1;
  DateTimePicker3.Date :=Date;

  case DayOfTheWeek(DateTimePicker2.Date) of
    4:
      Label3.Caption := '«·Œ„Ì”';
    5:
      Label3.Caption := '«·Ã„⁄…';
    6:
      Label3.Caption := '«·”» ';
    7:
      Label3.Caption := '«·√Õœ';
    1:
      Label3.Caption := '«·«À‰Ì‰';
    2:
      Label3.Caption := '«·À·«À«¡';
    3:
      Label3.Caption := '«·√—»⁄«¡';
  end;

  with Dmd2Fm do
  begin
   // sAccList.FilterSQL := '';
    if MonOrCurr = 1 then
    begin
  //    sAccList.FilterSQL :=
   //     '(ListType=1 or ListType=4 or ListType=6) and archiveF=1 and loukof=1 and DateTop = '
   //     + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime))
        AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=1;
       AccListq.ParamByName('Listtype2').Value:=4;
       AccListq.ParamByName('Listtype3').Value:=6;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker1.Date;
       AcclistQ.Open ;
    end
    else if MonOrCurr = 2 then
    begin
    //  sAccList.FilterSQL :=
    //    'ListType=2 or ListType=5 or ListType=7 and loukof=1 and  ArchiveF = 1 and loukof=1'
         AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=2;
       AccListq.ParamByName('Listtype2').Value:=5;
       AccListq.ParamByName('Listtype3').Value:=7;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker3.Date;
       AcclistQ.Open ;
    end
    else if MonOrCurr = 3 then
    begin
     // sAccList.FilterSQL :=
     //   '(ListType=3) and archiveF=1 and loukof=1 and DateTop >= ' +
     //   QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
     //   ' and DateTop <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
     //   DateTimePicker3.DateTime));
         AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=8;
       AccListq.ParamByName('Listtype2').Value:=9;
       AccListq.ParamByName('Listtype3').Value:=9;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker3.Date;
       AcclistQ.Open ;
    end;

    Label5.Caption := '⁄œœ «·›Ê« Ì— : ' + IntToStr(AccListq.RecordCount);

  end;

end;

procedure TCarryFm.DateTimePicker2Change(Sender: TObject);
begin
  case DayOfTheWeek(DateTimePicker2.Date) of
    4:
      Label3.Caption := '«·Œ„Ì”';
    5:
      Label3.Caption := '«·Ã„⁄…';
    6:
      Label3.Caption := '«·”» ';
    7:
      Label3.Caption := '«·√Õœ';
    1:
      Label3.Caption := '«·«À‰Ì‰';
    2:
      Label3.Caption := '«·À·«À«¡';
    3:
      Label3.Caption := '«·√—»⁄«¡';
  end;

end;

procedure TCarryFm.sBitBtn2Click(Sender: TObject);
begin
  with Dmd2Fm do
  begin
    sAccList.FilterSQL := '';
    if MonOrCurr = 1 then
      sAccList.FilterSQL :=
        'ListType=1 or listtype=4 or listtype=6 and archiveF = 1 and loukof=1'
    else if MonOrCurr = 2 then
      sAccList.FilterSQL :=
        'ListType=2 or listtype=5 or listtype=7 and archiveF = 1 and loukof=1'
    else if MonOrCurr = 3 then
      sAccList.FilterSQL := 'ListType=3 and archiveF = 1 and loukof=1';

    Label5.Caption := '⁄œœ «·›Ê« Ì— : ' + IntToStr(sAccList.RecordCount);

  end;

end;

procedure TCarryFm.sBitBtn3Click(Sender: TObject);
begin
  if Dmd2Fm.sAccList.Locate('ListNum', sEdit1.Text, []) then

  else
    ShowMessage('—ﬁ„ «·›« Ê—… €Ì— „ÊÃÊœ ÷„‰ «·ﬁ«∆„… ');
end;

procedure TCarryFm.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if Dmd2Fm.AccListQ.Locate('ListNum', sEdit1.Text, []) then
    begin
      DBGridEh1.SetFocus;
    end
    else
      ShowMessage('—ﬁ„ «·›« Ê—… €Ì— „ÊÃÊœ ÷„‰ «·ﬁ«∆„… ');
  end;
end;

procedure TCarryFm.sBitBtn4Click(Sender: TObject);
begin
  Dmd2Fm.DailyQ.Close;
  Dmd2Fm.DailyQ.ParamByName('FromDate').Value := DateTimePicker2.Date;
  Dmd2Fm.DailyQ.ParamByName('ToDate').Value := DateTimePicker2.Date;
  Dmd2Fm.DailyQ.Open;

  if Dmd2Fm.DailyQ.RecordCount > 0 then
    raise Exception.Create('·«Ì„ﬂ‰ﬂ «· —ÕÌ· ... «·ÌÊ„Ì… „ﬁ›·…');

  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  with Dmd2Fm do
  begin
    { ------------›Ê« Ì— «·‰ﬁœÌ---- }
   // sAccList.FilterSQL := '';
    if MonOrCurr = 1 then
    begin
      UpdatePaid.Close;
      UpdatePaid.ParamByName('Fromdate').Value := DateTimePicker2.Date;
      UpdatePaid.ParamByName('DateTop1').Value := DateTimePicker1.Date;
      UpdatePaid.ParamByName('DateTop2').Value := DateTimePicker1.Date;
      UpdatePaid.ParamByName('Type1').Value := 1;
      UpdatePaid.ParamByName('Type2').Value := 4;
      UpdatePaid.ParamByName('Type3').Value := 6;
      UpdatePaid.ExecSQL;
      Label2.Caption := ' —ÕÌ· «·›Ê« Ì— «·€Ì— „”œœ… ≈·Ï ÌÊ„';
    //  sAccList.FilterSQL :=
   //    '(ListType=1 or ListType=4 or ListType=6) and archiveF=1 and loukof=1 and DateTop = '
     //   + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) ;
         AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=1;
       AccListq.ParamByName('Listtype2').Value:=4;
       AccListq.ParamByName('Listtype3').Value:=6;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker1.Date;
       AcclistQ.Open ;
  { ------------„·Õﬁ «·‰ﬁœÌ---- }
      Update_Attach.Close;
      Update_Attach.ParamByName('Fromdate').Value := DateTimePicker2.Date;
      Update_Attach.ParamByName('DateTop1').Value := DateTimePicker1.Date;
      Update_Attach.ParamByName('DateTop2').Value := DateTimePicker1.Date;
      Update_Attach.ParamByName('Type1').Value := 1;
      Update_Attach.ParamByName('Type2').Value := 4;
      Update_Attach.ParamByName('Type3').Value := 6;
      Update_Attach.ExecSQL;

      SAttach.FilterSQL :=
        '(AccType=1 or AccType=4 or AccType=6) and  lockf=1 and attachdate = '
        + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime))
    end
    else
      { ------------›Ê« Ì— «·Ã«—Ì---- }
      if MonOrCurr = 2 then
      begin
        UpdatePaid.Close;
        UpdatePaid.ParamByName('Fromdate').Value := DateTimePicker2.Date;
        UpdatePaid.ParamByName('DateTop1').Value := DateTimePicker1.Date;
        UpdatePaid.ParamByName('DateTop2').Value := DateTimePicker3.Date;
        UpdatePaid.ParamByName('Type1').Value := 2;
        UpdatePaid.ParamByName('Type2').Value := 5;
        UpdatePaid.ParamByName('Type3').Value := 7;
        UpdatePaid.ExecSQL;
        Label2.Caption := ' —ÕÌ· «·›Ê« Ì— «·€Ì— „”œœ… ≈·Ï ÌÊ„';

       // sAccList.FilterSQL :=
       //   '(ListType=2 or ListType=5 or ListType=7) and archiveF=1 and loukof=1 and DateTop >= '
       //   + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
       //   ' and DateTop <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
      //    DateTimePicker3.DateTime))  ;
          AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=2;
       AccListq.ParamByName('Listtype2').Value:=5;
       AccListq.ParamByName('Listtype3').Value:=7;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker3.Date;
       AcclistQ.Open ;
          { ------------„·Õﬁ Ã«—Ì---- }
      Update_Attach.Close;
      Update_Attach.ParamByName('Fromdate').Value := DateTimePicker2.Date;
      Update_Attach.ParamByName('DateTop1').Value := DateTimePicker1.Date;
      Update_Attach.ParamByName('DateTop2').Value := DateTimePicker3.Date;
      Update_Attach.ParamByName('Type1').Value := 2;
      Update_Attach.ParamByName('Type2').Value := 5;
      Update_Attach.ParamByName('Type3').Value := 7;
      Update_Attach.ExecSQL;

           SAttach.FilterSQL :=
          '(accType=2 or accType=5 or accType=7) and  lockf=1 and attachdate >= '
          + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
          ' and attachdate <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
          DateTimePicker3.DateTime))  ;
      end
      else
        { ------------›Ê« Ì— „œÌ‰Ê‰---- }
        if MonOrCurr = 3 then
        begin
          UpdatePaid2.Close;
          UpdatePaid2.ParamByName('Fromdate').Value := DateTimePicker2.Date;
          UpdatePaid2.ParamByName('DateTop1').Value := DateTimePicker1.Date;
          UpdatePaid2.ParamByName('DateTop2').Value := DateTimePicker3.Date;
          UpdatePaid2.ParamByName('Type1').Value := 8;
          UpdatePaid2.ParamByName('Type2').Value := 9;
          UpdatePaid2.ParamByName('Type3').Value :=9;
          UpdatePaid2.ExecSQL;
          Label2.Caption := ' —ÕÌ· «·›Ê« Ì— «·„”œœ… ≈·Ï ÌÊ„ ';

         // sAccList.FilterSQL :=
         //   '(ListType=8 or ListType=9) and archiveF=1 and loukof=1 and DateTop >= ' +
         //   QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
         //   ' and DateTop <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
        //    DateTimePicker3.DateTime))  ;
            AcclistQ.Close;
       AccListq.ParamByName('Listtype1').Value:=8;
       AccListq.ParamByName('Listtype2').Value:=9;
       AccListq.ParamByName('Listtype3').Value:=9;
       AccListq.ParamByName('FromDate').Value:=DateTimePicker1.Date;
       AccListq.ParamByName('ToDate').Value:=DateTimePicker3.Date;
       AcclistQ.Open ;
                 { ------------„·Õﬁ „œÌ‰Ê‰---- }
      Update_Attach.Close;
      Update_Attach.ParamByName('Fromdate').Value := DateTimePicker2.Date;
      Update_Attach.ParamByName('DateTop1').Value := DateTimePicker1.Date;
      Update_Attach.ParamByName('DateTop2').Value := DateTimePicker3
      .Date;
      Update_Attach.ParamByName('Type1').Value := 8;
      Update_Attach.ParamByName('Type2').Value := 9;
      Update_Attach.ParamByName('Type3').Value := 9;
      Update_Attach.ExecSQL;

           SAttach.FilterSQL :=
          '(accType=8 or accType=9 or accType=9) and  lockf=1 and attachdate >= '
          + QuotedStr(FormatDateTime('yyyy-mm-dd', DateTimePicker1.DateTime)) +
          ' and attachdate <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
          DateTimePicker3.DateTime))  ;
        end;

    if AccListQ.RecordCount > 0 then
      Label5.Caption := '⁄œœ «·›Ê« Ì— : ' + IntToStr(AccListQ.RecordCount);

  end;

end;

procedure TCarryFm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f3 then
    sEdit1.SetFocus;

end;

procedure TCarryFm.DBGridEh1DblClick(Sender: TObject);
begin
  if Dmd2Fm.AccListQloukof.Value = 0 then
    raise Exception.Create(' „ «ﬁ›«· ÌÊ„Ì… ﬁ«∆„… «·Õ”«»');
  Dmd2Fm.AccListQ.Edit;
  if Dmd2Fm.AccListQPaidF.Value = 0 then
    Dmd2Fm.AccListQPaidF.Value := 1
  else
    Dmd2Fm.AccListQPaidF.Value := 0;
  Dmd2Fm.AccListQ.Post;
end;

procedure TCarryFm.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
 if (((Column.Field = Dmd2Fm.AcclistQlistnum) or
    (Column.Field = Dmd2Fm.AcclistQPaidNm) or
    (Column.Field = Dmd2Fm.AcclistQTypeNm)) AND (Dmd2Fm.AcclistQPaidF.Value = 0))
  then
  begin
    DBGridEh1.Canvas.Font.Color := clred;
    DBGridEh1.Canvas.Font.Color := clred;
    DBGridEh1.Canvas.Font.Color := clred;
  end
  else if gdselected in State then
    DBGridEh1.Canvas.Font.Color := clHighlightText
  else
    DBGridEh1.Canvas.Font.Color := Column.Font.Color;

  DBGridEh1.Canvas.TextRect(Rect, Rect.Left, Rect.Top,
    Column.Field.DisplayText);

end;

procedure TCarryFm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f2 then
  begin
    if Dmd2Fm.AccListQloukof.Value = 0 then
      raise Exception.Create(' „ «ﬁ›«· ÌÊ„Ì… ﬁ«∆„… «·Õ”«»');
    Dmd2Fm.AccListQ.Edit;
    if Dmd2Fm.AccListQPaidF.Value = 0 then
      Dmd2Fm.AccListQPaidF.Value := 1
    else
      Dmd2Fm.AccListQPaidF.Value := 0;
    Dmd2Fm.AccListQ.Post;
  end;
end;

procedure TCarryFm.sBitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TCarryFm.Label8Click(Sender: TObject);
begin
  if Dmd2Fm.SAttach.IsEmpty then
    raise Exception.Create('·«  ÊÃœ „·«Õﬁ');
  Application.CreateForm(TViewFm, ViewFm);
  ViewFm.ShowModal;
  ViewFm.Free;
end;

end.
