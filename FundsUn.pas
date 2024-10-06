unit FundsUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ComCtrls, sComboBoxes, sEdit,
  sSpinEdit, sComboBox, Grids, DBGrids,db,dateutils  , DBAccess, MemDS,inifiles,
    Menus, acProgressBar, ExtCtrls, sPanel, sLabel, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, System.ImageList, Vcl.ImgList, acAlphaImageList;

type
  TFundsFm = class(TForm)
    Label5: TLabel;
    sBitBtn1: TsBitBtn;
    sDecimalSpinEdit1: TsDecimalSpinEdit;
    sComboBox1: TsComboBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    sComboBox2: TsComboBox;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    sPanel1: TsPanel;
    sProgressBar1: TsProgressBar;
    sLabel1: TsLabel;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sLabel2: TsLabel;
    sBitBtn6: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure sBitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FundsFm: TFundsFm;

implementation

uses Dmd2Un, RepUn, DmdUm, EradUn, MezUn;

{$R *.dfm}

procedure TFundsFm.sBitBtn1Click(Sender: TObject);
var AccOk:Smallint;
begin
if (sComboBox1.Text='') or (sComboBox2.Text='') then
  raise Exception.Create('ÌÃ» ≈œŒ«· «·› —… √Ê·«');

if Application.messagebox('”Ê› Ì „  ÃÂÌ“ «· ﬁ—Ì— Œ·«· «·› —… ... Â· √‰  „ √ﬂœø','',1+mb_defbutton2)=2 then
    raise EAbort.Create('');

sPanel1.Visible:=true;
sPanel1.Update;

Dmd2Fm.Funds.DisableControls;

Dmd2FM.MonthErQ.Close;
Dmd2FM.MonthErQ.ParamByName('Month_No').Value:=sComboBox1.Text;
Dmd2FM.MonthErQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.MonthErQ.Open;

Dmd2FM.MonthErQ2.Close;
Dmd2FM.MonthErQ2.ParamByName('Month_No').Value:=sComboBox1.Text;
Dmd2FM.MonthErQ2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.MonthErQ2.ParamByName('ToMonth_No').Value:=sComboBox2.Text;
Dmd2FM.MonthErQ2.Open;


Dmd2FM.MonthBefErQ.Close;
Dmd2FM.MonthBefErQ.ParamByName('Month_No').Value:=sComboBox1.Text;
Dmd2FM.MonthBefErQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.MonthBefErQ.ParamByName('ToMonth_No').Value:=sComboBox2.Text;
Dmd2FM.MonthBefErQ.Open;

Dmd2FM.AttacBefQ.Close;
Dmd2FM.AttacBefQ.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AttacBefQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AttacBefQ.ParamByName('ToMonth').Value:=sComboBox2.Text;
Dmd2FM.AttacBefQ.Open;

Dmd2FM.AdmisMetEr.Close;
Dmd2FM.AdmisMetEr.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AdmisMetEr.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetEr.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr.Open;

Dmd2FM.AdmisMetEr2.Close;
Dmd2FM.AdmisMetEr2.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AdmisMetEr2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetEr2.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr2.Open;


Dmd2FM.AdmisDel.Close;
Dmd2FM.AdmisDel.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AdmisDel.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisDel.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisDel.Open;


Dmd2FM.AdmisMetAttach.Close;
Dmd2FM.AdmisMetAttach.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AdmisMetAttach.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetAttach.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetAttach.Open;



if not Dmd2FM.fundsMas.Locate('Month_No;Year_No',vararrayof([sComboBox1.Text,sDecimalSpinEdit1.Text]),[]) then
begin
  Dmd2FM.fundsmas.Insert;
  Dmd2FM.fundsmasMonth_No.Value:=StrToInt(sComboBox1.Text);
  Dmd2FM.fundsmasYear_No.Value:=StrToInt(sDecimalSpinEdit1.Text);
  Dmd2FM.fundsmas.Post;
end;

Dmd2FM.Funds.Active:=true;

Dmd2FM.Funds.First;
while not Dmd2FM.Funds.Eof do
begin
 if Dmd2FM.FundsAccType.Value<>51 then
 begin
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueM.Value:=0;
  Dmd2FM.FundsRuleValueAll.Value:=0;
  end;
  Dmd2FM.Funds.Next;
end;
if Dmd2FM.Funds.State=dsedit then
  Dmd2FM.Funds.Post;


{----------------------«·≈Ì—«œ Õ Ï «·‘Â— «·Õ«·Ì--------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «·«Ì—«œ«  Õ Ï ‰Â«Ì… «·‘Â— «·Õ«·Ì';
sLabel2.Update;
Dmd2FM.MonthBeferQ.First;
while not Dmd2FM.MonthBeferQ.Eof do
begin
sProgressBar1.StepIt;

if (Dmd2FM.MonthBeferQacctype.Value=1)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',1,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=1
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=3)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',2,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=2;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=true then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=5)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',3,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=3;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=true then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;


end
else
if (Dmd2FM.MonthBeferQacctype.Value=6)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',4,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=4;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=true then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=2)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',6,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=6;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if ((Dmd2FM.MonthBeferQacctype.Value=7) or (Dmd2FM.MonthBeferQacctype.Value=22)) and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',7,[]) then
  begin
    Dmd2FM.Funds.Insert;
      Dmd2FM.FundsAccType.Value:=7
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=true then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if ((Dmd2FM.MonthBeferQacctype.Value=17) and (Dmd2FM.MonthBeferQlisttype.Value<>3))or((Dmd2FM.MonthBeferQacctype.Value=40)
    and (Dmd2FM.MonthBeferQlisttype.Value=3)) then
begin
  if not Dmd2FM.Funds.Locate('AccType',8,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=8;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=true then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;


end
else
if (Dmd2FM.MonthBeferQacctype.Value=9)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',9,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=9;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if ((Dmd2FM.MonthBeferQacctype.Value=15) or (Dmd2FM.MonthBeferQacctype.Value=16) or (Dmd2FM.MonthBeferQacctype.Value=17)
    or (Dmd2FM.MonthBeferQacctype.Value=18) or (Dmd2FM.MonthBeferQacctype.Value=19)or (Dmd2FM.MonthBeferQacctype.Value=20))
    and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',13,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=13
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if ((Dmd2FM.MonthBeferQacctype.Value=1) or (Dmd2FM.MonthBeferQacctype.Value=2))and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',14,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=14;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if (Dmd2FM.MonthBeferQacctype.Value=4)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',15,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=15;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if (Dmd2FM.MonthBeferQacctype.Value=3)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',16,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=16;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if (Dmd2FM.MonthBeferQacctype.Value=14)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',17,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=17
  end
  else
    Dmd2FM.Funds.Edit;
    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if (Dmd2FM.MonthBeferQacctype.Value=8)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',22,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=22;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=13)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',24,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=24;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if ((Dmd2FM.MonthBeferQacctype.Value=20)and(Dmd2FM.MonthBeferQlisttype.Value<>3))
    or (((Dmd2FM.MonthBeferQacctype.Value=32) or (Dmd2FM.MonthBeferQacctype.Value=33) or (Dmd2FM.MonthBeferQacctype.Value=34)or (Dmd2FM.MonthBeferQacctype.Value=41))
     and(Dmd2FM.MonthBeferQlisttype.Value=3))then
begin
  if not Dmd2FM.Funds.Locate('AccType',25,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=25;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=9)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',26,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=26;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if ((Dmd2FM.MonthBeferQacctype.Value=15)and(Dmd2FM.MonthBeferQlisttype.Value<>3))or
   ((Dmd2FM.MonthBeferQacctype.Value=35)and(Dmd2FM.MonthBeferQlisttype.Value=3))  then
begin
  if not Dmd2FM.Funds.Locate('AccType',27,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=27;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=12)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',28,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=28;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if (Dmd2FM.MonthBeferQacctype.Value=16)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',29,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=29;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;

end
else
if (Dmd2FM.MonthBeferQacctype.Value=19)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',30,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=30;
  end
  else
  Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=11)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',31,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=31;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
  else
