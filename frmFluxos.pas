unit frmFluxos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  ExtCtrls, Grids, ComCtrls, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DB, StdCtrls, Spin, Buttons, DBCtrls,
  Menus, Aligrid;

type

  Tlinha = class(Tobject)
           LV,N1,N2,N3:Integer;
           rn:integer;
           vp,vr:currency;
	   expanded:Boolean;
	   constructor create;
	   destructor free;
	   end;

  TfrmFluxo = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    Image1: TImage;
    dbPlanoC: TMSTable;
    dsPlanoC: TDataSource;
    Image2: TImage;
    dsLancamentos: TDataSource;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    dbBanco: TMSTable;
    dsBanco: TDataSource;
    cmdN1: TSpeedButton;
    cmdN2: TSpeedButton;
    cmdN3: TSpeedButton;
    cmdResumo: TSpeedButton;
    cmdN4: TSpeedButton;
    cmdRelFluxo: TSpeedButton;
    cmdDiario: TSpeedButton;
    dbFilial: TMSTable;
    cmbFilial: TDBLookupComboBox;
    dsFilial: TDataSource;
    cmdDecimal: TSpeedButton;
    cmdInteiro: TSpeedButton;
    StringAlignGrid1: TStringAlignGrid;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoFilial: TSmallintField;
    dbBancoSaldoAtual: TCurrencyField;
    dbBancoStatus: TStringField;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbFilialEndereco: TStringField;
    dbFilialCidade: TStringField;
    dbFilialUF: TStringField;
    dbFilialCep: TStringField;
    dbFilialFone: TStringField;
    dbFilialCGC: TStringField;
    dbFilialIE: TStringField;
    dbFilialUltimaNF: TIntegerField;
    dbFilialCod1: TSmallintField;
    dbFilialCod2: TSmallintField;
    dbFilialCod3: TSmallintField;
    dbFilialUsuario: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    cmdReclass: TBitBtn;
    dbPlanoCDescricaoFC: TStringField;
    cmdSaldo: TSpeedButton;
    dbBanco1: TMSTable;
    dbBanco1BancoID: TAutoIncField;
    dbBanco1SaldoAtual: TCurrencyField;
    dbMovBanco: TMSTable;
    dbMovBancoMovBanco: TAutoIncField;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoFundo: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoCruzado: TBooleanField;
    dbMovBancoHistorico: TMemoField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoUsuario: TStringField;
    dbMovAplic: TMSTable;
    dbMovAplicBancoID: TIntegerField;
    dbMovAplicAplicacao: TIntegerField;
    dbMovAplicTipo: TStringField;
    dbMovAplicMovBanco: TIntegerField;
    dbMovAplicValor: TCurrencyField;
    dsMovBanco: TDataSource;
    dbBancoAplicacoes: TCurrencyField;
    dbBancoAgencia: TStringField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    dbMovAplicData: TDateTimeField;
    qryLancamento: TMSQuery;
    qryLancamentoFilial: TSmallintField;
    qryLancamentoLancamento: TIntegerField;
    qryLancamentoCliente: TIntegerField;
    qryLancamentoClienteDeb: TIntegerField;
    qryLancamentoDataEmissao: TDateTimeField;
    qryLancamentoDataVencto: TDateTimeField;
    qryLancamentoCod1: TSmallintField;
    qryLancamentoCod2: TSmallintField;
    qryLancamentoCod3: TSmallintField;
    qryLancamentoHistorico: TStringField;
    qryLancamentoDoc: TStringField;
    qryLancamentoValor: TCurrencyField;
    qryLancamentoTributo: TBooleanField;
    qryLancamentoBancoId: TSmallintField;
    qryLancamentoCheque: TStringField;
    qryLancamentoDataPagto: TDateTimeField;
    qryLancamentoValorPago: TCurrencyField;
    qryLancamentoValorBruto: TCurrencyField;
    qryLancamentoPago: TBooleanField;
    qryLancamentoSelecionado: TBooleanField;
    qryLancamentoStatus: TStringField;
    qryLancamentoPrevisao: TIntegerField;
    qryLancamentoMovBanco: TIntegerField;
    qryLancamentoNF: TIntegerField;
    qryLancamentoDataInclusao: TDateTimeField;
    qryLancamentoUsuarioI: TStringField;
    qryLancamentoDataAlteracao: TDateTimeField;
    qryLancamentoUsuario: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure stringaligngrid1DrawCell(Sender: TObject; Col, Row: Longint;
      Rect: TRect; State: TGridDrawState);
    procedure TabControl1Change(Sender: TObject);
    procedure stringaligngrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
    procedure cmdN3Click(Sender: TObject);
    procedure cmdN2Click(Sender: TObject);
    procedure cmdN1Click(Sender: TObject);
    procedure cmdResumoClick(Sender: TObject);
    procedure dbBancoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmdDiarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbFilialCloseUp(Sender: TObject);
    procedure dbMovBancoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmdDecimalClick(Sender: TObject);
    procedure cmdInteiroClick(Sender: TObject);
    procedure StringAlignGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkFilialClick(Sender: TObject);
    procedure cmdReclassClick(Sender: TObject);
    procedure cmdSaldoClick(Sender: TObject);

  private
  procedure listras;
  procedure DrawPlan;
    { Private declarations }
  public
  mk:string;
  Saldofin:array[1..12] of Currency;
  pl:^Tlinha;

  maxday:Word;
  mesatual:word;
  saldofinal:Currency;

  function collapse(L:word;ref:boolean):word;
  function Expand(L:word;ref:boolean):word;
  function saldoem(Dat:Tdate):Currency;
  function saldoaplic(Dat:Tdate;DatF:TDate):Currency;
  function strtocurrency(a:string):Currency;

    { Public declarations }
  end;

