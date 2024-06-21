unit frmRelExtratos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, StdCtrls, ExtCtrls, DBCtrls, Spin, Buttons, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls;

type
  TfrmRelExtrato = class(TForm)
    dsBanco: TDataSource;
    dbBanco: TMSTable;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    cmpConta: TDBLookupComboBox;
    chkConciliado: TCheckBox;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
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
    dbBancoAgencia: TStringField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelExtrato: TfrmRelExtrato;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.DFM}

procedure TfrmRelExtrato.FormShow(Sender: TObject);
begin
    dbBanco.Open;
    cmpConta.keyvalue:=dbBancoBancoId.value;
end;

procedure TfrmRelExtrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbBanco.Close;
end;

procedure TfrmRelExtrato.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
    dtpFim.date:=date;
end;

procedure TfrmRelExtrato.SpeedButton1Click(Sender: TObject);
var iDataIni,iDataFim:Tdate;
var iSaldo:currency;
var iLinhaD,iLinhaO:string;
var iBanco:integer;
begin
    iDataIni:=Int(dtpIni.Date);
    iDataFim:=Int(dtpFim.Date);
    iBanco:=cmpConta.KeyValue;
    dbMovBanco.Open;
    if chkConciliado.Checked then
    begin
        iLinhaD:='and DataMovimento>=:Ini and DataMovimento<=:Fim ';
        iLinhaO:='DataMovimento,Tipo';
        dbMovBanco.IndexFieldNames:='BancoID;DataMovimento';
        iSaldo:=0;
        dbMovBanco.First;
        while (not dbMovBanco.eof) and
              (dbMovBancoDataMovimento.value<iDataIni) do
        begin
            if not dbMovBancoDataMovimento.isnull then
                if (dbMovBAncoTipo.value='D') or
                   (dbMovBAncoTipo.value='X') or
                   (dbMovBAncoTipo.value='P') or
                   (dbMovBAncoTipo.value='T') or
                   (dbMovBAncoTipo.value='A') then
                    iSaldo:=iSaldo-dbMovBancoValor.value
                else
                    iSaldo:=iSaldo+dbMovBancoValor.value;
            dbMovBanco.Next;
        end;
    end
    else
    begin
        iLinhaD:='and DataEntrada>=:Ini and DataEntrada<=:Fim ';
        iLinhaO:='DataEntrada,Tipo';
        dbMovBanco.IndexFieldNames:='BancoID;DataEntrada';
        iSaldo:=0;
        dbMovBanco.First;
        while (not dbMovBanco.eof) and
              (dbMovBancoDataEntrada.value<iDataIni) do
        begin
            if (dbMovBAncoTipo.value='D') or
               (dbMovBAncoTipo.value='X') or
               (dbMovBAncoTipo.value='P') or
               (dbMovBAncoTipo.value='T') or
               (dbMovBAncoTipo.value='A') then
               iSaldo:=iSaldo-dbMovBancoValor.value
            else
               iSaldo:=iSaldo+dbMovBancoValor.value;
            dbMovBanco.Next;
        end;
    end;

    with dmRelatorio do
    begin
        dbExtrato.Close;
        dbExtrato.Open;
        dbExtrato.SQL.Text:='Delete from relExtrato' ;
        dbExtrato.Execute;
        dbExtrato.SQL.Text:='Select * from relExtrato '+
                            'order by Data,Tipo,Seq ';
        dbExtrato.Open;                    

        qryExtrato.SQL.clear;
        qryExtrato.SQL.Text:='Select * from MovBanco '+
                             'where BancoID=:Banco '+
                             iLinhaD+
                             'order by '+iLinhaO;
        qryExtrato.ParamByName('Banco').AsInteger:=iBanco;
        qryExtrato.ParamByName('Ini').AsDate:=iDataIni;
        qryExtrato.ParamByName('Fim').AsDate:=iDataFim;
        qryExtrato.Open;

        dbExtrato.Insert;
        dbExtratoData.value:=iDataIni-1;
        dbExtratoSaldo.value:=iSaldo;
        dbExtratoTipo.value:='A';
        dbExtrato.Post;
        qryExtrato.First;
        while not qryExtrato.Eof do
        begin
            dbExtrato.Insert;
            if chkConciliado.Checked then
                dbExtratoData.value:=qryExtratoDataMovimento.value
            else
                dbExtratoData.value:=qryExtratoDataEntrada.value;
            dbExtratoHistorico.value:=qryExtratoFavorecido.value;
            if qryExtratoDataMovimento.IsNull then
                dbExtratoConciliado.value:=false
            else
                dbExtratoConciliado.Value:=true;    
            dbExtratoDoc.value:=qryExtratoDoc.value;
            if (qryExtratoTipo.value='D') or
               (qryExtratoTipo.value='X') or
               (qryExtratoTipo.value='P') or
               (qryExtratoTipo.value='T') or
               (qryExtratoTipo.value='A') then
            begin
                dbExtratoTipo.Value:='D';
                dbExtratoDebito.value:=qryExtratoValor.value;
                dbExtratoSaldo.value:=iSaldo-qryExtratoValor.value;
                dbExtrato.Post;
                iSaldo:=iSaldo-qryExtratoValor.value;
            end
            else
            begin
                dbExtratoTipo.Value:='C';
                dbExtratoCredito.value:=qryExtratoValor.value;
                dbExtratoSaldo.value:=iSaldo+qryExtratoValor.value;
                dbExtrato.Post;
                iSaldo:=iSaldo+qryExtratoValor.value;
            end;
            qryExtrato.Next;
        end;
        frmMenu.RvFin.SetParam('DataIni',DateToStr(iDataIni));
        frmMenu.RvFin.SetParam('DataFim',DateToStr(iDataFim));
        frmMenu.RvFin.SetParam('Banco',IntToStr(dbBancoBanco.value));
        frmMenu.RvFin.SetParam('Agencia',dbBancoAgencia.value);
        frmMenu.RvFin.SetParam('Conta',dbBancoConta.value+' - '+dbBancoNome.value);
        if chkConciliado.Checked then
            frmMenu.RvFin.SetParam('Titulo','Extrato Conciliado')
        else
            frmMenu.RvFin.SetParam('Titulo','Extrato Não Conciliado');
        frmMenu.rvFin.SelectReport('relExtrato',true);
        frmMenu.rvFin.Execute;

    end;
end;

end.




