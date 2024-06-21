unit frmRelEstatisticasHospital;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids,
  DBGrids, DateUtils;

type
  TfrmRelEstatisticaHospital = class(TForm)
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
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    rdgPacote: TRadioGroup;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    rdgMedia: TRadioGroup;
    chkRegiao: TCheckBox;
    cmpRegiao: TDBLookupComboBox;
    dbRegiao: TMSTable;
    dsRegiao: TDataSource;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    rdgTipo: TRadioGroup;
    rdgCFor: TRadioGroup;
    Label2: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    rdgLayout: TRadioGroup;
    Panel2: TPanel;
    cmdOriginal: TBitBtn;
    cmdOriginalTodos: TBitBtn;
    Label4: TLabel;
    Panel3: TPanel;
    cmdExcel: TBitBtn;
    cmdExcelC: TBitBtn;
    cmdExcelCESP: TBitBtn;
    cmdExcelBradesco: TBitBtn;
    cmdExcelPorto: TBitBtn;
    rdgLogo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdOriginalClick(Sender: TObject);
    procedure cmdExcelClick(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure cmdExcelBradescoClick(Sender: TObject);
    procedure cmdExcelCESPClick(Sender: TObject);
    procedure chkRegiaoClick(Sender: TObject);
    procedure cmdExcelCClick(Sender: TObject);
    procedure cmdOriginalTodosClick(Sender: TObject);
    procedure rdgLayoutClick(Sender: TObject);
    procedure cmdExcelPortoClick(Sender: TObject);
  private
    { Private declarations }
  public
   iMes,iAno,iMesF,iAnoF,iLogo:integer;
  end;

var
  frmRelEstatisticaHospital: TfrmRelEstatisticaHospital;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelEstatisticaHospital.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cmdExcel.tag:=0;
    dbClienteIni.close;
    dbHospitalIni.close;
    dbClienteID.close;
    dbRegiao.Close;
end;

procedure TfrmRelEstatisticaHospital.FormShow(Sender: TObject);
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

    dbRegiao.Open;
    cmpRegiao.KeyValue:=dbRegiaoRegiao.value;
    chkRegiao.Checked;
    cmdExcel.Tag:=0;
end;

procedure TfrmRelEstatisticaHospital.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelEstatisticaHospital.cmdOriginalClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaD,iCompetencia,
    iLinhaP,iLinhaI,iLinhaID,iClienteID,iLinhaR,iLinhaF:string;
var iRegiaoNome,ititulo1,ititulo2:string;
var iDataIni,iDataFim:TDate;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iClienteID:=dbClienteIDID.value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

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

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=0 ';
    1:iLinhaP:=' and AtendHI.Pacote=1 ';
    2:iLinhaP:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
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
//         dbPro.Open;

///*** somente para Detalhado Pre Analise
        qryDistribuicaoCC.SQL.Clear;
        qryDistribuicaoCC.SQL.Text:='Select AtendHIGlosa.Cliente as Cliente, '+
                                    '       AtendHI.Hospital as Hospital, '+
                                    '       AtendHIGlosa.GlosaI as GlosaI, '+
                                    '       sum(AtendHIGlosa.Valor) as Glosa, '+
                                    '       sum(AtendHIGlosa.ValorApresentado) as Valor '+
                                    'from AtendHIGlosa '+
                                    'inner join AtendHI on AtendHIGlosa.Cliente=AtendHI.Cliente and '+
                                    '                      AtendHIGlosa.AtendimentoHI=AtendHI.AtendimentoHI '+
                                    'where ('+iLinhaD+') '+
                                       iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaF+
                                    'group by AtendHIGlosa.Cliente,Hospital,GlosaI  '+
                                    'order by AtendHIGlosa.Cliente,Hospital,GlosaI ';

        qryDistribuicaoCC.ParamByName('CliIni').asinteger:=iClienteIni;
        qryDistribuicaoCC.Open;

//**** Total por Cliente,Hospital - somente diarias não autorizadas

         qryEstatHospital4.Close;
         qryEstatHospital4.SQL.Clear;
         qryEstatHospital4.SQL.Text:='Select AtendHI.Cliente, '+
                                '     AtendHI.Hospital as Hospital, '+
                                '     sum(AtendHI.Diarias) as Diarias, '+
                                '     sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                '     sum(AtendHI.DiariasCalculadas) as DiariasCalculadas '+
                                'from AtendHI, Hospital '+
                                'where AtendHI.DiariasCalculadas>AtendHI.Diarias and '+
                                '      AtendHI.Complemento=0 and '+
                                '      AtendHI.Hospital=Hospital.Hospital and ('+
                                iLinhaD+') '+
                                iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaR+iLinhaF+
                                'group by Cliente,AtendHI.Hospital '+
                                'order by Cliente,AtendHI.Hospital ';

         qryEstatHospital4.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryEstatHospital4.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospital4.Open;

//***************
         qryParcial.SQL.Clear;    //soma o total de parciais reais
         qryParcial.SQL.Text:='Select AtendHI.Cliente, '+
                              '       AtendHI.Hospital, '+
                              '       AtendHI.Paciente, '+
                              '       AtendHI.DataInicioP '+
                              'from AtendHI '+
                              'inner join  Hospital on AtendHI.Hospital=Hospital.Hospital '+
                              'where DataInicioP is not null and Parcial=1 and ('+iLinhaD+') '+
                              iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaR+iLinhaF+
                              'group by AtendHI.Cliente, AtendHI.Hospital, Paciente, DataInicioP '+
                              'order by AtendHI.Cliente, AtendHI.Hospital, Paciente, DataInicioP';

         qryParcial.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryParcial.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryParcial.Open;


//*************** Total por cliente,hospital - Diarias Clinicas/Cirurgicas    - Apenas longa permanencia

        if rdgLayout.ItemIndex=7 then // Layout Porto Seguro    29/04/2019
        begin                         // Servicos V - VL - CE - Periodo Data Inicio/Final da Parcial (alem da competencia)
            qryEstatHospital1.SQL.Clear;
            qryEstatHospital1.SQL.Text:='Select AtendHI.Cliente, '+
                                         '      AtendHI.Hospital, '+
                                         '      Hospital.Nome, '+
                                         '      sum(AtendHI.NumeroParcial) as Longa, '+        //nao utilizado
                                         '      count(AtendHI.AtendimentoHI) as Paciente, '+   //capeantes
                                         '      sum(AtendHI.Diarias) as Diarias, '+
                                         '      sum(DiariasLonga) as DiariasLongaCalculada, '+
                                         '      sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                         '      sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                         '      sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                         'from AtendHI '+
                                         'inner join Hospital on (AtendHI.Hospital=Hospital.Hospital) '+
                                         'where  (AtendHI.DataInternacao>=:xDataIni and AtendHI.DataInternacao<=:xDataFim and '+
                                         '        AtendHI.DataAlta>=:xDataIni       and AtendHI.DataAlta<=:xDataFim) and '+
                                         iLinhaD+' and  '+
                                         '      ((AtendHI.Servico='+QuotedStr('V')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('VL')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('CE')+'))'+
                                         iLinhaC+iLinhaH+
                                         iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaF+
                                         'group by AtendHI.Cliente,AtendHI.Hospital,Hospital.Nome '+
                                         'order by AtendHI.Cliente,Hospital.Nome ';

            iDataIni:=EncodeDate(iAno,iMes,1);
            iDataFim:=EndofAMonth(iAnoF,iMesF);
            qryEstatHospital1.ParamByName('xDataIni').asdate:=iDataIni;
            qryEstatHospital1.ParamByName('xDataFim').asdate:=iDataFim;

        end
        else
        begin // todos os demais relatorios

            qryEstatHospital1.SQL.Clear;
            qryEstatHospital1.SQL.Text:='Select AtendHI.Cliente, '+
                                         '      AtendHI.Hospital, '+
                                         '      Hospital. Nome, '+
                                         '      Cliente.Diarias as Longa, '+
                                         '      count(AtendHI.Paciente) as Paciente, '+
                                         '      sum(AtendHI.Diarias) as Diarias, '+
                                         '      sum(DiariasLonga) as DiariasLongaCalculada, '+
                                         '      sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                         '      sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                         '      sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                         'from AtendHI '+
                                         'inner join Cliente on  (AtendHI.Cliente=Cliente.Cliente) '+
                                         'inner join Hospital on (AtendHI.Hospital=Hospital.Hospital) '+
                                         'where (AtendHI.DiariasLonga>=Cliente.Diarias) and ('+iLinhaD+') '+
                                                iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaF+
                                         'group by AtendHI.Cliente,AtendHI.Hospital, Hospital.Nome, Cliente.Diarias  '+
                                         'order by AtendHI.Cliente,Hospital.Nome ';

         end;
         qryEstatHospital1.ParamByName('CliIni').asinteger:=iClienteIni;
         if not chkHospital.Checked then
             qryEstatHospital1.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospital1.Open;
        if rdgLayout.ItemIndex=7 then // Layout Porto Seguro    29/04/2019
        begin                         // Servicos V - VL - CE - Periodo Data Inicio/Final da Parcial (alem da competencia)
            if qryEstatHospital1.RecordCount=0 then
            begin
                ShowMessage('Nenhum informação a ser impressa');
            end;
        end;

//*************** Total por cliente,hospital - Diarias Clinicas/Cirurgicas

         qryParcial2.SQL.Clear;    //soma o total de parciais reais
         qryParcial2.SQL.Text:='Select  AtendHI.Cliente, '+
                              '         AtendHI.Hospital, '+
                              '         AtendHI.Internacao, '+
                              '         AtendHI.Paciente, '+
                              '         AtendHI.DataInicioP '+
                              'from AtendHI '+
                              'inner join  Hospital on AtendHI.Hospital=Hospital.Hospital '+
                              'where DataInicioP is not null and Parcial=1 and('+iLinhaD+') '+
                              iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaR+iLinhaF+
                              'group by AtendHI.Cliente, AtendHI.Hospital, Internacao, Paciente,DataInicioP '+
                              'order by AtendHI.Cliente, AtendHI.Hospital, Internacao, Paciente,DataInicioP';

         qryParcial2.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryParcial2.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryParcial2.Open;

         qryEstatHospital2.SQL.Clear;
         qryEstatHospital2.SQL.Text:='Select Cliente, '+
                                     '       Hospital, '+
                                     '       Internacao, '+
                                     '       count(Paciente) as Paciente, '+
                                     '       sum(Diarias) as Diarias, '+
                                     '       sum(DiasUTI) as DiariasUTI, '+
                                     '       sum(DiariasGlosadas) as DiariasGlosadas, '+
                                     '       sum(cast(Parcial as Integer)) as Parcial, '+
                                     '       sum(cast(Complemento as Integer)) as Complemento '+
                                     'from AtendHI '+
                                     'where ('+iLinhaD+') '+
                                     iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaF+
                                     'group by Cliente,Hospital,Internacao  '+
                                     'order by Cliente,Hospital,Internacao ';

         qryEstatHospital2.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryEstatHospital2.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospital2.Open;

//*************** Total por cliente - usa a qryParcial principal - linha total dos relatorios
        if rdgLayout.ItemIndex=7 then // Layout Porto Seguro    29/04/2019
        begin                         // Servicos V - VL - CE - Periodo Internacao/Alta (alem da competencia)
             qryEstatHospital3.SQL.Clear;
             qryEstatHospital3.SQL.Text:='Select AtendHI.Cliente, '+
                                         '       count(AtendHI.AtendimentoHI) as Paciente, '+    //capeantes
                                         '       sum(AtendHI.Diarias) as Diarias, '+
                                         '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                         '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                         '       sum(AtendHI.DiariasLonga) as DiariasLongaCalculada, '+
                                         '       sum(AtendHI.Valor) as Valor, '+
                                         '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                         '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                         '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                         '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                         '       sum(AtendHI.ValorGlosadoM + AtendHI.ValorGlosadoE) as ValorGlosado, '+
                                         '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                         '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                         'from AtendHI '+
                                         'where  (AtendHI.DataInternacao>=:xDataIni and AtendHI.DataInternacao<=:xDataFim and '+
                                         '        AtendHI.DataAlta>=:xDataIni       and AtendHI.DataAlta<=:xDataFim) and '+
                                         iLinhaD+' and  '+
                                         '      ((AtendHI.Servico='+QuotedStr('V')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('VL')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('CE')+'))'+
                                         iLinhaC+iLinhaH+
                                         iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaF+
                                         'group by Cliente  '+
                                         'order by Cliente ';
            iDataIni:=EncodeDate(iAno,iMes,1);
            iDataFim:=EndofAMonth(iAnoF,iMesF);
            qryEstatHospital3.ParamByName('xDataIni').asdate:=iDataIni;
            qryEstatHospital3.ParamByName('xDataFim').asdate:=iDataFim;
         end
         else
         begin
             qryEstatHospital3.SQL.Clear;
             qryEstatHospital3.SQL.Text:='Select AtendHI.Cliente, '+
                                         '       count(AtendHI.Paciente) as Paciente, '+
                                         '       sum(AtendHI.Diarias) as Diarias, '+
                                         '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                         '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                         '       sum(AtendHI.DiariasLonga) as DiariasLongaCalculada, '+
                                         '       sum(AtendHI.Valor) as Valor, '+
                                         '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                         '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                         '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                         '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                         '       sum(AtendHI.ValorGlosadoM + AtendHI.ValorGlosadoE) as ValorGlosado, '+
                                         '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                         '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                         'from AtendHI '+
                                         'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                         'where  ('+iLinhaD+') '+
                                         iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaR+iLinhaF+
                                         'group by Cliente  '+
                                         'order by Cliente ';
         end;

        qryEstatHospital3.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
            qryEstatHospital3.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospital3.Open;
         qryEstatHospital3.First;

//**** principal do relatorio

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
                                    iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaR+iLinhaF+
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
//***************
    if cmdExcel.Tag=0 then
    begin
         if (iMes=iMesF) and (iAno=IAnoF) then
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
         else
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                               InttoStr(iMesF)+'/'+IntToStr(iAnoF);

         frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

         case rdgLayout.ItemIndex of
         0,1:frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório Gerencial de Desempenho de Auditoria');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório Gerencial - Básico');
         3,4:frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório Gerencial - Detalhado / Pré-Analise');
         5,6:frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório Gerencial - Detalhado / Visita');
         7:frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório Gerencial de Desempenho de Visita');
         end;

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:iTitulo2:='Internação - Pré-Análise Hospital';
         1:iTitulo2:='Internação - Pos-Análise Hospital';
         2:iTitulo2:='Internação - Pré-Análise/Pos-Análise Hospital';
         end;

         case rdgMedia.ItemIndex of
         0:ititulo1:='Base Capeantes';
         1:ititulo1:='Base Pacientes';
         end;

        case rdgCFor.ItemIndex of
         0:iTitulo1:=iTitulo1+' - Complemento Fornecedor ';
         1:iTitulo1:=iTitulo1+' - Sem Complemento Fornecedor ';
        end;

         case rdgPacote.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Não Pacotes ';
         1:iTitulo2:=iTitulo2+' - Pacotes ';
         end;

         case rdgTipo.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Internações Clínicas ';
         1:iTitulo2:=iTitulo2+' - Internações Cirúrgicas ';
         end;

         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Regiao:'+iRegiaoNome);

         frmMenu.rvBBAuditoria.SetParam('Titulo1',ititulo1);
         frmMenu.rvBBAuditoria.SetParam('Titulo2',ititulo2);

         case rdgLayout.ItemIndex of
         0:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospital',true);
         1:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalSD',true);
         2:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalB',true);
         3:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalP',true);
         4:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalP1',true);
         5:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalV',true);
         6:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalV1',true);
         7:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalVPS',true);  //visita PortoSeguro
         end;
         frmMenu.rvBBAuditoria.Execute;
     end;
     if cmdExcel.Tag=1 then
     begin
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
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=qryEstatHospital;
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryEstatHospital.Close;
     end;
     end;
    cmdExcel.Tag:=0;
