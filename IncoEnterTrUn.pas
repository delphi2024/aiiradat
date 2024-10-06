unit IncoEntertrUn;

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
  TIncoEnterTRFm = class(TForm)
    sPanel1: TsPanel;
    ImageList1: TImageList;
    DBGridEh1: TDBGridEh;
    DBVertGridEh1: TDBVertGridEh;
    DBGridEh2: TDBGridEh;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText1: TDBText;
    Label1: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Bevel2: TBevel;
    BitBtn11: TBitBtn;
    sBitBtn1: TsBitBtn;
    sPanel2: TsPanel;
    sDBNavigator1: TsDBNavigator;
    sDBRadioGroup1: TsDBRadioGroup;
    sDBLookupComboBox1: TsDBLookupComboBox;
    sDBRadioGroup2: TsDBRadioGroup;
    sDBRadioGroup3: TsDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    sLabel1: TsLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncoEnterTRFm: TIncoEnterTRFm;

implementation

{$R *.dfm}

uses DmdUm, EINCmUn;

procedure TIncoEntertrFm.BitBtn11Click(Sender: TObject);
begin
  With DmdFm do
  begin

    Inco.FilterSQL := 'IncType = 1';

  end;

  EINCmFM.BitBtn2.Visible := True;
  EINCmFM.BitBtn4.Visible := True;
  EINCmFM.BitBtn3.Visible := True;
  EINCmFM.BitBtn5.Visible := False;
  EINCmFM.BitBtn6.Visible := False;
  EINCmFM.BitBtn7.Visible := False;
  EINCmFM.BitBtn8.Visible := False;
  EINCmFM.BitBtn9.Visible := False;
  EINCmFM.BitBtn10.Visible := False;

  EINCmFM.Panel1.Visible := True;
  EINCmFM.sPanel1.Visible := False;
  EINCmFM.sPanel2.Visible := False;

  EINCmFM.ShowModal;
end;

procedure TIncoEntertrFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DmdFm.TENZincome.State = dsedit) or (DmdFm.TENZincome.State = dsinsert) then
    raise Exception.Create('«Õ›Ÿ «·»Ì«‰«  √Ê·«');
end;

procedure TIncoEntertrFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
