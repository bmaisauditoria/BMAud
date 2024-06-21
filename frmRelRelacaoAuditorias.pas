unit frmRelRelacaoAuditorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, ExcelExport,
  Grids, DBGrids;

type
  TfrmRelRelacaoAuditoria = class(TForm)
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
    dbHospitalIni: TMSTable;
    dsHospitalIni: TDataSource;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    cmpHospitalIni: TDBLookupComboBox;
    Label5: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    chkHospital: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    rdgAnalise: TRadioGroup;
    BitBtn2: TBitBtn;
    rdgVisita: TRadioGroup;
    rdgInternacao: TRadioGroup;
    dbAtendHI: TMSTable;
    dbAtendHIVisita: TIntegerField;
    dbAtendHICliente: TIntegerField;
    rdgCid: TRadioGroup;
    rdgDiaria: TRadioGroup;
    Label3: TLabel;
    Edit3: TEdit;
    UpDown4: TUpDown;
    Edit4: TEdit;
    UpDown5: TUpDown;
    BitBtn1: TBitBtn;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    Label1: TLabel;
    rdgCFor: TRadioGroup;
    dbAtendHIAtendimentoHI: TLargeintField;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRelacaoAuditoria: TfrmRelRelacaoAuditoria;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelRelacaoAuditoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbClienteId.Close;
end;