end;

procedure TfrmRelEstatisticaHospital.cmdExcelClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaI,iLinhaD,iCompetencia,iLinhaID,iClienteID,iLinhaR,iLinhaF,iLinhaP:string;
begin
     cmdExcel.Tag:=1;
     cmdOriginalClick(sender);
     abort;
end;

procedure TfrmRelEstatisticaHospital.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelEstatisticaHospital.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelEstatisticaHospital.cmdExcelBradescoClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaI,iLinhaD,iLinhaF,iCompetencia,iLinhaID,iClienteID,iLinhaR:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iClienteID:=dbClienteIDID.value;
     iRegiao:=dbRegiaoRegiao.value;
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

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
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
//         dbPro.Open;
         qryExcelBradesco.SQL.Clear;
         qryExcelBradesco.SQL.Text:='Select * from AtendHI, Hospital '+
                                    'where AtendHI.Hospital=Hospital.Hospital and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaID+iLinhaR+iLinhaF+
                                    'order by Cliente,Nome, AtendimentoHI ';

         qryExcelBradesco.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryExcelBradesco.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryExcelBradesco.Open;
         if (qryExcelBradesco.RecordCount=0) or
            ((qryExcelBradesco.RecordCount=1) and (qryExcelBradescoPaciente.Value=0)) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryExcelBradesco.Close;
            abort;
         end;
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=qryExcelBradesco;      //nao tem%
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryExcelBradesco.Close;
     end;