var
  frmFluxo: TfrmFluxo;

implementation

uses frmPrincipal, frmRelFluxoCaixas, frmReclassificacaos, frmMovsBanco;
{$R *.DFM}

constructor tlinha.create;
begin
    inherited create;
    expanded:=true;
end;

destructor tlinha.free;
    begin
    free;
    end;

function TfrmFluxo.saldoem(Dat:Tdate):Currency;
var p:Currency;
    sd,md:currency;
    dtf:tdate;
    a,m,d:word;
    moe:string;
    q3,a3,m3,a2,m2,d2,a1,m1,d1:word;
    dx:tdate;
begin
    dbBanco.first;
    p:=0;
    while not dbBanco.eof do
    begin
        sd:=dbBancosaldoAtual.ascurrency;
        p:=p+sd;
        dbBanco.next;
    end;
    dtf:=encodedate(3300,12,31);
    dbMovBanco.last;
    while not dbMovBanco.bof do
    begin
        if (dbMovBancoDataEntrada.value>=dat) and (dbMovBancoDataEntrada.value<=dtf) then
        begin
            decodedate(dbMovBancoDataEntrada.value,a,m,d);
            dx:=encodedate(a,m,d);
            if dx>=dat then
            begin
                sd:=dbMovBancovalor.ascurrency;
                moe:='Real';
                if pos(dbMovBancoTipo.asstring,'RCS')<>0 then
                    p:=p-sd
                else
                    if pos(dbMovBancoTipo.asstring,'ADXTP')<>0 then
                        p:=p+sd
                    else
                        p:=p;
            end;
        end;
        dbMovBanco.prior;
    end;
    p:=0;
    result:=p;
end;

function TfrmFluxo.saldoaplic(Dat:Tdate;datf:TDate):Currency;
var p:Currency;
begin
    dbBanco.first;
    p:=0;
    while not dbBanco.eof do
    begin
        dbMovAplic.Last;
        while not dbMovAplic.Bof do
        begin
            if (dbMovAplicData.value>=dat) and
               (dbMovAplicData.value<=datf) and
               (dbMovAplicMovBanco.value<>0)then
            begin
                if dbMovAplicTipo.value='A' then
                    p:=p+dbMovAplicValor.value;
                if dbMovAplicTipo.value='R' then
                    p:=p-dbMovAplicValor.value;
            end;            
            dbMovAplic.Prior;
        end;
        dbBanco.next;
    end;
    result:=p;
end;


function TfrmFluxo.collapse(L:word;ref:boolean):word;
var q,i,j:word;
   sai:boolean;
   vp,vr,pend,valor,tot:Currency;
   vl:array[1..33] of currency;
   n:integer;
begin
    with stringaligngrid1 do
    begin
        i:=l+1;
        fillchar(vl, sizeof(vl), 0);
        pend:=0;
        vp:=0;
        vr:=0;
        cells[maxday+3,l]:='';
        while (objects[1,i]<>nil) and
            (Tlinha(objects[1,i]).lv>Tlinha(objects[1,l]).lv) do
        begin
            rowheights[i]:=0;
            Tlinha(objects[1,i]).expanded:=false;
            if Tlinha(objects[1,i]).lv=4 then
            begin
			    tot:=0;
				for j:=1 to maxday do
                begin
                    vl[j]:=vl[j]+strtocurrency(cells[j+1,i]);
                    tot:=tot+strtocurrency(cells[j+1,i]);
                end;
				if tot<>0 then
                begin
                    aligncell[maxday+2,i]:=tmyalign(0);
                    cells[maxday+2,i]:=FORMAT(mk,[TOT]);
                end;
                vr:=vr+Tlinha(objects[1,i]).vr;
                vp:=vp+Tlinha(objects[1,i]).vp;
                pend:=pend+strtocurrency(trim(cells[maxday+3,i]));
                n:=Tlinha(objects[1,i]).n1;
            end;
            inc(i);
        end;
        tot:=0;
        for j:=1 to maxday do
	    begin
            tot:=tot+vl[j];
            if vl[j]<>0 then
            begin
                aligncell[j+1,l]:=tmyalign(0);
                cells[j+1,l]:=FORMAT(mk,[VL[J]]);
            end;
        end;
        if tot<>0 then
        begin
            aligncell[maxday+2,l]:=tmyalign(0);
            cells[maxday+2,l]:=FORMAT(mk,[TOT]);
        end;
        if pend<>0 then
        begin
            aligncell[maxday+3,l]:=tmyalign(0);
            cells[maxday+3,l]:=FORMAT(mk,[pend]);
        end;
        if (vr+pend)<>0 then
        begin
            aligncell[maxday+4,l]:=tmyalign(0);
            cells[maxday+4,l]:=FORMAT('%n',[vr*100/(vr+pend)])+'%';
        end;

        Tlinha(objects[1,l]).expanded:=false;
        result:=i;
    end;
end;

