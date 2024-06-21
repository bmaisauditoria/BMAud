unit frmProdParciaisUnica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants,
  RpDefine, RpCon, RpConDS;

type
  TfrmProdParcialUnica = class(TForm)
    Panel1: TPanel;
    cmdAtualiza: TBitBtn;
    qryParcial: TMSQuery;
    qryParcialcliente: TIntegerField;
    qryParcialhospital: TIntegerField;
    qryParcialpaciente: TIntegerField;
    qryParcialsenha: TStringField;
    qryParcialQtd: TIntegerField;
    qryParcialClienteNome: TStringField;
    qryParcialHospitalNome: TStringField;
    qryParcialPacienteNome: TStringField;
    qryProd: TMSQuery;
    qryProdCliente: TIntegerField;
    qryProdPaciente: TIntegerField;
    qryProdHospital: TIntegerField;
    qryProdMedico: TIntegerField;
    qryProdEnfermeiro: TIntegerField;
    qryProdMesCompetencia: TSmallintField;
    qryProdAnoCompetencia: TSmallintField;
    qryProdDataInternacao: TDateTimeField;
    qryProdServico: TStringField;
    qryProdServicoC: TStringField;
    qryProdProdutividade: TIntegerField;
    dsParcial: TDataSource;
    qryParcialProdutividade: TIntegerField;
    qryProdMedicoNome: TStringField;
    qryProdEnfermeiroNome: TStringField;
    qryProdSenha: TStringField;
    Label5: TLabel;
    cmbServico1: TDBLookupComboBox;
    DBText1: TDBText;
    dbServico1: TMSTable;
    dsServico1: TDataSource;
    dbServico1Servico: TStringField;
    dbServico1Nome: TStringField;
    dbServico1Vinculado: TStringField;
    cmdRestaura: TBitBtn;
    dbServico1Valorizado: TBooleanField;
    prgBar: TProgressBar;
    qryProdAtendimentoHI: TLargeintField;
    dbClienteIni: TMSTable;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    dsClienteIni: TDataSource;
    Label1: TLabel;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdAtualizaClick(Sender: TObject);
    procedure dbServico1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdRestauraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdParcialUnica: TfrmProdParcialUnica;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;

{$R *.DFM}

procedure TfrmProdParcialUnica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbServico1.Close;
    dbClienteIni.Close;
end;

procedure TfrmProdParcialUnica.FormShow(Sender: TObject);
var d,m,a:word;
begin
    dbServico1.Open;
    cmbServico1.KeyValue:='';
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

end;

procedure TfrmProdParcialUnica.cmdAtualizaClick(Sender: TObject);
var iCompetencia,iHospital,iServ1:string;
var iProd,iMes,iAno,i,iCliente:integer;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;

    iServ1:='';
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    iServ1:=cmbServico1.KeyValue;
    icliente:=cmpclienteIni.keyvalue;

    if frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[]) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;

    if iServ1='' then
    begin
        ShowMessage('Servico Primeira Parcial inválido');
        abort;
    end;

    i:=Application.MessageBox('Confirme a Atualização das Parciais','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    qryParcial.Close;
    qryParcial.SQL.Clear;
        qryParcial.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha, Produtividade, '+
                             '      count(AtendimentoHI) as Qtd '+
                             'from AtendHI '+
                             'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                             'full outer join HospitalPre on (AtendHI.Hospital=HospitalPre.Hospital) and  '+
                             '                               (AtendHI.Cliente=HospitalPre.Cliente)  '+
                             'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and '+
                             '      AtendHI.Cliente=:iCli and '+
                             '      Parcial=1  and Complemento=0 and '+
                             '      Servico<>'+QuotedStr('NP')+' and  '+
                             '      (HospitalPre.DG=0 or HospitalPre.DG is null)  '+
                             'group by AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha,Produtividade '+
                             'having count(AtendimentoHI)=1 '+
                             'order by AtendHI.Cliente, AtendHI.hospital, paciente, senha ';

    qryParcial.ParamByName('iMes').asinteger:=iMes;
    qryParcial.ParamByName('iAno').asinteger:=iAno;
    qryParcial.ParamByName('iCli').asinteger:=iCliente;
    qryParcial.Open;

    if qryParcial.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Parciais Unicas');
        abort;
    end;

    prgBar.Min:=0;
    prgBar.Max:=qryParcial.RecordCount;
    prgBar.Position:=0;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where Cliente=:iCli and (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and Parcial=1 '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iCli').asinteger:=dbClienteIniCliente.value;
    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.Open;

    qryParcial.First;
    while not qryParcial.eof do
    begin
        qryProd.First;
        if not qryProd.eof then
        begin
            qryProd.Edit;
            qryProdServico.value:=iServ1;
            qryProd.Post;
        end;

        qryParcial.Next;
        prgBar.Position:=prgBar.Position+1;
    end;
    prgBar.Position:=0;
    ShowMessage('Atualização efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

procedure TfrmProdParcialUnica.dbServico1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServico1Valorizado.Value=true);
end;

procedure TfrmProdParcialUnica.cmdRestauraClick(Sender: TObject);
var iProd,iMes,iAno,i,iCliente:integer;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;

    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    icliente:=cmpclienteIni.keyvalue;

    if frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[]) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;


    i:=Application.MessageBox('Confirme a Restauração das Parciais Cadastradas','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    qryParcial.Close;
    qryParcial.SQL.Clear;
    qryParcial.SQL.Text:='Select Cliente, Hospital, Paciente, Senha, Produtividade, '+
                         '       count(AtendimentoHI) as Qtd '+
                         'from AtendHI '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and '+
                         '      Parcial=1  and Complemento=0 and '+
                         '      Servico<>'+QuotedStr('NP')+' '+
                         'group by cliente, hospital, paciente, senha,Produtividade '+
                         'having count(AtendimentoHI)=1 '+
                         'order by cliente, hospital, paciente, senha ';

    qryParcial.ParamByName('iMes').asinteger:=iMes;
    qryParcial.ParamByName('iAno').asinteger:=iAno;
    qryParcial.Open;

    if qryParcial.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Parciais');
        abort;
    end;

    prgBar.Min:=0;
    prgBar.Max:=qryParcial.RecordCount;
    prgBar.Position:=0;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and Parcial=1 '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.Open;

    while not qryParcial.eof do
    begin
        qryProd.First;
        if not qryProd.eof then
        begin
            qryProd.Edit;
            qryProdServico.value:=qryProdServicoC.value;
            qryProd.Post;
        end;

        qryParcial.Next;
        prgBar.Position:=prgBar.Position+1;
    end;
    prgBar.Position:=0;
    ShowMessage('Restauração efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

end.
