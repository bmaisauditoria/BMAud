unit frmClassificaFins;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DB, Mask, Buttons, Grids, Outline,
  ComCtrls;

type

  TfrmClassificaFin = class(TForm)
    dbPlanoC: TMSTable;
    dsPlanoC: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    cmdOk: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Outline1: TOutline;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbCliente: TMSTable;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dsCliente: TDataSource;
    dbClienteDeb: TMSTable;
    dbClienteDebCliFor: TAutoIncField;
    dbClienteDebNome: TStringField;
    dbClienteDebCGC: TStringField;
    dbClienteDebStatusCli: TBooleanField;
    dsClienteDeb: TDataSource;
    pagCli: TPageControl;
    TabSheet1: TTabSheet;
    cmbCliente: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    cmbCliente1: TDBLookupComboBox;
    Label19: TLabel;
    pagCliDeb: TPageControl;
    TabSheet4: TTabSheet;
    cmbClienteDeb: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    cmbClienteDeb1: TDBLookupComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    chkContabilizado: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cmdOkClick(Sender: TObject);
    procedure Outline1Click(Sender: TObject);
    procedure Outline1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cmbClienteCloseUp(Sender: TObject);
    procedure cmbCliente1CloseUp(Sender: TObject);
    procedure cmbClienteDebCloseUp(Sender: TObject);
    procedure cmbClienteDeb1CloseUp(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkContabilizadoClick(Sender: TObject);
  private
  pesq:string;


    { Private declarations }
  public
  vl:Currency;
  Filial,n1,n2,n3:Integer;
  cliente,clientedeb:integer;
  cs:string;
  contabilizado:boolean;

  procedure rept;
    { Public declarations }
  end;

var
  frmClassificaFin: TfrmClassificaFin;

implementation

uses frmPrincipal;

{$R *.DFM}

procedure TfrmClassificaFin.FormShow(Sender: TObject);
begin
    dbPlanoC.open;
    dbCliente.Open;
    dbClienteDeb.Open;
    cmdOk.Enabled:=false;
    tag:=0;
    n3:=0;
    dbPlanoC.first;
    while not dbPlanoC.eof do
    begin
        if pos('(-)', dbPlanoCDescricao.asstring)<>0 then
            cs:=cs+dbPlanoCCod1.asstring+',';
        if (N3=0) and (dbPlanoCCod3.AsInteger<>0) then
        begin
            n1:=dbPlanoCCod1.asinteger;
            n2:=dbPlanoCCod2.asinteger;
            n3:=dbPlanoCCod3.asinteger;
        end;
        dbPlanoC.next;
    end;
    dbPlanoC.first;
    rept;
    pesq:='';
    label7.caption:=format('%m', [vl]);
    pagCli.ActivePageIndex:=0;
    pagCliDeb.ActivePageIndex:=0;
    cmbCliente.KeyValue:=0;
    cmbCliente1.KeyValue:=0;
    cmbClienteDeb.KeyValue:=0;
    cmbClienteDeb1.KeyValue:=0;
    chkContabilizado.Checked:=contabilizado;
end;

procedure TfrmClassificaFin.cmdOkClick(Sender: TObject);
begin
    Outline1Click(Outline1);
    tag:=1;
    close;
end;


procedure TfrmClassificaFin.Outline1Click(Sender: TObject);
var a,b,c:Integer;
    k:String;
begin
    k:=outline1.Items[outline1.selecteditem].text;
    a:=pos(#32, k);
    k:=trim(copy(k, 1, a-1));
    b:=pos('.', k);
    a:=strtoint(copy(k, 1, b-1));
    k:=copy(k, b+1, 255);
    c:=pos('.', k);
    b:=strtoint(copy(k, 1, c-1));
    k:=copy(k, c+1, 255);
    c:=strtoint(k);
    n1:=a;
    n2:=b;
    n3:=c;
    cmdOk.enabled:=n3<>0;
end;

procedure TfrmClassificaFin.rept;
var g,n,i,j,k:Integer;
    a:string;
    gt:Tbookmark;

function fnz(i,j,k:word):string;
var b,c:string;
begin
    b:=inttostr(1000+i);
    c:=copy(b, 3, 2)+'.';
    b:=inttostr(1000+j);
    c:=c+copy(b, 3, 2)+'.';
    b:=inttostr(1000+k);
    c:=c+copy(b, 3, 2);
    result:=c;
end;

begin
    gt:=dbPlanoC.getbookmark;
    outline1.lines.clear;
    dbPlanoC.first;
    g:=1;
    while not dbPlanoC.eof do
    begin
        i:=dbPlanoCCod1.asinteger;
        j:=dbPlanoCCod2.asinteger;
        k:=dbPlanoCCod3.asinteger;
        a:=fnz(i,j,k);
        n:=ord(i<>0)+ord(j<>0)+ord(k<>0);
        outline1.lines.add(copy('      ',1,n-1)+a+' '+dbPlanoCDescricao.asstring);
        outline1.items[g].expanded:=true;
        inc(g);
        dbPlanoC.next;
    end;
    if gt<>nil then
    begin
        dbPlanoC.gotobookmark(gt);
        dbPlanoC.freebookmark(gt);
        i:=dbPlanoCCod1.asinteger;
        j:=dbPlanoCCod2.asinteger;
        k:=dbPlanoCCod3.asinteger;
        a:=fnz(i,j,k);
        outline1.selecteditem:=outline1.gettextitem(a+' '+dbPlanoCDescricao.asstring);
    end;
end;

procedure TfrmClassificaFin.Outline1KeyPress(Sender: TObject; var Key: Char);
var i:Integer;
begin
    pesq:=pesq+key;
    for i:=0 to outline1.Lines.count-1 do
    begin
        if pos(ansilowercase(pesq), ansilowercase(outline1.lines[i]))<>0 then
        begin
            outline1.selecteditem:=i+1;
            break;
        end;
        outline1click(Sender);
    end;

end;

procedure TfrmClassificaFin.Timer1Timer(Sender: TObject);
begin
    pesq:='';
end;


procedure TfrmClassificaFin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbPlanoC.close;
    dbCliente.Close;
    dbClienteDeb.Close;
end;

procedure TfrmClassificaFin.FormDestroy(Sender: TObject);
begin
    tag:=0;
end;

procedure TfrmClassificaFin.cmbClienteCloseUp(Sender: TObject);
begin
    if cmbCliente.KeyValue<>0 then
        cliente:=cmbCliente.keyvalue;
end;

procedure TfrmClassificaFin.cmbCliente1CloseUp(Sender: TObject);
begin
    if cmbCliente1.KeyValue=0  then
        cliente:=cmbCliente1.keyvalue;
end;

procedure TfrmClassificaFin.cmbClienteDebCloseUp(Sender: TObject);
begin
    if cmbClienteDeb.KeyValue<>0 then
        clientedeb:=cmbClientedeb.keyvalue;
end;

procedure TfrmClassificaFin.cmbClienteDeb1CloseUp(Sender: TObject);
begin
    if cmbClienteDeb1.KeyValue<>0 then
        clientedeb:=cmbClientedeb1.keyvalue;
end;

procedure TfrmClassificaFin.BitBtn1Click(Sender: TObject);
begin
    cmbCliente.KeyValue:=0;
    cmbCliente1.KeyValue:=0;
end;

procedure TfrmClassificaFin.BitBtn2Click(Sender: TObject);
begin
    cmbClienteDeb.KeyValue:=0;
    cmbClienteDeb1.KeyValue:=0;
end;

procedure TfrmClassificaFin.chkContabilizadoClick(Sender: TObject);
begin
    Contabilizado:=chkContabilizado.Checked;
end;

end.