procedure TfrmFluxo.listras;
var t,l:integer;
begin
    t:=0;
    for l:=1 to stringaligngrid1.rowcount-1 do
        if stringaligngrid1.objects[1,l]<>nil then
        begin
            if stringaligngrid1.rowheights[l]>0 then
            begin
                t:=t+1;
                Tlinha(stringaligngrid1.objects[1,l]).rn:=t;
            end
            else
                Tlinha(stringaligngrid1.objects[1,l]).rn:=0;
            if (Tlinha(stringaligngrid1.objects[1,l]).rn mod 2)=0 then
                stringaligngrid1.ColorRow[l]:=clMoneyGreen
            else
                stringaligngrid1.ColorRow[l]:=clWhite;
        end;
end;

function TfrmFluxo.strtocurrency(a:string):Currency;
var
    g:Currency;
    i:integer;
    b:string;
    begin
    for i:=1 to length(a) do
        if a[i] in ['0'..'9','-',decimalseparator] then
            b:=b+a[i];
    if b='' then
        b:='0';
    texttofloat(pchar(b),g,fvCurrency);
    if (length(trim(a))>0) and (trim(a)[1]='(') then
        g:=-g;
    result:=g;
end;

function TfrmFluxo.Expand(L:word;ref:Boolean):word;
var t,m,j,i:word;
   sai:boolean;
   tot:Currency;
   vp,vr,pend,valor:Currency;
   vl:array[1..33] of currency;
   n:integer;
begin
    with stringaligngrid1 do
    begin
        i:=l+1;
        while (objects[1,i]<>nil) and (Tlinha(objects[1,i]).lv>Tlinha(objects[1,l]).lv) do
        begin
            if Tlinha(objects[1,i]).lv-1=Tlinha(objects[1,l]).lv then
            begin
                rowheights[i]:=defaultRowheight;
                Tlinha(objects[1,i]).expanded:=false;
            end;
            if Tlinha(objects[1,i]).lv<>4 then
            begin
                t:=i+1;
                fillchar(vl, sizeof(vl), 0);
                pend:=0;
                vp:=0;
                vr:=0;
                {cells[maxday+3,t]:='';}
                tot:=0;
                while (objects[1,t]<>nil) and (Tlinha(objects[1,t]).lv>Tlinha(objects[1,i]).lv) do
                begin
                    if Tlinha(objects[1,t]).lv=4 then
                    begin
				        tot:=0;
        				for j:=1 to maxday do
                        begin
                            vl[j]:=vl[j]+strtocurrency(cells[j+1,t]);
                            tot:=tot+strtocurrency(cells[j+1,t]);
                        end;
				        if tot<>0 then
                        begin
                            aligncell[maxday+2,t]:=tmyalign(0);
                            cells[maxday+2,t]:=FORMAT(mk,[TOT]);
                        end;
                        vp:=vp+Tlinha(objects[1,t]).vp;
                        vr:=vr+Tlinha(objects[1,t]).vr;
                        pend:=pend+strtocurrency(trim(cells[maxday+3,t]));
                        n:=Tlinha(objects[1,i]).n1;
                    end;
                    t:=t+1;
                end;
                tot:=0;
                for j:=1 to maxday do
    		    begin
                    tot:=tot+vl[j];
                    if vl[j]<>0 then
                    begin
                        aligncell[j+1,i]:=tmyalign(0);
                        cells[j+1,i]:=FORMAT(mk,[VL[J]]);
                    end;
                end;
                if tot<>0 then
                begin
                    aligncell[maxday+2,i]:=tmyalign(0);
                    cells[maxday+2,i]:=FORMAT(mk,[TOT]);
               end;
                if pend<>0 then
                begin
                    aligncell[maxday+3,i]:=tmyalign(0);
                    cells[maxday+3,i]:=FORMAT(mk,[pend]);
                end;
                if (vr+pend)<>0  then
                begin
                    aligncell[maxday+4,i]:=tmyalign(0);
                    cells[maxday+4,i]:=FORMAT('%n',[vr*100/(vr+pend)])+'%';
                end;

            end;
            inc(i);
        end;
        Tlinha(objects[1,l]).expanded:=true;
        if Tlinha(objects[1,l]).lv<>4 then
            for j:=1 to maxday+4 do
                cells[j+1,l]:='';
        result:=i;
    end;
end;

procedure TfrmFluxo.DrawPlan;
type
resniv = record
	 descr:string[40];
	 vle:Currency;
	 end;
var mxday,nvv,r,m,k,n,i,j,iFilial:Integer;
    rt:Trect;
    saia,exp:BOOLEAN;
    dt:Tdatetime;
    a:String;
    mov,md,sd,vi,vo,ve,vs,vk,aplic:Currency;
totf :array[0..31,1..10] of currency;
    niv1:array[1..10] of resniv;
