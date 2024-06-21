unit frmExtratosNC;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Aligrid, ExtCtrls, Menus, StdCtrls, Buttons, DBCGrids, Db,
  DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, Mask, DBCtrls, ComCtrls;

type
  TfrmExtratoNC = class(TForm)
    Panel1: TPanel;
    cmpTotalCredito: TLabel;
    cmpTotalDebito: TLabel;
    cmpMovimento: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    dbLancamento: TMSTable;
    dsLancamento: TDataSource;
    dbMovBanco: TMSTable;
    dbConta: TMSTable;
    dbLancamentoFilial: TIntegerField;
    dbLancamentoLancamento: TAutoIncField;
    dbLancamentoCliente: TIntegerField;
    dbLancamentoClienteDeb: TIntegerField;
    dbLancamentoPrazo: TIntegerField;
    dbLancamentoCod1: TSmallintField;
    dbLancamentoCod2: TSmallintField;
    dbLancamentoCod3: TSmallintField;
    dbLancamentoHistorico: TStringField;
    dbLancamentoDoc: TStringField;
    dbLancamentoValor: TCurrencyField;
    dbLancamentoTributo: TBooleanField;
    dbLancamentoBancoID: TIntegerField;
    dbLancamentoCheque: TStringField;
    dbLancamentoValorPago: TCurrencyField;
    dbLancamentoPago: TBooleanField;
    dbLancamentoSelecionado: TBooleanField;
    dbLancamentoStatus: TStringField;
    dbLancamentoPrevisao: TIntegerField;
    dbLancamentoMovBanco: TIntegerField;
    dbLancamentoNF: TIntegerField;
    dbLancamentoSeq: TStringField;
    dbLancamentoPorcentagem: TFloatField;
    dbLancamentoUsuario: TStringField;
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
    dbContaBancoID: TAutoIncField;
    dbContaBanco: TSmallintField;
    dbContaConta: TStringField;
    dbContaNome: TStringField;
    dbContaSigla: TStringField;
    dbContaEndereco: TMemoField;
    dbContaGerente: TStringField;
    dbContaFone: TStringField;
    dbContaFax: TStringField;
    dbContaSite: TStringField;
    dbContaFilial: TSmallintField;
    dbContaUltimoCheque: TIntegerField;
    dbContaSaldoFechamento: TCurrencyField;
    dbContaUsuarioFechamento: TStringField;
    dbContaSaldoAtual: TCurrencyField;
    dbContaLimiteCredito: TCurrencyField;
    dbContaStatus: TStringField;
    dbContaUsuario: TStringField;
    Panel3: TPanel;
    StringAlignGrid1: TStringAlignGrid;
    Label11: TLabel;
    cmdLancar: TBitBtn;
    pagMov: TPageControl;
    tabLancamento: TTabSheet;
    tabMovimento: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    Label7: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    dbMovBanco1: TMSTable;
    dbMovBanco1MovBanco: TAutoIncField;
    dbMovBanco1BancoID: TIntegerField;
    dbMovBanco1Fundo: TIntegerField;
    dbMovBanco1Tipo: TStringField;
    dbMovBanco1Doc: TStringField;
    dbMovBanco1Valor: TCurrencyField;
    dbMovBanco1Favorecido: TStringField;
    dbMovBanco1Cruzado: TBooleanField;
    dbMovBanco1Historico: TMemoField;
    dbMovBanco1Status: TStringField;
    dbMovBanco1Filial: TIntegerField;
    dbMovBanco1Usuario: TStringField;
    dsMovBanco1: TDataSource;
    DBCtrlGrid2: TDBCtrlGrid;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit4: TDBEdit;
    dbMovBanco1Pago: TBooleanField;
    dbMovBanco1Selecionado: TBooleanField;
    Label12: TLabel;
    Label13: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    dbLancamentoUsuarioI: TStringField;
    dbMovBancoUsuarioI: TStringField;
    dbMovBanco1UsuarioI: TStringField;
    dbLancamentoContabilizado: TBooleanField;
    dbLancamentoDataEmissao: TDateTimeField;
    dbLancamentoDataVencto: TDateTimeField;
    dbLancamentoDataPagto: TDateTimeField;
    dbLancamentoDataInclusao: TDateTimeField;
    dbLancamentoDataAlteracao: TDateTimeField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    dbMovBancoDataAlteracao: TDateTimeField;
    dbContaDataFechamento: TDateTimeField;
    dbContaDataInclusao: TDateTimeField;
    dbMovBanco1DataEntrada: TDateTimeField;
    dbMovBanco1DataMovimento: TDateTimeField;
    dbMovBanco1DataInclusao: TDateTimeField;
    dbMovBanco1DataAlteracao: TDateTimeField;
    procedure FormResize(Sender: TObject);
    procedure dbLancamentoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringAlignGrid1SelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure cmdLancarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbMovBanco1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
  ibancoid:integer;
    { Public declarations }
  end;

