unit Dervr7Un;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  sBitBtn, Vcl.Grids, Vcl.DBGrids, acDBGrid, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, sLabel, sDBText, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TDervr7Fm = class(TForm)
    sBitBtn1: TsBitBtn;
    sDBText1: TsDBText;
    DBGridEh2: TDBGridEh;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    sBitBtn2: TsBitBtn;
    DBNavigator1: TDBNavigator;
    DBRadioGroup3: TDBRadioGroup;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dervr7Fm: TDervr7Fm;

implementation

{$R *.dfm}

uses  Dervr6Un, DirectDeliveryUn, DmdUm, HatkaUn, MainUn, PermUn,
  SplashUn, UFEnterPass, VDateHrakUn;

procedure TDervr7Fm.sBitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TDervr7Fm.sBitBtn2Click(Sender: TObject);
begin
    if Application.messagebox('          Â· √‰  „ √ﬂœ', '', 1 + mb_defbutton2) = 2
  then
    raise EAbort.Create('');

  with DmdFm do
  begin
    VDervr7.First;
    while not VDervr7.Eof do
    begin

      VDervr7.Delete;

    end;

  end;
  ShowMessage(' „  ⁄„·Ì… «·Õ–› Ê··Â «·Õ„œ');
end;

end.
