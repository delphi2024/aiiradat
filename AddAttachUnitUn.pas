unit AddAttachUnitUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, sPanel;

type
  TAddAttachUnitFm = class(TForm)
    sPanel1: TsPanel;
    DBGridEh3: TDBGridEh;
    procedure DBGridEh3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddAttachUnitFm: TAddAttachUnitFm;

implementation

{$R *.dfm}

uses AcListUn, AgentUn, AiiradatUn, AngSerUn, Attach2Un, Attach3Un, AttachUn,
  BillSrUn, CarryUn, CloseUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DlyViewU,
  Dmd2Un, DmdUm, EfrajUn, EINCmUn, HatkaUn, HelpUn, IncoEnterUn, IncoKEnterUn,
  IncoSEnterUn, ListShUn, LocalAgantUn, LstDetUn, MainUn, PermUn, ServSerUn,
  ShipUn, SplashUn, SrchShUn, SrchUn, SubSrcUn, UFEnterPass, UnlockUn,
  VDateHrakUn, VdateHUn, ViewUn;

procedure TAddAttachUnitFm.DBGridEh3DblClick(Sender: TObject);
begin
  with DmdFm do
  begin

    if not Vunitaccdet.Locate('NumUnit', UnitsNum.Value, []) then
    begin
      Vunitaccdet.Insert;
       VunitaccdetNumAlist.Value := AccListListNum.Value;
       VunitaccdetNumAttach.Value := AttachAttachNum.Value;
      VunitaccdetNumUnit.Value := UnitsNum.Value;
      VUnitAccDetAddCount.Value := 1;
      VUnitAccDetQtityNormal.Value := 1;
      // VUnitAccListNMIncome.Value :=
      VUnitAccdet.Post;

    end;

  end;
  Close;
end;

end.
