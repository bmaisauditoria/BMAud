unit frmRelEstatisticasHospitalInt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids,
  DBGrids;

type
  TfrmRelEstatisticaHospitalInt = class(TForm)
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
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    chkHospital: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    rdgAnalise: TRadioGroup;
    cmdImprimir: TBitBtn;
    rdgInternacao: TRadioGroup;
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dsRegiao: TDataSource;
    chkRegiao: TCheckBox;
    cmpRegiao: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkRegiaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstatisticaHospitalInt: TfrmRelEstatisticaHospitalInt;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelEstatisticaHospitalInt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbRegiao.Close;
end;

procedure TfrmRelEstatisticaHospitalInt.FormShow(Sender: TObject);
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
    dbRegiao.Open;
    cmpRegiao.KeyValue:=dbRegiaoRegiao.value;
    chkRegiao.Checked;
end;

procedure TfrmRelEstatisticaHospitalInt.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelEstatisticaHospitalInt.cmdImprimirClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaI,iLinhaD,iLinhaR,iCompetencia,iRegiaoNome:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
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

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkRegiao.Checked then
       iLinhaR:=''
    else
       iLinhaR:=' and Hospital.Regiao='+IntToStr(iRegiao)+' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgInternacao.ItemIndex of
    0:iLinhaI:=' and AtendHI.Tratamento='+QuotedStr('E');
    1:iLinhaI:=' and AtendHI.Tratamento='+QuotedStr('R');
    2:iLinhaI:=' and AtendHI.Tratamento='+QuotedStr('A');
    3:iLinhaI:='';
    end;

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
         if chkRegiao.Checked then
         begin
             qryEstatHospital.SQL.Clear;
             qryEstatHospital.SQL.Text:='Select AtendHI.Cliente, '+
                                        '       AtendHI.Hospital, '+
                                        '       Hospital.Nome, '+
                                        '       count(AtendHI.Paciente) as Paciente, '+
                                        '       sum(AtendHI.Diarias) as Diarias, '+
                                        '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                        '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                        '       sum(AtendHI.Valor) as Valor, '+
                                        '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                        '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                        '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                        '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                        '       sum(AtendHI.Parcial) as Parcial, '+
                                        '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                        'from AtendHI, Hospital '+
                                        'where AtendHI.Hospital=Hospital.Hospital and ('+
                                        iLinhaD+') '+
                                        iLinhaC+iLinhaH+iLinhaA+iLinhaI+
                                        'group by AtendHI.Cliente,AtendHI.Hospital,Nome  '+
                                        'order by AtendHI.Cliente,Nome ';

            qryEstatHospital.ParamByName('CliIni').asinteger:=iClienteIni;

             if not chkHospital.Checked then
                 qryEstatHospital.ParamByName('HospIni').asinteger:=iHospitalIni;

             qryEstatHospital.Open;
             if (qryEstatHospital.RecordCount=0) or
                ((qryEstatHospital.RecordCount=1) and (qryEstatHospitalPaciente.Value=0)) then
             begin
                ShowMessage('Nenhuma informação a ser impressa');
                qryEstatHospital.Close;
                abort;
             end;

             qryEstatHospital3.SQL.Clear;
             qryEstatHospital3.SQL.Text:='Select AtendHI.Cliente, '+
                                    '       count(AtendHI.Paciente) as Paciente, '+
                                    '       sum(AtendHI.Diarias) as Diarias, '+
                                    '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                    '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                    '       sum(AtendHI.Valor) as Valor, '+
                                    '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                    '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                    '       sum(AtendHI.ValorGlosadoM+AtendHI.ValorGlosadoE) as ValorGlosado, '+
                                    '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                    '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                    'from AtendHI '+
                                    'where ('+iLinhaD+') '+
                                    iLinhaC+iLinhaH+iLinhaA+iLinhaI+
                                    'group by Cliente '+
                                    'order by Cliente ';

             qryEstatHospital3.ParamByName('CliIni').asinteger:=iClienteIni;

             if not chkHospital.Checked then
                 qryEstatHospital3.ParamByName('HospIni').asinteger:=iHospitalIni;
             qryEstatHospital3.Open;
        end
        else
        begin // por Regiao
             qryEstatHospitalR.SQL.Clear;
             qryEstatHospitalR.SQL.Text:='Select AtendHI.Cliente, '+
                                        '       AtendHI.Hospital, '+
                                        '       Hospital.Nome, '+
                                        '       Hospital.Regiao, '+
                                        '       count(AtendHI.Paciente) as Paciente, '+
                                        '       sum(AtendHI.Diarias) as Diarias, '+
                                        '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                        '       sum(AtendHI.Valor) as Valor, '+
                                        '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                        '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                        '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                        '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                        '       sum(AtendHI.Parcial) as Parcial, '+
                                        '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                        'from AtendHI, Hospital '+
                                        'where AtendHI.Hospital=Hospital.Hospital and ('+
                                        iLinhaD+') '+
                                        iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaR+
                                        'group by AtendHI.Cliente,Regiao,AtendHI.Hospital,Nome '+
                                        'order by AtendHI.Cliente,Regiao,Nome ';

             qryEstatHospitalR.ParamByName('CliIni').asinteger:=iClienteIni;

             if not chkHospital.Checked then
                 qryEstatHospitalR.ParamByName('HospIni').asinteger:=iHospitalIni;

             qryEstatHospitalR.Open;
             if (qryEstatHospitalR.RecordCount=0) or
                ((qryEstatHospitalR.RecordCount=1) and (qryEstatHospitalRPaciente.Value=0)) then
             begin
                ShowMessage('Nenhuma informação a ser impressa');
                qryEstatHospitalR.Close;
                abort;
             end;

             qryEstatHospital3.SQL.Clear;
             qryEstatHospital3.SQL.Text:='Select AtendHI.Cliente, '+
                                    '       count(AtendHI.Paciente) as Paciente, '+
                                    '       sum(AtendHI.Diarias) as Diarias, '+
                                    '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                    '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                    '       sum(AtendHI.Valor) as Valor, '+
                                    '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                    '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                    '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                    '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                    '       sum(AtendHI.ValorGlosadoM+AtendHI.ValorGlosadoE) as ValorGlosado, '+
                                    '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                    '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                    'from AtendHI '+
                                    'where ('+iLinhaD+') '+
                                    iLinhaC+iLinhaH+iLinhaA+iLinhaI+
                                    'group by Cliente '+
                                    'order by Cliente ';

             qryEstatHospital3.ParamByName('CliIni').asinteger:=iClienteIni;

             if not chkHospital.Checked then
                 qryEstatHospital3.ParamByName('HospIni').asinteger:=iHospitalIni;
             qryEstatHospital3.Open;
         end;

         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));
         frmMenu.rvBBAuditoria.SetParam('Titulo','Estudo Gerencial de Desempenho de Auditoria por Internação');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         case rdgInternacao.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Internações Eletiva');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Internações de Urgência');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo2','Internações Acidentes Pessoais');
         3:frmMenu.rvBBAuditoria.SetParam('Titulo2','Todas os tipos de Internações');
         end;

         if chkRegiao.Checked then
             frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospital',true)
         else
             frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospital',true);

         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelEstatisticaHospitalInt.BitBtn1Click(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaI,iLinhaD,iLinhaR,iCompetencia,iRegiaoNome:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
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

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkRegiao.Checked then
       iLinhaR:=''
    else
       iLinhaR:=' and Hospital.Regiao='+IntToStr(iRegiao)+' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgInternacao.ItemIndex of
    0:iLinhaI:=' and AtendHI.Tratamento="E" ';
    1:iLinhaI:=' and AtendHI.Tratamento="R" ';
    2:iLinhaI:=' and AtendHI.Tratamento="A" ';
    3:iLinhaI:='';
    end;

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
         if chkRegiao.Checked then
         begin
             qryEstatHospital.SQL.Clear;
             qryEstatHospital.SQL.Text:='Select AtendHI.Cliente, '+
                                        '       AtendHI.Hospital, '+
                                        '       Hospital.Nome, '+
                                        '       count(AtendHI.Paciente) as Paciente, '+
                                        '       sum(AtendHI.Diarias) as Diarias, '+
                                        '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                        '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                        '       sum(AtendHI.Valor) as Valor, '+
                                        '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                        '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                        '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                        '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                        '       sum(AtendHI.Parcial) as Parcial, '+
                                        '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                        'from AtendHI, Hospital '+
                                        'where AtendHI.Hospital=Hospital.Hospital and ('+
                                        iLinhaD+') '+
                                        iLinhaC+iLinhaH+iLinhaA+iLinhaI+
                                        'group by Cliente,AtendHI.Hospital,Nome  '+
                                        'order by Cliente,Nome ';

             qryEstatHospital.ParamByName('CliIni').asinteger:=iClienteIni;

             if not chkHospital.Checked then
                 qryEstatHospital.ParamByName('HospIni').asinteger:=iHospitalIni;

             qryEstatHospital.Open;
             if (qryEstatHospital.RecordCount=0) or
                ((qryEstatHospital.RecordCount=1) and (qryEstatHospitalPaciente.Value=0)) then
             begin
                ShowMessage('Nenhuma informação a ser impressa');
                qryEstatHospital.Close;
                abort;
             end;
            qryEstatHospitalGlosaPorc.DisplayFormat:='##0.00';
            qryEstatHospitalGlosaPorcM.DisplayFormat:='##0.00';
            qryEstatHospitalGlosaPorcE.DisplayFormat:='##0.00';
            qryEstatHospitalPorcDiaria.DisplayFormat:='##0.00';
            qryEstatHospitalPorcMaterial.DisplayFormat:='##0.00';
            qryEstatHospitalPorcMedicamento.DisplayFormat:='##0.00';
            qryEstatHospitalPorcGases.DisplayFormat:='##0.00';
            qryEstatHospitalPorcSADT.DisplayFormat:='##0.00';
            qryEstatHospitalPorcGases.DisplayFormat:='##0.00';
            qryEstatHospitalPorcSADT.DisplayFormat:='##0.00';
            qryEstatHospitalPorcPacote.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=qryEstatHospital;
        end
        else
        begin
             qryEstatHospitalR.SQL.Clear;
             qryEstatHospitalR.SQL.Text:='Select AtendHI.Cliente, '+
                                        '       AtendHI.Hospital, '+
                                        '       Hospital.Nome, '+
                                        '       Hospital.Regiao, '+
                                        '       count(AtendHI.Paciente) as Paciente, '+
                                        '       sum(AtendHI.Diarias) as Diarias, '+
                                        '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                        '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                        '       sum(AtendHI.Valor) as Valor, '+
                                        '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                        '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                        '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                        '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                        '       sum(AtendHI.Parcial) as Parcial, '+
                                        '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                        'from AtendHI, Hospital '+
                                        'where AtendHI.Hospital=Hospital.Hospital and ('+
                                        iLinhaD+') '+
                                        iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaR+
                                        'group by Cliente,Regiao,AtendHI.Hospital,Nome  '+
                                        'order by Cliente,Regiao,Nome ';

             qryEstatHospitalR.ParamByName('CliIni').asinteger:=iClienteIni;

             if not chkHospital.Checked then
                 qryEstatHospitalR.ParamByName('HospIni').asinteger:=iHospitalIni;

             qryEstatHospitalR.Open;
             if (qryEstatHospitalR.RecordCount=0) or
                ((qryEstatHospitalR.RecordCount=1) and (qryEstatHospitalRPaciente.Value=0)) then
             begin
                ShowMessage('Nenhuma informação a ser impressa');
                qryEstatHospitalR.Close;
                abort;
             end;
            qryEstatHospitalRGlosaPorc.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=qryEstatHospitalR;
         end;
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryEstatPaciente.Close;
     end;

end;

procedure TfrmRelEstatisticaHospitalInt.chkRegiaoClick(Sender: TObject);
begin
    if chkRegiao.Checked then
       cmpRegiao.Visible:=false
    else
       cmpRegiao.Visible:=true;
end;

end.
