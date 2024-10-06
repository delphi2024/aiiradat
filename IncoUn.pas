unit IncoUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, sSkinProvider, StdCtrls;

type
  TIncoFm = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncoFm: TIncoFm;

implementation

uses DmdUn;

{$R *.dfm}

procedure TIncoFm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if (((Column.Field = DmdFm.IncoIncNum)or
  (Column.Field = DmdFm.IncoIncName)or
  (Column.Field = DmdFm.IncoValue1)or
  (Column.Field = DmdFm.IncoValue2)or
  (Column.Field = DmdFm.IncoMin))
  AND(DmdFm.IncoCeade.Value=True)) then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.Canvas.Brush.Color := clYellow;
  end
  else
  if gdselected in state then
    DBGrid1.Canvas.Font.Color := clHighlightText
  else
  DBGrid1.Canvas.Font.Color := Column.Font.Color;

  DBGrid1.Canvas.TextRect(rect, Rect.Left, Rect.Top, Column.Field.DisplayText);

end;

end.
