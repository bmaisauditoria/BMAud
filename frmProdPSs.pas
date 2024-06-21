unit frmProdPSs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants,
  RpDefine, RpCon, RpConDS;

type
  TfrmProdPS = class(TForm)
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
  frmProdPS: TfrmProdPS;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;

{$R *.DFM}

procedure TfrmProdPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmProdPS.FormShow(Sender: TObject);
var d,m,a:word;
begin
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmProdPS.cmdAtualizaClick(Sender: TObject);
var i,iAno,iMes,iCli,iProd:integer;
begin
with frmProdutividade do
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    iProd:=dbProdProdutividade.value;
    iAno:=dbProdAnoCompetencia.value;
    iMes:=dbProdMesCompetencia.value;
    iCli:=dbClienteIniCliente.value;

    if frmProdutividade.dbProdCli.Locate('Cliente',iCli,[]) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;


    ShowMessage('Atenção! Os Servicos de PS cadastrados serão apagados e recalculados');
    i:=Application.MessageBox('Confirme o recalculo dos PS','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    dbProdMTrab.sql.text:='Delete ProdutividadeM where Produtividade=:Prod and '+
                          '        Cliente=:iCliente and '+
                          '       (Servico='+QuotedStr('PS')+' or '+
                          '        Servico='+QuotedStr('PS2')+' or '+
                          '        Servico='+QuotedStr('AMB')+') ';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.ParamByName('iCliente').value:=iCli;
    dbProdMTrab.Execute;

    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where Produtividade=:Prod and '+
                          '        Cliente=:iCliente and '+
                          '        (Servico='+QuotedStr('PS')+' or '+
                          '         Servico='+QuotedStr('PS2')+' or '+
                          '         Servico='+QuotedStr('AMB')+') '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,ClienteAud,Hospital,Tipo,Auditor,Servico';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.ParamByName('iCliente').value:=iCli;
    dbProdMTrab.Execute;

//**** Fim Limpeza
    qryProdPS.Close;
    qryProdPS.SQL.Clear;
    qryProdPS.SQL.Text:='Select * from AtendHPS '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and '+
                         '       Cliente=:iCliente '+
                         'order by cliente, hospital ';

    qryProdPS.ParamByName('iMes').asinteger:=iMes;
    qryProdPS.ParamByName('iAno').asinteger:=iAno;
    qryProdPS.ParamByName('iCliente').value:=iCli;
    qryProdPS.Open;
    if qryProdPS.RecordCount=0 then
    begin
        ShowMessage('Cliente não possui PS');
        abort;
    end;    
    ProgressBar1.Max:=qryProdPS.RecordCount;

//   Produtividade,AnoCompetencia,MesCompetencia,ClienteAud,Hospital,Tipo,Auditor,Servico';
    qryProdPS.First;
    while not qryProdPS.Eof do
    begin
        if qryProdPSTipo.value='A' then
        begin
            if qryProdPSMedico.value<>0 then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Tipo;Auditor;Servico',
                                       VarArrayof([iProd,iAno,iMes,
                                                   qryProdPSCliente.value,qryProdPSHospital.value,
                                                   'M',qryProdPSMedico.value,'AMB']),[]) then
                    dbProdMTrab.Edit
                else
                    dbProdMTrab.Insert;

                dbProdMTrabProdutividade.value:=iProd;
                dbProdMTrabClienteAud.value:=qryProdPSCliente.value;
                dbProdMTrabCliente.value:=qryProdPSCliente.value;
                dbProdMTrabAuditor.value:=qryProdPSMedico.value;
                dbProdMTrabTipo.value:='M';
                dbProdMTrabServico.value:='AMB';
                dbProdMTrabHospital.value:=qryProdPSHospital.value;
                dbProdMTrabStatus.Value:='A';
                dbProdMTrabAnoCompetencia.value:=iAno;
                dbProdMTrabMesCompetencia.value:=iMes;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryProdPSQtdAtendimento.value;
                dbProdMTrabVinculado.value:='N';
                dbProdMTrab.Post;
            end;
            if qryProdPSEnfermeiro.value<>0 then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Tipo;Auditor;Servico',
                                       VarArrayof([iProd,iAno,iMes,
                                                   qryProdPSCliente.value,qryProdPSHospital.value,
                                                   'E',qryProdPSEnfermeiro.value,'AMB']),[]) then
                    dbProdMTrab.Edit
                else
                    dbProdMTrab.Insert;

                dbProdMTrabProdutividade.value:=iProd;
                dbProdMTrabClienteAud.value:=qryProdPSCliente.value;
                dbProdMTrabCliente.value:=qryProdPSCliente.value;
                dbProdMTrabAuditor.value:=qryProdPSEnfermeiro.value;
                dbProdMTrabTipo.value:='E';
                dbProdMTrabServico.value:='AMB';
                dbProdMTrabHospital.value:=qryProdPSHospital.value;
                dbProdMTrabStatus.Value:='A';
                dbProdMTrabAnoCompetencia.value:=iAno;
                dbProdMTrabMesCompetencia.value:=iMes;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryProdPSQtdAtendimento.value;
                dbProdMTrabVinculado.value:='N';
                dbProdMTrab.Post;
            end;
        end;

        if qryProdPSTipo.value='P' then
        begin
            if (qryProdPSMedico.value<>0) and (qryProdPSEnfermeiro.value<>0) then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Tipo;Auditor;Servico',
                                       VarArrayof([iProd,iAno,iMes,
                                                   qryProdPSCliente.value,qryProdPSHospital.value,
                                                   'M',qryProdPSMedico.value,'PS']),[]) then
                    dbProdMTrab.Edit
                else
                    dbProdMTrab.Insert;

                dbProdMTrabProdutividade.value:=iProd;
                dbProdMTrabClienteAud.value:=qryProdPSCliente.value;
                dbProdMTrabCliente.value:=qryProdPSCliente.value;
                dbProdMTrabAuditor.value:=qryProdPSMedico.value;
                dbProdMTrabTipo.value:='M';
                dbProdMTrabServico.value:='PS';
                dbProdMTrabHospital.value:=qryProdPSHospital.value;
                dbProdMTrabStatus.Value:='A';
                dbProdMTrabAnoCompetencia.value:=iAno;
                dbProdMTrabMesCompetencia.value:=iMes;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryProdPSQtdAtendimento.value;
                dbProdMTrabVinculado.value:='N';
                dbProdMTrab.Post;

                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Tipo;Auditor;Servico',
                                       VarArrayof([iProd,iAno,iMes,
                                                   qryProdPSCliente.value,qryProdPSHospital.value,
                                                   'E',qryProdPSEnfermeiro.value,'PS']),[]) then
                    dbProdMTrab.Edit
                else
                    dbProdMTrab.Insert;

                dbProdMTrabProdutividade.value:=iProd;
                dbProdMTrabClienteAud.value:=qryProdPSCliente.value;
                dbProdMTrabCliente.value:=qryProdPSCliente.value;
                dbProdMTrabAuditor.value:=qryProdPSEnfermeiro.value;
                dbProdMTrabTipo.value:='E';
                dbProdMTrabServico.value:='PS';
                dbProdMTrabHospital.value:=qryProdPSHospital.value;
                dbProdMTrabStatus.Value:='A';
                dbProdMTrabAnoCompetencia.value:=iAno;
                dbProdMTrabMesCompetencia.value:=iMes;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryProdPSQtdAtendimento.value;
                dbProdMTrabVinculado.value:='N';
                dbProdMTrab.Post;
            end;

            if (qryProdPSMedico.value<>0) and (qryProdPSEnfermeiro.value=0) then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Tipo;Auditor;Servico',
                                       VarArrayof([iProd,iAno,iMes,
                                                   qryProdPSCliente.value,qryProdPSHospital.value,
                                                   'M',qryProdPSMedico.value,'PS2']),[]) then
                    dbProdMTrab.Edit
                else
                    dbProdMTrab.Insert;

                dbProdMTrabProdutividade.value:=iProd;
                dbProdMTrabClienteAud.value:=qryProdPSCliente.value;
                dbProdMTrabCliente.value:=qryProdPSCliente.value;
                dbProdMTrabAuditor.value:=qryProdPSMedico.value;
                dbProdMTrabTipo.value:='M';
                dbProdMTrabServico.value:='PS2';
                dbProdMTrabHospital.value:=qryProdPSHospital.value;
                dbProdMTrabStatus.Value:='A';
                dbProdMTrabAnoCompetencia.value:=iAno;
                dbProdMTrabMesCompetencia.value:=iMes;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryProdPSQtdAtendimento.value;
                dbProdMTrabVinculado.value:='N';
                dbProdMTrab.Post;
            end;

            if (qryProdPSMedico.value=0) and (qryProdPSEnfermeiro.value<>0) then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;ClienteAud;Hospital;Tipo;Auditor;Servico',
                                       VarArrayof([iProd,iAno,iMes,
                                                   qryProdPSCliente.value,qryProdPSHospital.value,
                                                   'E',qryProdPSEnfermeiro.value,'PS2']),[]) then
                    dbProdMTrab.Edit
                else
                    dbProdMTrab.Insert;

                dbProdMTrabProdutividade.value:=iProd;
                dbProdMTrabClienteAud.value:=qryProdPSCliente.value;
                dbProdMTrabCliente.value:=qryProdPSCliente.value;
                dbProdMTrabAuditor.value:=qryProdPSEnfermeiro.value;
                dbProdMTrabTipo.value:='E';
                dbProdMTrabServico.value:='PS2';
                dbProdMTrabHospital.value:=qryProdPSHospital.value;
                dbProdMTrabStatus.Value:='A';
                dbProdMTrabAnoCompetencia.value:=iAno;
                dbProdMTrabMesCompetencia.value:=iMes;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+qryProdPSQtdAtendimento.value;
                dbProdMTrabVinculado.value:='N';
                dbProdMTrab.Post;
            end;
        end;

        ProgressBar1.Position:=ProgressBar1.Position+1;
        qryProdPS.Next;
    end;

    dbProdM.Refresh;
    ShowMessage('PS gerados com sucesso');
