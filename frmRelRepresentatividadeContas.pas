unit frmRelRepresentatividadeContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelRepresentatividadeConta = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Label1: TLabel;
    rdgAnalise: TRadioGroup;
    Label2: TLabel;
    lblMaximo: TEdit;
    UpDown3: TUpDown;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    Label4: TLabel;
    Panel4: TPanel;
    cmdExcel: TBitBtn;
    cmdRelRepConta: TBitBtn;
    Label6: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dsRegiao: TDataSource;
    chkRegiao: TCheckBox;
    cmpRegiao: TDBLookupComboBox;
    cmdRelRepContaExcel: TBitBtn;
    BitBtn4: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    UpDown4: TUpDown;
    Edit4: TEdit;
    chkHospital: TCheckBox;
    cmpHospitalIni: TDBLookupComboBox;
    cmpCodHospitalIni: TDBText;
    UpDown5: TUpDown;
    dbHospitalIni: TMSTable;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    dsHospitalIni: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelRepContaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure cmdExcelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkRegiaoClick(Sender: TObject);
    procedure cmdRelRepContaExcelClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRepresentatividadeConta: TfrmRelRepresentatividadeConta;

implementation

uses frmPrincipal,  dmRelatorios;

{$R *.DFM}

procedure TfrmRelRepresentatividadeConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbClienteID.close;
    dbHospitalIni.Close;
    dbRegiao.Close;
end;

procedure TfrmRelRepresentatividadeConta.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbClienteId.Open;
    cmpClienteId.KeyValue:=dbClienteIDID.value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;

    dbRegiao.Open;
    cmpRegiao.KeyValue:=dbRegiaoRegiao.value;
    chkRegiao.Checked;
end;

