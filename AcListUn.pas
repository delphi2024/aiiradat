unit AcListUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Mask, DBCtrls,
  Grids, DBGrids, Buttons, DBActns, ActnList, db, dateutils,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl,
  LMDFill, sSkinProvider, inifiles, sBitBtn, sCheckBox, sDBCheckBox, Menus,
  sEdit,
  System.Actions, frxClass, sMaskEdit, sCustomComboEdit, sToolEdit, sDBDateEdit,
  sPanel, System.ImageList, Vcl.ImgList, acAlphaImageList, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, sButton, sDBEdit, sLabel, sDBNavigator, sMemo;

type
  TAcListFm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel2: TBevel;
    Label10: TLabel;
    DBEdit6: TDBEdit;
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
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText3: TDBText;
    DBEdit8: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    BitBtn12: TBitBtn;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    BitBtn11: TBitBtn;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    LMDFill1: TLMDFill;
    DBEdit13: TDBEdit;
    BitBtn15: TBitBtn;
    Label21: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Label23: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit14: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    DBEdit15: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit2: TEdit;
    sBitBtn12: TsBitBtn;
    sBitBtn14: TsBitBtn;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Button2: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    DBText4: TDBText;
    DBNavigator2: TDBNavigator;
    DBEdit16: TDBEdit;
    DBText5: TDBText;
    sBitBtn20: TsBitBtn;
    DBCheckBox1: TDBCheckBox;
    Label24: TLabel;
    Bevel1: TBevel;
    DBCheckBox10: TDBCheckBox;
    DBText6: TDBText;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBEdit25: TDBEdit;
    Label34: TLabel;
    DBText9: TDBText;
    BitBtn2: TBitBtn;
    DBText10: TDBText;
    DBEdit26: TDBEdit;
    Label30: TLabel;
    DBEdit19: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    DBCheckBox11: TDBCheckBox;
    DBEdit23: TDBEdit;
    Panel1: TPanel;
    sBitBtn2: TsBitBtn;
    sBitBtn17: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sDBDateEdit2: TsDBDateEdit;
    sDBDateEdit3: TsDBDateEdit;
    sDBDateEdit1: TsDBDateEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    sPanel1: TsPanel;
    DBCheckBox8: TDBCheckBox;
    ImgListPalInvisible: TsAlphaImageList;
    sPanel2: TsPanel;
    Label14: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBox4: TDBLookupComboBox;
    sBitBtn19: TsBitBtn;
    sBitBtn3: TsBitBtn;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    sPanel3: TsPanel;
    DBGridEh2: TDBGridEh;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton6: TsButton;
    sButton9: TsButton;
    sButton10: TsButton;
    sButton12: TsButton;
    sButton13: TsButton;
    sButton16: TsButton;
    sButton22: TsButton;
    sButton23: TsButton;
    sBitBtn4: TsBitBtn;
    sButton100: TsButton;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sButton3: TsButton;
    sBitBtn8: TsBitBtn;
    sBitBtn10: TsBitBtn;
    sBitBtn11: TsBitBtn;
    sBitBtn21: TsBitBtn;
    sBitBtn22: TsBitBtn;
    sBitBtn23: TsBitBtn;
    sBitBtn9: TsBitBtn;
    sBitBtn24: TsBitBtn;
    sPanel4: TsPanel;
    DBGridEh3: TDBGridEh;
    sDBEdit2: TsDBEdit;
    sBitBtn25: TsBitBtn;
    sBitBtn26: TsBitBtn;
    sBitBtn27: TsBitBtn;
    sBitBtn28: TsBitBtn;
    sBitBtn29: TsBitBtn;
    sButton4: TsButton;
    sButton5: TsButton;
    sButton7: TsButton;
    sButton8: TsButton;
    sButton11: TsButton;
    sButton14: TsButton;
    sButton15: TsButton;
    sButton17: TsButton;
    sButton18: TsButton;
    sButton19: TsButton;
    sButton20: TsButton;
    sButton21: TsButton;
    sButton24: TsButton;
    sButton25: TsButton;
    sButton26: TsButton;
    sButton27: TsButton;
    sButton28: TsButton;
    sButton29: TsButton;
    sButton30: TsButton;
    sButton31: TsButton;
    sEdit1: TsEdit;
    sDBNavigator1: TsDBNavigator;
    sMemo1: TsMemo;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    frxReport1: TfrxReport;
    Edit1: TEdit;
    sAlphaImageList1: TsAlphaImageList;
    sPanel5: TsPanel;
    DBCheckBox9: TDBCheckBox;
    Label17: TLabel;
    sDBEdit1: TsDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    Label22: TsLabel;
    sDBDateEdit4: TsDBDateEdit;
    function WriteNo(No: String): String;
    function GetNo(Ns: String; Power: Integer;
      Frst, Frst1, Scnd, Thrd: array of string): String;
    procedure BitBtn12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn15Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure DBLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label1MouseLeave(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn12Click(Sender: TObject);
    procedure sBitBtn13Click(Sender: TObject);
    procedure sBitBtn14Click(Sender: TObject);
    procedure sBitBtn15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sBitBtn16Click(Sender: TObject);
    procedure sBitBtn18Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure sBitBtn17Click(Sender: TObject);
    procedure sBitBtn19Click(Sender: TObject);
    procedure sBitBtn20Click(Sender: TObject);
    procedure sBitBtn21Click(Sender: TObject);
    procedure sBitBtn22Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure sButton10Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sButton12Click(Sender: TObject);
    procedure sButton13Click(Sender: TObject);
    procedure sButton16Click(Sender: TObject);
    procedure sButton22Click(Sender: TObject);
    procedure sButton23Click(Sender: TObject);
    procedure sButton100Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn8Click(Sender: TObject);
    procedure sBitBtn10Click(Sender: TObject);
    procedure sBitBtn11Click(Sender: TObject);
    procedure sBitBtn23Click(Sender: TObject);
    procedure sBitBtn24Click(Sender: TObject);
    procedure sBitBtn25Click(Sender: TObject);
    procedure sBitBtn27Click(Sender: TObject);
    procedure sBitBtn29Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure sButton19Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sButton11Click(Sender: TObject);
    procedure sButton14Click(Sender: TObject);
    procedure sButton15Click(Sender: TObject);
    procedure sButton17Click(Sender: TObject);
    procedure sButton18Click(Sender: TObject);
    procedure sButton20Click(Sender: TObject);
    procedure sButton21Click(Sender: TObject);
    procedure sButton24Click(Sender: TObject);
    procedure sButton25Click(Sender: TObject);
    procedure sButton26Click(Sender: TObject);
    procedure sButton27Click(Sender: TObject);
    procedure sButton28Click(Sender: TObject);
    procedure sButton29Click(Sender: TObject);
    procedure sButton30Click(Sender: TObject);
    procedure sButton31Click(Sender: TObject);
    procedure sBitBtn26Click(Sender: TObject);
    procedure sBitBtn28Click(Sender: TObject);
    procedure sDBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AcListFm: TAcListFm;
  attachType, MonOrCurr: Integer;
  MinShared :real;
implementation

uses AiiradatUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DmdUm, HatkaUn,
  MainUn, PermUn, SplashUn, SrchUn, SubSrcUn, UFEnterPass, VDateHrakUn,
  LstDetUn, LocalAgantUn, Attach2Un, Attach3Un, AttachUn, AgentUn, BillSrUn,
  Dmd2Un, EfrajUn, ListShUn, ShipUn, SrchShUn, VdateHUn, BillloadUn, AddUnitUn;

{$R *.dfm}

/// ////////////////////////////////////////////////////////////////
function TAcListFm.WriteNo(No: String): String;
var
  FirstArray: Array [0 .. 9] of string;
  FirstArray1: Array [0 .. 2] of string;
  SecondArray: Array [0 .. 9] of string;
  ThirdArray: Array [0 .. 9] of string;
  Parts: Array [0 .. 4] of String;
  PartStr: Array [0 .. 4] of String;
  valV, ValCode, Len, I, TempLen: Integer;
  NoString, Txt: string;

begin

  for I := 0 to 4 do
  begin
    Parts[I] := '';
    PartStr[I] := '';
  end;
  FirstArray[1] := 'Ê«Õœ';
  FirstArray[2] := '«À‰«‰';
  FirstArray[3] := 'À·«À…';
  FirstArray[4] := '√—»⁄…';
  FirstArray[5] := 'Œ„”…';
  FirstArray[6] := '” …';
  FirstArray[7] := '”»⁄…';
  FirstArray[8] := 'À„«‰Ì…';
  FirstArray[9] := ' ”⁄…';

  FirstArray1[0] := '√Õœ';
  FirstArray1[1] := '«À‰«';

  SecondArray[1] := '⁄‘—…';
  SecondArray[2] := '⁄‘—Ê‰';
  SecondArray[3] := 'À·«ÀÊ‰';
  SecondArray[4] := '√—»⁄Ê‰';
  SecondArray[5] := 'Œ„”Ê‰';
  SecondArray[6] := '” Ê‰';
  SecondArray[7] := '”»⁄Ê‰';
  SecondArray[8] := 'À„«‰Ê‰';
  SecondArray[9] := ' ”⁄Ê‰';

  ThirdArray[1] := '„«∆…';
  ThirdArray[2] := '„∆ «‰';
  ThirdArray[3] := 'À·«À„«∆…';
  ThirdArray[4] := '√—»⁄„«∆…';
  ThirdArray[5] := 'Œ„”„«∆…';
  ThirdArray[6] := '” „«∆…';
  ThirdArray[7] := '”»⁄„«∆…';
  ThirdArray[8] := 'À„«‰„«∆…';
  ThirdArray[9] := ' ”⁄„«∆…';
  Txt := '';
  I := -1;
  val(No, valV, ValCode);
  if valV = 0 then
  begin
    result := '’›—';
    exit;
  end;
  NoString := Trim(No);
  Len := Length(NoString);
  TempLen := Len;
  Parts[0] := NoString;
  while TempLen >= 3 do
  begin
    TempLen := TempLen - 3;
    I := I + 1;
    Parts[I] := copy(NoString, TempLen + 1, 3);
    NoString := copy(NoString, 0, TempLen);
  end;
  Parts[I + 1] := NoString;
  for I := 0 To 3 do
  begin
    if Length(Parts[I]) > 0 then
      PartStr[I] := GetNo(Parts[I], I, FirstArray, FirstArray1, SecondArray,
        ThirdArray)
      // Else
      // exit;
  end; // end of for

  for I := 3 downto 0 do
    if Length(PartStr[I]) > 0 then
      if Length(PartStr[I - 1]) > 0 then
        if (I > 0) then
          Txt := Txt + ' ' + PartStr[I] + ' Ê'
        else
          Txt := Txt + ' ' + PartStr[I]
      else
        Txt := Txt + ' ' + PartStr[I] + ' ';
  WriteNo := Txt;
end; // end  function

function TAcListFm.GetNo(Ns: String; Power: Integer;
  Frst, Frst1, Scnd, Thrd: array of string): String;
var
  Indx: Array [0 .. 4] of Integer;
  TmpArray: Array [0 .. 2] of string;
  // Tms:String;
  Lngth, J: Integer;
label last;

begin
  { «·¬Õ«œ }
  for J := 0 to 4 do
    Indx[J] := 0;
  for J := 0 to 2 do
    TmpArray[J] := '';

  Lngth := Length(Ns);
  Indx[1] := strtoint(copy(Ns, Lngth, 1));
  TmpArray[0] := Frst[Indx[1]];
  Lngth := Lngth - 1;

  if Lngth > 0 then
  { «·⁄‘—«  }
  begin
    Indx[2] := strtoint(copy(Ns, Lngth, 1));
    if TmpArray[0] <> '' then
      TmpArray[1] := Scnd[Indx[2]]
    else
      TmpArray[1] := Scnd[Indx[2]];
  end;

  if (Indx[2] > 1) and (TmpArray[0] <> '') then
    TmpArray[0] := TmpArray[0] + ' Ê'
  else if (Indx[1] = 1) and (Indx[2] = 1) then
    TmpArray[0] := Frst1[0]
  else if (Indx[1] = 2) and (Indx[2] = 1) then
    TmpArray[0] := Frst1[1];
  // ShowMessage(frst1[12]);

  Lngth := Lngth - 1;
  { «·„∆«  }
  if Lngth > 0 then
  begin
    Indx[3] := strtoint(copy(Ns, Lngth, 1));
    TmpArray[2] := Thrd[Indx[3]];
    if (Indx[3] > 0) and (TmpArray[0] <> '') or (TmpArray[1] <> '') then
      TmpArray[2] := TmpArray[2] + ' Ê'
    else
      Goto last;
  end
  else
    goto last;
last:
  begin
    case Power of
      0:
        begin
          GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1];
        end;
      1:
        begin
          if (Indx[1] = 1) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' √·›'
          else if (Indx[1] = 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' √·›«‰'
          else if (Indx[1] > 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[0] + ' ¬·«›'
          else if (Indx[1] = 0) and (Indx[2] = 1) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' ¬·«›'
          else if (Indx[1] = 0) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1]
          else
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' √·›';

        end; // end of 1
      2:
        begin
          if (Indx[1] = 1) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·ÌÊ‰'
          else if (Indx[1] = 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·ÌÊ‰«‰'
          else if (Indx[1] > 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[0] + ' „·«ÌÌ‰'
          else if (Indx[1] = 0) and (Indx[2] = 1) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·«ÌÌ‰'
          else if (Indx[1] = 0) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1]
          else
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·ÌÊ‰';
        end; // end of 2
      3:
        begin
          if (Indx[1] = 1) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·Ì«—'
          else if (Indx[1] = 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := ' „·Ì«—«‰'
          else if (Indx[1] > 2) and (Indx[2] = 0) and (Indx[3] = 0) then
            GetNo := TmpArray[0] + ' „·Ì«—« '
          else if (Indx[1] = 0) and (Indx[2] = 1) and (Indx[3] = 0) then
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·Ì«—« '
          else
            GetNo := TmpArray[2] + TmpArray[0] + TmpArray[1] + ' „·Ì«—';
        end; // end of 3

    end; // end of case
  end;
end;

/// /////////////////////////////////////////////////////////////////

procedure TAcListFm.BitBtn12Click(Sender: TObject);
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
  BitBtn11Click(Sender);
end;

procedure TAcListFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DmdFm do
  begin
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    if (AccDet.State = dsedit) or (AccDet.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  «·⁄Ê«∆œ √Ê·«');

    if (AccDet.IsEmpty) and (Edit1.Text = '1') then
      ShowMessage
        ('»”„ «··Â Ì« „œÌ— ⁄‰œﬂ ÊÕœÏ „‰ «·√À‰Ì‰ Ì«„«  œ—Ã «·⁄Ê«∆œ «Ê  Õ–› «·›« Ê—… Ê«‰  «Œ «—');
  end;
  crelist := 0;
  if creEfraj = 1 then
  begin
    // 1   DmdFm.load.FilterSQL := 'selectF = 1';
    // 1   DmdFm.Sload.FilterSQL := 'LNum=' + DmdFm.VloadlistNum.AsString +
    // 1     ' and selectF = 0';
    // EfrajFm.close;
  end;

  Edit1.Text := '1';
end;

procedure TAcListFm.Edit1Change(Sender: TObject);
begin
  // if Edit1.Text <> '' then
  // begin
  // if DmdFm.AccList.Locate('ListNum', Edit1.Text, [lopartialkey]) or
  // DmdFm.AccList.Locate('ListNum', strtoint(Edit1.Text) + 1000000000,
  // [lopartialkey]) then
  // begin
  // Edit1.Color := clWhite;
  // Edit1.Font.Color := clblack;
  // end
  // else
  // begin
  // Edit1.Color := clblack;
  // Edit1.Font.Color := clred;
  // end;
  // end;
end;

procedure TAcListFm.BitBtn11Click(Sender: TObject);
var
  q1, q2, m10: real;
begin // 0
  with DmdFm do
  begin // 1
    Units.Locate('Num', AccListUnit.Value, []);
    q1 := UnitsStateValue.Value;
    Units.Locate('Num', AccListUnit2.Value, []);
    q2 := UnitsStateValue.Value;
    // ··Êﬁ…› ⁄·Ï ⁄Ê«∆œ «·„‰«Ê·… «·„ÿ·Ê»…................................................
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
    // ...................................................................................

    AccDet.First;
    while not AccDet.Eof do
    begin // 2
      Income.Locate('IncNum', AccDetAccType.Value, []);
      if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 1) then
      begin // 3
        Store.Locate('Num', AccListweeks.Value, []);
        AccDet.Edit;
        if AccListAdmisMet.Value = 3 then
          AccDetAccValue.Value := StoreWalk.Value +
            (StoreWalk.Value * IncomePerc.Value / 100);;
        if AccListAdmisMet.Value = 2 then
          AccDetAccValue.Value := StoreStore.Value +
            (StoreStore.Value * IncomePerc.Value / 100);;
        if AccListAdmisMet.Value = 1 then
          AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        AccDet.Post;
      end; // 3\\
      if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 0) then
      begin // 4
        Store.Locate('Num', AccListweeks.Value, []);
        AccDet.Edit;
        if AccListAdmisMet.Value = 3 then
          AccDetAccValue.Value := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          AccDetAccValue.Value := StoreStore.Value;
        if AccListAdmisMet.Value = 1 then
          AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        AccDet.Post;
      end; // \\4\\

      if AccDetAccType.Value <> 6 then
      begin // \5
        AccDet.Edit;
        if (AccDetAccType.Value = 9) then
        begin // 6
          if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
          begin // 7
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              (AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
              (AccListQty2.Value * q2 * IncomeStatesNum.Value)
          end // \7\\
          else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
          begin // 8
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              ((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
              (AccListQty2.Value * q2 * IncomeStatesNum.Value)) /
              AccListStates.Value * AccListCars.Value;
          end // \\8\\
          else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value = 1) then
          begin // \\9
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              (AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
              (AccListQty2.Value * q2 * IncomeDirectState.Value)
          end // \\9\\
          else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
            (AccListAdmisMet.Value <> 1) then
          begin // \\10
            AccDetAccValue.Value := q1 * IncomeStatesNum.Value;
            AccDetAccTotal.Value := q2 * IncomeStatesNum.Value *
              AccListWeSpace.Value
          end // \\10\\
          else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
            (AccListAdmisMet.Value = 1) then
          begin // \\11
            AccDetAccValue.Value := q1 * IncomeDirectState.Value;
            AccDetAccTotal.Value := q2 * IncomeDirectState.Value *
              AccListWeSpace.Value;
          end; // \\11\\
        end // \\6\\
        else if (AccDetAccType.Value = 12) then
        begin // \\12
          if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
          begin // \\13
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              (AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
              (AccListQty2.Value * q2 * IncomeStatesNum.Value)
          end // \\13\\
          else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
          begin // \\14
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              ((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
              (AccListQty2.Value * q2 * IncomeStatesNum.Value)) /
              AccListStates.Value * AccListCars.Value;
          end // \\14\\

          else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value = 1) then
          begin // \\15
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              (AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
              (AccListQty2.Value * q2 * IncomeDirectState.Value)
          end // \\15\\
          else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
            (AccListAdmisMet.Value <> 1) then
          begin // \\16
            AccDetAccValue.Value := IncomeStore.Value;
            AccDetAccTotal.Value := IncomeStore.Value * AccListWeSpace.Value;
          end // \\16\\
          else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
            (AccListAdmisMet.Value = 1) then
          begin // \\17
            AccDetAccValue.Value := q1 * IncomeDirectState.Value;
            AccDetAccTotal.Value := q2 * IncomeDirectState.Value *
              AccListWeSpace.Value;
          end; // \\17\\
        end // \\12\\
        else if AccDetAccType.Value = 22 then
        begin // \\18
          if (AccListElectric.Value = 1) then
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1)
              * (AccListGoodsQty.Value + AccListQty2.Value) *
              MIncomeElecVAlue.Value
          else
            AccDetAccTotal.Value := 0;
        end // \\18\\
        ELSE if AccDetAccType.Value = 16 then
        begin // \\19
          if (AccListRemain.Value = 1) and
            (AccListWight.Value <= MIncomeW2.Value) then
          begin // \\20
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              MIncomeV2.Value) * (AccListGoodsQty.Value + AccListQty2.Value);
            // ShowMessage(AccDetAccTotal.AsString);
          end // \\20
          else if (AccListRemain.Value = 1) and
            (AccListWight.Value > MIncomeW1.Value) then
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              MIncomeV1.Value) * (AccListGoodsQty.Value + AccListQty2.Value)
          else
            AccDetAccTotal.Value := 0
        end // \\19\\
        else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 1) then
        begin // \\21
          AccDetAccValue.Value := IncomeRsef.Value;
          AccDetAccTotal.Value := IncomeRsef.Value * AccListWight.Value;
        end // \\21\\
        else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 0) then
        begin // \\22
          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := 0;
        end // \\22\\
        else if AccListKemawea.Value = 1 then
        begin // \\23
          { case AccListAdmisMet.Value of
            1:AccDetAccValue.Value:=IncomeDirect.Value+(IncomeDirect.Value*IncomePerc.Value/100);
            2:AccDetAccValue.Value:=IncomeStore.Value +(IncomeStore.Value*IncomePerc.Value/100);
            3:AccDetAccValue.Value:=IncomeRsef.Value  +(IncomeRsef.Value*IncomePerc.Value/100);
            end; //  case
            AccDetAccTotal.Value:=AccDetAccValue.Value*AccListWeSpace.Value; }

          // .................................................................................
          case AccListAdmisMet.Value of
            1:
              BEGIN
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  if (AccListUnit.Value = 1) then
                    m10 := m10 + (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                  if (AccListUnit.Value = 2) then
                    m10 := m10 + (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                  if (AccListUnit2.Value = 1) then
                    m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                  if (AccListUnit2.Value = 2) then
                    m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                END
                ELSE
                  AccDetAccValue.Value := IncomeDirect.Value +
                    (IncomeDirect.Value * IncomePerc.Value / 100);
              END;
            2:
              BEGIN
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  if (AccListUnit.Value = 1) then
                    m10 := m10 + (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                  if (AccListUnit.Value = 2) then
                    m10 := m10 + (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                  if (AccListUnit2.Value = 1) then
                    m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                  if (AccListUnit2.Value = 2) then
                    m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                END

                ELSE
                  AccDetAccValue.Value := IncomeStore.Value +
                    (IncomeStore.Value * IncomePerc.Value / 100);
              END;
            3:
              BEGIN
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  if (AccListUnit.Value = 1) then
                    m10 := m10 + (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                  if (AccListUnit.Value = 2) then
                    m10 := m10 + (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                  if (AccListUnit2.Value = 1) then
                    m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                  if (AccListUnit2.Value = 2) then
                    m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                END

                ELSE
                  AccDetAccValue.Value := IncomeRsef.Value +
                    (IncomeRsef.Value * IncomePerc.Value / 100);
              END;

          end; // case
          IF (IncomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := (m10 * IncomePerc.Value / 100);;
          END
          ELSE
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  if (AccListUnit.Value = 1) then
                    m10 := m10 + (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                  if (AccListUnit.Value = 2) then
                    m10 := m10 + (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                  if (AccListUnit2.Value = 1) then
                    m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                  if (AccListUnit2.Value = 2) then
                    m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                END
                ELSE
                  AccDetAccValue.Value := IncomeDirect.Value;
              END;
            2:
              BEGIN
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  if (AccListUnit.Value = 1) then
                    m10 := m10 + (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                  if (AccListUnit.Value = 2) then
                    m10 := m10 + (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                  if (AccListUnit2.Value = 1) then
                    m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                  if (AccListUnit2.Value = 2) then
                    m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                END
                ELSE
                  AccDetAccValue.Value := IncomeStore.Value;
              END;
            3:
              BEGIN
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  if (AccListUnit.Value = 1) then
                    m10 := m10 + (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                  if (AccListUnit.Value = 2) then
                    m10 := m10 + (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                  if (AccListUnit2.Value = 1) then
                    m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                  if (AccListUnit2.Value = 2) then
                    m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                END
                ELSE
                  AccDetAccValue.Value := IncomeRsef.Value;
              END;

          end; // case
          IF (IncomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          // ShowMessage(AccDetAccTotal.AsString);
        end; // 24\\
        if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
          (AccDetAccTotal.Value < IncomeMin.Value) and
          (AccListAdmisMet.Value = 1) then
          AccDetAccTotal.Value := IncomeMin.Value;
        if { (AccListUnit.Value=3)or(AccListUnit.Value=4))and }
          (AccDetAccTotal.Value < IncomeMin2.Value) and
          (AccListAdmisMet.Value <> 1) then
        begin // 25
          AccDetAccTotal.Value := IncomeMin2.Value;
        end; // 25//

        { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
        if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
        begin // 26
          AccDet.Edit;
          AccDetFromDate.Value := AccListArriveDate.Value;
          AccDetToDate.Value := AccListListDate.Value;
        end; // 26//
        if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
        begin // 27
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 27//
        { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
        if (AccDetAccType.Value = 16) and (AccListRemain.Value = 1) then
        begin // 28
          AccDet.Edit;
          AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
          AccDetToDate.Value := AccListListDate.Value;
        end; // 28//
        if (AccDetAccType.Value = 16) and (AccListRemain.Value = 0) then
        begin // 29
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 29//
        AccDet.Post;
      end; // 5//
      { ----------------------- «—ÌŒ «· Œ“Ì‰-------------------------- }
      if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value <> 0) then
      begin // 30
        AccDet.Edit;
        AccDetFromDate.Value := AccListEndEmpDate.Value;
        AccDetToDate.Value := AccListAllwedDate.Value;
      end; // 30//
      if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value = 0) then
      begin // 31
        AccDet.Edit;
        AccDetFromDate.Clear;
        AccDetToDate.Clear;
      end; // 31//

      AccDet.Next;
    end; // 2 while not AccDet.Eof do
  end; // 1  with DmdFm do
end; // 0

procedure TAcListFm.FormActivate(Sender: TObject);
var
  I: smallint;
begin
  if DmdFm.PermUnlockBill.Value = true then
    DBCheckBox11.Visible := true
  else
    DBCheckBox11.Visible := False;

  if AcListFm.sEdit4.Text = '3' then
  begin
    DBEdit7.Enabled := true;
    DBLookupComboBox4.Enabled := true;
  end
  else if AcListFm.sEdit4.Text = '2' then
  begin
    if DmdFm.PermAdorfrze.Value = true then
      DBEdit7.Enabled := true
    else
      DBEdit7.Enabled := False;

    if DmdFm.PermAdorfrze.Value = true then
      DBLookupComboBox4.Enabled := true
    else
      DBLookupComboBox4.Enabled := False;
  end
  else if AcListFm.sEdit4.Text = '1' then
  begin
    DBEdit7.Enabled := False;
    DBLookupComboBox4.Enabled := False;
  end;

  if (EditFlag = 0) then
    AcListFm.Button3.SetFocus;

  if (AccType = 4) or (AccType = 5) or (AccType = 8) then
  begin
    AcListFm.DBLookupComboBox6.Visible := true;
    AcListFm.DBRadioGroup1.Visible := true;
  end
  else
  begin
    AcListFm.DBLookupComboBox6.Visible := False;
    AcListFm.DBRadioGroup1.Visible := False;
  end;
   // «—ÌŒ «·Ê’Ê· Ê«‰ Â«¡ «· ›—Ì€
  if (DmdFm.AccListListType.Value=1)or(DmdFm.AccListListType.Value=2)or(DmdFm.AccListListType.Value=9) then
   begin
    AcListFm.sDBDateEdit1.ReadOnly := true;
    AcListFm.sDBDateEdit2.ReadOnly := true;
    end
    else
    begin
      AcListFm.sDBDateEdit1.ReadOnly := false;
      AcListFm.sDBDateEdit2.ReadOnly := false;
    end ;
     // €ÌÌ— ·Ê‰ ‰Ê⁄ «·›« Ê—…
  if (DmdFm.AccListSubType2.Value=1) then
   begin
    AcListFm.Label22.font.Color:=clGreen;
    AcListFm.Label22.Color:=$00D7FFD7;
    end
    else
   if (DmdFm.AccListSubType2.Value=2)or(DmdFm.AccListSubType2.Value=3) then
    begin
    AcListFm.Label22.font.Color:=clred;
    AcListFm.Label22.Color:=$00BBBBFF;
    end
    else
     if (DmdFm.AccListSubType2.Value=4)then
    begin
    AcListFm.Label22.font.Color:=clblue;
    AcListFm.Label22.Color:=$00FFE2A6;
    end;
    if DmdFm.AccListDelF.Value=1 then
    begin
      sDBDateEdit4.Visible:=true;
      DBEdit19.Visible:=true;
      Label31.Visible:=true;
    end
    else
    if DmdFm.AccListDelF.Value=3 then
    begin
      DBEdit26.Visible:=true;
    end
    else
    begin
      sDBDateEdit4.Visible:=false;
      DBEdit19.Visible:=false;
      Label31.Visible:=false;
    end;
end;

procedure TAcListFm.Label1Click(Sender: TObject);
begin
  attachType := 4;
  with DmdFm do
  begin
    Attach.Close;
    Attach.ParamByName('VNum').Value := AccListListNum.Value;
    Attach.ParamByName('Vtype').Value := AccListListType.Value;
    Attach.Execute;
    Attach.Refresh;
  end;

  Application.CreateForm(TAttachFm, AttachFm);
  AttachFm.ShowModal;
  AttachFm.Free;
end;

procedure TAcListFm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  { if (((Column.Field = DmdFm.AccDetTypeNm) or
    (Column.Field = DmdFm.AccDetAccValue) or
    (Column.Field = DmdFm.AccDetAccTotal)) AND (DmdFm.AccDetAccTotal.Value <> 0))
    then
    begin
    DBGrid1.Canvas.Font.Color := clred;
    DBGrid1.Canvas.Font.Color := clred;
    DBGrid1.Canvas.Font.Color := clred;
    end
    else if gdselected in State then
    DBGrid1.Canvas.Font.Color := clHighlightText
    else
    DBGrid1.Canvas.Font.Color := Column.Font.Color;

    DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top, Column.Field.DisplayText);
  }
end;

procedure TAcListFm.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin

  if (((Column.Field = DmdFm.AccDetTypeNm) or
    (Column.Field = DmdFm.AccDetAccValue) or
    (Column.Field = DmdFm.AccDetAccTotal)) AND (DmdFm.AccDetAccTotal.Value <> 0))
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

procedure TAcListFm.BitBtn15Click(Sender: TObject);
begin
  Edit2.Text := '1';
  with DmdFm do
  begin
    if AccList.State = dsinsert then
    begin

      // Application.CreateForm(TAdmiFm, AdmiFm);
      // AdmiFm.DateTimePicker1.Date := AccListArriveDate.Value + 7;
      // AdmiFm.DateTimePicker2.Date := AccListArriveDate.Value - 7;

      // Ships.Locate('Num', AccListShipNum.Value, []);
      // VloadlistQ.close;
      // VloadlistQ.ParamByName('VTypeFROM').Value := ShipsNumAuto.Value;
      // VloadlistQ.ParamByName('VTypeTO').Value := ShipsNumAuto.Value;

      // VloadlistQ.ParamByName('VDateFROM').Value := AdmiFm.DateTimePicker2.Date;
      // VloadlistQ.ParamByName('VDateTO').Value := AdmiFm.DateTimePicker1.Date;
      // VloadlistQ.Execute;
      // VloadlistQ.Open;

      // Vloadlist.FilterSQL := 'TransNUm = ' + ShipsNumAuto.AsString +
      // ' and ArriveDate>= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',
      // AdmiFm.DateTimePicker2.Date)) + ' and ArriveDate<= ' +
      // QuotedStr(FormatDateTime('yyyy-mm-dd', AdmiFm.DateTimePicker1.Date));
      // LoadList.Filtered:=true;
      // LoadList.Filter:='TransNUm = '+ShipsNum.AsString+' and ArriveDate >= ' +QuotedStr(DateToStr(AdmiFm.DateTimePicker2.Date))+' AND arriveDate <= ' +QuotedStr(DateToStr(AdmiFm.DateTimePicker1.Date));
      // load.Locate('Billloading', AccListBillNum.Value, []);
      // Application.CreateForm(TAdmiFm,AdmiFm);
      // ad.DBGrid2.BringToFront;
      // LoadList.Filtered:=False;
      // AdmiFm.ShowModal;
      // AdmiFm.Free;
    end;
  end;
end;

procedure TAcListFm.Label21Click(Sender: TObject);
begin
  attachType := 5;
  with DmdFm do
  begin
    // Attach.Filtered:=false;
    // *    Attach.FilterSQL := 'ListType =5';
    Attach.Close;
    Attach.ParamByName('VNum').Value := AccListListNum.Value;
    Attach.ParamByName('Vtype').Value := 5;
    Attach.Execute;

    // if not Attach.IsEmpty then
    // begin
    AttachD.Close;
    AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
    AttachD.ParamByName('VNum').Value := AttachListNum.Value;
    AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
    AttachD.Execute;
    // end;
    // Attach.Filtered:=True;
  end;

  Application.CreateForm(TAttach2Fm, Attach2Fm);
  Attach2Fm.ShowModal;
  Attach2Fm.Free;

end;

procedure TAcListFm.Timer1Timer(Sender: TObject);
var
  I: smallint;
begin

  with DmdFm do
  begin
    Attach.Close;
    Attach.ParamByName('VNum').Value := AccListListNum.Value;
    Attach.ParamByName('Vtype').Value := 4;
    Attach.Execute;

    if not Attach.IsEmpty then
      Label1.Font.Color := clred
    else
      Label1.Font.Color := clBlue;

    Attach.Close;
    Attach.ParamByName('VNum').Value := AccListListNum.Value;
    Attach.ParamByName('Vtype').Value := 5;
    Attach.Execute;

    if not Attach.IsEmpty then
      Label21.Font.Color := clred
    else
      Label21.Font.Color := clBlue;

    // if SAttach.Locate('ListNum;ListType', vararrayof([AccListListNum.Value, 4]
    // ), []) then
    // Label1.Font.Color := clred
    // else
    // Label1.Font.Color := clBlue;
    // if SAttach.Locate('ListNum;ListType', vararrayof([AccListListNum.Value, 5]
    // ), []) then
    // Label21.Font.Color := clred
    // else
    // Label21.Font.Color := clBlue;
  end;
  if DmdFm.AccListPaidF.Value = 0 then
    DBText6.Font.Color := clred
  else
    DBText6.Font.Color := clGreen;

  if DmdFm.AccListloukof.Value = 0 then
  begin
    DBText9.Font.Color := clred;
  end
  else
  begin
    DBText9.Font.Color := clGreen;
  end;

  if DmdFm.AccListDelF.Value = 1 then
  begin
    DBText10.Font.Color := clred;
  end

end;

procedure TAcListFm.Timer2Timer(Sender: TObject);
begin
  { with DmdFm do
    begin
    if SAttach.Locate('ListNum;ListType',vararrayof([AccListListNum.Value,5]),[])then
    Label21.Font.Color:=clRed
    else
    Label21.Font.Color:=clblue;
    end; }
end;

procedure TAcListFm.DBLookupComboBox3Enter(Sender: TObject);
begin
  LoadKeyBoardLayout('00000401', Klf_Activate);
end;

procedure TAcListFm.DBLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then // -- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
  Begin
    PerForm(WM_NEXTDLGCTL, 0, 0) // -- ﬁœ„ «·Ï «·«„«„
  End

end;

procedure TAcListFm.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label1.Font.Style := [fsUnderline];
end;

procedure TAcListFm.Label1MouseLeave(Sender: TObject);
begin
  Label1.Font.Style := [];
end;

procedure TAcListFm.DBEdit10Enter(Sender: TObject);
begin
  // LoadKeyBoardLayout('00000409',Klf_Activate)
end;

procedure TAcListFm.FormShow(Sender: TObject);
var
  I: smallint;
begin
  with DmdFm do
  begin
    Attach.Close;
    Attach.ParamByName('VNum').Value := AccListListNum.Value;
    Attach.ParamByName('Vtype').Value := 4;
    Attach.Execute;

    // if not Attach.IsEmpty then
    // begin
    // AttachD.Close;
    // AttachD.ParamByName('VNum1').Value := AttachAttachNum.Value;
    // AttachD.ParamByName('VNum').Value := AttachListNum.Value;
    // AttachD.ParamByName('Vtype').Value := AttachListtype.Value;
    // AttachD.Execute;

    if not Attach.IsEmpty then
      Label1.Font.Color := clred
    else
      Label1.Font.Color := clBlue;

    Attach.Close;
    Attach.ParamByName('VNum').Value := AccListListNum.Value;
    Attach.ParamByName('Vtype').Value := 5;
    Attach.Execute;

    if not Attach.IsEmpty then
      Label21.Font.Color := clred
    else
      Label21.Font.Color := clBlue;
  end;
  if DmdFm.AccListPaidF.Value = 0 then
    DBText6.Font.Color := clred
  else
    DBText6.Font.Color := clGreen;

  if DmdFm.AccListloukof.Value = 0 then
  begin
    DBText9.Font.Color := clred;
  end
  else
  begin
    DBText9.Font.Color := clGreen;
  end;

  if DmdFm.AccListDelF.Value = 1 then
  begin
    DBText10.Font.Color := clred;
  end;

  Edit2.Text := '1';

  if (DmdFm.PermRga.Value = False) or (AccType = 1) then
  begin
    DBEdit16.Visible := False;
    Label30.Visible := False;
  end
  else
  begin
    DBEdit16.Visible := true;
    Label30.Visible := true;
  end;

end;

procedure TAcListFm.sBitBtn1Click(Sender: TObject);
begin
  Edit2.Text := '0';
  Close;

end;

procedure TAcListFm.sBitBtn2Click(Sender: TObject);
begin

  with DmdFm do
  begin

    QUnitCount.Close;
    QUnitCount.ParamByName('num').Value := AccListListNum.Value;
    QUnitCount.Open;

    QBoCount.Close;
    QBoCount.ParamByName('num').Value := AccListListNum.Value;
    QBoCount.Open;

    sMemo1.Clear;

    // sMemo1.Lines.Add(' œÊ·… ·Ì»Ì«');
    sMemo1.Lines.Add(' «·„‰ÿﬁ… «·Õ—… »„’—« … ');
    sMemo1.Lines.Add('ﬁ«∆„… Õ”«» ⁄Ê«∆œ«·„‰«Ê·… Ê«· Œ“Ì‰ ');
    sMemo1.Lines.Add(' —ﬁ„ «·›« Ê—…: ' + AccListListNum.AsString);
    sMemo1.Lines.Add(' «·»«—ﬂÊœ : ' + AccListbarcade.Value);
    // sMemo1.Lines.Add(' ‰Ê⁄Â« ' + QUnitCountun.Value);
    // sMemo1.Lines.Add('‰Ê⁄Â« ' + QBoCountunB.Value);
    sMemo1.Lines.Add(' «·ÊﬂÌ·' + AccListAgNm.Value);
    // sMemo1.Lines.Add('Ê’› «·»÷«⁄…' + AccListGoodsname.Value);
    sMemo1.Lines.Add('≈Ã„«·Ì «·›« Ê—… ' + FloatToStr(AccListNTotal.Value));

    // AccList.Edit;
    // AccListQRALL.Value := sMemo1.Text;
    // AccList.Post;

  end;

  // Application.CreateForm(TRepFm, RepFm);
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\reports\AcList.fr3');
  frxReport1.Variables.Variables['ASDM'] := '''«’· ··“»Ê‰''';
  if DmdFm.AccListSapa.Value = 2 then
    frxReport1.Variables.Variables['ASD'] := ''' ’⁄»…'''
  else
    frxReport1.Variables.Variables['ASD'] := ''' ''';
  frxReport1.ShowReport(true);
  // Free;
end;

procedure TAcListFm.sBitBtn3Click(Sender: TObject);
var
  pr1, pr2: String;
  sss: Integer;
  w1, s, t, S1: string;
  nwes: String;
  I: Integer;
  iniflie:TIniFile;

begin

  if CheckBox1.State = cbUnchecked then
    raise Exception.Create('«”› «·›« Ê—… €Ì— ’›—Ì…')
  else
  begin

    DmdFm.AccDet.First;
    while not DmdFm.AccDet.Eof do
    begin
      DmdFm.AccDet.Edit;
      DmdFm.AccDetAccValue.Value := 0;
      DmdFm.AccDetAccTotal.Value := 0;
      DmdFm.AccDetFromDate.Clear;
      DmdFm.AccDetToDate.Clear;
      DmdFm.AccDet.Post;

      DmdFm.AccDet.Next;

    end;

    with DmdFm do
    begin
       iniflie:=TIniFile.Create(changefileext(paramstr(0), '.INI'));
        try
          pr1 := iniflie.readstring('Data', 'Print Fatora', '');
          pr2 := iniflie.readstring('Data', 'Print Barcode', '');
        finally
            iniflie.Free;
        end;

      // Application.CreateForm(TRepFm, RepFm);
      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
        '\reports\AcList0.fr3');

      if DmdFm.AccListSapa.Value = 2 then

        frxReport1.Variables.Variables['ASD'] := ''' ’⁄»…'''
      else
        frxReport1.Variables.Variables['ASD'] := ''' ''';

      frxReport1.PrintOptions.Printer := pr1;
      // RepFm.frxReport1.PrintOptions.Copies:=4;

      frxReport1.PrintOptions.ShowDialog := False;
      // RepFm.frxReport1.ShowReport(True);

      // RepFm.frxReport1.Variables.Variables['ASDM']:= '''«’· ··“»Ê‰''';
      frxReport1.PrepareReport();
      // RepFm.frxReport1.ShowReport(false);
      frxReport1.Print;

    end;
  end;

end;

procedure TAcListFm.sBitBtn4Click(Sender: TObject);
var
  q1, q2, m10, m11, m12, ShipType, ShipMet, oldvalue, oldvalue2, QtyType1,
    QtyType2, QtyType3, QtyType4, GoodsQty, GoodsQty2: real;
  I: smallint;
  bookmark: TBookmark;
begin // 0
  lockOrDel := 0;

  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');

      DmdFm.AccList.Edit;
   //  DmdFm.AccListprogress.Value:=1;
     DmdFm.AccList.Post;

    AccDet.Close;
    AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    AccDet.Execute;

    Income.First;
    while not Income.Eof do
    begin
      AccDet.Insert;
      AccDetAccType.Value := IncomeIncNum.Value;
      accdetAccNum.Value := AccListListNum.Value;
      accdetListType.Value := AccListListType.Value;
      AccDet.Post;

      case AccDetAccType.Value of

        1:
          begin
            sButton1Click(Sender);

          end;
        2:
          begin
            sButton2Click(Sender);
          end;
        3:
          begin
            sBitBtn8Click(Sender);
          end;

        4:
          begin
            sBitBtn10Click(Sender);
          end;
        6:
          begin
            sButton6Click(Sender);
            sButton3Click(Sender);
          end;
        8:
          begin
            sBitBtn11Click(Sender);
          end;
        9:
          begin
            sButton9Click(Sender);
          end;

        10:
          begin
            sButton10Click(Sender);
          end;

        12:
          begin
            sButton12Click(Sender);
          end;

        13:
          begin
            sButton13Click(Sender);
          end;
        14:
          begin
            sBitBtn21Click(Sender);
          end;

        16:
          begin

            sButton16Click(Sender);
            sBitBtn6Click(Sender);

          end;
        18:
          begin
            sBitBtn22Click(Sender);
          end;
        19:
          begin
            sBitBtn23Click(Sender);
          end;

        22:
          begin
            sButton22Click(Sender);
            sBitBtn5Click(Sender);
          end;

        23:
          begin
            sButton23Click(Sender);
          end;
      else
        begin

        end;
      end;

      Income.Next;
    end;
  end;

  try
    if creEfraj = 1 then
    begin

      with DmdFm do
      begin

        if VSloadH.Locate('BillNum', strtoint(s), []) then

      end;
    end;
  except
  end;

  BitBtn1Click(Sender);

  if EditFlag = 1 then
    sBitBtn1.Enabled := true;
  sBitBtn19Click(Sender);
 {  DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AccListListNum.AsString+',0,'+QuotedStr('≈œ—«Ã «·⁄Ê«∆œ-›« Ê—… ÃœÌœ…')+')';
  DmdFm.generalq.ExecSQL;}

end;

procedure TAcListFm.sButton100Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value <> 1) and (AccDetAccType.Value <> 2) and
      (AccDetAccType.Value <> 10) then
    begin // 1//1//
      if AccListKemawea.Value = 1 then
      begin // \\23

        // .................................................................................

        case AccListAdmisMet.Value of
          1:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeDirect.Value +
                  (IncomeDirect.Value * IncomePerc.Value / 100);
            END;
          2:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeStore.Value +
                  (IncomeStore.Value * IncomePerc.Value / 100);
            END;
          3:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
              END

              ELSE
                AccDetAccValue.Value := IncomeRsef.Value +
                  (IncomeRsef.Value * IncomePerc.Value / 100);
            END;

        end; // case
        IF (IncomeTypeFator.Value = 2) THEN
        BEGIN
          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := (m10 * IncomePerc.Value / 100);;
        END
        ELSE
          AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

      end // 23
      else
      begin // 24
        case AccListAdmisMet.Value of
          1:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeDirect.Value;
            END;
          2:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeStore.Value;
            END;
          3:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeRsef.Value;
            END;

        end; // case
        IF (IncomeTypeFator.Value = 2) THEN
        BEGIN
          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := m10;
        END
        ELSE
          AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        // ShowMessage(AccDetAccTotal.AsString);
      end; // 24\\
    end; // 1//1//1//

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton10Click(Sender: TObject);
var
  m10, m11: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 10) then
    begin

      if (AccListRoafe.Value = 1) then
      begin

        if not AccListCars.IsNull then
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);
            if SincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListAddCount.Value > 0 then
                if not SincomeRsef.IsNull then
                begin
                  m11 := m11 + VUnitAccListAddCount.Value;
                  AccDetAccValue.Value := SincomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIncomeRHAYAS.Value * VUnitAccListRofaQ.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin

            AccDetAccValue.Value := 0;
            if ((AccListStates.Value = 0) OR (AccListStates.IsNull)) then
            begin
              AccDetAccTotal.Value := ((m10 / 1) * AccListCars.Value);

            end
            else
            begin
              AccDetAccTotal.Value :=
                ((m10 / AccListStates.Value) * AccListCars.Value);

            end;
          end;

        end
        else
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);
            if SincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListAddCount.Value > 0 then
                if not SincomeRsef.IsNull then
                begin
                  // m10 := m10 + VUnitAccListQtityNormal.Value;
                  AccDetAccValue.Value := SincomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIncomeRHAYAS.Value * VUnitAccListAddCount.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          end;

        end;

      end
      else
      begin
        if not AccListCars.IsNull then
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);
            if SincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListRofaQ.Value > 0 then
                if not SincomeRsef.IsNull then
                begin
                  m11 := m11 + VUnitAccListRofaQ.Value;
                  AccDetAccValue.Value := SincomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIncomeRHAYAS.Value * VUnitAccListRofaQ.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin
            AccDetAccValue.Value := 0;
            if ((AccListStates.Value = 0) OR (AccListStates.IsNull)) then
            begin
              AccDetAccTotal.Value := ((m10 / 1) * AccListCars.Value);

            end
            else
            begin
              AccDetAccTotal.Value :=
                ((m10 / AccListStates.Value) * AccListCars.Value);

            end;
          end;

        end
        else
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);
            if SincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListRofaQ.Value > 0 then
                if not SincomeRsef.IsNull then
                begin
                  m11 := m11 + VUnitAccListRofaQ.Value;
                  AccDetAccValue.Value := SincomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIncomeRHAYAS.Value * VUnitAccListRofaQ.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          end;

        end;

      end;
      if AccDetAccTotal.Value < IncomeMin.Value then
        AccDetAccTotal.Value := IncomeMin.Value;
    end;

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton11Click(Sender: TObject);
var
  q1, q2, m10, m11: real;
begin

  q1 := 0;
  q2 := 0;
  m10 := 0;
  m11 := 0;

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 12) then
    begin // \\12
      // *****************************************************

      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin

        // *****************************************************

        if ((VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
          or (VUnitAccListNumUnit.Value = 7) or (VUnitAccListNumUnit.Value = 8)
          or (VUnitAccListNumUnit.Value = 9) or (VUnitAccListNumUnit.Value = 10)
          or (VUnitAccListNumUnit.Value = 11)) and (AccListAdmisMet.Value <> 1)
          and (AccListCars.IsNull) then
        begin // \\13

          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value *
            SIincomeStatesNum.Value);

          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccTotal.Value + m10;

        end // \\13\\
        else if ((VUnitAccListNumUnit.Value = 1) or
          (VUnitAccListNumUnit.Value = 2) or (VUnitAccListNumUnit.Value = 7) or
          (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9) or
          (VUnitAccListNumUnit.Value = 10) or (VUnitAccListNumUnit.Value = 11))
          and (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
        begin // \\14

          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value *
            SIincomeStatesNum.Value) / AccListStates.Value * AccListCars.Value;;

          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccTotal.Value + m10;
        end // \\14\\

        else if ((VUnitAccListNumUnit.Value = 1) or
          (VUnitAccListNumUnit.Value = 2) or (VUnitAccListNumUnit.Value = 7) or
          (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9) or
          (VUnitAccListNumUnit.Value = 10) or (VUnitAccListNumUnit.Value = 11))
          and (AccListAdmisMet.Value = 1) then
        begin // \\15
          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value *
            SiincomeDirectState.Value);

          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccTotal.Value + m10;

          // AccDetAccValue.Value := 0;
          // AccDetAccTotal.Value :=
          // (AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
          // (AccListQty2.Value * q2 * IncomeDirectState.Value)
        end // \\15\\
        else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
          (AccListAdmisMet.Value <> 1) then
        begin // \\16

          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          AccDetAccValue.Value := sIincomeStore.Value;
          AccDetAccTotal.Value := sIincomeStore.Value * AccListWeSpace.Value;
        end // \\16\\
        else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
          (AccListAdmisMet.Value = 1) then
        begin // \\17
          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (UnitsStateValue.Value * SiincomeDirectState.Value);

          AccDetAccValue.Value := m10;
          AccDetAccTotal.Value := m10 * AccListWeSpace.Value;
        end; // \\17\\
        VUnitAccList.Next;

      end;
    end; // \\12\\
    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton12Click(Sender: TObject);
var
  q1, q2, m10, m11: real;
begin

  q1 := 0;
  q2 := 0;
  m10 := 0;
  m11 := 0;

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 12) then
    begin // \\12
      // *****************************************************

      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin

        // *****************************************************

        if ((VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
          or (VUnitAccListNumUnit.Value = 7) or (VUnitAccListNumUnit.Value = 8)
          or (VUnitAccListNumUnit.Value = 9) or (VUnitAccListNumUnit.Value = 10)
          or (VUnitAccListNumUnit.Value = 11)) and (AccListAdmisMet.Value <> 1)
          and (AccListCars.IsNull) then
        begin // \\13

          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value *
            SIncomeStatesNum.Value);

          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccTotal.Value + m10;

        end // \\13\\
        else if ((VUnitAccListNumUnit.Value = 1) or
          (VUnitAccListNumUnit.Value = 2) or (VUnitAccListNumUnit.Value = 7) or
          (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9) or
          (VUnitAccListNumUnit.Value = 10) or (VUnitAccListNumUnit.Value = 11))
          and (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
        begin // \\14

          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value *
            SIncomeStatesNum.Value) / AccListStates.Value * AccListCars.Value;;

          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccTotal.Value + m10;
        end // \\14\\

        else if ((VUnitAccListNumUnit.Value = 1) or
          (VUnitAccListNumUnit.Value = 2) or (VUnitAccListNumUnit.Value = 7) or
          (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9) or
          (VUnitAccListNumUnit.Value = 10) or (VUnitAccListNumUnit.Value = 11))
          and (AccListAdmisMet.Value = 1) then
        begin // \\15
          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value *
            SincomeDirectState.Value);

          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccTotal.Value + m10;

          // AccDetAccValue.Value := 0;
          // AccDetAccTotal.Value :=
          // (AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
          // (AccListQty2.Value * q2 * IncomeDirectState.Value)
        end // \\15\\
        else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
          (AccListAdmisMet.Value <> 1) then
        begin // \\16

          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);

          AccDetAccValue.Value := sIncomeStore.Value;
          AccDetAccTotal.Value := sIncomeStore.Value * AccListWeSpace.Value;
        end // \\16\\
        else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
          (AccListAdmisMet.Value = 1) then
        begin // \\17
          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);

          Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          m10 := m10 + (UnitsStateValue.Value * SincomeDirectState.Value);

          AccDetAccValue.Value := m10;
          AccDetAccTotal.Value := m10 * AccListWeSpace.Value;
        end; // \\17\\
        VUnitAccList.Next;

      end;
    end; // \\12\\
    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton13Click(Sender: TObject);