end;

procedure TfrmRelEstatisticaHospital.cmdExcelCESPClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iLinhaH,iLInhaC,iLinhaI,iLinhaA,iLinhaD,iCompetencia,iLinhaID,iClienteID,iLinhaR,iLinhaF:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iClienteID:=dbClienteIDID.value;
     iRegiao:=dbRegiaoRegiao.value;
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

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
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
//         dbPro.Open;
         qryExcelCesp.SQL.Clear;
         qryExcelCesp.SQL.Text:='Select * from AtendHI, Hospital '+
                                    'where AtendHI.Hospital=Hospital.Hospital and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaID+iLinhaR+iLinhaF+
                                    'order by AtendHI.Cliente,Nome, AtendimentoHI ';

         qryExcelCesp.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryExcelCesp.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryExcelCesp.Open;
         if (qryExcelCesp.RecordCount=0) or
            ((qryExcelCesp.RecordCount=1) and (qryExcelCespPaciente.Value=0)) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryExcelCesp.Close;
            abort;
         end;
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=qryExcelCesp;    // nao tem %
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryExcelCesp.Close;
     end;
end;

procedure TfrmRelEstatisticaHospital.chkRegiaoClick(Sender: TObject);
begin
    if chkRegiao.Checked then
       cmpRegiao.Visible:=false
    else
       cmpRegiao.Visible:=true;
