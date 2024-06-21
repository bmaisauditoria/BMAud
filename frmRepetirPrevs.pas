unit frmRepetirPrevs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DateUtils; 

type
  TfrmRepetirPrev = class(TForm)
    Panel1: TPanel;
    rdgRepetir: TRadioGroup;
    barRep: TProgressBar;
    Label1: TLabel;
    dtpFim: TDateTimePicker;
    cmdRepetir: TBitBtn;
    dbPagar: TMSTable;
    dbPrevisao: TMSTable;
    dsPrevisao: TDataSource;
    dbPrevisaoFilial: TIntegerField;
    dbPrevisaoPrevisao: TAutoIncField;
    dbPrevisaoCliente: TIntegerField;
    dbPrevisaoClienteDeb: TIntegerField;
    dbPrevisaoHistorico: TStringField;
    dbPrevisaoValor: TCurrencyField;
    dbPrevisaoCod1: TSmallintField;
    dbPrevisaoCod2: TSmallintField;
    dbPrevisaoCod3: TSmallintField;
    dbPrevisaoDia: TSmallintField;
    dbPrevisaoTipo: TStringField;
    dbPrevisaoRepetir: TIntegerField;
    dbPrevisaoAtivo: TBooleanField;
    dbPrevisaoUsuario: TStringField;
    dbPagarFilial: TIntegerField;
    dbPagarLancamento: TAutoIncField;
    dbPagarCliente: TIntegerField;
    dbPagarClienteDeb: TIntegerField;
    dbPagarPrazo: TIntegerField;
    dbPagarCod1: TSmallintField;
    dbPagarCod2: TSmallintField;
    dbPagarCod3: TSmallintField;
    dbPagarHistorico: TStringField;
    dbPagarDoc: TStringField;
    dbPagarValor: TCurrencyField;
    dbPagarBancoID: TIntegerField;
    dbPagarCheque: TStringField;
    dbPagarValorPago: TCurrencyField;
    dbPagarPago: TBooleanField;
    dbPagarSelecionado: TBooleanField;
    dbPagarStatus: TStringField;
    dbPagarPrevisao: TIntegerField;
    dbPagarMovBanco: TIntegerField;
    dbPagarNF: TIntegerField;
    dbPagarPorcentagem: TFloatField;
    dbPagarUsuario: TStringField;
    Label2: TLabel;
    dtpIni: TDateTimePicker;
    dbPagarTributo: TBooleanField;
    dbPagarUsuarioI: TStringField;
    dbPrevisaoDataIni: TDateTimeField;
    dbPrevisaoDataFim: TDateTimeField;
    dbPagarDataEmissao: TDateTimeField;
    dbPagarDataVencto: TDateTimeField;
    dbPagarDataPagto: TDateTimeField;
    dbPagarDataInclusao: TDateTimeField;
    dbPagarDataAlteracao: TDateTimeField;
    procedure cmdRepetirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Repetir(DataIni:TDate;DataFim:Tdate);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepetirPrev: TfrmRepetirPrev;

implementation

uses frmPrincipal, frmPrevsPagRec;

{$R *.dfm}