var
  m10: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 13) and (AccListMezan.Value = 1) then
    begin // \\21

      m10 := 0;

      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin
        if ((VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
          or (VUnitAccListNumUnit.Value = 7) or (VUnitAccListNumUnit.Value = 8)
          or (VUnitAccListNumUnit.Value = 9) or (VUnitAccListNumUnit.Value = 10)
          or (VUnitAccListNumUnit.Value = 11)) then
        begin
          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);
          m10 := (m10 + (sIncomeRHAYAS.Value * VUnitAccListAddCount.Value));

          AccDetAccTotal.Value := m10;

        end
        else
        begin
          SMIncome.Locate('ShipType;ShipMet;NUmunit',
            vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
          SIncome.Locate('IncNum', AccDetAccType.Value, []);

          AccDetAccValue.Value := SincomeRsef.Value;
          AccDetAccTotal.Value := SincomeRsef.Value * AccListWight.Value;

        end;

        VUnitAccList.Next;
      end;

    end // \\21\\
    else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 0) then
    begin // \\22
      AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := 0;
    end; // \\22\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton14Click(Sender: TObject);
var
  m10: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 13) and (AccListMezan.Value = 1) then
    begin // \\21

      m10 := 0;

      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin
        if ((VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
          or (VUnitAccListNumUnit.Value = 7) or (VUnitAccListNumUnit.Value = 8)
          or (VUnitAccListNumUnit.Value = 9) or (VUnitAccListNumUnit.Value = 10)
          or (VUnitAccListNumUnit.Value = 11)) then
        begin
          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          m10 := (m10 + (sIincomeRHAYAS.Value * VUnitAccListAddCount.Value));

          AccDetAccTotal.Value := m10;

        end
        else
        begin
          SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
            vararrayof([strtoint(sEdit1.Text), 1, 1,
            VUnitAccListNumUnit.Value]), []);
          SiIncome.Locate('IncNum', AccDetAccType.Value, []);

          AccDetAccValue.Value := SiIncomeRsef.Value;
          AccDetAccTotal.Value := SiIncomeRsef.Value * AccListWight.Value;

        end;

        VUnitAccList.Next;
      end;

    end // \\21\\
    else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 0) then
    begin // \\22
      AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := 0;
    end; // \\22\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton15Click(Sender: TObject);
