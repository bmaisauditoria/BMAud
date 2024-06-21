unit frmteste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MSAccess, ComCtrls, ShellCtrls, ExtCtrls,
  StdCtrls, ComObj, PsAPI,  TlHelp32, HKStreamCol, DBCtrls, Grids, DBGrids;

type
  TfrmDocs = class(TForm)
    dados: TMSConnection;
    dbDoc: TMSQuery;
    dbDocDocumento: TBlobField;
    Panel14: TPanel;
    Label24: TLabel;
    Splitter2: TSplitter;
    ShellTreeView1: TShellTreeView;
    ShellListView2: TShellListView;
    Panel15: TPanel;
    Label25: TLabel;
    ShellListView1: TShellListView;
    Panel16: TPanel;
    HKStreams1: THKStreams;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    dsDoc: TDataSource;
    dbDocCodigo: TIntegerField;
    procedure ShellTreeView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ShellListView2DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ShellListView2DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ShellListView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ShellListView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ShellListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbDocAfterScroll(DataSet: TDataSet);
    procedure dbDocBeforeClose(DataSet: TDataSet);
    procedure dbDocBeforePost(DataSet: TDataSet);
    procedure dbDocBeforeScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    iDir,IUsuario:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocs: TfrmDocs;

{const
  SHCONTCH_NOPROGRESSBOX = 4;
  SHCONTCH_AUTORENAME = 8;
  SHCONTCH_RESPONDYESTOALL = 16;
  SHCONTF_INCLUDEHIDDEN = 128;
  SHCONTF_FOLDERS = 32;
  SHCONTF_NONFOLDERS = 64;}

implementation


{function ShellUnzip(zipfile, targetfolder: string; filter: string = ''): boolean;
var
  shellobj: variant;
  srcfldr, destfldr: variant;
  shellfldritems: variant;
begin
  shellobj := CreateOleObject('Shell.Application');

  srcfldr := shellobj.NameSpace(zipfile);
  destfldr := shellobj.NameSpace(targetfolder);

  shellfldritems := srcfldr.Items;
  if (filter <> '') then
    shellfldritems.Filter(SHCONTF_INCLUDEHIDDEN or SHCONTF_NONFOLDERS or SHCONTF_FOLDERS,filter);

  destfldr.CopyHere(shellfldritems, SHCONTCH_NOPROGRESSBOX or SHCONTCH_RESPONDYESTOALL);
end;

function NumProcessThreads: integer;
var
  hsnapshot: THandle;
  Te32: TTHREADENTRY32;
  proch: dword;
  procthreads: integer;
begin
  procthreads := 0;

  proch := GetCurrentProcessID;

  hSnapShot := CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, 0);

  Te32.dwSize := sizeof(TTHREADENTRY32);

  if Thread32First(hSnapShot, Te32) then
  begin
    if te32.th32OwnerProcessID = proch then
      inc(procthreads);

    while Thread32Next(hSnapShot, Te32) do
    begin
      if te32.th32OwnerProcessID = proch then
        inc(procthreads);
    end;
  end;
  CloseHandle (hSnapShot);
  Result := procthreads;
end;

function ShellZip(zipfile, sourcefolder:string; filter: string = ''): boolean;
const
  emptyzip: array[0..23] of byte  = (80,75,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
var
  ms: TMemoryStream;
  shellobj: variant;
  srcfldr, destfldr: variant;
  shellfldritems: variant;
  numt: integer;
begin
  if not FileExists(zipfile) then
  begin
    // create a new empty ZIP file
    ms := TMemoryStream.Create;
    ms.WriteBuffer(emptyzip, sizeof(emptyzip));
    ms.SaveToFile(zipfile);
    ms.Free;
  end;

  numt := NumProcessThreads;

  shellobj := CreateOleObject('Shell.Application');

  srcfldr := shellobj.NameSpace(sourcefolder);
  destfldr := shellobj.NameSpace(zipfile);

  shellfldritems := srcfldr.Items;

  if (filter <> '') then
    shellfldritems.Filter(SHCONTF_INCLUDEHIDDEN or SHCONTF_NONFOLDERS or SHCONTF_FOLDERS,filter);

  destfldr.CopyHere(shellfldritems, 0);

  // wait till all shell threads are terminated
  while NumProcessThreads <> numt do
  begin
    sleep(100);
  end;
end;}

procedure TfrmDocs.ShellTreeView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept:=false;
end;

