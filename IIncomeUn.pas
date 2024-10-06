unit IIncomeUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls,
  Buttons, DBActns, ActnList, db, sSkinProvider, sBitBtn, System.Actions;

type
  TIIncomeFm = class(TForm)
    DBGrid1: TDBGrid;
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
    DBEdit3: TDBEdit;
    BitBtn11: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBRadioGroup1: TDBRadioGroup;
    sBitBtn1: TsBitBtn;
    procedure BitBtn10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IIncomeFm: TIIncomeFm;

implementation

uses
  DmdUn, EINCmUn, AcListUn, AdmDetUn, AdmiUn, AgentUn, Attach2Un, Attach3Un,
  AttachUn, ConsUn, HelpUn, IncomeUn, IncoUn, ListShUn, Load2Un, MainUn, MoveUn,
  PermUn, RateUn, RepUn, ShhnUn, shippUn, ShipUn, SplashUn, SrchUn, SubSrcUn,
  UFEnterPass, EINCm1Un;

{$R *.dfm}

procedure TIIncomeFm.BitBtn10Click(Sender: TObject);
begin
  Close;
end;

procedure TIIncomeFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DmdFm.Income.State = dsedit) or (DmdFm.Income.State = dsinsert) then
    raise Exception.Create('«Õ›Ÿ «·»Ì«‰«  √Ê·«');

end;

procedure TIIncomeFm.BitBtn11Click(Sender: TObject);
begin
  incoType := 1;
  with DmdFm do
  begin
//Inco.Filtered:=false;
    Inco.FilterSQL := 'IncType = 1';
//Inco.Filtered:=true;
// Inco.CancelRange;
// Inco.IndexName:='ByType';
// Inco.SetRange([1],[1]);
  end;
  EINCm1FM.ShowModal;
end;

procedure TIIncomeFm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TIIncomeFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.