end;
end;

procedure TfrmProdPS.cmdRestauraClick(Sender: TObject);
var i,iMes,iAno,iCli,m,a,iRegiao:integer;
var iTitulo,iCliente:string;
begin
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    iCli:=dbClienteIniCliente.value;
    iCliente:=dbClienteIninome.value;

     with dmRelatorio do
     begin
         qryDemoPS.SQL.Clear;
         qryDemoPS.SQL.Text:= 'Select  * from AtendHPS, Hospital '+
                                 'where AtendHPS.Hospital=Hospital.Hospital and '+
                                 '      AtendHPS.Cliente=:iCliente and '+
                                 '      AtendHPS.MesCompetencia=:Mes and '+
                                 '      AtendHPS.AnoCompetencia=:Ano '+
                                 'order by AtendHPS.Cliente,AtendHPS.Medico,AtendHPS.Enfermeiro,Nome ';

         qryDemoPS.ParamByName('Ano').asInteger:=iAno;
         qryDemoPS.ParamByName('Mes').asInteger:=iMes;
         qryDemoPS.ParamByName('iCliente').value:=iCli;

         qryDemoPS.Open;
         if qryDemoPS.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDemoPS.Close;
            abort;
         end;

         frmMenu.RvBBAuditoria.SetParam('Titulo','Produtividade PS/AMB');

         frmMenu.RvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno));
         frmMenu.rvBBAuditoria.SelectReport('relProdPS',true);
         frmMenu.rvBBAuditoria.Execute;
     end;

end;

procedure TfrmProdPS.BitBtn1Click(Sender: TObject);
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

    frmMenu.ExcelExport.Dataset:=qryVisita;      //nao tem %
    frmMenu.ExcelExport.ExcelVisible:=true;
    frmMenu.ExcelExport.ExportDataset;
    frmMenu.ExcelExport.Disconnect;
end;
end;

end.
