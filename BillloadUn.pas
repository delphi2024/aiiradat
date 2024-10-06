unit BillloadUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TBillloadFm = class(TForm)
    DBGridEh2: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillloadFm: TBillloadFm;

implementation

{$R *.dfm}

uses DmdUm;

end.