data:TDateTime;
mes,ano,diar,dia,year,month,day:word;
aa2,mm2,dd2:word;
moe:string;
begin
    for i:=1 to 12 do
        saldofin[i]:=0;
    screen.Cursor:=crHourglass;
    mxday:=maxday;
    nvv:=0;
    if cmbFilial.KeyValue=0 then
        iFilial:=0
    else
       iFilial:=dbFilialFilial.value;
    fillchar(totf, sizeof(totf),0);
    pl:=nil;

    stringaligngrid1.colcount:=mxday+5;
    for i:=1 to stringaligngrid1.rowcount do
        with stringaligngrid1 do
        begin
            if objects[1,i-1]<>nil then
            begin
                objects[1,i-1].free;
                objects[1,i-1]:=nil;
            end;
            cells[1,i-1]:='';
            rowheights[i-1]:=defaultRowheight;
        end;
        stringaligngrid1.cols[1].clear;
        stringaligngrid1.colwidths[0]:=40;
        stringaligngrid1.cols[mxday+2].clear;
        stringaligngrid1.cols[mxday+3].clear;
        stringaligngrid1.cols[mxday+4].clear;
        for j:=1 to mxday do
            with stringaligngrid1 do
            begin
                cols[j+1].clear;
                cellfont[j+1,0].name:='Arial';
                cellfont[j+1,0].size:=11;
                cellfont[j+1,0].style:=[fsbold];
                cellfont[j+1,0].color:=clblack;
                aligncell[j+1,0]:=tmyalign(2);
                cells[j+1,0]:=inttostr(j);
            end;
            with stringaligngrid1 do
            begin
                cellfont[j+1,0].name:='Arial';
                cellfont[j+1,0].size:=9;
                cellfont[j+1,0].style:=[];
                cellfont[j+1,0].color:=clblack;
                aligncell[j+1,0]:=tmyalign(0);
                colwidths[j+1]:=defaultcolwidth+20;
                cells[j+1,0]:='Totais';
                cellfont[j+2,0].name:='Arial';
                cellfont[j+2,0].size:=9;
                cellfont[j+2,0].style:=[];
                cellfont[j+2,0].color:=clblack;
                aligncell[j+2,0]:=tmyalign(0);
                colwidths[j+2]:=defaultcolwidth+20;
                cells[j+2,0]:='Pendências';
                cellfont[j+3,0].name:='Arial';
                cellfont[j+3,0].size:=9;
                cellfont[j+3,0].style:=[];
                cellfont[j+3,0].color:=clblack;
                aligncell[j+3,0]:=tmyalign(0);
                colwidths[j+3]:=defaultcolwidth+20;
                cells[j+3,0]:='RealxPrev';

                cellfont[1,0].name:='Arial';
                cellfont[1,0].size:=12;
                cellfont[1,0].style:=[fsbold];
                cellfont[1,0].color:=clblack;
                aligncell[1,0]:=tmyalign(2);
                cells[1,0]:='Plano de Contas';
                i:=1;
                dbPlanoC.first;
                while not dbPlanoC.eof do
                begin
                    n:=ord(dbPlanoCCod1.asinteger<>0)+ord(dbPlanoCCod2.asinteger<>0)+ord(dbPlanoCCod3.asinteger<>0);
                    case n of
                    1:begin
                      inc(i);
                      cells[1,i]:=inttostr(dbPlanoCCod1.asinteger)+'. '+dbPlanoCDescricaoFC.asstring;
                      CellFont[1,i].style:=[fsbold];
                      new(pl);
                      pl^:=tlinha.create;
                      pl^.lv:=n;
                      pl^.n1:=dbPlanoCCod1.asinteger;
                      pl^.n2:=dbPlanoCCod2.asinteger;
                      pl^.n3:=dbPlanoCCod3.asinteger;
                      niv1[pl^.n1].descr:=dbPlanoCDescricaoFC.asstring;
                      inc(nvv);
                      niv1[nvv].vle:=0;
                      objects[1,i]:=pl^;
                    end;
                    2:begin
                        cells[1,i]:=' '+inttostr(dbPlanoCCod1.asinteger)+'.'+inttostr(dbPlanoCCod2.asinteger)+'. '+dbPlanoCDescricaoFC.asstring;
                        CellFont[1,i].style:=[fsunderline];
                        new(pl);
                        pl^:=tlinha.create;
                        pl^.lv:=n;
                        pl^.n1:=dbPlanoCCod1.asinteger;
                        pl^.n2:=dbPlanoCCod2.asinteger;
                        pl^.n3:=dbPlanoCCod3.asinteger;
                        objects[1,i]:=pl^;
                    end;
                    3:begin
                        cells[1,i]:='   '+inttostr(dbPlanoCCod1.asinteger)+'.'+inttostr(dbPlanoCCod2.asinteger)+'.'+inttostr(dbPlanoCCod3.asinteger)+'. '+dbPlanoCDescricaoFC.asstring;
                        CellFont[1,i].style:=[];
                        new(pl);
                        pl^:=tlinha.create;
                        pl^.lv:=n;
                        pl^.n1:=dbPlanoCCod1.asinteger;
                        pl^.n2:=dbPlanoCCod2.asinteger;
                        pl^.n3:=dbPlanoCCod3.asinteger;
                        pl^.vp:=0;
                        pl^.vr:=0;
                        objects[1,i]:=pl^;
                        decodedate(date,year,month,dia);
                        year:=cmbAno.value;
                        month:=cmbMes.itemindex+1;
                        day:=1;
                        qryLancamento.Close;
                        qryLancamento.sql.text:='Select * from Lancamentos '+
                                                 'where Filial=:iFilial and '+
                                                 '      Cod1=:iCod1 and Cod2=:iCod2 and Cod3=:iCod3 and '+
                                                 '      DataVencto>=:Ini and '+
                                                 '      DataVencto<=:Fim '+
                                                 'order by Filial,Cod1,Cod2,Cod3,DataVencto ';
                       qryLancamento.ParamByName('iFilial').asinteger:=iFilial;
                       qryLancamento.ParamByName('iCod1').asinteger:=dbPlanoCCod1.value;
                       qryLancamento.ParamByName('iCod2').asinteger:=dbPlanoCCod2.value;
                       qryLancamento.ParamByName('iCod3').asinteger:=dbPlanoCCod3.value;
                       qryLancamento.ParamByName('Ini').asdate:=encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,1);
                       qryLancamento.ParamByName('Fim').asdate:=encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,mxday);
                       qryLancamento.Open;

                        qryLancamento.first;
                        k:=i+1;
                        r:=i;
                        while not qryLancamento.eof do
                        begin
                            if not dbBanco.Locate('BancoID',qryLancamentoBancoId.value,[]) then
                            begin
                                qryLancamento.Next;
                                Continue;
                            end;
                            if not qryLancamentoDataPagto.isnull then
                                dt:=qryLancamentoDatapagto.asdatetime
                            else
                                dt:=qryLancamentoDataVencto.asdatetime;
                            decodedate(dt,year,month,day);
                            if month-1=tabcontrol1.tabindex then
                            begin
                                m:=k;
                                saia:=false;
                                while (cells[1,m]<>'') and not saia do
                                begin
                                    if cells[1,m]='      ['+IntToStr(qryLancamentoLancamento.value)+']'+qryLancamentoHistorico.asstring then
                                        saia:=true
                                    else inc(m);
                                end;
                                i:=m;
                                if i>r then r:=i;
                                CellFont[1,i].style:=[]; //fsitalic
                                cells[1,i]:='      ['+IntToStr(qryLancamentoLancamento.value)+']'+qryLancamentoHistorico.asstring;
                                if objects[1,i]<>nil then
                                    pl^:=tlinha(objects[1,i])
                                else
                                begin
                                    new(pl);
                                    pl^:=tlinha.create;
                                    pl^.lv:=n+1;
                                    pl^.n1:=dbPlanoCCod1.asinteger;
                                    pl^.n2:=dbPlanoCCod2.asinteger;
                                    pl^.n3:=dbPlanoCCod3.asinteger;
                                    pl^.vp:=0;
                                    pl^.vr:=0;
                                    objects[1,i]:=pl^;
                                end;
                                if not qryLancamentoDataPagto.isnull then
                                begin
                                    sd:=qryLancamentovalorpago.ascurrency;
                                    moe:='REAL';
                                    a:=format(mk,[STRTOCURRENCY(cells[1+day,i])+sd]);
                                    totf[day,pl^.n1]:=totf[day,pl^.n1]+sd;
                                    pl^.vr:=pl^.vr+sd;
                                    aligncell[day+1,i]:=tmyalign(0);
                                    cells[1+day,i]:=a;
                                end
                                else
                                begin
                                    sd:=qryLancamentovalor.ascurrency;
                                    moe:='REAL';
                                end;