var
  frmExtratoNC: TfrmExtratoNC;

implementation

uses frmPrincipal, frmMovsBanco, frmClassificaFins;

{$R *.DFM}

procedure TfrmExtratoNC.FormResize(Sender: TObject);
begin
    dbctrlgrid1.RowCount:=dbctrlgrid1.Height div 64;
    dbctrlgrid2.RowCount:=dbctrlgrid2.Height div 64;
end;

procedure TfrmExtratoNC.dbLancamentoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbLancamentoDataPagto.isnull;
end;

procedure TfrmExtratoNC.FormShow(Sender: TObject);
begin
    dbLancamento.open;
    dbMovBanco.open;
    dbMovBanco1.Open;
    dbConta.open;
    dbctrlgrid1.RowCount:=dbctrlgrid1.Height div 64;
    dbctrlgrid2.RowCount:=dbctrlgrid2.Height div 64;
end;

procedure TfrmExtratoNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbLancamento.disablecontrols;
    dbLancamento.first;
    while not dbLancamento.eof do
    begin
        dbLancamento.edit;
        dbLancamentopago.asboolean:=false;
        dbLancamento.post;
        dbLancamento.next;
    end;
    dbLancamento.EnableControls;
    dbLancamento.close;
    dbMovBanco.close;
    dbMovBanco1.Close;
    dbConta.close;
end;

procedure TfrmExtratoNC.StringAlignGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
    if dbLancamento.active then
    begin
        dbLancamento.disablecontrols;
        dbLancamento.first;
        while not dbLancamento.eof do
        begin
            if dbLancamentopago.value<>false then
            begin
                dbLancamento.edit;
                dbLancamentopago.asboolean:=false;
                dbLancamento.post;
            end;    
            dbLancamento.next;
        end;
        dbLancamento.EnableControls;
   end;
end;

procedure TfrmExtratoNC.cmdLancarClick(Sender: TObject);
var vc,v:currency;
    h:string;
