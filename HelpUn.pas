unit HelpUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Data.DB,
  sPageControl, acDBGrid, System.ImageList, Vcl.ImgList, acAlphaImageList,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  THelpFm = class(TForm)
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    DBNavigator14: TDBNavigator;
    DBGrid15: TDBGrid;
    DBNavigator8: TDBNavigator;
    sTabSheet3: TsTabSheet;
    DBGrid16: TDBGrid;
    Bevel2: TBevel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBNavigator15: TDBNavigator;
    sTabSheet4: TsTabSheet;
    DBGrid17: TDBGrid;
    DBNavigator16: TDBNavigator;
    sTabSheet5: TsTabSheet;
    DBGrid18: TDBGrid;
    RadioGroup2: TRadioGroup;
    DBNavigator17: TDBNavigator;
    sTabSheet6: TsTabSheet;
    DBGrid19: TDBGrid;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBNavigator18: TDBNavigator;
    DBRadioGroup2: TDBRadioGroup;
    sTabSheet7: TsTabSheet;
    DBGrid20: TDBGrid;
    DBNavigator19: TDBNavigator;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    sTabSheet8: TsTabSheet;
    DBNavigator1: TDBNavigator;
    sAlphaImageList1: TsAlphaImageList;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HelpFm: THelpFm;

implementation

uses  Dmd2Un, DmdUm;

{$R *.dfm}

procedure THelpFm.FormActivate(Sender: TObject);
begin
//DateTimePicker1.Time:=DmdFm.WorkTimeFromTime.Value;
//DateTimePicker2.Time:=DmdFm.WorkTimeToTime.Value;
RadioGroup2.ItemIndex:=0;
begin
  DmdFm.weights.Filtered:=False;
  DmdFm.weights.Filter:='carsF = 1';
  DmdFm.weights.Filtered:=True;
end;

end;

procedure THelpFm.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex=0 then
begin
  DmdFm.weights.Filtered:=False;
  DmdFm.weights.Filter:='carsF = 1';
  DmdFm.weights.Filtered:=True;
end
else
begin
  DmdFm.weights.Filtered:=False;
  DmdFm.weights.Filter:='carsF = 0';
  DmdFm.weights.Filtered:=True;
end;

end;

procedure THelpFm.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex=0 then
begin
  DmdFm.weights.Filtered:=False;
  DmdFm.weights.Filter:='carsF = 1';
  DmdFm.weights.Filtered:=True;
end
else
begin
  DmdFm.weights.Filtered:=False;
  DmdFm.weights.Filter:='carsF = 0';
  DmdFm.weights.Filtered:=True;
end;

end;


end.
