unit frmRelSenhas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls,
  Buttons, DBCtrls, ComCtrls, Grids, DBGrids, DateUtils, Spin, Variants;

type
  TfrmRelSenha = class(TForm)
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
    Label1: TLabel;
    rdgTipo: TRadioGroup;
    Label2: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    cmdOriginal: TBitBtn;
    cmdExcel: TBitBtn;
    Panel3: TPanel;
    rdgRelatorio: TRadioGroup;
    cmpDataIni: TDateTimePicker;
    cmpDataFim: TDateTimePicker;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    cmpLonga: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdOriginalClick(Sender: TObject);
    procedure cmdExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
  private
    { Private declarations }
  public
   iMes,iAno,iMesF,iAnoF,iLogo:integer;
  end;

var
  frmRelSenha: TfrmRelSenha;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}


procedure TfrmRelSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cmdExcel.tag:=0;
    dbClienteIni.close;
    dbHospitalIni.close;
end;

procedure TfrmRelSenha.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;

    cmdExcel.Tag:=0;
end;

procedure TfrmRelSenha.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelSenha.cmdOriginalClick(Sender: TObject);
var iHospitalIni,iHospital, iClienteIni,iRegiao,i,imeses,iparcial,iLonga:integer;
var iLinhaH,iLInhaC,iLinhaI,iLinhaID:string;
var ititulo2,ititulo3,iCompetencia:string;
var iDataIni,iDataFim:TDate;
var d,m,a,maxday:word;
var mm,aa:integer;
begin
     iDataIni:=cmpDataIni.date;
     iDataFim:=cmpDataFim.date;
     iLonga:=StrToInt(cmpLonga.Text);
     

     if (rdgRelatorio.ItemIndex=3) or (rdgRelatorio.ItemIndex=4) then
     begin
        DecodeDate(iDataIni,a,m,d);
        aa:=a;
        mm:=m;
        if rdgRelatorio.ItemIndex=3 then
            mm:=mm-5;
        if rdgRelatorio.ItemIndex=4 then
            mm:=mm-11;
        if mm<=0 then
        begin
            mm:=mm+12;
            aa:=aa-1;
        end;
        iDataIni:=EncodeDate(aa,mm,1)
     end;
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;

     if iDataFim < iDataIni then
     begin
         ShowMessage('Data Final menor que Inicial');
         abort;
     end;

    iLinhaC:='AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    case rdgTipo.ItemIndex of
    0:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('C')+' ';
    1:iLinhaI:=' and AtendHI.Internacao='+QuotedStr('R')+' ';
    2:iLinhaI:='';
    end;

     with dmRelatorio do
     begin

        if (rdgRelatorio.ItemIndex=0) or (rdgRelatorio.ItemIndex=1) or (rdgRelatorio.ItemIndex=2) then
        begin