procedure TfrmRelRelacaoAuditoria.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;

    dbClienteId.Open;
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelRelacaoAuditoria.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelRelacaoAuditoria.BitBtn2Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaV,iLinhaI,iLinhaQ,iLinhaD,iLinhaD1,iLinhaID,iLinhaF,titulo3:string;
var iClienteId:string;
begin
    iClienteIni:=dbClienteIniCliente.Value;
    iHospitalIni:=dbHospitalIniHospital.Value;
    iClienteID:=dbClienteIDID.value;
    iMes:=StrToInt(Edit1.Text);
    iAno:=StrToInt(Edit2.Text);
    iMesF:=StrToInt(Edit3.Text);
    iAnoF:=StrToInt(Edit4.Text);

    if iAnoF<iAno then
    begin
       ShowMessage('Ano final menor que inicial');
       abort;
    end;

    if (iAnoF=iAno) and (iMesF<iMes) then
    begin
       ShowMessage('Mes final menor que inicial');
       abort;
    end;

    iLinhaC:=' and AtendHI.Cliente='+IntToStr(iClienteIni)+' ';

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital='+IntToStr(iHospitalIni)+' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    case rdgVisita.ItemIndex of
    0:iLinhaV:=' and AtendHI.Visita=1 ';
    1:iLinhaV:=' and AtendHI.Visita=0 ';
    end;

    case rdgInternacao.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    end;

    case rdgDiaria.ItemIndex of
    0:iLinhaD:='and (AtendHI.DiasUti>0 or AtendHI.Semi>0) ';
    1:iLinhaD:='and (AtendHI.DiasUti=0 and AtendHI.Semi=0) ';
    2:iLinhaD:='';
    end;

    case rdgInternacao.ItemIndex of
    0:titulo3:='Internações Clínicas';
    1:titulo3:='Internações Cirurgicas';
    2:titulo3:='';
    end;

    case rdgDiaria.ItemIndex of
    0:titulo3:=titulo3+'  Diárias UTI/Semi';
    1:titulo3:=titulo3+'  Diárias Normais';
    2:titulo3:=titulo3+'';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
    end;

    iLinhaD1:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD1:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                 ' and   AtendHI.AnoCompetencia='+IntToStr(iAno)+')'
    else
    begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD1:=iLinhaD1+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                               ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD1:=iLinhaD1+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
    end;

    with dmRelatorio do
    begin
         qryEstatPaciente.SQL.Clear;
         qryEstatPaciente.SQL.Text:='Select * from AtendHI '+
                                    'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                    'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                    'where  ('+iLinhaD1+') '+
                                    iLinhaC+iLinhaH+iLinhaA+iLinhaV+iLinhaI+iLinhaQ+iLinhaD+iLinhaID+iLinhaF+
                                    'order by AtendHi.Cliente,Hospital.Nome,Pacientes.Nome,DataInternacao';

         qryEstatPaciente.Open;
         if qryEstatPaciente.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPaciente.Close;
            abort;
         end;

         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Controle de Visitas - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Controle de Visitas - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Controle de Visitas');
         end;

         case rdgVisita.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Somente Lançamentos com Visita');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Somente Lançamentos sem Visita');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo2','');
         end;

         frmMenu.rvBBAuditoria.SetParam('Titulo3',titulo3);
         dbItemHIDiagnostico.Open;

         case rdgCid.ItemIndex of
         0:frmMenu.rvBBAuditoria.SelectReport('relRelacaoAuditoria',true);
         1:frmMenu.rvBBAuditoria.SelectReport('relRelacaoAuditoriaCid',true);
         2:frmMenu.rvBBAuditoria.SelectReport('relRelacaoAuditoriaResumo',true);
         end;

         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelRelacaoAuditoria.BitBtn1Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaV,iLinhaI,iLinhaQ,iLinhaD,iLinhaD1,iLinhaID,
    iClienteID,iLinhaF,titulo3:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iClienteID:=dbClienteIDID.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     if iAnoF<iAno then
     begin
        ShowMessage('Ano final menor que inicial');
        abort;
     end;

     if (iAnoF=iAno) and (iMesF<iMes) then
     begin
        ShowMessage('Mes final menor que inicial');
        abort;
     end;

   iLinhaC:=' and AtendHI.Cliente='+IntToStr(iClienteIni)+' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital='+IntToStr(iHospitalIni)+' ';

        iLinhaC:=' and AtendHI.Cliente='+IntToStr(iClienteIni)+' ';

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    case rdgVisita.ItemIndex of
    0:iLinhaV:=' and AtendHI.Visita=1 ';
    1:iLinhaV:=' and AtendHI.Visita=0 ';
    end;

    case rdgInternacao.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    end;

    case rdgDiaria.ItemIndex of
    0:iLinhaD:='and (AtendHI.DiasUti>0 or AtendHI.Semi>0) ';
    1:iLinhaD:='and (AtendHI.DiasUti=0 and AtendHI.Semi=0) ';
    2:iLinhaD:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
    end;


    case rdgInternacao.ItemIndex of
    0:titulo3:='Internações Clínicas';
    1:titulo3:='Internações Cirurgicas';
    2:titulo3:='Internações Clínicas e Cirurgicas';
    end;

    case rdgDiaria.ItemIndex of
    0:titulo3:=titulo3+' - Diárias UTI/Semi';
    1:titulo3:=titulo3+' - Diárias Normais';
    2:titulo3:=titulo3+' - Diárias Normais/UTI/Semi';
    end;

    iLinhaD1:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD1:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                  ' and  AtendHI.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD1:=iLinhaD1+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                               ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD1:=iLinhaD1+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryEstatPaciente.SQL.Clear;
         qryEstatPaciente.SQL.Text:='Select * from AtendHI '+
                                    'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                    'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                    'where  '+iLinhaD1+iLinhaC+iLinhaH+iLinhaA+iLinhaV+
                                              iLinhaI+iLinhaQ+iLinhaD+iLinhaID+iLinhaF+
                                    'order by AtendHI.Cliente,Hospital.Nome,Pacientes.Nome,DataInternacao';

         qryEstatPaciente.Open;
         if qryEstatPaciente.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPaciente.Close;
            abort;
         end;
         dbItemHIDiagnostico.Open;
         qryEstatPaciente.Refresh;
         qryEstatPaciente.First;

         with frmMenu do
         begin
            qryEstatPacienteAtendHITexto.Index:=0;
            qryEstatPacienteCliente.Index:=1;
            qryEstatPacienteClienteNome.Index:=2;
            qryEstatPacienteSequencial.Index:=3;
            qryEstatPacienteCompFornecedor.Index:=4;
            qryEstatPacienteServico.Index:=5;
            qryEstatPacienteSenha.Index:=6;
            qryEstatPacienteCodigoPaciente.Index:=7;
            qryEstatPacienteCodigoPacienteok.Index:=8;
            qryEstatPacienteIDPaciente.Index:=9;
            qryEstatPacientePaciente.Index:=10;
            qryEstatPacienteNome.Index:=11;
            qryEstatPacienteAnoNascimento.Index:=12;
            qryEstatPacienteDataNascimento.Index:=13;
            qryEstatPacienteIdade.Index:=14;
            qryEstatPacienteUnidade.Index:=15;
            qryEstatPacienteRN.Index:=16;
            qryEstatPacienteHospital.Index:=17;
            qryEstatPacienteNome_1.Index:=18;
            qryEstatPacienteCodBradesco.Index:=19;
            qryEstatPacienteMedico.Index:=20;
            qryEstatPacienteMedicoNome.Index:=21;
            qryEstatPacienteEnfermeiro.Index:=22;
            qryEstatPacienteEnfermeiroNome.Index:=23;
            qryEstatPacienteMesCompetencia.Index:=24;
            qryEstatPacienteAnoCompetencia.Index:=25;
            qryEstatPacienteDataFechamento.Index:=26;
            qryEstatPacienteDataInternacao.Index:=27;
            qryEstatPacienteDataAlta.Index:=28;
            qryEstatPacienteDiarias.Index:=29;
            qryEstatPacienteDiariasLonga.Index:=30;
            qryEstatPacienteDiasUTI.Index:=31;
            qryEstatPacienteDiariasGlosadas.Index:=32;
            qryEstatPacienteDiariasCalculadas.Index:=33;
            qryEstatPacienteDiariasNaoProrroga.Index:=34;
            qryEstatPacienteValor.Index:=35;
            qryEstatPacienteValorGlosadoM.Index:=36;
            qryEstatPacienteValorGlosadoE.Index:=37;
            qryEstatPacienteValorGlosado.Index:=38;
            qryEstatPacienteValorPago.Index:=39;
            qryEstatPacienteVisita.Index:=40;
            qryEstatPacienteVisitaTexto.Index:=41;
            qryEstatPacienteInternacao.Index:=42;
            qryEstatPacienteInternacaoTexto.Index:=43;
            qryEstatPacienteCodAmb.Index:=44;
            qryEstatPacienteDescricaoAmb.Index:=45;
            qryEstatPacienteCodCid.Index:=46;
            qryEstatPacienteDescricaoCid.Index:=47;
            qryEstatPacienteApto.Index:=48;
            qryEstatPacienteEnfermaria.Index:=49;
            qryEstatPacienteSemi.Index:=50;
            qryEstatPacienteBercario.Index:=51;
            qryEstatPacienteDayClinicQtd.Index:=52;
            qryEstatPacienteIsolamento.Index:=53;
            qryEstatPacienteParcial.Index:=54;
            qryEstatPacienteParcialTexto.Index:=55;
            qryEstatPacienteNumeroParcial.Index:=56;
            qryEstatPacienteDataInicioP.Index:=57;
            qryEstatPacienteDataFimP.Index:=58;
            qryEstatPacienteComplemento.Index:=59;
            qryEstatPacienteComplementoTexto.Index:=60;
            qryEstatPacientePacote.Index:=61;
            qryEstatPacientePacoteTexto.Index:=62;
            qryEstatPacienteProdutividade.Index:=63;
            qryEstatPacienteDataInclusao_1.Index:=64;
            qryEstatPacienteDiariaEnf.Index:=65;
            qryEstatPacienteDiariaApto.Index:=66;
            qryEstatPacienteComplementoF.Index:=67;
            qryEstatPacienteUsuarioI.Index:=68;
            qryEstatPacienteUsuario_1.Index:=69;
            qryEstatPacienteAtendimentoHI.Index:=70;
            qryEstatPacienteNABradesco.Index:=71;
            qryEstatPacienteJustBradesco.Index:=72;
            qryEstatPacienteTratamento.Index:=73;
            qryEstatPacienteTratamentoTexto.Index:=74;
            qryEstatPacienteDataFimPCalculada.Index:=75;
            qryEstatPacienteDiariasP.Index:=76;

            ExcelExport.Dataset:=qryEstatPaciente;     //nao tem %
            ExcelExport.ExcelVisible:=true;
            ExcelExport.ExportDataset;
            ExcelExport.Disconnect;
            qryEstatPaciente.Close;
         end;

     end;
