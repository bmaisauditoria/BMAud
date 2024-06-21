unit frmProdVisitas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants,
  RpDefine, RpCon, RpConDS;

type
  TfrmProdVisita = class(TForm)
    Panel1: TPanel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Label1: TLabel;
    cmdAtualiza: TBitBtn;
    cmdRestaura: TBitBtn;
    prgBar: TProgressBar;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdAtualizaClick(Sender: TObject);
    procedure cmdRestauraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdVisita: TfrmProdVisita;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;

{$R *.DFM}

procedure TfrmProdVisita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmProdVisita.FormShow(Sender: TObject);
var d,m,a:word;
begin
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmProdVisita.cmdAtualizaClick(Sender: TObject);
var i,iAno,iMes,iProd,iAud,iCli:integer;
var iData:TDate;
begin
with frmProdutividade do
begin
    if dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    iProd:=dbProdProdutividade.value;
    iAno:=dbProdAnoCompetencia.value;
    iMes:=dbProdMesCompetencia.value;
    iCli:=dbClienteIniCliente.value;
    iData:=EncodeDate(iano,imes,1);

    if frmProdutividade.dbProdCli.Locate('Cliente',iCli,[]) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;


    ShowMessage('Atenção! As visitas cadastradas serão apagadas e recalculadas');
    i:=Application.MessageBox('Confirme o recalculo das visitas','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    dbProdMTrab.sql.text:='Delete ProdutividadeM where Produtividade=:Prod and '+
                          'Servico='+QuotedStr('V')+' and Cliente=:iCliente ';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.ParamByName('iCliente').value:=iCli;
    dbProdMTrab.Execute;

    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where Produtividade=:Prod and '+
                          'Servico='+QuotedStr('V')+' and Cliente=:iCliente '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,ClienteAud,Hospital,Servico';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.ParamByName('iCliente').value:=iCli;
    dbProdMTrab.Execute;

//**** Fim Limpeza
    qryVisita.Close;
    qryVisita.SQL.Clear;
    qryVisita.SQL.Text:='Select Cliente, Hospital, Produtividade, '+
                         '       count(AtendimentoHI) as Qtd '+
                         'from AtendHI '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and '+
                         '      Cliente=:iCliente and '+
                         '      (Servico='+QuotedStr('P')+' or Servico='+QuotedStr('PP1')+') and '+
                         '      Diarias>=2 '+
                         'group by cliente, hospital,  Produtividade '+
                         'order by cliente, hospital ';

    qryVisita.ParamByName('iMes').asinteger:=iMes;
    qryVisita.ParamByName('iAno').asinteger:=iAno;
    qryVisita.ParamByName('iCliente').asinteger:=iCli;
    qryVisita.Open;
    ProgressBar1.Max:=qryVisita.RecordCount;

    qryVisita.First;
    while not qryVisita.Eof do
    begin
        iAud:=0;
        dbEscala.Locate('Cliente;Hospital;Tipo;Servico',VarArrayof([qryVisitaCliente.value,
                                                                       qryVisitaHospital.value,
                                                                       'M','V']),[]);
        while (dbEscalaCliente.value=qryVisitaCliente.value) and
              (dbEscalaHospital.value=qryVisitaHospital.Value) and
              (dbEscalaTipo.value='M') and
              (dbEscalaServico.value='V') and
              (not dbEscala.eof) do
        begin
            if (iData>=dbEscalaDataInicio.value) and (dbEscalaDataFim.isnull) then
                iAud:=dbEscalaAuditor.value
            else
                if (iData>=dbEscalaDataInicio.value) and (iData<=dbEscalaDataFim.value) then
                    iAud:=dbEscalaAuditor.value;
            if iAud<>0 then
                break
            else
                dbEscala.Next;

        end;

//  Produtividade,AnoCompetencia,MesCompetencia,ClienteAud,Hospital,Servico';
        if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Servico',
                               VarArrayof([iProd,iAno,iMes,qryVisitaCliente.value,qryVisitaHospital.value,'V']),[]) then
            dbProdMTrab.Edit
        else
            dbProdMTrab.Insert;
        dbProdMTrabProdutividade.value:=iProd;
        dbProdMTrabClienteAud.value:=qryVisitaCliente.value;
        dbProdMTrabCliente.value:=qryVisitaCliente.value;
        dbProdMTrabAuditor.value:=iAud;
        dbProdMTrabTipo.value:='M';
        dbProdMTrabServico.value:='V';
        dbProdMTrabHospital.value:=qryVisitaHospital.value;
        dbProdMTrabStatus.Value:='A';
        dbProdMTrabAnoCompetencia.value:=iAno;
        dbProdMTrabMesCompetencia.value:=iMes;
        dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryVisitaQtd.value;
        dbProdMTrabVinculado.value:='N';
        dbProdMTrab.Post;
        ProgressBar1.Position:=ProgressBar1.Position+1;
        qryVisita.Next;
    end;

    dbProdM.Refresh;
    ShowMessage('Visitas geradas com sucesso');