var
  m10: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if AccDetAccType.Value = 16 then
    begin // \\19
      SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
        vararrayof([strtoint(sEdit1.Text), 1, 1,
        VUnitAccListNumUnit.Value]), []);
      SiIncome.Locate('IncNum', AccDetAccType.Value, []);

      m10 := 0;
      if (AccListRemain.Value <> 0) then
      begin

        if VUnitAccListNumUnit.Value = 4 then
        begin
          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            if VUnitAccListNumUnit.Value = 4 then
              m10 := m10 + VUnitAccListAddCount.Value;

            VUnitAccList.Next;

          end;
          if (AccListRemain.Value = 1) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
          begin
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SmincomesV2.Value) * (m10);
            // ShowMessage(AccDetAccTotal.AsString);
          end
          else if (AccListRemain.Value = 2) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SMIncomesV1.Value) * (m10)
          else
            AccDetAccTotal.Value := 0;

        end
        else if not(AccListNum1.IsNull) then
        begin
          if (AccListRemain.Value = 1) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
          begin
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SmincomesV2.Value) * (AccListNum1.Value);
            // ShowMessage(AccDetAccTotal.AsString);
          end
          else if (AccListRemain.Value = 2) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SMIncomesV1.Value) * (AccListNum1.Value)
          else
            AccDetAccTotal.Value := 0;
        end;

      end
      else
        AccDetAccTotal.Value := 0;

    end;

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton16Click(Sender: TObject);
var
  m10: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if AccDetAccType.Value = 16 then
    begin // \\19
      SMIncome.Locate('ShipType;ShipMet;NUmunit',
        vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
      SIncome.Locate('IncNum', AccDetAccType.Value, []);
      m10 := 0;
      if (AccListRemain.Value <> 0) then
      begin

        if VUnitAccListNumUnit.Value = 4 then
        begin
          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            if VUnitAccListNumUnit.Value = 4 then
              m10 := m10 + VUnitAccListAddCount.Value;

            VUnitAccList.Next;

          end;
          if (AccListRemain.Value = 1) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
          begin
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SmincomeV2.Value) * (m10);
            // ShowMessage(AccDetAccTotal.AsString);
          end
          else if (AccListRemain.Value = 2) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SMIncomeV1.Value) * (m10)
          else
            AccDetAccTotal.Value := 0;

        end
        else if not(AccListNum1.IsNull) then
        begin
          if (AccListRemain.Value = 1) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
          begin
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SmincomeV2.Value) * (AccListNum1.Value);
            // ShowMessage(AccDetAccTotal.AsString);
          end
          else if (AccListRemain.Value = 2) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
            AccDetAccTotal.Value :=
              (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6) *
              SMIncomeV1.Value) * (AccListNum1.Value)
          else
            AccDetAccTotal.Value := 0;
        end;

      end
      else
        AccDetAccTotal.Value := 0;

    end;

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton17Click(Sender: TObject);
var
   m10,peak_value1,peak_value2: real;
  arrive_date,list_date:TDateTime;
  enddate:TDate;
begin
  with DmdFm do
  begin
    if AccDetAccType.Value = 22 then
    begin // \\18
      AccDet.Edit;
      if (AccListElectric.Value = 1) then
      begin

        m10 := 0;

        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin
          m10 := m10 + VUnitAccListAddCount.Value;
          VUnitAccList.Next;

        end;
{$REGION '«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…'}
       if infoPeak_active.Value=true then //«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…
       begin
        arrive_date:=(AccListArriveDate.Value) ;
        list_date:=(AccListListDate.Value);

          //«·Ê’Ê· Ê«·≈⁄œ«œ ›Ì «·–—Ê…
          if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(list_date<=dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1);
            peak_value2:=peak_value1*(DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * mincomesElecVAue.Value)+(peak_value2*m10);
          end
          else
           //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
           if (arrive_date<=dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) + 1);
            peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * mincomesElecVAue.Value)+(peak_value2*m10);
          end
          else
           //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ ›Ì «·–—Ê…
           if (arrive_date<dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_From.Value) AND (list_date<=dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(PeakTblPeak_From.Value, list_date) + 1);
            peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_From.Value, list_date) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * mincomesElecVAue.Value)+(peak_value2*m10);
          end
             else
           //«·Ê’Ê· ›Ì «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
           if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(arrive_date<=dmdfm.PeakTblPeak_To.Value) AND (list_date>dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(arrive_date, PeakTblPeak_To.Value) + 1);
            peak_value2:=peak_value1*(DaysBetween(arrive_date, PeakTblPeak_To.Value) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * mincomesElecVAue.Value)+(peak_value2*m10);
          end
           else  //·Ì” ›Ì «·–—Ê…
            AccDetAccTotal.Value :=
          (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
          (m10) * mincomesElecVAue.Value;
       end
       else
          AccDetAccTotal.Value :=
          (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
          (m10) * mincomesElecVAue.Value;
      end
      else
        AccDetAccTotal.Value := 0;
    end;
    {$ENDREGION}
    // \\18\\
    AccDet.Post;

    // ==========================================  else 1
    { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
    begin // 26
      AccDet.Edit;
      AccDetFromDate.Value := AccListArriveDate.Value;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 26//
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
    begin // 27
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 27//
  end;
end;

procedure TAcListFm.sButton18Click(Sender: TObject);
var
  m10, m11: real;

begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 23) then
    begin

      m10 := 0;

      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin

        // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
        if VUnitAccListNumUnit.Value = 4 then
          m10 := m10 + VUnitAccListAddCount.Value;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 1, 1,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIincomeRHAYAS.Value * VUnitAccListQtityNormal.Value);

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 1, 0,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIincomeRHAYAS.Value * VUnitAccListQtitoyRor.Value);

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 2, 1,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIincomeRHAYAS.Value * VUnitAccListFwozQ.Value);

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 2, 0,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIincomeRHAYAS.Value * VUnitAccListLanerQ.Value);

        VUnitAccList.Next;

      end;

      AccDetAccValue.Value := 0;
      IF (AccListTfteshCar.Value = 1) THEN
        AccDetAccTotal.Value := m11
      ELSE
        AccDetAccTotal.Value := 0;

      if AccDetAccTotal.Value < SiincomeMin.Value then
        AccDetAccTotal.Value := SiincomeMin.Value;

    end;
    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton19Click(Sender: TObject);
begin
  with DmdFm do
  begin

    if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 1) then
    begin // 3
      Store.Locate('Num', AccListweeks.Value, []);
      AccDet.Edit;
      if AccListAdmisMet.Value = 3 then
        AccDetAccValue.Value := StoreWalk.Value +
          (StoreWalk.Value * IincomePerc.Value / 100);;
      if AccListAdmisMet.Value = 2 then
        AccDetAccValue.Value := StoreStore.Value +
          (StoreStore.Value * IincomePerc.Value / 100);;
      if AccListAdmisMet.Value = 1 then
        AccDetAccValue.Value := 0;

      AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

      AccDet.Post;
    end; // 3\\

    if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 0) then
    begin // 4
      Store.Locate('Num', AccListweeks.Value, []);
      AccDet.Edit;
      if AccListAdmisMet.Value = 3 then
        AccDetAccValue.Value := StoreWalk.Value;
      if AccListAdmisMet.Value = 2 then
        AccDetAccValue.Value := StoreStore.Value;
      if AccListAdmisMet.Value = 1 then
        AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
      AccDet.Post;
    end; // \\4\\

  end;

  sButton3Click(Sender);

end;

procedure TAcListFm.sButton1Click(Sender: TObject);
var
  m10, m11: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 1) then
    begin // begin 1
      if (AccListCars.IsNull) then
      begin // R1
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListQtityNormal.Value);

                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListQtitoyRor.Value);

                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListFwozQ.Value);

                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListLanerQ.Value);

                  end;

                  VUnitAccList.Next;

                end;

              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * sIncomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := m10 + (m10 * sIncomePerc.Value / 100);

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListQtityNormal.Value);

                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListQtitoyRor.Value);

                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListFwozQ.Value);

                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIncomeDirect.Value;
                      m10 := m10 + (sIncomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SincomeMHAYAS.Value * VUnitAccListLanerQ.Value);

                  end;

                  VUnitAccList.Next;

                end;
              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := m10;
          // AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          // ShowMessage(AccDetAccTotal.AsString);
        end; // 24\\
      end // R1//
      else // .................................................//
      begin // R2
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;
                m11 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtityNormal.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtitoyRor.Value);

                  m10 := m10 + (m11 * AccListCars.Value);
                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListFwozQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListLanerQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  VUnitAccList.Next;

                end;

              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * sIncomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := m10 + (m10 * sIncomePerc.Value / 100);
          // AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;
                m11 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtityNormal.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtitoyRor.Value);

                  m10 := m10 + (m11 * AccListCars.Value);
                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListFwozQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIncomeDirect.Value / AccListStates.Value) *
                    VUnitAccListLanerQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  VUnitAccList.Next;

                end;
              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := m10;
          // AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end; // 24\\
      end; // R2//
    end; // end 1

    AccDet.Post;
  end;

  /// ============ ---›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ…--

end;

procedure TAcListFm.sButton20Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value <> 1) and (AccDetAccType.Value <> 2) and
      (AccDetAccType.Value <> 10) then
    begin // 1//1//
      if AccListKemawea.Value = 1 then
      begin // \\23

        // .................................................................................

        case AccListAdmisMet.Value of
          1:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeDirect.Value +
                  (IncomeDirect.Value * IncomePerc.Value / 100);
            END;
          2:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeStore.Value +
                  (IncomeStore.Value * IncomePerc.Value / 100);
            END;
          3:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
              END

              ELSE
                AccDetAccValue.Value := IncomeRsef.Value +
                  (IncomeRsef.Value * IncomePerc.Value / 100);
            END;

        end; // case
        IF (IncomeTypeFator.Value = 2) THEN
        BEGIN
          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := (m10 * IncomePerc.Value / 100);;
        END
        ELSE
          AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

      end // 23
      else
      begin // 24
        case AccListAdmisMet.Value of
          1:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeDirect.Value;
            END;
          2:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeStore.Value;
            END;
          3:
            BEGIN
              IF (IncomeTypeFator.Value = 2) THEN
              BEGIN
                m10 := 0;
                if (AccListUnit.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                if (AccListUnit.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                if (AccListUnit2.Value = 1) then
                  m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                if (AccListUnit2.Value = 2) then
                  m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
              END
              ELSE
                AccDetAccValue.Value := IncomeRsef.Value;
            END;

        end; // case
        IF (IncomeTypeFator.Value = 2) THEN
        BEGIN
          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := m10;
        END
        ELSE
          AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        // ShowMessage(AccDetAccTotal.AsString);
      end; // 24\\
    end; // 1//1//1//

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton21Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    // AccDetAccValue.Value := 0;
    // AccDetAccTotal.Value := 0;
    { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
    begin // 26
      AccDet.Edit;
      AccDetFromDate.Value := AccListArriveDate.Value;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 26//
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
    begin // 27
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 27//
    AccDet.Post;
  end; // 5//
end;

procedure TAcListFm.sButton22Click(Sender: TObject);
var
  m10,peak_value1,peak_value2: real;
  arrive_date,list_date:TDateTime;
  enddate:TDate;
begin
  with DmdFm do
  begin
    if AccDetAccType.Value = 22 then
    begin // \\18
      AccDet.Edit;
      if (AccListElectric.Value = 1) then
      begin

        m10 := 0;

        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin

          // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
          // if VUnitAccListNumUnit.Value = 4 then
          m10 := m10 + VUnitAccListAddCount.Value;

          VUnitAccList.Next;

        end;
        if infoPeak_active.Value=true then //«·–—Ê… «·’Ì›Ì… Ê«·‘ ÊÌ…
       begin
        arrive_date:=(AccListArriveDate.Value) ;
        list_date:=(AccListListDate.Value);

          //«·Ê’Ê· Ê«·≈⁄œ«œ ›Ì «·–—Ê…
          if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(list_date<=dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1);
            peak_value2:=peak_value1*(DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * MIncomeElecVAlue.Value)+(peak_value2*m10);
          end
          else
           //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
           if (arrive_date<=dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) + 1);
            peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_To.Value, PeakTblPeak_From.Value) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * MIncomeElecVAlue.Value)+(peak_value2*m10);
          end
          else
           //«·Ê’Ê· ﬁ»· «·–—Ê… Ê«·≈⁄œ«œ ›Ì «·–—Ê…
           if (arrive_date<dmdfm.PeakTblPeak_From.Value)and(list_date>=dmdfm.PeakTblPeak_From.Value) AND (list_date<=dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(PeakTblPeak_From.Value, list_date) + 1);
            peak_value2:=peak_value1*(DaysBetween(PeakTblPeak_From.Value, list_date) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * MIncomeElecVAlue.Value)+(peak_value2*m10);
          end
             else
           //«·Ê’Ê· ›Ì «·–—Ê… Ê«·≈⁄œ«œ »⁄œ «·–—Ê…
           if (arrive_date>=dmdfm.PeakTblPeak_From.Value)and(arrive_date<=dmdfm.PeakTblPeak_To.Value) AND (list_date>dmdfm.PeakTblPeak_To.Value)then
          begin
            peak_value1:=PeakTblPeak_Hours.Value*PeakTblPeak_Value.Value ;
            peak_value2:=(DaysBetween(arrive_date, PeakTblPeak_To.Value) + 1);
            peak_value2:=peak_value1*(DaysBetween(arrive_date, PeakTblPeak_To.Value) + 1);
            AccDetAccTotal.Value :=
            ((DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
            (m10) * MIncomeElecVAlue.Value)+(peak_value2*m10);
          end
           else  //·Ì” ›Ì «·–—Ê…
            AccDetAccTotal.Value :=
          (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
          (m10) * MIncomeElecVAlue.Value;
       end
       else
        AccDetAccTotal.Value :=
          (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) + 1) *
          (m10) * MIncomeElecVAlue.Value;
      end
      else
        AccDetAccTotal.Value := 0;
    end;

    // \\18\\
    AccDet.Post;

    // ==========================================  else 1
    { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
    begin // 26
      AccDet.Edit;
      AccDetFromDate.Value := AccListArriveDate.Value;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 26//
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
    begin // 27
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 27//
  end;
end;

procedure TAcListFm.sButton23Click(Sender: TObject);
var
  m10, m11: real;

begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 23) then
    begin

      m10 := 0;

      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin

        // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
        if VUnitAccListNumUnit.Value = 4 then
          m10 := m10 + VUnitAccListAddCount.Value;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIncomeRHAYAS.Value * VUnitAccListQtitoyRor.Value);

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIncomeRHAYAS.Value * VUnitAccListFwozQ.Value);

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);

        m11 := m11 + (sIncomeRHAYAS.Value * VUnitAccListLanerQ.Value);

        VUnitAccList.Next;

      end;

      AccDetAccValue.Value := 0;
      IF (AccListTfteshCar.Value = 1) THEN
        AccDetAccTotal.Value := m11
      ELSE
        AccDetAccTotal.Value := 0;

      if AccDetAccTotal.Value < SincomeMin.Value then
        AccDetAccTotal.Value := SincomeMin.Value;

    end;
    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton24Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
    if (AccDetAccType.Value = 16) and
      ((AccListRemain.Value = 1) or (AccListRemain.Value = 2)) and
      ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
    // if (AccDetAccType.Value=16)and(AccListRemain.Value=1) then
    begin // 28
      AccDet.Edit;
      AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 28//
    if (AccDetAccType.Value = 16) and
      ((AccListRemain.Value = 0) or ((AccListEndEmpDate.Value + 6) >=
      AccListListDate.Value)) then
    begin // 29
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 29//

    if (AccListAdmisMet.Value = 3) and (AccDetAccTotal.Value < IncomeMin2.Value)
      and (AccDetAccValue.Value > 0) then
      AccDetAccTotal.Value := IncomeMin2.Value;
    if ((AccListAdmisMet.Value = 2) and
      (AccDetAccTotal.Value < IncomeMin2.Value) and (AccDetAccValue.Value > 0))
    then
      AccDetAccTotal.Value := IncomeMin2.Value;
    // else if  (IncomeTypeFator.Value = 2) then
    // AccDetAccTotal.Value:= 0;
    // if {(AccListUnit.Value=3)or(AccListUnit.Value=4))and}(AccDetAccTotal.Value<IncomeMin2.Value)and(AccListAdmisMet.Value=1)and (AccDetAccValue.Value > 0)then
    // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
    // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
    // begin  //25
    // AccDetAccTotal.Value:=IIncomeMin.Value;
    if ((AccListAdmisMet.Value = 1) and (AccDetAccTotal.Value < IncomeMin.Value)
      and (AccDetAccValue.Value > 0)) then
      AccDetAccTotal.Value := IncomeMin.Value;

    AccDet.Post;
  end; // 5//
end;

procedure TAcListFm.sButton25Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    // AccDetAccValue.Value := 0;
    // AccDetAccTotal.Value := 0;
    { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
    if (AccDetAccType.Value = 16) and
      ((AccListRemain.Value = 1) or (AccListRemain.Value = 2)) and
      ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
    // if (AccDetAccType.Value=16)and(AccListRemain.Value=1) then
    begin // 28
      AccDet.Edit;
      AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 28//
    if (AccDetAccType.Value = 16) and
      ((AccListRemain.Value = 0) or ((AccListEndEmpDate.Value + 6) >=
      AccListListDate.Value)) then
    begin // 29
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 29//

    if (AccListAdmisMet.Value = 3) and
      (AccDetAccTotal.Value < IincomeMin2.Value) and (AccDetAccValue.Value > 0)
    then
      AccDetAccTotal.Value := IincomeMin2.Value;
    if ((AccListAdmisMet.Value = 2) and
      (AccDetAccTotal.Value < IincomeMin2.Value) and (AccDetAccValue.Value > 0))
    then
      AccDetAccTotal.Value := IincomeMin2.Value;
    // else if  (IncomeTypeFator.Value = 2) then
    // AccDetAccTotal.Value:= 0;
    // if {(AccListUnit.Value=3)or(AccListUnit.Value=4))and}(AccDetAccTotal.Value<IncomeMin2.Value)and(AccListAdmisMet.Value=1)and (AccDetAccValue.Value > 0)then
    // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
    // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
    // begin  //25
    // AccDetAccTotal.Value:=IIncomeMin.Value;
    if ((AccListAdmisMet.Value = 1) and (AccDetAccTotal.Value < IncomeMin.Value)
      and (AccDetAccValue.Value > 0)) then
      AccDetAccTotal.Value := IincomeMin.Value;

    AccDet.Post;
  end; // 5//
end;

procedure TAcListFm.sButton26Click(Sender: TObject);
var
  m10, m11, m12, mm, msize: real;
  ifh: Integer;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if AccListAdmisMet.Value <> 1 then
    begin
      m10 := 0;
      m11 := 0;
      m12 := 0;
      ifh := 1;
      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin
        m12 := m12 + VUnitAccListAddCount.Value;

         SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 1, 1,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtityNormal.Value > 0 then
          begin
            if not SiIncomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SiIncomeRsef.Value;
              m10 := m10 + VUnitAccListQtityNormal.Value;

              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtityNormal.Value;
          end;
        end;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 1, 0,
          VUnitAccListNumUnit.Value]), []) ;
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtitoyRor.Value > 0 then
          begin
            if not SiIncomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SiIncomeRsef.Value;
              m10 := m10 + VUnitAccListQtitoyRor.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtitoyRor.Value;
          end;
        end;

         SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 2, 1,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListFwozQ.Value > 0 then
          begin
            if not SiIncomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SiIncomeRsef.Value;
              m10 := m10 + VUnitAccListFwozQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListFwozQ.Value;
          end;
        end;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 2, 0,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListLanerQ.Value > 0 then
          begin
            if not SiIncomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SiIncomeRsef.Value;
              m10 := m10 + VUnitAccListLanerQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListLanerQ.Value;
          end;
        end;

        VUnitAccList.Next;
      end;

      if ifh > 1 then
        AccDetAccTotal.Value := msize * AccDetAccValue.Value
      else
      begin
        if m12 > 0 then
          mm := AccListWeSpace.Value / m12
        else
          mm := 0;

        AccDetAccTotal.Value := (mm * m10) * AccDetAccValue.Value;
      end;
       //«·Õœ «·√œ‰Ï
            SMIncomes.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);
         if (DmdFm.accdetAccValue.Value>0) then
        begin
          if (dmdfm.AccListAdmisMet.Value<>1)  then
          begin
          if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin2.Value then
            AccDetAccTotal.Value := SiincomeMin2.Value ;
          end
           else
           begin
             if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin.Value then
            AccDetAccTotal.Value := SiincomeMin.Value ;
           end;
       end
       else
        AccDetAccTotal.Value := 0;
    end
    else
    begin
      m10 := 0;
      m11 := 0;
      m12 := 0;
      ifh := 1;
      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin
        m12 := m12 + VUnitAccListAddCount.Value;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 1, 1,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtityNormal.Value > 0 then
          begin
            if not sIincomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIincomeDirect.Value;
              m10 := m10 + VUnitAccListQtityNormal.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtityNormal.Value;
          end;
        end;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 1, 0,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        Units.Locate('Num', VUnitAccListNumUnit.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtitoyRor.Value > 0 then
          begin
            if not sIincomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIincomeDirect.Value;
              m10 := m10 + VUnitAccListQtitoyRor.Value;

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtitoyRor.Value;
          end;
        end;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 2, 1,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListFwozQ.Value > 0 then
          begin
            if not sIincomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIincomeDirect.Value;
              m10 := m10 + VUnitAccListFwozQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListFwozQ.Value;
          end;
        end;

        SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
          vararrayof([strtoint(sEdit1.Text), 2, 0,
          VUnitAccListNumUnit.Value]), []);
        SiIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SiincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListLanerQ.Value > 0 then
          begin
            if not sIincomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIincomeDirect.Value;
              m10 := m10 + VUnitAccListLanerQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListLanerQ.Value;
          end;
        end;

        VUnitAccList.Next;
      end;

      if ifh > 1 then
        AccDetAccTotal.Value := msize * AccDetAccValue.Value
      else
      begin
        if m12 > 0 then
          mm := AccListWeSpace.Value / m12
        else
          mm := 0;

        AccDetAccTotal.Value := (mm * m10) * AccDetAccValue.Value;
      end;

      //«·Õœ «·√œ‰Ï
              SMIncomes.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);
       if (DmdFm.accdetAccValue.Value>0) then
      begin
        if (dmdfm.AccListAdmisMet.Value<>1)  then
        begin
        if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin2.Value then
          AccDetAccTotal.Value := SiincomeMin2.Value ;
        end
         else
         begin
           if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin.Value then
          AccDetAccTotal.Value := SiincomeMin.Value ;
         end;
     end
     else
      AccDetAccTotal.Value := 0;

    end;

    AccDet.Post;
    // end;
  end;

