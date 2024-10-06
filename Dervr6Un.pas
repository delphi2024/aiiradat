unit Dervr6Un;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, sBitBtn,
  Data.DB, Vcl.Grids, Vcl.DBGrids, acDBGrid;

type
  TDervr6Fm = class(TForm)
    sBitBtn1: TsBitBtn;
    sDBGrid1: TsDBGrid;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sDBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dervr6Fm: TDervr6Fm;

implementation

{$R *.dfm}

uses Dervr7Un, DirectDeliveryUn, DmdUm, HatkaUn, MainUn, PermUn,
  SplashUn, UFEnterPass, VDateHrakUn;

procedure TDervr6Fm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TDervr6Fm.sDBGrid1EditButtonClick(Sender: TObject);
begin
  with DmdFm do
  begin
    IF (NOT(VDervr6Qty.IsNull)) THEN
    BEGIN

      VDervr7.Close;
      VDervr7.ParamByName('VNumT').Value := VDervr6numAuto.Value;
      VDervr7.Execute;

      Application.CreateForm(TDervr7Fm, Dervr7Fm);
      Dervr7Fm.ShowModal;
      Dervr7Fm.Free;
    END;

  end;
end;

end.
