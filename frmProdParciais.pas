unit frmProdParciais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants,
  RpDefine, RpCon, RpConDS, Grids, DBGrids, Math ;

type
  TfrmProdParcial = class(TForm)
    Panel1: TPanel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Label1: TLabel;
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
    dbServico1: TMSTable;
    dsServico1: TDataSource;
    dbServico1Servico: TStringField;
    dbServico1Nome: TStringField;
    dbServico1Vinculado: TStringField;
    cmdRestaura: TBitBtn;
    dbServico2: TMSTable;
    dsServico2: TDataSource;
    dbServico3: TMSTable;
    dsServico3: TDataSource;
    dbServico2Servico: TStringField;
    dbServico2Nome: TStringField;
    dbServico2Vinculado: TStringField;
    dbServico3Servico: TStringField;
    dbServico3Nome: TStringField;
    dbServico3Vinculado: TStringField;
    dbServico1Valorizado: TBooleanField;
    dbServico2Valorizado: TBooleanField;
    dbServico3Valorizado: TBooleanField;
    qryProdParcial: TWordField;
    qryProdAtendimentoHI: TLargeintField;
    chkHospital: TCheckBox;
    cmpHospitalIni: TDBLookupComboBox;
    cmpCodHospitalIni: TDBText;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    Label4: TLabel;
    Panel2: TPanel;
    cmbQtd: TEdit;
    UpDown1: TUpDown;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbServico3: TDBLookupComboBox;
    cmbServico2: TDBLookupComboBox;
    cmbServico1: TDBLookupComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    cmdAtualiza1: TBitBtn;
    prgBar: TProgressBar;
    Label6: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    lblLimite: TLabel;
    Label9: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    cmbQtd2L: TEdit;
    UpDown2: TUpDown;
    cmbServico6: TDBLookupComboBox;
    cmbServico5: TDBLookupComboBox;
    cmbServico4: TDBLookupComboBox;
    cmdAtualiza2: TBitBtn;
    prgBar2: TProgressBar;
    cmbLimite: TEdit;
    UpDown3: TUpDown;
    Label10: TLabel;
    Label11: TLabel;
    UpDown4: TUpDown;
    cmbQtd1L: TEdit;
    Label12: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    cmbQtd1A: TEdit;
    UpDown5: TUpDown;
    cmbQtd2A: TEdit;
    UpDown6: TUpDown;
    Label13: TLabel;
    cmbServico9: TDBLookupComboBox;
    cmbServico8: TDBLookupComboBox;
    cmbServico7: TDBLookupComboBox;
    Label14: TLabel;
    dbServico4: TMSTable;
    dbServico5: TMSTable;
    dsServico5: TDataSource;
    dbServico6: TMSTable;
    dsServico6: TDataSource;
    dsServico4: TDataSource;
    dbServico7: TMSTable;
    dbServico8: TMSTable;
    dsServico8: TDataSource;
    dbServico9: TMSTable;
    dsServico9: TDataSource;
    dsServico7: TDataSource;
    dbServico4Servico: TStringField;
    dbServico4Nome: TStringField;
    dbServico4Valorizado: TBooleanField;
    dbServico4Valor: TCurrencyField;
    dbServico4Vinculado: TStringField;
    dbServico5Servico: TStringField;
    dbServico5Nome: TStringField;
    dbServico5Valorizado: TBooleanField;
    dbServico5Valor: TCurrencyField;
    dbServico5Vinculado: TStringField;
    qryProdDataAlta: TDateTimeField;
    dsProd: TDataSource;
    prgBar3: TProgressBar;
    Label16: TLabel;
    Label17: TLabel;
    lblAcima: TLabel;
    dbServico6Servico: TStringField;
    dbServico6Nome: TStringField;
    dbServico6Valorizado: TBooleanField;
    dbServico6Valor: TCurrencyField;
    dbServico6Vinculado: TStringField;
    dbServico7Servico: TStringField;
    dbServico7Nome: TStringField;
    dbServico7Valorizado: TBooleanField;
    dbServico7Valor: TCurrencyField;
    dbServico7Vinculado: TStringField;
    dbServico8Servico: TStringField;
    dbServico8Nome: TStringField;
    dbServico8Valorizado: TBooleanField;
    dbServico8Valor: TCurrencyField;
    dbServico8Vinculado: TStringField;
    dbServico9Servico: TStringField;
    dbServico9Nome: TStringField;
    dbServico9Valorizado: TBooleanField;
    dbServico9Valor: TCurrencyField;
    dbServico9Vinculado: TStringField;
    qryProdDiarias: TFloatField;
    qryParcialDiarias: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdAtualiza1Click(Sender: TObject);
    procedure dbServico1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbServico2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbServico3FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdRestauraClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdAtualiza2Click(Sender: TObject);
    procedure cmbQtd2LChange(Sender: TObject);
    procedure cmbQtd2AChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdParcial: TfrmProdParcial;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades, DateUtils;