end;

procedure TAcListFm.sButton27Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 18) and (AccListAdmisMet.Value <> 1) then
    begin // \\21

      SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
        vararrayof([strtoint(sEdit1.Text), 1, 1,
        VUnitAccListNumUnit.Value]), []);
      SiIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := SiIncomeRsef.Value;
      AccDetAccTotal.Value := SiIncomeRsef.Value * AccListWeSpace.Value;
    end
    else
    begin
      AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := 0;
    end; // \\21\\
       //«·Õœ «·√œ‰Ï
            SMIncomes.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);
         if (DmdFm.accdetAccValue.Value>0) then
        begin
          if (dmdfm.AccListAdmisMet.Value<>1)  then
          begin
          if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin2.Value then
            AccDetAccTotal.Value := SiincomeMin2.Value ;
          end
           else
           begin
             if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin.Value then
            AccDetAccTotal.Value := SiincomeMin.Value ;
           end;
       end
       else
        AccDetAccTotal.Value := 0;
    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton28Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 19) and (AccListAdmisMet.Value <> 1) then
    begin // \\21

      SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
        vararrayof([strtoint(sEdit1.Text), 1, 1,
        VUnitAccListNumUnit.Value]), []);
      SiIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := SiIncomeRsef.Value;
      AccDetAccTotal.Value := SiIncomeRsef.Value * AccListWeSpace.Value;
    end // \\21\\
    else
    begin
      AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := 0;
    end; // \\21\\

       //«·Õœ «·√œ‰Ï
            SMIncomes.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);
         if (DmdFm.accdetAccValue.Value>0) then
        begin
          if (dmdfm.AccListAdmisMet.Value<>1)  then
          begin
          if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin2.Value then
            AccDetAccTotal.Value := SiincomeMin2.Value ;
          end
           else
           begin
             if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin.Value then
            AccDetAccTotal.Value := SiincomeMin.Value ;
           end;
       end
       else
        AccDetAccTotal.Value := 0;
    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton29Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 3) then
    begin // \\21

      SMIncomes.Locate('Remain;ShipType;ShipMet;Goods;NUmunit',
        vararrayof([strtoint(sEdit1.Text), 1, 1, 1,
        VUnitAccListNumUnit.Value]), []);
      SiIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := sIincomeDirect.Value;
      AccDetAccTotal.Value := sIincomeDirect.Value * AccListWeSpace.Value;
    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton2Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 2) and (AccListAdmisMet.Value <> 1) then
    begin // begin 1
      if (AccListCars.IsNull) then
      begin // R1
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;
                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                   SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                 SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;

              END;
            3:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                   SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                   SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * sIncomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := m10 + (m10 * IncomePerc.Value / 100);

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                  SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                    SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                    SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIncomeStore.Value;
                      m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeSHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;

              END;
            3:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                    SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                    SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                   SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncome.Locate('ShipType;ShipMet;NUmunit',
                    vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                    SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                  if SincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SincomeRsef.Value;
                      m10 := m10 + (SincomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIncomeRHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;

              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := m10;
          // ShowMessage(AccDetAccTotal.AsString);
        end; // 24\\
      end // R1//
      else // .................................................//
      begin // R2
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN
                IF (SincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    m10 := m10 + (m11 * AccListCars.Value);
                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                     SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;

                END

                ELSE
                  AccDetAccValue.Value := sIncomeStore.Value +
                    (sIncomeStore.Value * sIncomePerc.Value / 100);
              END;
            3:
              BEGIN
                IF (SincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    m10 := m10 + (m11 * AccListCars.Value);
                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                     SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;
                END

                ELSE
                  AccDetAccValue.Value := SincomeRsef.Value +
                    (SincomeRsef.Value * sIncomePerc.Value / 100);
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * sIncomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN
                      SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

                IF (SincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    m10 := m10 + (m11 * AccListCars.Value);
                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;
                END
                ELSE
                  AccDetAccValue.Value := sIncomeStore.Value;
              END;
            3:
              BEGIN
                      SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

                IF (dmdfm.SincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    m10 := m10 + (m11 * AccListCars.Value);
                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncome.Locate('ShipType;ShipMet;NUmunit',
                      vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
                      SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
                    m11 := ((sIncomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;
                end
                ELSE
                  AccDetAccValue.Value := dmdfm.SincomeRsef.Value;
              END;

          end; // case
          IF (SincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := dmdfm.AccDetAccValue.Value * dmdfm.AccListWeSpace.Value;

        end; // 24\\
      end; // R2//
    end; // end 1
    AccDet.Post;
  end;

  /// ============ ---›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ…--

end;

procedure TAcListFm.sButton30Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 4) then
    begin // \\21

      SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
        vararrayof([strtoint(sEdit1.Text), 1, 1,
        dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);

      AccDetAccValue.Value := dmdfm.sIincomeDirect.Value;
      AccDetAccTotal.Value := dmdfm.sIincomeDirect.Value * AccListWeSpace.Value;
    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton31Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 8) then
    begin // \\21

      SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
        vararrayof([strtoint(sEdit1.Text), 1, 1,
        VUnitAccListNumUnit.Value]), []);
      SiIncome.Locate('IncNum', AccDetAccType.Value, []);
      // ShowMessage('' + FloatToStr(SIIncomeDirect.Value));
      AccDetAccValue.Value := sIincomeDirect.Value;
      AccDetAccTotal.Value := sIincomeDirect.Value * AccListWeSpace.Value;
      if AccDetAccTotal.Value < SiincomeMin.Value then
        AccDetAccTotal.Value := SiincomeMin.Value;
    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton3Click(Sender: TObject);
begin
  with DmdFm do
  begin

    { ----------------------- «—ÌŒ «· Œ“Ì‰-------------------------- }
    if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value <> 0) then
    begin // 30
      AccDet.Edit;
      AccDetFromDate.Value := AccListEndEmpDate.Value;
      AccDetToDate.Value := AccListAllwedDate.Value;
    end; // 30//
    if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value = 0) then
    begin // 31
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 31//

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton4Click(Sender: TObject);
var
  m10, m11: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 1) then
    begin // begin 1
      if (AccListCars.IsNull) then
      begin // R1
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListQtityNormal.Value);

                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListQtitoyRor.Value);

                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListFwozQ.Value);

                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListLanerQ.Value);

                  end;

                  VUnitAccList.Next;

                end;

              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (IncomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListQtityNormal.Value);

                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListQtitoyRor.Value);

                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListFwozQ.Value);

                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      // m10 := m10 + (sIncomeStore.Value * AccListWeSpace.Value);
                      AccDetAccValue.Value := sIincomeDirect.Value;
                      m10 := m10 +
                        (sIincomeDirect.Value * AccListWeSpace.Value);

                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (SiincomeMHAYAS.Value * VUnitAccListLanerQ.Value);

                  end;

                  VUnitAccList.Next;

                end;
              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (IincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := m10;
          // AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          // ShowMessage(AccDetAccTotal.AsString);
        end; // 24\\
      end // R1//
      else // .................................................//
      begin // R2
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;
                m11 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtityNormal.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtitoyRor.Value);

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListFwozQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListLanerQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  VUnitAccList.Next;

                end;

              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (IincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
          // AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN

                m10 := 0;
                m11 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtityNormal.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListQtitoyRor.Value);

                  m10 := m10 + (m11 * AccListCars.Value);
                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListFwozQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  m11 := ((sIincomeDirect.Value / AccListStates.Value) *
                    VUnitAccListLanerQ.Value);
                  m10 := m10 + (m11 * AccListCars.Value);

                  VUnitAccList.Next;

                end;
              END;
            2:
              BEGIN
              END;
            3:
              BEGIN
              END;

          end; // case
          IF (IincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := m10;
          // AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end; // 24\\
      end; // R2//
    end; // end 1

    AccDet.Post;
  end;

  /// ============ ---›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ…--

end;

procedure TAcListFm.sButton5Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 2) and (AccListAdmisMet.Value <> 1) then
    begin // begin 1
      if (AccListCars.IsNull) then
      begin // R1
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;
                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;

              END;
            3:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;
              END;

          end; // case
          IF (IincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * sIincomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := sIincomeStore.Value;
                      m10 := m10 + (sIincomeStore.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeSHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;

              END;
            3:
              BEGIN

                m10 := 0;

                VUnitAccList.First;
                while not VUnitAccList.Eof do
                begin

                  // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 1,
                    dmdfm.VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', dmdfm.AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtityNormal.Value > 0 then
                    begin
                      AccDetAccValue.Value := dmdfm.SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 1, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListQtitoyRor.Value > 0 then
                    begin
                      AccDetAccValue.Value := dmdfm.SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListQtitoyRor.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 1,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListFwozQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListFwozQ.Value);
                  end;

                  SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                    vararrayof([strtoint(sEdit1.Text), 2, 0,
                    VUnitAccListNumUnit.Value]), []);
                  SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                  if SiincomeTypeFator.Value = 1 then
                  begin
                    if VUnitAccListLanerQ.Value > 0 then
                    begin
                      AccDetAccValue.Value := SiIncomeRsef.Value;
                      m10 := m10 + (SiIncomeRsef.Value * AccListWeSpace.Value);
                    end;
                  end
                  else
                  begin
                    m10 := m10 +
                      (sIincomeRHAYAS.Value * VUnitAccListLanerQ.Value);
                  end;

                  VUnitAccList.Next;

                end;

              END;

          end; // case
          IF (SiincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := m10;
          // ShowMessage(AccDetAccTotal.AsString);
        end; // 24\\
      end // R1//
      else // .................................................//
      begin // R2
        if AccListKemawea.Value = 1 then
        begin // \\23
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN
                IF (IincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);

                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;

                END

                ELSE
                  AccDetAccValue.Value := IincomeStore.Value +
                    (IincomeStore.Value * IincomePerc.Value / 100);
              END;
            3:
              BEGIN
                IF (IincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;
                END

                ELSE
                  AccDetAccValue.Value := IincomeRsef.Value +
                    (IincomeRsef.Value * IncomePerc.Value / 100);
              END;

          end; // case
          IF (IincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
          END
          ELSE
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end // 23
        else
        begin // 24
          case AccListAdmisMet.Value of
            1:
              BEGIN
              END;
            2:
              BEGIN
                IF (IincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    m10 := m10 + (m11 * AccListCars.Value);
                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeSHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;
                END
                ELSE
                  AccDetAccValue.Value := IincomeStore.Value;
              END;
            3:
              BEGIN
                IF (IincomeTypeFator.Value = 2) THEN
                BEGIN
                  m10 := 0;
                  m11 := 0;

                  VUnitAccList.First;
                  while not VUnitAccList.Eof do
                  begin

                    // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtityNormal.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 1, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListQtitoyRor.Value);

                    m10 := m10 + (m11 * AccListCars.Value);
                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 1,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListFwozQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
                      vararrayof([strtoint(sEdit1.Text), 2, 0,
                      VUnitAccListNumUnit.Value]), []);
                    SiIncome.Locate('IncNum', AccDetAccType.Value, []);
                    m11 := ((sIincomeRHAYAS.Value / AccListStates.Value) *
                      VUnitAccListLanerQ.Value);
                    m10 := m10 + (m11 * AccListCars.Value);

                    VUnitAccList.Next;

                  end;
                end
                ELSE
                  AccDetAccValue.Value := IincomeRsef.Value;
              END;

          end; // case
          IF (IincomeTypeFator.Value = 2) THEN
          BEGIN
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          END
          ELSE
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

        end; // 24\\
      end; // R2//
    end; // end 1
    AccDet.Post;
  end;

  /// ============ ---›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ…--

end;

procedure TAcListFm.sButton6Click(Sender: TObject);
begin
  with DmdFm do
  begin

    if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 1) then
    begin // 3
      Store.Locate('Num', AccListweeks.Value, []);
      AccDet.Edit;
      if AccListAdmisMet.Value = 3 then
        AccDetAccValue.Value := StoreWalk.Value +
          (StoreWalk.Value * IncomePerc.Value / 100);;
      if AccListAdmisMet.Value = 2 then
        AccDetAccValue.Value := StoreStore.Value +
          (StoreStore.Value * IncomePerc.Value / 100);;
      if AccListAdmisMet.Value = 1 then
        AccDetAccValue.Value := 0;

      AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;

      AccDet.Post;
    end; // 3\\

    if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 0) then
    begin // 4
      Store.Locate('Num', AccListweeks.Value, []);
      AccDet.Edit;
      if AccListAdmisMet.Value = 3 then
        AccDetAccValue.Value := StoreWalk.Value;
      if AccListAdmisMet.Value = 2 then
        AccDetAccValue.Value := StoreStore.Value;
      if AccListAdmisMet.Value = 1 then
        AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
      AccDet.Post;
    end; // \\4\\

  end;

  sButton3Click(Sender);

end;

procedure TAcListFm.sButton7Click(Sender: TObject);
var
  m10, m11, q1, q2: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 9) and (AccListAdmisMet.Value <> 1) then
    begin // \\21

      m10 := 0;
      if AccListCars.IsNull then
      begin
        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin
          // if True then
          if (VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
            or (VUnitAccListNumUnit.Value = 7) or
            (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9)
            or (VUnitAccListNumUnit.Value = 10) or
            (VUnitAccListNumUnit.Value = 11) then
          begin

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if SiincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;

              m10 := m10 + VUnitAccListQtityNormal.Value *
                (UnitsStateValue.Value * SIincomeStatesNum.Value);

            end;

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 0,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if SiincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;
              m10 := m10 + VUnitAccListQtitoyRor.Value *
                (UnitsStateValue.Value * SIincomeStatesNum.Value);

            end;

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 2, 0,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if SiincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;
              m10 := m10 + VUnitAccListLanerQ.Value *
                (UnitsStateValue.Value * SIincomeStatesNum.Value);

            end;

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 2, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if SiincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;
              m10 := m10 + VUnitAccListFwozQ.Value *
                (UnitsStateValue.Value * SIincomeStatesNum.Value);

            end;

            // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            // Units.Locate('Num', VUnitAccListNumUnit.Value, []);

          end
          else
          begin

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 1,
              dmdfm.VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListQtityNormal.Value > 0 then
              begin

                if SiincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;

                m10 := m10 +
                  (dmdfm.AccListWeSpace.Value * (dmdfm.UnitsStateValue.Value *
                  dmdfm.SIincomeStatesNum.Value));
              end;
            end;
            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 0,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if VUnitAccListQtitoyRor.Value > 0 then
              begin

                if SiincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;
                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIincomeStatesNum.Value));
              end;
            end;

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 2, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if VUnitAccListFwozQ.Value > 0 then
              begin

                if SiincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;
                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIincomeStatesNum.Value));
              end;
            end;

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 2, 0,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIincomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if VUnitAccListLanerQ.Value > 0 then
              begin

                if SiincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;
                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIincomeStatesNum.Value));
              end;
            end;

          end;
          VUnitAccList.Next;

        end;

        // AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := m10;


           //«·Õœ «·√œ‰Ï
            SMIncomes.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);
         if (DmdFm.accdetAccTotal.Value>0) then
          begin
            if (dmdfm.AccListAdmisMet.Value<>1)  then
            begin
            if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin2.Value then
             AccDetAccTotal.Value := SiincomeMin2.Value ;
            end
             else
             begin
               if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin.Value then
              AccDetAccTotal.Value := SiincomeMin.Value ;
             end;
         end
        else
          AccDetAccTotal.Value := 0;
      end // \\21\\
      else
      begin
        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin
          // if True then
          if (VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
            or (VUnitAccListNumUnit.Value = 7) or
            (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9)
            or (VUnitAccListNumUnit.Value = 10) or
            (VUnitAccListNumUnit.Value = 11) then
          begin
            // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            Units.Locate('Num', VUnitAccListNumUnit.Value, []);
            if SiincomeTypeFator.Value = 1 then
              AccDetAccValue.Value := UnitsStateValue.Value;
            m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value);

          end
          else
          begin
            Units.Locate('Num', VUnitAccListNumUnit.Value, []);
            if SiincomeTypeFator.Value = 1 then
              AccDetAccValue.Value := UnitsStateValue.Value;
            m10 := m10 + (AccListWeSpace.Value * UnitsStateValue.Value);

          end;
          VUnitAccList.Next;

        end;

        AccDetAccValue.Value := 0;
        AccDetAccTotal.Value :=
          ((m10 / AccListStates.Value) * AccListCars.Value) +
          (AccListCars.Value * 150);
           //«·Õœ «·√œ‰Ï
       SMIncomes.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIincome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomesMincome.Value]), []);
         if (DmdFm.accdetAccValue.Value>0) then
        begin
          if (dmdfm.AccListAdmisMet.Value<>1)  then
          begin
          if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin2.Value then
            AccDetAccTotal.Value := SiincomeMin2.Value ;
          end
           else
           begin
             if dmdfm.AccDetAccTotal.Value < dmdfm.SiincomeMin.Value then
            AccDetAccTotal.Value := SiincomeMin.Value ;
           end;
       end
       else
        AccDetAccTotal.Value := 0;
       
      end;
    end;

    AccDet.Post;
  end;

end;

procedure TAcListFm.sButton8Click(Sender: TObject);
var
  m10, m11: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;
    if (AccDetAccType.Value = 10) then
    begin

      if (AccListRoafe.Value = 1) then
      begin

        if not AccListCars.IsNull then
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SiincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListAddCount.Value > 0 then
                if not SiIncomeRsef.IsNull then
                begin
                  m11 := m11 + VUnitAccListAddCount.Value;
                  AccDetAccValue.Value := SiIncomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIincomeRHAYAS.Value * VUnitAccListRofaQ.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SiincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin

            AccDetAccValue.Value := 0;
            if ((AccListStates.Value = 0) OR (AccListStates.IsNull)) then
            begin
              AccDetAccTotal.Value := ((m10 / 1) * AccListCars.Value);

            end
            else
            begin
              AccDetAccTotal.Value :=
                ((m10 / AccListStates.Value) * AccListCars.Value);

            end;
          end;

        end
        else
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SiincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListAddCount.Value > 0 then
                if not SiIncomeRsef.IsNull then
                begin
                  // m10 := m10 + VUnitAccListQtityNormal.Value;
                  AccDetAccValue.Value := SiIncomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIincomeRHAYAS.Value * VUnitAccListAddCount.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SiincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          end;

        end;

      end
      else
      begin
        if not AccListCars.IsNull then
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SiincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListRofaQ.Value > 0 then
                if not SiIncomeRsef.IsNull then
                begin
                  m11 := m11 + VUnitAccListRofaQ.Value;
                  AccDetAccValue.Value := SiIncomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIincomeRHAYAS.Value * VUnitAccListRofaQ.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SiincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin
            AccDetAccValue.Value := 0;
            if ((AccListStates.Value = 0) OR (AccListStates.IsNull)) then
            begin
              AccDetAccTotal.Value := ((m10 / 1) * AccListCars.Value);

            end
            else
            begin
              AccDetAccTotal.Value :=
                ((m10 / AccListStates.Value) * AccListCars.Value);

            end;
          end;

        end
        else
        begin

          m10 := 0;

          VUnitAccList.First;
          while not VUnitAccList.Eof do
          begin

            SMIncomes.Locate('Remain;ShipType;ShipMet;NUmunit',
              vararrayof([strtoint(sEdit1.Text), 1, 1,
              VUnitAccListNumUnit.Value]), []);
            SiIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SiincomeTypeFator.Value = 1 then
            begin
              if VUnitAccListRofaQ.Value > 0 then
                if not SiIncomeRsef.IsNull then
                begin
                  m11 := m11 + VUnitAccListRofaQ.Value;
                  AccDetAccValue.Value := SiIncomeRsef.Value;
                end;
            end
            else
            begin
              m10 := m10 + (sIincomeRHAYAS.Value * VUnitAccListRofaQ.Value);
            end;

            { SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end;

              SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
              SIncome.Locate('IncNum', AccDetAccType.Value, []);
              if SincomeTypeFator.Value = 1 then
              begin
              if VUnitAccListQtityNormal.Value > 0 then
              if not SincomeRsef.IsNull then
              begin
              m10 := m10 + VUnitAccListQtityNormal.Value;
              AccDetAccValue.Value := SincomeRsef.Value;
              end;
              end
              else
              begin
              m10 := m10 +
              (sIncomeRHAYAS.Value * VUnitAccListQtityNormal.Value);
              end; }

            VUnitAccList.Next;

          end;

          if SiincomeTypeFator.Value = 1 then
          begin
            // AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          end
          else
          begin
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := m10;
          end;

        end;

      end;
      if AccDetAccTotal.Value < IincomeMin.Value then
        AccDetAccTotal.Value := IincomeMin.Value;
    end;

    AccDet.Post;
  end;
end;

procedure TAcListFm.sButton9Click(Sender: TObject);
var
  m10, m11, q1, q2: real;
