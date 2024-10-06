unit DlyViewU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, sBitBtn, Data.DB;

type
  TDlyViewF = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid3: TDBGrid;
    BitBtn1: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlyViewF: TDlyViewF;

implementation

uses  Dmd2Un,  RepUn, DmdUm, CloseUn;

{$R *.dfm}

procedure TDlyViewF.DBGrid1DblClick(Sender: TObject);
begin
Application.CreateForm(TCloseFm,CloseFm);
CloseFm.LockDate.Visible:=False;
CloseFm.LockDate2.Visible:=False;
CloseFm.Label6.Visible:=False;

  CloseFm.DBGrid1.Columns[1].Visible:=false;
  CloseFm.DBGrid1.Columns[0].Visible:=True;

CloseFm.ShowModal;
CloseFm.Free;
end;

procedure TDlyViewF.DBGrid3DblClick(Sender: TObject);
begin
if not Dmd2FM.DailyQ.IsEmpty then
begin
  Application.CreateForm(TCloseFm,CloseFm);
  CloseFm.LockDate.Visible:=False;
  CloseFm.LockDate2.Visible:=False;
if CloseType=8 then
begin
  CloseFm.DBGrid1.Columns[0].Visible:=false;
  CloseFm.DBGrid1.Columns[1].Visible:=True;
end
else
begin
  CloseFm.DBGrid1.Columns[1].Visible:=false;
  CloseFm.DBGrid1.Columns[0].Visible:=True;
end;

  CloseFm.ShowModal;
  CloseFm.Free;
end
else
ShowMessage('·« ÊÃœ ÌÊ„Ì« ');
end;

procedure TDlyViewF.BitBtn1Click(Sender: TObject);
begin
if not Dmd2FM.DailyQ.IsEmpty then
begin
if Application.messagebox('”Ê› Ì „  —ÃÌ⁄ «·ÌÊ„Ì… ... Â· √‰  „ √ﬂœø','',1+mb_defbutton2)=2 then
raise EAbort.Create('');

if closetype=5 then{‰ﬁœÌ}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=1 , dailynum=null where loukof=0 and (listtype=1 or listtype=4 or listtype=6) and paidf=1 and dailynum='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update attach set lockF=1 , Attdaily=null where lockf=0 and (acctype=1 or acctype=4 or acctype=6)  and attdaily='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

Dmd2FM.DailyQ.Close;
Dmd2FM.DailyQ.ParamByName('FromDate').Value:=RepFm.FromDate.Date;
Dmd2FM.DailyQ.ParamByName('ToDate').Value:=RepFm.ToDate.Date;
Dmd2FM.DailyQ.ParamByName('Type1').Value:=1;
Dmd2FM.DailyQ.ParamByName('Type2').Value:=4;
Dmd2FM.DailyQ.ParamByName('Type3').Value:=6;
Dmd2FM.DailyQ.Open;

end
else
if closetype=6 then{Ã«—Ì}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=1 , dailynum=null where loukof=0  and(listtype=2 or listtype=5 or listtype=7) and paidf=1 and dailynum='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update attach set lockF=1 , attdaily=null where lockf=0  and (acctype=2 or Acctype=5 or acctype=7)   and attdaily='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

Dmd2FM.DailyQ.Close;
Dmd2FM.DailyQ.ParamByName('FromDate').Value:=RepFm.FromDate.Date;
Dmd2FM.DailyQ.ParamByName('ToDate').Value:=RepFm.ToDate.Date;
Dmd2FM.DailyQ.ParamByName('Type1').Value:=2;
Dmd2FM.DailyQ.ParamByName('Type2').Value:=5;
Dmd2FM.DailyQ.ParamByName('Type3').Value:=7;
Dmd2FM.DailyQ.Open;

end
else
if closetype=7 then{„œÌ‰Ê‰}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=1 , DAILYNUM=NULL  where loukof=0 and (listtype=8 or listtype=9) and paidf=1 and DAILYNUM='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update attach set lockF=1 , attdaily=null where lockf=0 and(acctype=8 or acctype=9)   and attdaily='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

Dmd2FM.DailyQ.Close;
Dmd2FM.DailyQ.ParamByName('FromDate').Value:=RepFm.FromDate.Date;
Dmd2FM.DailyQ.ParamByName('ToDate').Value:=RepFm.ToDate.Date;
Dmd2FM.DailyQ.ParamByName('Type1').Value:=8;
Dmd2FM.DailyQ.ParamByName('Type2').Value:=8;
Dmd2FM.DailyQ.ParamByName('Type3').Value:=9;
Dmd2FM.DailyQ.Open;

end

else
if closetype=8 then{—”Ê„}
begin
  Dmd2FM.QueryAll.Close;
  Dmd2FM.QueryAll.SQL.Text:='update acclist set loukof=1 , dailynum=null where loukof=0 and(listtype=3) and paidf=1 and dailynum='+Dmd2FM.DailyQdailynum.AsString;
  Dmd2FM.QueryAll.ExecSQL;

Dmd2FM.DailyQ.Close;
Dmd2FM.DailyQ.ParamByName('FromDate').Value:=RepFm.FromDate.Date;
Dmd2FM.DailyQ.ParamByName('ToDate').Value:=RepFm.ToDate.Date;
Dmd2FM.DailyQ.ParamByName('Type1').Value:=3;
Dmd2FM.DailyQ.ParamByName('Type2').Value:=3;
Dmd2FM.DailyQ.ParamByName('Type3').Value:=3;
Dmd2FM.DailyQ.Open;

end;

ShowMessage(' „ ≈·€«¡ ﬁ›· «·ÌÊ„Ì… »‰Ã«Õ ');
end
else
ShowMessage('·«  ÊÃœ ÌÊ„Ì«  ·⁄—÷Â«');

end;

procedure TDlyViewF.FormActivate(Sender: TObject);
begin
if (DmdFm.PermRetDaily.Value=false) then
  BitBtn1.Visible:=False
else
  BitBtn1.Visible:=true;

end;

end.