{$R *.DFM}

procedure TfrmProdParcial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospital.Close;
    dbServico1.Close;
    dbServico2.Close;
    dbServico3.Close;
end;

procedure TfrmProdParcial.FormShow(Sender: TObject);
var d,m,a:word;
begin
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
    dbHospital.Open;
    cmpHospitalIni.KeyValue:=dbHospitalHospital.value;
    dbServico1.Open;
    dbServico1.Locate('Servico','PP1',[]);
    cmbServico1.KeyValue:=dbServico1Servico.value;

    dbServico2.Open;
    dbServico2.Locate('Servico','PPD',[]);
    cmbServico2.KeyValue:=dbServico2Servico.value;

    dbServico3.Open;
    dbServico3.Locate('Servico','PNP',[]);
    cmbServico3.KeyValue:=dbServico3Servico.value;

    dbServico4.Open;
    dbServico4.Locate('Servico','PP1',[]);
    cmbServico4.KeyValue:=dbServico4Servico.value;

    dbServico5.Open;
    dbServico5.Locate('Servico','PPD',[]);
    cmbServico5.KeyValue:=dbServico5Servico.value;

    dbServico6.Open;
    dbServico6.Locate('Servico','PNP',[]);
    cmbServico6.KeyValue:=dbServico6Servico.value;

    dbServico7.Open;
    dbServico7.Locate('Servico','PP1',[]);
    cmbServico7.KeyValue:=dbServico7Servico.value;

    dbServico8.Open;
    dbServico8.Locate('Servico','PPD',[]);
    cmbServico8.KeyValue:=dbServico8Servico.value;

    dbServico9.Open;
    dbServico9.Locate('Servico','PNP',[]);
    cmbServico9.KeyValue:=dbServico9Servico.value;


end;

procedure TfrmProdParcial.cmdAtualiza1Click(Sender: TObject);
var iCompetencia,iHospital,iServ1,iServ2,iServ3,iLinhaH:string;
var iProd,iMes,iAno,iQtd,iHosp,i,icliente:integer;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;

    iServ1:='';
    iServ2:='';
    iServ3:='';
    iHosp:=dbHospitalHospital.Value;
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    iServ1:=cmbServico1.KeyValue;
    iServ2:=cmbServico2.KeyValue;
    iServ3:=cmbServico3.KeyValue;
    iQtd:=StrToInt(cmbQtd.Text);
    icliente:=cmpclienteIni.KeyValue;

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
    if iServ2='' then
    begin
        ShowMessage('Servico Segunda Parcial inválido');
        abort;
    end;

    if iQtd<=0 then
    begin
        ShowMessage('Qtd Segunda Parcial inválida');
        abort;
    end;

    if iServ3='' then
    begin
        ShowMessage('Servico Demais Parciais inválido');
        abort;
    end;
    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:iHospIni ';


     i:=Application.MessageBox('Confirme a Atualização das Parciais','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    qryParcial.Close;
    qryParcial.SQL.Clear;
    qryParcial.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha, Produtividade, '+
                         '       count(AtendimentoHI) as Qtd, sum(Diarias) as Diarias '+
                         'from AtendHI '+
                         'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                         'full outer join HospitalPre on (AtendHI.Hospital=HospitalPre.Hospital) and  '+
                         '                          (AtendHI.Cliente=HospitalPre.Cliente)  '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (AtendHI.Cliente=:iCli)  and '+
                         '      Complemento=0 and Servico<>'+QuotedStr('NP')+iLinhaH+
                         '      and (HospitalPre.DG=0 or HospitalPre.DG is null)  '+
                         'group by AtendHI.Cliente, AtendHI.hospital, paciente, senha,Produtividade '+
                         'having count(AtendimentoHI)>1 '+
                         'order by AtendHI.Cliente, AtendHI.hospital, paciente, senha ';

    qryParcial.ParamByName('iMes').asinteger:=iMes;
    qryParcial.ParamByName('iAno').asinteger:=iAno;
    qryParcial.ParamByName('iCli').asinteger:=icliente;
    if not chkHospital.Checked then
         qryParcial.ParamByName('iHospIni').asinteger:=iHosp;

    qryParcial.Open;

    if qryParcial.RecordCount=0 then
    begin
        ShowMessage('Competência não possui Parciais');
        abort;
    end;

    prgBar.Min:=0;
    prgBar.Max:=qryParcial.RecordCount;
    prgBar.Position:=0;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and Cliente=:iCli '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.ParamByName('iCli').asinteger:=dbClienteIniCliente.value;
    qryProd.Open;

    qryParcial.First;
    while not qryParcial.eof do
    begin
        qryProd.First;
        while not qryProd.eof do
        begin
            qryProd.Edit;
            qryProdServico.value:=iServ1;
            qryProdParcial.value:=1;
            qryProd.Post;
            qryProd.Next;

            i:=0;
            while (not qryProd.eof) and (i<iQtd) do
            begin
                qryProd.Edit;
                qryProdServico.value:=iServ2;
                qryProdParcial.value:=1;
                qryProd.Post;
                qryProd.Next;
                i:=i+1;
            end;

            while not qryProd.eof do
            begin
                qryProd.Edit;
                qryProdServico.value:=iServ3;
                qryProdParcial.value:=1;
                qryProd.Post;
                qryProd.Next;
            end;
        end;
        qryParcial.Next;
        prgBar.Position:=prgBar.Position+1;
    end;
    prgBar.Position:=0;
    ShowMessage('Atualização efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

procedure TfrmProdParcial.dbServico1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServico1Valorizado.Value=true);
end;

procedure TfrmProdParcial.dbServico2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServico2Valorizado.Value=true);
end;