begin

  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 9) and (AccListAdmisMet.Value <> 1) then
    begin // \\21

      m10 := 0;
      if AccListCars.IsNull then
      begin
        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin
          // if True then
          if (VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
            or (VUnitAccListNumUnit.Value = 7) or
            (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9)
            or (VUnitAccListNumUnit.Value = 10) or
            (VUnitAccListNumUnit.Value = 11) then
          begin

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if SincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;

              m10 := m10 + VUnitAccListQtityNormal.Value *
                (UnitsStateValue.Value * SIncomeStatesNum.Value);

            end;

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if SincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;
              m10 := m10 + VUnitAccListQtitoyRor.Value *
                (UnitsStateValue.Value * SIncomeStatesNum.Value);

            end;

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if SincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;
              m10 := m10 + VUnitAccListLanerQ.Value *
                (UnitsStateValue.Value * SIncomeStatesNum.Value);

            end;

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if SincomeTypeFator.Value = 1 then
                AccDetAccValue.Value := UnitsStateValue.Value;
              m10 := m10 + VUnitAccListFwozQ.Value *
                (UnitsStateValue.Value * SIncomeStatesNum.Value);

            end;

            // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            // Units.Locate('Num', VUnitAccListNumUnit.Value, []);

          end
          else
          begin

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListQtityNormal.Value > 0 then
              begin

                if SincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;

                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIncomeStatesNum.Value));
                  if (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIncomeStatesNum.Value))<SincomeMin.Value then
                   m10 := SincomeMin.Value;
              end;
            end;

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if VUnitAccListQtitoyRor.Value > 0 then
              begin

                if SincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;
                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIncomeStatesNum.Value));
              end;
            end;

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if VUnitAccListFwozQ.Value > 0 then
              begin

                if SincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;
                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIncomeStatesNum.Value));
              end;
            end;

            SMIncome.Locate('ShipType;ShipMet;NUmunit',
              vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
            SIncome.Locate('IncNum', AccDetAccType.Value, []);

            if SIncomeStatesNum.IsNull then
            begin

              // Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              m10 := m10 + 0;
            end
            else
            begin
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);
              if VUnitAccListLanerQ.Value > 0 then
              begin

                if SincomeTypeFator.Value = 1 then
                  AccDetAccValue.Value := UnitsStateValue.Value;
                m10 := m10 +
                  (AccListWeSpace.Value * (UnitsStateValue.Value *
                  SIncomeStatesNum.Value));
              end;
            end;

          end;
          VUnitAccList.Next;

        end;

        // AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := m10;
      end // \\21\\
      else
      begin
        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin
        Units.Locate('Num', VUnitAccListNumUnit.Value, []);
          // if True then
          if (VUnitAccListNumUnit.Value = 1) or (VUnitAccListNumUnit.Value = 2)
            or (VUnitAccListNumUnit.Value = 7) or
            (VUnitAccListNumUnit.Value = 8) or (VUnitAccListNumUnit.Value = 9)
            or (VUnitAccListNumUnit.Value = 10) or
            (VUnitAccListNumUnit.Value = 11) then
          begin
            // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

            if SincomeTypeFator.Value = 1 then
              AccDetAccValue.Value := UnitsStateValue.Value;
            m10 := m10 + (VUnitAccListAddCount.Value * UnitsStateValue.Value);

          end
          else
          begin
            Units.Locate('Num', VUnitAccListNumUnit.Value, []);
            if SincomeTypeFator.Value = 1 then
              AccDetAccValue.Value := UnitsStateValue.Value;
            m10 := m10 + (AccListWeSpace.Value * UnitsStateValue.Value);

          end;
          VUnitAccList.Next;

        end;

        AccDetAccValue.Value := 0;
        if ((m10 / dmdfm.AccListStates.Value) * dmdfm.AccListCars.Value)< (dmdfm.SincomeMin.Value) then
          MinShared:=SincomeMin.Value
        else
        MinShared:= ((m10 / dmdfm.AccListStates.Value) * dmdfm.AccListCars.Value);
        if AccListshared_usefork.Value=0 then   {«” Œœ«„ ‘ÊﬂÌ… „‘ —ﬂ…}
          AccDetAccTotal.Value :=
         MinShared +
          (AccListCars.Value * (dmdfm.Unitsshared_value.Value / AccListStates.Value))
        else
        AccDetAccTotal.Value :=MinShared ;
      end;
    end;

    AccDet.Post;
  end;

end;

procedure TAcListFm.sDBEdit2Exit(Sender: TObject);
begin
  DmdFm.VUnitAccListQtityNormal.Value := DmdFm.VUnitAccListAddCount.Value;
end;

procedure TAcListFm.sBitBtn10Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 4) then
    begin // \\21

      SMIncome.Locate('ShipType;ShipMet;NUmunit',
        vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
      SIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := sIncomeDirect.Value;
      AccDetAccTotal.Value := sIncomeDirect.Value * AccListWeSpace.Value;

      if AccDetAccTotal.Value < SincomeMin.Value then
        AccDetAccTotal.Value := SincomeMin.Value;

    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sBitBtn11Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 8) then
    begin // \\21

      SMIncome.Locate('ShipType;ShipMet;NUmunit',
        vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
      SIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := SincomeRsef.Value;
      AccDetAccTotal.Value := SincomeRsef.Value * AccListWeSpace.Value;
      if AccDetAccTotal.Value < SincomeMin.Value then
        AccDetAccTotal.Value := SincomeMin.Value;
    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sBitBtn12Click(Sender: TObject);
begin
  BillloadFm.ShowModal;
  // Application.CreateForm(TLstDetFm, LstDetFm);
  // LstDetFm.ShowModal;
  // LstDetFm.Free;
  { Edit2.Text := '1';
    with DmdFm do
    begin
    if AccList.State=dsInsert then
    begin

    {  if not LoadList.Locate('TransNUm;ArriveDate',VarArrayOf([AccListShipNum.Value,AccListArriveDate.Value]),[]) then
    raise Exception.Create(' √ﬂœ „‰ «”„ «·”›Ì‰… Ê «—ÌŒ «·Ê’Ê·');
    Application.CreateForm(TAdmiFm,AdmiFm);
    AdmiFm.DateTimePicker1.Date := AccListArriveDate.Value + 7;
    AdmiFm.DateTimePicker2.Date := AccListArriveDate.Value - 7;
    //     Edit3.Text :=   DateToStr(AdmiFm.DateTimePicker1.Date);
    //     Edit4.Text :=   DateToStr(AdmiFm.DateTimePicker2.Date);
    Ships.Locate('Num',AccListShipNum.Value,[]);
    LoadList.Filtered:=true;
    LoadList.Filter:='TransNUm = '+ShipsNum.AsString+' and ArriveDate >= ' +QuotedStr(DateToStr(AdmiFm.DateTimePicker2.Date))+' AND arriveDate <= ' +QuotedStr(DateToStr(AdmiFm.DateTimePicker1.Date));
    load.Locate('Billloading',AccListBillNum.Value,[]);
    //Application.CreateForm(TAdmiFm,AdmiFm);
    //ad.DBGrid2.BringToFront;

    AdmiFm.ShowModal;
    AdmiFm.Free;
    end;
    end; }
end;

procedure TAcListFm.sBitBtn13Click(Sender: TObject);
var
  I, a1: Integer;
  a2: smallint;
begin
  I := 0;

  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');
    if ((AccType = 1) or (AccType = 2)) then
    begin
      { -------------------------- }
      // 1  try
      // 1    if creEfraj = 1 then
      // 1    begin
      // with DmdFm do
      // begin
      // VSloadH.Close;
      // VSloadH.ParamByName('VNumT').Value := VDateHrakNum.Value;
      // VSloadH.ParamByName('VSNum').Value := 0;
      // VSloadH.Execute;
      // end;

      // DmdFm.Sload.FilterSQL := 'LNum=' + DmdFm.VloadlistNum.AsString +
      // ' and selectF = 0';

      // DmdFm.VSloadH.First;
      // while not DmdFm.VSloadH.Eof do
      // begin
      // if VSloadH.Locate('BillNum', strtoint(s), []) then
      // begin
      // VSloadH.Edit;
      // VSloadHBillNum.Clear;
      // end;
      // DmdFm.VSloadH.Next;
      // end;
      // DmdFm.sload.EnableControls;
      // if VSloadH.State = dsedit then
      // VSloadH.Post;
      // Sload.Refresh;
      // with DmdFm do
      // begin
      // VloadHrak.Close;
      // VloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
      // VloadHrak.Execute;
      // end;
      // 1    end;
      // 1  except
      // 11  end;
    end;

    AccDet.Close;
    AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    AccDet.Execute;

    Income.First;
    while not Income.Eof do
    begin
      AccDet.Insert;
      AccDetAccType.Value := IncomeIncNum.Value;
      accdetAccNum.Value := AccListListNum.Value;
      accdetListType.Value := AccListListType.Value;
      AccDet.Post;
      Income.Next;
    end;

    // AccDet.Refresh;

    // AccDet.Close;
    // AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    // AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    // AccDet.Execute;

    sBitBtn15Click(Sender);
    // AccDet.Close;
    // AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    // AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    // AccDet.Execute;

  end;

end;

procedure TAcListFm.sBitBtn14Click(Sender: TObject);
begin
  if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
  DelDet := 1;
  DmdFm.AccDet.First;
  while not DmdFm.AccDet.Eof do
    DmdFm.AccDet.Delete;
  with DmdFm do
  begin
    AccDet.Close;
    AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    AccDet.Execute;

  end;
  // DmdFm.AccList.Edit;
  // DmdFm.AccListTotal.Value:=0;
  // DmdFm.AccList.Post;
  DelDet := 0;

end;

procedure TAcListFm.sBitBtn15Click(Sender: TObject);
var
  q1, q2, m10, m11, m12, ShipType, ShipMet, oldvalue, oldvalue2, QtyType1,
    QtyType2, QtyType3, QtyType4, GoodsQty, GoodsQty2: real;
  I: smallint;
  bookmark: TBookmark;
begin // 0
  lockOrDel := 0;
  with DmdFm do
  begin // 1
    Units.Locate('Num', AccListUnit.Value, []);
    q1 := UnitsStateValue.Value;
    Units.Locate('Num', AccListUnit2.Value, []);
    q2 := UnitsStateValue.Value;
    // ··Êﬁ…› ⁄·Ï ⁄Ê«∆œ «·„‰«Ê·… «·„ÿ·Ê»…................................................
    if ((AccListNum1.Value = 0) and (AccListNum2.Value = 0)) or
      ((AccListNum1.Value = 0) and (AccListNum5.Value = 0)) or
      ((AccListNum2.Value = 0) and (AccListNum6.Value = 0)) then
    BEGIN
      Ships.Locate('NumAuto', AccListShipNum.Value, []);
      if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
        MIncome.Locate('ShipType;ShipMet;Goods',
          vararrayof([AccListShipType.Value, AccListShipMet.Value, 0]), []);
      if (AccListUnit.Value = 3) then
        MIncome.Locate('ShipType;ShipMet;Goods',
          vararrayof([AccListShipType.Value, AccListShipMet.Value, 1]), []);
      if (AccListUnit.Value = 4) then
        MIncome.Locate('ShipType;ShipMet;Goods',
          vararrayof([AccListShipType.Value, AccListShipMet.Value, 2]), []);

      // ...................................................................................
      AccDet.DisableControls;
      bookmark := AccDet.GetBookmark;
      AccDet.First;
      while not AccDet.Eof do
      begin // 2
        Income.Locate('IncNum', DmdFm.AccDetAccType.Value, []);
        if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 1) then
        begin // 3
          Store.Locate('Num', AccListweeks.Value, []);
          AccDet.Edit;
          if AccListAdmisMet.Value = 3 then
            AccDetAccValue.Value := StoreWalk.Value +
              (StoreWalk.Value * IncomePerc.Value / 100);;
          if AccListAdmisMet.Value = 2 then
            AccDetAccValue.Value := StoreStore.Value +
              (StoreStore.Value * IncomePerc.Value / 100);;
          if AccListAdmisMet.Value = 1 then
            AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          AccDet.Post;
        end; // 3\\

        if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 0) then
        begin // 4
          Store.Locate('Num', AccListweeks.Value, []);
          AccDet.Edit;
          if AccListAdmisMet.Value = 3 then
            AccDetAccValue.Value := StoreWalk.Value;
          if AccListAdmisMet.Value = 2 then
            AccDetAccValue.Value := StoreStore.Value;
          if AccListAdmisMet.Value = 1 then
            AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
          AccDet.Post;
        end; // \\4\\

        if AccDetAccType.Value <> 6 then
        begin // \5
          AccDet.Edit;
          AccDetAccValue.Value := 0;
          AccDetAccTotal.Value := 0;
          // .......................................—Ê«›⁄ «·«—÷Ì… „⁄ «·‰Ÿ— ›Ì «” Œœ«„ —«Ê›⁄ «·„Ì‰«¡

          if (AccDetAccType.Value = 10) then
          begin // begin 1
            if (AccListCars.IsNull) then
            begin // R1
              if AccListRoafe.Value = 1 then
              begin // \\23
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value;
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value;
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value;
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else

              begin // 24
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := 0;
              end; // 24\\
            end // R1//
            else // .................................................//
            begin // R2
              if AccListRoafe.Value = 1 then
              begin // \\23
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeMHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeMHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value;
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeSHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeSHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeSHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeSHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value;
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value) ;
                        begin
                          m11 := IncomeRHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value) ;
                        begin
                          m11 := IncomeRHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value) ;
                        begin
                          m11 := IncomeRHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value) ;
                        begin
                          m11 := IncomeRHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value;
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else
              begin // 24
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := 0;

              end; // 24\\
            end; // R2//
          end; // end 1

          // .......................................‰Â«Ì… «·—Ê«›⁄ «·«—÷Ì…

          if (AccDetAccType.Value = 1) then
          begin // begin 1
            if (AccListCars.IsNull) then
            begin // R1
              if AccListKemawea.Value = 1 then
              begin // \\23
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value +
                          (IncomeDirect.Value * IncomePerc.Value / 100);
                    END;
                  2:
                    BEGIN
                    END;
                  3:
                    BEGIN
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10 + (m10 * IncomePerc.Value / 100);
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else
              begin // 24
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value;
                    END;
                  2:
                    BEGIN
                    END;
                  3:
                    BEGIN
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;
                // ShowMessage(AccDetAccTotal.AsString);
              end; // 24\\
            end // R1//
            else // .................................................//
            begin // R2
              if AccListKemawea.Value = 1 then
              begin // \\23
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeMHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeMHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value +
                          (IncomeDirect.Value * IncomePerc.Value / 100);
                    END;
                  2:
                    BEGIN
                    END;
                  3:
                    BEGIN
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10 + (m10 * IncomePerc.Value / 100);
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else
              begin // 24
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeMHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeMHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value;
                    END;
                  2:
                    BEGIN
                    END;
                  3:
                    BEGIN
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end; // 24\\
            end; // R2//
          end; // end 1

          // ..................................................................................................

          // Œ«’ »ÿ—Ìﬁ… «· ”·Ì„ «·€Ì— „»«‘— ÃœÌœ ............................................... «·Õ«ÊÌ« »‘ﬂ· ⁄«„
          if (AccDetAccType.Value = 2) and (AccListAdmisMet.Value <> 1) then
          begin // begin 1
            if (AccListCars.IsNull) then
            begin // R1
              if AccListKemawea.Value = 1 then
              begin // \\23
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value +
                          (IncomeStore.Value * IncomePerc.Value / 100);
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value +
                          (IncomeRsef.Value * IncomePerc.Value / 100);
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10 + (m10 * IncomePerc.Value / 100);
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else
              begin // 24
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value;
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value;
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;
                // ShowMessage(AccDetAccTotal.AsString);
              end; // 24\\
            end // R1//
            else // .................................................//
            begin // R2
              if AccListKemawea.Value = 1 then
              begin // \\23
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeSHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeSHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeSHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeSHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value +
                          (IncomeStore.Value * IncomePerc.Value / 100);
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value) ;
                        begin
                          m11 := IncomeRHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value) ;
                        begin
                          m11 := IncomeRHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value) ;
                        begin
                          m11 := IncomeRHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value) ;
                        begin
                          m11 := IncomeRHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value +
                          (IncomeRsef.Value * IncomePerc.Value / 100);
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10 + (m10 * IncomePerc.Value / 100);
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else
              begin // 24
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeSHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeSHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeSHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeSHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value;
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        m11 := 0;
                        if (AccListUnit.Value = 1) then
                        // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeRHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit.Value = 2) then
                        // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value);
                        begin
                          m11 := IncomeRHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 1) then
                        // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value);
                        begin
                          m11 := IncomeRHAYAS.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                        if (AccListUnit2.Value = 2) then
                        // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value);                                END
                        begin
                          m11 := IncomeRHAYAK.Value / AccListStates.Value;
                          m10 := m10 + (m11 * AccListCars.Value);
                        end;
                      end
                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value;
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end; // 24\\
            end; // R2//
          end; // end 1
          /// ...................................................................................................

          if (AccDetAccType.Value = 9) then
          begin // 6
            if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
              (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
            begin // 7
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value :=
                (AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                (AccListQty2.Value * q2 * IncomeStatesNum.Value)
            end // \7\\
            else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
              (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
            begin // 8
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value :=
                ((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                (AccListQty2.Value * q2 * IncomeStatesNum.Value)) /
                AccListStates.Value * AccListCars.Value;
            end // \\8\\
            else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
              (AccListAdmisMet.Value = 1) then
            begin // 9
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value :=
                (AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
                (AccListQty2.Value * q2 * IncomeDirectState.Value)
            end // \\9\\
            else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
              (AccListAdmisMet.Value <> 1) then
            begin // \\10
              AccDetAccValue.Value := q1 * IncomeStatesNum.Value;
              AccDetAccTotal.Value := q1 * IncomeStatesNum.Value *
                AccListWeSpace.Value
            end // \\10\\
            else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
              (AccListAdmisMet.Value = 1) then
            begin // \\11
              AccDetAccValue.Value := q1 * IncomeDirectState.Value;
              AccDetAccTotal.Value := q1 * IncomeDirectState.Value *
                AccListWeSpace.Value;
            end; // \\11\\

            if (AccListAdmisMet.Value = 3) and
              (AccDetAccTotal.Value < IncomeMin2.Value) and
              (IncomeStatesNum.Value = 1) then
              // and (AccDetAccValue.Value > 0)  then
              AccDetAccTotal.Value := IncomeMin2.Value;
            if ((AccListAdmisMet.Value = 2) and
              (AccDetAccTotal.Value < IncomeMin2.Value) and
              (IncomeStatesNum.Value = 1)) then
              // and (AccDetAccValue.Value > 0))  then
              AccDetAccTotal.Value := IncomeMin2.Value;
            // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
            // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
            // begin  //25
            // AccDetAccTotal.Value:=IIncomeMin.Value;
            if ((AccListAdmisMet.Value = 1) and
              (AccDetAccTotal.Value < IncomeMin.Value) and
              (IncomeDirectState.Value = 1)) then
              AccDetAccTotal.Value := IncomeMin.Value;
          end // \\6\\
          else
            // .......................................   › Ì‘ ”Ì«—« 

            if (AccDetAccType.Value = 23) then
            begin

              AccDetAccValue.Value := 0;
              IF (AccListTfteshCar.Value = 1) THEN
                AccDetAccTotal.Value :=
                  (AccListGoodsQty.Value + AccListQty2.Value +
                  AccListQty3.Value) * IncomeRsef.Value
              ELSE
                AccDetAccTotal.Value := 0;

            end

            else if (AccDetAccType.Value = 12) then
            begin // \\12
              if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
              begin // \\13
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value :=
                  (AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                  (AccListQty2.Value * q2 * IncomeStatesNum.Value)
              end // \\13\\
              else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
              begin // \\14
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value :=
                  ((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                  (AccListQty2.Value * q2 * IncomeStatesNum.Value)) /
                  AccListStates.Value * AccListCars.Value;
              end // \\14\\

              else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                (AccListAdmisMet.Value = 1) then
              begin // \\15
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value :=
                  (AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
                  (AccListQty2.Value * q2 * IncomeDirectState.Value)
              end // \\15\\
              else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
                (AccListAdmisMet.Value <> 1) then
              begin // \\16
                AccDetAccValue.Value := IncomeStore.Value;
                AccDetAccTotal.Value := IncomeStore.Value *
                  AccListWeSpace.Value;
              end // \\16\\
              else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
                (AccListAdmisMet.Value = 1) then
              begin // \\17
                AccDetAccValue.Value := q1 * IncomeDirectState.Value;
                AccDetAccTotal.Value := q2 * IncomeDirectState.Value *
                  AccListWeSpace.Value;
              end; // \\17\\
            end // \\12\\
            else if AccDetAccType.Value = 22 then
            begin // \\18
              if (AccListElectric.Value = 1) then
                AccDetAccTotal.Value :=
                  (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) +
                  1) * (AccListGoodsQty.Value + AccListQty2.Value) *
                  MIncomeElecVAlue.Value
              else
                AccDetAccTotal.Value := 0;
            end // \\18\\
            ELSE if AccDetAccType.Value = 16 then
            begin // \\19
              if (AccListRemain.Value = 1) and
                (AccListWight.Value <= MIncomeW2.Value) then
              begin // \\20
                AccDetAccTotal.Value :=
                  (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value +
                  6) * MIncomeV2.Value) *
                  (AccListGoodsQty.Value + AccListQty2.Value);
                // ShowMessage(AccDetAccTotal.AsString);
              end // \\20
              else if (AccListRemain.Value = 1) and
                (AccListWight.Value > MIncomeW1.Value) and
                ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
                AccDetAccTotal.Value :=
                  (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value +
                  6) * MIncomeV1.Value) *
                  (AccListGoodsQty.Value + AccListQty2.Value)
              else
                AccDetAccTotal.Value := 0
            end // \\19\\
            else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 1) then
            begin // \\21
              AccDetAccValue.Value := IncomeRsef.Value;
              AccDetAccTotal.Value := IncomeRsef.Value * AccListWight.Value;
            end // \\21\\
            else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 0) then
            begin // \\22
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value := 0;
            end // \\22\\
            else if (AccDetAccType.Value <> 1) and (AccDetAccType.Value <> 2)
              and (AccDetAccType.Value <> 10) then
            begin // 1//1//
              if AccListKemawea.Value = 1 then
              begin // \\23

                // .................................................................................

                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value +
                          (IncomeDirect.Value * IncomePerc.Value / 100);
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value +
                          (IncomeStore.Value * IncomePerc.Value / 100);
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                      END

                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value +
                          (IncomeRsef.Value * IncomePerc.Value / 100);
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := (m10 * IncomePerc.Value / 100);;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;

              end // 23
              else
              begin // 24
                case AccListAdmisMet.Value of
                  1:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeMHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeMHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeMHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeDirect.Value;
                    END;
                  2:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeSHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeSHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeSHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeStore.Value;
                    END;
                  3:
                    BEGIN
                      IF (IncomeTypeFator.Value = 2) THEN
                      BEGIN
                        m10 := 0;
                        if (AccListUnit.Value = 1) then
                          m10 := m10 +
                            (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                        if (AccListUnit.Value = 2) then
                          m10 := m10 +
                            (IncomeRHAYAK.Value * AccListGoodsQty.Value);
                        if (AccListUnit2.Value = 1) then
                          m10 := m10 + (IncomeRHAYAS.Value * AccListQty2.Value);
                        if (AccListUnit2.Value = 2) then
                          m10 := m10 + (IncomeRHAYAK.Value * AccListQty2.Value);
                      END
                      ELSE
                        AccDetAccValue.Value := IncomeRsef.Value;
                    END;

                end; // case
                IF (IncomeTypeFator.Value = 2) THEN
                BEGIN
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := m10;
                END
                ELSE
                  AccDetAccTotal.Value := AccDetAccValue.Value *
                    AccListWeSpace.Value;
                // ShowMessage(AccDetAccTotal.AsString);
              end; // 24\\
            end; // 1//1//1//

          { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
          if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
          begin // 26
            AccDet.Edit;
            AccDetFromDate.Value := AccListArriveDate.Value;
            AccDetToDate.Value := AccListListDate.Value;
          end; // 26//
          if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
          begin // 27
            AccDet.Edit;
            AccDetFromDate.Clear;
            AccDetToDate.Clear;
          end; // 27//
          { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
          if (AccDetAccType.Value = 16) and (AccListRemain.Value = 1) and
            ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
          // if (AccDetAccType.Value=16)and(AccListRemain.Value=1) then
          begin // 28
            AccDet.Edit;
            AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
            AccDetToDate.Value := AccListListDate.Value;
          end; // 28//
          if (AccDetAccType.Value = 16) and
            ((AccListRemain.Value = 0) or ((AccListEndEmpDate.Value + 6) >=
            AccListListDate.Value)) then
          begin // 29
            AccDet.Edit;
            AccDetFromDate.Clear;
            AccDetToDate.Clear;
          end; // 29//

          if (AccListAdmisMet.Value = 3) and
            (AccDetAccTotal.Value < IncomeMin2.Value) and
            (AccDetAccValue.Value > 0) then
            AccDetAccTotal.Value := IncomeMin2.Value;
          if ((AccListAdmisMet.Value = 2) and
            (AccDetAccTotal.Value < IncomeMin2.Value) and
            (AccDetAccValue.Value > 0)) then
            AccDetAccTotal.Value := IncomeMin2.Value;
          // else if  (IncomeTypeFator.Value = 2) then
          // AccDetAccTotal.Value:= 0;
          // if {(AccListUnit.Value=3)or(AccListUnit.Value=4))and}(AccDetAccTotal.Value<IncomeMin2.Value)and(AccListAdmisMet.Value=1)and (AccDetAccValue.Value > 0)then
          // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
          // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
          // begin  //25
          // AccDetAccTotal.Value:=IIncomeMin.Value;
          if ((AccListAdmisMet.Value = 1) and
            (AccDetAccTotal.Value < IncomeMin.Value) and
            (AccDetAccValue.Value > 0)) then
            AccDetAccTotal.Value := IncomeMin.Value;

          AccDet.Post;
        end; // 5//
        { ----------------------- «—ÌŒ «· Œ“Ì‰-------------------------- }
        if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value <> 0) then
        begin // 30
          AccDet.Edit;
          AccDetFromDate.Value := AccListEndEmpDate.Value;
          AccDetToDate.Value := AccListAllwedDate.Value;
        end; // 30//
        if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value = 0) then
        begin // 31
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 31//
        AccDet.Next;
      end; // 2 while not AccDet.Eof do
      AccDet.GotoBookmark(bookmark);
      AccDet.EnableControls;
      BitBtn1Click(Sender);
    end
    { -----------------------------›Ì Õ«·… «·”›Ì‰… „Œ ·ÿ…----------------------------- }
    else
    // if (AccListNum1.Value<>0)and(AccListNum2.Value<>0) then
    BEGIN
      QtyType1 := AccListNum1.Value; { ⁄«œÌ… «·ÊÕœ… «·√Ê·Ï }
      QtyType2 := AccListNum2.Value; { —Ê—Ê «·ÊÕœ… «·√Ê·Ï }
      QtyType3 := AccListNum5.Value; { ⁄«œÌ… «·ÊÕœ… «·À«‰Ì… }
      QtyType4 := AccListNum6.Value; { —Ê—Ê «·ÊÕœ… «·À«‰Ì… }

      I := 1;
      while I <= 2 do
      begin
        // Ships.Locate('NumAuto',AccListShipNum.Value,[]);
        if I = 1 then { «·”›Ì‰… ⁄«œÌ… }
        begin
          GoodsQty := QtyType1; { «·⁄œœ ⁄«œÌ… }
          GoodsQty2 := QtyType3; { «·⁄œœ ⁄«œÌ… }

          if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            MIncome.Locate('ShipType;ShipMet;Goods',
              vararrayof([1, AccListShipMet.Value, 0]), []);
          if (AccListUnit.Value = 3) then
            MIncome.Locate('ShipType;ShipMet;Goods',
              vararrayof([1, AccListShipMet.Value, 1]), []);
          if (AccListUnit.Value = 4) then
            MIncome.Locate('ShipType;ShipMet;Goods',
              vararrayof([1, AccListShipMet.Value, 2]), []);
        end
        else if I = 2 then { —Ê—Ê }
        begin
          m10 := 0;
          GoodsQty := QtyType2; { «·⁄œœ —Ê—Ê }
          GoodsQty2 := QtyType4; { «·⁄œœ —Ê—Ê }
          if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
            MIncome.Locate('ShipType;ShipMet;Goods',
              vararrayof([2, AccListShipMet.Value, 0]), []);
          if (AccListUnit.Value = 3) then
            MIncome.Locate('ShipType;ShipMet;Goods',
              vararrayof([2, AccListShipMet.Value, 1]), []);
          if (AccListUnit.Value = 4) then
            MIncome.Locate('ShipType;ShipMet;Goods',
              vararrayof([2, AccListShipMet.Value, 2]), []);
        end;

        // ...................................................................................
        AccDet.DisableControls;
        bookmark := AccDet.GetBookmark;
        AccDet.First;
        while not AccDet.Eof do
        begin // 2
          if I = 1 then
          begin
            AccDet.Edit;
            AccDetAccTotal.Value := 0;
            AccDetAccValue.Value := 0;

          end;
          oldvalue := DmdFm.AccDetAccTotal.Value;
          Income.Locate('IncNum', DmdFm.AccDetAccType.Value, []);
          if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 1) then
          begin // 3
            Store.Locate('Num', AccListweeks.Value, []);
            AccDet.Edit;
            if AccListAdmisMet.Value = 3 then
              AccDetAccValue.Value := StoreWalk.Value +
                (StoreWalk.Value * IncomePerc.Value / 100);;
            if AccListAdmisMet.Value = 2 then
              AccDetAccValue.Value := StoreStore.Value +
                (StoreStore.Value * IncomePerc.Value / 100);;
            if AccListAdmisMet.Value = 1 then
              AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
            AccDet.Post;
          end; // 3\\

          if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 0) then
          begin // 4
            Store.Locate('Num', AccListweeks.Value, []);
            AccDet.Edit;
            if AccListAdmisMet.Value = 3 then
              AccDetAccValue.Value := StoreWalk.Value;
            if AccListAdmisMet.Value = 2 then
              AccDetAccValue.Value := StoreStore.Value;
            if AccListAdmisMet.Value = 1 then
              AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
            AccDet.Post;
          end; // \\4\\

          if AccDetAccType.Value <> 6 then
          begin // \5
            AccDet.Edit;
            // AccDetAccValue.Value :=0;
            // AccDetAccTotal.Value :=0;

            // .......................................—Ê«›⁄ «·«—÷Ì… „⁄ «·‰Ÿ— ›Ì «” Œœ«„ —«Ê›⁄ «·„Ì‰«¡

            if (AccDetAccType.Value = 10) and (I = 1) then { «·⁄«œÌ… ›ﬁÿ }
            begin // begin 1
              if (AccListCars.IsNull) then
              begin // R1
                if (AccListRoafe.Value = 1) then
                begin // \\23
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 +
                              (IncomeMHAYAS.Value * AccListNum1.Value);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 +
                              (IncomeMHAYAK.Value * AccListNum1.Value);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 +
                              (IncomeMHAYAS.Value * AccListNum5.Value);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 +
                              (IncomeMHAYAK.Value * AccListNum5.Value);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value;
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 +
                              (IncomeSHAYAS.Value * AccListNum1.Value);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 +
                              (IncomeSHAYAK.Value * AccListNum1.Value);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 +
                              (IncomeSHAYAS.Value * AccListNum5.Value);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 +
                              (IncomeSHAYAK.Value * AccListNum5.Value);
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value;
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 +
                              (DmdFm.IncomeRHAYAS.Value *
                              DmdFm.AccListNum1.Value);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 +
                              (DmdFm.IncomeRHAYAK.Value *
                              DmdFm.AccListNum1.Value);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 +
                              (DmdFm.IncomeRHAYAS.Value *
                              DmdFm.AccListNum5.Value);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 +
                              (DmdFm.IncomeRHAYAK.Value *
                              DmdFm.AccListNum5.Value);
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value;
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := m10;
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else

                begin // 24
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := 0;
                end; // 24\\
              end // R1//
              else // .................................................//
              begin // R2
                if AccListRoafe.Value = 1 then
                begin // \\23
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeMHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeMHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value;
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeSHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeSHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeSHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeSHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value;
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value) ;
                          begin
                            m11 := IncomeRHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value) ;
                          begin
                            m11 := IncomeRHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value) ;
                          begin
                            m11 := IncomeRHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value) ;
                          begin
                            m11 := IncomeRHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value;
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := m10;
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else
                begin // 24
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := 0;

                end; // 24\\
              end; // R2//
            end; // end 1

            // .......................................‰Â«Ì… «·—Ê«›⁄ «·«—÷Ì…

            if (AccDetAccType.Value = 1) then
            begin // begin 1
              if (AccListCars.IsNull) then
              begin // R1
                if AccListKemawea.Value = 1 then
                begin // \\23
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeMHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeMHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeMHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeMHAYAK.Value * GoodsQty2);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value +
                            (IncomeDirect.Value * IncomePerc.Value / 100);
                      END;
                    2:
                      BEGIN
                      END;
                    3:
                      BEGIN
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value :=
                      m10 + (m10 * IncomePerc.Value / 100);
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else
                begin // 24
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (DmdFm.IncomeMHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (DmdFm.IncomeMHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (DmdFm.IncomeMHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (DmdFm.IncomeMHAYAK.Value * GoodsQty2);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value;
                      END;
                    2:
                      BEGIN
                      END;
                    3:
                      BEGIN
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    DmdFm.AccDetAccTotal.Value := oldvalue + m10;
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;
                  // ShowMessage(AccDetAccTotal.AsString);
                end; // 24\\
              end // R1//
              else // .................................................//
              begin // R2
                if AccListKemawea.Value = 1 then
                begin // \\23
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeMHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeMHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value +
                            (IncomeDirect.Value * IncomePerc.Value / 100);
                      END;
                    2:
                      BEGIN
                      END;
                    3:
                      BEGIN
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := oldvalue +
                      (m10 + (m10 * IncomePerc.Value / 100));
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else
                begin // 24
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeMHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeMHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value;
                      END;
                    2:
                      BEGIN
                      END;
                    3:
                      BEGIN
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := AccDetAccTotal.Value + m10;
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end; // 24\\
              end; // R2//
            end; // end 1

            // ..................................................................................................

            // Œ«’ »ÿ—Ìﬁ… «· ”·Ì„ «·€Ì— „»«‘— ÃœÌœ ............................................... «·Õ«ÊÌ« »‘ﬂ· ⁄«„
            if (AccDetAccType.Value = 2) and (AccListAdmisMet.Value <> 1) then
            begin // begin 1
              if (AccListCars.IsNull) then
              begin // R1
                if AccListKemawea.Value = 1 then
                begin // \\23
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty2);
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value +
                            (IncomeStore.Value * IncomePerc.Value / 100);
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty2);
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value +
                            (IncomeRsef.Value * IncomePerc.Value / 100);
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value :=
                      m10 + (m10 * IncomePerc.Value / 100);
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else
                begin // 24
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty2);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value;
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty2);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value;
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := oldvalue + m10;
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;
                  // ShowMessage(AccDetAccTotal.AsString);
                end; // 24\\
              end // R1//
              else // .................................................//
              begin // R2
                if AccListKemawea.Value = 1 then
                begin // \\23
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeSHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeSHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeSHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeSHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value +
                            (IncomeStore.Value * IncomePerc.Value / 100);
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value) ;
                          begin
                            m11 := IncomeRHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value) ;
                          begin
                            m11 := IncomeRHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value) ;
                          begin
                            m11 := IncomeRHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value) ;
                          begin
                            m11 := IncomeRHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value +
                            (IncomeRsef.Value * IncomePerc.Value / 100);
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value :=
                      m10 + (m10 * IncomePerc.Value / 100);
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else
                begin // 24
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeSHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeSHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeSHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeSHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value;
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          m11 := 0;
                          if (AccListUnit.Value = 1) then
                          // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeRHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit.Value = 2) then
                          // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value);
                          begin
                            m11 := IncomeRHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 1) then
                          // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value);
                          begin
                            m11 := IncomeRHAYAS.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                          if (AccListUnit2.Value = 2) then
                          // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value);                                END
                          begin
                            m11 := IncomeRHAYAK.Value / AccListStates.Value;
                            m10 := m10 + (m11 * AccListCars.Value);
                          end;
                        end
                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value;
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := oldvalue + m10;
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end; // 24\\
              end; // R2//
            end; // end 1
            /// ...................................................................................................

            if (AccDetAccType.Value = 9) then
            begin // 6
              if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
              begin // 7
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value :=
                  ((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                  (AccListQty2.Value * q2 * IncomeStatesNum.Value))
              end // \7\\
              else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
              begin // 8
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value :=
                  (((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                  (AccListQty2.Value * q2 * IncomeStatesNum.Value)) /
                  AccListStates.Value * AccListCars.Value);
              end // \\8\\
              else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                (AccListAdmisMet.Value = 1) then
              begin // 9
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := oldvalue +
                  ((AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
                  (AccListQty2.Value * q2 * IncomeDirectState.Value))
              end // \\9\\
              else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
                (AccListAdmisMet.Value <> 1) then
              begin // \\10
                AccDetAccValue.Value := q1 * IncomeStatesNum.Value;
                AccDetAccTotal.Value := q1 * IncomeStatesNum.Value *
                  AccListWeSpace.Value
              end // \\10\\
              else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
                (AccListAdmisMet.Value = 1) then
              begin // \\11
                AccDetAccValue.Value := q1 * IncomeDirectState.Value;
                AccDetAccTotal.Value := q1 * IncomeDirectState.Value *
                  AccListWeSpace.Value;
              end; // \\11\\

              if (AccListAdmisMet.Value = 3) and
                (AccDetAccTotal.Value < IncomeMin2.Value) and
                (IncomeStatesNum.Value = 1) then
                // and (AccDetAccValue.Value > 0)  then
                AccDetAccTotal.Value := IncomeMin2.Value;
              if ((AccListAdmisMet.Value = 2) and
                (AccDetAccTotal.Value < IncomeMin2.Value) and
                (IncomeStatesNum.Value = 1)) then
                // and (AccDetAccValue.Value > 0))  then
                AccDetAccTotal.Value := oldvalue + (IncomeMin2.Value);
              // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
              // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
              // begin  //25
              // AccDetAccTotal.Value:=IIncomeMin.Value;
              if ((AccListAdmisMet.Value = 1) and
                (AccDetAccTotal.Value < IncomeMin.Value) and
                (IncomeDirectState.Value = 1)) then
                AccDetAccTotal.Value := oldvalue + (IncomeMin.Value);
            end // \\6\\
            else
              // .......................................   › Ì‘ ”Ì«—« 

              if (AccDetAccType.Value = 23) then
              begin

                AccDetAccValue.Value := 0;
                IF (AccListTfteshCar.Value = 1) THEN
                  AccDetAccTotal.Value :=
                    (AccListGoodsQty.Value + AccListQty2.Value +
                    AccListQty3.Value) * IncomeRsef.Value
                ELSE
                  AccDetAccTotal.Value := 0;

              end

              else if (AccDetAccType.Value = 12) then
              begin // \\12
                if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                  (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
                begin // \\13
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := oldvalue +
                    ((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                    (AccListQty2.Value * q2 * IncomeStatesNum.Value))
                end // \\13\\
                else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                  (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
                begin // \\14
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := oldvalue +
                    (((AccListGoodsQty.Value * q1 * IncomeStatesNum.Value) +
                    (AccListQty2.Value * q2 * IncomeStatesNum.Value)) /
                    AccListStates.Value * AccListCars.Value);
                end // \\14\\

                else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
                  (AccListAdmisMet.Value = 1) then
                begin // \\15
                  AccDetAccValue.Value := 0;
                  AccDetAccTotal.Value := oldvalue +
                    ((AccListGoodsQty.Value * q1 * IncomeDirectState.Value) +
                    (AccListQty2.Value * q2 * IncomeDirectState.Value))
                end // \\15\\
                else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
                  (AccListAdmisMet.Value <> 1) then
                begin // \\16
                  AccDetAccValue.Value := IncomeStore.Value;
                  AccDetAccTotal.Value := IncomeStore.Value *
                    AccListWeSpace.Value;
                end // \\16\\
                else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
                  (AccListAdmisMet.Value = 1) then
                begin // \\17
                  AccDetAccValue.Value := q1 * IncomeDirectState.Value;
                  AccDetAccTotal.Value := q2 * IncomeDirectState.Value *
                    AccListWeSpace.Value;
                end; // \\17\\
              end // \\12\\
              else if AccDetAccType.Value = 22 then
              begin // \\18
                if (AccListElectric.Value = 1) then
                  AccDetAccTotal.Value := oldvalue +
                    ((DaysBetween(AccListListDate.Value,
                    AccListArriveDate.Value) + 1) *
                    (AccListGoodsQty.Value + AccListQty2.Value) *
                    MIncomeElecVAlue.Value)
                else
                  AccDetAccTotal.Value := 0;
              end // \\18\\
              ELSE if AccDetAccType.Value = 16 then
              begin // \\19
                if (AccListRemain.Value = 1) and
                  (AccListWight.Value <= MIncomeW2.Value) then
                begin // \\20
                  AccDetAccTotal.Value := oldvalue +
                    ((DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value
                    + 6) * MIncomeV2.Value) * (AccListGoodsQty.Value +
                    AccListQty2.Value));
                  // ShowMessage(AccDetAccTotal.AsString);
                end // \\20
                else if (AccListRemain.Value = 1) and
                  (AccListWight.Value > MIncomeW1.Value) then
                  AccDetAccTotal.Value := oldvalue +
                    ((DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value
                    + 6) * MIncomeV1.Value) * (AccListGoodsQty.Value +
                    AccListQty2.Value))
                else
                  AccDetAccTotal.Value := 0
              end // \\19\\
              else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 1)
              then
              begin // \\21
                AccDetAccValue.Value := IncomeRsef.Value;
                AccDetAccTotal.Value := IncomeRsef.Value * AccListWight.Value;
              end // \\21\\
              else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 0)
              then
              begin // \\22
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := 0;
              end // \\22\\
              else if (AccDetAccType.Value <> 1) and (AccDetAccType.Value <> 2)
                and (AccDetAccType.Value <> 10) then
              begin // 1//1//
                if AccListKemawea.Value = 1 then
                begin // \\23

                  // .................................................................................

                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeMHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeMHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeMHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeMHAYAK.Value * GoodsQty2);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeDirect.Value +
                            (IncomeDirect.Value * IncomePerc.Value / 100);
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty2);
                        END
                        ELSE
                          AccDetAccValue.Value := IncomeStore.Value +
                            (IncomeStore.Value * IncomePerc.Value / 100);
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty2);
                        END

                        ELSE
                          AccDetAccValue.Value := IncomeRsef.Value +
                            (IncomeRsef.Value * IncomePerc.Value / 100);
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := oldvalue +
                      ((m10 * IncomePerc.Value / 100));
                  END
                  ELSE
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;

                end // 23
                else
                begin // 24
                  case AccListAdmisMet.Value of
                    1:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeMHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeMHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeMHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeMHAYAK.Value * GoodsQty2);
                        END
                        ELSE if AccDetAccValue.Value = 0 then
                          AccDetAccValue.Value := IncomeDirect.Value;
                      END;
                    2:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeSHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeSHAYAK.Value * GoodsQty2);
                        END
                        ELSE if AccDetAccValue.Value = 0 then
                          AccDetAccValue.Value := IncomeStore.Value;
                      END;
                    3:
                      BEGIN
                        IF (IncomeTypeFator.Value = 2) THEN
                        BEGIN
                          m10 := 0;
                          if (AccListUnit.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty);
                          if (AccListUnit.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty);
                          if (AccListUnit2.Value = 1) then
                            m10 := m10 + (IncomeRHAYAS.Value * GoodsQty2);
                          if (AccListUnit2.Value = 2) then
                            m10 := m10 + (IncomeRHAYAK.Value * GoodsQty2);
                        END
                        ELSE if AccDetAccValue.Value = 0 then
                          AccDetAccValue.Value := IncomeRsef.Value;
                      END;

                  end; // case
                  IF (IncomeTypeFator.Value = 2) THEN
                  BEGIN
                    AccDetAccValue.Value := 0;
                    AccDetAccTotal.Value := m10;
                  END
                  ELSE if AccDetAccType.Value = 14 then
                  begin
                    if AccListUnit.Value = 1 then
                      AccDetAccTotal.Value := AccDetAccValue.Value *
                        ((QtyType1 * 35) + ((QtyType3 - AccListQty3.Value) * 70)
                        + (AccListQty3.Value * 95))
                    else if AccListUnit.Value = 2 then
                      AccDetAccTotal.Value := AccDetAccValue.Value *
                        ((QtyType1 * 70) + ((QtyType3 - AccListQty3.Value) * 70)
                        + (AccListQty3.Value * 95))

                  end
                  else
                    AccDetAccTotal.Value := AccDetAccValue.Value *
                      AccListWeSpace.Value;
                  // ShowMessage(AccDetAccTotal.AsString);
                end; // 24\\
              end; // 1//1//1//

            { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
            if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
            begin // 26
              AccDet.Edit;
              AccDetFromDate.Value := AccListArriveDate.Value;
              AccDetToDate.Value := AccListListDate.Value;
            end; // 26//
            if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
            begin // 27
              AccDet.Edit;
              AccDetFromDate.Clear;
              AccDetToDate.Clear;
            end; // 27//
            { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
            if (AccDetAccType.Value = 16) and (AccListRemain.Value = 1) then
            begin // 28
              AccDet.Edit;
              AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
              AccDetToDate.Value := AccListListDate.Value;
            end; // 28//
            if (AccDetAccType.Value = 16) and (AccListRemain.Value = 0) then
            begin // 29
              AccDet.Edit;
              AccDetFromDate.Clear;
              AccDetToDate.Clear;
            end; // 29//

            if (AccListAdmisMet.Value = 3) and
              (AccDetAccTotal.Value < IncomeMin2.Value) and
              (AccDetAccValue.Value > 0) then
              AccDetAccTotal.Value := oldvalue + (IncomeMin2.Value);
            if ((AccListAdmisMet.Value = 2) and
              (AccDetAccTotal.Value < IncomeMin2.Value) and
              (AccDetAccValue.Value > 0)) then
              AccDetAccTotal.Value := oldvalue + (IncomeMin2.Value);
            // else if  (IncomeTypeFator.Value = 2) then
            // AccDetAccTotal.Value:= 0;
            // if {(AccListUnit.Value=3)or(AccListUnit.Value=4))and}(AccDetAccTotal.Value<IncomeMin2.Value)and(AccListAdmisMet.Value=1)and (AccDetAccValue.Value > 0)then
            // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
            // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
            // begin  //25
            // AccDetAccTotal.Value:=IIncomeMin.Value;
            if ((AccListAdmisMet.Value = 1) and
              (AccDetAccTotal.Value < IncomeMin.Value) and
              (AccDetAccValue.Value > 0)) then
              AccDetAccTotal.Value := oldvalue + (IncomeMin.Value);

            AccDet.Post;
          end; // 5//
          { ----------------------- «—ÌŒ «· Œ“Ì‰-------------------------- }
          if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value <> 0) then
          begin // 30
            AccDet.Edit;
            AccDetFromDate.Value := AccListEndEmpDate.Value;
            AccDetToDate.Value := AccListAllwedDate.Value;
          end; // 30//
          if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value = 0) then
          begin // 31
            AccDet.Edit;
            AccDetFromDate.Clear;
            AccDetToDate.Clear;
          end; // 31//
          AccDet.Next;
        end; // 2 while not AccDet.Eof do
        AccDet.GotoBookmark(bookmark);
        AccDet.EnableControls;
        BitBtn1Click(Sender);
        I := I + 1;
      end;
    end;
    try
      if creEfraj = 1 then
      begin
        // DmdFm.Sload.FilterSQL := 'LNum=' + DmdFm.VloadlistNum.AsString +
        // ' and selectF = 0';
        with DmdFm do
        begin
          // VSloadH.Close;
          // VSloadH.ParamByName('VNumT').Value := VDateHrakNum.Value;
          // VSloadH.ParamByName('VSNum').Value := 0;
          // VSloadH.Execute;

          // DmdFm.VSloadH.First;
          // while not DmdFm.VSloadH.Eof do
          // begin
          if VSloadH.Locate('BillNum', strtoint(s), []) then
            // begin
            // VSloadH.Edit;
            // VSloadHBillNum.Clear;
            // end;
            // DmdFm.VSloadH.Next;
            // end;
            // DmdFm.sload.EnableControls;
            // if VSloadH.State = dsedit then
            // VSloadH.Post;
            // Sload.Refresh;

            // VloadHrak.Close;
            // VloadHrak.ParamByName('VNumT').Value := VDateHrakNum.Value;
            // VloadHrak.Execute;
        end;
      end;
    except
    end;

  end; // 1  with DmdFm do
  if EditFlag = 1 then
    sBitBtn1.Enabled := true;
  sBitBtn19Click(Sender);