end;

procedure TfrmRelEstatisticaHospital.cmdExcelCClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLinhaA,iLinhaI,iLinhaD,iCompetencia,iLinhaR,iLinhaF:string;
begin
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
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

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
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
//         dbPro.Open;

         qryEstatHospitalC4.Close;
         qryEstatHospitalC4.SQL.Clear;
         qryEstatHospitalC4.SQL.Text:='Select AtendHI.Hospital as Hospital, '+
                                '     sum(AtendHI.Diarias) as Diarias, '+
                                '     sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                '     sum(AtendHI.DiariasCalculadas) as DiariasCalculadas '+
                                'from AtendHI, Hospital '+
                                'where AtendHI.DiariasCalculadas>AtendHI.Diarias and '+
                                '      AtendHI.Complemento=0 and '+
                                '      AtendHI.Hospital=Hospital.Hospital and ('+
                                iLinhaD+') '+
                                iLinhaH+iLinhaA+iLinhaI+iLinhaR+iLinhaF+
                                'group by AtendHI.Hospital '+
                                'order by AtendHI.Hospital ';

         if not chkHospital.Checked then
             qryEstatHospitalC4.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospitalC4.Open;

         qryEstatHospitalC.SQL.Clear;
         qryEstatHospitalC.SQL.Text:='Select AtendHI.Hospital, '+
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
                                    iLinhaH+iLinhaA+iLinhaI+iLinhaR+iLinhaF+
                                    'group by AtendHI.Hospital,Nome  '+
                                    'order by Nome ';

         if not chkHospital.Checked then
             qryEstatHospitalC.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospitalC.Open;
         if (qryEstatHospitalC.RecordCount=0) or
            ((qryEstatHospitalC.RecordCount=1) and (qryEstatHospitalCPaciente.Value=0)) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatHospitalC.Close;
            abort;
         end;
         frmMenu.ExcelExport.ExcelVisible:=true;
         qryEstatHospitalCGlosaPorc.DisplayFormat:='##0.00';
         frmMenu.ExcelExport.Dataset:=qryEstatHospitalC;
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryEstatHospitalC.Close;
     end;