//*** base do calculo - arquivo de senhas

            qryRelSenha.SQL.Text:='Delete from relSenha';
            qryRelSenha.Execute;
            qryRelSenha.SQL.Clear;
            qryRelSenha.SQL.Text:='Select * from relSenha';
            qryRelSenha.Open;
            qryRelSenha.SQL.Text:='Insert into relSenha Select '+
                                   '       AtendHI.Cliente, '+
                                   '       AtendHI.Hospital, '+
                                   '       AtendHI.Senha, '+
                                   '       AtendHI.Paciente, '+
                                   '       Pacientes.Nome as NomePaciente, '+
                                   '       Hospital.Nome as NomeHospital, '+
                                   '       count(AtendimentoHI) as Qtd, '+         //total capeantes
                                   '       sum(AtendHI.Diarias) as Diarias, '+
                                   '       sum(AtendHI.DiasUTI) as DiariasUTI, '+
                                   '       sum(AtendHI.DiariasGlosadas) as DiariasGlosadas, '+
                                   '       Max(DiariasLonga) as DiariasLongaCalculada, '+
                                   '       sum(AtendHI.Valor) as Valor, '+
                                   '       sum(AtendHI.ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                   '       sum(AtendHI.ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                   '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                   '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                   '       sum(AtendHI.Parcial) as Parcial, '+
                                   '       sum(cast(AtendHI.Complemento as Integer)) as Complemento, '+
                                   '       Min(DataInternacao) as DataInternacaoIni,  '+
                                   '       Max(DataAlta) as DataInternacaoFim '+
                                   'from AtendHI '+
                                   'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                   'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                   'where '+iLinhaC+iLinhaH+iLinhaI+
                                   'group by AtendHI.Cliente,AtendHI.Hospital,Hospital.Nome,AtendHI.Paciente,Pacientes.Nome,Senha  '+
                                   'having ((MIN(DataInternacao)>=:iDataI) and (MIN(DataInternacao)<=:iDataF) and (SUM(AtendHI.Diarias)>=:xLonga)) '+
                                   'order by Cliente,Hospital,NomePaciente';

            qryRelSenha.ParamByName('CliIni').asinteger:=iClienteIni;
            qryRelSenha.ParamByName('iDataI').asdate:=iDataIni;
            qryRelSenha.ParamByName('iDataF').asdate:=iDataFim;
            qryRelSenha.ParamByName('xLonga').asinteger:=iLonga;

            if not chkHospital.Checked then
                qryRelSenha.ParamByName('HospIni').asinteger:=iHospitalIni;

            qryRelSenha.Execute;
            qryRelSenha.SQL.Clear;
            qryRelSenha.SQL.Text:='Select * from relSenha order by Cliente,NomeHospital,NomePaciente';
            qryRelSenha.Open;
            if (qryRelSenha.RecordCount=0)  then
            begin
                ShowMessage('Nenhuma informação a ser impressa');
                qryRelSenha.Close;
                abort;
            end;


//**************************
             qryEstatHospital3.SQL.Clear;
             qryEstatHospital3.SQL.Text:='Select Cliente, '+
                                         '       count(Paciente) as Paciente, '+
                                         '       sum(Diarias) as Diarias, '+
                                         '       sum(DiariasUTI) as DiariasUTI, '+
                                         '       sum(DiariasGlosadas) as DiariasGlosadas, '+
                                         '       sum(Valor) as Valor, '+
                                         '       sum(ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                         '       sum(DiariasLongaCalculada) as DiariasLongaCalculada, '+
                                         '       sum(ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                         '       sum(ValorGlosadoM) as ValorGlosadoM, '+
                                         '       sum(ValorGlosadoE) as ValorGlosadoE, '+
                                         '       sum(ValorGlosadoM + ValorGlosadoE) as ValorGlosado, '+
                                         '       sum(CASE WHEN Parcial>0 THEN 0 END) as Parcial,  '+
                                         '       sum(CASE WHEN Complemento>0 THEN 0 END) as Complemento '+
                                         'from relSenha '+
                                         'group by Cliente  '+
                                         'order by Cliente ';
            qryEstatHospital3.Open;
            qryEstatHospital3.First;

//*** Detalhado Capeantes

            qryEstatHospital.SQL.Clear;
            qryEstatHospital.SQL.Text:= 'Select Cliente, '+
                                        '       Hospital, '+
                                        '       NomeHospital as Nome, '+
                                        '       count(Paciente) as Paciente, '+
                                        '       sum(Diarias) as Diarias, '+
                                        '       sum(DiariasUTI) as DiariasUTI, '+
                                        '       sum(DiariasGlosadas) as DiariasGlosadas, '+
                                        '       sum(Valor) as Valor, '+
                                        '       sum(ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                        '       sum(ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                        '       sum(ValorGlosadoM) as ValorGlosadoM, '+
                                        '       sum(ValorGlosadoE) as ValorGlosadoE, '+
                                        '       sum(CASE WHEN Parcial>0 THEN 0 END) as Parcial,  '+
                                        '       sum(CASE WHEN Complemento>0 THEN 0 END) as Complemento '+
                                        'from relSenha '+
                                        'group by Cliente,Hospital,NomeHospital '+
                                        'order by Cliente,Nome ';

            qryEstatHospital.Open;
        end;
        if rdgRelatorio.ItemIndex=2 then
        begin
            qryAtendHI.SQL.Clear;
            qryAtendHI.SQL.Text:='Select * from AtendHI '+
                                 'where '+iLinhaC+iLinhaH+iLinhaI+' and (DataInternacao>=:iDataI) '+
                                 'order by Senha,DataInternacao';

            qryAtendHI.ParamByName('CliIni').asinteger:=iClienteIni;
            qryAtendHI.ParamByName('iDataI').asdate:=iDataIni;

            if not chkHospital.Checked then
                qryAtendHI.ParamByName('HospIni').asinteger:=iHospitalIni;

            qryAtendHI.Open;
        end;
        if (rdgRelatorio.ItemIndex=3) or (rdgRelatorio.ItemIndex=4) then
        begin
//*** base do calculo - arquivo de senhas evolucao

            qryRelSenhaE.SQL.Text:='Delete from relSenhaEV';
            qryRelSenhaE.Execute;
            qryRelSenhaE.SQL.Clear;
            qryRelSenhaE.SQL.Text:='Select * from relSenhaEv';
            qryRelSenhaE.Open;
            qryRelSenhaE.SQL.Text:='Insert into relSenhaEV Select '+
                                   '       Cliente, '+
                                   '       Hospital, '+
                                   '       Senha, '+
                                   '       Min(Datainternacao) as DataInternacaoIni, '+
                                   '       Max(DataAlta) as DataInternacaoFim, '+
                                   '       count(AtendimentoHI) as Paciente, '+         //total capeantes
                                   '       sum(Diarias) as Diarias, '+
                                   '       sum(DiasUTI) as DiariasUTI, '+
                                   '       sum(DiariasGlosadas) as DiariasGlosadas, '+
                                   '       Max(DiariasLonga) as DiariasLongaCalculada, '+
                                   '       sum(Valor) as Valor, '+
                                   '       sum(ValorNaoAcordadoM) as ValorNaoAcordadoM, '+
                                   '       sum(ValorNaoAcordadoE) as ValorNaoAcordadoE, '+
                                   '       sum(ValorGlosadoM) as ValorGlosadoM, '+
                                   '       sum(ValorGlosadoE) as ValorGlosadoE, '+
                                   '       sum(CASE WHEN CAST(Parcial AS INTEGER)>0 THEN 0 END) as Parcial,  '+
                                   '       sum(CASE WHEN CAST(Complemento AS INTEGER)>0 THEN 0 END) as Complemento, '+
                                   '       count(DISTINCT CASE WHEN DiasUTI>0 THEN (Paciente) END) as PacienteUTI, '+
                                   '       count(CASE WHEN DiasUTI>0 THEN Paciente END) as ContaUTI '+
                                   'from AtendHI '+
                                   'where '+iLinhaC+iLinhaH+iLinhaI+
                                   'group by Cliente,Hospital,Senha  '+
                                   'having (MIN(DataInternacao)>=:iDataI and MIN(DataInternacao)<=:iDataF and SUM(Diarias)>=:xLonga)'+
                                   'order by Cliente,Hospital,DataInternacaoIni';

            qryRelSenhaE.ParamByName('CliIni').asinteger:=iClienteIni;
            qryRelSenhaE.ParamByName('iDataI').asdate:=iDataIni;
            qryRelSenhaE.ParamByName('iDataF').asdate:=iDataFim;
            qryRelSenhaE.ParamByName('xLonga').asinteger:=iLonga;

            if not chkHospital.Checked then
                qryRelSenhaE.ParamByName('HospIni').asinteger:=iHospitalIni;

            qryRelSenhaE.Execute;

            qryRelSenhaE.SQL.Clear;
            qryRelSenhaE.SQL.Text:='Select * from relSenhaEv order by Cliente,Hospital,DataInternacaoIni';
            qryRelSenhaE.Open;
            if (qryRelSenhaE.RecordCount=0)  then
            begin
                ShowMessage('Nenhuma informação a ser impressa');
                qryRelSenhaE.Close;
                abort;
            end;

//*******************************


            qryRelEvolucaoH.SQL.Clear;
            qryRelEvolucaoH.SQL.Text:= 'Select Hospital as Hospital, '+
                                       '       Year(DataInternacaoIni) as Ano, '+
                                       '       Month(DataInternacaoIni) as Mes, '+
                                       '       count(Senha) as Paciente, '+
                                       '       sum(Complemento) as Complemento, '+
                                       '       sum(Parcial) as Parcial, '+
                                       '       sum(Valor) as Valor, '+
                                       '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                       '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                       '       sum(Diarias) as Diarias, '+
                                       '       sum(DiariasUTI) as DiariasUTI, '+
                                       '       sum(DiariasGlosadas) as DiariasGlosadas, '+
                                       '       sum(PacienteUTI) as PacienteUTI, '+
                                       '       sum(ContaUTI) as ContaUTI  '+
                                       'from  relSenhaEV '+
                                       'group by Hospital,Year(DataInternacaoIni),Month(DataInternacaoIni)  '+
                                       'order by Hospital,Ano,Mes ';

            qryRelEvolucaoH.Open;

//*******************************

            dbRelEvolucao.tag:=0;
            dbRelEvolucao.Close;
            dbRelEvolucao.SQL.Text:='Delete from relEvolucaoCustoR';
            dbRelEvolucao.Execute;
            dbRelEvolucao.SQL.Text:='Select * from relEvolucaoCustoR order by Hospital';
            dbRelEvolucao.Open;


        case rdgRelatorio.ItemIndex of
        3:imeses:=6;
        4:imeses:=12;
        end;
        DecodeDate(iDataFim,a,m,d);
        iMes:=m;
        iAno:=a;

            qryRelEvolucaoH.First;
            dbHospital.Open;
            dbHospital.First;
            while not dbHospital.eof do
            begin
                iHospital:=dbHospitalHospital.value;
                m:=iMes;
                a:=iAno;

                for i:=1 to imeses  do
                begin
                    if qryRelEvolucaoH.Locate('Hospital;Ano;Mes',VarArrayof([iHospital,a,m]),[]) then
                    begin
                        if dbRelEvolucao.Locate('Hospital',iHospital,[]) then
                            dbRelEvolucao.Edit
                        else
                            dbRelEvolucao.Insert;
                        dbRelEvolucaoHospital.value:=iHospital;
                        dbRelEvolucaoNome.value:=dbHospitalNome.value;
                        dbRelEvolucaoRegiao.value:=dbHospitalRegiao.value;
                    case i of
                    12:begin
                        dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                        dbRelEvolucaoPacienteUTI1.Value:=dbRelEvolucaoPacienteUTI1.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor1.Value:=dbRelEvolucaoValor1.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa1.Value:=dbRelEvolucaoGlosa1.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria1.Value:=dbRelEvolucaoDiaria1.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI1.Value:=dbRelEvolucaoDiariaUTI1.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    11:begin
                            dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI2.Value:=dbRelEvolucaoPacienteUTI2.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor2.Value:=dbRelEvolucaoValor2.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa2.Value:=dbRelEvolucaoGlosa2.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria2.Value:=dbRelEvolucaoDiaria2.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI2.Value:=dbRelEvolucaoDiariaUTI2.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    10:begin
                            dbRelEvolucaoPaciente3.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI3.Value:=dbRelEvolucaoPacienteUTI3.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor3.Value:=dbRelEvolucaoVAlor3.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa3.Value:=dbRelEvolucaoGlosa3.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria3.Value:=dbRelEvolucaoDiaria3.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI3.Value:=dbRelEvolucaoDiariaUTI3.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    9:begin
                            dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI4.Value:=dbRelEvolucaoPacienteUTI4.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor4.Value:=dbRelEvolucaoValor4.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa4.Value:=dbRelEvolucaoGlosa4.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria4.Value:=dbRelEvolucaoDiaria4.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI4.Value:=dbRelEvolucaoDiariaUTI4.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    8:begin
                            dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI5.Value:=dbRelEvolucaoPacienteUTI5.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor5.Value:=dbRelEvolucaoValor5.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa5.Value:=dbRelEvolucaoGlosa5.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria5.Value:=dbRelEvolucaoDiaria5.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI5.Value:=dbRelEvolucaoDiariaUTI5.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    7:begin
                            dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI6.Value:=dbRelEvolucaoPacienteUTI6.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor6.Value:=dbRelEvolucaoValor6.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa6.Value:=dbRelEvolucaoGlosa6.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria6.Value:=dbRelEvolucaoDiaria6.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI6.Value:=dbRelEvolucaoDiariaUTI6.Value+qryRelEvolucaoHDiariasUTI.Value;
                     end;
                    6:begin
                            dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI7.Value:=dbRelEvolucaoPacienteUTI7.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor7.Value:=dbRelEvolucaoValor7.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa7.Value:=dbRelEvolucaoGlosa7.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria7.Value:=dbRelEvolucaoDiaria7.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI7.Value:=dbRelEvolucaoDiariaUTI7.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    5:begin
                            dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI8.Value:=dbRelEvolucaoPacienteUTI8.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor8.Value:=dbRelEvolucaoValor8.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa8.Value:=dbRelEvolucaoGlosa8.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria8.Value:=dbRelEvolucaoDiaria8.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI8.Value:=dbRelEvolucaoDiariaUTI8.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    4:begin
                            dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI9.Value:=dbRelEvolucaoPacienteUTI9.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor9.Value:=dbRelEvolucaoVAlor9.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa9.Value:=dbRelEvolucaoGlosa9.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria9.Value:=dbRelEvolucaoDiaria9.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI9.Value:=dbRelEvolucaoDiariaUTI9.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    3:begin
                            dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI10.Value:=dbRelEvolucaoPacienteUTI10.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor10.Value:=dbRelEvolucaoValor10.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa10.Value:=dbRelEvolucaoGlosa10.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria10.Value:=dbRelEvolucaoDiaria10.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI10.Value:=dbRelEvolucaoDiariaUTI10.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    2:begin
                            dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI11.Value:=dbRelEvolucaoPacienteUTI11.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor11.Value:=dbRelEvolucaoValor11.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa11.Value:=dbRelEvolucaoGlosa11.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria11.Value:=dbRelEvolucaoDiaria11.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI11.Value:=dbRelEvolucaoDiariaUTI11.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    1:begin
                            dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI12.Value:=dbRelEvolucaoPacienteUTI12.Value+qryRelEvolucaoHContaUTI.value;
                        dbRelEvolucaoValor12.Value:=dbRelEvolucaoValor12.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa12.Value:=dbRelEvolucaoGlosa12.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria12.Value:=dbRelEvolucaoDiaria12.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI12.Value:=dbRelEvolucaoDiariaUTI12.Value+qryRelEvolucaoHDiariasUTI.Value;
                     end;
                     end;
                    dbRelEvolucao.Post;
                    dbRelEvolucao.Refresh;
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            dbHospital.Next;
        end;
        end;

        dbRelEvolucao.SetOrderBy('Nome');
        dbRelEvolucao.Open;
        dbRelEvolucao.First;

//***************
    if cmdExcel.Tag=0 then
    begin
        iCompetencia:='Internações Iniciando de '+DateToStr(iDataIni)+' a '+DateToStr(iDataFim);
        frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

         case rdgRelatorio.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo','Estatisticas por Senha/Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo','Estatisticas por Senha');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo','Estatisticas por Senha Detalhado');
         3,4:frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução dos Custos por Senha');
         end;

         case rdgTipo.ItemIndex of
         0:iTitulo2:=iTitulo2+' - Internações Clínicas ';
         1:iTitulo2:=iTitulo2+' - Internações Cirúrgicas ';
         end;

         if ilonga=1 then
            iTitulo3:=''
         else
            iTitulo3:='Longa Permanência - acima de '+IntToStr(ilonga)+' diarias';


         frmMenu.rvBBAuditoria.SetParam('Titulo2',ititulo2);
         frmMenu.rvBBAuditoria.SetParam('Titulo3',ititulo3);
         frmMenu.rvBBAuditoria.SetParam('Analise',ititulo3);
         frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
         frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
         frmMenu.rvBBAuditoria.SetParam('Plano','');

         m:=iMes;
         a:=iAno;
         for i:=1 to 12 do
         begin
            case i of
            12:frmMenu.rvBBAuditoria.SetParam('Mes1',IntToStr(m)+'/'+IntToStr(a));
            11:frmMenu.rvBBAuditoria.SetParam('Mes2',IntToStr(m)+'/'+IntToStr(a));
            10:frmMenu.rvBBAuditoria.SetParam('Mes3',IntToStr(m)+'/'+IntToStr(a));
            9:frmMenu.rvBBAuditoria.SetParam('Mes4',IntToStr(m)+'/'+IntToStr(a));
            8:frmMenu.rvBBAuditoria.SetParam('Mes5',IntToStr(m)+'/'+IntToStr(a));
            7:frmMenu.rvBBAuditoria.SetParam('Mes6',IntToStr(m)+'/'+IntToStr(a));
            6:frmMenu.rvBBAuditoria.SetParam('Mes7',IntToStr(m)+'/'+IntToStr(a));
            5:frmMenu.rvBBAuditoria.SetParam('Mes8',IntToStr(m)+'/'+IntToStr(a));
            4:frmMenu.rvBBAuditoria.SetParam('Mes9',IntToStr(m)+'/'+IntToStr(a));
            3:frmMenu.rvBBAuditoria.SetParam('Mes10',IntToStr(m)+'/'+IntToStr(a));
            2:frmMenu.rvBBAuditoria.SetParam('Mes11',IntToStr(m)+'/'+IntToStr(a));
            1:frmMenu.rvBBAuditoria.SetParam('Mes12',IntToStr(m)+'/'+IntToStr(a));
            end;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
            end;
        end;

         case rdgRelatorio.ItemIndex of
         0:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaHospitalSenha',true);
         1:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaPacienteSenha',true);
         2:frmMenu.rvBBAuditoria.SelectReport('relEstatisticaPacienteSenhaD',true);
         3:frmMenu.rvBBAuditoria.SelectReport('relEvolucaoH',true);
         4:frmMenu.rvBBAuditoria.SelectReport('relEvolucaoH12',true);
         end;

         frmMenu.rvBBAuditoria.Execute;
     end;
     if cmdExcel.Tag=1 then
     begin
         case rdgRelatorio.ItemIndex of
         0:begin
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
         1:begin
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=qryRelSenha;
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryRelSenha.Close;
         end;
         2:begin
            ShowMessage('Relatório Excel não disponivel');
            abort;
         end;
         3,4:begin
            frmMenu.ExcelExport.ExcelVisible:=true;
            dbRelEvolucaoPGlosa1.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa2.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa3.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa4.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa5.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa6.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa7.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa8.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa9.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa10.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa11.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa12.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbRelEvolucao;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
            dbRelEvolucao.Close;
        end;
         end;
     end;
     end;
    cmdExcel.Tag:=0;
end;

procedure TfrmRelSenha.cmdExcelClick(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaI,iLinhaD,iCompetencia,iLinhaID,iClienteID,iLinhaR,iLinhaF,iLinhaP:string;
begin
     cmdExcel.Tag:=1;
     cmdOriginalClick(sender);
     abort;
end;

procedure TfrmRelSenha.FormCreate(Sender: TObject);
begin
    cmpDataIni.date:=date;
    cmpDataFim.date:=date;

end;

procedure TfrmRelSenha.cmbMesChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    cmpDataIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    cmpDataFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);

end;

procedure TfrmRelSenha.cmbAnoChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    cmpDataIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    cmpDataFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);

