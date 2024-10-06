unit CloseUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, Data.DB;

type
  TCloseFm = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    LockDate: TDateTimePicker;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    LockDate2: TDateTimePicker;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CloseFm: TCloseFm;

implementation

uses Dmd2Un, RepUn, DmdUm, ViewUn;

{$R *.dfm}

procedure TCloseFm.BitBtn1Click(Sender: TObject);
begin
if Application.messagebox('ÓæÝ íÊã ÅÞÝÇá ÝæÇÊíÑ Çáíæã æÇáÝæÇÊíÑ ÇáãÑÍáÉ Åáì Çáíæã ÇáÍÇáí ÈÔÑØ Çä Êßæä ãÓÏÏå ... åá ÃäÊ ãÊÃßÏ¿','',1+mb_defbutton2)=2 then
raise EAbort.Create('');

if closetype=1 then{äÞÏí}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=0 where (loukof=1 or loukof is null) and (listtype=1 or listtype=4 or listtype=6) and paidf=1 and DateTop='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
  Dmd2FM.QueryAll.ExecSQL;

  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update attach set lockF=0 where (lockf=1 or lockf is null) and (acctype=1 or acctype=4 or acctype=6)  and attachdate='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
  Dmd2FM.QueryAll.ExecSQL;


  Dmd2Fm.MaxDailyQ.Close;
  Dmd2Fm.MaxDailyQ.Open;

  if Dmd2Fm.MaxDailyQDailyNum.Value=0 then
  begin
  {ÝæÇÊíÑ}
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum=1 where (dailynum is null) and loukof=0 and(listtype=1 or listtype=4 or ListType=6) and paidf=1 and DateTop='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
    Dmd2FM.QueryAll.ExecSQL;

  {ãáÇÍÞ}
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update attach set Attdaily=1 where (Attdaily is null) and lockf=0 and(acctype=1 or acctype=4 or accType=6)  and attachdate='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
    Dmd2FM.QueryAll.ExecSQL;

  end
  else
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (dailynum is null) and loukof=0 and (listtype=1 or listtype=4 or ListType=6) and paidf=1 and DateTop='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
    Dmd2FM.QueryAll.ExecSQL;

    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update attach set Attdaily= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (Attdaily is null) and lockf=0 and (acctype=1 or acctype=4 or accType=6)  and attachdate='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
    Dmd2FM.QueryAll.ExecSQL;

  end;
end
else
if closetype=3 then{ÌÇÑí}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=0 where (loukof=1 or loukof is null) and(listtype=2 or listtype=5 or listtype=7) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Dmd2FM.QueryAll.ExecSQL;

  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update attach set lockF=0 where (lockf=1 or lockf is null) and(acctype=2 or Acctype=5 or acctype=7)   and AttachDate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and AttachDate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Dmd2FM.QueryAll.ExecSQL;


  Dmd2Fm.MaxDailyQ.Close;
  Dmd2Fm.MaxDailyQ.Open;

  if Dmd2Fm.MaxDailyQDailyNum.Value=0 then
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum=1 where (dailynum is null) and loukof=0 and(listtype=2 or listtype=5 or ListType=7) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update attach set attdaily=1 where (attdaily is null) and lockf=0 and (acctype=2 or acctype=5 or accType=7)  and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

  end
  else
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (dailynum is null) and loukof=0 and(listtype=2 or listtype=5 or ListType=7) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update attach set Attdaily= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (attdaily is null) and lockf=0 and(acctype=2 or acctype=5 or accType=7)  and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

  end;
end
else
if closetype=4 then{ãÏíäæä}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=0  where (loukof=1 or loukof is null) and (listtype=8 or listtype=9) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Dmd2FM.QueryAll.ExecSQL;

  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update attach set lockF=0 where (lockf=1 or lockf is null) and(acctype=8 or acctype=9)   and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Dmd2FM.QueryAll.ExecSQL;


  Dmd2Fm.MaxDailyQ.Close;
  Dmd2Fm.MaxDailyQ.Open;

  if Dmd2Fm.MaxDailyQDailyNum.Value=0 then
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum=1 where (dailynum is null) and loukof=0 and(listtype=8 or listtype=9) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update attach set attdaily=1 where (attdaily is null) and lockf=0 and (acctype=8 or acctype=9)  and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

  end
  else
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (dailynum is null)and  loukof=0 and(listtype=8 or listtype=9) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update attach set Attdaily= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (Attdaily is null) and lockf=0 and(acctype=8 or acctype=9)  and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

  end;
