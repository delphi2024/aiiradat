unit HatkaUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  acDBGrid, Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ComCtrls, sLabel,
  Vcl.ExtCtrls, sPanel, frxClass, sDBNavigator, Vcl.Mask, Vcl.DBCtrls, sDBEdit,
  sDBText, sDBLookupComboBox, Vcl.Menus, acMagn, sSpeedButton, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, System.ImageList, Vcl.ImgList, acAlphaImageList,
  LMDPopupMenu, sCheckBox, sDBCheckBox;

type
  THatkaFm = class(TForm)
    frxReport1: TfrxReport;
    sPanel2: TsPanel;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    Label1: TLabel;
    Label15: TLabel;
    sDBLookupComboBox1: TsDBLookupComboBox;
    sDBText1: TsDBText;
    Label12: TLabel;
    sPanel5: TsPanel;
    Label2: TLabel;
    DBText7: TDBText;
    sBitBtn14: TsBitBtn;
    sBitBtn15: TsBitBtn;
    DBCheckBox1: TDBCheckBox;
    sBitBtn13: TsBitBtn;
    PopupMenu3: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    sBitBtn8: TsBitBtn;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    sBitBtn9: TsBitBtn;
    sBitBtn1: TsBitBtn;
    DateTimePicker1: TDateTimePicker;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    DateTimePicker2: TDateTimePicker;
    sMagnifier1: TsMagnifier;
    sDBGrid1: TsDBGrid;
    sBitBtn10: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sPanel1: TsPanel;
    Label16: TLabel;
    DBText1: TDBText;
    Label19: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText2: TDBText;
    Label20: TLabel;
    DBText3: TDBText;
    sLabel3: TsLabel;
    sDBText2: TsDBText;
    DBRadioGroup1: TDBRadioGroup;
    DBGridEh1: TDBGridEh;
    DBEdit11: TDBEdit;
    sDBNavigator1: TsDBNavigator;
    ActionManager1: TActionManager;
    Action1: TAction;
    sDBEdit1: TsDBEdit;
    sAlphaImageList1: TsAlphaImageList;
    LMDPopupMenu1: TLMDPopupMenu;
    k1: TMenuItem;
    N10: TMenuItem;
    LMDPopupMenu2: TLMDPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    sDBCheckBox1: TsDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    N16: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N21: TMenuItem;
    N9: TMenuItem;
    sBitBtn2: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1CellClick(Column: TColumn);
    procedure sDBGrid2EditButtonClick(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sDBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sBitBtn10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

    procedure sBitBtn13Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure sBitBtn11Click(Sender: TObject);
    procedure sDBGrid2DblClick(Sender: TObject);
    procedure sDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sDBGrid2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure sSpeedButton8Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Action1Execute(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HatkaFm: THatkaFm;
  x1, y1: Integer;
  SporGen: Smallint;
  bolisa: array [1 .. 100] of string;

var
  num1, num2, num3, num4, num5, num6, num7, num8, Type1, Type2, LeverF,
    EditFlag, NewEfraj: Smallint;

  placeBill: TBookmark;

implementation

{$R *.dfm}

uses DirectDeliveryUn, DmdUm, MainUn, PermUn, SplashUn,
  UFEnterPass, VDateHrakUn, Dervr6Un, Dervr7Un, SrchUn,
  SubSrcUn, AcListUn, AiiradatUn, Attach2Un, Attach3Un, AttachUn, EfrajUn,
  LocalAgantUn, LstDetUn, BillSrUn, ListShUn, ShipUn, SrchShUn, VdateHUn,
  Dmd2Un, AgentUn, AngSerUn, CarryUn, CloseUn, DlyViewU, IncoEnterUn, UnlockUn,
  ViewUn, SearchUn;

procedure THatkaFm.Action1Execute(Sender: TObject);
begin
  Application.CreateForm(TBillSrFm, BillSrFm);
  BillSrFm.ShowModal;
  BillSrFm.Free;
end;

procedure THatkaFm.DBGridEh1CellClick(Column: TColumnEh);
begin
if DmdFm.VloadHrakStopF.Value=1  then
     begin
       DBText7.Visible:=true;
       Label2.Visible:=true;
     end
     else
    begin
       DBText7.Visible:=False;
       Label2.Visible:=False;
     end
end;

procedure THatkaFm.DBGridEh1DblClick(Sender: TObject);
begin
  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
  with DmdFm do
  begin

    DmdFm.LoadCountQ.Close;
    DmdFm.LoadCountQ.ParamByName('Lnum').Value := DmdFm.VloadHrakLNum.Value;
    DmdFm.LoadCountQ.ParamByName('SelectF').Value := 1;
    DmdFm.LoadCountQ.Open;

    if not(DmdFm.VloadHrakBillNum.isnull) then
      LMDPopupMenu2.Popup(HatkaFm.DBGridEh1.Left + sPanel4.Left + x1,
        DBGridEh1.Top + sPanel4.Top + y1)
    else
    begin

      LMDPopupMenu1.Popup(HatkaFm.DBGridEh1.Left + sPanel4.Left + x1,
        DBGridEh1.Top + sPanel4.Top + y1);

      // PopupMenu2.Popup(HatkaFm.DBGridEh1.Left + sPanel4.Left + x1,
      // DBGridEh1.Top + sPanel4.Top + y1);
    end;
  end;
end;

procedure THatkaFm.DBGridEh1EditButtonClick(Sender: TObject);
begin

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
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
      IF (NOT(VDervr6Qty.isnull)) THEN
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

end;

procedure THatkaFm.DBGridEh1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  x1 := X;
  y1 := Y;
end;

procedure THatkaFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // creadmin := 0;
end;

procedure THatkaFm.FormCreate(Sender: TObject);
begin
  // creadmin := 1;
end;

procedure THatkaFm.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := VDateHrakFM.DateTimePicker1.Date;
  DateTimePicker2.Date := VDateHrakFM.DateTimePicker2.Date;

  // if StrToInt(TypeHrak) = 3 then
  // SubSrchFm.ShowModal;
  sDBGrid1.SetFocus;
end;

procedure THatkaFm.k1Click(Sender: TObject);

begin
  EditList := 1;
  NewEfraj := 1;

  if DmdFm.VDateHrakByan_type.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«·‘Õ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‰');

  if DmdFm.VloadHrakTransitF.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  AccType := 1;
   SubType := 1;
    subtype2 := 1;
  // MainFm.sBitBtn13Click(Sender);

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := dmdfm.VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 1;
    AccList.Execute;


    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;

    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=1');
    // AccList.Last;
    // end;

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn4.Visible := True;
    AcListFm.sBitBtn24.Visible := True;

    AcListFm.sBitBtn26.Visible := false;
    AcListFm.sBitBtn28.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;

    AcListFm.sPanel3.Visible := True;
    AcListFm.sPanel4.Visible := false;
    AcListFm.sEdit1.Text := '2';
    AcListFm.sEdit5.Text := '0';
    AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3

    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.Label22.Caption := ' ›—Ì€ ‰ﬁœÌ';
        AngSerFm.ShowModal;
 end;
end;

procedure THatkaFm.MenuItem1Click(Sender: TObject);
begin

  EditFlag := 0;
  with DmdFm do
  begin
    if not(DmdFm.VloadHrakBillNum.isnull) then
    begin
      Inco.FilterSQL := 'IncType=1';
      // AccList.FilterSQL := ('ListType=1');
      // AccList.Last;
      // end;
      if DmdFm.VloadHrakTransitF.Value = 2 then
        raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

      Application.CreateForm(TAcListFm, AcListFm);
      AcListFm.sBitBtn4.Visible := True;
      AcListFm.sBitBtn24.Visible := True;

      AcListFm.sBitBtn26.Visible := false;
      AcListFm.sBitBtn28.Visible := false;
      AcListFm.sBitBtn27.Visible := false;
      AcListFm.sBitBtn29.Visible := false;

      AcListFm.sPanel3.Visible := True;
      AcListFm.sPanel4.Visible := false;

      // AcListFm.Button1.Visible := True;
      AcListFm.Button2.Visible := false;
      AcListFm.DBCheckBox9.Visible := false;


      // 1      DmdFm.SAccList.FilterSQL := '';
      // 1      if DmdFm.SAccList.Locate('ListNum', DmdFm.loadBillNum.Value, []) then
      // 1        AccType := DmdFm.SAccListListType.Value;
      // 1      AccList.FilterSQL := QuotedStr(IntToStr(AccType));
      // 1      DmdFm.AccList.Locate('ListNum', DmdFm.loadBillNum.Value, []);

      AccList.Close;
      AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
      AccList.ParamByName('Vtype').Value := 1;
      AccList.Execute;
      AccType := DmdFm.AccListListType.Value;

      if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 2;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;

      if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 9;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;
         if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 4;  {‘Õ‰ ‰ﬁœÌ „„ ·∆}
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;
         SubType := 7;
      end;
           if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 5;  {‘Õ‰ Ã«—Ì „„ ·∆}
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;
         SubType := 8;
      end;
             if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 8;  {‘Õ‰ „œÌ‰Ê‰ „„ ·∆}
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;
         SubType := 9;
      end;

          Application.CreateForm(TAcListFm, AcListFm);
    if (dmdfm.AccListListType.Value=1)or(AccListListType.Value=2)or(AccListListType.Value=9) then
    begin
      AcListFm.sBitBtn4.Visible := True;
      AcListFm.sBitBtn24.Visible := True;

      AcListFm.sBitBtn26.Visible := false;
      AcListFm.sBitBtn28.Visible := false;
          AcListFm.sEdit1.Text := '0';
      AcListFm.sEdit5.Text := '0';
      AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
    end
    else
    begin
     AcListFm.sBitBtn4.Visible := false;
      AcListFm.sBitBtn24.Visible := False;

      AcListFm.sBitBtn26.Visible := True;
      AcListFm.sBitBtn28.Visible := True;
       AcListFm.sEdit1.Text := '2';
      AcListFm.sEdit5.Text := '0';
      AcListFm.sEdit4.Text := '2'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
    end;
      AcListFm.sBitBtn27.Visible := false;
      AcListFm.sBitBtn29.Visible := false;

      AcListFm.sPanel3.Visible := True;
      AcListFm.sPanel4.Visible := false;

      // AcListFm.Button1.Visible := True;
      AcListFm.Button2.Visible := false;
      AcListFm.DBCheckBox9.Visible := false;


      if not AccList.IsEmpty then
      begin
        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;
      end
      else
        accdet.Close;

//      AcListFm.sEdit1.Text := '0';
//      AcListFm.sEdit5.Text := '0';
//      AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3

      if AccType = 1 then
      begin
        AcListFm.Label22.Caption := ' ›—Ì€ ‰ﬁœÌ';
        Inco.FilterSQL := 'IncType=1'
      end
      else if AccType = 2 then
      begin
        AcListFm.Label22.Caption := ' ›—Ì€ Ã«—Ì';
        Inco.FilterSQL := 'IncType=1';
      end
      else if AccType = 9 then
      begin
        AcListFm.Label22.Caption := ' ›—Ì€ „œÌ‰Ê‰';
        Inco.FilterSQL := 'IncType=1';
      end
        else if AccType = 4 then
      begin
        AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ „„ ·∆';
        Inco.FilterSQL := 'IncType=1';
      end
        else if AccType = 5 then
      begin
        AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì „„ ·∆';
        Inco.FilterSQL := 'IncType=1';
      end
        else if AccType = 8 then
      begin
        AcListFm.Label22.Caption := '‘Õ‰ „œÌ‰Ê‰ „„ ·∆';
        Inco.FilterSQL := 'IncType=1';
      end;

      AcListFm.ShowModal;
      AcListFm.Free;
    end
  end;
end;

procedure THatkaFm.MenuItem2Click(Sender: TObject);
var
  i: Integer;
begin

  with DmdFm do
  begin

    DmdFm.VloadHrak.Refresh;
    if DmdFm.VloadHrakTransitF.Value = 2 then
      raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

    if not(DmdFm.VloadHrakBillNum.isnull) then
    begin

      EditFlag := 1;
      if DmdFm.PermAcList.Value = false then
        raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

      if DmdFm.VloadHrakEnbEdit.Value = 1 then
        raise Exception.Create('ÌÃ» ≈·€«¡  ÕœÌœ  „ﬂÌ‰ «· ⁄œÌ· √Ê·«');
      if DmdFm.VloadHrakEfrajNum.isnull then
        raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

      CountQ.Close;
      CountQ.ParamByName('BillNum').Value := DmdFm.VloadHrakBillNum.Value;
      CountQ.Open;

      if CountQnum.Value > 1 then
        raise Exception.Create('—ﬁ„ «·›« Ê—… „ÊÃÊœ ›Ì √ﬂÀ— „‰ »Ê·Ì’…');

      if DmdFm.VloadHrakStopF.Value = 1 then
        raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

      // 1    MainFm.sBitBtn13Click(Sender);

      Inco.FilterSQL := 'IncType=1';
      // AccList.FilterSQL := ('ListType=1');
      // AccList.Last;
      // end;

      Application.CreateForm(TAcListFm, AcListFm);

      AcListFm.sBitBtn27.Visible := false;
      AcListFm.sBitBtn29.Visible := false;

      AcListFm.sPanel3.Visible := True;
      AcListFm.sPanel4.Visible := false;

      // AcListFm.Button1.Visible := True;
      AcListFm.Button2.Visible := false;
      AcListFm.DBCheckBox9.Visible := false;
      AcListFm.sPanel3.Visible := True;
      AcListFm.sPanel4.Visible := false;

      AcListFm.Button2.Visible := false;
      AcListFm.DBCheckBox9.Visible := false;

      VDervr6.Close;
      VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
      VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
      VDervr6.Execute;

      VDervr7.Close;
      VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
      VDervr7.Execute;

      AccList.Close;
      AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
      AccList.ParamByName('Vtype').Value := 1;
      AccList.Execute;

      AccType := DmdFm.AccListListType.Value;

      if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 2;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;

      if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 9;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;

      if not AccList.IsEmpty then
      begin
        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;
      end;
         if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 4;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;
         if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 5;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;
         if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 8;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;
         if (dmdfm.AccListListType.Value=1)or(dmdfm.AccListListType.Value=2)or(dmdfm.AccListListType.Value=9) then
    begin
      AcListFm.sBitBtn4.Visible := True;
      AcListFm.sBitBtn24.Visible := True;

      AcListFm.sBitBtn26.Visible := false;
      AcListFm.sBitBtn28.Visible := false;
           AcListFm.sEdit1.Text := '0';
      AcListFm.sEdit5.Text := '0';
      AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
    end
    else
    begin
     AcListFm.sBitBtn4.Visible := false;
      AcListFm.sBitBtn24.Visible := False;

      AcListFm.sBitBtn26.Visible := True;
      AcListFm.sBitBtn28.Visible := True;
      AcListFm.sEdit1.Text := '2';
      AcListFm.sEdit5.Text := '0';
      AcListFm.sEdit4.Text := '2'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
    end;
      if AccType = 1 then
      begin
        AcListFm.Label22.Caption := '‰ﬁœÌ';
      end
      else if AccType = 2 then
      begin
        AcListFm.Label22.Caption := 'Ã«—Ì';
      end;

      if AccType = 9 then
      begin
        AcListFm.Label22.Caption := '„œÌ‰Ê‰';
      end;
      if AccType = 4 then
      begin
        AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ „„ ·∆';
      end;
       if AccType = 5 then
      begin
        AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì „„ ·∆';
      end;
       if AccType = 8 then
      begin
        AcListFm.Label22.Caption := '‘Õ‰ „œÌ‰Ê‰ „„ ·∆';
      end;

      // -------------------------------------------
      // with DmdFm do
      // begin

      // raise Exception.Create('Â–« «·»Ê·Ì’… ﬁœ  „ «Õ ”«»Â« ›Ì ›« Ê—… ”«»ﬁ…');

      // --------------------------- «œ—«Ã «·»Ê·Ì’… ›Ì ﬁ«∆„… «·Õ ”«»

      if (DmdFm.VDateHrakTaghez.Value = 1) then
        if (DmdFm.VloadHrakStoreType.Value <> 1) then
          raise Exception.Create('’·Ì ⁄·Ï —”Ê· «··Â ’ﬁ⁄ ⁄·Ìﬂ Ì« Õ»Ê—');

      AccList.Locate('BillNum', DmdFm.VloadHrakBillNum.Value, []);

      if (DmdFm.AccListloukof.Value = 0) and (DmdFm.PermLockList.Value = false)
      then
        raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');

      AccList.edit;
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

       if not DmdFm.VDateHrakArriveDate.isnull then
        AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value //   «·Ê’Ê·
      else
        AccListArriveDate.Value := Date; //   «·Ê’Ê·

      AccListBillNum.Clear;
      // AccListBillNum.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
      // AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value; //   «·Ê’Ê·
      AccListBillNum2.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
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

      // AngSerFm.ShowModal;
      AccList.Post;

      VBollAccList.Close;
      VBollAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VBollAccList.Execute;

      VUnitAccList.Close;
      VUnitAccList.ParamByName('VNum').Value := AccListListNum.Value;
      VUnitAccList.Execute;

      if VBollAccList.IsEmpty then
      begin

        VBollAccList.Insert;
        VBollAccListBollsa.Value := VloadHrakBillloading.Value;
        VBollAccListNumLoad.Value := VloadHrakAuto.Value;
        VBollAccListNumAcc.Value := AccListListNum.Value;
        VBollAccList.Post;

      end
      else
      begin
        VBollAccList.edit;
        VBollAccListBollsa.Value := VloadHrakBillloading.Value;
        VBollAccListNumLoad.Value := VloadHrakAuto.Value;
        VBollAccListNumAcc.Value := AccListListNum.Value;
        VBollAccList.Post;
      end;
      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin
        VUnitAccList.Delete;
      end;
      if VUnitAccList.IsEmpty then
      begin

        if VloadHrakMarks.Value = 7 then
        begin

          QTajmieData.Close;
          QTajmieData.ParamByName('Lnum').Value := dmdfm.VDervr6Num.Value;
          QTajmieData.ParamByName('Auto').Value := dmdfm.VDervr6Lnum.Value;
          QTajmieData.Open;
          QTajmieData.First;

          while not QTajmieData.Eof do
          begin
            VUnitAccList.Insert;
            VUnitAccListAddCount.Value := dmdfm.QTajmieDatatypeHowa1.Value;
            VUnitAccListNumAlist.Value := dmdfm.AccListListNum.Value;
            VUnitAccListNumUnit.Value := dmdfm.QTajmieDataTypeNm.Value;
            VUnitAccListQtityNormal.Value := dmdfm.QTajmieDataEadiatFyus.Value;
            VUnitAccListQtitoyRor.Value := dmdfm.QTajmieDataEadiatLaynar.Value;
            VUnitAccListFwozQ.Value := dmdfm.QTajmieDataRuruFyus.AsInteger;
            VUnitAccListLanerQ.Value := dmdfm.QTajmieDataRuruLaynar.AsInteger;
            VUnitAccListRofaQ.Value := dmdfm.QTajmieDataSLever.AsInteger;
            VUnitAccListNRofaQ.Value := dmdfm.QTajmieDataBLever.AsInteger;
            VUnitAccList.Post;
            QTajmieData.Next;
          end;
        end
        else
        begin

          QLTajmieData.Close;
          QLTajmieData.ParamByName('Num').Value := VloadHrakAuto.Value;
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
                VUnitAccListRofaQ.Value := QLTajmieDataSLever.AsInteger;
                VUnitAccListNRofaQ.Value := QLTajmieDataBLever.AsInteger;
            END
            else
            BEGIN
              VUnitAccListQtityNormal.Value :=dmdfm.QLTajmieDataEadiatFyus.Value;
              VUnitAccListQtitoyRor.Value := QLTajmieDataEadiatLaynar.Value;
              VUnitAccListFwozQ.Value := QLTajmieDataRuruFyus.AsInteger;
              VUnitAccListLanerQ.Value := QLTajmieDataRuruLaynar.AsInteger;
              VUnitAccListRofaQ.Value := QLTajmieDataSLever.AsInteger;
              VUnitAccListNRofaQ.Value := QLTajmieDataBLever.AsInteger;
            END;
            VUnitAccList.Post;
            QLTajmieData.Next;
          end;
        end;
      end;

      AcListFm.ShowModal;
      AcListFm.Free;
    end;

  end;
end;

procedure THatkaFm.N10Click(Sender: TObject);
begin

  EditList := 1;
  NewEfraj := 1;

  if DmdFm.VDateHrakByan_type.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«·‘Õ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‰');

  if DmdFm.VloadHrakTransitF.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  AccType := 9;
   SubType := 3;
    subtype2 := 1;
  // MainFm.sBitBtn13Click(Sender);

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 9;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;
    // end
    // else
    // accdet.Close;

    // end;

    // with DmdFm do
    // begin
    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=1');
    // AccList.Last;
    // end;

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn4.Visible := True;
    AcListFm.sBitBtn24.Visible := True;
    AcListFm.sBitBtn26.Visible := false;
    AcListFm.sBitBtn28.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;

    AcListFm.sPanel3.Visible := True;
    AcListFm.sPanel4.Visible := false;
    AcListFm.sEdit1.Text := '0';
    AcListFm.sEdit5.Text := '0';
    AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.Label22.Caption := ' ›—Ì€ „œÌ‰Ê‰';
           AngSerFm.ShowModal;
  end;
end;

procedure THatkaFm.N17Click(Sender: TObject);
begin
  EditList := 1;
  NewEfraj := 1;

  if DmdFm.VDateHrakByan_type.Value =1 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· ›—Ì€');

  if DmdFm.VloadHrakTransitF.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  AccType :=4;
   SubType := 7;
    SubType2 := 3;
  // MainFm.sBitBtn13Click(Sender);

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 4;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;
    // end
    // else
    // accdet.Close;

    // end;

    // with DmdFm do
    // begin
    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=1');
    // AccList.Last;
    // end;

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn26.Visible := True;
    AcListFm.sBitBtn28.Visible := True;

    AcListFm.sBitBtn4.Visible := false;
    AcListFm.sBitBtn24.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;

    AcListFm.sPanel3.Visible := True;
    AcListFm.sPanel4.Visible := false;
    AcListFm.sEdit1.Text := '2';
    AcListFm.sEdit5.Text := '0';
    AcListFm.sEdit4.Text := '2';// »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3

    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.Label22.Caption := '‘Õ‰ ‰ﬁœÌ';
    // -------------------------------------------
     AngSerFm.ShowModal;
  end;
end;

procedure THatkaFm.N19Click(Sender: TObject);
begin
  EditList := 1;
  NewEfraj := 1;

  if DmdFm.VDateHrakByan_type.Value =1 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· ›—Ì€');

  if DmdFm.VloadHrakTransitF.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  AccType :=5;
   SubType := 8;
    SubType2 := 3;
  // MainFm.sBitBtn13Click(Sender);

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 5;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;
    // end
    // else
    // accdet.Close;

    // end;

    // with DmdFm do
    // begin
    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=1');
    // AccList.Last;
    // end;

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn26.Visible := True;
    AcListFm.sBitBtn28.Visible := True;

    AcListFm.sBitBtn4.Visible := false;
    AcListFm.sBitBtn24.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;

    AcListFm.sPanel3.Visible := True;
    AcListFm.sPanel4.Visible := false;
    AcListFm.sEdit1.Text := '2';
    AcListFm.sEdit5.Text := '0';
    AcListFm.sEdit4.Text := '2'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3

    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.Label22.Caption := '‘Õ‰ Ã«—Ì';
     AngSerFm.ShowModal;
  end;
end;

procedure THatkaFm.N1Click(Sender: TObject);
begin
  EditList := 1;
  NewEfraj := 1;
  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  AccType := 1;
  // MainFm.sBitBtn13Click(Sender);

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 1;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;
    // end
    // else
    // accdet.Close;

    // end;

    // with DmdFm do
    // begin
    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=1');
    // AccList.Last;
    // end;

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn4.Visible := True;
    AcListFm.sBitBtn24.Visible := True;
    AcListFm.sBitBtn26.Visible := false;
    AcListFm.sBitBtn28.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;
    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.Label22.Caption := '‰ﬁœÌ';
    // -------------------------------------------
    // with DmdFm do
    // begin

    // if AcListFm.Edit2.Text = '1' then
    // begin
    // 1    if not (DmdFm.VloadHrakBillNum.isnull) then
    // 1      AccList.Locate('BillNum', DmdFm.VloadHrakBillNum.Value, [])
    // 1    else
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

      AccListBillNum.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
      AccListBillNum2.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
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

      if VloadHrakMarks.Value = 7 then
      begin
        VDervr6.First;
        if VDervr6TypeNm.Value = 1 then
        begin
          AccListGoodsQty.Value := VDervr6Qty.Value;
          AccListUnit.Value := VDervr6TypeNm.Value;
        end
        else if VDervr6TypeNm.Value = 2 then
        begin
          AccListQty2.Value := VDervr6Qty.Value;
          AccListUnit2.Value := VDervr6TypeNm.Value;
        end;
        VDervr6.Next;
        if VDervr6TypeNm.Value = 1 then
        begin
          AccListGoodsQty.Value := VDervr6Qty.Value;
          AccListUnit.Value := VDervr6TypeNm.Value;
        end
        else if VDervr6TypeNm.Value = 2 then
        begin
          AccListQty2.Value := VDervr6Qty.Value;
          AccListUnit2.Value := VDervr6TypeNm.Value;
        end;
      end
      else
      begin
        AccListGoodsQty.Value := VloadHrakQty.Value;
        DmdFm.AccListUnit.Value := DmdFm.VloadHrakMarks.Value;
      end;

      if DmdFm.VDateHrakMixedF.Value = 0 then
      begin
        AccListShipType.Value := DmdFm.VDateHrakShipType.Value;
        AccListShipMet.Value := DmdFm.VDateHrakShipMet.Value;
      end;

      if DmdFm.VDateHrakMixedF.Value = 1 then { ›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ… }
      begin
        num1 := 0;
        num2 := 0;
        num3 := 0;
        num4 := 0;
        num5 := 0;
        num6 := 0;
        num7 := 0;
        num8 := 0;

        LeverF := 0; { Â·  ÊÃœ —Ê«›⁄ √„ ·« }
        if VloadHrakMarks.Value = 7 then
        begin

          Type1 := VDervr6TypeNm.Value;
          Type2 := VDervr6TypeNm.Value;
          VDervr6.First;
          while not VDervr6.Eof do
          begin
            Type1 := VDervr6TypeNm.Value;
            // VDervr6.Close;
            // VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
            // VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
            // VDervr6.Execute;

            VDervr7.Close;
            VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
            VDervr7.Execute;
            VDervr7.First;
            while not VDervr7.Eof do
            begin
              if Type1 <> Type2 then
              begin
                if VDervr7shipType.Value = 1 then
                  num1 := num1 + 1
                else if VDervr7shipType.Value = 2 then
                  num2 := num2 + 1;
              end
              else if VDervr7shipType.Value = 1 then
                num5 := num5 + 1
              else if VDervr7shipType.Value = 2 then
                num6 := num6 + 1;

              if Type1 <> Type2 then
              begin
                if VDervr7shipMet.Value = 0 then
                  num3 := num3 + 1
                else if VDervr7shipMet.Value = 1 then
                  num4 := num4 + 1;
              end
              else
              begin
                if VDervr7shipMet.Value = 0 then
                  num7 := num7 + 1
                else if VDervr7shipMet.Value = 1 then
                  num8 := num8 + 1;
              end;
              if VDervr7Lever.Value = 1 then
                LeverF := 1;
              VDervr7.Next;
            end;
            VDervr6.Next;
            VDervr7.Close;
            VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
            VDervr7.Execute;
          end;
        end
        else { ·«  ”«ÊÌ 7 }
        begin
          VDervr7.Close;
          VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
          VDervr7.Execute;
          VDervr7.First;
          while not VDervr7.Eof do
          begin
            if VDervr7shipType.Value = 1 then
              num1 := num1 + 1
            else if VDervr7shipType.Value = 2 then
              num2 := num2 + 1;

            if VDervr7shipMet.Value = 0 then
              num3 := num3 + 1
            else if VDervr7shipMet.Value = 1 then
              num4 := num4 + 1;

            if VDervr7Lever.Value = 1 then
              LeverF := 1;

            VDervr7.Next;
          end;
        end;
        VDervr6.First;
        if DmdFm.VDervr6TypeNm.Value = 1 then { «·‰Ê⁄ «·√Ê· Õ«ÊÌ… 20 }
        begin
          AccListNum1.Value := num1;
          AccListNum2.Value := num2;
          AccListNum3.Value := num3;
          AccListNum4.Value := num4;
          AccListNum5.Value := num5;
          AccListNum6.Value := num6;
          AccListNum7.Value := num7;
          AccListNum8.Value := num8;
        end
        else if VDervr6TypeNm.Value = 2 then
        begin
          AccListNum1.Value := num5;
          AccListNum2.Value := num6;
          AccListNum3.Value := num7;
          AccListNum4.Value := num8;
          AccListNum5.Value := num1;
          AccListNum6.Value := num2;
          AccListNum7.Value := num3;
          AccListNum8.Value := num4;
        end
        else
        begin
          AccListNum1.Value := num1;
          AccListNum2.Value := num2;
          AccListNum3.Value := num3;
          AccListNum4.Value := num4;
          AccListNum5.Value := num5;
          AccListNum6.Value := num6;
          AccListNum7.Value := num7;
          AccListNum8.Value := num8;
        end;

        if LeverF = 1 then
          AccListRoafe.Value := 1;

        if (AccListNum1.Value = 0) and (AccListNum5.Value = 0) then
          AccListShipType.Value := 2
        else if (AccListNum2.Value = 0) and (AccListNum6.Value = 0) then
          AccListShipType.Value := 1
        else
          AccListShipType.Value := 3;

        if (AccListNum3.Value = 0) and (AccListNum7.Value = 0) then
          AccListShipMet.Value := 1
        else if (AccListNum4.Value = 0) and (AccListNum8.Value = 0) then
          AccListShipMet.Value := 0;
      end;
    end;
  end; { «·—ﬁ„ €Ì— „ÊÃÊœ }
  AcListFm.ShowModal;
  AcListFm.Free;

end;

procedure THatkaFm.N21Click(Sender: TObject);
begin
   EditList := 1;
  NewEfraj := 1;

  if DmdFm.VDateHrakByan_type.Value =1 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· ›—Ì€');

  if DmdFm.VloadHrakTransitF.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  AccType :=8;
   SubType := 9;
    SubType2 := 3;
  // MainFm.sBitBtn13Click(Sender);

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value :=9;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;
    // end
    // else
    // accdet.Close;

    // end;

    // with DmdFm do
    // begin
    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=1');
    // AccList.Last;
    // end;

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn26.Visible := True;
    AcListFm.sBitBtn28.Visible := True;

    AcListFm.sBitBtn4.Visible := false;
    AcListFm.sBitBtn24.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;

    AcListFm.sPanel3.Visible := True;
    AcListFm.sPanel4.Visible := false;
    AcListFm.sEdit1.Text := '2' ;
    AcListFm.sEdit5.Text := '0';
    AcListFm.sEdit4.Text := '2'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3

    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.Label22.Caption := '‘Õ‰ „œÌ‰Ê‰';
     AngSerFm.ShowModal;
  end;

end;

procedure THatkaFm.N2Click(Sender: TObject);
begin
  EditList := 1;
  NewEfraj := 1;
  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
  AccType := 2;

  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if (DmdFm.VDateHrakTaghez.Value = 1) then
    if (DmdFm.VloadHrakStoreType.Value <> 1) then
      raise Exception.Create('’·Ì ⁄·Ï —”Ê· «··Â ’ﬁ⁄ ⁄·Ìﬂ Ì« Õ»Ê—');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  // 1  MainFm.sBitBtn13Click(Sender);
  with DmdFm do
  begin
    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 2;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;

    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=2');
    // AccList.Last;

    // end;
    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn4.Visible := True;
    AcListFm.sBitBtn24.Visible := True;
    AcListFm.sBitBtn26.Visible := false;
    AcListFm.sBitBtn28.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;
    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    /// AcListFm.sBitBtn4.SetFocus;
    AcListFm.Label22.Caption := 'Ã«—Ì';
    // -------------------------------------------
    // with DmdFm do
    // begin

    // if AcListFm.Edit2.Text = '1' then
    // begin
    // if not(DmdFm.loadBillNum.isnull) then
    // raise Exception.Create('Â–« «·»Ê·Ì’… ﬁœ  „ «Õ ”«»Â« ›Ì ›« Ê—… ”«»ﬁ…');

    // --------------------------- «œ—«Ã «·»Ê·Ì’… ›Ì ﬁ«∆„… «·Õ ”«»

    AccList.Insert;
    AccListNumT.Value := VloadHrakAuto.Value;
    AccListShipNum.Value := DmdFm.VDateHrakTransNUm.Value;
    AccListToName.Value := VloadHrakSend.Value; // «·„—”·… ≈·ÌÂ
    AccListGoodsname.Value := VloadHrakGoodsname.Value; // Ê’› «·»÷«⁄…

    if VloadHrakKias.Value < 1 then
      AccListWeSpace.Value := 1 // «·ﬁÌ«”
    else
      AccListWeSpace.Value := VloadHrakKias.Value; // «·ﬁÌ«”

    AccListWight.Value := VloadHrakWeight.Value; // «·Ê“‰
    if not DmdFm.VDateHrakEndDate.isnull then
      AccListEndEmpDate.Value := DmdFm.VDateHrakEndDate.Value //   «· ›—Ì€
    else
      AccListEndEmpDate.Value := Date; //   «· ›—Ì€

    AccListBillNum.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
    AccListBillNum2.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
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

    if VloadHrakMarks.Value = 7 then
    begin
      VDervr6.First;
      if VDervr6TypeNm.Value = 1 then
      begin
        AccListGoodsQty.Value := VDervr6Qty.Value;
        AccListUnit.Value := VDervr6TypeNm.Value;
      end
      else if VDervr6TypeNm.Value = 2 then
      begin
        AccListQty2.Value := VDervr6Qty.Value;
        AccListUnit2.Value := VDervr6TypeNm.Value;
      end;
      VDervr6.Next;
      if VDervr6TypeNm.Value = 1 then
      begin
        AccListGoodsQty.Value := VDervr6Qty.Value;
        AccListUnit.Value := VDervr6TypeNm.Value;
      end
      else if VDervr6TypeNm.Value = 2 then
      begin
        AccListQty2.Value := VDervr6Qty.Value;
        AccListUnit2.Value := VDervr6TypeNm.Value;
      end;
    end
    else
    begin
      AccListGoodsQty.Value := VloadHrakQty.Value;
      DmdFm.AccListUnit.Value := DmdFm.VloadHrakMarks.Value;
    end;

    if DmdFm.VDateHrakMixedF.Value = 0 then
    begin
      AccListShipType.Value := DmdFm.VDateHrakShipType.Value;
      AccListShipMet.Value := DmdFm.VDateHrakShipMet.Value;
    end;

    if DmdFm.VDateHrakMixedF.Value = 1 then { ›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ… }
    begin
      num1 := 0;
      num2 := 0;
      num3 := 0;
      num4 := 0;
      num5 := 0;
      num6 := 0;
      num7 := 0;
      num8 := 0;

      LeverF := 0; { Â·  ÊÃœ —Ê«›⁄ √„ ·« }
      if VloadHrakMarks.Value = 7 then
      begin

        Type1 := VDervr6TypeNm.Value;
        Type2 := VDervr6TypeNm.Value;
        VDervr6.First;
        while not VDervr6.Eof do
        begin
          Type1 := VDervr6TypeNm.Value;
          VDervr7.Close;
          VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
          VDervr7.Execute;
          VDervr7.First;
          while not VDervr7.Eof do
          begin
            if Type1 <> Type2 then
            begin
              if VDervr7shipType.Value = 1 then
                num1 := num1 + 1
              else if VDervr7shipType.Value = 2 then
                num2 := num2 + 1;
            end
            else if VDervr7shipType.Value = 1 then
              num5 := num5 + 1
            else if VDervr7shipType.Value = 2 then
              num6 := num6 + 1;

            if Type1 <> Type2 then
            begin
              if VDervr7shipMet.Value = 0 then
                num3 := num3 + 1
              else if VDervr7shipMet.Value = 1 then
                num4 := num4 + 1;
            end
            else
            begin
              if VDervr7shipMet.Value = 0 then
                num7 := num7 + 1
              else if VDervr7shipMet.Value = 1 then
                num8 := num8 + 1;
            end;
            if VDervr7Lever.Value = 1 then
              LeverF := 1;
            VDervr7.Next;
          end;
          VDervr6.Next;
          VDervr7.Close;
          VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
          VDervr7.Execute;
        end;
      end
      else { ·«  ”«ÊÌ 7 }
      begin
        VDervr7.Close;
        VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
        VDervr7.Execute;
        VDervr7.First;
        while not VDervr7.Eof do
        begin
          if VDervr7shipType.Value = 1 then
            num1 := num1 + 1
          else if VDervr7shipType.Value = 2 then
            num2 := num2 + 1;

          if VDervr7shipMet.Value = 0 then
            num3 := num3 + 1
          else if VDervr7shipMet.Value = 1 then
            num4 := num4 + 1;

          if VDervr7Lever.Value = 1 then
            LeverF := 1;

          VDervr7.Next;
        end;
      end;
      VDervr6.First;

      if DmdFm.VDervr6TypeNm.Value = 1 then { «·‰Ê⁄ «·√Ê· Õ«ÊÌ… 20 }
      begin
        AccListNum1.Value := num1;
        AccListNum2.Value := num2;
        AccListNum3.Value := num3;
        AccListNum4.Value := num4;
        AccListNum5.Value := num5;
        AccListNum6.Value := num6;
        AccListNum7.Value := num7;
        AccListNum8.Value := num8;
      end
      else if DmdFm.VDervr6TypeNm.Value = 2 then { «·‰Ê⁄ «·√Ê· Õ«ÊÌ… 40 }
      begin
        AccListNum1.Value := num5;
        AccListNum2.Value := num6;
        AccListNum3.Value := num7;
        AccListNum4.Value := num8;
        AccListNum5.Value := num1;
        AccListNum6.Value := num2;
        AccListNum7.Value := num3;
        AccListNum8.Value := num4;
      end
      else
      begin
        AccListNum1.Value := num1;
        AccListNum2.Value := num2;
        AccListNum3.Value := num3;
        AccListNum4.Value := num4;
        AccListNum5.Value := num5;
        AccListNum6.Value := num6;
        AccListNum7.Value := num7;
        AccListNum8.Value := num8;
      end;

      if LeverF = 1 then
        AccListRoafe.Value := 1;

      if (AccListNum1.Value = 0) and (AccListNum5.Value = 0) then
        AccListShipType.Value := 2
      else if (AccListNum2.Value = 0) and (AccListNum6.Value = 0) then
        AccListShipType.Value := 1
      else
        AccListShipType.Value := 3;

      if (AccListNum3.Value = 0) and (AccListNum7.Value = 0) then
        AccListShipMet.Value := 1
      else if (AccListNum4.Value = 0) and (AccListNum8.Value = 0) then
        AccListShipMet.Value := 0;
    end;

  end;

  AcListFm.ShowModal;
  AcListFm.Free;

end;

procedure THatkaFm.N3Click(Sender: TObject);
begin
  EditFlag := 0;
  with DmdFm do
  begin
    if not(DmdFm.VloadHrakBillNum.isnull) then
    begin
      Application.CreateForm(TAcListFm, AcListFm);
      AcListFm.sBitBtn4.Visible := True;
      AcListFm.sBitBtn24.Visible := True;
      AcListFm.sBitBtn26.Visible := false;
      AcListFm.sBitBtn28.Visible := false;
      AcListFm.sBitBtn27.Visible := false;
      AcListFm.sBitBtn29.Visible := false;
      AcListFm.Button2.Visible := false;
      AcListFm.DBCheckBox9.Visible := false;


      // 1      DmdFm.SAccList.FilterSQL := '';
      // 1      if DmdFm.SAccList.Locate('ListNum', DmdFm.loadBillNum.Value, []) then
      // 1        AccType := DmdFm.SAccListListType.Value;
      // 1      AccList.FilterSQL := QuotedStr(IntToStr(AccType));
      // 1      DmdFm.AccList.Locate('ListNum', DmdFm.loadBillNum.Value, []);

      AccList.Close;
      AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
      AccList.ParamByName('Vtype').Value := 1;
      AccList.Execute;
      AccType := DmdFm.AccListListType.Value;

      if AccList.IsEmpty then
      begin

        AccList.Close;
        AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
        AccList.ParamByName('Vtype').Value := 2;
        AccList.Execute;
        AccType := DmdFm.AccListListType.Value;

      end;

      if not AccList.IsEmpty then
      begin
        accdet.Close;
        accdet.ParamByName('VNum').Value := AccListListNum.Value;
        accdet.ParamByName('Vtype').Value := AccListListType.Value;
        accdet.Execute;
      end
      else
        accdet.Close;

      if AccType = 1 then
      begin
        AcListFm.Label22.Caption := '‰ﬁœÌ';
        Inco.FilterSQL := 'IncType=1'
      end
      else if AccType = 2 then
      begin
        AcListFm.Label22.Caption := 'Ã«—Ì';
        Inco.FilterSQL := 'IncType=1';
      end;
      AcListFm.ShowModal;
      AcListFm.Free;
    end
  end;
end;

procedure THatkaFm.N4Click(Sender: TObject);
var
  i: Integer;
begin

  with DmdFm do
  begin

    EditFlag := 1;
    if DmdFm.PermAcList.Value = false then
      raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');

    if DmdFm.VloadHrakEnbEdit.Value = 1 then
      raise Exception.Create('ÌÃ» ≈·€«¡  ÕœÌœ  „ﬂÌ‰ «· ⁄œÌ· √Ê·«');
    if DmdFm.VloadHrakEfrajNum.isnull then
      raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

    CountQ.Close;
    CountQ.ParamByName('BillNum').Value := DmdFm.VloadHrakBillNum.Value;
    CountQ.Open;

    if CountQnum.Value > 1 then
      raise Exception.Create('—ﬁ„ «·›« Ê—… „ÊÃÊœ ›Ì √ﬂÀ— „‰ »Ê·Ì’…');

    if DmdFm.VloadHrakStopF.Value = 1 then
      raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

    // 1    MainFm.sBitBtn13Click(Sender);

    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn4.Visible := True;
    AcListFm.sBitBtn24.Visible := True;
    AcListFm.sBitBtn26.Visible := false;
    AcListFm.sBitBtn28.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;
    // AcListFm.Button1.Visible := True;
    AcListFm.DBCheckBox9.Visible := false;

    // 1    DmdFm.SAccList.FilterSQL := '';
    // 1    if DmdFm.SAccList.Locate('ListNum', DmdFm.loadBillNum.Value, []) then
    // 1      AccType := DmdFm.SAccListListType.Value;
    // 1    DmdFm.AccList.FilterSQL := QuotedStr(IntToStr(AccType));
    // 1    DmdFm.AccList.Locate('ListNum', DmdFm.loadBillNum.Value, []);
    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 1;
    AccList.Execute;
    AccType := DmdFm.AccListListType.Value;

    if AccList.IsEmpty then
    begin

      AccList.Close;
      AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
      AccList.ParamByName('Vtype').Value := 2;
      AccList.Execute;
      AccType := DmdFm.AccListListType.Value;

    end;

    if AccList.IsEmpty then
    begin

      AccList.Close;
      AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
      AccList.ParamByName('Vtype').Value := 3;
      AccList.Execute;
      AccType := DmdFm.AccListListType.Value;

    end;

    if not AccList.IsEmpty then
    begin
      accdet.Close;
      accdet.ParamByName('VNum').Value := AccListListNum.Value;
      accdet.ParamByName('Vtype').Value := AccListListType.Value;
      accdet.Execute;
    end;

    if AccType = 1 then
    begin
      AcListFm.Label22.Caption := '‰ﬁœÌ';
    end
    else if AccType = 2 then
    begin
      AcListFm.Label22.Caption := 'Ã«—Ì';
    end;

    if AccType = 8 then
    begin
      AcListFm.Label22.Caption := '„œÌ‰Ê‰';
    end;

    // -------------------------------------------
    // with DmdFm do
    // begin

    // raise Exception.Create('Â–« «·»Ê·Ì’… ﬁœ  „ «Õ ”«»Â« ›Ì ›« Ê—… ”«»ﬁ…');

    // --------------------------- «œ—«Ã «·»Ê·Ì’… ›Ì ﬁ«∆„… «·Õ ”«»

    if (DmdFm.VDateHrakTaghez.Value = 1) then
      if (DmdFm.VloadHrakStoreType.Value <> 1) then
        raise Exception.Create('’·Ì ⁄·Ï —”Ê· «··Â ’ﬁ⁄ ⁄·Ìﬂ Ì« Õ»Ê—');

    AccList.Locate('BillNum', DmdFm.VloadHrakBillNum.Value, []);

    if (DmdFm.AccListloukof.Value = 0) and (DmdFm.PermLockList.Value = false)
    then
      raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');

    AccList.edit;
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

    AccListBillNum.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
    AccListArriveDate.Value := DmdFm.VDateHrakArriveDate.Value; //   «·Ê’Ê·
    AccListBillNum2.Value := VloadHrakBillloading.Value; // «·»Ê·Ì’
    AccListAdmisMet.Value := VloadHrakStoreType.Value; // ÿ«—Ìﬁ «· ”·Ì„
    // AccListAginNm.Value := LoadListAgent.Value; // «·ÊﬂÌ·

    if (DmdFm.VDateHrakRofR.Value = 1) then
      AccListRoafe.Value := 1
    else
      AccListRoafe.Value := 0;

    // if (Dmd2Fm.VDateHrakcarsTfF.Value = 1) then
    // AccListTfteshCar.Value := 1
    // else
    // AccListTfteshCar.Value := 0;

    if VloadHrakMarks.Value = 7 then
    begin
      VDervr6.First;
      if VDervr6TypeNm.Value = 1 then
      begin
        AccListGoodsQty.Value := VDervr6Qty.Value;
        AccListUnit.Value := VDervr6TypeNm.Value;
      end
      else if VDervr6TypeNm.Value = 2 then
      begin
        AccListQty2.Value := VDervr6Qty.Value;
        AccListUnit2.Value := VDervr6TypeNm.Value;
      end;
      VDervr6.Next;
      if VDervr6TypeNm.Value = 1 then
      begin
        AccListGoodsQty.Value := VDervr6Qty.Value;
        AccListUnit.Value := VDervr6TypeNm.Value;
      end
      else if VDervr6TypeNm.Value = 2 then
      begin
        AccListQty2.Value := VDervr6Qty.Value;
        AccListUnit2.Value := VDervr6TypeNm.Value;
      end;
    end
    else
    begin
      AccListGoodsQty.Value := VloadHrakQty.Value;
      DmdFm.AccListUnit.Value := DmdFm.VloadHrakMarks.Value;
    end;

    if DmdFm.VDateHrakMixedF.Value = 0 then
    begin
      AccListShipType.Value := DmdFm.VDateHrakShipType.Value;
      AccListShipMet.Value := DmdFm.VDateHrakShipMet.Value;
    end;

    if DmdFm.VDateHrakMixedF.Value = 1 then { ›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ… }
    begin
      num1 := 0;
      num2 := 0;
      num3 := 0;
      num4 := 0;
      num5 := 0;
      num6 := 0;
      num7 := 0;
      num8 := 0;

      LeverF := 0; { Â·  ÊÃœ —Ê«›⁄ √„ ·« }
      if VloadHrakMarks.Value = 7 then
      begin
        Type1 := VDervr6TypeNm.Value;
        Type2 := VDervr6TypeNm.Value;
        VDervr6.First;
        while not VDervr6.Eof do
        begin
          Type1 := VDervr6TypeNm.Value;
          VDervr7.Close;
          VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
          VDervr7.Execute;

          VDervr7.First;
          while not VDervr7.Eof do
          begin
            if Type1 <> Type2 then
            begin
              if VDervr7shipType.Value = 1 then
                num1 := num1 + 1
              else if VDervr7shipType.Value = 2 then
                num2 := num2 + 1;
            end
            else if VDervr7shipType.Value = 1 then
              num5 := num5 + 1
            else if VDervr7shipType.Value = 2 then
              num6 := num6 + 1;

            if Type1 <> Type2 then
            begin
              if VDervr7shipMet.Value = 0 then
                num3 := num3 + 1
              else if VDervr7shipMet.Value = 1 then
                num4 := num4 + 1;
            end
            else
            begin
              if VDervr7shipMet.Value = 0 then
                num7 := num7 + 1
              else if VDervr7shipMet.Value = 1 then
                num8 := num8 + 1;
            end;
            if VDervr7Lever.Value = 1 then
              LeverF := 1;
            VDervr7.Next;
          end;
          VDervr6.Next;
          VDervr7.Close;
          VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
          VDervr7.Execute;

        end;
      end
      else { ·«  ”«ÊÌ 7 }
      begin
        VDervr7.Close;
        VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
        VDervr7.Execute;

        VDervr7.First;
        while not VDervr7.Eof do
        begin
          if VDervr7shipType.Value = 1 then
            num1 := num1 + 1
          else if VDervr7shipType.Value = 2 then
            num2 := num2 + 1;

          if VDervr7shipMet.Value = 0 then
            num3 := num3 + 1
          else if VDervr7shipMet.Value = 1 then
            num4 := num4 + 1;

          if VDervr7Lever.Value = 1 then
            LeverF := 1;

          VDervr7.Next;
        end;
      end;
      VDervr6.First;
      if DmdFm.VDervr6TypeNm.Value = 1 then { «·‰Ê⁄ «·√Ê· Õ«ÊÌ… 20 }
      begin
        AccListNum1.Value := num1;
        AccListNum2.Value := num2;
        AccListNum3.Value := num3;
        AccListNum4.Value := num4;
        AccListNum5.Value := num5;
        AccListNum6.Value := num6;
        AccListNum7.Value := num7;
        AccListNum8.Value := num8;
      end
      else if VDervr6TypeNm.Value = 2 then
      begin
        AccListNum1.Value := num5;
        AccListNum2.Value := num6;
        AccListNum3.Value := num7;
        AccListNum4.Value := num8;
        AccListNum5.Value := num1;
        AccListNum6.Value := num2;
        AccListNum7.Value := num3;
        AccListNum8.Value := num4;
      end
      else
      begin
        AccListNum1.Value := num1;
        AccListNum2.Value := num2;
        AccListNum3.Value := num3;
        AccListNum4.Value := num4;
        AccListNum5.Value := num5;
        AccListNum6.Value := num6;
        AccListNum7.Value := num7;
        AccListNum8.Value := num8;
      end;

      if LeverF = 1 then
        AccListRoafe.Value := 1;

      if (AccListNum1.Value = 0) and (AccListNum5.Value = 0) then
        AccListShipType.Value := 2
      else if (AccListNum2.Value = 0) and (AccListNum6.Value = 0) then
        AccListShipType.Value := 1
      else
        AccListShipType.Value := 3;

      if (AccListNum3.Value = 0) and (AccListNum7.Value = 0) then
        AccListShipMet.Value := 1
      else if (AccListNum4.Value = 0) and (AccListNum8.Value = 0) then
        AccListShipMet.Value := 0;
    end;
  end;
  { for I:=0 to  AcListFm.ComponentCount-1 do
    if (AcListFm.Components[I] is TsBitBtn)then
    begin
    (AcListFm.Components[I] as TsBitBtn).Enabled:=False;
    end;
    AcListFm.sBitBtn8.Enabled:=true;
    AcListFm.sBitBtn3.Enabled:=true;
    AcListFm.sBitBtn15.Enabled:=true;
    AcListFm.sBitBtn13.Enabled:=true;
    AcListFm.sBitBtn2.Enabled := True;
    AcListFm.sBitBtn12.Enabled := True;
    AcListFm.sBitBtn17.Enabled := True;

    AcListFm.DBLookupComboBox3.Enabled:=true;
    AcListFm.DBEdit13.Enabled:=true;
    AcListFm.DBEdit11.Enabled:=true;
    AcListFm.DBEdit12.Enabled:=true;
    AcListFm.DBEdit3.Enabled:=true;
    AcListFm.DBEdit5.Enabled:=true; }

  NewEfraj := 2;
  EditList := 0;
  AcListFm.ShowModal;
  AcListFm.Free;
  EditFlag := 0;
  EditList := 1;
end;

procedure THatkaFm.N7Click(Sender: TObject);
begin
  with DmdFm do
  begin
    sVloadHrak.Close;
    sVloadHrak.ParamByName('VNumT').Value := DmdFm.VDateHrakNum.Value;
    sVloadHrak.Execute;
  end;
  NewEfraj := 1;
  DmdFm.VloadHrak.DisableControls;
  DmdFm.VloadHrak.First;
  while not DmdFm.VloadHrak.Eof do
  begin
    DmdFm.VloadHrak.edit;
    DmdFm.VloadHrakselectF.Value := 0;
    DmdFm.VloadHrak.Next;
  end;
  DmdFm.VloadHrak.EnableControls;

  if DmdFm.VloadHrak.State = dsedit then
    DmdFm.VloadHrak.Post;

  DmdFm.QLoadEf.DeleteWhere;
  DmdFm.QLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
  DmdFm.QLoadEf.AddWhere('selectF=1');
  DmdFm.QLoadEf.AddWhere('UserSelected= ' + DmdFm.PermUserNum.AsString);
  DmdFm.QLoadEf.Open;

  // DmdFm.VloadHrak.FilterSQL :=( 'selectF = 1 and UserSelected = ' + DmdFm.PermUserNum.AsString);
  // DmdFm.SVloadHrak.FilterSQL := ' selectF = 0 and BillNum is null';

  DmdFm.QsLoadEf.DeleteWhere;
  DmdFm.QsLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
  DmdFm.QsLoadEf.AddWhere('selectF=0');
  DmdFm.QsLoadEf.AddWhere('BillNum is null');
  DmdFm.QsLoadEf.Open;

  Application.CreateForm(TEfrajFm, EfrajFm);
  // EfrajFm.UserSelected
  EditFlag := 0;
  EfrajFm.sLabel1.Caption := '√ﬂÀ— „‰ √„—  ”·Ì„ - ÃœÌœ';
  EfrajFm.ShowModal;
  EfrajFm.Free;

  NewEfraj := 0;
  // DmdFm.QLoadEf.Close;
  // DmdFm.QsLoadEf.Close;
end;

procedure THatkaFm.N8Click(Sender: TObject);
begin
  NewEfraj := 2;
  list_num :=StrToInt(InputBox('—ﬁ„ «·›« Ê—…', '√œŒ· —ﬁ„ «·›« Ê—…', ''));
  if list_num <> 0 then
  begin
    DmdFm.VloadHrak.First;

    if DmdFm.VloadHrak.Locate('BillNum', (list_num), []) then
    begin

      // dmdfm.AccList.FilterSQL := '';
      // DmdFm.AccList.Locate('ListNum', s, []);
      // ShowMessage('YES');
      DmdFm.VSAccList.Close;
      DmdFm.VSAccList.ParamByName('VNum').Value := list_num;
      DmdFm.VSAccList.Open;

      DmdFm.AccList.Close;
      DmdFm.AccList.ParamByName('VNum').Value := DmdFm.VSAccListListNum.Value;
      DmdFm.AccList.ParamByName('Vtype').Value := DmdFm.VSAccListListType.Value;
      DmdFm.AccList.Execute;

      if (DmdFm.AccListloukof.Value = 0) and (DmdFm.PermLockList.Value = false)
      then
        raise Exception.Create('ﬁ«∆„… «·Õ”«» „ﬁ›·…');
      if DmdFm.AccListListType.Value = 1 then
        AccType := 1
      else if DmdFm.AccListListType.Value = 2 then
        AccType := 2
      else
        AccType := 9;

      DmdFm.VloadHrak.DisableControls;
      DmdFm.VloadHrak.First;
      while not DmdFm.VloadHrak.Eof do
      begin
        DmdFm.VloadHrak.edit;
        if DmdFm.VloadHrakBillNum.Value = (list_num) then
        begin
          DmdFm.VloadHrakselectF.Value := 1;
          DmdFm.VloadHrakUserSelected.Value := DmdFm.PermUserNum.Value;
        end
        else
        begin
          DmdFm.VloadHrakUserSelected.Value := 0;
          DmdFm.VloadHrakselectF.Value := 0;
        end;
        DmdFm.VloadHrak.Next;
      end;
      DmdFm.VloadHrak.EnableControls;

      if DmdFm.VloadHrak.State = dsedit then
        DmdFm.VloadHrak.Post;



      DmdFm.QLoadEf.DeleteWhere;
      DmdFm.QLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
      DmdFm.QLoadEf.AddWhere('selectF=1');
      DmdFm.QLoadEf.AddWhere('UserSelected= ' + DmdFm.PermUserNum.AsString);
      DmdFm.QLoadEf.Open;

      // DmdFm.VloadHrak.FilterSQL :=( 'selectF = 1 and UserSelected = ' + DmdFm.PermUserNum.AsString);
      // DmdFm.SVloadHrak.FilterSQL := ' selectF = 0 and BillNum is null';

      DmdFm.QsLoadEf.DeleteWhere;
      DmdFm.QsLoadEf.AddWhere('LNum=' + DmdFm.VDateHrakNum.AsString);
      DmdFm.QsLoadEf.AddWhere('selectF=0');
      DmdFm.QsLoadEf.AddWhere('BillNum is null');
      DmdFm.QsLoadEf.Open;

      // DmdFm.load.FilterSQL := 'selectF = 1 and userselected=' + DmdFM.PermUserNum.AsString;
      // DmdFm.Sload.FilterSQL := 'LNum=' + DmdFm.VloadlistNum.AsString + ' and selectF = 0 and BillNum is null';
      Application.CreateForm(TEfrajFm, EfrajFm);
      EditFlag := 1;
      EfrajFm.sLabel1.Caption := '√ﬂÀ— „‰ √„—  ”·Ì„ -  ⁄œÌ·';
      if AccType = 1 then
      begin
        EfrajFm.sBitBtn2.Enabled := false;
        EfrajFm.sBitBtn6.Enabled := false;
        EfrajFm.sBitBtn1.Enabled := True;
      end
      else if AccType = 2 then
      begin
        EfrajFm.sBitBtn2.Enabled := True;
        EfrajFm.sBitBtn6.Enabled := false;
        EfrajFm.sBitBtn1.Enabled := false;
      end
      else if AccType = 9 then
      begin
        EfrajFm.sBitBtn2.Enabled := false;
        EfrajFm.sBitBtn6.Enabled := True;
        EfrajFm.sBitBtn1.Enabled := false;
      end;

      EfrajFm.ShowModal;
      EfrajFm.Free;
      // DmdFm.sload.FilterSQL := '';
    end;
  end;
  NewEfraj := 0;

end;

procedure THatkaFm.N9Click(Sender: TObject);
begin
  EditList := 1;
  NewEfraj := 1;

  if DmdFm.VDateHrakByan_type.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«·‘Õ‹‹‹‹‹‹‹‹‹‹‹‹‹‹‰');

  if DmdFm.VloadHrakTransitF.Value = 2 then
    raise Exception.Create('Ì« ‘ÌŒ «·»Ê·Ì’… Œ«’… »«· —«‰“Ì ');

  if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
  AccType := 2;
   SubType :=2;
    subtype2 := 1;
  if DmdFm.VloadHrakEfrajNum.isnull then
    raise Exception.Create('·„ Ì „ «œŒ«· —ﬁ„ «·«›—«Ã «·Ã„—ﬂÌ');

  if (DmdFm.VDateHrakTaghez.Value = 1) then
    if (DmdFm.VloadHrakStoreType.Value <> 1) then
      raise Exception.Create('’·Ì ⁄·Ï —”Ê· «··Â ’ﬁ⁄ ⁄·Ìﬂ Ì« Õ»Ê—');

  if DmdFm.VloadHrakStopF.Value = 1 then
    raise Exception.Create('·« Ì„ﬂ‰ﬂ «· ⁄œÌ· ... «·»Ê·Ì’… „ÊﬁÊ›…');

  // 1  MainFm.sBitBtn13Click(Sender);
  with DmdFm do
  begin
    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
    VDervr7.Execute;

    AccList.Close;
    AccList.ParamByName('VNum').Value := VloadHrakBillNum.Value;
    AccList.ParamByName('Vtype').Value := 2;
    AccList.Execute;

    // if not AccList.IsEmpty then
    // begin
    accdet.Close;
    accdet.ParamByName('VNum').Value := AccListListNum.Value;
    accdet.ParamByName('Vtype').Value := AccListListType.Value;
    accdet.Execute;

    Inco.FilterSQL := 'IncType=1';
    // AccList.FilterSQL := ('ListType=2');
    // AccList.Last;

    // end;
    Application.CreateForm(TAcListFm, AcListFm);
    AcListFm.sBitBtn4.Visible := True;
    AcListFm.sBitBtn24.Visible := True;
    AcListFm.sBitBtn26.Visible := false;
    AcListFm.sBitBtn28.Visible := false;
    AcListFm.sBitBtn27.Visible := false;
    AcListFm.sBitBtn29.Visible := false;

    AcListFm.sPanel3.Visible := True;
    AcListFm.sPanel4.Visible := false;

    // AcListFm.Button1.Visible := True;
    AcListFm.Button2.Visible := false;
    AcListFm.DBCheckBox9.Visible := false;
    AcListFm.sEdit1.Text := '0';
    AcListFm.sEdit5.Text := '0';
    AcListFm.sEdit4.Text := '1'; // »Ê·Ì’…1  // ‘Õ‰2 // Œœ„« 3
    /// AcListFm.sBitBtn4.SetFocus;
    AcListFm.Label22.Caption := ' ›—Ì€ Ã«—Ì';
    // -------------------------------------------
            AngSerFm.ShowModal;
 end;
end;

procedure THatkaFm.sBitBtn10Click(Sender: TObject);
begin

  Close;
end;

procedure THatkaFm.sBitBtn11Click(Sender: TObject);
begin
  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
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
      IF (NOT(VDervr6Qty.isnull)) THEN
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

procedure THatkaFm.sBitBtn13Click(Sender: TObject);
begin
  PopupMenu1.Popup(HatkaFm.sPanel4.Left + sBitBtn13.Left,
    HatkaFm.sPanel4.Top + sBitBtn13.Top);
end;

procedure THatkaFm.sBitBtn1Click(Sender: TObject);
begin
  with DmdFm do
  begin

    VDateHrak.Close;
    VDateHrak.ParamByName('VDateTO').Value := DateTimePicker2.DateTime;
    VDateHrak.ParamByName('VDateFROM').Value := DateTimePicker1.DateTime;
    VDateHrak.Execute;
    VDateHrak.FilterSQL:='Byan_Type=2';
    VDateHrak.Last;
    if not VDateHrak.IsEmpty then
    begin

      VloadHrak.Close;
      VloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
      VloadHrak.Execute;

    end;

  end;
end;

procedure THatkaFm.sBitBtn2Click(Sender: TObject);

begin
 Application.CreateForm(TSearchFm,SearchFm);
 SearchFm.ShowModal;
 SearchFm.Free;
end;

procedure THatkaFm.sBitBtn3Click(Sender: TObject);
var
  asd1, asd2: Integer;
begin
  {
    asd1 := 0;
    asd2 := 0;
    with DmdFm do
    begin

    DmdFmDB1Q1.Close;
    DmdFmDB1Q1.ParamByName('num1').Value := DmdFm.VDateHrakNum.Value;
    DmdFmDB1Q1.Open;

    DmdFmDB1Q2.Close;
    DmdFmDB1Q2.ParamByName('num1').Value := VDateHrakNum.Value;
    DmdFmDB1Q2.Open;

    inputandoutput.First;
    while not inputandoutput.Eof do
    inputandoutput.Delete;

    while not DmdFmDB1Q1.Eof do
    begin

    If not(DmdFmDB1Q2.Locate('numAlama', DmdFmDB1Q1BillNum.Value, [])) then
    begin
    inputandoutput.Insert;
    inputandoutputinputOutput.Value := 1;
    inputandoutputnumHowa.Value := DmdFmDB1Q1BillNum.Value;
    inputandoutputDateTfreg.Value := DmdFmDB1Q1ArriveDate.Value;
    inputandoutputOasfBata.Value := DmdFmDB1Q1StoreTypeNm.Value;
    inputandoutputSendto.Value := DmdFmDB1Q1Send.Value;
    inputandoutputOzen.Value := FloatToStr(DmdFmDB1Q1Weight.Value);
    inputandoutputkase.Value := FloatToStr(DmdFmDB1Q1Kias.Value);
    inputandoutputnameOkel.Value := DmdFmDB1Q1Goodsname.Value;
    inputandoutputBoolecaNum.Value := DmdFmDB1Q1Billloading.Value;

    // inputandoutputnumHowa.Value := DmdFmDB1Q1StoreTypeNm.Value;
    inputandoutput.Post;
    end
    else
    begin
    inputandoutput.Insert;
    inputandoutputinputOutput.Value := 2;
    inputandoutputnumHowa.Value := DmdFmDB1Q1BillNum.Value;
    inputandoutputDateTfreg.Value := DmdFmDB1Q1ArriveDate.Value;
    inputandoutputOasfBata.Value := DmdFmDB1Q1StoreTypeNm.Value;
    inputandoutputSendto.Value := DmdFmDB1Q1Send.Value;
    inputandoutputOzen.Value := FloatToStr(DmdFmDB1Q1Weight.Value);
    inputandoutputkase.Value := FloatToStr(DmdFmDB1Q1Kias.Value);
    inputandoutputnameOkel.Value := DmdFmDB1Q1Goodsname.Value;
    inputandoutputBoolecaNum.Value := DmdFmDB1Q1Billloading.Value;

    inputandoutput.Post;
    end;

    DmdFmDB1Q1.Next;
    end;

    end;

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\Bean.fr3');

    frxReport1.ShowReport(True); }
end;

procedure THatkaFm.sBitBtn4Click(Sender: TObject);
var
  asd1, asd2: Integer;
begin
  {
    asd1 := 0;
    asd2 := 0;
    with DmdFm do
    begin

    VehQ.Close;
    VehQ.ParamByName('num1').Value := DmdFm.VDateHrakNum.Value;
    VehQ.Open;

    VehDQ.Close;
    VehDQ.ParamByName('num1').Value := VDateHrakNum.Value;
    VehDQ.Open;

    inputandoutput.First;
    while not inputandoutput.Eof do
    inputandoutput.Delete;

    while not VehQ.Eof do
    begin

    If not(VehDQ.Locate('numAlama', VehQBillNum.Value, [])) then
    begin
    if (VehQStoreType.Value <> 1) then
    begin

    inputandoutput.Insert;
    inputandoutputinputOutput.Value := 1;
    inputandoutputnumHowa.Value := VehQBillNum.Value;
    inputandoutputDateTfreg.Value := VehQArriveDate.Value;
    inputandoutputOasfBata.Value := VehQStoreTypeNm.Value;
    inputandoutputSendto.Value := VehQSend.Value;
    inputandoutputOzen.Value := FloatToStr(VehQWeight.Value);
    inputandoutputkase.Value := FloatToStr(VehQKias.Value);
    inputandoutputnameOkel.Value := VehQGoodsname.Value;
    inputandoutputBoolecaNum.Value := VehQBillloading.Value;

    // inputandoutputnumHowa.Value := DmdFmDB1Q1StoreTypeNm.Value;
    inputandoutput.Post;
    end;
    end;
    { else
    begin
    inputandoutput.Insert;
    inputandoutputinputOutput.Value := 2;
    inputandoutputnumHowa.Value := DmdFmDB1Q1BillNum.Value;
    inputandoutputDateTfreg.Value := DmdFmDB1Q1ArriveDate.Value;
    inputandoutputOasfBata.Value := DmdFmDB1Q1StoreTypeNm.Value;
    inputandoutputSendto.Value := DmdFmDB1Q1Send.Value;
    inputandoutputOzen.Value := FloatToStr(DmdFmDB1Q1Weight.Value);
    inputandoutputkase.Value := FloatToStr(DmdFmDB1Q1Kias.Value);
    inputandoutputnameOkel.Value := DmdFmDB1Q1Goodsname.Value;
    inputandoutputBoolecaNum.Value := DmdFmDB1Q1Billloading.Value;

    inputandoutput.Post;
    end;

    VehQ.Next;
    end;

    end;

    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\Bean.fr3');
    frxReport1.ShowReport(True); }

end;

procedure THatkaFm.sBitBtn5Click(Sender: TObject);
begin

  SporGen := 2;
  Application.CreateForm(TSubSrchFm, SubSrchFm);
  if Byan_Type=1 then
   SubSrchFm.Label12.Caption:='»Ì«‰ «·Õ„Ê·… -  ›—Ì€'
  else
  SubSrchFm.Label12.Caption:='»Ì«‰ «·Õ„Ê·… - ‘Õ‰';
  SubSrchFm.ShowModal;
  SubSrchFm.Free;
  // SubSrchFm.ShowModal;
end;

procedure THatkaFm.sBitBtn6Click(Sender: TObject);
begin

  SporGen := 2;
  SporGen := 0;
  Application.CreateForm(TSrchFm, SrchFm);
  if Byan_Type=1 then
   SrchFm.Label12.Caption:='»Ì«‰ «·Õ„Ê·… -  ›—Ì€'
  else
   SrchFm.Label12.Caption:='»Ì«‰ «·Õ„Ê·… - ‘Õ‰';
  SrchFm.ShowModal;
  SrchFm.Free;
  // SrchFm.ShowModal;
end;

procedure THatkaFm.sBitBtn7Click(Sender: TObject);
begin
  // DmdFm.VloadHrak.Filtered := false;
  // DmdFm.VloadHrak.Filter := 'selectF =1';
  // DmdFm.VloadHrak.Filtered := True;
end;

procedure THatkaFm.sDBGrid1CellClick(Column: TColumn);
begin
  with DmdFm do
  begin
    VloadHrak.Close;
    VloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
    VloadHrak.Execute;
  end;

end;

procedure THatkaFm.sDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with DmdFm do
  begin
    VloadHrak.Close;
    VloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
    VloadHrak.Execute;
  end;
end;

procedure THatkaFm.sDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  with DmdFm do
  begin
    VloadHrak.Close;
    VloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
    VloadHrak.Execute;
  end;
end;

procedure THatkaFm.sDBGrid2DblClick(Sender: TObject);
begin
  { if DmdFm.PermAcList.Value = false then
    raise Exception.Create('·«  „·ﬂ «·’·«ÕÌ…');
    with DmdFm do
    begin

    DmdFm.LoadCountQ.Close;
    DmdFm.LoadCountQ.ParamByName('Lnum').Value := DmdFm.VloadHrakLNum.Value;
    DmdFm.LoadCountQ.ParamByName('SelectF').Value := 1;
    DmdFm.LoadCountQ.Open;

    if not(DmdFm.VloadHrakBillNum.isnull) then
    PopupMenu3.Popup(HatkaFm.sDBGrid2.Left + sPanel4.Left + x1,
    sDBGrid2.Top + sPanel4.Top + y1)
    else
    PopupMenu2.Popup(HatkaFm.sDBGrid2.Left + sPanel4.Left + x1,
    sDBGrid2.Top + sPanel4.Top + y1)

    end;
  }
end;

procedure THatkaFm.sDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // if (((Column.Field = DmdFm.AdmisDetQty) or (Column.Field = DmdFm.AdmisDetShipNm) or (Column.Field = DmdFm.AdmisDetArriveDate) or (Column.Field = DmdFm.AdmisDetBillNum) or (Column.Field = DmdFm.AdmisDetTypeNm) or (Column.Field = DmdFm.AdmisDetGoodsName) or (Column.Field = DmdFm.AdmisDetWeigh) or (Column.Field = DmdFm.AdmisDetSpace) or (Column.Field = DmdFm.AdmisDetNotes)) and (DmdFm.AdmisDetTfasel.Value = 1)) then
  // if (((Column.Field = DmdFm.AdmisDetQty) or (Column.Field = DmdFm.AdmisDetShipNm) or (Column.Field = DmdFm.AdmisDetArriveDate) or (Column.Field = DmdFm.AdmisDetBillNum) or (Column.Field = DmdFm.AdmisDetTypeNm) or (Column.Field = DmdFm.AdmisDetGoodsName) or (Column.Field = DmdFm.AdmisDetWeigh) or (Column.Field = DmdFm.AdmisDetSpace) or (Column.Field = DmdFm.AdmisDetNotes)) and (DmdFm.AdmisDetTfasel.Value = 1)) then
  // begin
  // DBGrid1.Canvas.Font.Color := clRed;
  // end
  // if gdselected in state then
  // sDBGrid2.Canvas.Font.Color := clHighlightText
  // sDBGrid2.Canvas.Font.Color := clRed
  // else
  // sDBGrid2.Canvas.Font.Color := Column.Font.Color;

  // DBGrid1.Canvas.TextRect(rect, Rect.Left, Rect.Top, Column.Field.DisplayText);

end;

procedure THatkaFm.sDBGrid2EditButtonClick(Sender: TObject);
begin

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := VloadHrakAuto.Value;
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
      IF (NOT(VDervr6Qty.isnull)) THEN
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

end;

procedure THatkaFm.sDBGrid2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  x1 := X;
  y1 := Y;

end;

procedure THatkaFm.sSpeedButton8Click(Sender: TObject);
begin
  sMagnifier1.Execute;
end;

procedure THatkaFm.sBitBtn9Click(Sender: TObject);
begin

  with DmdFm do
  begin

    VDervr6.Close;
    VDervr6.ParamByName('VNumT').Value := dmdfm.VloadHrakLNum.Value;
    VDervr6.ParamByName('VNumT1').Value := dmdfm.VloadHrakAuto.Value;
    VDervr6.Execute;

    VDervr7.Close;
    VDervr7.ParamByName('VNumT').Value := dmdfm.VDervr6numAuto.Value;
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
      IF (NOT(VDervr7.IsEmpty)) THEN
      BEGIN

        VDervr7.Close;
        VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
        VDervr7.Execute;

        Application.CreateForm(TDervr7Fm, Dervr7Fm);

        if DmdFm.VDateHrakMixedF.Value = 1 then
        begin

          // Dervr7Fm.DBGridEh1.Columns[1].Visible := True;
          // Dervr7Fm.DBGridEh1.Columns[2].Visible := True;
          // Dervr7Fm.DBGridEh1.Columns[3].Visible := True;
        end
        else
        begin

          // Dervr7Fm.DBGridEh1.Columns[1].Visible := false;
          // Dervr7Fm.DBGridEh1.Columns[2].Visible := false;
          // Dervr7Fm.DBGridEh1.Columns[3].Visible := false;
        end;

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
    if DmdFm.load2.IsEmpty then
    begin
    DmdFm.Load2.Insert;
    DmdFm.Load2Lnum.Value := DmdFm.loadAuto.Value;
    DmdFm.Load2num.Value := DmdFm.loadLNum.Value;
    DmdFm.Load2.Post;
    end;
    //DmdFm.Load2.Locate('LNum',DmdFm.loadAuto.Value,[]);
    Application.CreateForm(TAdmDetFm, AdmDetFm);
    if DmdFm.VloadlistMixedF.Value = 1 then
    begin
    AdmDetFm.DBGrid1.Columns[1].Visible := true;
    AdmDetFm.DBGrid1.Columns[2].Visible := true;
    AdmDetFm.DBGrid1.Columns[3].Visible := true;
    AdmDetFm.DBRadioGroup1.Visible := True;
    AdmDetFm.DBRadioGroup2.Visible := True;
    AdmDetFm.sBitBtn3.Visible := True;
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
  }
end;

end.