end; // 0

procedure TAcListFm.Button1Click(Sender: TObject);
begin
  WITH DmdFm DO
  BEGIN
    AccDet.Edit;
    AccDetAccTotal.Value := (AccDetAccValue.Value * AccListWeSpace.Value);

    // DmdFm.Income.Locate('IncNm',AccDetTypeNm.Value,[]);
    case AccListAdmisMet.Value of
      1:
        begin
          if AccDetAccTotal.Value < IncomeMin2.Value then
            AccDetAccTotal.Value := IncomeMin2.Value;
        END;
      2:
        begin
          if AccDetAccTotal.Value < IncomeMin.Value then
            AccDetAccTotal.Value := IncomeMin.Value;
        END;
      3:
        begin
          if AccDetAccTotal.Value < IncomeMin.Value then
            AccDetAccTotal.Value := IncomeMin.Value;
        END;
    END;
    AccDet.Post;

  END;

end;

procedure TAcListFm.BitBtn1Click(Sender: TObject);
var
  bookmark: TBookmark;
begin
  with DmdFm do
  begin
    AccDet.DisableControls;
    bookmark := AccDet.GetBookmark;
    DmdFm.AccDet.First;
    while not AccDet.Eof do
    begin
      AccDet.Edit;
      AccDetAccTotal.Value := dmdfm.AccDetAccTotal.Value -
        (dmdfm.AccDetAccTotal.Value * dmdfm.AccDetNasb.Value / 100);
      AccDetAccTotal.Value := Tkrib(AccDetAccTotal.Value);
      AccDet.Post;
      AccDet.Next;

    end;
    AccDet.GotoBookmark(bookmark);
    AccDet.EnableControls;
  end;
end;

procedure TAcListFm.sBitBtn16Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');

    { if (AccType = 2)then
      begin
      LoadList.CancelRange;
      load.CancelRange;

      load.Locate('Auto',AccListNumT.Value,[]);

      load.Edit;
      loadBillNum.Value := AccListListNum.Value;
      load.Post;
      end;

      LoadList.Refresh; }
    // AccDet.Close;
    // AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    // AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    // AccDet.Execute;

    AccDet.Close;
    AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    AccDet.Execute;

    IIncome.First;
    while not IIncome.Eof do
    begin
      AccDet.Insert;
      AccDetAccType.Value := IIncomeIncNum.Value;
      accdetAccNum.Value := AccListListNum.Value;
      accdetListType.Value := AccListListType.Value;
      AccDet.Post;
      IIncome.Next;
    end;


    // AccDet.Refresh;
    // AccDet.Close;
    // AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    // AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    // AccDet.Execute;

    sBitBtn18Click(Sender);
    // AccDet.Close;
    // AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    // AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    // AccDet.Execute;
  end;
end;

procedure TAcListFm.sBitBtn18Click(Sender: TObject);
var
  q1, q2, m10, m11, m12: real;