{                                if dt>=date then   //valores a vencer
                                begin
                                    a:=format(mk,[STRTOCURRENCY(cells[1+day,i])+sd]);
                                    totf[day,pl^.n1]:=totf[day,pl^.n1]+sd;
                                    pl^.vp:=pl^.vp+sd;
                                    aligncell[day+1,i]:=tmyalign(0);
                                    cells[1+day,i]:=a;
                                end;}
                            end;
                            qryLancamento.next;
                        end;
                        qryLancamento.Close;
                        qryLancamento.sql.text:='Select * from Lancamentos '+
                                                 'where Filial=:iFilial and '+
                                                 '      Cod1=:iCod1 and Cod2=:iCod2 and Cod3=:iCod3 and '+
                                                 '      DataPagto>=:Ini and '+
                                                 '      DataPagto<=:Fim '+
                                                 'order by Filial,Cod1,Cod2,Cod3,DataPagto ';
                       qryLancamento.ParamByName('iFilial').asinteger:=iFilial;
                       qryLancamento.ParamByName('iCod1').asinteger:=dbPlanoCCod1.value;
                       qryLancamento.ParamByName('iCod2').asinteger:=dbPlanoCCod2.value;
                       qryLancamento.ParamByName('iCod3').asinteger:=dbPlanoCCod3.value;
                       qryLancamento.ParamByName('Ini').asdate:=encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,1);
                       qryLancamento.ParamByName('Fim').asdate:=encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,mxday);
                       qryLancamento.Open;
                        while not qryLancamento.eof do
                        begin
                            if not dbBanco.Locate('BancoID',qryLancamentoBancoId.value,[]) then
                            begin
                                qryLancamento.Next;
                                Continue;
                            end;
                            if (qryLancamentoDataVencto.asdatetime<encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,1)) or
                               (qryLancamentoDataVencto.asdatetime>encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,mxday)) then
                            begin
                                dt:=qryLancamentoDatapagto.asdatetime;
                                decodedate(dt,year,month,day);
                                m:=k;
                                saia:=false;
                                while (cells[1,m]<>'') and not saia do
                                begin
                                    if cells[1,m]='      ['+IntToStr(qryLancamentoLancamento.value)+']'+qryLancamentoHistorico.asstring then
                                        saia:=true
                                    else inc(m);
                                end;
                                i:=m;
                                if i>r then
                                    r:=i;
                                cells[1,i]:='      ['+IntToStr(qryLancamentoLancamento.value)+']'+qryLancamentoHistorico.asstring;
                                if objects[1,i]<>nil then
                                begin
                                    pl^:=tlinha(objects[1,i]);