if (Dmd2FM.MonthBeferQacctype.Value=10)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',32,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=32
  end
  else
  Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=23)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',33,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=33;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=6)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',35,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=35;
  end
  else
    Dmd2FM.Funds.Edit;
  if not Dmd2FM.Funds.Locate('AccType',36,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=36;
  end
  else
    Dmd2FM.Funds.Edit;
end

else
if (Dmd2FM.MonthBeferQacctype.Value=18)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',34,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=34
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (((Dmd2FM.MonthBeferQacctype.Value=22) or (Dmd2FM.MonthBeferQacctype.Value=24))and(Dmd2FM.MonthBeferQlisttype.Value<>3))
   or ((Dmd2FM.MonthBeferQacctype.Value=36)and(Dmd2FM.MonthBeferQlisttype.Value=3))then
begin
  if not Dmd2FM.Funds.Locate('AccType',39,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=39;
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,2]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=25)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin   {√Œ—Ï}
  if not Dmd2FM.Funds.Locate('AccType',40,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=40
  end
  else
    Dmd2FM.Funds.Edit;

    DmdFm.Inco.Locate('IncNum;IncType',vararrayof([Dmd2FM.MonthBefErQacctype.Value,1]),[]);
    if DmdFM.IncoCeade.Value=True then
      Dmd2FM.FundsCeadea.Value:=True
    else
      Dmd2FM.FundsCeadea.Value:=False;
end
else
if (Dmd2FM.MonthBeferQacctype.Value=26)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin   {√Œ—Ï}
  if not Dmd2FM.Funds.Locate('AccType',41,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=41
  end
  else
    Dmd2FM.Funds.Edit;
end

else
if (Dmd2FM.MonthBeferQacctype.Value=21)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
begin   {⁄Ê«∆œ ’Ì«‰… «·‘„‰œÊ—« }
  if not Dmd2FM.Funds.Locate('AccType',42,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=42
  end
  else
    Dmd2FM.Funds.Edit;
end;


if ((Dmd2FM.MonthBeferQacctype.Value=14)and(Dmd2FM.MonthBeferQlisttype.Value=3))or(Dmd2FM.MonthBefErQacctype.Value=37) then
  Dmd2FM.MonthBeferQ.Next
else
begin
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.MonthBeferQsumaccdetacctotal.Value;
  Dmd2FM.MonthBeferQ.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;


{----------------------------«Ì—«œ«  «·»œÌ·…------------------------}
sLabel2.Caption:=' ÃÂÌ“ ... ≈Ì—«œ«  «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.MonthErQ2.Close;
Dmd2FM.MonthErQ2.ParamByName('Month_No').Value:=sComboBox1.Text;
Dmd2FM.MonthErQ2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.MonthErQ2.ParamByName('ToMonth_No').Value:=sComboBox2.Text;
Dmd2FM.MonthErQ2.Open;

Dmd2FM.MonthErQ2.First;
while not Dmd2FM.MonthErQ2.Eof do
begin
sProgressBar1.StepIt;
if (Dmd2FM.MonthErQ2acctype.Value=1)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',1,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=3)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',2,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=5)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',3,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=6)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',4,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=2)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',6,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=7) or (Dmd2FM.MonthErQ2acctype.Value=22)) and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',7,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=17) and (Dmd2FM.MonthErQ2listtype.Value<>3))or ((Dmd2FM.MonthErQ2acctype.Value=40) and (Dmd2FM.MonthErQ2listtype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',8,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=9)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',9,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=15) or (Dmd2FM.MonthErQ2acctype.Value=16) or (Dmd2FM.MonthErQ2acctype.Value=17)
    or (Dmd2FM.MonthErQ2acctype.Value=18) or (Dmd2FM.MonthErQ2acctype.Value=19)or (Dmd2FM.MonthErQ2acctype.Value=20))and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',13,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=1) or (Dmd2FM.MonthErQ2acctype.Value=2))and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',14,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=4)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',15,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=3)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',16,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=14)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',17,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=8)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',22,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=13)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',24,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=20)and(Dmd2FM.MonthErQ2listtype.Value<>3))
    or (((Dmd2FM.MonthErQ2acctype.Value=32) or (Dmd2FM.MonthErQ2acctype.Value=33) or (Dmd2FM.MonthErQ2acctype.Value=34)or (Dmd2FM.MonthErQ2acctype.Value=41)) and(Dmd2FM.MonthErQ2listtype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',25,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=9)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',26,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=15)and(Dmd2FM.MonthErQ2listtype.Value<>3))or
   ((Dmd2FM.MonthErQ2acctype.Value=35)and(Dmd2FM.MonthErQ2listtype.Value=3))  then
  Dmd2FM.Funds.Locate('AccType',27,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=12)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',28,[]){⁄Ê«∆œ «” Œœ«„ «·Ã—«—« }
else
if (Dmd2FM.MonthErQ2acctype.Value=16)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',29,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=19)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',30,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=11)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',31,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=10)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',32,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=23)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',33,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=18)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',34,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=6)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',35,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=6)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',36,[])

else
if (((Dmd2FM.MonthErQ2acctype.Value=22) or (Dmd2FM.MonthErQ2acctype.Value=24))and(Dmd2FM.MonthErQ2listtype.Value<>3))
   or ((Dmd2FM.MonthErQ2acctype.Value=36)and(Dmd2FM.MonthErQ2listtype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',39,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=25)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',40,[]){√Œ—Ï}
else
if (Dmd2FM.MonthErQ2acctype.Value=26)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',41,[]){√Œ—Ï}
else
if (Dmd2FM.MonthErQ2acctype.Value=21)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',42,[]);{⁄Ê«∆œ ’Ì«‰… «·‘„‰œÊ—« }

if ((Dmd2FM.MonthErQ2acctype.Value=14)and(Dmd2FM.MonthErQ2listtype.Value=3))or(Dmd2FM.MonthErQ2acctype.Value=37) then
  Dmd2FM.MonthErQ2.Next
else
begin
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.MonthErQ2sumaccdetacctotal.Value;
  Dmd2FM.MonthErQ2.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;



{----------------------------«Ì—«œ«  «·»œÌ·…------------------------}
sLabel2.Caption:=' ÃÂÌ“ ... ≈Ì—«œ«  «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.MonthErQ2.Close;
Dmd2FM.MonthErQ2.ParamByName('Month_No').Value:=sComboBox1.Text;
Dmd2FM.MonthErQ2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.MonthErQ2.ParamByName('ToMonth_No').Value:=sComboBox1.Text;
Dmd2FM.MonthErQ2.Open;

Dmd2FM.MonthErQ2.First;
while not Dmd2FM.MonthErQ2.Eof do
begin
sProgressBar1.StepIt;
if (Dmd2FM.MonthErQ2acctype.Value=1)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',1,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=3)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',2,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=5)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',3,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=6)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',4,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=2)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',6,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=7) or (Dmd2FM.MonthErQ2acctype.Value=22)) and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',7,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=17) and (Dmd2FM.MonthErQ2listtype.Value<>3))or ((Dmd2FM.MonthErQ2acctype.Value=40) and (Dmd2FM.MonthErQ2listtype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',8,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=9)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',9,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=15) or (Dmd2FM.MonthErQ2acctype.Value=16) or (Dmd2FM.MonthErQ2acctype.Value=17)
    or (Dmd2FM.MonthErQ2acctype.Value=18) or (Dmd2FM.MonthErQ2acctype.Value=19)or (Dmd2FM.MonthErQ2acctype.Value=20))and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',13,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=1) or (Dmd2FM.MonthErQ2acctype.Value=2))and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',14,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=4)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',15,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=3)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',16,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=14)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',17,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=8)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',22,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=13)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',24,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=20)and(Dmd2FM.MonthErQ2listtype.Value<>3))
    or (((Dmd2FM.MonthErQ2acctype.Value=32) or (Dmd2FM.MonthErQ2acctype.Value=33) or (Dmd2FM.MonthErQ2acctype.Value=34)or (Dmd2FM.MonthErQ2acctype.Value=41)) and(Dmd2FM.MonthErQ2listtype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',25,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=9)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',26,[])
else
if ((Dmd2FM.MonthErQ2acctype.Value=15)and(Dmd2FM.MonthErQ2listtype.Value<>3))or
   ((Dmd2FM.MonthErQ2acctype.Value=35)and(Dmd2FM.MonthErQ2listtype.Value=3))  then
  Dmd2FM.Funds.Locate('AccType',27,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=12)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',28,[]){⁄Ê«∆œ «” Œœ«„ «·Ã—«—« }
else
if (Dmd2FM.MonthErQ2acctype.Value=16)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',29,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=19)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',30,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=11)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',31,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=10)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',32,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=23)and(Dmd2FM.MonthErQ2listtype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',33,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=18)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',34,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=6)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',35,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=6)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',36,[])

