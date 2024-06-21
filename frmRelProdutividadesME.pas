unit frmRelProdutividadesME;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmRelProdutividadeME = class(TForm)
    Panel1: TPanel;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    Label5: TLabel;
    dbMedico: TMSTable;
    dsMedico: TDataSource;
    cmpCliente: TDBLookupComboBox;
    cmpCodCliente: TDBText;
    chkCliente: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    GroupBox1: TGroupBox;
    chkMedico: TCheckBox;
    cmpMedico: TDBLookupComboBox;
    cmpCodMedico: TDBText;
    cmdRelMedico: TBitBtn;
    dbEnfermeiro: TMSTable;
    dsEnfermeiro: TDataSource;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    GroupBox2: TGroupBox;
    cmpCodEnfermeiro: TDBText;
    chkEnfermeiro: TCheckBox;
    cmpEnfermeiro: TDBLookupComboBox;
    cmdRelEnfermeiro: TBitBtn;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    chkHospital: TCheckBox;
    cmpHospital: TDBLookupComboBox;
    cmpCodHospital: TDBText;
    cmdRelMedicoD: TBitBtn;
    cmdRelEnfermeiroD: TBitBtn;
    cmdRelMedExcel: TBitBtn;
    BitBtn5: TBitBtn;
    cmdRelEnfExcel: TBitBtn;
    BitBtn7: TBitBtn;
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    rdgTipo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelMedicoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkMedicoClick(Sender: TObject);
    procedure chkEnfermeiroClick(Sender: TObject);
    procedure cmdRelEnfermeiroClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdRelMedExcelClick(Sender: TObject);
    procedure cmdRelEnfExcelClick(Sender: TObject);
    procedure cmdRelMedicoDClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cmdRelEnfermeiroDClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutividadeME: TfrmRelProdutividadeME;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelProdutividadeME.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbMedico.close;
    dbEnfermeiro.Close;
    dbHospital.Close;
end;

procedure TfrmRelProdutividadeME.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);
    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospital.KeyValue:=dbHospitalHospital.Value;

    dbMedico.Open;
    cmpMedico.KeyValue:=dbMedicoAuditor.Value;
    dbEnfermeiro.Open;
    cmpEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.Value;
end;

procedure TfrmRelProdutividadeME.cmdRelMedicoClick(Sender: TObject);
var iMedico,iCliente,iHospital:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mi,mf:integer;
var iLinhaM,iLInhaC,iLinhaH,iLInhaD,iHospitalNome,iCompetencia:string;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;
     iMedico:=dbMedicoAuditor.Value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkMedico.Checked then
       iLinhaM:=''
    else
       iLinhaM:=' and AtendHI.Medico=:Med ';

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
         qryProdM1.SQL.Clear;
         qryProdM1.SQL.Text:='Select AtendHI.Cliente, '+
                                '       AtendHI.Medico, '+
                                '       Auditores.Nome, '+
                                '       count(AtendHI.Paciente) as Paciente, '+
                                '       sum(AtendHI.Diarias) as Diarias, '+
                                '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                '       sum(AtendHI.Valor) as Valor, '+
                                '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                'from AtendHI, Auditores '+
                                'where AtendHI.Medico=Auditores.Auditor and '+
                                '('+iLinhaD+') '+
                                iLinhaM+iLinhaC+iLinhaH+
                                'group by AtendHI.Cliente,Medico,Nome '+
                                'order by AtendHI.Cliente,Nome ';

         if not chkCliente.Checked then
         qryProdM1.ParamByName('Cli').Value:=iCliente;

        if not chkHospital.Checked then
            qryProdM1.ParamByName('HospIni').Value:=iHospital;

         if not chkMedico.Checked then
             qryProdM1.ParamByName('Med').Value:=iMedico;

         qryProdM1.Open;

         qryProdM2.SQL.Clear;
         qryProdM2.SQL.Text:='Select AtendHI.Cliente, '+
                                '       AtendHI.Medico, '+
                                '       Auditores.Nome, '+
                                '       sum(AtendHI.Valor) as Valor, '+
                                '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '       sum(cast(AtendHI.Pacote as Integer)) as Pacote '+
                                'from AtendHI, Auditores '+
                                'where AtendHI.Medico=Auditores.Auditor and '+
                                '('+iLinhaD+') and '+
                                '      AtendHI.Pacote=1 '+
                                iLinhaM+iLinhaC+iLinhaH+
                                'group by AtendHI.Cliente,Medico,Nome '+
                                'order by AtendHI.Cliente,Nome ';

         if not chkCliente.Checked then
         qryProdM2.ParamByName('Cli').Value:=iCliente;

        if not chkHospital.Checked then
            qryProdM2.ParamByName('HospIni').Value:=iHospital;

         if not chkMedico.Checked then
             qryProdM2.ParamByName('Med').Value:=iMedico;

         qryProdM2.Open;

         if rdgTipo.ItemIndex=0 then
         begin
