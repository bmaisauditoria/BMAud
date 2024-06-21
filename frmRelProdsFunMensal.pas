unit frmRelProdsFunMensal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Menus, DateUtils;

type
  TfrmRelProdFunMensal = class(TForm)
    cmdRelCodigo: TBitBtn;
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    pb1: TProgressBar;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rdgTipo: TRadioGroup;
    rdgCadastro: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
  private
    { Private declarations }
  public
     uteis:integer;
    { Public declarations }
  end;

var
  frmRelProdFunMensal: TfrmRelProdFunMensal;

implementation

uses frmPrincipal, dmRelatorios, frmLogs;

{$R *.DFM}

procedure TfrmRelProdFunMensal.FormShow(Sender: TObject);
var a,m,d:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntTostr(20);
end;

procedure TfrmRelProdFunMensal.cmdRelCodigoClick(Sender: TObject);
var iDataIni,iDataFim:TDate;
var iLinha:string;
var d,m,a:word;
begin

    m:=StrToInt(Edit1.Text);
    a:=StrToInt(Edit2.Text);
    uteis:=StrToInt(Edit3.Text);

    case m of
    2:d:=28+ord(a mod 4=0);
    1,3,5,7,8,10,12:d:=31;
    4,6,9,11:d:=30;
    end;

    iDataIni:=EncodeDate(a,m,1);
    iDataFim:=EncodeDate(a,m,d);

    case rdgTipo.ItemIndex of
    0:iLinha:='where (DataInclusao>=:iIni and DataInclusao<=:iFim) ';
    1:iLinha:='where (DataAlteracao>=:iIni and DataAlteracao<=:iFim)  ';
    2:iLinha:='where ((DataInclusao>=:iIni and DataInclusao<=:iFim) or '+
              '      (DataAlteracao>=:iIni and DataAlteracao<=:iFim))  ';
    end;

     with dmRelatorio do
     begin

        dbProdFun.Close;
        dbProdFun.SQL.Text:='Delete from relProdFun';
        dbProdFun.Execute;
        dbProdFun.SQL.Text:='Select * from relProdFun order by Usuario';
        dbProdFun.Open;

        if rdgCadastro.ItemIndex<>1 then
        begin
            dbAtendimentoHI.SQL.clear;
            dbAtendimentoHI.sql.Text:='Select * from AtendHI '+iLinha;

            dbAtendimentoHI.ParamByName('iIni').asdate:=iDataIni;
            dbAtendimentoHI.ParamByName('iFim').asdate:=iDataFim;
            dbAtendimentoHI.Open;
            dbAtendimentoHI.First;
            pb1.Min:=0;
            pb1.Max:=dbAtendimentoHI.RecordCount;
            pb1.Position:=0;

            while not dbAtendimentoHI.eof do
            begin
                if (dbAtendimentoHIDataAlteracao.value>=iDataIni) and
                   (dbAtendimentoHIDataAlteracao.value<=iDataFim) and
                   (rdgTipo.ItemIndex>0) then
                begin
                    if dbProdFun.Locate('Usuario',dbAtendimentoHIUsuario.value,[]) then
                       dbProdFun.Edit
                    else
                        dbProdFun.Insert;
                    dbProdFunUsuario.value:=dbAtendimentoHIUsuario.value;
                    DecodeDate(dbAtendimentoHIDataAlteracao.value,a,m,d);
                    case d of
                    1:dbProdFunD1.value:=dbProdFunD1.value+1;
                    2:dbProdFunD2.value:=dbProdFunD2.value+1;
                    3:dbProdFunD3.value:=dbProdFunD3.value+1;
                    4:dbProdFunD4.value:=dbProdFunD4.value+1;
                    5:dbProdFunD5.value:=dbProdFunD5.value+1;
                    6:dbProdFunD6.value:=dbProdFunD6.value+1;
                    7:dbProdFunD7.value:=dbProdFunD7.value+1;
                    8:dbProdFunD8.value:=dbProdFunD8.value+1;
                    9:dbProdFunD9.value:=dbProdFunD9.value+1;
                    10:dbProdFunD10.value:=dbProdFunD10.value+1;
                    11:dbProdFunD11.value:=dbProdFunD11.value+1;
                    12:dbProdFunD12.value:=dbProdFunD12.value+1;
                    13:dbProdFunD13.value:=dbProdFunD13.value+1;
                    14:dbProdFunD14.value:=dbProdFunD14.value+1;
                    15:dbProdFunD15.value:=dbProdFunD15.value+1;
                    16:dbProdFunD16.value:=dbProdFunD16.value+1;
                    17:dbProdFunD17.value:=dbProdFunD17.value+1;
                    18:dbProdFunD18.value:=dbProdFunD18.value+1;
                    19:dbProdFunD19.value:=dbProdFunD19.value+1;
                    20:dbProdFunD20.value:=dbProdFunD20.value+1;
                    21:dbProdFunD21.value:=dbProdFunD21.value+1;
                    22:dbProdFunD22.value:=dbProdFunD22.value+1;
                    23:dbProdFunD23.value:=dbProdFunD23.value+1;
                    24:dbProdFunD24.value:=dbProdFunD24.value+1;
                    25:dbProdFunD25.value:=dbProdFunD25.value+1;
                    26:dbProdFunD26.value:=dbProdFunD26.value+1;
                    27:dbProdFunD27.value:=dbProdFunD27.value+1;
                    28:dbProdFunD28.value:=dbProdFunD28.value+1;
                    29:dbProdFunD29.value:=dbProdFunD29.value+1;
                    30:dbProdFunD30.value:=dbProdFunD30.value+1;
                    31:dbProdFunD31.value:=dbProdFunD31.value+1;
                    end;
                    dbProdFun.Post;
                end;

                if (dbAtendimentoHIDataInclusao.value>=iDataIni) and
                   (dbAtendimentoHIDataInclusao.value<=iDataFim) and
                   (rdgTipo.ItemIndex<>1) then
                begin
                    if dbProdFun.Locate('Usuario',dbAtendimentoHIUsuarioI.value,[]) then
                        dbProdFun.Edit
                    else
                        dbProdFun.Insert;
                    dbProdFunUsuario.value:=dbAtendimentoHIUsuarioI.value;
                    DecodeDate(dbAtendimentoHIDataInclusao.value,a,m,d);
                    case d of
                    1:dbProdFunD1.value:=dbProdFunD1.value+1;
                    2:dbProdFunD2.value:=dbProdFunD2.value+1;
                    3:dbProdFunD3.value:=dbProdFunD3.value+1;
                    4:dbProdFunD4.value:=dbProdFunD4.value+1;
                    5:dbProdFunD5.value:=dbProdFunD5.value+1;
                    6:dbProdFunD6.value:=dbProdFunD6.value+1;
                    7:dbProdFunD7.value:=dbProdFunD7.value+1;
                    8:dbProdFunD8.value:=dbProdFunD8.value+1;
                    9:dbProdFunD9.value:=dbProdFunD9.value+1;
                    10:dbProdFunD10.value:=dbProdFunD10.value+1;
                    11:dbProdFunD11.value:=dbProdFunD11.value+1;
                    12:dbProdFunD12.value:=dbProdFunD12.value+1;
                    13:dbProdFunD13.value:=dbProdFunD13.value+1;
                    14:dbProdFunD14.value:=dbProdFunD14.value+1;
                    15:dbProdFunD15.value:=dbProdFunD15.value+1;
                    16:dbProdFunD16.value:=dbProdFunD16.value+1;
                    17:dbProdFunD17.value:=dbProdFunD17.value+1;
                    18:dbProdFunD18.value:=dbProdFunD18.value+1;
                    19:dbProdFunD19.value:=dbProdFunD19.value+1;
                    20:dbProdFunD20.value:=dbProdFunD20.value+1;
                    21:dbProdFunD21.value:=dbProdFunD21.value+1;
                    22:dbProdFunD22.value:=dbProdFunD22.value+1;
                    23:dbProdFunD23.value:=dbProdFunD23.value+1;
                    24:dbProdFunD24.value:=dbProdFunD24.value+1;
                    25:dbProdFunD25.value:=dbProdFunD25.value+1;
                    26:dbProdFunD26.value:=dbProdFunD26.value+1;
                    27:dbProdFunD27.value:=dbProdFunD27.value+1;
                    28:dbProdFunD28.value:=dbProdFunD28.value+1;
                    29:dbProdFunD29.value:=dbProdFunD29.value+1;
                    30:dbProdFunD30.value:=dbProdFunD30.value+1;
                    31:dbProdFunD31.value:=dbProdFunD31.value+1;
                    end;
                    dbProdFun.Post;
                end;
                dbAtendimentoHI.Next;
                pb1.Position:=pb1.Position+1;
            end;
        end;

        if rdgCadastro.ItemIndex>0 then
        begin
            dbAtendimentoPS.SQL.clear;
            dbAtendimentoPS.sql.Text:='Select * from AtendHPS '+iLinha;

            dbAtendimentoPS.ParamByName('iIni').value:=iDataIni;
            dbAtendimentoPS.ParamByName('iFim').value:=iDataFim;
            dbAtendimentoPS.Open;
            dbAtendimentoPS.First;
            pb1.Max:=dbAtendimentoPS.RecordCount;
            pb1.Position:=0;

            while not dbAtendimentoPS.eof do
            begin
                if (dbAtendimentoPSDataAlteracao.value>=iDataIni) and
                   (dbAtendimentoPSDataAlteracao.value<=iDataFim) and
                   (rdgTipo.ItemIndex>0) then
                begin
                    if dbProdFun.Locate('Usuario',dbAtendimentoPSUsuario.value,[]) then
                       dbProdFun.Edit
                    else
                        dbProdFun.Insert;
                    dbProdFunUsuario.value:=dbAtendimentoPSUsuario.value;
                    DecodeDate(dbAtendimentoPSDataAlteracao.value,a,m,d);
                    case d of
                    1:dbProdFunD1.value:=dbProdFunD1.value+1;
                    2:dbProdFunD2.value:=dbProdFunD2.value+1;
                    3:dbProdFunD3.value:=dbProdFunD3.value+1;
                    4:dbProdFunD4.value:=dbProdFunD4.value+1;
                    5:dbProdFunD5.value:=dbProdFunD5.value+1;
                    6:dbProdFunD6.value:=dbProdFunD6.value+1;
                    7:dbProdFunD7.value:=dbProdFunD7.value+1;
                    8:dbProdFunD8.value:=dbProdFunD8.value+1;
                    9:dbProdFunD9.value:=dbProdFunD9.value+1;
                    10:dbProdFunD10.value:=dbProdFunD10.value+1;
                    11:dbProdFunD11.value:=dbProdFunD11.value+1;
                    12:dbProdFunD12.value:=dbProdFunD12.value+1;
                    13:dbProdFunD13.value:=dbProdFunD13.value+1;
                    14:dbProdFunD14.value:=dbProdFunD14.value+1;
                    15:dbProdFunD15.value:=dbProdFunD15.value+1;
                    16:dbProdFunD16.value:=dbProdFunD16.value+1;
                    17:dbProdFunD17.value:=dbProdFunD17.value+1;
                    18:dbProdFunD18.value:=dbProdFunD18.value+1;
                    19:dbProdFunD19.value:=dbProdFunD19.value+1;
                    20:dbProdFunD20.value:=dbProdFunD20.value+1;
                    21:dbProdFunD21.value:=dbProdFunD21.value+1;
                    22:dbProdFunD22.value:=dbProdFunD22.value+1;
                    23:dbProdFunD23.value:=dbProdFunD23.value+1;
                    24:dbProdFunD24.value:=dbProdFunD24.value+1;
                    25:dbProdFunD25.value:=dbProdFunD25.value+1;
                    26:dbProdFunD26.value:=dbProdFunD26.value+1;
                    27:dbProdFunD27.value:=dbProdFunD27.value+1;
                    28:dbProdFunD28.value:=dbProdFunD28.value+1;
                    29:dbProdFunD29.value:=dbProdFunD29.value+1;
                    30:dbProdFunD30.value:=dbProdFunD30.value+1;
                    31:dbProdFunD31.value:=dbProdFunD31.value+1;
                    end;
                    dbProdFun.Post;
                end;

                if (dbAtendimentoPSDataInclusao.value>=iDataIni) and
                   (dbAtendimentoPSDataInclusao.value<=iDataFim) and
                   (rdgTipo.ItemIndex<>1) then
                begin
                    if dbProdFun.Locate('Usuario',dbAtendimentoPSUsuarioI.value,[]) then
                        dbProdFun.Edit
                    else
                        dbProdFun.Insert;
                    dbProdFunUsuario.value:=dbAtendimentoPSUsuarioI.value;
                    DecodeDate(dbAtendimentoPSDataInclusao.value,a,m,d);
                    case d of
                    1:dbProdFunD1.value:=dbProdFunD1.value+1;
                    2:dbProdFunD2.value:=dbProdFunD2.value+1;
                    3:dbProdFunD3.value:=dbProdFunD3.value+1;
                    4:dbProdFunD4.value:=dbProdFunD4.value+1;
                    5:dbProdFunD5.value:=dbProdFunD5.value+1;
                    6:dbProdFunD6.value:=dbProdFunD6.value+1;
                    7:dbProdFunD7.value:=dbProdFunD7.value+1;
                    8:dbProdFunD8.value:=dbProdFunD8.value+1;
                    9:dbProdFunD9.value:=dbProdFunD9.value+1;
                    10:dbProdFunD10.value:=dbProdFunD10.value+1;
                    11:dbProdFunD11.value:=dbProdFunD11.value+1;
                    12:dbProdFunD12.value:=dbProdFunD12.value+1;
                    13:dbProdFunD13.value:=dbProdFunD13.value+1;
                    14:dbProdFunD14.value:=dbProdFunD14.value+1;
                    15:dbProdFunD15.value:=dbProdFunD15.value+1;
                    16:dbProdFunD16.value:=dbProdFunD16.value+1;
                    17:dbProdFunD17.value:=dbProdFunD17.value+1;
                    18:dbProdFunD18.value:=dbProdFunD18.value+1;
                    19:dbProdFunD19.value:=dbProdFunD19.value+1;
                    20:dbProdFunD20.value:=dbProdFunD20.value+1;
                    21:dbProdFunD21.value:=dbProdFunD21.value+1;
                    22:dbProdFunD22.value:=dbProdFunD22.value+1;
                    23:dbProdFunD23.value:=dbProdFunD23.value+1;
                    24:dbProdFunD24.value:=dbProdFunD24.value+1;
                    25:dbProdFunD25.value:=dbProdFunD25.value+1;
                    26:dbProdFunD26.value:=dbProdFunD26.value+1;
                    27:dbProdFunD27.value:=dbProdFunD27.value+1;
                    28:dbProdFunD28.value:=dbProdFunD28.value+1;
                    29:dbProdFunD29.value:=dbProdFunD29.value+1;
                    30:dbProdFunD30.value:=dbProdFunD30.value+1;
                    31:dbProdFunD31.value:=dbProdFunD31.value+1;
                    end;
                    dbProdFun.Post;
                end;
                dbAtendimentoPS.Next;
                pb1.Position:=pb1.Position+1;
            end;
        end;

        dbProdFun.IndexFieldNames:='Usuario';
        dbProdFun.Refresh;
        dbProdFun.First;
        if dbProdFun.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;
        frmMenu.ExcelExport.ExcelVisible:=true;
        frmMenu.ExcelExport.Dataset:=dbProdFun;   //nao tem % 
        frmMenu.ExcelExport.ExportDataset;
        frmMenu.ExcelExport.Disconnect;
     end;
end;

end.