//                                  pl^.vp:=pl^.vp+qryLancamentoValor.ascurrency;
//                                  pl^.vr:=pl^.vr+qryLancamentoValorpago.ascurrency;
                                    a:=format(mk,[STRTOCURRENCY(cells[1+day,i])]);
                                    totf[day,pl^.n1]:=totf[day,pl^.n1];
                                    aligncell[day+1,i]:=tmyalign(0);
                                    cells[1+day,i]:=a;
                                end
                                else
                                begin
                                    new(pl);
                                    pl^:=tlinha.create;
                                    pl^.lv:=n+1;
                                    pl^.n1:=dbPlanoCCod1.asinteger;
                                    pl^.n2:=dbPlanoCCod2.asinteger;
                                    pl^.n3:=dbPlanoCCod3.asinteger;
                                    pl^.expanded:=true;
                                    pl^.vp:=0;
                                    pl^.vr:=0;
                                    objects[1,i]:=pl^;
                                    pl^.vp:=pl^.vp+qryLancamentoValor.ascurrency;
                                    pl^.vr:=pl^.vr+qryLancamentoValorpago.ascurrency;
                                    a:=format(mk,[STRTOCURRENCY(cells[1+day,i])+qryLancamentoValorpago.ascurrency]);
                                    totf[day,pl^.n1]:=totf[day,pl^.n1]+qryLancamentoValorPago.ascurrency;
                                    aligncell[day+1,i]:=tmyalign(0);
                                    cells[1+day,i]:=a;
                                end;
                            end;
                            qryLancamento.next;
                        end;

                        qryLancamento.Close;
                        qryLancamento.sql.text:='Select * from Lancamentos '+
                                                 'where Filial=:iFilial and '+
                                                 '      Cod1=:iCod1 and Cod2=:iCod2 and Cod3=:iCod3  '+
                                                 'order by Filial,Cod1,Cod2,Cod3,DataPagto ';
                       qryLancamento.ParamByName('iFilial').asinteger:=iFilial;
                       qryLancamento.ParamByName('iCod1').asinteger:=dbPlanoCCod1.value;
                       qryLancamento.ParamByName('iCod2').asinteger:=dbPlanoCCod2.value;
                       qryLancamento.ParamByName('iCod3').asinteger:=dbPlanoCCod3.value;
                       qryLancamento.Open;
                        qryLancamento.first;
                        while not qryLancamento.eof do
                        begin
                            dt:=qryLancamentoDataVencto.asdatetime;
                            decodedate(dt,aa2,mm2,dd2);
                            data:=encodedate(year+ord(tabcontrol1.tabindex+1<month),tabcontrol1.tabindex+1,1);
                            decodedate(data,ano,mes,diar);
                            if ((dt<date) and (year*12+mes>=aa2*12+mm2)) then
                            begin
                                m:=k;
                                saia:=false;
                                while (cells[1,m]<>'') and not saia do
                                begin
                                    if cells[1,m]='      ['+IntToStr(qryLancamentoLancamento.value)+']'+qryLancamentoHistorico.asstring then
                                        saia:=true
                                    else inc(m);
                                end;
                                i:=m;
                                if i>r then
                                    r:=i;
                                    cells[1,i]:='      ['+IntToStr(qryLancamentoLancamento.value)+']'+qryLancamentoHistorico.asstring;
                                if objects[1,i]<>nil then
                                    pl^:=tlinha(objects[1,i])
                                else
                                begin
                                    new(pl);
                                    pl^:=tlinha.create;
                                    pl^.lv:=n+1;
                                    pl^.n1:=dbPlanoCCod1.asinteger;
                                    pl^.n2:=dbPlanoCCod2.asinteger;
                                    pl^.n3:=dbPlanoCCod3.asinteger;
                                    pl^.expanded:=true;
                                    objects[1,i]:=pl^;
                                end;
                                totf[0,pl^.n1]:=totf[0,pl^.n1]+qryLancamentoValor.ascurrency;
                                pl^.vp:=pl^.vp+qryLancamentoValor.ascurrency;
                                a:=format(mk,[STRTOCURRENCY(cells[3+mxday,i])+qryLancamentoValor.ascurrency]);
                                aligncell[maxday+3,i]:=tmyalign(0);
                                cells[3+mxday,i]:=a;
                            end;
                            qryLancamento.next;
                        end;
                        i:=r;
                    end;
                    end;
                    inc(i);
                    rowcount:=i+2;
                    dbPlanoC.next;
                end;
                inc(i);
                rowcount:=i+NVV+3;
//                CellFont[1,i].style:=[fsbold];
//                cells[1,i]:='(*) Saldos Inicial';
                for k:=1 to nvv do
                begin
                    CellFont[1,i+k].style:=[fsbold];
                    cells[1,i+k]:=niv1[k].descr;
                end;


                CellFont[1,i+nvv+2].style:=[fsbold];
                cells[1,i+NVV+1]:='(-) Aplicações';

                CellFont[1,i+nvv+1].style:=[fsbold];
                cells[1,i+NVV+2]:='(=) Saldo Final';


                if saldofin[tabcontrol1.tabindex+12*ord(tabcontrol1.tabindex=0)]<>0 then
                    vk:=saldofin[tabcontrol1.tabindex+12*ord(tabcontrol1.tabindex=0)]
                else
                    vk:=saldoem(encodedate(cmbAno.value,tabcontrol1.tabindex+1,1));
                for j:=1 to mxday do
                begin
                    aligncell[j+1,i]:=tmyalign(0);
                    cells[j+1,i]:=format(mk,[vk]);
                    for k:=1 to nvv do
                    begin
                        if totf[j,k]<>0 then
                        begin
                            aligncell[j+1,i+k]:=tmyalign(0);
		                    cells[j+1,i+k]:=format(mk,[totf[j,k]]);
		                    niv1[k].vle:=niv1[k].vle+totf[j,k];
		                    if pos('(-)',niv1[k].descr)<>0 then
                                vk:=vk-totf[j,k]
                            else vk:=vk+totf[j,k];
		                end;
                    end;
                    saldofinal:=vk;
                    aligncell[j+1,i+nvv+1]:=tmyalign(0);
                    cells[j+1,i+nvv+1]:=format(mk,[saldofinal]);
                    vk:=saldofinal;
                end;
                saldofin[tabcontrol1.tabindex+1]:=vk;
                aligncell[j+1,i]:=tmyalign(0);
                if saldofin[tabcontrol1.tabindex+12*ord(tabcontrol1.tabindex=0)]<>0 then
                    vk:=saldofin[tabcontrol1.tabindex+12*ord(tabcontrol1.tabindex=0)]
                else
                    vk:=saldoem(encodedate(cmbAno.value,tabcontrol1.tabindex+1,1));