else
if (((Dmd2FM.MonthErQ2acctype.Value=22) or (Dmd2FM.MonthErQ2acctype.Value=24))and(Dmd2FM.MonthErQ2listtype.Value<>3))
   or ((Dmd2FM.MonthErQ2acctype.Value=36)and(Dmd2FM.MonthErQ2listtype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',39,[])
else
if (Dmd2FM.MonthErQ2acctype.Value=25)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',40,[]){√Œ—Ï}
else
if (Dmd2FM.MonthErQ2acctype.Value=26)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',41,[]){√Œ—Ï}
else
if (Dmd2FM.MonthErQ2acctype.Value=21)and(Dmd2FM.MonthErQ2listtype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',42,[]);{⁄Ê«∆œ ’Ì«‰… «·‘„‰œÊ—« }

if ((Dmd2FM.MonthErQ2acctype.Value=14)and(Dmd2FM.MonthErQ2listtype.Value=3))or(Dmd2FM.MonthErQ2acctype.Value=37) then
  Dmd2FM.MonthErQ2.Next
else
begin
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.MonthErQ2sumaccdetacctotal.Value;
  Dmd2FM.MonthErQ2.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;

{----------------------------«Ì—«œ «·‘Â— «·Õ«·Ì------------------------}
sLabel2.Caption:=' ÃÂÌ“ ... ≈Ì—«œ«  «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.MonthBefErQ.Close;
Dmd2FM.MonthBefErQ.ParamByName('Month_No').Value:=sComboBox1.Text;
Dmd2FM.MonthBefErQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.MonthBefErQ.ParamByName('ToMonth_No').Value:=sComboBox1.Text;
Dmd2FM.MonthBefErQ.Open;

Dmd2FM.MonthBeferQ.First;
while not Dmd2FM.MonthBeferQ.Eof do
begin
sProgressBar1.StepIt;
if (Dmd2FM.MonthBeferQacctype.Value=1)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',1,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=3)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',2,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=5)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',3,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=6)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',4,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=2)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',6,[])
else
if ((Dmd2FM.MonthBeferQacctype.Value=7) or (Dmd2FM.MonthBeferQacctype.Value=22)) and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',7,[])
else
if ((Dmd2FM.MonthBeferQacctype.Value=17) and (Dmd2FM.MonthBeferQlisttype.Value<>3))or ((Dmd2FM.MonthBeferQacctype.Value=40) and (Dmd2FM.MonthBeferQlisttype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',8,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=9)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',9,[])
else
if ((Dmd2FM.MonthBeferQacctype.Value=15) or (Dmd2FM.MonthBeferQacctype.Value=16) or (Dmd2FM.MonthBeferQacctype.Value=17)
    or (Dmd2FM.MonthBeferQacctype.Value=18) or (Dmd2FM.MonthBeferQacctype.Value=19)or (Dmd2FM.MonthBeferQacctype.Value=20))and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',13,[])
else
if ((Dmd2FM.MonthBeferQacctype.Value=1) or (Dmd2FM.MonthBeferQacctype.Value=2))and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',14,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=4)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',15,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=3)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',16,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=14)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',17,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=8)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',22,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=13)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',24,[])
else
if ((Dmd2FM.MonthBeferQacctype.Value=20)and(Dmd2FM.MonthBeferQlisttype.Value<>3))
    or (((Dmd2FM.MonthBeferQacctype.Value=32) or (Dmd2FM.MonthBeferQacctype.Value=33) or (Dmd2FM.MonthBeferQacctype.Value=34)or (Dmd2FM.MonthBeferQacctype.Value=41)) and(Dmd2FM.MonthBeferQlisttype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',25,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=9)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',26,[])
else
if ((Dmd2FM.MonthBeferQacctype.Value=15)and(Dmd2FM.MonthBeferQlisttype.Value<>3))or
   ((Dmd2FM.MonthBeferQacctype.Value=35)and(Dmd2FM.MonthBeferQlisttype.Value=3))  then
  Dmd2FM.Funds.Locate('AccType',27,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=12)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',28,[]){⁄Ê«∆œ «” Œœ«„ «·Ã—«—« }
else
if (Dmd2FM.MonthBeferQacctype.Value=16)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',29,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=19)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',30,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=11)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',31,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=10)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',32,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=23)and(Dmd2FM.MonthBeferQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',33,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=18)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',34,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=6)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',35,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=6)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',36,[])

else
if (((Dmd2FM.MonthBeferQacctype.Value=22) or (Dmd2FM.MonthBeferQacctype.Value=24))and(Dmd2FM.MonthBeferQlisttype.Value<>3))
   or ((Dmd2FM.MonthBeferQacctype.Value=36)and(Dmd2FM.MonthBeferQlisttype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',39,[])
else
if (Dmd2FM.MonthBeferQacctype.Value=25)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',40,[]){√Œ—Ï}
else
if (Dmd2FM.MonthBeferQacctype.Value=26)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',41,[]){√Œ—Ï}
else
if (Dmd2FM.MonthBeferQacctype.Value=21)and(Dmd2FM.MonthBeferQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',42,[]);{⁄Ê«∆œ ’Ì«‰… «·‘„‰œÊ—« }

if ((Dmd2FM.MonthBeferQacctype.Value=14)and(Dmd2FM.MonthBeferQlisttype.Value=3))or(Dmd2FM.MonthBefErQacctype.Value=37) then
  Dmd2FM.MonthBeferQ.Next
else
begin
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.MonthBeferQsumaccdetacctotal.Value;
  Dmd2FM.MonthBeferQ.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;


  {-------------------------«·„·Õﬁ Õ Ï «·‘Â— «·Õ«·Ì----------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «·„·«Õﬁ Õ Ï ‰Â«Ì… «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.AttacBefQ.First;
while not Dmd2FM.AttacBefQ.Eof do
begin
sProgressBar1.StepIt;

if (Dmd2FM.AttacBefQacctype.Value=1)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',1,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=1;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=3)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',2,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=2;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=5)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',3,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=3;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=6)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',4,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=4;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=2)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',6,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=6;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.AttacBefQacctype.Value=7) or (Dmd2FM.AttacBefQacctype.Value=22)) and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',7,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=7;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.AttacBefQacctype.Value=17) and (Dmd2FM.AttacBefQlisttype.Value<>3))or((Dmd2FM.AttacBefQacctype.Value=40) and (Dmd2FM.AttacBefQlisttype.Value=3)) then
begin
  if not Dmd2FM.Funds.Locate('AccType',8,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=8;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=9)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',9,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=9;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.AttacBefQacctype.Value=15) or (Dmd2FM.AttacBefQacctype.Value=16) or (Dmd2FM.AttacBefQacctype.Value=17)
    or (Dmd2FM.AttacBefQacctype.Value=18) or (Dmd2FM.AttacBefQacctype.Value=19))and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',13,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=13
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.AttacBefQacctype.Value=1) or (Dmd2FM.AttacBefQacctype.Value=2))and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',14,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=14;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=4)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',15,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=15;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=3)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',16,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=16;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=14)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',17,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=17
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=8)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',22,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=22;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=13)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',24,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=24;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=20)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',25,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=25;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=9)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',26,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=26;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=15)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',27,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=27;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=16)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',29,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=29;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=19)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',30,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=30;
  end
  else
  Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=11)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',31,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=31;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=10)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',32,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=32
  end
  else
  Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=23)and(Dmd2FM.AttacBefQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',33,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=33;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=18)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',34,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=34
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=6)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',35,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=35;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.AttacBefQacctype.Value=6)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',36,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=36;
  end
  else
    Dmd2FM.Funds.Edit;