end;

procedure TfrmRelRelacaoAuditoria.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelRelacaoAuditoria.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelRelacaoAuditoria.BitBtn3Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaV,iLinhaI,iLinhaQ,iLinhaD,iLinhaD1,iLinhaID,
    iClienteID,iLinhaF,titulo3:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iClienteID:=dbClienteIDID.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     if iAnoF<iAno then
     begin
        ShowMessage('Ano final menor que inicial');
        abort;
     end;

     if (iAnoF=iAno) and (iMesF<iMes) then
     begin
        ShowMessage('Mes final menor que inicial');
        abort;
     end;

   iLinhaC:=' and AtendHI.Cliente='+IntToStr(iClienteIni)+' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital='+IntToStr(iHospitalIni)+' ';

        iLinhaC:=' and AtendHI.Cliente='+IntToStr(iClienteIni)+' ';

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    case rdgVisita.ItemIndex of
    0:iLinhaV:=' and AtendHI.Visita=1 ';
    1:iLinhaV:=' and AtendHI.Visita=0 ';
    end;

    case rdgInternacao.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    end;

    case rdgDiaria.ItemIndex of
    0:iLinhaD:='and (AtendHI.DiasUti>0 or AtendHI.Semi>0) ';
    1:iLinhaD:='and (AtendHI.DiasUti=0 and AtendHI.Semi=0) ';
    2:iLinhaD:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
    end;


    case rdgInternacao.ItemIndex of
    0:titulo3:='Internações Clínicas';
    1:titulo3:='Internações Cirurgicas';
    2:titulo3:='Internações Clínicas e Cirurgicas';
    end;

    case rdgDiaria.ItemIndex of
    0:titulo3:=titulo3+' - Diárias UTI/Semi';
    1:titulo3:=titulo3+' - Diárias Normais';
    2:titulo3:=titulo3+' - Diárias Normais/UTI/Semi';
    end;

    iLinhaD1:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD1:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                 ' and  AtendHI.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD1:=iLinhaD1+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                             ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD1:=iLinhaD1+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryEstatPacienteB.SQL.Clear;
         qryEstatPacienteB.SQL.Text:='Select * from Pacientes,AtendHI '+
                                    'where AtendHI.Paciente=Pacientes.Paciente and ('+
                                     iLinhaD1+') '+
                                     iLinhaC+iLinhaH+iLinhaA+iLinhaV+iLinhaI+iLinhaQ+iLinhaD+iLinhaID+iLinhaF+
                                    'order by AtendHI.Cliente,Hospital,Nome,DataInternacao';

         qryEstatPacienteB.Open;
         if qryEstatPacienteB.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPacienteB.Close;
            abort;
         end;
         dbItemHIDiagnostico.Open;
         qryEstatPacienteB.Refresh;
         qryEstatPacienteB.First;

         with frmMenu do
         begin
            ExcelExport.Dataset:=qryEstatPacienteB;  //nao tem %
            ExcelExport.ExcelVisible:=true;
            ExcelExport.ExportDataset;
            ExcelExport.Disconnect;
            qryEstatPacienteB.Close;
         end;
     end;

end;

end.