//                cells[j+1,i]:=format(mk,[vk]);    //  saldo inicial
                mov:=vk;
                vk:=0;
                for k:=1 to nvv do
                begin
                    if niv1[k].VLE<>0 then
                    begin
                        aligncell[j+1,i+k]:=tmyalign(0);
		                cells[j+1,i+K]:=format(mk,[NIV1[K].vle]);
		            end;
                    if totf[0,k]<>0 then
                    begin
                        aligncell[j+2,i+k]:=tmyalign(0);
                        cells[j+2,i+K]:=format(mk,[totf[0,k]]);
		                vk:=vk+totf[0,k];
		            end;
                end;

                aplic:=saldoaplic(encodedate(cmbAno.value,tabcontrol1.tabindex+1,1),encodedate(cmbAno.value,tabcontrol1.tabindex+1,mxday));

                aligncell[j+1,i+nvv+1]:=tmyalign(0);
                cells[j+1,i+NVV+1]:=format(mk,[aplic]); //saldofinal

                aligncell[j+2,i+nvv+1]:=tmyalign(0);
                cells[j+2,i+NVV+1]:=format(mk,[vk]);

                aligncell[j+1,i+nvv+2]:=tmyalign(0);
                cells[j+1,i+NVV+2]:=format(mk,[saldofinal-aplic]);

                k:=ord(cmdN1.down)+2*ord(cmdN2.down)+3*ord(cmdN3.down);
                j:=1;
                while j<=i do
                begin
                    if (objects[1,j]<>nil) and  (cells[1,j]<>'') then
                    begin
                        m:=expand(j,false);
                        if Tlinha(objects[1,j]).lv=k then
                            j:=collapse(j,false)
                        else inc(j);
                    end
                    else inc(j);
                end;
            end;
            listras;
            screen.Cursor:=crDefault;
end;

procedure TfrmFluxo.FormCreate(Sender: TObject);
var a,m,d:word;
   vl:currency;