procedure TfrmRelRepresentatividadeConta.cmdRelRepContaClick(Sender: TObject);
var iHospitalIni,iClienteIni,iCli:integer;
var i,iMes,iAno,iMesF,iAnoF,m,a,iHospital,iRegiao,iMaximo:integer;
var iLinhaA,iLinhaD,icliente,iLinhaID,iClienteID,iRegiaoNome,iLinhaH:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iCliente:=Trim(dbClienteIniNome.value);
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     iMaximo:=StrToInt(lblMaximo.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

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
     end;

     with dmRelatorio do
     begin
         qryRepContaT.SQL.Clear;
         qryRepContaT.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(Valor) as ValorTot, '+
                                 '       sum(ValorGlosadoM) as ValorGlosadoM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosadoE '+
                                 'from  AtendHI '+
                                 'where Cliente=:CliIni and ('+
                                 iLinhaD+')'+
                                 iLinhaA+iLinhaID+iLinhaH+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,AnoCompetencia,MesCompetencia ';

         if not chkHospital.Checked then
             qryRepContaT.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryRepContaT.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRepContaT.Open;

//*****
         qryRepConta.SQL.Clear;
         qryRepConta.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(Valor) as ValorTot, '+
                                 '       sum(ValorGlosadoM) as ValorGlosadoM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosadoE '+
                                 'from  AtendHI '+
                                 'where Cliente=:CliIni and '+
                                 '      (Valor-ValorGlosadoM-ValorGlosadoE)>=:Maximo and ('+
                                 iLinhaD+')'+
                                 iLinhaA+iLinhaID+iLinhaH+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

         qryRepConta.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRepConta.ParamByName('Maximo').asinteger:=iMaximo;

         if not chkHospital.Checked then
             qryRepConta.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryRepConta.Open;
//************
        dbGraficoAux.Tag:=1;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.Filtered:=false;
        dbGraficoAux.IndexFieldNames:='Regiao;Hospital;NC';

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;
            iHospital:=dbHospitalHospital.Value;
            iCli:=iClienteIni;
            dbGraficoAux.Insert;
            dbGraficoAuxRegiao.Value:=iCli;
            dbGraficoAuxHospital.Value:=iHospital;
            dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to 2 do
            begin
                if qryRepContaT.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    1:begin
                       dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryRepContaTValor.Value;
                       dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.Value+qryRepContaTPaciente.asInteger;
                    end;
                    2:begin
                       dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryRepContaTValor.Value;
                       dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.Value+qryRepContaTPaciente.asInteger;
                    end;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            dbHospital.Next;
        end;
//****
        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;
            iCli:=iClienteIni;
            iHospital:=dbHospitalHospital.Value;
            if dbGraficoAux.Locate('Regiao;Hospital',VarArrayof([iCli,iHospital]),[]) then
               dbGraficoAux.Edit
            else
            begin
               dbGraficoAux.Insert;
               dbGraficoAuxRegiao.Value:=iCli;
               dbGraficoAuxHospital.VAlue:=iHospital;
               dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            end;
            m:=iMes;
            a:=iAno;
            for i:=1 to 2 do
            begin
                if qryRepConta.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    1:begin
                       dbGraficoAuxValor3.Value:=dbGraficoAuxValor3.Value+qryRepContaValor.Value;
                       dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.Value+qryRepContaPaciente.asInteger;
                    end;
                    2:begin
                       dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryRepContaValor.Value;
                       dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.Value+qryRepContaPaciente.asInteger;
                    end;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            dbHospital.Next;
        end;

        qryGeral.Close;
        qryGeral.Open;

        frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo',iCliente+' - Pré-Análise Hospital');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo',iCliente+' - Pos-Análise Hospital');
        end;
         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Região:'+iRegiaoNome);

        dbGraficoAux.Filtered:=true;
        dbGraficoAux.IndexFieldNames:='Regiao;Nome;NC';
        dbGraficoAux.First;
        dbCliente.Locate('Cliente',iClienteIni,[]);

        if frmRelRepresentatividadeConta.tag=0 then
        begin
            if chkClienteID.Checked then
                frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
            else
                frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

            frmMenu.rvBBAuditoria.SetParam('Titulo1','Representatividade Contas acima de '+FloatToStrF(iMaximo,ffCurrency,8,2));
            frmMenu.rvBBAuditoria.SetParam('Total',FloatToStrF(iMaximo,ffCurrency,8,2));
            frmMenu.rvBBAuditoria.SetParam('Cliente',iCliente);

            frmMenu.rvBBAuditoria.SelectReport('relRepConta',true);
            frmMenu.rvBBAuditoria.Execute;
        end
        else
        begin
            frmMenu.ExcelExport.ExcelVisible:=true;
            dbGraficoAuxRepConta.DisplayFormat:='##0.00';
            dbGraficoAuxMesAtual.DisplayFormat:='##0.00';
            dbGraficoAuxMesAnterior.DisplayFormat:='##0.00';
            dbGraficoAuxMP.DisplayFormat:='##0.00';
            dbGraficoAuxPGlosa.DisplayFormat:='##0.00';
            dbGraficoAuxCMP.DisplayFormat:='##0.00';
            dbGraficoAuxCMD.DisplayFormat:='##0.00';
            dbGraficoAuxNTC1.DisplayFormat:='##0.00';
            dbGraficoAuxNTC2.DisplayFormat:='##0.00';
            dbGraficoAuxNTC3.DisplayFormat:='##0.00';
            dbGraficoAuxFT1.DisplayFormat:='##0.00';
            dbGraficoAuxFT2.DisplayFormat:='##0.00';
            dbGraficoAuxFT3.DisplayFormat:='##0.00';
            dbGraficoAuxPT.DisplayFormat:='##0.00';
            dbGraficoAuxP1.DisplayFormat:='##0.00';
            dbGraficoAuxP2.DisplayFormat:='##0.00';
            dbGraficoAuxP3.DisplayFormat:='##0.00';
            dbGraficoAuxP4.DisplayFormat:='##0.00';
            dbGraficoAuxP5.DisplayFormat:='##0.00';
            dbGraficoAuxP6.DisplayFormat:='##0.00';
            dbGraficoAuxP7.DisplayFormat:='##0.00';
            dbGraficoAuxP8.DisplayFormat:='##0.00';
            dbGraficoAuxP9.DisplayFormat:='##0.00';
            dbGraficoAuxP10.DisplayFormat:='##0.00';
            dbGraficoAuxP11.DisplayFormat:='##0.00';
            dbGraficoAuxP12.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbGraficoAux;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
        end;

        dbGraficoAux.Filtered:=false;
        dbGraficoAux.Close;
        dbGraficoAux.tag:=0;
     end;
