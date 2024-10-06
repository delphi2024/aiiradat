unit AgntRUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons,
  sBitBtn;

type
  TAgntRFm = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    sBitBtn1: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AgntRFm: TAgntRFm;

implementation

uses DmdUn, SrchShUn;

{$R *.dfm}

procedure TAgntRFm.sBitBtn1Click(Sender: TObject);
begin
Application.CreateForm(TSrchShFm,SrchShFm);
SrchShFm.sPanel2.Visible:=False;
SrchShFm.sPanel1.Visible:=False;
SrchShFm.sPanel3.Visible:=true;

SrchShFm.ShowModal;
SrchShFm.Free;

end;

end.