procedure TfrmDocs.ShellListView2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var Origem,Destino:File;
Buffer:Array[0..128] of byte;
Counter:integer;
a,b:string;
begin
    {$i-}
    a:=tShelllistview(Source).Folders[tCustomlistview(Source).itemindex].PathName;
    Assignfile(Origem,a);
    Reset(Origem,1);
    b:=extractfilename(a);
    b:=tShelllistview(Sender).RootFolder.PathName+'\'+b;
    Assignfile(Destino,b);
    ReWrite(Destino,1);
    while not eof(Origem) do
    begin
        blockread(Origem,Buffer,128,Counter);
        Blockwrite(dESTINO,bUFFER,128,cOUNTER);
    end;
    Closefile(Origem);
    Closefile(Destino);
    ShellListView2.Refresh;
    {$i+}
end;

procedure TfrmDocs.ShellListView2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept:=true;
end;

procedure TfrmDocs.ShellListView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var Origem,Destino:File;
Buffer:Array[0..128] of byte;
Counter:integer;
a,b:string;
begin
   dbDoc.edit;
    {$i-}
    a:=tShelllistview(Source).Folders[tCustomlistview(Source).itemindex].PathName;
    Assignfile(Origem,a);
    Reset(Origem,1);
    b:=extractfilename(a);
    b:=tShelllistview(Sender).Root+'\'+b;
    Assignfile(Destino,b);
    ReWrite(Destino,1);
    while not eof(Origem) do
    begin
        blockread(Origem,Buffer,128,Counter);
        Blockwrite(dESTINO,bUFFER,128,cOUNTER);
    end;
    Closefile(Origem);
    Closefile(Destino);
    {$i+}
end;

procedure TfrmDocs.ShellListView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept:=true;
end;

procedure TfrmDocs.ShellListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var a:string;
begin
    a:=tShelllistview(Sender).Folders[tCustomlistview(Sender).itemindex].PathName;
    if key=46 then
    begin
        dbDoc.edit;
        deletefile(a);
    end;
end;

procedure TfrmDocs.dbDocAfterScroll(DataSet: TDataSet);
var ms:tmemorystream;
    mq:tfilestream;
    i:integer;
begin
    if dbDocDocumento.IsNull then else
    begin
        ms:=tmemorystream.Create;
        dbDocDocumento.SaveToStream(ms);
        hkstreams1.ClearStreams;
        hkstreams1.LoadFromStream(ms);
        ms.Free;
        for i:=0 to hkstreams1.StreamList.Count-1 do
        begin
            mq:=TfileStream.Create(iDir+'\Anexos\'+iUsuario+'\'+hkstreams1.StreamList[i],fmCREATE or fmShareExclusive);
            hkstreams1.GetStream(hkstreams1.StreamList[i],mq);
            mq.Free;
        end;
    end;
end;

procedure TfrmDocs.dbDocBeforeClose(DataSet: TDataSet);
var dr:integer;
er:tsearchrec;
dirusu:string;
begin
    dirusu:=iDir+'\Anexos\'+iUsuario+'\';
    dr:=findfirst(dirusu+'*.*', faArchive, er);
    while dr=0 do
    begin
        deletefile(dirusu+er.Name);
        dr:=findnext(er);
    end;
    findclose(er);

end;

procedure TfrmDocs.dbDocBeforePost(DataSet: TDataSet);
var dr,i,j:integer;
dirusu,a:string;
ms:tFilestream;
mq:tmemorystream;
er:tsearchrec;
begin
    hkstreams1.clearstreams;
    dbDocDocumento.Clear;
    dirusu:=iDir+'\Anexos\'+iUsuario+'\';
    dr:=findfirst(dirusu+'*.*', faArchive, er);
    while dr=0 do
    begin
        if pos('$$$', er.Name)<>0 then
            deletefile(dirusu+er.Name)
        else
        begin
            try
                ms:=tfilestream.Create(dirusu+er.Name,fmopenread or fmShareDenyWrite);
                hkstreams1.AddStream(er.Name,ms);
            finally
                ms.free;
            end;
        end;
        dr:=findnext(er);
    end;
    try
        mq:=tmemorystream.Create;
        hkstreams1.SaveToStream(mq);
        dbDocDocumento.LoadFromStream(mq);
    finally
        mq.Free;
    end;
    hkstreams1.ClearStreams;
    findclose(er);
end;

procedure TfrmDocs.dbDocBeforeScroll(DataSet: TDataSet);
var dr:integer;
er:tsearchrec;
dirusu:string;
begin
    if dbDoc.Active=true then
    begin
        dirusu:=iDir+'\Anexos\'+iUsuario+'\';
        dr:=findfirst(dirusu+'*.*', faArchive, er);
        while dr=0 do
        begin
            deletefile(dirusu+er.Name);
            dr:=findnext(er);
        end;
        findclose(er);
    end;
end;

procedure TfrmDocs.FormShow(Sender: TObject);
begin
    iUsuario:='Andros';
end;

end.
