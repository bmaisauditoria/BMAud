unit frmOrganizas;

interface

uses
  BDE, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    dbCliente: TTable;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.BitBtn1Click(Sender: TObject);
var  NewIndex: IDXDesc;
begin
  if not Tbl.Exclusive then
    raise EDatabaseError.Create('TTable.Exclusive must be set to ' +
      'true in order to add an index to the table');
  with NewIndex do begin
    iIndexId:= 0;
    bPrimary:= True;
    bUnique:= True;
    bDescending:= False;
    bMaintained:= True;
    bSubset:= False;
    bExpIdx:= False;

    iFldsInKey:= 1;
    aiKeyFld[0]:= 1;
    bCaseInsensitive:= False;
  end;
  Check(DbiAddIndex(Tbl.dbhandle, Tbl.handle, PChar(Tbl.TableName), szParadox, NewIndex, nil));
end;


end;

end.