end;

procedure TfrmRelEstatisticaHospital.cmdOriginalTodosClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLinhaA,iLinhaD,iCompetencia,
    iLinhaP,iLinhaI,iLinhaR,iLinhaF:string;
var iRegiaoNome,ititulo1,ititulo2:string;
begin
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

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=0 ';
    1:iLinhaP:=' and AtendHI.Pacote=1 ';
    2:iLinhaP:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
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
//         dbPro.Open;

//         **** Total por Hospital
         qryestatHospitalC4.Close;
         qryestatHospitalC4.SQL.Clear;
         qryestatHospitalC4.SQL.Text:='Select AtendHI.Hospital as Hospital, '+
                                '     sum(AtendHI.Diarias) as Diarias, '+
                                '     sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                '     sum(AtendHI.DiariasCalculadas) as DiariasCalculadas '+
                                'from AtendHI, Hospital '+
                                'where AtendHI.DiariasCalculadas>AtendHI.Diarias and '+
                                '      AtendHI.Complemento=0 and '+
                                '      AtendHI.Hospital=Hospital.Hospital and ('+
                                iLinhaD+') '+
                                iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaR+iLinhaF+
                                'group by AtendHI.Hospital '+
                                'order by AtendHI.Hospital ';

         if not chkHospital.Checked then
             qryestatHospitalC4.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryestatHospitalC4.Open;

