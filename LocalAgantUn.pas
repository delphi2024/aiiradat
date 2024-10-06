unit LocalAgantUn;

interface

uses
  SysUtils, Classes, DB, Uni, DBAccess, MemDS, inifiles, forms, messages,
  dialogs, frxClass, frxDBSet, windows, controls, variants, ActnList,
  UniProvider, MySQLUniProvider, StdCtrls, Buttons, sBitBtn, Grids, DBGrids,
  sEdit;

type
  TLocalAgantFm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    sBitBtn1: TsBitBtn;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label2: TLabel;
    sEdit1: TsEdit;
    DBGrid4: TDBGrid;
    procedure sBitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sEdit1Change(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LocalAgantFm: TLocalAgantFm;

implementation

uses
   UFEnterPass, AcListUn, AiiradatUn, Dervr6Un, Dervr7Un, DirectDeliveryUn,
  DmdUm, HatkaUn, LstDetUn, MainUn, PermUn, SplashUn, SrchUn, SubSrcUn,
  VDateHrakUn;

{$R *.dfm}

procedure TLocalAgantFm.sBitBtn1Click(Sender: TObject);
begin
  DmdFm.QAgents.Close;
  DmdFm.QAgents.ParamByName('name1').Value := '%' + Edit1.Text + '%';
  DmdFm.QAgents.Open;
end;

procedure TLocalAgantFm.DBGrid1DblClick(Sender: TObject);
begin
  if ((DmdFm.AccList.State = dsedit) or (DmdFm.AccList.State = dsInsert)) then
    DmdFm.AccListAginNm.Value := DmdFm.QAgentsNum.Value;

  Close;

end;

procedure TLocalAgantFm.Edit1Change(Sender: TObject);
begin
  DBGrid4.Visible := false;
  if DBGrid2.Visible = true then
  begin
    DmdFm.SrchAgQ.Close;
    DmdFm.SrchAgQ.ParamByName('AgName').Value := '%' + Edit1.Text + '%';
    DmdFm.SrchAgQ.Open;
  end;
  if DBGrid3.Visible = true then
  begin
    DmdFm.SrchShEQ.Close;
    DmdFm.SrchShEQ.ParamByName('Name_En').Value := '%' + Edit1.Text + '%';
    DmdFm.SrchShEQ.Open;
  end;

end;

procedure TLocalAgantFm.DBGrid2DblClick(Sender: TObject);
begin
  if ((DmdFm.AccList.State = dsedit) or (DmdFm.AccList.State = dsInsert)) then
    DmdFm.AccListAginNm.Value := DmdFm.SrchAgQNum.Value;
  close;
end;

procedure TLocalAgantFm.DBGrid3DblClick(Sender: TObject);
begin
  if ((DmdFm.AccList.State = dsedit) or (DmdFm.AccList.State = dsInsert)) then
  begin
    DmdFm.Ships.Locate('NumAuto', DmdFm.SrchShEQNumAuto.Value, []);
    DmdFm.AccListShipNum.Value := DmdFm.SrchShEQNumAuto.Value;
  end;
  close;

end;

procedure TLocalAgantFm.Edit1Enter(Sender: TObject);
begin
  if (DBGrid2.Visible = true) or (DBGrid1.Visible = True) then
    LoadKeyBoardLayout('00000401', Klf_Activate)
  else
    LoadKeyBoardLayout('00000409', Klf_Activate)

end;

procedure TLocalAgantFm.FormActivate(Sender: TObject);
begin
  if (DBGrid2.Visible = true) or (DBGrid1.Visible = true) then
  begin
    Label2.Visible := False;
    sEdit1.Visible := False;
    Label1.Caption := '»ÕÀ »«”„ «·ÊﬂÌ·';
  end
  else
  begin
    Label2.Visible := true;
    sEdit1.Visible := true;
    Label1.Caption := '»ÕÀ »«”„ «·”›Ì‰…'
  end;

end;

procedure TLocalAgantFm.sEdit1Change(Sender: TObject);
begin
  DBGrid4.Visible := true;
  DBGrid4.BringToFront;
  DmdFm.ImoSrchQ.Close;
  DmdFm.ImoSrchQ.ParamByName('ImoNum').Value := '%' + sEdit1.Text + '%';
  DmdFm.ImoSrchQ.Open;
end;

procedure TLocalAgantFm.DBGrid4DblClick(Sender: TObject);
begin
  if ((DmdFm.AccList.State = dsedit) or (DmdFm.AccList.State = dsInsert)) then
  begin
    DmdFm.Ships.Locate('NumAuto', DmdFm.ImoSrchQNumAuto.Value, []);
    DmdFm.AccListShipNum.Value := DmdFm.ImoSrchQNumAuto.Value;
  end;
  close;

end;

end.

