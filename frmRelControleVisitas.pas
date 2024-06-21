unit frmRelControleVisitas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelControleVisita = class(TForm)
    dbHospitalIni: TMSTable;
    dsHospitalIni: TDataSource;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    cmdRel: TBitBtn;
    BitBtn1: TBitBtn;
    dbAtendHI: TMSTable;
    dbAtendHIVisita: TIntegerField;
    dbAtendHICliente: TIntegerField;
    dbAtendHIAtendimentoHI: TIntegerField;
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
    Label5: TLabel;
    cmpCodClienteIni: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    cmpHospitalIni: TDBLookupComboBox;
    cmpClienteIni: TDBLookupComboBox;
    chkCliente: TCheckBox;
    chkHospital: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    rdgAnalise: TRadioGroup;
    rdgVisita: TRadioGroup;
    rdgInternacao: TRadioGroup;
    ProgressBar1: TProgressBar;
    rdgAmb: TRadioGroup;
    cmpInternacao: TEdit;
    UpDown3: TUpDown;
    Label3: TLabel;
    Edit3: TEdit;
    UpDown4: TUpDown;
    Edit4: TEdit;
    UpDown5: TUpDown;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    rdgServico: TRadioGroup;
    cmdExcel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure rdgServicoClick(Sender: TObject);
    procedure cmdExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelControleVisita: TfrmRelControleVisita;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelControleVisita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
end;

procedure TfrmRelControleVisita.FormShow(Sender: TObject);
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

    ProgressBar1.Position:=0
end;