//***************
         qryParcialC.SQL.Clear;    //soma o total de parciais reais
         qryParcialC.SQL.Text:='Select AtendHI.Hospital, '+
                              '        AtendHI.Paciente, '+
                              '        AtendHI.DataInicioP '+
                              'from AtendHI,Hospital '+
                              'where DataInicioP is not null and Parcial=1 and '+
                              '      AtendHI.Hospital=Hospital.Hospital and('+
                              iLinhaD+') '+
                              iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaR+iLinhaF+
                              'group by AtendHI.Hospital, Paciente,DataInicioP '+
                              'order by AtendHI.Hospital, Paciente,DataInicioP';

         if not chkHospital.Checked then
             qryParcialC.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryParcialC.Open;

//*************** Total por cliente - usa a qryParcialC principal
         qryestatHospitalC3.SQL.Clear;
         qryestatHospitalC3.SQL.Text:='Select count(AtendHI.Paciente) as Paciente, '+
                                '       sum(AtendHI.Diarias) as Diarias, '+
                                '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                '       sum(AtendHI.Valor) as Valor, '+
                                '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                '       sum(AtendHI.ValorGlosadoM + AtendHI.ValorGlosadoE) as ValorGlosado, '+
                                '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                '       sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                'from AtendHI,Hospital '+
                                'where AtendHI.Hospital=Hospital.Hospital and ('+iLinhaD+') '+
                                iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaR+iLinhaF;

         if not chkHospital.Checked then
            qryestatHospitalC3.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryestatHospitalC3.Open;
         qryestatHospitalC3.First;

         qryestatHospitalC.SQL.Clear;
         qryestatHospitalC.SQL.Text:='Select AtendHI.Hospital, '+
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
                                    iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaR+iLinhaF+
                                    'group by AtendHI.Hospital,Nome  '+
                                    'order by Nome ';

         if not chkHospital.Checked then
             qryestatHospitalC.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryestatHospitalC.Open;
         if (qryestatHospitalC.RecordCount=0) or
            ((qryestatHospitalC.RecordCount=1) and (qryestatHospitalCPaciente.Value=0)) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryestatHospitalC.Close;
            abort;
         end;