end;


{///*** somente para Detalhado Pre Analise
        qryDistribuicaoCC.SQL.Clear;
        qryDistribuicaoCC.SQL.Text:='Select AtendHIGlosa.Cliente as Cliente, '+
                                    '       AtendHI.Hospital as Hospital, '+
                                    '       AtendHIGlosa.GlosaI as GlosaI, '+
                                    '       sum(AtendHIGlosa.Valor) as Glosa, '+
                                    '       sum(AtendHIGlosa.ValorApresentado) as Valor '+
                                    'from AtendHIGlosa '+
                                    'inner join AtendHI on AtendHIGlosa.Cliente=AtendHI.Cliente and '+
                                    '                      AtendHIGlosa.AtendimentoHI=AtendHI.AtendimentoHI '+
                                    'where (AtendHI.DataInternacao>=iDataI and AtendHI.DataInternacao<=iDataF) '+
                                             iLinhaC+iLinhaH+iLinhaI+
                                    'group by AtendHIGlosa.Cliente,Hospital,GlosaI  '+
                                    'order by AtendHIGlosa.Cliente,Hospital,GlosaI ';

        qryDistribuicaoCC.ParamByName('CliIni').asinteger:=iClienteIni;
//        qryDistribuicaoCC.Open;

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
                                '      AtendHI.Hospital=Hospital.Hospital '+
                                       iLinhaC+iLinhaH+iLinhaI+
                                'group by Cliente,AtendHI.Hospital '+
                                'having (MIN(DataInternacao)>=:iDataI and MIN(DataInternacao)<=:iDataF) '+
                                'order by Cliente,AtendHI.Hospital ';

         qryEstatHospital4.ParamByName('CliIni').asinteger:=iClienteIni;
         qryEstatHospital4.ParamByName('iDataI').asdate:=iDataIni;
         qryEstatHospital4.ParamByName('iDataF').asdate:=iDataFim;

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
                              'where DataInicioP is not null and Parcial=1 and '+
                              '      (AtendHI.DataInternacao>=iDataI and AtendHI.DataInternacao<=iDataF) '+
                                      iLinhaC+iLinhaH+iLinhaI+

                              'group by AtendHI.Cliente, AtendHI.Hospital, Paciente, DataInicioP '+
                              'order by AtendHI.Cliente, AtendHI.Hospital, Paciente, DataInicioP';

         qryParcial.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryParcial.ParamByName('HospIni').asinteger:=iHospitalIni;

//         qryParcial.Open;


//*************** Total por cliente,hospital - Diarias Clinicas/Cirurgicas    - Apenas longa permanencia
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
                                         'where (AtendHI.DiariasLonga>=Cliente.Diarias) and '+
                                         '      (AtendHI.DataInternacao>=iDataI and AtendHI.DataInternacao<=iDataF) '+
                                                  iLinhaC+iLinhaH+iLinhaI+
                                         'group by AtendHI.Cliente,AtendHI.Hospital, Hospital.Nome, Cliente.Diarias  '+
                                         'order by AtendHI.Cliente,Hospital.Nome ';

         qryEstatHospital1.ParamByName('CliIni').asinteger:=iClienteIni;
         if not chkHospital.Checked then
             qryEstatHospital1.ParamByName('HospIni').asinteger:=iHospitalIni;

//         qryEstatHospital1.Open;
//        if qryEstatHospital1.RecordCount=0 then
//        begin
//            ShowMessage('Nenhum informação a ser impressa');
//            abort;
//        end;


//*************** Total por cliente,hospital - Diarias Clinicas/Cirurgicas

         qryParcial2.SQL.Clear;    //soma o total de parciais reais
         qryParcial2.SQL.Text:='Select  AtendHI.Cliente, '+
                              '         AtendHI.Hospital, '+
                              '         AtendHI.Internacao, '+
                              '         AtendHI.Paciente, '+
                              '         AtendHI.DataInicioP '+
                              'from AtendHI '+
                              'inner join  Hospital on AtendHI.Hospital=Hospital.Hospital '+
                              'where DataInicioP is not null and Parcial=1 and '+
                              '      (AtendHI.DataInternacao>=iDataI and AtendHI.DataInternacao<=iDataF) '+
                                             iLinhaC+iLinhaH+iLinhaI+
                              'group by AtendHI.Cliente, AtendHI.Hospital, Internacao, Paciente,DataInicioP '+
                              'order by AtendHI.Cliente, AtendHI.Hospital, Internacao, Paciente,DataInicioP';

         qryParcial2.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryParcial2.ParamByName('HospIni').asinteger:=iHospitalIni;

//         qryParcial2.Open;

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
                                    'where (AtendHI.DataInternacao>=iDataI and AtendHI.DataInternacao<=iDataF) '+
                                             iLinhaC+iLinhaH+iLinhaI+
                                     'group by Cliente,Hospital,Internacao  '+
                                     'order by Cliente,Hospital,Internacao ';

         qryEstatHospital2.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryEstatHospital2.ParamByName('HospIni').asinteger:=iHospitalIni;

//         qryEstatHospital2.Open;
}


end.
