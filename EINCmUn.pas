unit EINCmUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, sSkinProvider,
  Data.DB, sPanel;

type
  TEINCmFM = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    sPanel1: TsPanel;
    DBGrid3: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    sPanel2: TsPanel;
    DBGrid4: TDBGrid;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EINCmFM: TEINCmFM;

implementation

uses
  AcListUn, AttachUn, HelpUn, Dmd2Un, DmdUm;

{$R *.dfm}

procedure TEINCmFM.FormShow(Sender: TObject);
// var  IncType : integer;
begin

  Edit1.Text := '1';
end;

procedure TEINCmFM.BitBtn2Click(Sender: TObject);
begin

  with DmdFm do
  begin

    Inco.First;

    while not Inco.Eof do
    begin

      if not(DmdFm.Income.Locate('IncNum', DmdFm.IncoIncNum.Value, [])) then
      begin
        DmdFm.Income.Insert;
        DmdFm.IncomeIncNum.Value := DmdFm.IncoIncNum.Value;
        DmdFm.IncomeIncName.Value := DmdFm.IncoIncName.Value;
        DmdFm.Income.Post;
      end;

      Inco.Next;
    end;

  end;
end;

procedure TEINCmFM.BitBtn3Click(Sender: TObject);
begin
  if DmdFm.Income.IsEmpty then

  else
    DmdFm.Income.Delete;

end;

procedure TEINCmFM.BitBtn4Click(Sender: TObject);
begin

  if not(DmdFm.Income.Locate('IncNum', DmdFm.IncoIncNum.Value, [])) then
  begin
    DmdFm.Income.Insert;
    DmdFm.IncomeIncNum.Value := DmdFm.IncoIncNum.Value;
    DmdFm.IncomeIncName.Value := DmdFm.IncoIncName.Value;
    DmdFm.Income.Post;
  end;
end;

procedure TEINCmFM.BitBtn5Click(Sender: TObject);
begin
  with DmdFm do
  begin

    Inco.First;

    while not Inco.Eof do
    begin

      if not(DmdFm.incomek.Locate('IncNum', DmdFm.IncoIncNum.Value, [])) then
      begin
        DmdFm.incomek.Insert;
        DmdFm.incomekIncNum.Value := DmdFm.IncoIncNum.Value;
        DmdFm.incomekIncName.Value := DmdFm.IncoIncName.Value;
        DmdFm.incomek.Post;
      end;

      Inco.Next;
    end;

  end;
end;

procedure TEINCmFM.BitBtn6Click(Sender: TObject);
begin
  if not(DmdFm.incomek.Locate('IncNum', DmdFm.IncoIncNum.Value, [])) then
  begin
    DmdFm.incomek.Insert;
    DmdFm.incomekIncNum.Value := DmdFm.IncoIncNum.Value;
    DmdFm.incomekIncName.Value := DmdFm.IncoIncName.Value;
    DmdFm.incomek.Post;
  end;
end;

procedure TEINCmFM.BitBtn7Click(Sender: TObject);
begin
  if DmdFm.incomek.IsEmpty then

  else
    DmdFm.incomek.Delete;
end;

procedure TEINCmFM.BitBtn8Click(Sender: TObject);
begin
     with DmdFm do
  begin

    Inco.First;

    while not Inco.Eof do
    begin

      if not(DmdFm.iincome.Locate('IncNum', DmdFm.IncoIncNum.Value, [])) then
      begin
        DmdFm.iincome.Insert;
        DmdFm.iincomeIncNum.Value := DmdFm.IncoIncNum.Value;
        DmdFm.iincomeIncName.Value := DmdFm.IncoIncName.Value;
        DmdFm.iincome.Post;
      end;

      Inco.Next;
    end;

  end;
end;

procedure TEINCmFM.BitBtn9Click(Sender: TObject);
begin
    if not(DmdFm.iincome.Locate('IncNum', DmdFm.IncoIncNum.Value, [])) then
  begin
    DmdFm.iincome.Insert;
    DmdFm.iincomeIncNum.Value := DmdFm.IncoIncNum.Value;
    DmdFm.iincomeIncName.Value := DmdFm.IncoIncName.Value;
    DmdFm.iincome.Post;
  end;
end;

procedure TEINCmFM.BitBtn10Click(Sender: TObject);
begin
  if DmdFm.iincome.IsEmpty then

  else
    DmdFm.iincome.Delete;
end;

procedure TEINCmFM.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TEINCmFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit1.Text := '0';
end;

end.
