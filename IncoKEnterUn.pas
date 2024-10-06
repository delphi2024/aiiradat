unit IncoKEnterUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  Vcl.DBCtrls, sDBLookupComboBox, Vcl.StdCtrls, sGroupBox, sDBRadioGroup,
  sDBNavigator, sBitBtn, Vcl.Buttons, Vcl.Mask, DBVertGridsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, sPanel, sLabel;

type
  TIncoKEnterFm = class(TForm)
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
    sBitBtn2: TsBitBtn;
    DBGridEh3: TDBGridEh;
    sBitBtn3: TsBitBtn;
    sLabel1: TsLabel;
    procedure sBitBtn1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncoKEnterFm: TIncoKEnterFm;

implementation

{$R *.dfm}

uses AcListUn, AgentUn, AiiradatUn, AngSerUn, Attach2Un, Attach3Un, AttachUn,
  BillSrUn, CarryUn, CloseUn, Dervr6Un, Dervr7Un, DirectDeliveryUn, DlyViewU,
  Dmd2Un, DmdUm, EfrajUn, EINCmUn, HatkaUn, HelpUn, IncoEnterUn, IncoSEnterUn,
  ListShUn, LocalAgantUn, LstDetUn, MainUn, PermUn, ShipUn, SplashUn, SrchShUn,
  SrchUn, SubSrcUn, UFEnterPass, UnlockUn, VDateHrakUn, VdateHUn, ViewUn;

procedure TIncoKEnterFm.BitBtn11Click(Sender: TObject);
begin
  With DmdFm do
  begin

    Inco.FilterSQL := 'IncType = 1';

  end;

  EINCmFM.BitBtn2.Visible := False;
  EINCmFM.BitBtn4.Visible := False;
  EINCmFM.BitBtn3.Visible := False;
  EINCmFM.BitBtn5.Visible := True;
  EINCmFM.BitBtn6.Visible := True;
  EINCmFM.BitBtn7.Visible := True;
  EINCmFM.BitBtn8.Visible := False;
  EINCmFM.BitBtn9.Visible := False;
  EINCmFM.BitBtn10.Visible := False;

  EINCmFM.Panel1.Visible := False;
  EINCmFM.sPanel1.Visible := True;
  EINCmFM.sPanel2.Visible := False;

  EINCmFM.ShowModal;
end;

procedure TIncoKEnterFm.FormShow(Sender: TObject);
begin
  DmdFm.services.Refresh;
end;

procedure TIncoKEnterFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TIncoKEnterFm.sBitBtn2Click(Sender: TObject);
begin

  with DmdFm do
  begin

    Units.First;
    while not Units.eof do
    begin

      if not hrakunit.Locate('NumUnit', UnitsNum.Value, []) then
      begin
        hrakunit.Insert;
        hrakunitNumAede.Value := incomekNumAuto.Value;
        hrakunitNumUnit.Value := UnitsNum.Value;
        hrakunitAedeDubel.Value := 0;

        hrakunit.Post;

      end;

      Units.Next;
    end;

  end;

end;

procedure TIncoKEnterFm.sBitBtn3Click(Sender: TObject);
begin

  with DmdFm do
  begin

    hrakunit.First;
    while not hrakunit.eof do
    begin
      hrakunit.Delete;
    end;

  end;

end;

end.