end;

procedure TfrmRelRepresentatividadeConta.BitBtn1Click(Sender: TObject);
var iHospitalIni,iClienteIni,iCli:integer;
var i,iMes,iAno,iMesF,iAnoF,m,a,iHospital,iRegiao,iMaximo:integer;
var iLinhaA,iLinhaD,iLInhaH,icliente,iLinhaId,iclienteID,iRegiaoNome:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iCliente:=Trim(dbClienteIniNome.value);
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);
     iMaximo:=StrToInt(lblMaximo.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

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
     end;

     with dmRelatorio do
     begin
         qryRepContaT.SQL.Clear;
         qryRepContaT.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       Paciente as Paciente, '+
                                 '       Valor as ValorTot, '+
                                 '       ValorGlosadoM as ValorGlosadoM, '+
                                 '       ValorGlosadoE as ValorGlosadoE '+
                                 'from  AtendHI '+
                                 'where Cliente=:CliIni  and ('+
                                 iLinhaD+')'+
                                 iLinhaA+iLinhaID+iLinhaH+
                                 'order by Hospital,AnoCompetencia,MesCompetencia ';

         qryRepContaT.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRepContaT.Open;
         if not chkHospital.Checked then
             qryRepContaT.ParamByName('HospIni').asinteger:=iHospitalIni;

//*****
         qryRepConta.SQL.Clear;
         qryRepConta.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       Paciente as Paciente, '+
                                 '       Valor as ValorTot, '+
                                 '       ValorGlosadoM as ValorGlosadoM, '+
                                 '       ValorGlosadoE as ValorGlosadoE '+
                                 'from  AtendHI '+
                                 'where Cliente=:CliIni   and '+
                                 '      (Valor-ValorGlosadoM-ValorGlosadoE)>=:Maximo and ('+
                                 iLinhaD+')'+
                                 iLinhaA+iLinhaID+iLinhaH+
                                 'order by Hospital,AnoCompetencia,MesCompetencia ';

         qryRepConta.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRepConta.ParamByName('Maximo').asinteger:=iMaximo;
         if not chkHospital.Checked then
             qryRepConta.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryRepConta.Open;
//************
        dbGraficoAux.Tag:=1;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.Filtered:=false;
        dbGraficoAux.IndexFieldNames:='Regiao;Hospital;NC';

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;
            iHospital:=dbHospitalHospital.Value;
            iCli:=iClienteIni;
            dbGraficoAux.Insert;
            dbGraficoAuxRegiao.Value:=iCli;
            dbGraficoAuxHospital.Value:=iHospital;
            dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to 2 do
            begin
                if qryRepContaT.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    while (qryRepContaTHospital.value=iHospital) and
                          (qryRepContaTAno.value=a) and
                          (qryRepContaTMes.value=m) and
                          (not qryRepContaT.eof) do
                    begin
                        case i of
                        1:begin
                           dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryRepContaTValor.Value;
                           dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.Value+1;
                        end;
                        2:begin
                            dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryRepContaTValor.Value;
                            dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.Value+1;
                        end;
                        end;
                        qryRepContaT.Next;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            dbHospital.Next;
        end;
//****
        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;
            iCli:=iClienteIni;
            iHospital:=dbHospitalHospital.Value;
            if dbGraficoAux.Locate('Regiao;Hospital',VarArrayof([iCli,iHospital]),[]) then
               dbGraficoAux.Edit
            else
            begin
               dbGraficoAux.Insert;
               dbGraficoAuxRegiao.Value:=iCli;
               dbGraficoAuxHospital.VAlue:=iHospital;
               dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            end;
            m:=iMes;
            a:=iAno;
            for i:=1 to 2 do
            begin
                if qryRepConta.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    while (qryRepContaHospital.value=iHospital) and
                          (qryRepContaAno.value=a) and
                          (qryRepContaMes.value=m) and
                          (not qryRepConta.eof) do
                    begin
                        case i of
                        1:begin
                           dbGraficoAuxValor3.Value:=dbGraficoAuxValor3.Value+qryRepContaValor.Value;
                           dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.Value+1;
                        end;
                        2:begin
                           dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryRepContaValor.Value;
                           dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.Value+1;
                        end;
                        end;
                        qryRepConta.next;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbHospital.Next;
        end;

        qryGeral.Close;
        qryGeral.Open;

        frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo',iCliente+' - Pré-Análise Hospital');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo',iCliente+' - Pos-Análise Hospital');
        end;

        dbGraficoAux.Filtered:=true;
        dbGraficoAux.IndexFieldNames:='Regiao;Nome;NC';  //no Rave como dbDistribuicaoHospital
        dbGraficoAux.First;
        dbCliente.Locate('Cliente',iClienteIni,[]);

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

        frmMenu.rvBBAuditoria.SetParam('Titulo1','Representatividade Contas acima de '+FloatToStrF(iMaximo,ffCurrency,8,2));
        frmMenu.rvBBAuditoria.SetParam('Total',FloatToStrF(iMaximo,ffCurrency,8,2));
        frmMenu.rvBBAuditoria.SetParam('Cliente',iCliente);
         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Região:'+iRegiaoNome);

        frmMenu.rvBBAuditoria.SelectReport('relRepConta',true);
        frmMenu.rvBBAuditoria.Execute;

        dbGraficoAux.Filtered:=false;
        dbGraficoAux.Close;
        dbGraficoAux.tag:=0;
     end;
