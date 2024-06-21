unit frmRelNFs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils;

type
  TfrmRelNF = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    cmdImp: TBitBtn;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    Label2: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label3: TLabel;
    chkFilial: TCheckBox;
    rdgOrdem: TRadioGroup;
    rdgData: TRadioGroup;
    chkCliente: TCheckBox;
    cmbCliente: TDBLookupComboBox;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbClienteCliFor: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteStatusCli: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelNF: TfrmRelNF;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFilial.Close;
end;

procedure TfrmRelNF.FormShow(Sender: TObject);
begin
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
    dbCliente.Open;
    cmbCliente.keyvalue:=dbClienteCliFor.value;
end;

procedure TfrmRelNF.cmdImpClick(Sender: TObject);
var iLinhaF,iLinhaC,iLinhaO,icampo:string;
var iFilial,iCliente:integer;
begin
    if chkFilial.Checked then
    begin
        iLinhaF:='';
        iFilial:=0;
    end
    else
    begin
        iLinhaF:='and Filial=:iFilial ';
        iFilial:=cmbFilial.KeyValue;
    end;

    if chkCliente.Checked then
    begin
        iLinhaC:='';
        iCliente:=0;
    end
    else
    begin
        iLinhaC:='and Cliente=:iCliente ';
        iCliente:=cmbCliente.KeyValue;
    end;


    case rdgData.ItemIndex of
    0:icampo:='DataEmissao';
    1:icampo:='DataVencto';
    end;

    case rdgOrdem.ItemIndex of
    0:iLinhaO:='order by Filial,NF';
    1:iLinhaO:='order by ClienteDeb,Filial,NF';
    2:iLinhaO:='order by Filial,'+icampo+',NF';
    end;


    with dmRelatorio do
    begin
        relNF.close;
        relNF.sql.clear;
        relNF.sql.text:='select * from NF  '+
                        'where '+icampo+'>=:iDataIni and '+
                        '      '+icampo+'<=:iDataFim and '+
                        '      Status=1 '+
                        iLinhaF+iLinhaC+iLinhaO;
        if not chkFilial.Checked then
            relNF.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        if not chkCliente.Checked then
            relNF.ParamByName('iCliente').value:=cmbCliente.KeyValue;
        relNF.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relNF.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relNF.Open;

        iTotalNF:=0;
        relNF.First;
        while not relNF.eof do
        begin
            iTotalNF:=iTotalNF+relNFNFbruto.value;
            relNF.Next;
        end;
        relNF.First;

        relNF1.close;
        relNF1.sql.clear;
        relNF1.sql.text:='select clientedeb, sum(nfbruto) as nfbruto from NF  '+
                        'where '+icampo+'>=:iDataIni and '+
                        '      '+icampo+'<=:iDataFim and '+
                         '      Status=1 '+
                         iLInhaF+iLinhaC+
                         'group by clientedeb '+
                         'order by clientedeb ';
        if not chkFilial.Checked then
            relNF1.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        if not chkCliente.Checked then
            relNF1.ParamByName('iCliente').value:=cmbCliente.KeyValue;
        relNF1.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relNF1.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relNF1.Open;

        relNF2.close;
        relNF2.sql.clear;
        relNF2.sql.text:='select filial, '+
                         'sum(nfbruto) as Bruto, '+
                         'sum(ValorIrenda) as IRenda, '+
                         'sum(ValorImpostos) as Impostos, '+
                         'sum(NFLiquida) as Liquido '+
                         'from NF  '+
                        'where '+icampo+'>=:iDataIni and '+
                        '      '+icampo+'<=:iDataFim and '+
                         '      Status=1 '+
                         iLInhaF+iLInhaC+
                         'group by Filial '+
                         'order by Filial ';
        if not chkFilial.Checked then
            relNF2.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        if not chkCliente.Checked then
            relNF2.ParamByName('iCliente').value:=cmbCliente.KeyValue;
        relNF2.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relNF2.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relNF2.Open;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));

    frmMenu.RvFin.SetParam('Titulo','Relatorio de Notas Fiscais emitidas (RNFE)');

    case rdgData.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Emissões de '+DatetoStr(DtpIni.date)+' a '+DateToStr(dtpFim.date));
    1:frmMenu.RvFin.SetParam('Titulo1','Vencimentos de '+DateToStr(DtpIni.date)+' a '+DateToStr(dtpFim.date));
    end;

    case rdgOrdem.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo2','Por Ordem de Nota Fiscal');
    1:frmMenu.RvFin.SetParam('Titulo2','Por Ordem de Cliente');
    2:case rdgData.ItemIndex of
      0:frmMenu.RvFin.SetParam('Titulo2','Por Ordem de Data de Emissão');
      1:frmMenu.RvFin.SetParam('Titulo2','Por Ordem de Data de Vencimento');
      end;
    end;


    case rdgOrdem.ItemIndex of
    0:frmMenu.rvFin.SelectReport('relNotas',true);
    1:frmMenu.rvFin.SelectReport('relNotasCliente',true);
    2:frmMenu.rvFin.SelectReport('relNotas',true);
    end;

    frmMenu.rvFin.Execute;
end;

procedure TfrmRelNF.FormCreate(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
end;

procedure TfrmRelNF.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;

end;

procedure TfrmRelNF.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
        cmbCliente.Visible:=false
    else
        cmbCliente.Visible:=true;
end;

procedure TfrmRelNF.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteStatusCli.value=true;
end;

end.
