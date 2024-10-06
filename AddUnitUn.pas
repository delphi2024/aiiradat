unit AddUnitUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, sPanel;

type
  TAddUnitFm = class(TForm)
    sPanel1: TsPanel;
    DBGridEh3: TDBGridEh;
    procedure DBGridEh3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddUnitFm: TAddUnitFm;

implementation

{$R *.dfm}

uses AcListUn, AgentUn, AiiradatUn, AngSerUn, Attach2Un, Attach3Un, AttachUn,
  BillSrUn, CarryUn, CloseUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DlyViewU,
  Dmd2Un, DmdUm, EfrajUn, EINCmUn, HatkaUn, HelpUn, IncoEnterUn, IncoKEnterUn,
  IncoSEnterUn, ListShUn, LocalAgantUn, LstDetUn, MainUn, PermUn, ServSerUn,
  ShipUn, SplashUn, SrchShUn, SrchUn, SubSrcUn, UFEnterPass, UnlockUn,
  VDateHrakUn, VdateHUn, ViewUn;

procedure TAddUnitFm.DBGridEh3DblClick(Sender: TObject);
begin
  with DmdFm do
  begin

    if not VUnitAccList.Locate('NumUnit', UnitsNum.Value, []) then
    begin
      VUnitAccList.Insert;
      VUnitAccListNumAlist.Value := AccListListNum.Value;
      VUnitAccListNumUnit.Value := UnitsNum.Value;
      VUnitAccListAddCount.Value := 1;
      VUnitAccListQtityNormal.Value := 1;
      // VUnitAccListNMIncome.Value :=
      VUnitAccList.Post;

    end;

  end;
  Close;
end;

end.