end

else
if (((Dmd2FM.AttacBefQacctype.Value=22) or (Dmd2FM.AttacBefQacctype.Value=24))and(Dmd2FM.AttacBefQlisttype.Value<>3))
   or ((Dmd2FM.AttacBefQacctype.Value=36)and(Dmd2FM.AttacBefQlisttype.Value=3))then
begin
  if not Dmd2FM.Funds.Locate('AccType',39,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=39;
  end
  else
    Dmd2FM.Funds.Edit;
end;

  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.AttacBefQacctotal.Value;
  Dmd2FM.AttacBefQ.Next;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;



{-------------------------„·«Õﬁ «·‘Â— «·Õ«·Ì ›ﬁÿ----------------------}
sLabel2.Caption:=' ÃÂÌ“ ... „·«Õﬁ «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.AttacBefQ.Close;
Dmd2FM.AttacBefQ.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AttacBefQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AttacBefQ.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AttacBefQ.Open;


Dmd2FM.AttacBefQ.First;
while not Dmd2FM.AttacBefQ.Eof do
begin
sProgressBar1.StepIt;

if (Dmd2FM.AttacBefQacctype.Value=1)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',1,[])
else
if (Dmd2FM.AttacBefQacctype.Value=3)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',2,[])
else
if (Dmd2FM.AttacBefQacctype.Value=5)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',3,[])
else
if (Dmd2FM.AttacBefQacctype.Value=6)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',4,[])
else
if (Dmd2FM.AttacBefQacctype.Value=2)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',6,[])
else
if ((Dmd2FM.AttacBefQacctype.Value=7) or (Dmd2FM.AttacBefQacctype.Value=22)) and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',7,[])
else
if ((Dmd2FM.AttacBefQacctype.Value=17) and (Dmd2FM.AttacBefQlisttype.Value<>3))or ((Dmd2FM.AttacBefQacctype.Value=40) and (Dmd2FM.AttacBefQlisttype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',8,[])
else
if (Dmd2FM.AttacBefQacctype.Value=9)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',9,[])
else
if ((Dmd2FM.AttacBefQacctype.Value=15) or (Dmd2FM.AttacBefQacctype.Value=16) or (Dmd2FM.AttacBefQacctype.Value=17)
    or (Dmd2FM.AttacBefQacctype.Value=18) or (Dmd2FM.AttacBefQacctype.Value=19))and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',13,[])
else
if ((Dmd2FM.AttacBefQacctype.Value=1) or (Dmd2FM.AttacBefQacctype.Value=2))and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',14,[])
else
if (Dmd2FM.AttacBefQacctype.Value=4)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',15,[])
else
if (Dmd2FM.AttacBefQacctype.Value=3)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',16,[])
else
if (Dmd2FM.AttacBefQacctype.Value=14)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',17,[])
else
if (Dmd2FM.AttacBefQacctype.Value=8)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',22,[])
else
if (Dmd2FM.AttacBefQacctype.Value=13)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',24,[])
else
if (Dmd2FM.AttacBefQacctype.Value=20)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',25,[])
else
if (Dmd2FM.AttacBefQacctype.Value=9)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',26,[])
else
if (Dmd2FM.AttacBefQacctype.Value=15)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',27,[])
else
if (Dmd2FM.AttacBefQacctype.Value=16)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',29,[])
else
if (Dmd2FM.AttacBefQacctype.Value=19)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',30,[])
else
if (Dmd2FM.AttacBefQacctype.Value=11)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',31,[])
else
if (Dmd2FM.AttacBefQacctype.Value=10)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',32,[])
else
if (Dmd2FM.AttacBefQacctype.Value=23)and(Dmd2FM.AttacBefQlisttype.Value=3) then
  Dmd2FM.Funds.Locate('AccType',33,[])
else
if (Dmd2FM.AttacBefQacctype.Value=18)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',34,[])
else
if (Dmd2FM.AttacBefQacctype.Value=6)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',35,[])
else
if (Dmd2FM.AttacBefQacctype.Value=6)and(Dmd2FM.AttacBefQlisttype.Value<>3) then
  Dmd2FM.Funds.Locate('AccType',36,[])

else
if (((Dmd2FM.AttacBefQacctype.Value=22) or (Dmd2FM.AttacBefQacctype.Value=24))and(Dmd2FM.AttacBefQlisttype.Value<>3))
   or ((Dmd2FM.AttacBefQacctype.Value=36)and(Dmd2FM.AttacBefQlisttype.Value=3))then
  Dmd2FM.Funds.Locate('AccType',39,[]);

  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.AttacBefQacctotal.Value;
  Dmd2FM.AttacBefQ.Next;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;



{----------------------«·≈·€«¡«  Õ Ï ‰Â«Ì… «·‘Â— «·Õ«·Ì--------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «·≈·€«¡«  Õ Ï ‰Â«Ì… «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.EradDelQ.Close;
Dmd2FM.EradDelQ.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.EradDelQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.EradDelQ.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.EradDelQ.Open;

Dmd2FM.EradDelQ.First;
while not Dmd2FM.EradDelQ.Eof do
begin
sProgressBar1.StepIt;

if (Dmd2FM.EradDelQacctype.Value=1)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',1,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=1;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=3)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',2,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=2;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=5)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',3,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=3;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=6)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',4,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=4;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=2)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',6,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=6;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.EradDelQacctype.Value=7) or (Dmd2FM.EradDelQacctype.Value=22)) and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',7,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=7;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=17) and (Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',8,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=8;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=9)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',9,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=9;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.EradDelQacctype.Value=15) or (Dmd2FM.EradDelQacctype.Value=16) or (Dmd2FM.EradDelQacctype.Value=17)
    or (Dmd2FM.EradDelQacctype.Value=18) or (Dmd2FM.EradDelQacctype.Value=19)or (Dmd2FM.EradDelQacctype.Value=20))and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',13,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=13;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.EradDelQacctype.Value=1) or (Dmd2FM.EradDelQacctype.Value=2))and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',14,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=14;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=4)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',15,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=15;
  end
  else
    Dmd2FM.Funds.Edit;

end
else
if (Dmd2FM.EradDelQacctype.Value=3)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',16,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=16;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=14)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',17,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=17;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=8)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if not  Dmd2FM.Funds.Locate('AccType',22,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=22;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=13)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',24,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=24;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.EradDelQacctype.Value=20)and(Dmd2FM.EradDelQlisttype.Value<>3))
    or (((Dmd2FM.EradDelQacctype.Value=32) or (Dmd2FM.EradDelQacctype.Value=33) or (Dmd2FM.EradDelQacctype.Value=34)or (Dmd2FM.EradDelQacctype.Value=41)) and(Dmd2FM.EradDelQlisttype.Value=3))then
begin
  if  not Dmd2FM.Funds.Locate('AccType',25,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=25;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=9)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',26,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=26;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if ((Dmd2FM.EradDelQacctype.Value=15)and(Dmd2FM.EradDelQlisttype.Value<>3))or
   ((Dmd2FM.EradDelQacctype.Value=35)and(Dmd2FM.EradDelQlisttype.Value=3))  then
begin
  if  not Dmd2FM.Funds.Locate('AccType',27,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=27;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=16)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',29,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=29;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=19)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',30,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=30;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=11)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',31,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=31;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=10)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',32,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=32;
  end
  else
    Dmd2FM.Funds.Edit;

end
else
if (Dmd2FM.EradDelQacctype.Value=23)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',33,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=33;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=18)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if not Dmd2FM.Funds.Locate('AccType',34,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=34;
  end
  else
    Dmd2FM.Funds.Edit;