begin // 0
  with DmdFm do
  begin // 1
    Units.Locate('Num', AccListUnit.Value, []);
    q1 := UnitsStateValue.Value;
    Units.Locate('Num', AccListUnit2.Value, []);
    q2 := UnitsStateValue.Value;
    // ··Êﬁ…› ⁄·Ï ⁄Ê«∆œ «·„‰«Ê·… «·„ÿ·Ê»…................................................
    Ships.Locate('NumAuto', AccListShipNum.Value, []);
    if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([AccListShipType.Value, AccListShipMet.Value, 0]), []);
    if (AccListUnit.Value = 3) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([AccListShipType.Value, AccListShipMet.Value, 1]), []);
    if (AccListUnit.Value = 4) then
      MIncome.Locate('ShipType;ShipMet;Goods',
        vararrayof([AccListShipType.Value, AccListShipMet.Value, 2]), []);
    // ...................................................................................

    AccDet.First;
    while not AccDet.Eof do
    begin // 2
      IIncome.Locate('IncNum', AccDetAccType.Value, []);
      if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 1) then
      begin // 3
        Store.Locate('Num', AccListweeks.Value, []);
        AccDet.Edit;
        if AccListAdmisMet.Value = 3 then
          AccDetAccValue.Value := StoreWalk.Value +
            (StoreWalk.Value * IincomePerc.Value / 100);;
        if AccListAdmisMet.Value = 2 then
          AccDetAccValue.Value := StoreStore.Value +
            (StoreStore.Value * IincomePerc.Value / 100);;
        if AccListAdmisMet.Value = 1 then
          AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        AccDet.Post;
      end; // 3\\

      if (AccDetAccType.Value = 6) and (AccListKemawea.Value = 0) then
      begin // 4
        Store.Locate('Num', AccListweeks.Value, []);
        AccDet.Edit;
        if AccListAdmisMet.Value = 3 then
          AccDetAccValue.Value := StoreWalk.Value;
        if AccListAdmisMet.Value = 2 then
          AccDetAccValue.Value := StoreStore.Value;
        if AccListAdmisMet.Value = 1 then
          AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := AccDetAccValue.Value * AccListWeSpace.Value;
        AccDet.Post;
      end; // \\4\\

      if AccDetAccType.Value <> 6 then
      begin // \5
        AccDet.Edit;
        AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := 0;
        // .......................................—Ê«›⁄ «·«—÷Ì… „⁄ «·‰Ÿ— ›Ì «” Œœ«„ —«Ê›⁄ «·„Ì‰«¡

        if (AccDetAccType.Value = 10) then
        begin // begin 1
          if (AccListCars.IsNull) then
          begin // R1
            if AccListRoafe.Value = 1 then
            begin // \\23
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeMHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeMHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeMHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeMHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value;
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeSHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeSHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeSHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeSHAYAK.Value * AccListQty2.Value);
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value;
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeRHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeRHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeRHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeRHAYAK.Value * AccListQty2.Value);
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value;
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else

            begin // 24
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value := 0;
            end; // 24\\
          end // R1//
          else // .................................................//
          begin // R2
            if AccListRoafe.Value = 1 then
            begin // \\23
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeMHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeMHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value;
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeSHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeSHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeSHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeSHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value;
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value) ;
                      begin
                        m11 := IIncomeRHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value) ;
                      begin
                        m11 := IIncomeRHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value) ;
                      begin
                        m11 := IIncomeRHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value) ;
                      begin
                        m11 := IIncomeRHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value;
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else
            begin // 24
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value := 0;

            end; // 24\\
          end; // R2//
        end; // end 1

        // .......................................‰Â«Ì… «·—Ê«›⁄ «·«—÷Ì…

        if (AccDetAccType.Value = 1) then
        begin // begin 1
          if (AccListCars.IsNull) then
          begin // R1
            if AccListKemawea.Value = 1 then
            begin // \\23
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeMHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeMHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeMHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeMHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value +
                        (IincomeDirect.Value * IincomePerc.Value / 100);
                  END;
                2:
                  BEGIN
                  END;
                3:
                  BEGIN
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else
            begin // 24
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeMHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeMHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeMHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeMHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value;
                  END;
                2:
                  BEGIN
                  END;
                3:
                  BEGIN
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;
              // ShowMessage(AccDetAccTotal.AsString);
            end; // 24\\
          end // R1//
          else // .................................................//
          begin // R2
            if AccListKemawea.Value = 1 then
            begin // \\23
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeMHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeMHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value +
                        (IincomeDirect.Value * IincomePerc.Value / 100);
                  END;
                2:
                  BEGIN
                  END;
                3:
                  BEGIN
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else
            begin // 24
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeMHAYAS.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeMHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeMHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeMHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeMHAYAK.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeMHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value;
                  END;
                2:
                  BEGIN
                  END;
                3:
                  BEGIN
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end; // 24\\
          end; // R2//
        end; // end 1

        // ..................................................................................................

        // Œ«’ »ÿ—Ìﬁ… «· ”·Ì„ «·€Ì— „»«‘— ÃœÌœ ............................................... «·Õ«ÊÌ« »‘ﬂ· ⁄«„
        if (AccDetAccType.Value = 2) and (AccListAdmisMet.Value <> 1) then
        begin // begin 1
          if (AccListCars.IsNull) then
          begin // R1
            if AccListKemawea.Value = 1 then
            begin // \\23
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeSHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeSHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeSHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeSHAYAK.Value * AccListQty2.Value);
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value +
                        (IincomeStore.Value * IincomePerc.Value / 100);
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeRHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeRHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeRHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeRHAYAK.Value * AccListQty2.Value);
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value +
                        (IincomeRsef.Value * IincomePerc.Value / 100);
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else
            begin // 24
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeSHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeSHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeSHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeSHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value;
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeRHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeRHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeRHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeRHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value;
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;
              // ShowMessage(AccDetAccTotal.AsString);
            end; // 24\\
          end // R1//
          else // .................................................//
          begin // R2
            if AccListKemawea.Value = 1 then
            begin // \\23
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeSHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeSHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeSHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeSHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value +
                        (IincomeStore.Value * IincomePerc.Value / 100);
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value) ;
                      begin
                        m11 := IIncomeRHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value) ;
                      begin
                        m11 := IIncomeRHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value) ;
                      begin
                        m11 := IIncomeRHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value) ;
                      begin
                        m11 := IIncomeRHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value +
                        (IincomeRsef.Value * IincomePerc.Value / 100);
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10 + (m10 * IincomePerc.Value / 100);
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else
            begin // 24
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeSHAYAS.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeSHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeSHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeSHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeSHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeSHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeSHAYAK.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeSHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value;
                  END;
                3:
                  BEGIN
                    IF (IncomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      m11 := 0;
                      if (AccListUnit.Value = 1) then
                      // m10:=m10+ (IncomeRHAYAS.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeRHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit.Value = 2) then
                      // m10 := m10 +(IncomeRHAYAK.Value * AccListGoodsQty.Value);
                      begin
                        m11 := IIncomeRHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 1) then
                      // m10:=m10+ (IncomeRHAYAS.Value * AccListQty2.Value);
                      begin
                        m11 := IIncomeRHAYAS.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                      if (AccListUnit2.Value = 2) then
                      // m10 := m10 +(IncomeRHAYAK.Value * AccListQty2.Value);                                END
                      begin
                        m11 := IIncomeRHAYAK.Value / AccListStates.Value;
                        m10 := m10 + (m11 * AccListCars.Value);
                      end;
                    end
                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value;
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end; // 24\\
          end; // R2//
        end; // end 1
        /// ...................................................................................................

        if (AccDetAccType.Value = 9) then
        begin // 6
          if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
          begin // 7
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              (AccListGoodsQty.Value * q1 * IIncomeStatesNum.Value) +
              (AccListQty2.Value * q2 * IIncomeStatesNum.Value)
          end // \7\\
          else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
          begin // 8
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              ((AccListGoodsQty.Value * q1 * IIncomeStatesNum.Value) +
              (AccListQty2.Value * q2 * IIncomeStatesNum.Value)) /
              AccListStates.Value * AccListCars.Value;
          end // \\8\\
          else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
            (AccListAdmisMet.Value = 1) then
          begin // 9
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value :=
              (AccListGoodsQty.Value * q1 * IIncomeDirectState.Value) +
              (AccListQty2.Value * q2 * IIncomeDirectState.Value)
          end // \\9\\
          else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
            (AccListAdmisMet.Value <> 1) then
          begin // \\10
            AccDetAccValue.Value := q1 * IIncomeStatesNum.Value;
            AccDetAccTotal.Value := q1 * IIncomeStatesNum.Value *
              AccListWeSpace.Value
          end // \\10\\
          else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
            (AccListAdmisMet.Value = 1) then
          begin // \\11
            AccDetAccValue.Value := q1 * IIncomeDirectState.Value;
            AccDetAccTotal.Value := q1 * IIncomeDirectState.Value *
              AccListWeSpace.Value;
          end; // \\11\\

          if (AccListAdmisMet.Value = 3) and
            (AccDetAccTotal.Value < IncomeMin2.Value) and
            (IncomeStatesNum.Value = 1) then
            // and (AccDetAccValue.Value > 0)  then
            AccDetAccTotal.Value := IncomeMin2.Value;
          if ((AccListAdmisMet.Value = 2) and
            (AccDetAccTotal.Value < IncomeMin2.Value) and
            (IncomeStatesNum.Value = 1)) then
            // and (AccDetAccValue.Value > 0))  then
            AccDetAccTotal.Value := IncomeMin2.Value;
          // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
          // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
          // begin  //25
          // AccDetAccTotal.Value:=IIncomeMin.Value;
          if ((AccListAdmisMet.Value = 1) and
            (AccDetAccTotal.Value < IncomeMin.Value) and
            (IncomeDirectState.Value = 1)) then
            AccDetAccTotal.Value := IncomeMin.Value;

          // if ((AccDetAccTotal.Value<IIncomeMin.Value) and(AccListAdmisMet.Value=1) and (IIncomeTypeFator.Value <> 2))then
          // AccDetAccTotal.Value:=IIncomeMin.Value;

        end // \\6\\
        else
          // .......................................   › Ì‘ ”Ì«—« 

          if (AccDetAccType.Value = 23) then
          begin

            AccDetAccValue.Value := 0;
            IF (AccListTfteshCar.Value = 1) THEN
              AccDetAccTotal.Value :=
                (AccListGoodsQty.Value + AccListQty2.Value + AccListQty3.Value)
                * IincomeRsef.Value
            ELSE
              AccDetAccTotal.Value := 0;

          end

          else if (AccDetAccType.Value = 12) then
          begin // \\12
            if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
              (AccListAdmisMet.Value <> 1) and (AccListCars.IsNull) then
            begin // \\13
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value :=
                (AccListGoodsQty.Value * q1 * IIncomeStatesNum.Value) +
                (AccListQty2.Value * q2 * IIncomeStatesNum.Value)
            end // \\13\\
            else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
              (AccListAdmisMet.Value <> 1) and (not AccListCars.IsNull) then
            begin // \\14
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value :=
                ((AccListGoodsQty.Value * q1 * IIncomeStatesNum.Value) +
                (AccListQty2.Value * q2 * IIncomeStatesNum.Value)) /
                AccListStates.Value * AccListCars.Value;
            end // \\14\\

            else if ((AccListUnit.Value = 1) or (AccListUnit.Value = 2)) and
              (AccListAdmisMet.Value = 1) then
            begin // \\15
              AccDetAccValue.Value := 0;
              AccDetAccTotal.Value :=
                (AccListGoodsQty.Value * q1 * IIncomeDirectState.Value) +
                (AccListQty2.Value * q2 * IIncomeDirectState.Value)
            end // \\15\\
            else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
              (AccListAdmisMet.Value <> 1) then
            begin // \\16
              AccDetAccValue.Value := IincomeStore.Value;
              AccDetAccTotal.Value := IincomeStore.Value * AccListWeSpace.Value;
            end // \\16\\
            else if ((AccListUnit.Value = 3) or (AccListUnit.Value = 4)) and
              (AccListAdmisMet.Value = 1) then
            begin // \\17
              AccDetAccValue.Value := q1 * IIncomeDirectState.Value;
              AccDetAccTotal.Value := q2 * IIncomeDirectState.Value *
                AccListWeSpace.Value;
            end; // \\17\\
          end // \\12\\
          else if AccDetAccType.Value = 22 then
          begin // \\18
            if (AccListElectric.Value = 1) then
              AccDetAccTotal.Value :=
                (DaysBetween(AccListListDate.Value, AccListArriveDate.Value) +
                1) * (AccListGoodsQty.Value + AccListQty2.Value) *
                MIncomeElecVAlue.Value
            else
              AccDetAccTotal.Value := 0;
          end // \\18\\
          ELSE if AccDetAccType.Value = 16 then
          begin // \\19
            if (AccListRemain.Value = 1) and
              (AccListWight.Value <= MIncomeW2.Value) then
            begin // \\20
              AccDetAccTotal.Value :=
                (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6)
                * MIncomeV2.Value) *
                (AccListGoodsQty.Value + AccListQty2.Value);
              // ShowMessage(AccDetAccTotal.AsString);
            end // \\20
            else if (AccListRemain.Value = 1) and
              (AccListWight.Value > MIncomeW1.Value) then
              AccDetAccTotal.Value :=
                (DaysBetween(AccListListDate.Value, AccListEndEmpDate.Value + 6)
                * MIncomeV1.Value) * (AccListGoodsQty.Value + AccListQty2.Value)
            else
              AccDetAccTotal.Value := 0
          end // \\19\\
          else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 1) then
          begin // \\21
            AccDetAccValue.Value := IincomeRsef.Value;
            AccDetAccTotal.Value := IincomeRsef.Value * AccListWight.Value;
          end // \\21\\
          else if (AccDetAccType.Value = 13) and (AccListMezan.Value = 0) then
          begin // \\22
            AccDetAccValue.Value := 0;
            AccDetAccTotal.Value := 0;
          end // \\22\\
          else if (AccDetAccType.Value <> 1) and (AccDetAccType.Value <> 2) and
            (AccDetAccType.Value <> 10) then
          begin // 1//1//
            if AccListKemawea.Value = 1 then
            begin // \\23

              // .................................................................................

              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeMHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeMHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeMHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeMHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value +
                        (IincomeDirect.Value * IincomePerc.Value / 100);
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeSHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeSHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeSHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeSHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value +
                        (IincomeStore.Value * IincomePerc.Value / 100);
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeRHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeRHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeRHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeRHAYAK.Value * AccListQty2.Value);
                    END

                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value +
                        (IincomeRsef.Value * IincomePerc.Value / 100);
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := (m10 * IincomePerc.Value / 100);;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;

            end // 23
            else
            begin // 24
              case AccListAdmisMet.Value of
                1:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeMHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeMHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeMHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeMHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeDirect.Value;
                  END;
                2:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeSHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeSHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeSHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeSHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeStore.Value;
                  END;
                3:
                  BEGIN
                    IF (IincomeTypeFator.Value = 2) THEN
                    BEGIN
                      m10 := 0;
                      if (AccListUnit.Value = 1) then
                        m10 := m10 +
                          (IIncomeRHAYAS.Value * AccListGoodsQty.Value);
                      if (AccListUnit.Value = 2) then
                        m10 := m10 +
                          (IIncomeRHAYAK.Value * AccListGoodsQty.Value);
                      if (AccListUnit2.Value = 1) then
                        m10 := m10 + (IIncomeRHAYAS.Value * AccListQty2.Value);
                      if (AccListUnit2.Value = 2) then
                        m10 := m10 + (IIncomeRHAYAK.Value * AccListQty2.Value);
                    END
                    ELSE
                      AccDetAccValue.Value := IincomeRsef.Value;
                  END;

              end; // case
              IF (IincomeTypeFator.Value = 2) THEN
              BEGIN
                AccDetAccValue.Value := 0;
                AccDetAccTotal.Value := m10;
              END
              ELSE
                AccDetAccTotal.Value := AccDetAccValue.Value *
                  AccListWeSpace.Value;
              // ShowMessage(AccDetAccTotal.AsString);
            end; // 24\\
          end; // 1//1//1//

        { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
        if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
        begin // 26
          AccDet.Edit;
          AccDetFromDate.Value := AccListArriveDate.Value;
          AccDetToDate.Value := AccListListDate.Value;
        end; // 26//
        if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
        begin // 27
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 27//
        { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
        if (AccDetAccType.Value = 16) and (AccListRemain.Value = 1) then
        begin // 28
          AccDet.Edit;
          AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
          AccDetToDate.Value := AccListListDate.Value;
        end; // 28//
        if (AccDetAccType.Value = 16) and (AccListRemain.Value = 0) then
        begin // 29
          AccDet.Edit;
          AccDetFromDate.Clear;
          AccDetToDate.Clear;
        end; // 29//

        if (AccListAdmisMet.Value = 3) and
          (AccDetAccTotal.Value < IincomeMin2.Value) and
          (AccDetAccValue.Value > 0) then
          AccDetAccTotal.Value := IincomeMin2.Value;
        if ((AccListAdmisMet.Value = 2) and
          (AccDetAccTotal.Value < IincomeMin2.Value) and
          (AccDetAccValue.Value > 0)) then
          AccDetAccTotal.Value := IincomeMin2.Value;
        // else if  (IncomeTypeFator.Value = 2) then
        // AccDetAccTotal.Value:= 0;
        // if {(AccListUnit.Value=3)or(AccListUnit.Value=4))and}(AccDetAccTotal.Value<IncomeMin2.Value)and(AccListAdmisMet.Value=1)and (AccDetAccValue.Value > 0)then
        // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
        // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
        // begin  //25
        // AccDetAccTotal.Value:=IIncomeMin.Value;
        if ((AccListAdmisMet.Value = 1) and
          (AccDetAccTotal.Value < IincomeMin.Value) and
          (AccDetAccValue.Value > 0)) then
          AccDetAccTotal.Value := IincomeMin.Value;

        AccDet.Post;
      end; // 5//
      { ----------------------- «—ÌŒ «· Œ“Ì‰-------------------------- }
      if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value <> 0) then
      begin // 30
        AccDet.Edit;
        AccDetFromDate.Value := AccListEndEmpDate.Value;
        AccDetToDate.Value := AccListAllwedDate.Value;
      end; // 30//
      if (AccDetAccType.Value = 6) and (AccDetAccTotal.Value = 0) then
      begin // 31
        AccDet.Edit;
        AccDetFromDate.Clear;
        AccDetToDate.Clear;
      end; // 31//

      AccDet.Next;
    end; // 2 while not AccDet.Eof do
  end; // 1  with DmdFm do
  BitBtn1Click(Sender);
  sBitBtn19Click(Sender);
end; // 0

procedure TAcListFm.Button2Click(Sender: TObject);
begin
  WITH DmdFm DO
  BEGIN
    AccDet.Edit;
    AccDetAccTotal.Value := (AccDetAccValue.Value * AccListWeSpace.Value);

    // DmdFm.Income.Locate('IncNm',AccDetTypeNm.Value,[]);
    { case AccListAdmisMet.Value of
      1 :
      begin
      if  AccDetAccTotal.Value < IIncomeMin2.Value then  AccDetAccTotal.Value :=  IIncomeMin2.Value;
      END;
      2 : begin
      if  AccDetAccTotal.Value < IIncomeMin.Value then  AccDetAccTotal.Value :=  IIncomeMin.Value;
      END;
      3 : begin
      if  AccDetAccTotal.Value < IIncomeMin.Value then  AccDetAccTotal.Value :=  IIncomeMin.Value;
      END;
      END; }
    AccDet.Post;

  END;

end;

procedure TAcListFm.sBitBtn17Click(Sender: TObject);
var
  pr1, pr2: String;
  sss: Integer;
  w1, s, t, S1: string;
  nwes: String;
  I: Integer;

begin
  with DmdFm do
  begin
    with TIniFile.Create(changefileext(paramstr(0), '.INI')) do
      try
        pr1 := readstring('Data', 'Print Fatora', '');
        pr2 := readstring('Data', 'Print Barcode', '');
      finally
      end;

    QUnitCount.Close;
    QUnitCount.ParamByName('num').Value := AccListListNum.Value;
    QUnitCount.Open;

    QBoCount.Close;
    QBoCount.ParamByName('num').Value := AccListListNum.Value;
    QBoCount.Open;

    sMemo1.Clear;

    // sMemo1.Lines.Add(' œÊ·… ·Ì»Ì«');
    sMemo1.Lines.Add(' «·„‰ÿﬁ… «·Õ—… »„’—« … ');
    sMemo1.Lines.Add('ﬁ«∆„… Õ”«» ⁄Ê«∆œ«·„‰«Ê·… Ê«· Œ“Ì‰ ');
    sMemo1.Lines.Add(' —ﬁ„ «·›« Ê—…: ' + AccListListNum.AsString);
    sMemo1.Lines.Add(' «·»«—ﬂÊœ : ' + AccListbarcade.Value);
    // sMemo1.Lines.Add(' ‰Ê⁄Â« ' + QUnitCountun.Value);
    // sMemo1.Lines.Add('‰Ê⁄Â« ' + QBoCountunB.Value);
    sMemo1.Lines.Add(' «·ÊﬂÌ·' + AccListAgNm.Value);
    // sMemo1.Lines.Add('Ê’› «·»÷«⁄…' + AccListGoodsname.Value);
    sMemo1.Lines.Add('≈Ã„«·Ì «·›« Ê—… ' + FloatToStr(AccListNTotal.Value));

    // AccList.Edit;
    // AccListQRALL.Value := sMemo1.Text;
    // AccList.Post;

    // Application.CreateForm(TRepFm, RepFm);
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
      '\reports\AcList.fr3');

    if DmdFm.AccListSapa.Value = 2 then

      frxReport1.Variables.Variables['ASD'] := ''' ’⁄»…'''
    else
      frxReport1.Variables.Variables['ASD'] := ''' ''';

    frxReport1.PrintOptions.Printer := pr1;
    frxReport1.PrintOptions.Copies := 5;
    frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.PrepareReport();
    frxReport1.Print;

    // frxReport1.PrintOptions.Printer := pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''ﬁ”„ «· Œ“Ì‰''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;

    // frxReport1.PrintOptions.Printer := pr1;
    // RepFm.frxReport1.PrintOptions.Copies:=4;

    // frxReport1.PrintOptions.ShowDialog := False;
    // RepFm.frxReport1.ShowReport(True);
    // RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''’Ê—… ··Õ›Ÿ''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;

    // frxReport1.PrintOptions.ShowDialog := False;
    // RepFm.frxReport1.ShowReport(True);
    /// RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''Ã«—Ì ··Õ”«»« ''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;

    // frxReport1.PrintOptions.ShowDialog := False;
    // RepFm.frxReport1.ShowReport(True);
    // RepFm.frxReport1.PrepareReport();

    // RepFm.frxReport1.Variables.Variables['ASDM']:= '''‰ﬁœÌ ··Œ“Ì‰…''';
    // frxReport1.PrepareReport();
    // RepFm.frxReport1.ShowReport(false);
    // frxReport1.Print;
    // RepFm.frxReport1.ShowReport(true);

    // RepFm.Free;

  end;

end;

procedure TAcListFm.sBitBtn19Click(Sender: TObject);
begin
  WITH DmdFm DO
  BEGIN
    if (creEfraj = 0)and(DmdFm.VBollAccList.RecordCount=1) then
    begin
      if VloadHrak.Locate('Auto', dmdfm.AccListNumT.Value, []) then
      begin
        VloadHrak.Edit;
        VloadHrakBillNum.Value := dmdfm.AccListListNum.Value;
        VloadHrak.Post;
        // vLoadList.Refresh;
      end;
    end;

    // NewEfraj := 2;

    if (creEfraj = 1) then
    begin
      { QLoadEf.First;
        while not QLoadEf.Eof do
        begin
        DmdFm.VloadHrak.Locate('auto', DmdFm.QLoadEfAuto.Value, []);
        VloadHrak.Edit;
        VloadHrakBillNum.Clear;
        QLoadEf.Next;
        end;
        if VloadHrak.State = dsedit then
        VloadHrak.Post;
      }
      VVldHk.Close;
      VVldHk.ParamByName('VNumT').Value := dmdfm.VloadHrakLNum.Value;
      VVldHk.ParamByName('VBnum').Value := dmdfm.AccListListNum.Value;
      VVldHk.Open;
      VVldHk.First;

      while not VVldHk.Eof do
      begin
        VVldHk.Edit;
        VVldHkBillNum.clear;
        //  Ã—»…
       // VVldHkBillNum.Clear;
        VVldHk.Post;

        VVldHk.Next;
      end;

      // QLoadEf.Refresh;
      QLoadEf.First;
      while not QLoadEf.Eof do
      begin
        DmdFm.VloadHrak.Locate('auto', DmdFm.QLoadEfAuto.Value, []);
        VloadHrak.Edit;
        VloadHrakBillNum.Value := dmdfm.AccListListNum.Value;
        QLoadEf.Next;
      end;
      if VloadHrak.State = dsedit then
        VloadHrak.Post;
      // vLoadList.Refresh;
      VloadHrak.Refresh;

    end;
    if (creEfraj <> 1)and(DmdFm.VBollAccList.RecordCount>1) then{›Ì Õ«·… «·Œ—ÊÃ „‰ «·›« Ê—… ·√ﬂÀ— „‰ «„—  ”·Ì„ »œÊ‰ ≈œ—«Ã «·⁄Ê«∆œ}
    begin


      VBollAccList.First;
      while not VBollAccList.Eof do
      begin
        DmdFm.QLoadEf.DeleteWhere;
        DmdFm.QLoadEf.AddWhere('auto=' + DmdFm.VBollAccListNumLoad.AsString);
        DmdFm.QLoadEf.Open;

        //DmdFm.QLoadEf.Locate('auto', DmdFm.VBollAccListNumLoad.Value, []);

        QLoadEf.Edit;
        QLoadEfBillNum.Value := dmdfm.AccListListNum.Value;
        QLoadEf.Post;
        VBollAccList.Next;
      end;
      if QLoadEf.State = dsedit then
        QLoadEf.Post;
    end;
  END;

