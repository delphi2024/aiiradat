unit AgentUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, ToolWin, ComCtrls,
  DBActns, Mask, DBCtrls, Grids, DBGrids, db, sSkinProvider, sBitBtn,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtActns;

type
  TAgentFm = class(TForm)
    CoolBar1: TCoolBar;
    Panel2: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Edit1: TEdit;
    Label7: TLabel;
    sBitBtn1: TsBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBGridEh1: TDBGridEh;
    OpenDialog1: TOpenDialog;
    SendMail1: TSendMail;
    actionlist2: TActionList;
    procedure BitBtn10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AgentFm: TAgentFm;

implementation

uses DmdUm, SrchShUn;

{$R *.dfm}

procedure TAgentFm.BitBtn10Click(Sender: TObject);
begin
  Close;
end;

procedure TAgentFm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DmdFm.Agents.State = dsedit) or (DmdFm.Agents.State = dsinsert) then
    raise Exception.Create('«Õ›Ÿ «·»Ì«‰«  √Ê·«');

end;

procedure TAgentFm.Edit1Change(Sender: TObject);
begin
  DmdFm.AgentsV.Locate('AgName', Edit1.Text, [loPartialKey]);
end;

procedure TAgentFm.sBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TSrchShFm, SrchShFm);
  SrchShFm.sPanel2.Visible := true;
  SrchShFm.sPanel1.Visible := False;
  SrchShFm.sPanel3.Visible := False;
  SrchShFm.sPanel4.Visible := False;

  SrchShFm.ShowModal;
  SrchShFm.Free;

end;

end.
