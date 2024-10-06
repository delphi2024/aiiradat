unit IncoSEnterUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, Buttons, DBActns, ActnList, db, sSkinProvider, sBitBtn,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, System.ImageList,
  Vcl.ImgList, DBVertGridsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  sPanel,
  sDBLookupComboBox, sGroupBox, sDBRadioGroup, sDBNavigator, sLabel;

type
  TIncoSEnterFm = class(TForm)
    sPanel1: TsPanel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText1: TDBText;
    Label1: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    DBGridEh1: TDBGridEh;
    DBVertGridEh1: TDBVertGridEh;
    DBGridEh2: TDBGridEh;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    BitBtn11: TBitBtn;
    sBitBtn1: TsBitBtn;
    sPanel2: TsPanel;
    sDBNavigator1: TsDBNavigator;
    sDBLookupComboBox1: TsDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    ImageList1: TImageList;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    sLabel1: TsLabel;
    procedure BitBtn11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncoSEnterFm: TIncoSEnterFm;

implementation

{$R *.dfm}

uses AcListUn, AgentUn, AiiradatUn, AngSerUn, Attach2Un, Attach3Un, AttachUn,
  BillSrUn, CarryUn, CloseUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DlyViewU,
  Dmd2Un, DmdUm, EfrajUn, EINCmUn, HatkaUn, HelpUn, IncoEnterUn, ListShUn,
  LocalAgantUn, LstDetUn, MainUn, PermUn, ShipUn, SplashUn, SrchShUn, SrchUn,
  SubSrcUn, UFEnterPass, UnlockUn, VDateHrakUn, VdateHUn, ViewUn;

procedure TIncoSEnterFm.BitBtn11Click(Sender: TObject);
begin
  With DmdFm do
  begin

    Inco.FilterSQL := 'IncType = 1';

  end;

  EINCmFM.BitBtn2.Visible := False;
  EINCmFM.BitBtn4.Visible := False;
  EINCmFM.BitBtn3.Visible := False;
  EINCmFM.BitBtn5.Visible := False;
  EINCmFM.BitBtn6.Visible := False;
  EINCmFM.BitBtn7.Visible := False;
  EINCmFM.BitBtn8.Visible := True;
  EINCmFM.BitBtn9.Visible := True;
  EINCmFM.BitBtn10.Visible := True;

  EINCmFM.Panel1.Visible := False;
  EINCmFM.sPanel1.Visible := False;
  EINCmFM.sPanel2.Visible := True;

  EINCmFM.ShowModal;
end;

procedure TIncoSEnterFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DmdFm.Iincome.State = dsedit) or (DmdFm.Iincome.State = dsinsert) then
    raise Exception.Create('«Õ›Ÿ «·»Ì«‰«  √Ê·«');
end;

procedure TIncoSEnterFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