end;

procedure TAcListFm.sBitBtn20Click(Sender: TObject);
begin
  Application.CreateForm(TLocalAgantFm, LocalAgantFm);
  LocalAgantFm.sBitBtn1.Visible := true;
  LocalAgantFm.DBGrid1.Visible := true;
  LocalAgantFm.DBGrid2.Visible := False;
  LocalAgantFm.DBGrid1.BringToFront;

  LocalAgantFm.ShowModal;
  LocalAgantFm.Free;
end;

procedure TAcListFm.sBitBtn21Click(Sender: TObject);

var
  m10, m11, m12, mm, msize: real;
  ifh: Integer;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if AccListAdmisMet.Value <> 1 then
    begin
      m10 := 0;
      m11 := 0;
      m12 := 0;
      ifh := 1;
      VUnitAccList.First;
      while not VUnitAccList.Eof do
      begin
        m12 := m12 + VUnitAccListAddCount.Value;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

        if dmdfm.SincomeTypeFator.Value = 1 then
        begin
          if dmdfm.VUnitAccListQtityNormal.Value > 0 then
          begin
            if not dmdfm.SincomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SincomeRsef.Value;
              m10 := m10 + VUnitAccListQtityNormal.Value;

              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtityNormal.Value;
          end;
        end;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 0, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtitoyRor.Value > 0 then
          begin
            if not SincomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SincomeRsef.Value;
              m10 := m10 + VUnitAccListQtitoyRor.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtitoyRor.Value;
          end;
        end;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([2, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListFwozQ.Value > 0 then
          begin
            if not SincomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SincomeRsef.Value;
              m10 := m10 + VUnitAccListFwozQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListFwozQ.Value;
          end;
        end;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);

        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListLanerQ.Value > 0 then
          begin
            if not SincomeRsef.IsNull then
            begin
              AccDetAccValue.Value := SincomeRsef.Value;
              m10 := m10 + VUnitAccListLanerQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListLanerQ.Value;
          end;
        end;

        VUnitAccList.Next;
      end;

      // if ifh > 1 then
      AccDetAccTotal.Value := dmdfm.AccListWeSpace.Value * dmdfm.AccDetAccValue.Value;
      // else
      // begin
      // if m12 > 0 then
      // mm := AccListWeSpace.Value / m12
      // else
      // mm := 0;

      // AccDetAccTotal.Value := (mm * m10) * AccDetAccValue.Value;
      // end;
       SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, dmdfm.VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum;Auto',vararrayof([dmdfm.AccDetAccType.Value,dmdfm.SmincomeMincome.Value]), []);
      if (DmdFm.accdetAccValue.Value>0) then
      begin
        if (dmdfm.AccListAdmisMet.Value<>1)  then
        begin
        if dmdfm.AccDetAccTotal.Value < dmdfm.SincomeMin2.Value then
          AccDetAccTotal.Value := SincomeMin2.Value ;
        end
         else
         begin
           if dmdfm.AccDetAccTotal.Value < dmdfm.SincomeMin.Value then
          AccDetAccTotal.Value := SincomeMin.Value ;
         end;
     end
     else
      AccDetAccTotal.Value := 0;
    end

    else
    begin
      m10 := 0;
      m11 := 0;
      m12 := 0;
      ifh := 1;
      VUnitAccList.First;
       while not VUnitAccList.Eof do
       begin
        m12 := m12 + VUnitAccListAddCount.Value;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
         // SMIncome.Locate('ShipType;ShipMet;NUmunit',
        //  vararrayof([DmdFm.AccListShipType.Value,DmdFm.AccListShipMet.Value, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);

        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtityNormal.Value > 0 then
          begin
            if not sIncomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIncomeDirect.Value;
              m10 := m10 + VUnitAccListQtityNormal.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListQtityNormal.Value *
                  UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtityNormal.Value;
          end;
        end;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([1, 0, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);
        Units.Locate('Num', VUnitAccListNumUnit.Value, []);

        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListQtitoyRor.Value > 0 then
          begin
            if not sIncomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIncomeDirect.Value;
              m10 := m10 + VUnitAccListQtitoyRor.Value;

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize +
                  (VUnitAccListQtitoyRor.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListQtitoyRor.Value;
          end;
        end;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([2, 1, VUnitAccListNumUnit.Value]), []);
        SIncome.Locate('IncNum', AccDetAccType.Value, []);
        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListFwozQ.Value > 0 then
          begin
            if not sIncomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIncomeDirect.Value;
              m10 := m10 + VUnitAccListFwozQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListFwozQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListFwozQ.Value;
          end;
        end;

        SMIncome.Locate('ShipType;ShipMet;NUmunit',
          vararrayof([2, 0, VUnitAccListNumUnit.Value]), []);
        Sincome.Locate('IncNum', AccDetAccType.Value, []);

        if SincomeTypeFator.Value = 1 then
        begin
          if VUnitAccListLanerQ.Value > 0 then
          begin
            if not sIncomeDirect.IsNull then
            begin
              AccDetAccValue.Value := sIncomeDirect.Value;
              m10 := m10 + VUnitAccListLanerQ.Value;
              Units.Locate('Num', VUnitAccListNumUnit.Value, []);

              if VUnitAccListNumUnit.Value = 1 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 2 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 8 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 9 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
              if VUnitAccListNumUnit.Value = 10 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;

              if VUnitAccListNumUnit.Value = 11 then
              begin
                ifh := 2;
                msize := msize + (VUnitAccListLanerQ.Value * UnitsKyass.Value);
              end;
            end
            else
              m11 := m11 + VUnitAccListLanerQ.Value;
          end;

      end;

        VUnitAccList.Next;

     end;
      // if ifh > 1 then
      // AccDetAccTotal.Value := msize * AccDetAccValue.Value;
      AccDetAccTotal.Value := dmdfm.AccListWeSpace.Value * dmdfm.AccDetAccValue.Value;
      // else
      // begin
      // if m12 > 0 then
      // mm := AccListWeSpace.Value / m12
      // else
      // mm := 0;

      // AccDetAccTotal.Value := (mm * m10) * AccDetAccValue.Value;
      // end;

      if dmdfm.AccDetAccTotal.Value < dmdfm.SincomeMin.Value then
        AccDetAccTotal.Value := dmdfm.SincomeMin.Value;



     AccDet.Post;
     end;
  end;

end;

procedure TAcListFm.sBitBtn22Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 18) and (AccListAdmisMet.Value <> 1) then
    begin // \\21

      SMIncome.Locate('ShipType;ShipMet;NUmunit',
        vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
      SIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := SincomeRsef.Value;
      AccDetAccTotal.Value := SincomeRsef.Value * AccListWeSpace.Value;

      if AccDetAccTotal.Value < SincomeMin.Value then
        AccDetAccTotal.Value := SincomeMin.Value;

    end
    else
    begin
      AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := 0;
    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sBitBtn23Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 19) and (AccListAdmisMet.Value <> 1) then
    begin // \\21

      SMIncome.Locate('ShipType;ShipMet;NUmunit',
        vararrayof([1, 1, VUnitAccListNumUnit.Value]), []);
      SIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := SincomeRsef.Value;
      AccDetAccTotal.Value := SincomeRsef.Value * AccListWeSpace.Value;

      if AccDetAccTotal.Value < SincomeMin.Value then
        AccDetAccTotal.Value := SincomeMin.Value;

    end // \\21\\
    else
    begin
      AccDetAccValue.Value := 0;
      AccDetAccTotal.Value := 0;
    end; // \\21\\
    AccDet.Post;
  end;
end;

procedure TAcListFm.sBitBtn24Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.First;

    while not AccDet.Eof do
    begin

      Income.Locate('IncNum', AccDetAccType.Value, []);

      case AccDetAccType.Value of

        1:
          begin
            sButton1Click(Sender);

          end;
        2:
          begin
            sButton2Click(Sender);
          end;
        3:
          begin
            sBitBtn8Click(Sender);
          end;

        4:
          begin
            sBitBtn10Click(Sender);
          end;
        6:
          begin
            sButton6Click(Sender);
            sButton3Click(Sender);
          end;
        8:
          begin
            sBitBtn11Click(Sender);
          end;
        9:
          begin
            sButton9Click(Sender);
          end;

        10:
          begin
            sButton10Click(Sender);
          end;

        12:
          begin
            sButton12Click(Sender);
          end;

        13:
          begin
            sButton13Click(Sender);
          end;
        14:
          begin
            sBitBtn21Click(Sender);
          end;

        16:
          begin
            sButton16Click(Sender);
            sBitBtn6Click(Sender);

          end;
        18:
          begin
            sBitBtn22Click(Sender);
          end;
        19:
          begin
            sBitBtn23Click(Sender);
          end;

        22:
          begin
            sButton22Click(Sender);
            sBitBtn5Click(Sender);
          end;

        23:
          begin
            sButton23Click(Sender);
          end;
      end;

      AccDet.Next;

    end;

    try
      if creEfraj = 1 then
      begin

        with DmdFm do
        begin

          if VSloadH.Locate('BillNum', strtoint(s), []) then

        end;
      end;
    except



      if EditFlag = 1 then
        sBitBtn1.Enabled := true;
      sBitBtn19Click(Sender);

    end;

  end;

  BitBtn1Click(Sender);
 { if DmdFm.AccListprogress.Value=3 then
 begin
  DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='update acclist set progress=1 where listnum='+DmdFm.AccListListNum.AsString;
  DmdFm.generalq.ExecSQL;
  ShowMessage(' „ «·≈—”«· ··„—«Ã⁄…')
 end ;
 }

end;

procedure TAcListFm.sBitBtn25Click(Sender: TObject);
begin
if DmdFm.AccList.State=dsinsert then
   DmdFm.AccList.post;
  AddUnitFm.ShowModal;
end;

procedure TAcListFm.sBitBtn26Click(Sender: TObject);
var
  q1, q2, m10, m11, m12, ShipType, ShipMet, oldvalue, oldvalue2, QtyType1,
    QtyType2, QtyType3, QtyType4, GoodsQty, GoodsQty2: real;
  I: smallint;
  bookmark: TBookmark;
begin // 0
  lockOrDel := 0;

  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');

    AccDet.Close;
    AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    AccDet.Execute;

    IIncome.First;
    while not IIncome.Eof do
    begin
      AccDet.Insert;
      AccDetAccType.Value := IIncomeIncNum.Value;
      accdetAccNum.Value := AccListListNum.Value;
      accdetListType.Value := AccListListType.Value;
      AccDet.Post;

      case AccDetAccType.Value of

        1:
          begin
            sButton4Click(Sender);

          end;
        2:
          begin
            sButton5Click(Sender);
          end;
        3:
          begin
            sButton29Click(Sender);
          end;

        4:
          begin
            sButton30Click(Sender);
          end;
        6:
          begin
            sButton19Click(Sender);
            sButton25Click(Sender);
          end;
        8:
          begin
            sButton31Click(Sender);
          end;
        9:
          begin
            sButton7Click(Sender);
          end;

        10:
          begin
            sButton8Click(Sender);
          end;

        12:
          begin
            sButton11Click(Sender);
          end;

        13:
          begin
            sButton14Click(Sender);
          end;
        14:
          begin
            sButton26Click(Sender);
          end;

        16:
          begin
            sButton15Click(Sender);
            sButton25Click(Sender);

          end;
        18:
          begin
            sButton27Click(Sender);
          end;
        19:
          begin
            sButton28Click(Sender);
          end;

        22:
          begin
            sButton17Click(Sender);
            sButton21Click(Sender);
          end;

        23:
          begin
            sButton18Click(Sender);
          end;
      else
        begin

        end;
      end;

      IIncome.Next;
    end;
  end;

  try
    if creEfraj = 1 then
    begin

      with DmdFm do
      begin

        if VSloadH.Locate('BillNum', strtoint(s), []) then

      end;
    end;
  except
  end;

  BitBtn1Click(Sender);

  if EditFlag = 1 then
    sBitBtn1.Enabled := true;
  sBitBtn19Click(Sender);
 {  DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AccListListNum.AsString+',0,'+QuotedStr('≈œ—«Ã «·⁄Ê«∆œ-›« Ê—… ÃœÌœ…')+')';
  DmdFm.generalq.ExecSQL; }
end;

procedure TAcListFm.sBitBtn27Click(Sender: TObject);
var
  q1, q2, m10, m11, m12, ShipType, ShipMet, oldvalue, oldvalue2, QtyType1,
    QtyType2, QtyType3, QtyType4, GoodsQty, GoodsQty2, oo11: real;
  I: smallint;
  oo1: Float64;
  bookmark: TBookmark;
begin // 0
  lockOrDel := 0;

  with DmdFm do
  begin
    if AccList.IsEmpty then
      raise Exception.Create('«œŒ· »Ì«‰«  «·ﬁ«∆„… √Ê·«');
    if not AccDet.IsEmpty then
      raise Exception.Create(' „ ≈œ—«Ã «·⁄Ê«∆œ');
    if (AccList.State = dsedit) or (AccList.State = dsinsert) then
      raise Exception.Create('«Õ›Ÿ »Ì«‰«  ﬁ«∆„… «·Õ”«» √Ê·«');

    if VUnitAccList.IsEmpty then
      raise Exception.Create('≈œŒ«· »Ì«‰«  «·Ê’› «Ê·«');

    AccDet.Close;
    AccDet.ParamByName('VNum').Value := AccListListNum.Value;
    AccDet.ParamByName('Vtype').Value := AccListListType.Value;
    AccDet.Execute;

    incomek.First;
    while not incomek.Eof do
    begin
      m10 := 0;
      AccDet.Insert;
      AccDetAccType.Value := incomekIncNum.Value;
      accdetAccNum.Value := AccListListNum.Value;
      accdetListType.Value := AccListListType.Value;

      if incomekTypeFator.Value = 1 then
      begin
        AccDetAccValue.Value := incomekRsef.Value;
        // sEdit3.Text := (floattostrf( (incomekRsef.Value * AccListWeSpace.Value),fffixed,10,4));
        // sEdit3.Text := FormatFloat('0.000', (incomekRsef.Value * AccListWeSpace.Value));
        // oo11 := StrToFloat((FormatFloat('0.000', StrToFloat(sEdit3.Text))));
        // AccDetAccTotal.Value := oo11;

        AccDetAccTotal.Value := Tkrib(incomekRsef.Value * AccListWeSpace.Value);

      end
      else
      begin

        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin

          if hrakunit.Locate('NumUnit', VUnitAccListNumUnit.Value, []) then
          begin
            m10 := m10 + (VUnitAccListAddCount.Value * hrakunitAedeDubel.Value);
          end;

          VUnitAccList.Next;
        end;

        AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := m10;
      end;

      AccDet.Post;

      incomek.Next;
    end;
  end;
  sBitBtn29Click(Sender);
{   DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AccListListNum.AsString+',0,'+QuotedStr('≈œ—«Ã «·⁄Ê«∆œ-›« Ê—… ÃœÌœ…')+')';
  DmdFm.generalq.ExecSQL;}
end;

procedure TAcListFm.sBitBtn28Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.First;

    while not AccDet.Eof do
    begin

      IIncome.Locate('IncNum', AccDetAccType.Value, []);

      case AccDetAccType.Value of

        1:
          begin
            sButton4Click(Sender);

          end;
        2:
          begin
            sButton5Click(Sender);
          end;
        3:
          begin
            sButton29Click(Sender);
          end;

        4:
          begin
            sButton30Click(Sender);
          end;
        6:
          begin
            sButton19Click(Sender);
            sButton25Click(Sender);
          end;
        8:
          begin
            sButton31Click(Sender);
          end;
        9:
          begin
            sButton7Click(Sender);
          end;

        10:
          begin
            sButton8Click(Sender);
          end;

        12:
          begin
            sButton11Click(Sender);
          end;

        13:
          begin
            sButton14Click(Sender);
          end;
        14:
          begin
            sButton26Click(Sender);
          end;

        16:
          begin
            sButton15Click(Sender);
            sButton25Click(Sender);

          end;
        18:
          begin
            sButton27Click(Sender);
          end;
        19:
          begin
            sButton28Click(Sender);
          end;

        22:
          begin
            sButton17Click(Sender);
            sButton21Click(Sender);
          end;

        23:
          begin
            sButton18Click(Sender);
          end;
      else
        begin

        end;
      end;

      AccDet.Next;
    end;
  end;

  try
    if creEfraj = 1 then
    begin

      with DmdFm do
      begin

        if VSloadH.Locate('BillNum', strtoint(s), []) then

      end;
    end;
  except
  end;

  if EditFlag = 1 then
    sBitBtn1.Enabled := true;
  sBitBtn19Click(Sender);
  BitBtn1Click(Sender);
end;

procedure TAcListFm.sBitBtn29Click(Sender: TObject);
var
  m10: real;
begin
  with DmdFm do
  begin
    AccDet.First;
    while not AccDet.Eof do
    begin
      m10 := 0;
      mincomek.Locate('NUmunit',sEdit5.Text,[]);
      incomek.Locate('IncNum', AccDetAccType.Value, []);

      AccDet.Edit;
      // AccDetAccType.Value := incomekIncNum.Value;
      // accdetAccNum.Value := AccListListNum.Value;
      // accdetListType.Value := AccListListType.Value;

      if incomekTypeFator.Value = 1 then
      begin
        AccDetAccValue.Value := incomekRsef.Value;
        // AccDetAccTotal.Value := StrToFloat(floattostrf( (incomekRsef.Value * AccListWeSpace.Value),fffixed,10,3));
        AccDetAccTotal.Value := Tkrib(incomekRsef.Value * AccListWeSpace.Value);
      end
      else
      begin

        VUnitAccList.First;
        while not VUnitAccList.Eof do
        begin

          if hrakunit.Locate('NumUnit',dmdfm.VUnitAccListNumUnit.Value, []) then
          begin
            m10 := m10 + (VUnitAccListAddCount.Value *dmdfm.hrakunitAedeDubel.Value);
          end;

          VUnitAccList.Next;
        end;

        AccDetAccValue.Value := 0;
        AccDetAccTotal.Value := m10;
      end;

      AccDet.Post;

      AccDet.Next;
    end;
  end;

end;

procedure TAcListFm.FormCreate(Sender: TObject);
begin
  crelist := 1;
end;

procedure TAcListFm.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // if DmdFm.SAttach.Locate('AttachNum', sEdit1.Text, []) then
    // DmdFm.AccList.Locate('ListNum', DmdFm.SAttachListNum.Value, [])
    // else
    // ShowMessage('·«ÌÊÃœ „·Õﬁ »Â–« «·—ﬁ„');
  end;

end;

procedure TAcListFm.BitBtn2Click(Sender: TObject);
begin
  DmdFm.AccList.First;
  while not DmdFm.AccList.Eof do
  begin
    if DmdFm.AccDet.IsEmpty then
    begin
      DmdFm.AccList.Edit;
      DmdFm.AccListTotal.Value := 0;
    end;
    DmdFm.AccList.Next;
  end;
  if DmdFm.AccList.State = dsedit then
    DmdFm.AccList.Post;

end;

procedure TAcListFm.sBitBtn6Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    // AccDetAccValue.Value := 0;
    // AccDetAccTotal.Value := 0;
    { --------------------- «—ÌŒ «·»ﬁ«¡----------------- }
    if (AccDetAccType.Value = 16) and
      ((AccListRemain.Value = 1) or (AccListRemain.Value = 2)) and
      ((AccListEndEmpDate.Value + 6) < AccListListDate.Value) then
    // if (AccDetAccType.Value=16)and(AccListRemain.Value=1) then
    begin // 28
      AccDet.Edit;
      AccDetFromDate.Value := AccListEndEmpDate.Value + 7;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 28//
    if (AccDetAccType.Value = 16) and
      ((AccListRemain.Value = 0) or ((AccListEndEmpDate.Value + 6) >=
      AccListListDate.Value)) then
    begin // 29
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 29//

    if (AccListAdmisMet.Value = 3) and
      (AccDetAccTotal.Value < IincomeMin2.Value) and (AccDetAccValue.Value > 0)
    then
      AccDetAccTotal.Value := IincomeMin2.Value;
    if ((AccListAdmisMet.Value = 2) and
      (AccDetAccTotal.Value < IincomeMin2.Value) and (AccDetAccValue.Value > 0))
    then
      AccDetAccTotal.Value := IincomeMin2.Value;
    // else if  (IncomeTypeFator.Value = 2) then
    // AccDetAccTotal.Value:= 0;
    // if {(AccListUnit.Value=3)or(AccListUnit.Value=4))and}(AccDetAccTotal.Value<IncomeMin2.Value)and(AccListAdmisMet.Value=1)and (AccDetAccValue.Value > 0)then
    // if ((AccListAdmisMet.Value=1)and(AccDetAccTotal.Value<IIncomeMin.Value)and (IIncomeTypeFator.Value <> 2) and (IIncomeMin.Value = 1))then
    // if (AccDetAccTotal.Value<IIncomeMin.Value)and(AccListAdmisMet.Value=1)and (IIncomeTypeFator.Value <> 2)then
    // begin  //25
    // AccDetAccTotal.Value:=IIncomeMin.Value;
    if ((AccListAdmisMet.Value = 1) and (AccDetAccTotal.Value < IncomeMin.Value)
      and (AccDetAccValue.Value > 0)) then
      AccDetAccTotal.Value := IincomeMin.Value;

    AccDet.Post;
  end; // 5//
end;

procedure TAcListFm.sBitBtn7Click(Sender: TObject);
begin
  with DmdFm do
  begin

    VUnitAccList.First;
    while not VUnitAccList.Eof do
    begin

      // if (AccListUnit.Value = 1) or (AccListUnit.Value = 2) then

      MIncome.Locate('ShipType;ShipMet;Goods;NUmunit',
        vararrayof([1, 1, 0, VUnitAccListNumUnit.Value]), []);
      MIncome.Locate('ShipType;ShipMet;Goods;NUmunit',
        vararrayof([2, 0, 0, VUnitAccListNumUnit.Value]), []);
      MIncome.Locate('ShipType;ShipMet;Goods;NUmunit',
        vararrayof([1, 1, 0, VUnitAccListNumUnit.Value]), []);
      MIncome.Locate('ShipType;ShipMet;Goods;NUmunit',
        vararrayof([2, 0, 0, VUnitAccListNumUnit.Value]), []);

      VUnitAccList.Next;
    end;
  end;
end;

procedure TAcListFm.sBitBtn8Click(Sender: TObject);
begin
  with DmdFm do
  begin
    AccDet.Edit;
    AccDetAccValue.Value := 0;
    AccDetAccTotal.Value := 0;

    if (AccDetAccType.Value = 3) then
    begin // \\21

      SMIncome.Locate('ShipType;ShipMet;Goods;NUmunit',
        vararrayof([1, 1, 1, VUnitAccListNumUnit.Value]), []);
      SIncome.Locate('IncNum', AccDetAccType.Value, []);

      AccDetAccValue.Value := sIncomeDirect.Value;
      AccDetAccTotal.Value := sIncomeDirect.Value * AccListWeSpace.Value;
    end; // \\21\\

    AccDet.Post;
  end;
end;

procedure TAcListFm.sBitBtn9Click(Sender: TObject);
begin
 // BillloadFm.ShowModal;
 //›Ì Õ«·… «·›« Ê—… ÃœÌœ… √Ê  „  —ÃÌ⁄Â«

{ if (DmdFm.AccListprogress.Value=0)or(DmdFm.AccListprogress.Value=3) then
 begin
  if Application.messagebox('≈—”«· «·›« Ê—… ··„—«Ã⁄… ... Â· √‰  „ √ﬂœø', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');
  DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='update acclist set progress=1 where listnum='+DmdFm.AccListListNum.AsString;
  DmdFm.generalq.ExecSQL;

  DmdFm.generalq.close;
  DmdFm.GeneralQ.SQL.Text:='insert into acc_tracking (user_num,list_num,operation_num,operation_name,attoracclist)values('+DmdFm.PermUserNum.AsString+','+DmdFm.AccListListNum.AsString+',1,'+QuotedStr('≈—”«· ··„—«Ã⁄…')+',1)';
  DmdFm.generalq.ExecSQL;
  ShowMessage(' „ «·≈—”«· ··„—«Ã⁄…')
 end
 else
 ShowMessage('·« Ì„ﬂ‰ﬂ «·«—”«· ··„—«Ã⁄…'
 )
 }
end;

procedure TAcListFm.sBitBtn5Click(Sender: TObject);
var
  m10, m11: real;
begin
  with DmdFm do
  begin
    AccDet.Edit;
    // AccDetAccValue.Value := 0;
    // AccDetAccTotal.Value := 0;
    { ----------- «—ÌŒ «·ﬂÂ—»«¡------------ }
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 1) then
    begin // 26
      AccDet.Edit;
      AccDetFromDate.Value := AccListArriveDate.Value;
      AccDetToDate.Value := AccListListDate.Value;
    end; // 26//
    if (AccDetAccType.Value = 22) and (AccListElectric.Value = 0) then
    begin // 27
      AccDet.Edit;
      AccDetFromDate.Clear;
      AccDetToDate.Clear;
    end; // 27//
    AccDet.Post;
  end; // 5//
end;

end.