begin
    v:=0;
    dbConta.Locate('BancoID',ibancoid,[]);
    case pagMov.ActivePageIndex of
    0:begin
        dbLancamento.first;
        h:='';
        while not dbLancamento.eof do
            begin
            if dbLancamentopago.asboolean then
            begin
                h:=h+dbLancamentohistorico.asstring+' - '+dbLancamentodoc.asstring+' - '+format('%m',[dbLancamentovalor.ascurrency])+#13;
                v:=v+dbLancamentovalor.ascurrency;
            end;
            dbLancamento.next;
        end;
        vc:=frmMovBanco.strtocurrency(Stringaligngrid1.cells[3,Stringaligngrid1.row]);
        if (v>0) and (vc<>v) then
        begin
            Showmessage('Valor do lançamento é diferente da soma dos valores provisionados.');
        end
        else
        begin
        if v=0 then
        begin
            if frmclassificaFin=nil then
                application.createform(TfrmclassificaFin,frmclassificaFin);
            frmclassificaFin.vl:=vc;
            frmclassificaFin.filial:=dbContafilial.asinteger;
            frmclassificaFin.Contabilizado:=(dbContaStatus.value<>'N');
            frmclassificaFin.tag:=0;
            frmclassificaFin.showmodal;
            if frmclassificaFin.tag=1 then
            begin
                dbLancamento.insert;
                dbLancamentoCod1.asinteger:=frmclassificaFin.n1;
                dbLancamentoCod2.asinteger:=frmclassificaFin.n2;
                dbLancamentoCod3.asinteger:=frmclassificaFin.n3;
                dbLancamentoContabilizado.Value:=frmclassificaFin.contabilizado;
                dbLancamentoDoc.asstring:=Stringaligngrid1.cells[2,Stringaligngrid1.row];
                dbLancamentoCheque.asstring:=Stringaligngrid1.cells[2,Stringaligngrid1.row];
                dbLancamentoDataVencto.asdatetime:=strtodate(Stringaligngrid1.cells[0,Stringaligngrid1.row]);
                dbLancamentoValor.ascurrency:=vc;
                dbLancamentofilial.asInteger:=frmclassificaFin.filial;
                dbLancamentoDataEmissao.asdatetime:=dbLancamentoDataVencto.asdatetime;
                dbLancamentoHistorico.asstring:=Stringaligngrid1.cells[1,Stringaligngrid1.row];
                dbLancamentocliente.value:=frmclassificaFin.cliente;
                dbLancamentoPago.asboolean:=true;
                dbLancamentoTributo.value:=false;
                dbLancamentoDataInclusao.value:=date;
                dbLancamentoUsuarioI.value:=iUsuario;
                dbLancamentoStatus.value:='A';
                dbLancamento.post;
                v:=vc;
            end;
        end;
        if v>0 then
        begin
            dbMovBanco.insert;
            dbMovBancoBancoID.asinteger:=ibancoid;
            dbMovBancodataEntrada.asdatetime:=strtodate(Stringaligngrid1.cells[0,Stringaligngrid1.row]);
            dbMovBancotipo.asstring:=copy(Stringaligngrid1.cells[4,Stringaligngrid1.row], 1, 1);
            dbMovBancodoc.asstring:=Stringaligngrid1.cells[2,Stringaligngrid1.row];
            dbMovBancoFavorecido.asstring:=Stringaligngrid1.cells[1,Stringaligngrid1.row];
            dbMovBancohistorico.AsString:=h;
            dbMovBancovalor.AsCurrency:=vc;
            dbMovBancofilial.asinteger:=dbContafilial.asinteger;
            dbMovBancodatamovimento.AsDateTime:=strtodate(Stringaligngrid1.cells[0,Stringaligngrid1.row]);
            dbMovBanco.post;
            dbConta.edit;
            if dbMovBancotipo.asstring='C' then
                dbContasaldoAtual.ascurrency:=dbContasaldoAtual.ascurrency+vc
            else
                dbContasaldoAtual.ascurrency:=dbContasaldoAtual.ascurrency-vc;
            dbConta.post;
            dbLancamento.first;
            while not dbLancamento.eof do
            begin
                if dbLancamentopago.asboolean then
                begin
                    dbLancamento.edit;
                    dbLancamentoMovBanco.asinteger:=dbMovBancoMovBanco.asinteger;
                    dbLancamentovalorpago.ascurrency:=dbLancamentovalor.ascurrency;
                    dbLancamentodatapagto.asdatetime:=dbMovBancodataEntrada.asdatetime;
                    dbLancamentoStatus.value:='P';
                    dbLancamentobancoID.asinteger:=ibancoid;
                    dbLancamentoUsuario.value:=iUsuario;
                    dbLancamentoDataAlteracao.value:=date;
                    dbLancamento.post;
                end
                else
                    dbLancamento.next;
            end;
            Stringaligngrid1.RemoveRow(stringaligngrid1.row);
        end;
    end;
    end;
    1:begin
        dbMovBanco1.first;
        while not dbMovBanco1.eof do
        begin
            if dbMovBanco1Selecionado.asboolean then
                v:=v+dbMovBanco1valor.ascurrency;
            dbMovBanco1.next;
        end;
        vc:=frmMovBanco.strtocurrency(Stringaligngrid1.cells[3,Stringaligngrid1.row]);
        if (v>0) and (vc<>v) then
        begin
            Showmessage('Valor do extrato é diferente da soma dos valores selecionados.');
        end
        else
        begin
            dbMovBanco1.first;
            while not dbMovBanco1.eof do
            begin
                if dbMovBanco1Selecionado.asboolean then
                begin
                    dbMovBanco1.edit;
                    dbMovBanco1DataMovimento.value:=strtodate(Stringaligngrid1.cells[0,Stringaligngrid1.row]);
                    dbMovBanco1Usuario.value:=iUsuario;
                    dbMovBanco1DataAlteracao.value:=date;
                    dbMovBanco1Selecionado.value:=false;
                    dbMovBanco1.post;
                end
                else
                    dbMovBanco1.next;
            end;
            Stringaligngrid1.RemoveRow(stringaligngrid1.row);
        end;
    end;
    end;

end;

procedure TfrmExtratoNC.FormActivate(Sender: TObject);
begin
    dbctrlgrid1.RowCount:=dbctrlgrid1.Height div 64;
    dbctrlgrid2.RowCount:=dbctrlgrid2.Height div 64;
end;

procedure TfrmExtratoNC.dbMovBanco1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbMovBAnco1DataMovimento.isnull;
end;

end.