end
else
if (Dmd2FM.EradDelQacctype.Value=6)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  not Dmd2FM.Funds.Locate('AccType',35,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=35;
  end
  else
    Dmd2FM.Funds.Edit;
  if not Dmd2FM.Funds.Locate('AccType',36,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=36;
  end
  else
    Dmd2FM.Funds.Edit;

end
else
if (((Dmd2FM.EradDelQacctype.Value=22) or (Dmd2FM.EradDelQacctype.Value=24))and(Dmd2FM.EradDelQlisttype.Value<>3))
   or ((Dmd2FM.EradDelQacctype.Value=36)and(Dmd2FM.EradDelQlisttype.Value=3))then
begin
  if not Dmd2FM.Funds.Locate('AccType',39,[]) then
  begin
    Dmd2FM.Funds.Insert;
    Dmd2FM.FundsAccType.Value:=39;
  end
  else
    Dmd2FM.Funds.Edit;

end;

if ((Dmd2FM.EradDelQacctype.Value=14)and(Dmd2FM.EradDelQlisttype.Value=3))or(Dmd2FM.EradDelQacctype.Value=37) then
  Dmd2FM.EradDelQ.Next
else
begin
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value-Dmd2FM.EradDelQAccTotal.Value;
  Dmd2FM.EradDelQ.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;


{----------------------≈·€«¡«  «·‘Â— «·Õ«·Ì ›ﬁÿ--------------------}
sLabel2.Caption:=' ÃÂÌ“ ... ≈Ì—«œ«  «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.EradDelQ.Close;
Dmd2FM.EradDelQ.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.EradDelQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.EradDelQ.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.EradDelQ.Open;

Dmd2FM.EradDelQ.First;
while not Dmd2FM.EradDelQ.Eof do
begin
sProgressBar1.StepIt;

if (Dmd2FM.EradDelQacctype.Value=1)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if Dmd2FM.Funds.Locate('AccType',1,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=3)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',2,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=5)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',3,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=6)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',4,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=2)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',6,[]) then
end
else
if ((Dmd2FM.EradDelQacctype.Value=7) or (Dmd2FM.EradDelQacctype.Value=22)) and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',7,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=17) and (Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',8,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=9)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',9,[]) then
end
else
if ((Dmd2FM.EradDelQacctype.Value=15) or (Dmd2FM.EradDelQacctype.Value=16) or (Dmd2FM.EradDelQacctype.Value=17)
    or (Dmd2FM.EradDelQacctype.Value=18) or (Dmd2FM.EradDelQacctype.Value=19)or (Dmd2FM.EradDelQacctype.Value=20))and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',13,[]) then
end
else
if ((Dmd2FM.EradDelQacctype.Value=1) or (Dmd2FM.EradDelQacctype.Value=2))and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',14,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=4)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',15,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=3)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',16,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=14)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',17,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=8)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',22,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=13)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',24,[]) then
end
else
if ((Dmd2FM.EradDelQacctype.Value=20)and(Dmd2FM.EradDelQlisttype.Value<>3))
    or (((Dmd2FM.EradDelQacctype.Value=32) or (Dmd2FM.EradDelQacctype.Value=33) or (Dmd2FM.EradDelQacctype.Value=34)or (Dmd2FM.EradDelQacctype.Value=41)) and(Dmd2FM.EradDelQlisttype.Value=3))then
begin
  if  Dmd2FM.Funds.Locate('AccType',25,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=9)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',26,[]) then
end
else
if ((Dmd2FM.EradDelQacctype.Value=15)and(Dmd2FM.EradDelQlisttype.Value<>3))or
   ((Dmd2FM.EradDelQacctype.Value=35)and(Dmd2FM.EradDelQlisttype.Value=3))  then
begin
  if  Dmd2FM.Funds.Locate('AccType',27,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=16)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',29,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=19)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',30,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=11)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',31,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=10)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',32,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=23)and(Dmd2FM.EradDelQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',33,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=18)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',34,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=6)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',35,[]) then
end
else
if (Dmd2FM.EradDelQacctype.Value=6)and(Dmd2FM.EradDelQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',36,[]) then
end
else
if (((Dmd2FM.EradDelQacctype.Value=22) or (Dmd2FM.EradDelQacctype.Value=24))and(Dmd2FM.EradDelQlisttype.Value<>3))
   or ((Dmd2FM.EradDelQacctype.Value=36)and(Dmd2FM.EradDelQlisttype.Value=3))then
begin
  if  Dmd2FM.Funds.Locate('AccType',39,[]) then
end;

if ((Dmd2FM.EradDelQacctype.Value=14)and(Dmd2FM.EradDelQlisttype.Value=3))or(Dmd2FM.EradDelQacctype.Value=37) then
  Dmd2FM.EradDelQ.Next
else
begin
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value-Dmd2FM.EradDelQAccTotal.Value;
  Dmd2FM.EradDelQ.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;


{----------------------«·»œÌ·… Õ Ï ‰Â«Ì… «·‘Â— «·Õ«·Ì--------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «·»œÌ·… Õ Ï ‰Â«Ì… «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.EradAlterQ.Close;
Dmd2FM.EradAlterQ.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.EradAlterQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.EradAlterQ.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.EradAlterQ.Open;

Dmd2FM.EradAlterQ.First;
while not Dmd2FM.EradAlterQ.Eof do
begin
sProgressBar1.StepIt;

AccOk:=0;
Dmd2Fm.SAccList.Locate('ListNum',Dmd2FM.EradAlterQAlterBill.Value,[]);
DmdFm.SAccDet.Locate('AccNum;ListType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value]),[]);

if (Dmd2FM.EradAlterQacctype.Value=1)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if Dmd2FM.Funds.Locate('AccType',1,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=3)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',2,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=5)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',3,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
      AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=6)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',4,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
      AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=2)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',6,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if ((Dmd2FM.EradAlterQacctype.Value=7) or (Dmd2FM.EradAlterQacctype.Value=22)) and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',7,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=17) and (Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',8,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=9)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',9,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
  AccOk:=1;
  end;

end
else
if ((Dmd2FM.EradAlterQacctype.Value=15) or (Dmd2FM.EradAlterQacctype.Value=16) or (Dmd2FM.EradAlterQacctype.Value=17)
    or (Dmd2FM.EradAlterQacctype.Value=18) or (Dmd2FM.EradAlterQacctype.Value=19)or (Dmd2FM.EradAlterQacctype.Value=20))and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',13,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if ((Dmd2FM.EradAlterQacctype.Value=1) or (Dmd2FM.EradAlterQacctype.Value=2))and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',14,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
   AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=4)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',15,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=3)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',16,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=14)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',17,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=8)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',22,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=13)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',24,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if ((Dmd2FM.EradAlterQacctype.Value=20)and(Dmd2FM.EradAlterQlisttype.Value<>3))
    or (((Dmd2FM.EradAlterQacctype.Value=32) or (Dmd2FM.EradAlterQacctype.Value=33) or (Dmd2FM.EradAlterQacctype.Value=34)) and(Dmd2FM.EradAlterQlisttype.Value=3))then
begin
  if  Dmd2FM.Funds.Locate('AccType',25,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=9)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',26,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if ((Dmd2FM.EradAlterQacctype.Value=15)and(Dmd2FM.EradAlterQlisttype.Value<>3))or
   ((Dmd2FM.EradAlterQacctype.Value=35)and(Dmd2FM.EradAlterQlisttype.Value=3))  then
begin
  if  Dmd2FM.Funds.Locate('AccType',27,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=16)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',29,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=19)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',30,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=11)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',31,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=10)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',32,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=23)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',33,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=18)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',34,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=6)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',35,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=6)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',36,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (((Dmd2FM.EradAlterQacctype.Value=22) or (Dmd2FM.EradAlterQacctype.Value=24))and(Dmd2FM.EradAlterQlisttype.Value<>3))
   or ((Dmd2FM.EradAlterQacctype.Value=36)and(Dmd2FM.EradAlterQlisttype.Value=3))then
begin
  if  Dmd2FM.Funds.Locate('AccType',39,[]) then
  begin
  DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end;

