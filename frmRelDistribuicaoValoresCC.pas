unit frmRelDistribuicaoValoresCC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids,
  DBGrids;

type
  TfrmRelDistribuicaoValorCC = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    rdgAnalise: TRadioGroup;
    dbClienteIni: TMSTable;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    dsClienteIni: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    qryExcelCC: TMSQuery;
    Panel2: TPanel;
    cmdImprimir: TBitBtn;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryExcelBR: TMSQuery;
    rdgPacote: TRadioGroup;
    rdgTipo: TRadioGroup;
    qryExcelCCHospital: TStringField;
    qryExcelCCDiarias: TCurrencyField;
    qryExcelCCPDiarias: TFloatField;
    qryExcelCCTaxas: TCurrencyField;
    qryExcelCCPTaxas: TFloatField;
    qryExcelCCHMedicos: TCurrencyField;
    qryExcelCCPHMedicos: TFloatField;
    qryExcelCCGases: TCurrencyField;
    qryExcelCCPGases: TFloatField;
    qryExcelCCHemos: TCurrencyField;
    qryExcelCCPHemo: TFloatField;
    qryExcelCCSADT: TCurrencyField;
    qryExcelCCPSADT: TFloatField;
    qryExcelCCMedicamentos: TCurrencyField;
    qryExcelCCPMedicamentos: TFloatField;
    qryExcelCCMateriais: TCurrencyField;
    qryExcelCCPMateriais: TFloatField;
    qryExcelCCPacotes: TCurrencyField;
    qryExcelCCPPacotes: TFloatField;
    qryExcelCCOutros: TCurrencyField;
    qryExcelCCPOutros: TFloatField;
    qryExcelBRHospital: TStringField;
    qryExcelBRDiarias: TCurrencyField;
    qryExcelBRPDiarias: TFloatField;
    qryExcelBRDiariasUTI: TCurrencyField;
    qryExcelBRPDiariasUTI: TFloatField;
    qryExcelBRTaxas: TCurrencyField;
    qryExcelBRPTaxas: TFloatField;
    qryExcelBRHMedicos: TCurrencyField;
    qryExcelBRPHMedicos: TFloatField;
    qryExcelBRGases: TCurrencyField;
    qryExcelBRPGases: TFloatField;
    qryExcelBRHemos: TCurrencyField;
    qryExcelBRPHemos: TFloatField;
    qryExcelBRSADT: TCurrencyField;
    qryExcelBRPSADT: TFloatField;
    qryExcelBRMedicamentos: TCurrencyField;
    qryExcelBRPMedicamentos: TFloatField;
    qryExcelBRMateriais: TCurrencyField;
    qryExcelBRPMateriais: TFloatField;
    qryExcelBRMateriaisE: TCurrencyField;
    qryExcelBRPMateriaisE: TFloatField;
    qryExcelBRPacote: TCurrencyField;
    qryExcelBRPPacote: TFloatField;
    qryExcelBROutros: TCurrencyField;
    qryExcelBRPOutros: TFloatField;
    chkRel: TRadioGroup;
    rdgLogo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    iLogo:integer; 
    { Public declarations }
  end;

var
  frmRelDistribuicaoValorCC: TfrmRelDistribuicaoValorCC;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelDistribuicaoValorCC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelDistribuicaoValorCC.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmRelDistribuicaoValorCC.cmdImprimirClick(Sender: TObject);