///**** relatorio total
         qryProdM.SQL.Clear;
         qryProdM.SQL.Text:='Select AtendHI.Cliente, '+
                            '       AtendHI.Medico, '+
                            '       Auditores.Nome, '+
                            '       count(AtendHI.Paciente) as Paciente, '+
                            '       sum(AtendHI.Diarias) as Diarias, '+
                            '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                            '       sum(AtendHI.Valor) as Valor, '+
                            '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                            '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                            '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                            '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                            '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                            'from AtendHI '+
                            'inner join Auditores on AtendHI.Medico=Auditores.Auditor '+
                            'where ('+iLinhaD+') '+iLinhaM+iLinhaC+iLinhaH+
                            'group by AtendHI.Cliente,Medico,Nome '+
                            'order by AtendHI.Cliente,Nome ';

            if not chkCliente.Checked then
               qryProdM.ParamByName('Cli').Value:=iCliente;

           if not chkHospital.Checked then
               qryProdM.ParamByName('HospIni').Value:=iHospital;

            if not chkMedico.Checked then
                qryProdM.ParamByName('Med').Value:=iMedico;

            qryProdM.Open;

            if (qryProdM.RecordCount=0) then
            begin
               ShowMessage('Nenhuma informação a ser impressa');
               qryProdM.Close;
               abort;
            end;
            if frmRelProdutividadeME.tag= 0 then
            begin
                if (iMes=iMesF) and (iAno=IAnoF) then
                   iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
               else
                   iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                 InttoStr(iMesF)+'/'+IntToStr(iAnoF);
                frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

                frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Médicos');

                if chkHospital.Checked then
                   frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
                else
                   frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

                frmMenu.rvBBAuditoria.SelectReport('relProdM',true);
                frmMenu.rvBBAuditoria.Execute;
            end
            else
            begin
               qryProdMPGlosaM.DisplayFormat:='##0.00';
               frmMenu.ExcelExport.Dataset:=qryProdM;
               frmMenu.ExcelExport.ExportDataset;
               frmMenu.ExcelExport.Disconnect;
           end;
         end
         else
         begin