if ((Dmd2FM.EradAlterQacctype.Value=14)and(Dmd2FM.EradAlterQlisttype.Value=3))or(Dmd2FM.EradAlterQacctype.Value=37) then
  Dmd2FM.EradAlterQ.Next
else
begin
  if AccOk=1 then
  begin
    Dmd2FM.Funds.Edit;
    Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value-(DmdFm.SAccDetAccTotal.Value-Dmd2FM.EradAlterQAccTotal.Value);
    Dmd2FM.EradAlterQ.Next;
  end
  else
    Dmd2FM.EradAlterQ.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;


{----------------------«·»œÌ·… «·‘Â— «·Õ«·Ì ›ﬁÿ--------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «·»œÌ·… «·‘Â— «·Õ«·Ì';
sLabel2.Update;


Dmd2FM.EradAlterQ.Close;
Dmd2FM.EradAlterQ.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.EradAlterQ.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.EradAlterQ.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.EradAlterQ.Open;

Dmd2FM.EradAlterQ.First;
while not Dmd2FM.EradAlterQ.Eof do
begin
sProgressBar1.StepIt;
AccOk:=0;
Dmd2Fm.SAccList.Locate('ListNum',Dmd2FM.EradAlterQAlterBill.Value,[]);
DmdFm.SAccDet.Locate('AccNum;ListType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value]),[]);

if (Dmd2FM.EradAlterQacctype.Value=1)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if Dmd2FM.Funds.Locate('AccType',1,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;

end
else
if (Dmd2FM.EradAlterQacctype.Value=3)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',2,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=5)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',3,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=6)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',4,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=2)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',6,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if ((Dmd2FM.EradAlterQacctype.Value=7) or (Dmd2FM.EradAlterQacctype.Value=22)) and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',7,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=17) and (Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',8,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=9)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',9,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if ((Dmd2FM.EradAlterQacctype.Value=15) or (Dmd2FM.EradAlterQacctype.Value=16) or (Dmd2FM.EradAlterQacctype.Value=17)
    or (Dmd2FM.EradAlterQacctype.Value=18) or (Dmd2FM.EradAlterQacctype.Value=19)or (Dmd2FM.EradAlterQacctype.Value=20))and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',13,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if ((Dmd2FM.EradAlterQacctype.Value=1) or (Dmd2FM.EradAlterQacctype.Value=2))and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',14,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=4)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',15,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=3)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',16,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=14)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',17,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=8)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',22,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=13)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',24,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if ((Dmd2FM.EradAlterQacctype.Value=20)and(Dmd2FM.EradAlterQlisttype.Value<>3))
    or (((Dmd2FM.EradAlterQacctype.Value=32) or (Dmd2FM.EradAlterQacctype.Value=33) or (Dmd2FM.EradAlterQacctype.Value=34)) and(Dmd2FM.EradAlterQlisttype.Value=3))then
begin
  if  Dmd2FM.Funds.Locate('AccType',25,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=9)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',26,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if ((Dmd2FM.EradAlterQacctype.Value=15)and(Dmd2FM.EradAlterQlisttype.Value<>3))or
   ((Dmd2FM.EradAlterQacctype.Value=35)and(Dmd2FM.EradAlterQlisttype.Value=3))  then
begin
  if  Dmd2FM.Funds.Locate('AccType',27,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=16)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',29,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=19)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',30,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=11)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',31,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=10)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',32,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=23)and(Dmd2FM.EradAlterQlisttype.Value=3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',33,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=18)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',34,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=6)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',35,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (Dmd2FM.EradAlterQacctype.Value=6)and(Dmd2FM.EradAlterQlisttype.Value<>3) then