end

else
if closetype=2 then{ÑÓæã}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=0 where (loukof=1 or loukof is null) and(listtype=3) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Dmd2FM.QueryAll.ExecSQL;


  Dmd2Fm.MaxDailyQ.Close;
  Dmd2Fm.MaxDailyQ.Open;

  if Dmd2Fm.MaxDailyQDailyNum.Value=0 then
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum=1 where (dailynum is null) and loukof=0 and(listtype=3) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;

  end
  else
  begin
    Dmd2FM.QueryAll.Close;
    Dmd2FM.QueryAll.SQL.Text:='update acclist set dailyNum= '+inttostr(Dmd2Fm.MaxDailyQDailyNum.Value+1)+' where (dailynum is null) and loukof=0 and(listtype=3) and paidf=1 and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
    Dmd2FM.QueryAll.ExecSQL;


  end;
end;

ShowMessage('Êã ÇÞÝÇá ÇáíæãíÉ ÊÍÊ ÑÞã '+IntToStr(Dmd2Fm.MaxDailyQDailyNum.Value+1));

end;

procedure TCloseFm.BitBtn2Click(Sender: TObject);
var total,atttotal:real;
begin
Dmd2FM.QueryAll.FilterSQL:='';
Dmd2FM.SAttach.FilterSQL:='';

if CloseType=1 then {äÞÏí}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=1 and (listtype=1 or listtype=4 or listtype=6) and dailynum is null and paidf=1 and DateTop='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' order by listnum';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;


 Dmd2FM.SAttach.FilterSQL:='(AccType=1 or AccType=4 or AccType=6)  and attdaily is null and (lockf=1 or lockf is null) and attachdate='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date));
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);

if (Dmd2FM.QueryAll.IsEmpty)and(Dmd2FM.SAttach.IsEmpty) then
  BitBtn1.Enabled:=false
else
  BitBtn1.Enabled:=True;

end
else
if CloseType=2 then{ÑÓæã}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=1 and (listtype=3) and paidf=1 and dailynum is null and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date))+' order by listnumR';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;


  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total);

 Dmd2FM.SAttach.FilterSQL:='(AccType=3)  and (lockf=1 or lockf is null) and (attdaily is null) and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);

if (Dmd2FM.QueryAll.IsEmpty)and(Dmd2FM.SAttach.IsEmpty) then
  BitBtn1.Enabled:=false
else
  BitBtn1.Enabled:=True;


end;

if CloseType=3 then{ÌÇÑí}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=1 and (listtype=2 or Listtype=5 or Listtype=7) and paidf=1 and dailynum is null and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date))+' order by listnum';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;


 Dmd2FM.SAttach.FilterSQL:='(AccType=2 or AccType=5 or AccType=7)  and (lockf=1 or lockf is null) and (attdaily is null) and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);

if (Dmd2FM.QueryAll.IsEmpty)and(Dmd2FM.SAttach.IsEmpty) then
  BitBtn1.Enabled:=false
else
  BitBtn1.Enabled:=True;

end;

if CloseType=4 then{ãÏíäæä}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=1 and (listtype=8 or listtype=9 ) and paidf=1 and dailynum is null and DateTop>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and DateTop<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date))+' order by listnum';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FloatToStr(total);


 Dmd2FM.SAttach.FilterSQL:='(AccType=8 or AccType=9)  and (lockf=1 or lockf is null) and (attdaily is null) and attachdate>='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate.date))+' and attachdate<='+QuotedStr(FormatDateTime('yyyy-mm-dd',LockDate2.date));
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);

if (Dmd2FM.QueryAll.IsEmpty)and(Dmd2FM.SAttach.IsEmpty) then
  BitBtn1.Enabled:=false
else
  BitBtn1.Enabled:=True;

end;


end;