//***************
         if (iMes=iMesF) and (iAno=IAnoF) then
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
         else
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                               InttoStr(iMesF)+'/'+IntToStr(iAnoF);

         frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);
         frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório Gerencial de Desempenho de Auditoria');

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:iTitulo2:='Internação - Pré-Análise Hospital';
         1:iTitulo2:='Internação - Pos-Análise Hospital';
         2:iTitulo2:='Internação - Pré-Análise/Pos-Análise Hospital';
         end;

         case rdgMedia.ItemIndex of
         0:ititulo1:='Base Capeantes';
         1:ititulo1:='Base Pacientes';
         end;

         case rdgMedia.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Media','Capeantes');
         1:frmMenu.rvBBAuditoria.SetParam('Media','Pacientes');
         end;

        case rdgCFor.ItemIndex of
         0:iTitulo1:=iTitulo1+' - Complemento Fornecedor ';
         1:iTitulo1:=iTitulo1+' - Sem Complemento Fornecedor ';
        end;

         case rdgPacote.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Não Pacotes ';
         1:iTitulo2:=iTitulo2+' - Pacotes ';
         end;

         case rdgTipo.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Internações Clínicas ';
         1:iTitulo2:=iTitulo2+' - Internações Cirúrgicas ';
         end;

         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Regiao:'+iRegiaoNome);

         frmMenu.rvBBAuditoria.SetParam('Titulo1',ititulo1);
         frmMenu.rvBBAuditoria.SetParam('Titulo2',ititulo2);
         frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalGeral',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelEstatisticaHospital.rdgLayoutClick(Sender: TObject);
begin
    if (rdgLayout.ItemIndex=0) then
        cmdOriginalTodos.Enabled:=true
    else
        cmdOriginalTodos.Enabled:=false;

    if rdgLayout.ItemIndex=7 then
        rdgMedia.Visible:=false
    else
        rdgMedia.Visible:=true;
end;

procedure TfrmRelEstatisticaHospital.cmdExcelPortoClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaD,iCompetencia,
    iLinhaP,iLinhaI,iLinhaID,iClienteID,iLinhaR,iLinhaF:string;
var iRegiaoNome,ititulo1,ititulo2:string;
var iDataIni,iDataFim:TDate;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iClienteID:=dbClienteIDID.value;
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

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=0 ';
    1:iLinhaP:=' and AtendHI.Pacote=1 ';
    2:iLinhaP:='';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
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
            qryEstatHospital1.SQL.Clear;
            qryEstatHospital1.SQL.Text:='Select AtendHI.Cliente, '+
                                         '      AtendHI.Hospital, '+
                                         '      Hospital.Nome, '+
                                         '      Cliente.Diarias as Longa, '+
                                         '      count(AtendHI.Paciente) as Paciente, '+
                                         '      sum(AtendHI.Diarias) as Diarias, '+
                                         '      sum(DiariasLonga) as DiariasLongaCalculada, '+
                                         '      sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                         '      sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                         '      sum(cast(AtendHI.Complemento as Integer)) as Complemento '+
                                         'from AtendHI '+
                                         'inner join Cliente on  (AtendHI.Cliente=Cliente.Cliente) '+
                                         'inner join Hospital on (AtendHI.Hospital=Hospital.Hospital) '+
                                         'where ((AtendHI.DataInicioP>=:xDataIni) and (AtendHI.DataInicioP<=:xDataFim) and '+iLinhaD+') and  '+
                                         '      ((AtendHI.Servico='+QuotedStr('V')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('VL')+') or '+
                                         '       (AtendHI.Servico='+QuotedStr('CE')+')) '+
                                          iLinhaC+iLinhaH+iLinhaA+iLinhaI+iLinhaP+iLinhaID+iLinhaF+
                                         'group by AtendHI.Cliente,AtendHI.Hospital,Hospital.Nome, Cliente.Diarias  '+
                                         'order by AtendHI.Cliente,Hospital.Nome ';
            iDataIni:=EncodeDate(iAno,iMes,1);
            iDataFim:=EndofAMonth(iAnoF,iMesF);
            qryEstatHospital1.ParamByName('xDataIni').value:=iDataIni;
            qryEstatHospital1.ParamByName('xDataFim').value:=iDataFim;

         qryEstatHospital1.ParamByName('CliIni').asinteger:=iClienteIni;
         if not chkHospital.Checked then
             qryEstatHospital1.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryEstatHospital1.Open;
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=qryEstatHospital1;      //nao tem%
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryEstatHospital1.Close;



     end;

end;

end.