end;

procedure TfrmRelRepresentatividadeConta.cmpClienteIniCloseUp(
  Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelRepresentatividadeConta.chkClienteIDClick(
  Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelRepresentatividadeConta.cmdExcelClick(Sender: TObject);
begin
    frmRelRepresentatividadeConta.Tag:=1;
    cmdRelRepContaClick(Sender);
    frmRelRepresentatividadeConta.Tag:=0;
end;

procedure TfrmRelRepresentatividadeConta.BitBtn2Click(Sender: TObject);
var iHospitalIni,iClienteIni,iRegiao:integer;
var i,iMes,iAno,iMesF,iAnoF,m,a,iHospital,iCli,iMaximo:integer;
var iLinhaA,iLinhaD,icliente,iLinhaId,iclienteID,iLinhaH,iRegiaoNome:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iCliente:=Trim(dbClienteIniNome.value);
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);
     iMaximo:=StrToInt(lblMaximo.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

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
     end;

     with dmRelatorio do
     begin
         qryRepContaT.SQL.Clear;
         qryRepContaT.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       Paciente as Paciente, '+
                                 '       Valor as ValorTot, '+
                                 '       ValorGlosadoM as ValorGlosadoM, '+
                                 '       ValorGlosadoE as ValorGlosadoE '+
                                 'from  AtendHI '+
                                 'where Cliente=:CliIni and ('+
                                 iLinhaD+')'+
                                 iLinhaA+iLinhaID+iLinhaH+
                                 'order by Hospital,Ano,Mes ';

         qryRepContaT.ParamByName('CliIni').asInteger:=iClienteIni;
         if not chkHospital.Checked then
             qryRepContaT.ParamByName('HospIni').asinteger:=iHospitalIni;
         qryRepContaT.Open;

//*****
         qryRepConta.SQL.Clear;
         qryRepConta.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       Paciente as Paciente, '+
                                 '       Valor as ValorTot, '+
                                 '       ValorGlosadoM as ValorGlosadoM, '+
                                 '       ValorGlosadoE as ValorGlosadoE '+
                                 'from  AtendHI '+
                                 'where Cliente=:CliIni and '+
                                 '      (Valor-ValorGlosadoM-ValorGlosadoE)>=:Maximo and ('+
                                 iLinhaD+')'+
                                 iLinhaA+iLinhaID+iLinhaH+
                                 'order by Hospital,Ano,Mes ';

         qryRepConta.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRepConta.ParamByName('Maximo').asinteger:=iMaximo;
         if not chkHospital.Checked then
             qryRepConta.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryRepConta.Open;
//************
        dbGraficoAux.Tag:=1;
        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.Filtered:=false;
        dbGraficoAux.IndexFieldNames:='Regiao;Hospital;NC';

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;
            iHospital:=dbHospitalHospital.Value;
            iCli:=iClienteIni;
            dbGraficoAux.Insert;
            dbGraficoAuxRegiao.Value:=iCli;
            dbGraficoAuxHospital.Value:=iHospital;
            dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to 2 do
            begin
                if qryRepContaT.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    while (qryRepContaTHospital.value=iHospital) and
                          (qryRepContaTAno.value=a) and
                          (qryRepContaTMes.value=m) and
                          (not qryRepContaT.eof) do
                    begin
                        case i of
                        1:begin
                           dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryRepContaTValor.Value;
                           dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.Value+1;
                        end;
                        2:begin
                            dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryRepContaTValor.Value;
                            dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.Value+1;
                        end;
                        end;
                        qryRepContaT.Next;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            dbHospital.Next;
        end;
//****
        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;
            iCli:=iClienteIni;
            iHospital:=dbHospitalHospital.Value;
            if dbGraficoAux.Locate('Regiao;Hospital',VarArrayof([iCli,iHospital]),[]) then
               dbGraficoAux.Edit
            else
            begin
               dbGraficoAux.Insert;
               dbGraficoAuxRegiao.Value:=iCli;
               dbGraficoAuxHospital.VAlue:=iHospital;
               dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            end;
            m:=iMes;
            a:=iAno;
            for i:=1 to 2 do
            begin
                if qryRepConta.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    while (qryRepContaHospital.value=iHospital) and
                          (qryRepContaAno.value=a) and
                          (qryRepContaMes.value=m) and
                          (not qryRepConta.eof) do
                    begin
                        case i of
                        1:begin
                           dbGraficoAuxValor3.Value:=dbGraficoAuxValor3.Value+qryRepContaValor.Value;
                           dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.Value+1;
                        end;
                        2:begin
                           dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryRepContaValor.Value;
                           dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.Value+1;
                        end;
                        end;
                        qryRepConta.next;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            dbHospital.Next;
        end;

        qryGeral.Close;
        qryGeral.Open;

        frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo',iCliente+' - Pré-Análise Hospital');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo',iCliente+' - Pos-Análise Hospital');
        end;

        dbGraficoAux.Filtered:=true;
        dbGraficoAux.IndexFieldNames:='Regiao;Nome;NC';  //no Rave como dbDistribuicaoHospital
        dbGraficoAux.First;
        dbCliente.Locate('Cliente',iClienteIni,[]);

        dbGraficoAux.Filtered:=true;
        dbGraficoAuxRepConta.DisplayFormat:='##0.00';
        dbGraficoAuxMesAtual.DisplayFormat:='##0.00';
        dbGraficoAuxMesAnterior.DisplayFormat:='##0.00';
        dbGraficoAuxMP.DisplayFormat:='##0.00';
        dbGraficoAuxPGlosa.DisplayFormat:='##0.00';
        dbGraficoAuxCMP.DisplayFormat:='##0.00';
        dbGraficoAuxCMD.DisplayFormat:='##0.00';
        dbGraficoAuxNTC1.DisplayFormat:='##0.00';
        dbGraficoAuxNTC2.DisplayFormat:='##0.00';
        dbGraficoAuxNTC3.DisplayFormat:='##0.00';
        dbGraficoAuxFT1.DisplayFormat:='##0.00';
        dbGraficoAuxFT2.DisplayFormat:='##0.00';
        dbGraficoAuxFT3.DisplayFormat:='##0.00';
        dbGraficoAuxPT.DisplayFormat:='##0.00';
        dbGraficoAuxP1.DisplayFormat:='##0.00';
        dbGraficoAuxP2.DisplayFormat:='##0.00';
        dbGraficoAuxP3.DisplayFormat:='##0.00';
        dbGraficoAuxP4.DisplayFormat:='##0.00';
        dbGraficoAuxP5.DisplayFormat:='##0.00';
        dbGraficoAuxP6.DisplayFormat:='##0.00';
        dbGraficoAuxP7.DisplayFormat:='##0.00';
        dbGraficoAuxP8.DisplayFormat:='##0.00';
        dbGraficoAuxP9.DisplayFormat:='##0.00';
        dbGraficoAuxP10.DisplayFormat:='##0.00';
        dbGraficoAuxP11.DisplayFormat:='##0.00';
        dbGraficoAuxP12.DisplayFormat:='##0.00';
        frmMenu.ExcelExport.Dataset:=dbGraficoAux;
        frmMenu.ExcelExport.ExportDataset;
        frmMenu.ExcelExport.Disconnect;

        dbGraficoAux.Filtered:=false;
        dbGraficoAux.Close;
        dbGraficoAux.tag:=0;
     end;
end;

procedure TfrmRelRepresentatividadeConta.chkRegiaoClick(Sender: TObject);
begin
    if chkRegiao.Checked then
       cmpRegiao.Visible:=false
    else
       cmpRegiao.Visible:=true;
end;

procedure TfrmRelRepresentatividadeConta.cmdRelRepContaExcelClick(Sender: TObject);
var iHospitalIni,iClienteIni,iCli:integer;
var i,iMes,iAno,iMesF,iAnoF,m,a,iHospital,iRegiao,iMaximo:integer;
var iLinhaA,iLinhaD,icliente,iLinhaID,iClienteID,iLinhaH,iRegiaoNome:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iCliente:=Trim(dbClienteIniNome.value);
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);


     iMaximo:=StrToInt(lblMaximo.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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
     end;
     with dmRelatorio do
     begin
         qryRepContaD.SQL.Clear;
         qryRepContaD.SQL.Text:= 'Select AtendHI.Hospital, '+
                                 '       AtendHI.AnoCompetencia as Ano, '+
                                 '       AtendHI.MesCompetencia as Mes, '+
                                 '       AtendHI.Paciente, '+
                                 '       AtendHI.Valor as ValorTot, '+
                                 '       AtendHI.DataInternacao, '+
                                 '       AtendHI.DataAlta, '+
                                 '       AtendHI.Parcial, '+
                                 '       Hospital.Nome as HospitalNome, '+
                                 '       Hospital.Regiao  '+
                                 'from  AtendHI, Hospital '+
                                 'where AtendHI.Hospital=Hospital.Hospital and '+
                                 '      Cliente=:CliIni and '+
                                 '      (Valor-ValorGlosadoM-ValorGlosadoE)>=:Maximo and ('+
                                 iLinhaD+')'+iLinhaA+iLinhaID+iLinhaH+
                                 'order by HospitalNome, AnoCompetencia,MesCompetencia, ValorTot desc ';

         qryRepContaD.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRepContaD.ParamByName('Maximo').asinteger:=iMaximo;

         if not chkHospital.Checked then
             qryRepContaD.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryRepContaD.Open;

//************
        if frmRelRepresentatividadeConta.Tag=0 then
        begin
            if chkClienteID.Checked then
                frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
            else
                frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

            frmMenu.rvBBAuditoria.SetParam('Titulo1','Representatividade Contas acima de '+FloatToStrF(iMaximo,ffCurrency,8,2));
            frmMenu.rvBBAuditoria.SetParam('Total',FloatToStrF(iMaximo,ffCurrency,8,2));
            frmMenu.rvBBAuditoria.SetParam('Cliente',iCliente);

            frmMenu.rvBBAuditoria.SelectReport('relRepContaD',true);
            frmMenu.rvBBAuditoria.Execute;
        end
        else
        begin
            frmMenu.ExcelExport.ExcelVisible:=true;
            frmMenu.ExcelExport.Dataset:=qryRepContaD;     //nao tem %
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
        end;
     end;

end;

procedure TfrmRelRepresentatividadeConta.BitBtn4Click(Sender: TObject);
begin
    frmRelRepresentatividadeConta.Tag:=1;
    cmdRelRepContaExcelClick(Sender);
    frmRelRepresentatividadeConta.Tag:=0;
end;

procedure TfrmRelRepresentatividadeConta.chkHospitalClick(Sender: TObject);
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

end.