begin
  if  Dmd2FM.Funds.Locate('AccType',36,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end
else
if (((Dmd2FM.EradAlterQacctype.Value=22) or (Dmd2FM.EradAlterQacctype.Value=24))and(Dmd2FM.EradAlterQlisttype.Value<>3))
   or ((Dmd2FM.EradAlterQacctype.Value=36)and(Dmd2FM.EradAlterQlisttype.Value=3))then
begin
  if  Dmd2FM.Funds.Locate('AccType',39,[]) then
  begin
    DmdFm.SAccDet.Locate('AccNum;ListType;AccType',vararrayof([Dmd2FM.SAccListListNum.Value,Dmd2Fm.SAccListListType.Value,Dmd2FM.EradAlterQacctype.Value]),[]);
    AccOk:=1;
  end;
end;

if ((Dmd2FM.EradAlterQacctype.Value=14)and(Dmd2FM.EradAlterQlisttype.Value=3))or(Dmd2FM.EradAlterQacctype.Value=37) then
  Dmd2FM.EradAlterQ.Next
else
begin
  if AccOk=1 then
  begin
    Dmd2FM.Funds.Edit;
    Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value-(DmdFm.SAccDetAccTotal.Value-Dmd2FM.EradAlterQAccTotal.Value);
    Dmd2FM.EradAlterQ.Next;
  end
  else
    Dmd2FM.EradAlterQ.Next;
end;
end;

if Dmd2FM.Funds.State=dsinsert then
  Dmd2FM.Funds.Post;

{--------------------------------------«· Œ“Ì‰ «·„€ÿÏ Ê«·„ﬂ‘Ê›-------------------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «· Œ“Ì‰ «·„€ÿÏ Ê«·„ﬂ‘Ê›';
sLabel2.Update;


  if Dmd2FM.AdmisMetEr.Locate('admismet',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.AdmisMetErAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AdmisMetEr.Locate('admismet',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.AdmisMetErAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;


Dmd2FM.AdmisMetEr2.Close;
Dmd2FM.AdmisMetEr2.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AdmisMetEr2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetEr2.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr2.Open;

  if Dmd2FM.AdmisMetEr2.Locate('admismet',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.AdmisMetEr2acctotal.Value;
      Dmd2FM.Funds.Post;
    end;
  if Dmd2FM.AdmisMetEr2.Locate('admismet',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.AdmisMetEr2acctotal.Value;
      Dmd2FM.Funds.Post;
  end;


{--------------------------------------«· Œ“Ì‰ «·„€ÿÏ Ê«·„ﬂ‘Ê› „·€Ì-------------------------------}
  if Dmd2FM.AdmisDel.Locate('admismet',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value-Dmd2FM.AdmisDelAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AdmisDel.Locate('admismet',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value-Dmd2FM.AdmisDelAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;

{--------------------------------------«· Œ“Ì‰ «·„€ÿÏ Ê«·„ﬂ‘Ê› »œÌ·…-------------------------------}
Dmd2FM.AlterQ1.Close;
Dmd2FM.AlterQ1.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AlterQ1.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AlterQ1.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AlterQ1.Open;

Dmd2FM.AlterQ2.Close;
Dmd2FM.AlterQ2.ParamByName('FromMonth').Value:=sComboBox2.Text;
Dmd2FM.AlterQ2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AlterQ2.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AlterQ2.Open;

  if Dmd2FM.AlterQ1.Locate('admismet',2,[]) then
  begin
    Dmd2FM.AlterQ2.Locate('admismet',2,[]);
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value-(Dmd2FM.AlterQ2AccTotal.Value-Dmd2FM.AlterQ1AccTotal.Value);
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AlterQ1.Locate('admismet',3,[]) then
  begin
    Dmd2FM.AlterQ2.Locate('admismet',3,[]);
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value-(Dmd2FM.AlterQ2AccTotal.Value-Dmd2FM.AlterQ1AccTotal.Value);
      Dmd2FM.Funds.Post;
  end;

{--------------------------------------«· Œ“Ì‰ «·„€ÿÏ Ê«·„ﬂ‘Ê› „·«Õﬁ-------------------------------}
  if Dmd2FM.AdmisMetAttach.Locate('met',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.AdmisMetAttachacctotal.Value;
      Dmd2FM.Funds.Post;
    end;
  if Dmd2FM.AdmisMetAttach.Locate('met',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.AdmisMetAttachacctotal.Value;
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AdmisMetAttach.Locate('met',1,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.FundsRuleValueAll.Value+Dmd2FM.AdmisMetAttachacctotal.Value;
      Dmd2FM.Funds.Post;
  end;

{-----------------------------„€ÿÏ Ê„ﬂ‘Ê› «·‘Â— «·Õ«·Ì ›ﬁÿ------------------------}
Dmd2FM.AdmisMetEr.Close;
Dmd2FM.AdmisMetEr.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetEr.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr.Open;

Dmd2FM.AdmisMetEr2.Close;
Dmd2FM.AdmisMetEr2.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetEr2.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetEr2.Open;


Dmd2FM.AdmisMetAttach.Close;
Dmd2FM.AdmisMetAttach.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetAttach.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisMetAttach.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisMetAttach.Open;

Dmd2FM.AdmisDel.Close;
Dmd2FM.AdmisDel.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisDel.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AdmisDel.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AdmisDel.Open;

Dmd2FM.AlterQ1.Close;
Dmd2FM.AlterQ1.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AlterQ1.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AlterQ1.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AlterQ1.Open;

Dmd2FM.AlterQ2.Close;
Dmd2FM.AlterQ2.ParamByName('FromMonth').Value:=sComboBox1.Text;
Dmd2FM.AlterQ2.ParamByName('Year_No').Value:=sDecimalSpinEdit1.Text;
Dmd2FM.AlterQ2.ParamByName('ToMonth').Value:=sComboBox1.Text;
Dmd2FM.AlterQ2.Open;


  if Dmd2FM.AdmisMetEr.Locate('admismet',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.AdmisMetErAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AdmisMetEr.Locate('admismet',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.AdmisMetErAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;


  if Dmd2FM.AdmisMetEr2.Locate('admismet',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.AdmisMetEr2acctotal.Value;
      Dmd2FM.Funds.Post;
    end;
  if Dmd2FM.AdmisMetEr2.Locate('admismet',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.AdmisMetEr2acctotal.Value;
      Dmd2FM.Funds.Post;
  end;



  if Dmd2FM.AdmisMetAttach.Locate('met',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.AdmisMetAttachacctotal.Value;
      Dmd2FM.Funds.Post;
    end;
  if Dmd2FM.AdmisMetAttach.Locate('met',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.AdmisMetAttachacctotal.Value;
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AdmisMetAttach.Locate('met',1,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value+Dmd2FM.AdmisMetAttachacctotal.Value;
      Dmd2FM.Funds.Post;
  end;


    if Dmd2FM.AdmisDel.Locate('admismet',2,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value-Dmd2FM.AdmisDelAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AdmisDel.Locate('admismet',3,[]) then
  begin
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value-Dmd2FM.AdmisDelAccTotal.Value;
      Dmd2FM.Funds.Post;
  end;


  if Dmd2FM.AlterQ1.Locate('admismet',2,[]) then
  begin
    Dmd2FM.AlterQ2.Locate('admismet',2,[]);
      Dmd2FM.Funds.Locate('AccType',35,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value-(Dmd2FM.AlterQ2AccTotal.Value-Dmd2FM.AlterQ1AccTotal.Value);
      Dmd2FM.Funds.Post;
  end;
  if Dmd2FM.AlterQ1.Locate('admismet',3,[]) then
  begin
    Dmd2FM.AlterQ2.Locate('admismet',3,[]);
      Dmd2FM.Funds.Locate('AccType',36,[]);
      Dmd2FM.Funds.Edit;
      Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.FundsRuleValueM.Value-(Dmd2FM.AlterQ2AccTotal.Value-Dmd2FM.AlterQ1AccTotal.Value);
      Dmd2FM.Funds.Post;
  end;




{--------------------≈Ã„«·Ì «·—”Ê„ «·”Ì«œÌ…--------------------}
sLabel2.Caption:=' ÃÂÌ“ ... «·≈Ã„«·Ì« ';
sLabel2.Update;


Dmd2FM.CeadeErQ.Close;
Dmd2FM.CeadeErQ.ParamByName('Month_No').Value:=Dmd2FM.fundsmasMonth_No.Value;
Dmd2FM.CeadeErQ.ParamByName('Year_No').Value:=Dmd2FM.fundsmasYear_No.Value;
Dmd2FM.CeadeErQ.Open;


if not Dmd2FM.Funds.Locate('AccType',50,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=50;
end
else
  Dmd2FM.Funds.Edit;

  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.CeadeErQRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.CeadeErQruleValueAll.Value;
  Dmd2FM.FundsTgValue.Value:=Dmd2FM.CeadeErQTgValue.Value;

  Dmd2FM.Funds.Post;

{--------------------⁄Ê«∆œ Œœ„«  «·«” À„«—--------------------}
if not Dmd2FM.Funds.Locate('AccType',51,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=51;
end;

{---------------------------------------------}
Dmd2Fm.MezMas.Active:=true;
if Dmd2FM.MezMas.Locate('Year_No',Dmd2FM.fundsmasYear_No.Value,[]) then
begin
  Dmd2FM.MezDet.First;
  while not Dmd2FM.MezDet.Eof do
  begin
  if Dmd2FM.Funds.Locate('AccType',Dmd2FM.MezDetInc_Num.Value,[])and(Dmd2FM.FundsAccType.Value<50)then
  begin
    Dmd2FM.Funds.Edit;
    Dmd2FM.FundsTgValue.Value:=Dmd2FM.MezDetInco_Value.Value;;
  end;
    Dmd2FM.MezDet.Next;
  end;
  if     Dmd2FM.Funds.State=dsedit then
         Dmd2FM.Funds.Post;
end;

{---------------------------------⁄—÷ «·≈Ã„«·Ì« ---------}
Dmd2FM.Funds.Refresh;

Dmd2FM.SumErad.Close;
Dmd2FM.SumErad.ParamByName('MasNum').Value:=Dmd2FM.FundsMasNum.Value;
Dmd2FM.SumErad.Open;

Dmd2FM.SumEradAll.Close;
Dmd2FM.SumEradAll.ParamByName('MasNum').Value:=Dmd2FM.FundsMasNum.Value;
Dmd2FM.SumEradAll.Open;

if not Dmd2FM.Funds.Locate('AccType',52,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=52;
end
else
  Dmd2FM.Funds.Edit;

  Dmd2FM.FundsTgValue.Value:=Dmd2FM.SumEradTgValue.Value;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.SumEradRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.SumEradRuleValueAll.Value;
  Dmd2FM.Funds.Post;

if not Dmd2FM.Funds.Locate('AccType',53,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=53;
end
else
  Dmd2FM.Funds.Edit;

  Dmd2FM.FundsTgValue.Value:=Dmd2FM.SumEradAllTgValue.Value;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.SumEradAllRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.SumEradAllRuleValueAll.Value;
  Dmd2FM.Funds.Post;
{-------------------------------------------}

if (Dmd2FM.Funds.State=dsinsert)or (Dmd2FM.Funds.State=dsedit) then
  Dmd2FM.Funds.Post;



Dmd2Fm.Funds.EnableControls;  

Dmd2FM.Funds.Refresh;

sPanel1.Visible:=false;

ShowMessage(' „  ÃÂÌ“ «· ﬁ—Ì— »‰Ã«Õ');

end;

procedure TFundsFm.FormCreate(Sender: TObject);
begin
sComboBox1.Text:=IntToStr(MonthOf(Date));
sDecimalSpinEdit1.Text:=IntToStr(YearOf(Date));
Dmd2FM.fundsmas.Active:=True;
end;

procedure TFundsFm.FormActivate(Sender: TObject);
begin
Dmd2FM.fundsmas.FilterSQL:='Year_No<>2999';

Dmd2FM.fundsmas.OrderFields:='Year_No desc,Month_No desc';
Dmd2FM.Funds.Active:=true;

end;

procedure TFundsFm.sBitBtn2Click(Sender: TObject);
begin
Application.CreateForm(TEradFm,EradFm);
EradFm.ShowModal;
EradFm.Free;

end;

procedure TFundsFm.sBitBtn3Click(Sender: TObject);
var monthNm,address:String;
monthNum:Smallint;
begin
monthNum:=Dmd2FM.fundsmasMonth_No.Value;
case monthNum of
1: monthNm:='Ì‰«Ì—';
2: monthNm:='›»—«Ì—';
3: monthNm:='„«—”';
4: monthNm:='√»—Ì·';
5: monthNm:='„«ÌÊ';
6: monthNm:='ÌÊ‰ÌÊ';
7: monthNm:='ÌÊ·ÌÊ';
8: monthNm:='√€”ÿ”';
9: monthNm:='”» „»—';
10: monthNm:='√ﬂ Ê»—';
11: monthNm:='‰Ê›„»—';
12: monthNm:='œÌ”„»—';
end;

Dmd2FM.SumErad.Close;
Dmd2FM.SumErad.ParamByName('MasNum').Value:=Dmd2FM.FundsMasNum.Value;
Dmd2FM.SumErad.Open;

Dmd2FM.SumEradAll.Close;
Dmd2FM.SumEradAll.ParamByName('MasNum').Value:=Dmd2FM.FundsMasNum.Value;
Dmd2FM.SumEradAll.Open;

RepFm.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\reports\Mezania.fr3');
address:='»Ì«‰ «·≈Ì—«œ«  «·„Õﬁﬁ… ⁄‰ ‘Â— '+monthNm+' ('+Dmd2FM.fundsmasMonth_No.AsString+') ·”‰… '+Dmd2FM.fundsmasYear_No.AsString+' „';
RepFm.frxReport1.Variables.Variables['address']:=QuotedStr(address);
//RepFm.frxReport1.Variables.Variables['address']:=QuotedStr('»Ì«‰ «·≈œ«—… «·„Õﬁﬁ… ⁄‰ ‘Â— ')+monthNm;

RepFm.frxReport1.ShowReport(True);

end;

procedure TFundsFm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if (((Column.Field = Dmd2Fm.FundsTypeNm)or
  (Column.Field = Dmd2Fm.FundsTgValue)or
  (Column.Field = Dmd2Fm.FundsRuleValueAll)or
  (Column.Field = Dmd2Fm.FundsRuleValueM)or
  (Column.Field = Dmd2Fm.FundsrealRate))
  AND((Dmd2Fm.FundsAccType.Value=50)or(Dmd2Fm.FundsAccType.Value=51)or(Dmd2Fm.FundsAccType.Value=42))) then
  begin
    DBGrid1.Canvas.Brush.Color := clGray;
  end
  else
  if (((Column.Field = Dmd2Fm.FundsTypeNm)or
  (Column.Field = Dmd2Fm.FundsTgValue)or
  (Column.Field = Dmd2Fm.FundsRuleValueAll)or
  (Column.Field = Dmd2Fm.FundsRuleValueM)or
  (Column.Field = Dmd2Fm.FundsrealRate))
  AND((Dmd2Fm.FundsAccType.Value=52)or(Dmd2Fm.FundsAccType.Value=53))) then
  begin
    DBGrid1.Canvas.Brush.Color := clMoneyGreen;
  end
  else
  if (((Column.Field = Dmd2Fm.FundsTypeNm)or
  (Column.Field = Dmd2Fm.FundsTgValue)or
  (Column.Field = Dmd2Fm.FundsRuleValueAll)or
  (Column.Field = Dmd2Fm.FundsRuleValueM)or
  (Column.Field = Dmd2Fm.FundsrealRate))
  AND((Dmd2Fm.FundsCeadea.Value=true))) then
  begin
    DBGrid1.Canvas.Brush.Color := clYellow;
  end

  else
  if gdselected in state then
    DBGrid1.Canvas.Font.Color := clHighlightText
  else
  DBGrid1.Canvas.Font.Color := Column.Font.Color;

  DBGrid1.Canvas.TextRect(rect, Rect.Left, Rect.Top, Column.Field.DisplayText);

end;

procedure TFundsFm.N1Click(Sender: TObject);
begin
Dmd2FM.Funds.Edit;
Dmd2FM.FundsCeadea.Value:=true;
Dmd2FM.Funds.Post;

Dmd2FM.CeadeErQ.Close;
Dmd2FM.CeadeErQ.ParamByName('Month_No').Value:=Dmd2FM.fundsmasMonth_No.Value;
Dmd2FM.CeadeErQ.ParamByName('Year_No').Value:=Dmd2FM.fundsmasYear_No.Value;
Dmd2FM.CeadeErQ.Open;


if not Dmd2FM.Funds.Locate('AccType',50,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=50;
end
else
  Dmd2FM.Funds.Edit;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.CeadeErQRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.CeadeErQruleValueAll.Value;
  Dmd2FM.Funds.Post;
end;

procedure TFundsFm.N2Click(Sender: TObject);
begin
Dmd2FM.Funds.Edit;
Dmd2FM.FundsCeadea.Value:=False;
Dmd2FM.Funds.Post;

Dmd2FM.CeadeErQ.Close;
Dmd2FM.CeadeErQ.ParamByName('Month_No').Value:=Dmd2FM.fundsmasMonth_No.Value;
Dmd2FM.CeadeErQ.ParamByName('Year_No').Value:=Dmd2FM.fundsmasYear_No.Value;
Dmd2FM.CeadeErQ.Open;


if not Dmd2FM.Funds.Locate('AccType',50,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=50;
end
else
Dmd2FM.Funds.Edit;

  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.CeadeErQRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.CeadeErQruleValueAll.Value;
  Dmd2FM.Funds.Post;


end;

procedure TFundsFm.sBitBtn4Click(Sender: TObject);
begin

  if Application.messagebox('”Ê› Ì „ Õ–› «·‘Â— «·Õ«·Ì ... Â· √‰  „ √ﬂœø','',1+mb_defbutton2)=2 then
    raise EAbort.Create('');

  Dmd2FM.Funds.First;
  while not Dmd2FM.Funds.Eof do
  Dmd2FM.Funds.Delete;

  Dmd2FM.fundsmas.Delete;

end;

procedure TFundsFm.sBitBtn5Click(Sender: TObject);
begin
{---------------------------------⁄—÷ «·≈Ã„«·Ì« ---------}
Dmd2FM.Funds.Refresh;

Dmd2FM.SumErad.Close;
Dmd2FM.SumErad.ParamByName('MasNum').Value:=Dmd2FM.FundsMasNum.Value;
Dmd2FM.SumErad.Open;

Dmd2FM.SumEradAll.Close;
Dmd2FM.SumEradAll.ParamByName('MasNum').Value:=Dmd2FM.FundsMasNum.Value;
Dmd2FM.SumEradAll.Open;

if not Dmd2FM.Funds.Locate('AccType',52,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=52;
end
else
  Dmd2FM.Funds.Edit;

  Dmd2FM.FundsTgValue.Value:=Dmd2FM.SumEradTgValue.Value;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.SumEradRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.SumEradRuleValueAll.Value;
  Dmd2FM.Funds.Post;

if not Dmd2FM.Funds.Locate('AccType',53,[]) then
begin
  Dmd2FM.Funds.Insert;
  Dmd2FM.FundsAccType.Value:=53;
end
else
  Dmd2FM.Funds.Edit;

  Dmd2FM.FundsTgValue.Value:=Dmd2FM.SumEradAllTgValue.Value;
  Dmd2FM.FundsRuleValueM.Value:=Dmd2FM.SumEradAllRuleValueM.Value;
  Dmd2FM.FundsRuleValueAll.Value:=Dmd2FM.SumEradAllRuleValueAll.Value;
  Dmd2FM.Funds.Post;
{-------------------------------------------}

if (Dmd2FM.Funds.State=dsinsert)or (Dmd2FM.Funds.State=dsedit) then
  Dmd2FM.Funds.Post;

end;

procedure TFundsFm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Dmd2FM.FundsAccType.Value<>51) then
  Dmd2FM.Dfunds.AutoEdit:=False
else
  Dmd2FM.Dfunds.AutoEdit:=True;

end;

procedure TFundsFm.sBitBtn6Click(Sender: TObject);
begin
Application.CreateForm(TMezFm,MezFm);
MezFm.ShowModal;
MezFm.Free;

end;

end.