var iHospital,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLInhaC,iLinhaA,iLinhaD,iLinhaP,iLinhaI,iCompentecia,iTitulo2:string;
begin
//*** relatorio exclusivo para as glosas utilizadas pelo cliente Fundacao Cesp
     iClienteIni:=dbClienteIniCliente.Value;
     iLinhaC:=' and AtendHI.Cliente=:CliIni ';

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

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

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=1 ';
    1:iLinhaP:=' and AtendHI.Pacote=0 ';
    2:iLinhaP:='';
    end;

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
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
         qryDistribuicaoCC.SQL.Clear;
         qryDistribuicaoCC.SQL.Text:='Select AtendHIGlosa.Cliente as Cliente, '+
                                    '        AtendHI.Hospital as Hospital, '+
                                    '        AtendHIGlosa.GlosaI as GlosaI, '+
                                    '        sum(AtendHIGlosa.Valor) as Glosa, '+
                                    '        sum(AtendHIGlosa.ValorApresentado) as Valor '+
                                    'from AtendHIGlosa '+
                                    'inner join AtendHI on AtendHIGlosa.Cliente=AtendHI.Cliente and '+
                                    '                      AtendHIGlosa.AtendimentoHI=AtendHI.AtendimentoHI '+
                                    'where AtendHIGlosa.Tipo='+QuotedStr('G')+' and '+
                                    '      (AtendHIGlosa.GlosaI<>'+QuotedStr('VA')+' and '+
                                    '       AtendHIGlosa.GlosaI<>'+QuotedStr('GT')+') and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaA+iLinhaP+iLinhaI+
                                    'group by AtendHIGlosa.Cliente,Hospital,GlosaI  '+
                                    'order by AtendHIGlosa.Cliente,Hospital,GlosaI ';


         qryDistribuicaoCC.ParamByName('CliIni').asinteger:=iClienteIni;

         qryDistribuicaoCC.Open;
         if (qryDistribuicaoCC.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDistribuicaoCC.Close;
            abort;
         end;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.IndexFieldNames:='Legenda;Nome';

         while not qryDistribuicaoCC.eof do
         begin
            dbGraficoAux.Insert;
            iHospital:=qryDistribuicaoCCHospital.value;
            dbGraficoAuxHospital.value:=iHospital;
            dbGraficoAuxNome.value:=qryDistribuicaoCCHospitalNome.value;
            dbGraficoAuxRegiao.value:=qryDistribuicaoCCCliente.value;
            dbGraficoAuxLegenda.value:=qryDistribuicaoCCClienteNome.value;
            while (qryDistribuicaoCCHospital.value=iHospital) and
                  (not qryDistribuicaoCC.eof) do
            begin
                if qryDistribuicaoCCGlosaI.value='DI' then
                begin
                    dbGraficoAuxValor1.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa1.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='TX' then
                begin
                    dbGraficoAuxValor2.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa2.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HM' then
                begin
                    dbGraficoAuxValor3.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa3.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='GA' then
                begin
                    dbGraficoAuxValor4.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa4.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HE' then
                begin
                    dbGraficoAuxValor5.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa5.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='DT' then
                begin
                    dbGraficoAuxValor6.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa6.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MD' then
                begin
                    dbGraficoAuxValor7.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa7.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MT' then
                begin
                    dbGraficoAuxValor8.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa8.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='PT' then
                begin
                    dbGraficoAuxValor9.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa9.value:=qryDistribuicaoCCValor.value;
                end;
                if (qryDistribuicaoCCGlosaI.value<>'DI') and
                   (qryDistribuicaoCCGlosaI.value<>'TX') and
                   (qryDistribuicaoCCGlosaI.value<>'HM') and
                   (qryDistribuicaoCCGlosaI.value<>'GA') and
                   (qryDistribuicaoCCGlosaI.value<>'HE') and
                   (qryDistribuicaoCCGlosaI.value<>'DT') and
                   (qryDistribuicaoCCGlosaI.value<>'MD') and
                   (qryDistribuicaoCCGlosaI.value<>'PT') and
                   (qryDistribuicaoCCGlosaI.value<>'MT') then
                 begin
                    dbGraficoAuxValor10.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa10.value:=qryDistribuicaoCCValor.value;
                end;
                qryDistribuicaoCC.Next;
            end;
            dbGraficoAux.Post;
         end;
         dbGraficoAux.Refresh;

         dbGraficoAux.First;
         while not dbGraficoAux.eof do
         begin
            dbGraficoAux.Edit;
            if dbGraficoAuxGlosa1.value>0 then
                dbGraficoAuxP1.value:=(1-(dbGraficoAuxValor1.value/dbGraficoAuxGlosa1.value))*100;
            if dbGraficoAuxGlosa2.value>0 then
                dbGraficoAuxP2.value:=(1-(dbGraficoAuxValor2.value/dbGraficoAuxGlosa2.value))*100;
            if dbGraficoAuxGlosa3.value>0 then
                dbGraficoAuxP3.value:=(1-(dbGraficoAuxValor3.value/dbGraficoAuxGlosa3.value))*100;
            if dbGraficoAuxGlosa4.value>0 then
                dbGraficoAuxP4.value:=(1-(dbGraficoAuxValor4.value/dbGraficoAuxGlosa4.value))*100;
            if dbGraficoAuxGlosa5.value>0 then
                dbGraficoAuxP5.value:=(1-(dbGraficoAuxValor5.value/dbGraficoAuxGlosa5.value))*100;
            if dbGraficoAuxGlosa6.value>0 then
                dbGraficoAuxP6.value:=(1-(dbGraficoAuxValor6.value/dbGraficoAuxGlosa6.value))*100;
            if dbGraficoAuxGlosa7.value>0 then
                dbGraficoAuxP7.value:=(1-(dbGraficoAuxValor7.value/dbGraficoAuxGlosa7.value))*100;
            if dbGraficoAuxGlosa8.value>0 then
                dbGraficoAuxP8.value:=(1-(dbGraficoAuxValor8.value/dbGraficoAuxGlosa8.value))*100;
            if dbGraficoAuxGlosa9.value>0 then
                dbGraficoAuxP9.value:=(1-(dbGraficoAuxValor9.value/dbGraficoAuxGlosa9.value))*100;
            if dbGraficoAuxGlosa10.value>0 then
                dbGraficoAuxP10.value:=(1-(dbGraficoAuxValor10.value/dbGraficoAuxGlosa10.value))*100;
            dbGraficoAux.Post;
            dbGraficoAux.Next;
        end;
         dbGraficoAux.Refresh;

         qryDistribuicaoCC.First;
         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));
         frmMenu.rvBBAuditoria.SetParam('Titulo','Distribuição do Valor Glosado por Centro de Custo');
         frmMenu.rvBBAuditoria.SetParam('ClienteNome',qryDistribuicaoCCClienteNome.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         case rdgPacote.ItemIndex of
         0:iTitulo2:=iTitulo2+' Não Pacotes ';
         1:iTitulo2:=iTitulo2+' Pacotes ';
         end;

         case rdgTipo.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Internações Clínicas ';
         1:iTitulo2:=iTitulo2+' - Internações Cirúrgicas ';
         end;

         frmMenu.rvBBAuditoria.SetParam('Titulo2',ititulo2);

         case chkRel.ItemIndex of
         0:frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCCV',true);
         1:frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCCP',true);
         2:frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCC',true);
         end;
         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelDistribuicaoValorCC.BitBtn1Click(Sender: TObject);
var iHospital,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLInhaC,iLinhaA,iLinhaD,iLinhaP,iLinhaI,iCompentecia:string;
begin
//*** relatorio exclusivo para as glosas utilizadas pelo cliente Fundacao Cesp
     iClienteIni:=dbClienteIniCliente.Value;
     iLinhaC:=' and AtendHI.Cliente=:CliIni ';

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

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=1 ';
    1:iLinhaP:=' and AtendHI.Pacote=0 ';
    2:iLinhaP:='';
    end;

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
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
         qryDistribuicaoCC.SQL.Clear;
         qryDistribuicaoCC.SQL.Text:='Select AtendHIGlosa.Cliente as Cliente, '+
                                    '        AtendHI.Hospital as Hospital, '+
                                    '        AtendHIGlosa.GlosaI as GlosaI, '+
                                    '        sum(AtendHIGlosa.Valor) as Glosa, '+
                                    '        sum(AtendHIGlosa.ValorApresentado) as Valor '+
                                    'from AtendHIGlosa '+
                                    'inner join AtendHI on AtendHIGlosa.Cliente=AtendHI.Cliente and '+
                                    '                      AtendHIGlosa.AtendimentoHI=AtendHI.AtendimentoHI '+
                                    'where AtendHIGlosa.Tipo='+QuotedStr('G')+' and '+
                                    '      (AtendHIGlosa.GlosaI<>'+QuotedStr('VA')+' and '+
                                    '      AtendHIGlosa.GlosaI<>'+QuotedStr('GT')+') and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaA+iLinhaP+iLinhaI+
                                    'group by AtendHIGlosa.Cliente,Hospital,GlosaI  '+
                                    'order by AtendHIGlosa.Cliente,Hospital,GlosaI ';


         qryDistribuicaoCC.ParamByName('CliIni').asinteger:=iClienteIni;

         qryDistribuicaoCC.Open;
         if (qryDistribuicaoCC.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDistribuicaoCC.Close;
            abort;
         end;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.IndexFieldNames:='Legenda;Nome';

         while not qryDistribuicaoCC.eof do
         begin
            dbGraficoAux.Insert;
            iHospital:=qryDistribuicaoCCHospital.value;
            dbGraficoAuxHospital.value:=iHospital;
            dbGraficoAuxNome.value:=qryDistribuicaoCCHospitalNome.value;
            dbGraficoAuxRegiao.value:=qryDistribuicaoCCCliente.value;
            dbGraficoAuxLegenda.value:=qryDistribuicaoCCClienteNome.value;
            while (qryDistribuicaoCCHospital.value=iHospital) and
                  (not qryDistribuicaoCC.eof) do
            begin
                if qryDistribuicaoCCGlosaI.value='DI' then
                begin
                    dbGraficoAuxValor1.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa1.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='TX' then
                begin
                    dbGraficoAuxValor2.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa2.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HM' then
                begin
                    dbGraficoAuxValor3.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa3.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='GA' then
                begin
                    dbGraficoAuxValor4.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa4.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HE' then
                begin
                    dbGraficoAuxValor5.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa5.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='DT' then
                begin
                    dbGraficoAuxValor6.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa6.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MD' then
                begin
                    dbGraficoAuxValor7.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa7.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MT' then
                begin
                    dbGraficoAuxValor8.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa8.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='PT' then
                begin
                    dbGraficoAuxValor9.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa9.value:=qryDistribuicaoCCValor.value;
                end;
                if (qryDistribuicaoCCGlosaI.value<>'DI') and
                   (qryDistribuicaoCCGlosaI.value<>'TX') and
                   (qryDistribuicaoCCGlosaI.value<>'HM') and
                   (qryDistribuicaoCCGlosaI.value<>'GA') and
                   (qryDistribuicaoCCGlosaI.value<>'HE') and
                   (qryDistribuicaoCCGlosaI.value<>'DT') and
                   (qryDistribuicaoCCGlosaI.value<>'MD') and
                   (qryDistribuicaoCCGlosaI.value<>'PT') and
                   (qryDistribuicaoCCGlosaI.value<>'MT') then
                 begin
                    dbGraficoAuxValor10.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa10.value:=qryDistribuicaoCCValor.value;
                end;
                qryDistribuicaoCC.Next;
            end;
            dbGraficoAux.Post;
         end;
         dbGraficoAux.Refresh;

         dbGraficoAux.First;
         while not dbGraficoAux.eof do
         begin
            dbGraficoAux.Edit;
            if dbGraficoAuxGlosa1.value>0 then
                dbGraficoAuxP1.value:=(1-(dbGraficoAuxValor1.value/dbGraficoAuxGlosa1.value))*100;
            if dbGraficoAuxGlosa2.value>0 then
                dbGraficoAuxP2.value:=(1-(dbGraficoAuxValor2.value/dbGraficoAuxGlosa2.value))*100;
            if dbGraficoAuxGlosa3.value>0 then
                dbGraficoAuxP3.value:=(1-(dbGraficoAuxValor3.value/dbGraficoAuxGlosa3.value))*100;
            if dbGraficoAuxGlosa4.value>0 then
                dbGraficoAuxP4.value:=(1-(dbGraficoAuxValor4.value/dbGraficoAuxGlosa4.value))*100;
            if dbGraficoAuxGlosa5.value>0 then
                dbGraficoAuxP5.value:=(1-(dbGraficoAuxValor5.value/dbGraficoAuxGlosa5.value))*100;
            if dbGraficoAuxGlosa6.value>0 then
                dbGraficoAuxP6.value:=(1-(dbGraficoAuxValor6.value/dbGraficoAuxGlosa6.value))*100;
            if dbGraficoAuxGlosa7.value>0 then
                dbGraficoAuxP7.value:=(1-(dbGraficoAuxValor7.value/dbGraficoAuxGlosa7.value))*100;
            if dbGraficoAuxGlosa8.value>0 then
                dbGraficoAuxP8.value:=(1-(dbGraficoAuxValor8.value/dbGraficoAuxGlosa8.value))*100;
            if dbGraficoAuxGlosa9.value>0 then
                dbGraficoAuxP9.value:=(1-(dbGraficoAuxValor9.value/dbGraficoAuxGlosa9.value))*100;
            if dbGraficoAuxGlosa10.value>0 then
                dbGraficoAuxP10.value:=(1-(dbGraficoAuxValor10.value/dbGraficoAuxGlosa10.value))*100;
            dbGraficoAux.Post;
            dbGraficoAux.Next;
        end;

         dbGraficoAux.Refresh;
         qryExcelCC.Close;
         qryExcelCC.Open;
         frmMenu.ExcelExport.ExcelVisible:=true;
         qryExcelCCPDiarias.DisplayFormat:='##0.00';
         frmMenu.ExcelExport.Dataset:=qryExcelCC;
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryExcelCC.Close;
     end;

end;

procedure TfrmRelDistribuicaoValorCC.BitBtn2Click(Sender: TObject);
var iHospital,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLInhaC,iLinhaA,iLinhaD,iLinhaP,iLinhaI,iCompentecia,iTitulo2:string;
begin
//*** relatorio exclusivo para as glosas utilizadas pelo cliente Bradesco
     iClienteIni:=dbClienteIniCliente.Value;
     iLinhaC:=' and AtendHI.Cliente=:CliIni ';

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

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

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=1 ';
    1:iLinhaP:=' and AtendHI.Pacote=0 ';
    2:iLinhaP:='';
    end;

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
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
         qryDistribuicaoCC.SQL.Clear;
         qryDistribuicaoCC.SQL.Text:='Select AtendHIGlosa.Cliente as Cliente, '+
                                    '        AtendHI.Hospital as Hospital, '+
                                    '        AtendHIGlosa.GlosaI as GlosaI, '+
                                    '        sum(AtendHIGlosa.Valor) as Glosa, '+
                                    '        sum(AtendHIGlosa.ValorApresentado) as Valor '+
                                    'from AtendHIGlosa Inner Join AtendHI '+
                                    'on AtendHIGlosa.Cliente=AtendHI.Cliente and '+
                                    '   AtendHIGlosa.AtendimentoHI=AtendHI.AtendimentoHI '+
                                    'where AtendHIGlosa.Tipo='+QuotedStr('G')+' and '+
                                    '     (AtendHIGlosa.GlosaI<>'+QuotedStr('VA')+' and '+
                                    '      AtendHIGlosa.GlosaI<>'+QuotedStr('GT')+') and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaA+iLinhaP+iLinhaI+
                                    'group by AtendHIGlosa.Cliente,Hospital,GlosaI  '+
                                    'order by AtendHIGlosa.Cliente,Hospital,GlosaI ';

         qryDistribuicaoCC.ParamByName('CliIni').asinteger:=iClienteIni;

         qryDistribuicaoCC.Open;
         if (qryDistribuicaoCC.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDistribuicaoCC.Close;
            abort;
         end;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.IndexFieldNames:='Legenda;Nome';

         qryDistribuicaoCC.First;
         while not qryDistribuicaoCC.eof do
         begin
            dbGraficoAux.Insert;
            iHospital:=qryDistribuicaoCCHospital.value;
            dbGraficoAuxHospital.value:=iHospital;
            dbGraficoAuxNome.value:=qryDistribuicaoCCHospitalNome.value;
            dbGraficoAuxRegiao.value:=qryDistribuicaoCCCliente.value;
            dbGraficoAuxLegenda.value:=qryDistribuicaoCCClienteNome.value;
            while (qryDistribuicaoCCHospital.value=iHospital) and
                  (not qryDistribuicaoCC.eof) do
            begin
                if (qryDistribuicaoCCGlosaI.value='DI') or
                   (qryDistribuicaoCCGlosaI.value='AP') or
                   (qryDistribuicaoCCGlosaI.value='EN') or
                   (qryDistribuicaoCCGlosaI.value='SE') or
                   (qryDistribuicaoCCGlosaI.value='BE') or
                   (qryDistribuicaoCCGlosaI.value='IS') or
                   (qryDistribuicaoCCGlosaI.value='DA') or
                   (qryDistribuicaoCCGlosaI.value='DC') then
                begin
                    dbGraficoAuxValor1.value:=dbGraficoAuxValor1.value+qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa1.value:=dbGraficoAuxGlosa1.value+qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='UT' then
                begin
                    dbGraficoAuxValor2.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa2.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='TX' then
                begin
                    dbGraficoAuxValor3.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa3.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HM' then
                begin
                    dbGraficoAuxValor4.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa4.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='GA' then
                begin
                    dbGraficoAuxValor5.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa5.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HE' then
                begin
                    dbGraficoAuxValor6.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa6.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='DT' then
                begin
                    dbGraficoAuxValor7.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa7.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MD' then
                begin
                    dbGraficoAuxValor8.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa8.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MT' then
                begin
                    dbGraficoAuxValor9.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa9.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='ME' then
                begin
                    dbGraficoAuxValor10.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa10.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='PT' then
                begin
                    dbGraficoAuxValor11.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa11.value:=qryDistribuicaoCCValor.value;
                end;
                if (qryDistribuicaoCCGlosaI.value<>'DI') and
                   (qryDistribuicaoCCGlosaI.value<>'AP') and
                   (qryDistribuicaoCCGlosaI.value<>'EN') and
                   (qryDistribuicaoCCGlosaI.value<>'SE') and
                   (qryDistribuicaoCCGlosaI.value<>'BE') and
                   (qryDistribuicaoCCGlosaI.value<>'IS') and
                   (qryDistribuicaoCCGlosaI.value<>'DA') and
                   (qryDistribuicaoCCGlosaI.value<>'DC') and
                   (qryDistribuicaoCCGlosaI.value<>'UT') and
                   (qryDistribuicaoCCGlosaI.value<>'TX') and
                   (qryDistribuicaoCCGlosaI.value<>'HM') and
                   (qryDistribuicaoCCGlosaI.value<>'GA') and
                   (qryDistribuicaoCCGlosaI.value<>'HE') and
                   (qryDistribuicaoCCGlosaI.value<>'DT') and
                   (qryDistribuicaoCCGlosaI.value<>'MD') and
                   (qryDistribuicaoCCGlosaI.value<>'MT') and
                   (qryDistribuicaoCCGlosaI.value<>'ME') and
                   (qryDistribuicaoCCGlosaI.value<>'PT') then
                begin
                    dbGraficoAuxValor12.value:=dbGraficoAuxValor12.value+qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa12.value:=dbGraficoAuxGlosa12.value+qryDistribuicaoCCValor.value;
                end;
                qryDistribuicaoCC.Next;
            end;
            dbGraficoAux.Post;
         end;
         dbGraficoAux.Refresh;

         dbGraficoAux.First;
         while not dbGraficoAux.eof do
         begin
            dbGraficoAux.Edit;
            if dbGraficoAuxGlosa1.value>0 then
                dbGraficoAuxP1.value:=(1-(dbGraficoAuxValor1.value/dbGraficoAuxGlosa1.value))*100;
            if dbGraficoAuxGlosa2.value>0 then
                dbGraficoAuxP2.value:=(1-(dbGraficoAuxValor2.value/dbGraficoAuxGlosa2.value))*100;
            if dbGraficoAuxGlosa3.value>0 then
                dbGraficoAuxP3.value:=(1-(dbGraficoAuxValor3.value/dbGraficoAuxGlosa3.value))*100;
            if dbGraficoAuxGlosa4.value>0 then
                dbGraficoAuxP4.value:=(1-(dbGraficoAuxValor4.value/dbGraficoAuxGlosa4.value))*100;
            if dbGraficoAuxGlosa5.value>0 then
                dbGraficoAuxP5.value:=(1-(dbGraficoAuxValor5.value/dbGraficoAuxGlosa5.value))*100;
            if dbGraficoAuxGlosa6.value>0 then
                dbGraficoAuxP6.value:=(1-(dbGraficoAuxValor6.value/dbGraficoAuxGlosa6.value))*100;
            if dbGraficoAuxGlosa7.value>0 then
                dbGraficoAuxP7.value:=(1-(dbGraficoAuxValor7.value/dbGraficoAuxGlosa7.value))*100;
            if dbGraficoAuxGlosa8.value>0 then
                dbGraficoAuxP8.value:=(1-(dbGraficoAuxValor8.value/dbGraficoAuxGlosa8.value))*100;
            if dbGraficoAuxGlosa9.value>0 then
                dbGraficoAuxP9.value:=(1-(dbGraficoAuxValor9.value/dbGraficoAuxGlosa9.value))*100;
            if dbGraficoAuxGlosa10.value>0 then
                dbGraficoAuxP10.value:=(1-(dbGraficoAuxValor10.value/dbGraficoAuxGlosa10.value))*100;
            if dbGraficoAuxGlosa11.value>0 then
                dbGraficoAuxP11.value:=(1-(dbGraficoAuxValor11.value/dbGraficoAuxGlosa11.value))*100;
            if dbGraficoAuxGlosa12.value>0 then
                dbGraficoAuxP12.value:=(1-(dbGraficoAuxValor12.value/dbGraficoAuxGlosa12.value))*100;
            dbGraficoAux.Post;
            dbGraficoAux.Next;
        end;
        dbGraficoAux.Refresh;

         qryDistribuicaoCC.First;
         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));
         frmMenu.rvBBAuditoria.SetParam('Titulo','Distribuição do Valor Glosado por Centro de Custo');
         frmMenu.rvBBAuditoria.SetParam('ClienteNome',qryDistribuicaoCCClienteNome.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;
         case rdgPacote.ItemIndex of
         0:iTitulo2:=iTitulo2+' Não Pacotes ';
         1:iTitulo2:=iTitulo2+' Pacotes ';
         end;

         case rdgTipo.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Internações Clínicas ';
         1:iTitulo2:=iTitulo2+' - Internações Cirúrgicas ';
         end;

         frmMenu.rvBBAuditoria.SetParam('Titulo2',ititulo2);
         case chkRel.ItemIndex of
         0:frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCCBradescoV',true);
         1:frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCCBradescoP',true);
         2:frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCCBradesco',true);
         end;

         frmMenu.rvBBAuditoria.Execute;

     end;

end;

procedure TfrmRelDistribuicaoValorCC.BitBtn3Click(Sender: TObject);
var iHospital,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLInhaC,iLinhaA,iLinhaD,iLinhaP,iLinhaI,iCompentecia:string;
begin
//*** relatorio exclusivo para as glosas utilizadas pelo cliente Bradesco
     iClienteIni:=dbClienteIniCliente.Value;
     iLinhaC:=' and AtendHI.Cliente=:CliIni ';

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

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgPacote.ItemIndex of
    0:iLinhaP:=' and AtendHI.Pacote=1 ';
    1:iLinhaP:=' and AtendHI.Pacote=0 ';
    2:iLinhaP:='';
    end;

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
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
         qryDistribuicaoCC.SQL.Clear;
         qryDistribuicaoCC.SQL.Text:='Select AtendHIGlosa.Cliente as Cliente, '+
                                    '        AtendHI.Hospital as Hospital, '+
                                    '        AtendHIGlosa.GlosaI as GlosaI, '+
                                    '        sum(AtendHIGlosa.Valor) as Glosa, '+
                                    '        sum(AtendHIGlosa.ValorApresentado) as Valor '+
                                    'from AtendHIGlosa Inner Join AtendHI '+
                                    'on AtendHIGlosa.Cliente=AtendHI.Cliente and '+
                                    '   AtendHIGlosa.AtendimentoHI=AtendHI.AtendimentoHI '+
                                    'where AtendHIGlosa.Tipo='+QuotedStr('G')+' and '+
                                    '     (AtendHIGlosa.GlosaI<>'+QuotedStr('VA')+' and '+
                                    '      AtendHIGlosa.GlosaI<>'+QuotedStr('GT')+') and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaA+iLinhaP+iLinhaI+
                                    'group by AtendHIGlosa.Cliente,Hospital,GlosaI  '+
                                    'order by AtendHIGlosa.Cliente,Hospital,GlosaI ';

         qryDistribuicaoCC.ParamByName('CliIni').asinteger:=iClienteIni;

         qryDistribuicaoCC.Open;
         if (qryDistribuicaoCC.RecordCount=0) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDistribuicaoCC.Close;
            abort;
         end;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.IndexFieldNames:='Legenda;Nome';

         qryDistribuicaoCC.First;
         while not qryDistribuicaoCC.eof do
         begin
            dbGraficoAux.Insert;
            iHospital:=qryDistribuicaoCCHospital.value;
            dbGraficoAuxHospital.value:=iHospital;
            dbGraficoAuxNome.value:=qryDistribuicaoCCHospitalNome.value;
            dbGraficoAuxRegiao.value:=qryDistribuicaoCCCliente.value;
            dbGraficoAuxLegenda.value:=qryDistribuicaoCCClienteNome.value;
            while (qryDistribuicaoCCHospital.value=iHospital) and
                  (not qryDistribuicaoCC.eof) do
            begin
                if (qryDistribuicaoCCGlosaI.value='DI') or
                   (qryDistribuicaoCCGlosaI.value='UT') or
                   (qryDistribuicaoCCGlosaI.value='AP') or
                   (qryDistribuicaoCCGlosaI.value='EN') or
                   (qryDistribuicaoCCGlosaI.value='SE') or
                   (qryDistribuicaoCCGlosaI.value='BE') or
                   (qryDistribuicaoCCGlosaI.value='IS') or
                   (qryDistribuicaoCCGlosaI.value='DA') or
                   (qryDistribuicaoCCGlosaI.value='DC') then
                begin
                    dbGraficoAuxValor1.value:=dbGraficoAuxValor1.value+qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa1.value:=dbGraficoAuxGlosa1.value+qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='UT' then
                begin
                    dbGraficoAuxValor2.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa2.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='TX' then
                begin
                    dbGraficoAuxValor3.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa3.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HM' then
                begin
                    dbGraficoAuxValor4.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa4.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='GA' then
                begin
                    dbGraficoAuxValor5.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa5.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='HE' then
                begin
                    dbGraficoAuxValor6.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa6.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='DT' then
                begin
                    dbGraficoAuxValor7.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa7.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MD' then
                begin
                    dbGraficoAuxValor8.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa8.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='MT' then
                begin
                    dbGraficoAuxValor9.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa9.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='ME' then
                begin
                    dbGraficoAuxValor10.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa10.value:=qryDistribuicaoCCValor.value;
                end;
                if qryDistribuicaoCCGlosaI.value='PT' then
                begin
                    dbGraficoAuxValor11.value:=qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa11.value:=qryDistribuicaoCCValor.value;
                end;
                if (qryDistribuicaoCCGlosaI.value<>'DI') and
                   (qryDistribuicaoCCGlosaI.value<>'AP') and
                   (qryDistribuicaoCCGlosaI.value<>'EN') and
                   (qryDistribuicaoCCGlosaI.value<>'SE') and
                   (qryDistribuicaoCCGlosaI.value<>'BE') and
                   (qryDistribuicaoCCGlosaI.value<>'IS') and
                   (qryDistribuicaoCCGlosaI.value<>'DA') and
                   (qryDistribuicaoCCGlosaI.value<>'DC') and
                   (qryDistribuicaoCCGlosaI.value<>'UT') and
                   (qryDistribuicaoCCGlosaI.value<>'TX') and
                   (qryDistribuicaoCCGlosaI.value<>'HM') and
                   (qryDistribuicaoCCGlosaI.value<>'GA') and
                   (qryDistribuicaoCCGlosaI.value<>'HE') and
                   (qryDistribuicaoCCGlosaI.value<>'DT') and
                   (qryDistribuicaoCCGlosaI.value<>'MD') and
                   (qryDistribuicaoCCGlosaI.value<>'MT') and
                   (qryDistribuicaoCCGlosaI.value<>'ME') and
                   (qryDistribuicaoCCGlosaI.value<>'PT') then
                begin
                    dbGraficoAuxValor12.value:=dbGraficoAuxValor12.value+qryDistribuicaoCCValorPago.value;
                    dbGraficoAuxGlosa12.value:=dbGraficoAuxValor12.value+qryDistribuicaoCCValor.value;
                end;
                qryDistribuicaoCC.Next;
            end;
            dbGraficoAux.Post;
         end;
         dbGraficoAux.Refresh;

         dbGraficoAux.First;
         while not dbGraficoAux.eof do
         begin
            dbGraficoAux.Edit;
            if dbGraficoAuxGlosa1.value>0 then
                dbGraficoAuxP1.value:=(1-(dbGraficoAuxValor1.value/dbGraficoAuxGlosa1.value))*100;
            if dbGraficoAuxGlosa2.value>0 then
                dbGraficoAuxP2.value:=(1-(dbGraficoAuxValor2.value/dbGraficoAuxGlosa2.value))*100;
            if dbGraficoAuxGlosa3.value>0 then
                dbGraficoAuxP3.value:=(1-(dbGraficoAuxValor3.value/dbGraficoAuxGlosa3.value))*100;
            if dbGraficoAuxGlosa4.value>0 then
                dbGraficoAuxP4.value:=(1-(dbGraficoAuxValor4.value/dbGraficoAuxGlosa4.value))*100;
            if dbGraficoAuxGlosa5.value>0 then
                dbGraficoAuxP5.value:=(1-(dbGraficoAuxValor5.value/dbGraficoAuxGlosa5.value))*100;
            if dbGraficoAuxGlosa6.value>0 then
                dbGraficoAuxP6.value:=(1-(dbGraficoAuxValor6.value/dbGraficoAuxGlosa6.value))*100;
            if dbGraficoAuxGlosa7.value>0 then
                dbGraficoAuxP7.value:=(1-(dbGraficoAuxValor7.value/dbGraficoAuxGlosa7.value))*100;
            if dbGraficoAuxGlosa8.value>0 then
                dbGraficoAuxP8.value:=(1-(dbGraficoAuxValor8.value/dbGraficoAuxGlosa8.value))*100;
            if dbGraficoAuxGlosa9.value>0 then
                dbGraficoAuxP9.value:=(1-(dbGraficoAuxValor9.value/dbGraficoAuxGlosa9.value))*100;
            if dbGraficoAuxGlosa10.value>0 then
                dbGraficoAuxP10.value:=(1-(dbGraficoAuxValor10.value/dbGraficoAuxGlosa10.value))*100;
            if dbGraficoAuxGlosa11.value>0 then
                dbGraficoAuxP11.value:=(1-(dbGraficoAuxValor11.value/dbGraficoAuxGlosa11.value))*100;
            if dbGraficoAuxGlosa12.value>0 then
                dbGraficoAuxP12.value:=(1-(dbGraficoAuxValor12.value/dbGraficoAuxGlosa12.value))*100;
            dbGraficoAux.Post;
            dbGraficoAux.Next;
        end;
        dbGraficoAux.Refresh;

         dbGraficoAux.Close;
         qryExcelBR.Close;
         qryExcelBR.Open;
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=qryExcelBR;  // nao tem % 
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryExcelCC.Close;
     end;

end;

end.