procedure TCloseFm.FormActivate(Sender: TObject);
var total,atttotal:real;
begin
Dmd2FM.SAttach.Active:=True;
{ÚÑÖ íæãíÇÊ ãÞÝáÉ}
if (CloseType=5)or(CloseType=6)or(CloseType=7)or(CloseType=8) then
begin
Dmd2FM.QueryAll.FilterSQL:='';
Dmd2FM.SAttach.FilterSQL:='';

CloseFm.LockDate.Visible:=False;
CloseFm.LockDate2.Visible:=False;

BitBtn2.Visible:=False;
BitBtn1.Visible:=False;

if CloseType=5 then {äÞÏí}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=0 and (listtype=1 or listtype=4 or listtype=6) and dailynum is not null and paidf=1 and DateTop='+QuotedStr(FormatDateTime('yyyy-mm-dd',Dmd2Fm.DailyQdatetop.Value))+' order by listnum';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;


 Dmd2FM.SAttach.FilterSQL:='(AccType=1 or AccType=4 or AccType=6)  and attdaily is not null and lockf=0 and AttachDate='+QuotedStr(FormatDateTime('yyyy-mm-dd',Dmd2FM.DailyQdatetop.Value));
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);


end
else
if CloseType=6 then{ÌÇÑí}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=0 and (listtype=2 or Listtype=5 or Listtype=7) and paidf=1 and dailynum ='+Dmd2FM.DailyQdailynum.AsString+' order by listnum';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;


 Dmd2FM.SAttach.FilterSQL:='(AccType=2 or AccType=5 or AccType=7)  and lockf=0 and attdaily= '+Dmd2FM.DailyQdailynum.AsString ;
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);


end;

if CloseType=7 then{ãÏíäæä}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=0 and (listtype=8 or listtype=9) and paidf=1 and dailynum ='+Dmd2FM.DailyQdailynum.AsString+' order by listnum';
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FloatToStr(total);


 Dmd2FM.SAttach.FilterSQL:='(AccType=8 or acctype=9)  and lockf=0 and attdaily= '+Dmd2FM.DailyQdailynum.AsString ;
  Label3.Caption:='ÚÏÏ ÇáãáÇÍÞ : '+IntToStr(Dmd2FM.SAttach.RecordCount);
  atttotal:=0;
  Dmd2FM.SAttach.First;
  while not Dmd2FM.SAttach.Eof do
  begin
    atttotal:=atttotal+(Dmd2FM.SAttachAttachValue.Value+Dmd2FM.SAttachStampAbs.Value);
    Dmd2FM.SAttach.Next;
  end;
  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total+atttotal);

end
else
if CloseType=8 then{ÑÓæã}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='select * from acclist  where loukof=0 and (listtype=3) and paidf=1 and dailynum ='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.Open;

  Label1.Caption:='ÚÏÏ ÇáÝæÇÊíÑ : '+IntToStr(Dmd2FM.QueryAll.RecordCount);
  total:=0;
  Dmd2FM.QueryAll.First;
  while not Dmd2FM.QueryAll.Eof do
  begin
    total:=total+(Dmd2FM.QueryAlltotal.Value+Dmd2FM.QueryAllstampabs.Value);
    Dmd2FM.QueryAll.Next;
  end;


  Label2.Caption:='ÅÌãÇáí ÇáÝæÇÊíÑ : '+FormatFloat('0,0.000',total);
end;



end;
{--------------------------}
LockDate.Date:=date;
LockDate2.Date:=date;

if CloseType=1 then
begin
LockDate.Visible:=True;
LockDate2.Visible:=False;
Label6.Visible:=True;
end
else
begin
if (closetype=2) or (closetype=3) or (closetype=4) then
begin
LockDate.Visible:=True;
LockDate2.Visible:=True;
Label6.Visible:=True;

end
else
begin
LockDate.Visible:=False;
LockDate2.Visible:=False;
Label6.Visible:=false;
end;

end;

end;

procedure TCloseFm.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TCloseFm.Label3Click(Sender: TObject);
begin
if Dmd2FM.SAttach.IsEmpty then
  raise Exception.Create('áÇ ÊæÌÏ ãáÇÍÞ');
Application.CreateForm(TViewFm,ViewFm);
ViewFm.ShowModal;
ViewFm.Free;

end;

end.