begin
    mk:='%m';
    decodedate(date,a,m,d);
    dbFilial.open;
    dbBanco.open;
    dbBanco1.Open; //para atualizacao de todos saldo bancarios
    dbMovBanco.open;
    dbMovAplic.Open;
    qryLancamento.open;
    dbPlanoC.open;
    cmbFilial.keyvalue:=dbFilialFilial.value;

    mesatual:=m;
    d:=1;
    case m of
    2:maxday:=28+ord(a mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    vl:=saldoem(encodedate(a,m,1));
    cmbMes.itemindex:=0;
    tabcontrol1.tabindex:=m-1;
    cmbAno.value:=a;
end;

procedure TfrmFluxo.FormDestroy(Sender: TObject);
var i:integer;
begin
    for i:=1 to stringaligngrid1.rowcount do
        with stringaligngrid1 do
        begin
            if objects[1,i-1]<>nil then
            begin
                objects[1,i-1].free;
                objects[1,i-1]:=nil;
            end;
        end;
    qryLancamento.filtered:=false;
    qryLancamento.close;
    dbPlanoC.close;
    dbBanco.close;
    dbBanco1.close;
    dbMovBanco.close;
    dbMovAplic.Close;
    dbFilial.close;
end;

procedure TfrmFluxo.stringaligngrid1DrawCell(Sender: TObject; Col, Row: Longint;
  Rect: TRect; State: TGridDrawState);
var l:Integer;
  exp:Boolean;
begin
    if (col=0) and
        (tstringaligngrid(sender).objects[1,row]<>nil) then
    begin
	    l:=Tlinha(tstringaligngrid(sender).objects[1,row]).lv;
	    if l<=3 then
	    begin
	        exp:=Tlinha(tstringaligngrid(sender).objects[1,row]).expanded;
	        if exp then
                tstringaligngrid(sender).canvas.draw(rect.left+4*(l-1)+(rect.right-rect.left-image2.width) div 2,
					      rect.top+(rect.bottom-rect.top-image2.height) div 2,image2.picture.bitmap)
            else
                tstringaligngrid(sender).canvas.draw(rect.left+4*(l-1)+(rect.right-rect.left-image2.width) div 2,
                          rect.top+(rect.bottom-rect.top-image2.height) div 2,image1.picture.bitmap);
        end;
    end;
end;

procedure TfrmFluxo.TabControl1Change(Sender: TObject);
var a,m,d:Word;
    vl:currency;
begin
    a:=cmbAno.value;
    m:=cmbMes.itemindex+1;
    m:=tabcontrol1.TabIndex+1;
    mesatual:=m;
    d:=1;
    if m>tabcontrol1.tabindex+1 then
        a:=a+1;
    case tabcontrol1.tabindex+1 of
    2:maxday:=28+ord(a mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    vl:=saldoem(encodedate(a,m,1));
    drawplan;
    cmdResumoclick(sender);
end;

procedure TfrmFluxo.stringaligngrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i,j:longint;
    t:word;
begin
    stringaligngrid1.Mousetocell(x,y,i,j);
    if (button=mbleft) and (i=0) and (stringaligngrid1.objects[i+1,j]<>nil) then
    begin
        if tlinha(stringaligngrid1.objects[i+1,j]).expanded then
            t:=collapse(j,true)
        else t:=expand(j,true);
        listras;
    end;
end;

procedure TfrmFluxo.cmbMesChange(Sender: TObject);
var i:Integer;
    vl:Currency;
begin
    for i:=0 to tabcontrol1.tabs.count -1 do
    begin
        if i<cmbMes.itemindex then
            tabcontrol1.tabs[i]:=cmbMes.items[i]+'/'+inttostr(cmbAno.value+1)
        else tabcontrol1.tabs[i]:=cmbMes.items[i]+'/'+inttostr(cmbAno.value);
    end;
    vl:=saldoem(encodedate(word(cmbAno.value),word(cmbMes.itemindex+1),1));
    TabControl1Change(Sender);
end;

procedure TfrmFluxo.cmbAnoChange(Sender: TObject);
begin
    cmbMesChange(Sender);
end;

procedure TfrmFluxo.cmdN3Click(Sender: TObject);
begin
    drawplan;
end;

procedure TfrmFluxo.cmdN2Click(Sender: TObject);
begin
    drawplan;
end;

procedure TfrmFluxo.cmdN1Click(Sender: TObject);
begin
    drawplan;
end;

procedure TfrmFluxo.cmdResumoClick(Sender: TObject);
var i:Integer;
begin
    if cmdResumo.down then
        for i:=2 to maxday+1 do
            stringaligngrid1.colwidths[i]:=0
    else
        for i:=2 to maxday+1 do
            stringaligngrid1.colwidths[i]:=stringaligngrid1.defaultcolwidth;
end;

procedure TfrmFluxo.dbBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=((dbBancoStatus.value='A') and
        (dbFilialfilial.value=dbBancofilial.value));
end;

procedure TfrmFluxo.cmdDiarioClick(Sender: TObject);
var i,k:Integer;
    imp:Boolean;
begin
    if cmdDiario.down then
    begin
        k:=2;
            for i:=2 to maxday+1 do
            begin
                imp:=false;
                k:=1;
                while (k<=stringaligngrid1.rowcount) and
                      (stringaligngrid1.cells[1,k]<>'(*) Saldos Iniciais') and not imp do
                begin
                    if stringaligngrid1.cells[i,k]<>'' then
                        imp:=true
                    else inc(k);
                end;
                if not imp then
                    stringaligngrid1.colwidths[i]:=0
                else
                    stringaligngrid1.colwidths[i]:=stringaligngrid1.Defaultcolwidth;
            end;
    end
    else
        for i:=2 to maxday+1 do
            stringaligngrid1.colwidths[i]:=stringaligngrid1.defaultcolwidth;
end;


procedure TfrmFluxo.FormShow(Sender: TObject);
begin
    drawplan;
    cmdResumoclick(sender);
end;

procedure TfrmFluxo.cmbFilialCloseUp(Sender: TObject);
var vl:Currency;
begin
    vl:=saldoem(encodedate(word(cmbAno.value),word(cmbMes.itemindex+1),1));
    drawplan;
end;


procedure TfrmFluxo.dbMovBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(ansiuppercase(dbMovBancoStatus.asstring)<>'C') and
            (dbMovBancoFilial.value=dbBancofilial.value);
end;

procedure TfrmFluxo.cmdDecimalClick(Sender: TObject);
begin
    mk:='%m';
    drawplan;
end;

procedure TfrmFluxo.cmdInteiroClick(Sender: TObject);
begin
    mk:='%.0m';
    drawplan;
end;

procedure TfrmFluxo.StringAlignGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    with stringaligngrid1 do
    case key of
        vk_Up:while (row>1) and (rowheights[row-1]=0) do row:=row-1;
        vk_Left:while (col>2) and (colwidths[col-1]=0) do col:=col-1;
        vk_Right:while (col<colcount) and (colwidths[col+1]=0) do col:=col+1;
        vk_Down:while (row<Rowcount) and (rowheights[row+1]=0) do row:=row+1;
    end;
end;

procedure TfrmFluxo.chkFilialClick(Sender: TObject);
var vl:Currency;
begin
    vl:=saldoem(encodedate(word(cmbAno.value),word(cmbMes.itemindex+1),1));
    drawplan;
end;

procedure TfrmFluxo.cmdReclassClick(Sender: TObject);
begin
    if frmReclassificacao=nil then
        application.createform(TfrmReclassificacao,frmReclassificacao);
    frmReclassificacao.show;
end;

procedure TfrmFluxo.cmdSaldoClick(Sender: TObject);
begin
    dbBanco1.First;
    while dbBanco1.eof do
    begin
        dbBanco1.Edit;
        dbBanco1SaldoAtual.ascurrency:=frmMovBanco.setsaldo(dbBanco1Bancoid.value,false,encodedate(3200,12,31),999);
        dbBanco1.post;
        dbBanco1.Next;
    end;
    ShowMessage('Saldo atualizados');
    dbBanco.Refresh;
end;

end.