procedure TfrmRepetirPrev.Repetir(DataIni:TDate;DataFim:Tdate);
var iDataVencto:TDate;
var d,m,a:word;
begin
    DataIni:=Dateof(DataIni);
    DataFim:=Dateof(DataFim);
    iDataVencto:=dbPrevisaoDataIni.value;
    while (iDataVencto<=DataFim) do
    begin
        if iDataVencto>=DataIni then
        begin
            if (not dbPrevisaoDataFim.IsNull) then
                if (iDataVencto>dbPrevisaoDataFim.value) then
                    Break;
            if not dbPagar.Locate('Filial;Previsao;DataVencto',VarArrayOf([dbPrevisaoFilial.value,
                                                                          dbPrevisaoPrevisao.value,
                                                                          iDataVencto]),[]) then
            begin
                dbPagar.Insert;
                dbPagarFilial.value:=dbPrevisaoFilial.value;
                dbPagarCliente.value:=dbPrevisaoCliente.value;
                dbPagarDataVencto.value:=iDataVencto;
                dbPagarCod1.value:=dbPrevisaoCod1.value;
                dbPagarCod2.value:=dbPrevisaoCod2.value;
                dbPagarCod3.value:=dbPrevisaoCod3.value;
                dbPagarHistorico.value:=dbPrevisaoHistorico.value;
                dbPagarValor.value:=dbPrevisaoValor.value;
                dbPagarPago.value:=false;
                dbPagarStatus.value:='A';
                dbPagarPrevisao.value:=dbPrevisaoPrevisao.value;
                dbPagarDataInclusao.value:=date;
                dbPagarDataEmissao.value:=date;
                dbPagarUsuarioI.value:=iUsuario;
                dbPagarTributo.value:=false;
                dbPagar.Post;
            end;
        end;
        if dbPrevisaoTipo.value='D' then
        begin
            DecodeDate(iDataVencto,a,m,d);
            m:=m+1;
            if m=13 then
            begin
                a:=a+1;
                m:=1;
            end;
            case d of
            29..30: if m=2 then d:=28;
            31: begin
                if m=2 then d:=28;
                if (m=4) or (m=6) or (m=9) or
                   (m=11) then d:=30;
                end;
            end;
            iDataVencto:=EncodeDAte(a,m,d);
        end
        else
            iDataVencto:=iDataVencto+dbPrevisaoDia.value;
    end;
    dbPagar.Last;
    if (dbPagarDataVencto.value>=dbPrevisaoDataFim.Value) and
       (not dbPrevisaoDataFim.IsNull) then
    begin
        dbPrevisao.Edit;
        dbPrevisaoAtivo.value:=false;
        dbPrevisao.Post;
    end;
    frmPrevPagRec.dbPagPrev.Refresh;
    frmPrevPagRec.dbPrevisao.Refresh;
end;

procedure TfrmRepetirPrev.cmdRepetirClick(Sender: TObject);
var iPrev,iFilial:integer;
var i:Integer;
var iIni,iFim:TDate;
begin
    if dtpIni.date>dtpFim.date then
    begin
        ShowMessage('Data final menor que inicial');
        abort;
    end;
    i:=application.messagebox('Confirme a geração das Previsões?',
                              'Confirmação ',mb_YesNo);
    if i=idno then abort;
try
    iFilial:=frmPrevPagRec.dbFilialFilial.value;
    iPrev:=frmPrevPagRec.dbPrevisaoPrevisao.value;
    iIni:=dtpIni.Date;
    iFim:=dtpFim.Date;

    if rdgRepetir.ItemIndex=0 then
    begin
        dbPrevisao.Locate('Filial;Previsao',VarArrayof([iFilial,iPrev]),[]);
        if dbPrevisaoAtivo.value=false then
        begin
            ShowMessage('Previsão esta inativa');
            abort;
        end;
        Repetir(iIni,iFim);
    end
    else
    begin
        barRep.Min:=0;
        barRep.Position:=0;
        barRep.Max:=dbPrevisao.RecordCount;
        dbPrevisao.First;
        while not dbPrevisao.eof do
        begin
            barRep.Position:=barRep.Position+1;
            if dbPrevisaoAtivo.value=true then
                Repetir(iIni,iFim);
            dbPrevisao.Next;
        end;
    end;
finally
    barRep.Position:=0;
    Close;
end;

end;

procedure TfrmRepetirPrev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbPagar.Close;
    dbPrevisao.Close;
    frmPrevPagRec.dbPrevisao.Refresh;
    frmPrevPagRec.dbPagar.Refresh;
end;

procedure TfrmRepetirPrev.FormShow(Sender: TObject);
begin
    dbPrevisao.Open;
    dbPagar.Open;
end;

procedure TfrmRepetirPrev.FormCreate(Sender: TObject);
begin
    dtpIni.Date:=date;
    dtpFim.Date:=date;
end;

end.