end;
end;

procedure TfrmProdVisita.cmdRestauraClick(Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno,iCli:integer;
begin
with frmProdutividade do
begin
    iProd:=dbProdProdutividade.value;
    iAno:=dbProdAnoCompetencia.value;
    iMes:=dbProdMesCompetencia.value;
    iCli:=dbClienteIniCliente.value;

    qryProdVisitaItem.Close;
    qryProdVisitaItem.SQL.Clear;
    qryProdVisitaItem.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and '+
                      '      Cliente=:iCliente and '+
                      '      (Servico='+QuotedStr('P')+' or Servico='+QuotedStr('PP1')+') and '+
                      '      Diarias>=2 '+
                      'order by Cliente,Hospital,AtendimentoHI ';

    qryProdVisitaItem.ParamByName('iMes').asinteger:=iMes;
    qryProdVisitaItem.ParamByName('iAno').asinteger:=iAno;
    qryProdVisitaItem.ParamByName('iCliente').asinteger:=iCli;

    qryProdVisitaItem.Open;
    if qryProdVisitaItem.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Visitas');
        abort;
    end;

    iCompetencia:=InttoStr(frmProdutividade.dbProdMesCompetencia.value)+'/'+IntToStr(frmProdutividade.dbProdAnoCompetencia.value);
    frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

    frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores - Visitas');

    frmMenu.rvBBAuditoria.SelectReport('relProdVisita',true);
    frmMenu.rvBBAuditoria.Execute;
end;
end;

procedure TfrmProdVisita.BitBtn1Click(Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno,iCli:integer;
begin
with frmProdutividade
do begin
    iProd:=dbProdProdutividade.value;
    iAno:=dbProdAnoCompetencia.value;
    iMes:=dbProdMesCompetencia.value;
    iCli:=dbClienteIniCliente.value;

    qryVisita.Close;
    qryVisita.SQL.Clear;
    qryVisita.SQL.Text:='Select Cliente, Hospital, Produtividade, '+
                         '       count(AtendimentoHI) as Qtd '+
                         'from AtendHI '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and  Servico<>'+QuotedStr('NP')+' and '+
                         '      Cliente=:iCliente and '+
                         '      (Servico='+QuotedStr('P')+' or Servico='+QuotedStr('PP1')+') and '+
                         '      Diarias>=2 '+
                         'group by cliente, hospital,  Produtividade '+
                         'order by cliente, hospital ';

    qryVisita.ParamByName('iMes').asinteger:=iMes;
    qryVisita.ParamByName('iAno').asinteger:=iAno;
    qryVisita.ParamByName('iCliente').asinteger:=iCli;
    qryVisita.Open;

    frmMenu.ExcelExport.Dataset:=qryVisita;        //nao tem %
    frmMenu.ExcelExport.ExcelVisible:=true;
    frmMenu.ExcelExport.ExportDataset;
    frmMenu.ExcelExport.Disconnect;
end;
end;

end.