///**** relatorio comparativo mensal medicos
            a:=iano;
            if (imesf<imes) or (ianof>iano) then
               mf:=imesf+(12*(ianof-iano))
            else
               mf:=imesf;

            dbProdME.SQL.Text:='Delete from relProdMe';
            dbProdME.Execute;
            dbProdME.SQL.Text:='Select * from relProdME ';
            dbProdME.Open;

            for mi:=imes to mf do
            begin
               qryProdM.SQL.Clear;
               qryProdM.SQL.Text:='Select AtendHI.Cliente, '+
                                  '       AtendHI.Medico, '+
                                  '       Auditores.Nome, '+
                                  '       count(AtendHI.Paciente) as Paciente, '+
                                  '       sum(AtendHI.Diarias) as Diarias, '+
                                  '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                  '       sum(AtendHI.Valor) as Valor, '+
                                  '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                  '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                  '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                  '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                  '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                  'from AtendHI, Auditores '+
                                  'where AtendHI.Medico=Auditores.Auditor and '+
                                  '     (AtendHI.MesCompetencia=:xMes and AtendHI.AnoCompetencia=:xAno) '+                            iLinhaM+iLinhaC+iLinhaH+
                                  iLinhaM+iLinhaC+iLinhaH+
                                  'group by AtendHI.Cliente,Medico,Nome '+
                                  'order by AtendHI.Cliente,Nome ';

               if not chkCliente.Checked then
                  qryProdM.ParamByName('Cli').Value:=iCliente;

               if not chkHospital.Checked then
                  qryProdM.ParamByName('HospIni').Value:=iHospital;

               if not chkMedico.Checked then
                   qryProdM.ParamByName('Med').Value:=iMedico;

               if mi>=13 then
               begin
                  m:=mi;
                  a:=iano;
                  while m>=13 do
                  begin
                      m:=m-12;
                      a:=a+1;
                  end;
                  qryProdM.ParamByName('xMes').Value:=m;
                  qryProdM.ParamByName('xAno').Value:=a;
               end
               else
               begin
                  qryProdM.ParamByName('xMes').Value:=mi;
                  qryProdM.ParamByName('xAno').Value:=a;
               end;
               qryProdM.Open;
               qryProdM.First;
               while not qryProdM.eof do
               begin
                  dbProdME.Insert;
                  if mi>=13 then
                  begin
                     m:=mi;
                     a:=iano;
                     while m>=13 do
                     begin
                         m:=m-12;
                         a:=a+1;
                     end;
                     dbProdMEMes.value:=m;
                     dbProdMEAno.value:=a;
                  end
                  else
                  begin
                     dbProdMEMes.value:=mi;
                     dbProdMEAno.value:=a;
                  end;
                  dbProdMECliente.value:=qryProdMCliente.value;
                  dbProdMEMedEnf.value:=qryProdMMedico.value;
                  dbProdMENome.value:=qryProdMNome.value;
                  dbProdMEPaciente.value:=qryProdMPaciente.value;
                  dbProdMEDiarias.value:=qryProdMDiarias.value;
                  dbProdMEDiariasGlosadas.value:=qryProdMDiariasGlosadas.value;
                  dbProdMEValor.value:=qryProdMValor.value;
                  dbProdMEValorGlosado.value:=qryProdMValorGlosadoM.value;
                  dbProdMEValorNaoAcordado.value:=qryProdMValorNaoAcordado.value;
                  dbProdMEPacote.value:=qryProdMPacote.value;
                  dbProdMEValorPacote.value:=qryProdMValorPacote.value;
                  dbProdMEPGlosa.value:=qryProdMPGlosaM.value;
                  dbProdME.Post;
                  qryProdM.Next;
               end;
            end;

         if (dbProdME.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryProdM.Close;
            abort;
         end;

         dbProdME.SetOrderBy('Cliente,Nome,Ano,Mes');

         if frmRelProdutividadeME.tag= 0 then
         begin
             if (iMes=iMesF) and (iAno=IAnoF) then
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
             else
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                              InttoStr(iMesF)+'/'+IntToStr(iAnoF);
             frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

             frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Médicos');

             if chkHospital.Checked then
                frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
             else
                frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

             frmMenu.rvBBAuditoria.SelectReport('relProdMEMes',true);
             frmMenu.rvBBAuditoria.Execute;
         end
         else
         begin
            dbProdME.Open;
            dbProdME.First;
            dbProdMEPGlosa.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbProdME;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
        end;
     end;
     end;
end;

procedure TfrmRelProdutividadeME.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpCliente.Visible:=false;
       cmpCodCliente.visible:=false;
    end
    else
    begin
       cmpCliente.Visible:=true;
       cmpCodCliente.Visible:=true;
    end;
end;

procedure TfrmRelProdutividadeME.chkMedicoClick(Sender: TObject);
begin
    if chkMedico.Checked then
    begin
       cmpMedico.Visible:=false;
       cmpCodMedico.visible:=false;
    end
    else
    begin
       cmpMedico.Visible:=true;
       cmpCodMedico.Visible:=true;
    end;

end;

procedure TfrmRelProdutividadeME.chkEnfermeiroClick(Sender: TObject);
begin
    if chkEnfermeiro.Checked then
    begin
       cmpEnfermeiro.Visible:=false;
       cmpCodEnfermeiro.visible:=false;
    end
    else
    begin
       cmpEnfermeiro.Visible:=true;
       cmpCodEnfermeiro.Visible:=true;
    end;

end;

procedure TfrmRelProdutividadeME.cmdRelEnfermeiroClick(Sender: TObject);
var iMedico,iCliente,iHospital:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mi,mf:integer;
var iLinhaM,iLInhaC,iLinhaH,iLInhaD,iHospitalNome,iCompetencia:string;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;
     iMedico:=dbEnfermeiroEnfermeiro.Value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkEnfermeiro.Checked then
       iLinhaM:=''
    else
       iLinhaM:=' and AtendHI.Enfermeiro=:Med ';

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
         qryProdE1.SQL.Clear;
         qryProdE1.SQL.Text:='Select AtendHI.Cliente, '+
                                '        AtendHI.Enfermeiro, '+
                                '        Enfermeiros.Nome, '+
                                '        count(AtendHI.Paciente) as Paciente, '+
                                '        sum(AtendHI.Diarias) as Diarias, '+
                                '        sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                '        sum(AtendHI.Valor) as Valor, '+
                                '        sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '        sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '        sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                '        sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                '        sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                'from AtendHI, Enfermeiros '+
                                'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                               '('+iLinhaD+') '+
                                iLinhaM+iLinhaC+iLInhaH+
                                'group by AtendHI.Cliente,AtendHI.Enfermeiro,Nome '+
                                'order by AtendHI.Cliente,Nome ';

         if not chkCliente.Checked then
         qryProdE1.ParamByName('Cli').Value:=iCliente;

        if not chkHospital.Checked then
            qryProdE1.ParamByName('HospIni').Value:=iHospital;

         if not chkEnfermeiro.Checked then
             qryProdE1.ParamByName('Med').Value:=iMedico;

         qryProdE1.Open;

         qryProdE2.SQL.Clear;
         qryProdE2.SQL.Text:='Select AtendHI.Cliente, '+
                                '        AtendHI.Enfermeiro, '+
                                '        Enfermeiros.Nome, '+
                                '        sum(AtendHI.Valor) as Valor, '+
                                '        sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '        sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '        sum(cast(AtendHI.Pacote as Integer)) as Pacote '+
                                'from AtendHI, Enfermeiros '+
                                'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                                '('+iLinhaD+') and '+
                                '      AtendHI.Pacote=1 '+
                                iLinhaM+iLinhaC+iLInhaH+
                                'group by AtendHI.Cliente,AtendHI.Enfermeiro,Nome '+
                                'order by AtendHI.Cliente,Nome ';

         if not chkCliente.Checked then
         qryProdE2.ParamByName('Cli').Value:=iCliente;

        if not chkHospital.Checked then
            qryProdE2.ParamByName('HospIni').Value:=iHospital;

         if not chkEnfermeiro.Checked then
             qryProdE2.ParamByName('Med').Value:=iMedico;

         qryProdE2.Open;

         if rdgTipo.ItemIndex=0 then
         begin
///**** relatorio total

            qryProdE.SQL.Clear;
            qryProdE.SQL.Text:='Select AtendHI.Cliente, '+
                                '       AtendHI.Enfermeiro, '+
                                '       Enfermeiros.Nome, '+
                                '       count(AtendHI.Paciente) as Paciente, '+
                                '       sum(AtendHI.Diarias) as Diarias, '+
                                '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                '       sum(AtendHI.Valor) as Valor, '+
                                '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                'from AtendHI, Enfermeiros '+
                                'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                                '('+iLinhaD+') '+
                                iLinhaM+iLinhaC+iLInhaH+
                                'group by AtendHI.Cliente,AtendHI.Enfermeiro,Nome '+
                                'order by AtendHI.Cliente,Nome ';

            if not chkCliente.Checked then
            qryProdE.ParamByName('Cli').Value:=iCliente;

            if not chkHospital.Checked then
               qryProdE.ParamByName('HospIni').Value:=iHospital;

            if not chkEnfermeiro.Checked then
                qryProdE.ParamByName('Med').Value:=iMedico;

            qryProdE.Open;

            if (qryProdE.RecordCount=0) then
            begin
               ShowMessage('Nenhuma informação a ser impressa');
               qryProdE.Close;
               abort;
            end;
            if frmRelProdutividadeME.tag=0 then
            begin
               if (iMes=iMesF) and (iAno=IAnoF) then
                  iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
               else
                  iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                              InttoStr(iMesF)+'/'+IntToStr(iAnoF);
               frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

               frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Enfermeiros');

               if chkHospital.Checked then
                  frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
               else
                  frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

               frmMenu.rvBBAuditoria.SelectReport('relProdE',true);
               frmMenu.rvBBAuditoria.Execute;
            end
            else
            begin
               qryProdEPGlosaM.DisplayFormat:='##0.00';
               frmMenu.ExcelExport.Dataset:=qryProdE;
               frmMenu.ExcelExport.ExportDataset;
               frmMenu.ExcelExport.Disconnect;
            end;
         end
         else
         begin
///**** relatorio comparativo mensal enfermeiros
            a:=iano;
            if (imesf<imes) or (ianof>iano) then
               mf:=imesf+(12*(ianof-iano))
            else
               mf:=imesf;

            dbProdME.SQL.Text:='Delete from relProdMe';
            dbProdME.Execute;
            dbProdME.SQL.Text:='Select * from relProdME ';
            dbProdME.Open;

            for mi:=imes to mf do
            begin
               qryProdE.SQL.Clear;
               qryProdE.SQL.Text:='Select AtendHI.Cliente, '+
                                '       AtendHI.Enfermeiro, '+
                                '       Enfermeiros.Nome, '+
                                '       count(AtendHI.Paciente) as Paciente, '+
                                '       sum(AtendHI.Diarias) as Diarias, '+
                                '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                '       sum(AtendHI.Valor) as Valor, '+
                                '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                'from AtendHI, Enfermeiros '+
                                'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                                '     (AtendHI.MesCompetencia=:xMes and AtendHI.AnoCompetencia=:xAno) '+                            iLinhaM+iLinhaC+iLinhaH+
                                iLinhaM+iLinhaC+iLinhaH+
                                'group by AtendHI.Cliente,AtendHI.Enfermeiro,Nome '+
                                'order by AtendHI.Cliente,Nome ';

               if not chkCliente.Checked then
                  qryProdE.ParamByName('Cli').Value:=iCliente;

               if not chkHospital.Checked then
                  qryProdE.ParamByName('HospIni').Value:=iHospital;

            if not chkEnfermeiro.Checked then
                qryProdE.ParamByName('Med').Value:=iMedico;

               if mi>=13 then
               begin
                  m:=mi;
                  a:=iano;
                  while m>=13 do
                  begin
                      m:=m-12;
                      a:=a+1;
                  end;
                  qryProdE.ParamByName('xMes').Value:=m;
                  qryProdE.ParamByName('xAno').Value:=a;
               end
               else
               begin
                  qryProdE.ParamByName('xMes').Value:=mi;
                  qryProdE.ParamByName('xAno').Value:=a;
               end;
               qryProdE.Open;
               qryProdE.First;
               while not qryProdE.eof do
               begin
                  dbProdME.Insert;
                  if mi>=13 then
                  begin
                     m:=mi;
                     a:=iano;
                     while m>=13 do
                     begin
                         m:=m-12;
                         a:=a+1;
                     end;
                     dbProdMEMes.value:=m;
                     dbProdMEAno.value:=a;
                  end
                  else
                  begin
                     dbProdMEMes.value:=mi;
                     dbProdMEAno.value:=a;
                  end;
                  dbProdMECliente.value:=qryProdECliente.value;
                  dbProdMEMedEnf.value:=qryProdEEnfermeiro.value;
                  dbProdMENome.value:=qryProdENome.value;
                  dbProdMEPaciente.value:=qryProdEPaciente.value;
                  dbProdMEDiarias.value:=qryProdEDiarias.value;
                  dbProdMEDiariasGlosadas.value:=qryProdEDiariasGlosadas.value;
                  dbProdMEValor.value:=qryProdEValor.value;
                  dbProdMEValorGlosado.value:=qryProdEValorGlosadoE.value;
                  dbProdMEValorNaoAcordado.value:=qryProdEValorNaoAcordado.value;
                  dbProdMEPacote.value:=qryProdEPacote.value;
                  dbProdMEValorPacote.value:=qryProdEValorPacote.value;
                  dbProdMEPGlosa.value:=qryProdEPGlosaM.value;
                  dbProdME.Post;
                  qryProdE.Next;
               end;
            end;

         if (dbProdME.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryProdE.Close;
            abort;
         end;

         dbProdME.SetOrderBy('Cliente,Nome,Ano,Mes');

         if frmRelProdutividadeME.tag= 0 then
         begin
             if (iMes=iMesF) and (iAno=IAnoF) then
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
             else
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                              InttoStr(iMesF)+'/'+IntToStr(iAnoF);
             frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

               frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Enfermeiros');

             if chkHospital.Checked then
                frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
             else
                frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

             frmMenu.rvBBAuditoria.SelectReport('relProdMEMes',true);
             frmMenu.rvBBAuditoria.Execute;
         end
         else
         begin
            dbProdME.Open;
            dbProdME.First;
            dbProdMEPGlosa.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbProdME;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
        end;
     end;
     end;
end;

procedure TfrmRelProdutividadeME.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospital.Visible:=false;
       cmpCodHospital.visible:=false;
    end
    else
    begin
       cmpHospital.Visible:=true;
       cmpCodHospital.Visible:=true;
    end;
end;

procedure TfrmRelProdutividadeME.cmdRelMedExcelClick(Sender: TObject);
begin
    frmRelProdutividadeME.Tag:=1;
    cmdRelMedicoClick(Sender);
    frmRelProdutividadeME.tag:=0;
end;

procedure TfrmRelProdutividadeME.cmdRelEnfExcelClick(Sender: TObject);
begin
    frmRelProdutividadeME.Tag:=1;
    cmdRelEnfermeiroClick(Sender);
    frmRelProdutividadeME.tag:=0;
end;

procedure TfrmRelProdutividadeME.cmdRelMedicoDClick(Sender: TObject);
var iMedico,iCliente,iHospital:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mi,mf:integer;
var iLinhaM,iLInhaC,iLinhaH,iLinhaD,iHospitalNome,iCompetencia:string;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;
     iMedico:=dbMedicoAuditor.Value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkMedico.Checked then
       iLinhaM:=''
    else
       iLinhaM:=' and AtendHI.Medico=:Med ';

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
         qryProdMD2.SQL.Clear;
         qryProdMD2.SQL.Text:='Select AtendHI.Cliente, '+
                                '       AtendHI.Medico, '+
                                '       AtendHI.Hospital, '+
                                '       Auditores.Nome, '+
                                '       sum(AtendHI.Valor) as Valor, '+
                                '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                '       sum(cast(AtendHI.Pacote as Integer)) as Pacote '+
                                'from AtendHI, Auditores '+
                                'where AtendHI.Medico=Auditores.Auditor and '+
                                '('+iLinhaD+') and '+
                                '      AtendHI.Pacote=1 '+
                                iLinhaM+iLinhaC+iLinhaH+
                                'group by AtendHI.Cliente,Medico,Hospital,Nome '+
                                'order by AtendHI.Cliente,Nome,Hospital ';

         if not chkCliente.Checked then
         qryProdMD2.ParamByName('Cli').Value:=iCliente;

        if not chkHospital.Checked then
            qryProdMD2.ParamByName('HospIni').Value:=iHospital;

         if not chkMedico.Checked then
             qryProdMD2.ParamByName('Med').Value:=iMedico;

         qryProdMD2.Open;

         if rdgTipo.ItemIndex=0 then
         begin
///**** relatorio total
            qryProdMD.SQL.Clear;
            qryProdMD.SQL.Text:='Select AtendHI.Cliente, '+
                               '       AtendHI.Medico, '+
                               '       AtendHI.Hospital, '+
                               '       Hospital.Nome as HospitalNome, '+
                               '       Auditores.Nome, '+
                               '       count(AtendHI.Paciente) as Paciente, '+
                               '       sum(AtendHI.Diarias) as Diarias, '+
                               '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                               '       sum(AtendHI.Valor) as Valor, '+
                               '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                               '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                               '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                               '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                               '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                               'from AtendHI, Auditores,Hospital '+
                               'where AtendHI.Medico=Auditores.Auditor and '+
                               '      AtendHI.Hospital=Hospital.Hospital and '+
                               '('+iLinhaD+') '+
                               iLinhaM+iLinhaC+iLinhaH+
                               'group by AtendHI.Cliente,Medico,AtendHI.Hospital,Hospital.Nome,Auditores.Nome '+
                               'order by AtendHI.Cliente,Nome,HospitalNome ';

            if not chkCliente.Checked then
               qryProdMD.ParamByName('Cli').Value:=iCliente;

           if not chkHospital.Checked then
               qryProdMD.ParamByName('HospIni').Value:=iHospital;

            if not chkMedico.Checked then
               qryProdMD.ParamByName('Med').Value:=iMedico;

            qryProdMD.Open;
            if (qryProdMD.RecordCount=0) then
            begin
               ShowMessage('Nenhuma informação a ser impressa');
               qryProdMD.Close;
               abort;
            end;
            if frmRelProdutividadeME.tag= 0 then
            begin
               if (iMes=iMesF) and (iAno=IAnoF) then
                  iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
               else
                  iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                InttoStr(iMesF)+'/'+IntToStr(iAnoF);
               frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

               frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Médicos');

               if chkHospital.Checked then
                  frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
               else
                  frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

               frmMenu.rvBBAuditoria.SelectReport('relProdMD',true);
               frmMenu.rvBBAuditoria.Execute;
            end
            else
            begin
               qryProdMDPGlosaM.DisplayFormat:='##0.00';
               frmMenu.ExcelExport.Dataset:=qryProdMD;
               frmMenu.ExcelExport.ExportDataset;
               frmMenu.ExcelExport.Disconnect;
            end;
         end
         else
         begin
///**** relatorio comparativo mensal medicos
            a:=iano;
            if (imesf<imes) or (ianof>iano) then
               mf:=imesf+(12*(ianof-iano))
            else
               mf:=imesf;

            dbProdME.SQL.Text:='Delete from relProdMe';
            dbProdME.Execute;
            dbProdME.SQL.Text:='Select * from relProdME ';
            dbProdME.Open;

            for mi:=imes to mf do
            begin
            qryProdMD.SQL.Clear;
            qryProdMD.SQL.Text:='Select AtendHI.Cliente, '+
                               '       AtendHI.Medico, '+
                               '       AtendHI.Hospital, '+
                               '       Hospital.Nome as HospitalNome, '+
                               '       Auditores.Nome, '+
                               '       count(AtendHI.Paciente) as Paciente, '+
                               '       sum(AtendHI.Diarias) as Diarias, '+
                               '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                               '       sum(AtendHI.Valor) as Valor, '+
                               '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                               '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                               '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                               '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                               '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                               'from AtendHI, Auditores, Hospital '+
                               'where AtendHI.Medico=Auditores.Auditor and '+
                               '      AtendHI.Hospital=Hospital.Hospital and '+
                                  '     (AtendHI.MesCompetencia=:xMes and AtendHI.AnoCompetencia=:xAno) '+                            iLinhaM+iLinhaC+iLinhaH+
                               iLinhaM+iLinhaC+iLinhaH+
                               'group by AtendHI.Cliente,Medico,AtendHI.Hospital,Hospital.Nome,Auditores.Nome '+
                               'order by AtendHI.Cliente,Nome,HospitalNome ';

               if not chkCliente.Checked then
                  qryProdMD.ParamByName('Cli').Value:=iCliente;

               if not chkHospital.Checked then
                  qryProdMD.ParamByName('HospIni').Value:=iHospital;

               if not chkMedico.Checked then
                   qryProdMD.ParamByName('Med').Value:=iMedico;

               if mi>=13 then
               begin
                  m:=mi;
                  a:=iano;
                  while m>=13 do
                  begin
                      m:=m-12;
                      a:=a+1;
                  end;
                  qryProdMD.ParamByName('xMes').Value:=m;
                  qryProdMD.ParamByName('xAno').Value:=a;
               end
               else
               begin
                  qryProdMD.ParamByName('xMes').Value:=mi;
                  qryProdMD.ParamByName('xAno').Value:=a;
               end;
               qryProdMD.Open;
               qryProdMD.First;
               while not qryProdMD.eof do
               begin
                  dbProdME.Insert;
                  if mi>=13 then
                  begin
                     m:=mi;
                     a:=iano;
                     while m>=13 do
                     begin
                         m:=m-12;
                         a:=a+1;
                     end;
                     dbProdMEMes.value:=m;
                     dbProdMEAno.value:=a;
                  end
                  else
                  begin
                     dbProdMEMes.value:=mi;
                     dbProdMEAno.value:=a;
                  end;
                  dbProdMECliente.value:=qryProdMDCliente.value;
                  dbProdMEMedEnf.value:=qryProdMDMedico.value;
                  dbProdMEHospital.value:=qryProdMDHospital.value;
                  dbProdMEHospitalNome.value:=qryProdMDHospitalNome.value;
                  dbProdMENome.value:=qryProdMDNome.value;
                  dbProdMEPaciente.value:=qryProdMDPaciente.value;
                  dbProdMEDiarias.value:=qryProdMDDiarias.value;
                  dbProdMEDiariasGlosadas.value:=qryProdMDDiariasGlosadas.value;
                  dbProdMEValor.value:=qryProdMDValor.value;
                  dbProdMEValorGlosado.value:=qryProdMDValorGlosadoM.value;
                  dbProdMEValorNaoAcordado.value:=qryProdMDValorNaoAcordado.value;
                  dbProdMEPacote.value:=qryProdMDPacote.value;
                  dbProdMEValorPacote.value:=qryProdMDValorPacote.value;
                  dbProdMEPGlosa.value:=qryProdMDPGlosaM.value;
                  dbProdME.Post;
                  qryProdMD.Next;
               end;
            end;

         if (dbProdME.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryProdMD.Close;
            abort;
         end;

         dbProdME.SetOrderBy('Cliente,Nome,HospitalNome,Ano,Mes');

         if frmRelProdutividadeME.tag= 0 then
         begin
             if (iMes=iMesF) and (iAno=IAnoF) then
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
             else
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                              InttoStr(iMesF)+'/'+IntToStr(iAnoF);
             frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

             frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Médicos');

             if chkHospital.Checked then
                frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
             else
                frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

             frmMenu.rvBBAuditoria.SelectReport('relProdMEHMes',true);
             frmMenu.rvBBAuditoria.Execute;
         end
         else
         begin
            dbProdME.Open;
            dbProdME.First;
            dbProdMEPGlosa.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbProdME;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
        end;
     end;
     end;
end;

procedure TfrmRelProdutividadeME.BitBtn5Click(Sender: TObject);
begin
    frmRelProdutividadeME.Tag:=1;
    cmdRelMedicoDClick(Sender);
    frmRelProdutividadeME.tag:=0;
end;

procedure TfrmRelProdutividadeME.cmdRelEnfermeiroDClick(Sender: TObject);
var iMedico,iCliente,iHospital:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mi,mf:integer;
var iLinhaM,iLInhaC,iLinhaH,iLinhaD,iHospitalNome,iCompetencia:string;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;
     iMedico:=dbEnfermeiroEnfermeiro.Value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:Cli ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkEnfermeiro.Checked then
       iLinhaM:=''
    else
       iLinhaM:=' and AtendHI.Enfermeiro=:Med ';

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
         qryProdED2.SQL.Clear;
         qryProdED2.SQL.Text:='Select AtendHI.Cliente, '+
                              '        AtendHI.Enfermeiro, '+
                              '        AtendHI.Hospital,' +
                              '        Enfermeiros.Nome, '+
                              '        sum(AtendHI.Valor) as Valor, '+
                              '        sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                              '        sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                              '        sum(cast(AtendHI.Pacote as Integer)) as Pacote '+
                              'from AtendHI, Enfermeiros '+
                              'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                              '('+iLinhaD+') and '+
                              '      AtendHI.Pacote=1 '+
                              iLinhaM+iLinhaC+iLInhaH+
                              'group by AtendHI.Cliente,AtendHI.Enfermeiro,Hospital,Nome '+
                              'order by AtendHI.Cliente,Nome,Hospital ';

         if not chkCliente.Checked then
         qryProdED2.ParamByName('Cli').Value:=iCliente;

        if not chkHospital.Checked then
            qryProdED2.ParamByName('HospIni').Value:=iHospital;

         if not chkEnfermeiro.Checked then
             qryProdED2.ParamByName('Med').Value:=iMedico;

         qryProdED2.Open;

         if rdgTipo.ItemIndex=0 then
         begin
///**** relatorio total
            qryProdED.SQL.Clear;
            qryProdED.SQL.Text:='Select AtendHI.Cliente, '+
                                   '    AtendHI.Enfermeiro, '+
                                   '    AtendHI.Hospital,' +
                                   '    Hospital.Nome as HospitalNome, '+
                                   '    Enfermeiros.Nome, '+
                                   '    count(AtendHI.Paciente) as Paciente, '+
                                   '    sum(AtendHI.Diarias) as Diarias, '+
                                   '    sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                   '    sum(AtendHI.Valor) as Valor, '+
                                   '    sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                   '    sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                   '    sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                   '    sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                   '    sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                   'from AtendHI, Enfermeiros,Hospital '+
                                   'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                                   '      AtendHI.Hospital=Hospital.Hospital and '+
                                   '('+iLinhaD+') '+
                                   iLinhaM+iLinhaC+iLInhaH+
                                   'group by AtendHI.Cliente,AtendHI.Enfermeiro,AtendHI.Hospital,Hospital.Nome,Enfermeiros.Nome '+
                                   'order by AtendHI.Cliente,Nome,HospitalNome ';

            if not chkCliente.Checked then
            qryProdED.ParamByName('Cli').Value:=iCliente;

           if not chkHospital.Checked then
               qryProdED.ParamByName('HospIni').Value:=iHospital;

            if not chkEnfermeiro.Checked then
                qryProdED.ParamByName('Med').Value:=iMedico;

            qryProdED.Open;

            if (qryProdED.RecordCount=0) then
            begin
               ShowMessage('Nenhuma informação a ser impressa');
               qryProdED.Close;
               abort;
            end;
            if frmRelProdutividadeME.tag= 0 then
            begin
               if (iMes=iMesF) and (iAno=IAnoF) then
                  iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
               else
                  iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                InttoStr(iMesF)+'/'+IntToStr(iAnoF);
               frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

               frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Enfermeiros');

               if chkHospital.Checked then
                  frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
               else
                  frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

               frmMenu.rvBBAuditoria.SelectReport('relProdED',true);
               frmMenu.rvBBAuditoria.Execute;
            end
            else
            begin
               qryProdEDPGlosaM.DisplayFormat:='##0.00';
               frmMenu.ExcelExport.Dataset:=qryProdED;
               frmMenu.ExcelExport.ExportDataset;
               frmMenu.ExcelExport.Disconnect;
            end;
         end
         else
         begin
///**** relatorio comparativo mensal enfermeiros
            a:=iano;
            if (imesf<imes) or (ianof>iano) then
               mf:=imesf+(12*(ianof-iano))
            else
               mf:=imesf;

            dbProdME.SQL.Text:='Delete from relProdMe';
            dbProdME.Execute;
            dbProdME.SQL.Text:='Select * from relProdME ';
            dbProdME.Open;

            for mi:=imes to mf do
            begin
            qryProdED.SQL.Clear;
            qryProdED.SQL.Text:='Select AtendHI.Cliente, '+
                                   '    AtendHI.Enfermeiro, '+
                                   '       AtendHI.Hospital,' +
                                   '       Hospital.Nome as HospitalNome, '+
                                   '       Enfermeiros.Nome, '+
                                   '       count(AtendHI.Paciente) as Paciente, '+
                                   '       sum(AtendHI.Diarias) as Diarias, '+
                                   '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                   '       sum(AtendHI.Valor) as Valor, '+
                                   '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                   '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                   '       sum(cast(AtendHI.Pacote as Integer)) as Pacote, '+
                                   '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                   '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE '+
                                   'from AtendHI, Enfermeiros,Hospital '+
                                   'where AtendHI.Enfermeiro=Enfermeiros.Enfermeiro and '+
                                   '      AtendHI.Hospital=Hospital.Hospital and '+
                                   '     (AtendHI.MesCompetencia=:xMes and AtendHI.AnoCompetencia=:xAno) '+                            iLinhaM+iLinhaC+iLinhaH+
                                   iLinhaM+iLinhaC+iLInhaH+
                                   'group by AtendHI.Cliente,AtendHI.Enfermeiro,AtendHI.Hospital,Hospital.Nome,Enfermeiros.Nome '+
                                   'order by AtendHI.Cliente,Nome,HospitalNome ';

               if not chkCliente.Checked then
                  qryProdED.ParamByName('Cli').Value:=iCliente;

               if not chkHospital.Checked then
                  qryProdED.ParamByName('HospIni').Value:=iHospital;

            if not chkEnfermeiro.Checked then
                qryProdED.ParamByName('Med').Value:=iMedico;

               if mi>=13 then
               begin
                  m:=mi;
                  a:=iano;
                  while m>=13 do
                  begin
                      m:=m-12;
                      a:=a+1;
                  end;
                  qryProdED.ParamByName('xMes').Value:=m;
                  qryProdED.ParamByName('xAno').Value:=a;
               end
               else
               begin
                  qryProdED.ParamByName('xMes').Value:=mi;
                  qryProdED.ParamByName('xAno').Value:=a;
               end;
               qryProdED.Open;
               qryProdED.First;
               while not qryProdED.eof do
               begin
                  dbProdME.Insert;
                  if mi>=13 then
                  begin
                     m:=mi;
                     a:=iano;
                     while m>=13 do
                     begin
                         m:=m-12;
                         a:=a+1;
                     end;
                     dbProdMEMes.value:=m;
                     dbProdMEAno.value:=a;
                  end
                  else
                  begin
                     dbProdMEMes.value:=mi;
                     dbProdMEAno.value:=a;
                  end;
                  dbProdMECliente.value:=qryProdEDCliente.value;
                  dbProdMEMedEnf.value:=qryProdEDEnfermeiro.value;
                  dbProdMEHospital.value:=qryProdEDHospital.value;
                  dbProdMEHospitalNome.value:=qryProdEDHospitalNome.value;
                  dbProdMENome.value:=qryProdEDNome.value;
                  dbProdMEPaciente.value:=qryProdEDPaciente.value;
                  dbProdMEDiarias.value:=qryProdEDDiarias.value;
                  dbProdMEDiariasGlosadas.value:=qryProdEDDiariasGlosadas.value;
                  dbProdMEValor.value:=qryProdEDValor.value;
                  dbProdMEValorGlosado.value:=qryProdEDValorGlosadoE.value;
                  dbProdMEValorNaoAcordado.value:=qryProdEDValorNaoAcordado.value;
                  dbProdMEPacote.value:=qryProdEDPacote.value;
                  dbProdMEValorPacote.value:=qryProdEDValorPacote.value;
                  dbProdMEPGlosa.value:=qryProdEDPGlosaM.value;
                  dbProdME.Post;
                  qryProdED.Next;
               end;
            end;

         if (dbProdME.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryProdED.Close;
            abort;
         end;

         dbProdME.SetOrderBy('Cliente,Nome,HospitalNome,Ano,Mes');

         if frmRelProdutividadeME.tag= 0 then
         begin
             if (iMes=iMesF) and (iAno=IAnoF) then
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
             else
                iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                              InttoStr(iMesF)+'/'+IntToStr(iAnoF);
             frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

               frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Enfermeiros');

             if chkHospital.Checked then
                frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais')
             else
                frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

             frmMenu.rvBBAuditoria.SelectReport('relProdMEHMes',true);
             frmMenu.rvBBAuditoria.Execute;
         end
         else
         begin
            dbProdME.Open;
            dbProdME.First;
            dbProdMEPGlosa.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbProdME;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
        end;
     end;
     end;

end;

procedure TfrmRelProdutividadeME.BitBtn7Click(Sender: TObject);
begin
    frmRelProdutividadeME.Tag:=1;
    cmdRelEnfermeiroDClick(Sender);
    frmRelProdutividadeME.tag:=0;
end;

end.