procedure TfrmRelControleVisita.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelControleVisita.cmdRelClick(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaV,iLinhaI,iLinhaQ,iLinhaD,iCompetencia,titulo3:string;
var iDataIni:TDate;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
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

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

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

    if StrToInt(cmpInternacao.Text)=0 then
       iLinhaQ:=''
    else
       iLinhaQ:=' and AtendHI.Diarias>='+Trim(cmpInternacao.Text)+' ';

    case rdgInternacao.ItemIndex of
    0:titulo3:='Internações Clínicas';
    1:titulo3:='Internações Cirurgicas';
    end;

    if StrToInt(cmpInternacao.Text)>0 then
       if titulo3<>'' then
           titulo3:=titulo3+' - No.de Internações '+Trim(cmpInternacao.Text)+' ou mais'
       else
           titulo3:='No.de Internações '+Trim(cmpInternacao.Text)+' ou mais';

    iLinhaD:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                 ' and  AtendHI.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                             ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryEstatPaciente.SQL.Clear;
         if rdgServico.ItemIndex=1 then     //Todos os Servicos
         begin
             qryEstatPaciente.SQL.Text:='Select * from AtendHI '+
                                        'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                        'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                        'where AtendHI.Complemento=0 and ('+iLinhaD+') '+
                                              iLinhaC+iLinhaH+iLinhaA+iLinhaV+iLinhaI+iLinhaQ+
                                        'order by AtendHI.Cliente,Hospital.Nome,Pacientes.Nome,DataInternacao';
         end
         else                            // Somente serviços de visita
         begin
             qryEstatPaciente.SQL.Text:='Select * from AtendHI '+
                                        'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                        'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                         'where ((AtendHI.Servico='+QuotedStr('V')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('VL')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('VA')+')) and  '+
                                              iLinhaD+iLinhaC+iLinhaH+iLinhaA+iLinhaV+iLinhaI+iLinhaQ+
                                        'order by AtendHI.Cliente,Hospital.Nome,Pacientes.Nome,DataInternacao';
         end;
         if not chkCliente.Checked then
         qryEstatPaciente.ParamByName('CliIni').Value:=iClienteIni;

         if not chkHospital.Checked then
             qryEstatPaciente.ParamByName('HospIni').Value:=iHospitalIni;

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

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo','Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo','Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo','');
         end;

         case rdgServico.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo','Controle de Prorrogações');
         1:case rdgAnalise.ItemIndex of
           0:frmMenu.rvBBAuditoria.SetParam('Titulo','Controle de Visitas - Pré-Análise Hospital');
           1:frmMenu.rvBBAuditoria.SetParam('Titulo','Controle de Visitas - Pos-Análise Hospital');
           2:frmMenu.rvBBAuditoria.SetParam('Titulo','');
           end;
         end;

         case rdgVisita.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Somente Lançamentos com Visita');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Somente Lançamentos sem Visita');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo2','');
         end;

         frmMenu.rvBBAuditoria.SetParam('Titulo3',titulo3);
         dbItemHIDiagnostico.Open;

         if cmdExcel.Tag=1 then
         begin
            qryEstatPacienteMesCompetencia.Index:=0;
            qryEstatPacienteAnoCompetencia.Index:=1;
            qryEstatPacienteCliente.Index:=2;
            qryEstatPacienteClienteNome.Index:=3;
            qryEstatPacienteHospital.Index:=4;
            qryEstatPacienteNome_1.Index:=5;
            qryEstatPacienteAtendHITexto.Index:=6;
            qryEstatPacienteServico.Index:=7;
            qryEstatPacienteSenha.Index:=8;
            qryEstatPacientePaciente.Index:=9;
            qryEstatPacienteCodigoPaciente.Index:=10;
            qryEstatPacienteNome.Index:=11;
            qryEstatPacienteSequencial.Index:=12;
            qryEstatPacienteCodigoPacienteok.Index:=13;
            qryEstatPacienteDataInternacao.Index:=14;
            qryEstatPacienteDataAlta.Index:=15;
            qryEstatPacienteNumeroParcial.Index:=16;
            qryEstatPacienteDataInicioP.Index:=17;
            qryEstatPacienteDataFimP.Index:=18;
            qryEstatPacienteDataFimPCalculada.Index:=19;
            qryEstatPacienteDiariasP.Index:=20;
            qryEstatPacienteCodAmb.Index:=21;
            qryEstatPacienteDescricaoAmb.Index:=22;
            qryEstatPacienteCodCid.Index:=23;
            qryEstatPacienteDescricaoCid.Index:=24;
            qryEstatPacienteInternacaoTexto.Index:=25;
            qryEstatPacienteTratamentoTexto.Index:=26;
            qryEstatPacienteComplemento.Index:=27;
            qryEstatPacienteCompFornecedor.Index:=28;
            qryEstatPacienteIDPaciente.Index:=29;
            qryEstatPacienteAnoNascimento.Index:=30;
            qryEstatPacienteDataNascimento.Index:=31;
            qryEstatPacienteIdade.Index:=32;
            qryEstatPacienteUnidade.Index:=33;
            qryEstatPacienteRN.Index:=34;
            qryEstatPacienteCodBradesco.Index:=35;
            qryEstatPacienteMedico.Index:=36;
            qryEstatPacienteMedicoNome.Index:=37;
            qryEstatPacienteEnfermeiro.Index:=38;
            qryEstatPacienteEnfermeiroNome.Index:=39;
            qryEstatPacienteDataFechamento.Index:=40;
            qryEstatPacienteDiarias.Index:=41;
            qryEstatPacienteDiariasLonga.Index:=42;
            qryEstatPacienteDiasUTI.Index:=43;
            qryEstatPacienteDiariasGlosadas.Index:=44;
            qryEstatPacienteDiariasCalculadas.Index:=45;
            qryEstatPacienteDiariasNaoProrroga.Index:=46;
            qryEstatPacienteValor.Index:=47;
            qryEstatPacienteValorGlosadoM.Index:=48;
            qryEstatPacienteValorGlosadoE.Index:=49;
            qryEstatPacienteValorGlosado.Index:=50;
            qryEstatPacienteValorPago.Index:=51;
            qryEstatPacienteVisita.Index:=52;
            qryEstatPacienteVisitaTexto.Index:=53;
            qryEstatPacienteInternacao.Index:=54;
            qryEstatPacienteApto.Index:=55;
            qryEstatPacienteEnfermaria.Index:=56;
            qryEstatPacienteSemi.Index:=57;
            qryEstatPacienteBercario.Index:=58;
            qryEstatPacienteDayClinicQtd.Index:=59;
            qryEstatPacienteIsolamento.Index:=60;
            qryEstatPacienteParcial.Index:=61;
            qryEstatPacienteParcialTexto.Index:=62;
            qryEstatPacienteComplementoTexto.Index:=63;
            qryEstatPacientePacote.Index:=64;
            qryEstatPacientePacoteTexto.Index:=65;
            qryEstatPacienteProdutividade.Index:=66;
            qryEstatPacienteDataInclusao_1.Index:=67;
            qryEstatPacienteDiariaEnf.Index:=68;
            qryEstatPacienteDiariaApto.Index:=69;
            qryEstatPacienteComplementoF.Index:=70;
            qryEstatPacienteUsuarioI.Index:=71;
            qryEstatPacienteUsuario_1.Index:=72;
            qryEstatPacienteAtendimentoHI.Index:=73;
            qryEstatPacienteNABradesco.Index:=74;
            qryEstatPacienteJustBradesco.Index:=75;
            qryEstatPacienteTratamento.Index:=76;

            frmMenu.ExcelExport.ExcelVisible:=true;
            frmMenu.ExcelExport.Dataset:=qryEstatPaciente;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
            qryEstatPaciente.Close;
            cmdExcel.Tag:=0;
         end
         else
         begin
             case rdgServico.ItemIndex of
             0:frmMenu.rvBBAuditoria.SelectReport('relControleVisitaServico',true);
             1:case rdgAmb.ItemIndex of
                0:frmMenu.rvBBAuditoria.SelectReport('relControleVisita',true);
                1:frmMenu.rvBBAuditoria.SelectReport('relControleVisitaAmb',true);
                end;
            end;
            frmMenu.rvBBAuditoria.Execute;
        end;
     end;