procedure TfrmProdParcial.dbServico3FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServico3Valorizado.Value=true);
end;

procedure TfrmProdParcial.cmdRestauraClick(Sender: TObject);
var iProd,iMes,iAno,iHosp,i,icliente:integer;
var iLinhaH:string;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    iHosp:=dbHospitalHospital.Value;
    iCliente:=cmpClienteINi.KeyValue;

    if frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[]) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;

    i:=Application.MessageBox('Confirme a Restauração das Parciais Cadastradas','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and (AtendHI.Hospital=:iHospIni) ';

    qryParcial.Close;
    qryParcial.SQL.Clear;

    qryParcial.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha, Produtividade, '+
                         '       count(AtendimentoHI) as Qtd, sum(Diarias) as Diarias '+
                         'from AtendHI '+
                         'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                         'full outer join HospitalPre on (AtendHI.Hospital=HospitalPre.Hospital) and  '+
                         '                               (AtendHI.Cliente=HospitalPre.Cliente)  '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (AtendHI.Cliente=:iCli)  and '+
                         '      Complemento=0 and Servico<>'+QuotedStr('NP')+iLinhaH+
                         '      and (HospitalPre.DG=0 or HospitalPre.DG is null)  '+
                         'group by AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha,Produtividade '+
                         'having count(AtendimentoHI)>1 '+
                         'order by AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha ';

    qryParcial.ParamByName('iMes').asinteger:=iMes;
    qryParcial.ParamByName('iAno').asinteger:=iAno;
    qryParcial.ParamByName('iCli').asinteger:=icliente;
    if not chkHospital.Checked then
         qryParcial.ParamByName('iHospIni').asinteger:=iHosp;

    qryParcial.Open;

    if qryParcial.RecordCount=0 then
    begin
        ShowMessage('Competência não possui Parciais');
        abort;
    end;

    prgBar3.Min:=0;
    prgBar3.Max:=qryParcial.RecordCount;
    prgBar3.Position:=0;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and Cliente=:iCli '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.ParamByName('iCli').asinteger:=icliente;
    qryProd.Open;

    qryParcial.First;
    while not qryParcial.eof do
    begin
        qryProd.First;
        while not qryProd.eof do
        begin
            qryProd.Edit;
            qryProdServico.value:=qryProdServicoC.value;
            qryProd.Post;
            qryProd.Next;
        end;
        qryParcial.Next;
        prgBar3.Position:=prgBar3.Position+1;
    end;
    prgBar3.Position:=0;
    ShowMessage('Restauração efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

procedure TfrmProdParcial.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospitalIni.Visible:=false;
       cmpCodHospitalIni.visible:=false;
    end
    else
    begin
       cmpHospitalIni.Visible:=true;
       cmpCodHospitalIni.Visible:=true;
    end;
end;

procedure TfrmProdParcial.cmdAtualiza2Click(Sender: TObject);
var iCompetencia,iHospital,iServ4,iServ5,iServ6,iServ7,iServ8,iServ9,iLinhaH:string;
var iProd,iMes,iAno,iQtd1L,iQtd2L,iQtd1A,iQtd2A,iHosp,iLimite,i,iDiarias,iCliente:integer;
var iDataIni,iDataFim:TDate;
var iQtd2LT,iQtd2AT:variant;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    iCliente:=cmpClienteIni.keyvalue;
    iServ4:='';
    iServ5:='';
    iServ6:='';
    iServ7:='';
    iServ8:='';
    iServ9:='';
    iHosp:=dbHospitalHospital.Value;
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    iServ4:=cmbServico4.KeyValue;
    iServ5:=cmbServico5.KeyValue;
    iServ6:=cmbServico6.KeyValue;
    iServ7:=cmbServico7.KeyValue;
    iServ8:=cmbServico8.KeyValue;
    iServ9:=cmbServico9.KeyValue;
    iQtd1L:=StrToInt(cmbQtd1L.Text);
    iQtd2L:=StrToInt(cmbQtd2L.Text);
    iQtd1A:=StrToInt(cmbQtd1A.Text);
    iQtd2A:=StrToInt(cmbQtd2A.Text);
    iLimite:=StrToINt(cmbLimite.Text);

    iQtd2L:=StrToInt(cmbQtd2L.Text);
    iLimite:=StrToINt(cmbLimite.Text);
    iQtd2LT:=RoundTo(iLimite/iQtd2L,0)-iQtd1L;

    iQtd2A:=StrToInt(cmbQtd2A.Text);
    iLimite:=StrToINt(cmbLimite.Text);

    if frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[]) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;

    if iServ4='' then
    begin
        ShowMessage('Serviço Limite - Primeira Parcial inválido');
        abort;
    end;
    if iServ5='' then
    begin
        ShowMessage('Serviço Limite - Segunda Parcial inválido');
        abort;
    end;

    if iQtd1L<=0 then
    begin
        ShowMessage('Qtd Primeira Parcial - Limite inválido');
        abort;
    end;

    if iQtd2L<=0 then
    begin
        ShowMessage('Qtd Segunda Parcial - Limite inválido');
        abort;
    end;

    if iServ6='' then
    begin
        ShowMessage('Servico Demais Parciais - Limite inválido');
        abort;
    end;

    if iServ7='' then
    begin
        ShowMessage('Serviço acima Limite - Primeira Parcial inválido');
        abort;
    end;
    if iServ8='' then
    begin
        ShowMessage('Serviço acima Limite - Segunda Parcial inválido');
        abort;
    end;

    if iQtd1A<=0 then
    begin
        ShowMessage('Qtd Primeira Parcial - Acima Limite inválido');
        abort;
    end;

    if iServ9='' then
    begin
        ShowMessage('Servico Demais Parciais - Acima Limite inválido');
        abort;
    end;

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:iHospIni ';


    i:=Application.MessageBox('Confirme a Atualização das Parciais','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    qryParcial.Close;
    qryParcial.SQL.Clear;

    qryParcial.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, Paciente, Senha, Produtividade, '+
                         '       count(AtendimentoHI) as Qtd, sum(Diarias) as Diarias '+
                         'from AtendHI '+
                         'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                         'full outer join HospitalPre on (AtendHI.Hospital=HospitalPre.Hospital) and  '+
                         '                               (AtendHI.Cliente=HospitalPre.Cliente)  '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (AtendHI.Cliente=:iCli)  and '+
                         '      Complemento=0 and Servico<>'+QuotedStr('NP')+iLinhaH+
                         '      and (HospitalPre.DG=0 or HospitalPre.DG is null)  '+
                         'group by AtendHI.Cliente, AtendHI.Hospital, paciente, senha,Produtividade '+
                         'having count(AtendimentoHI)>1 '+
                         'order by AtendHI.cliente, AtendHI.Hospital, paciente, senha ';


    qryParcial.ParamByName('iMes').asinteger:=iMes;
    qryParcial.ParamByName('iAno').asinteger:=iAno;
    qryParcial.ParamByName('iCli').asinteger:=iCliente;
    if not chkHospital.Checked then
         qryParcial.ParamByName('iHospIni').asinteger:=iHosp;

    qryParcial.Open;

    if qryParcial.RecordCount=0 then
    begin
        ShowMessage('Competência não possui Parciais');
        abort;
    end;

    prgBar2.Min:=0;
    prgBar2.Max:=qryParcial.RecordCount;
    prgBar2.Position:=0;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and Cliente=:iCli and  '+
                      '       Complemento=0 and Servico<>'+QuotedStr('NP')+' '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.ParamByName('iCli').asinteger:=dbClienteIniCliente.value;
    qryProd.Open;

    qryParcial.First;
    while not qryParcial.eof do
    begin
        iDiarias:=qryParcialDiarias.asinteger;
        qryProd.First;
        while not qryProd.eof do
        begin
            if iDiarias<=iLimite then
            begin
                i:=0;
                while (not qryProd.eof) and (i<iQtd1L) do
                begin
                    qryProd.Edit;
                    qryProdServico.value:=iServ4;
                    qryProdParcial.value:=1;
                    qryProd.Post;
                    qryProd.Next;
                    i:=i+1;
                end;

                iQtd2LT:=Int(iDiarias/iQtd2L)-iQtd1L;
                i:=0;
                while (not qryProd.eof) and (i<iQtd2LT) do
                begin
                    qryProd.Edit;
                    qryProdServico.value:=iServ5;
                    qryProdParcial.value:=1;
                    qryProd.Post;
                    qryProd.Next;
                    i:=i+1;
                end;

                while not qryProd.eof do
                begin
                    qryProd.Edit;
                    qryProdServico.value:=iServ6;
                    qryProdParcial.value:=1;
                    qryProd.Post;
                    qryProd.Next;
                end;
            end
            else
            begin
                i:=0;
                while (not qryProd.eof) and (i<iQtd1A) do
                begin
                    qryProd.Edit;
                    qryProdServico.value:=iServ7;
                    qryProdParcial.value:=1;
                    qryProd.Post;
                    qryProd.Next;
                    i:=i+1;
                end;

                iQtd2AT:=Int(iDiarias/iQtd2A)-iQtd1A;
                i:=0;
                while (not qryProd.eof) and (i<iQtd2AT) do
                begin
                    qryProd.Edit;
                    qryProdServico.value:=iServ8;
                    qryProdParcial.value:=1;
                    qryProd.Post;
                    qryProd.Next;
                    i:=i+1;
                end;

                while not qryProd.eof do
                begin
                    qryProd.Edit;
                    qryProdServico.value:=iServ9;
                    qryProdParcial.value:=1;
                    qryProd.Post;
                    qryProd.Next;
                end;
            end;
        end;
        qryParcial.Next;
        prgBar2.Position:=prgBar2.Position+1;
    end;
    prgBar.Position:=0;
    prgBar2.Position:=0;
    ShowMessage('Atualização efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

procedure TfrmProdParcial.cmbQtd2LChange(Sender: TObject);
var iLimite,iQtd2L,iQtd1L:integer;
var iQtd2:variant;
begin
    iQtd1L:=StrToInt(cmbQtd1L.Text);
    iQtd2L:=StrToInt(cmbQtd2L.Text);
    iLimite:=StrToINt(cmbLimite.Text);
    iQtd2:=RoundTo(iLimite/iQtd2L,0);
    lblLimite.Caption:='= x -'+VartoStr(iQtd1l)+' Seguintes';

end;

procedure TfrmProdParcial.cmbQtd2AChange(Sender: TObject);
var iLimite,iQtd2A,iQtd1A:integer;
var iQtd2:variant;
begin
    iQtd1A:=StrToInt(cmbQtd1A.Text);
    iQtd2A:=StrToInt(cmbQtd2A.Text);
    iLimite:=StrToINt(cmbLimite.Text);
    iQtd2:=RoundTo(iLimite/iQtd2A,0);
    lblAcima.Caption:='= x -'+VartoStr(iQtd1A)+' Seguintes';

end;

end.