end;

procedure TfrmRelControleVisita.BitBtn1Click(Sender: TObject);
var iResultado:integer;
var iHospitalIni,iClienteIni:integer;
var iMes,iAno:integer;
var iLinhaH,iLInhaC:string;
begin
     iResultado:=Application.MessageBox('Confirme a atulização de Visitas para o Cliente/Hospital/Competencia selecionado'+
                                         #13+'Serão alterados os capeantes com 2 ou mais diarias e Internação Clinica e'+
                                         #13+'Capeantes com 4 ou mais diarias e Internação Cirurgica',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

     with dmRelatorio do
     begin
         qryEstatPaciente.SQL.Clear;
         qryEstatPaciente.SQL.Text:='Select * from AtendHI,Pacientes '+
                                'where AtendHI.Paciente=Pacientes.Paciente and '+
                                '      AtendHI.MesCompetencia=:Mes and '+
                                '      AtendHI.AnoCompetencia=:Ano and '+
                                '      AtendHI.Complemento=false and '+
                                '      AtendHI.Diarias>=2 and '+
                                '      AtendHI.Internacao="C" '+
                                iLinhaC+iLinhaH+
                                'order by AtendimentoHI,Cliente,Hospital';

         if not chkCliente.Checked then
         qryEstatPaciente.ParamByName('CliIni').Value:=iClienteIni;

         if not chkHospital.Checked then
             qryEstatPaciente.ParamByName('HospIni').Value:=iHospitalIni;

         qryEstatPaciente.ParamByName('Mes').Value:=iMes;
         qryEstatPaciente.ParamByName('Ano').Value:=iAno;

         qryEstatPaciente.Open;
         if qryEstatPaciente.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser alterada');
            qryEstatPaciente.Close;
            abort;
         end;
         dbAtendHI.Open;
         ProgressBar1.Min:=0;
         ProgressBar1.Max:=qryEstatPaciente.RecordCount;
         ProgressBar1.Position:=0;
         qryEstatPaciente.First;
         while not qryEstatPaciente.eof do
         begin
            if dbAtendHI.Locate('AtendimentoHI;Cliente',VarArrayof([qryEstatPacienteAtendimentoHI.value,
                                 qryEstatPacienteCliente.value]),[]) then
            begin
               if dbAtendHIVisita.value=0 then
               begin
                    dbAtendHI.Edit;
                    dbAtendHIVisita.value:=1;
                    dbAtendHI.Post;
               end;
            end;
            qryEstatPaciente.Next;
            ProgressBar1.Position:=ProgressBar1.Position+1;
         end;

         qryEstatPaciente.Close;
         qryEstatPaciente.SQL.Clear;
         qryEstatPaciente.SQL.Text:='Select * from AtendHI,Pacientes '+
                                    'where AtendHI.Paciente=Pacientes.Paciente and '+
                                    '      AtendHI.MesCompetencia=:Mes and '+
                                    '      AtendHI.AnoCompetencia=:Ano and '+
                                    '      AtendHI.Complemento=false and '+
                                '      AtendHI.Diarias>=4 and '+
                                '      AtendHI.Internacao="R" '+
                                iLinhaC+iLinhaH+
                                'order by AtendimentoHI,Cliente,Hospital';

         if not chkCliente.Checked then
         qryEstatPaciente.ParamByName('CliIni').Value:=iClienteIni;

         if not chkHospital.Checked then
             qryEstatPaciente.ParamByName('HospIni').Value:=iHospitalIni;

         qryEstatPaciente.ParamByName('Mes').Value:=iMes;
         qryEstatPaciente.ParamByName('Ano').Value:=iAno;

         qryEstatPaciente.Open;
         if qryEstatPaciente.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser alterada');
            qryEstatPaciente.Close;
            abort;
         end;
         dbAtendHI.Open;
         ProgressBar1.Min:=0;
         ProgressBar1.Max:=qryEstatPaciente.RecordCount;
         ProgressBar1.Position:=0;
         qryEstatPaciente.First;
         while not qryEstatPaciente.eof do
         begin
            if dbAtendHI.Locate('AtendimentoHI;Cliente',VarArrayof([qryEstatPacienteAtendimentoHI.value,
                                 qryEstatPacienteCliente.value]),[]) then
            begin
               if dbAtendHIVisita.value=0 then
               begin
                    dbAtendHI.Edit;
                    dbAtendHIVisita.value:=1;
                    dbAtendHI.Post;
               end;
            end;
            qryEstatPaciente.Next;
            ProgressBar1.Position:=ProgressBar1.Position+1;
         end;


         dbAtendHI.Close;
         ProgressBar1.Position:=0;
         ShowMessage('Prontuarios atualizados com sucesso');
     end;
end;

procedure TfrmRelControleVisita.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpClienteIni.Visible:=false;
       cmpCodClienteIni.visible:=false;
    end
    else
    begin
       cmpClienteIni.Visible:=true;
       cmpCodClienteIni.Visible:=true;
    end;

end;

procedure TfrmRelControleVisita.rdgServicoClick(Sender: TObject);
begin
    case rdgServico.ItemIndex of
    0:rdgAmb.Visible:=false;
    1:rdgAmb.Visible:=true;
    end;

    case rdgServico.ItemIndex of
    0:cmdExcel.Visible:=true;
    1:cmdExcel.Visible:=false;
    end;

end;

procedure TfrmRelControleVisita.cmdExcelClick(Sender: TObject);
begin
    cmdExcel.Tag:=1;
    cmdRelClick(sender);
    cmdExcel.Tag:=0;
end;

end.
