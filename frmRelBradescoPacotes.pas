unit frmRelBradescoPacotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, ExcelExport,
  Grids, DBGrids;

type
  TfrmRelBradescoPacote = class(TForm)
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
    dbAtendHI: TMSTable;
    dbAtendHIVisita: TIntegerField;
    dbAtendHICliente: TIntegerField;
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
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dbAtendHIAtendimentoHI: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelBradescoPacote: TfrmRelBradescoPacote;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelBradescoPacote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbClienteId.Close;
end;

procedure TfrmRelBradescoPacote.FormShow(Sender: TObject);
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

procedure TfrmRelBradescoPacote.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelBradescoPacote.BitBtn2Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaC1,iLinhaA,iLinhaD1,iLinhaID,titulo3:string;
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
    iLinhaC1:=' AtendHIGlosa.Cliente='+IntToStr(iClienteIni)+' ';

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
         qryBradescoGlosa.SQL.Clear;
         qryBradescoGlosa.SQL.Text:='Select Cliente, Tipo, AtendimentoHI, GlosaI, '+
                                    'sum(Valor) as Valor, '+
                                    'sum(ValorApresentado) as ValorApresentado '+
                                    'from AtendHIGlosa '+
                                    'where  '+iLinhaC1+
                                    'group by Cliente,AtendimentoHI,Tipo,GlosaI '+
                                    'order by Cliente,AtendimentoHI,Tipo,GlosaI';
         qryBradescoGlosa.Open;

         qryBradescoPacote.SQL.Clear;
         qryBradescoPacote.SQL.Text:='Select * from AtendHI, Pacientes  '+
                                     'where AtendHI.Paciente=Pacientes.Paciente and '+
                                     '      AtendHI.Pacote=1 and '+
                                     '('+iLinhaD1+') '+
                                      iLinhaC+iLinhaH+iLinhaA+iLinhaID+
                                      'order by AtendHI.Cliente,Hospital,Nome,DataInternacao';

         qryBradescoPacote.Open;
         if qryBradescoPacote.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryBradescoPacote.Close;
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
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Relatório Analítico de Pacotes - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Relatório Analítico de Pacotes - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Relatório Analítico de Pacotes - Pré e Pos-Análise Hospital');
         end;

        frmMenu.rvBBAuditoria.SelectReport('relBradescoPacote',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelBradescoPacote.BitBtn1Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaC1,iLinhaA,iLinhaD1,iLinhaID,titulo3:string;
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
    iLinhaC1:=' AtendHIGlosa.Cliente='+IntToStr(iClienteIni)+' ';

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
         qryBradescoGlosa.SQL.Clear;
         qryBradescoGlosa.SQL.Text:='Select Cliente, Tipo, AtendimentoHI, GlosaI, '+
                                    'sum(Valor) as Valor, '+
                                    'sum(ValorApresentado) as ValorApresentado '+
                                    'from AtendHIGlosa '+
                                    'where  '+iLinhaC1+
                                    'group by Cliente,AtendimentoHI,Tipo,GlosaI '+
                                    'order by Cliente,AtendimentoHI,Tipo,GlosaI';
         qryBradescoGlosa.Open;

         qryBradescoPacote.SQL.Clear;
         qryBradescoPacote.SQL.Text:='Select * from AtendHI, Pacientes '+
                                     'where AtendHI.Paciente=Pacientes.Paciente and '+
                                     '      AtendHI.Pacote=1 and '+
                                     '('+iLinhaD1+') '+
                                     iLinhaC+iLinhaH+iLinhaA+iLinhaID+
                                     'order by AtendHI.Cliente,Hospital,Nome,DataInternacao';

         qryBradescoPacote.Open;
         if qryBradescoPacote.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryBradescoPacote.Close;
            abort;
         end;
         with frmMenu do
         begin
         ExcelExport.Dataset:=qryBradescoPacote;    //nao tem %
         ExcelExport.ExcelVisible:=true;
         ExcelExport.ExportDataset;
         ExcelExport.Disconnect;
         qryBradescoPacote.Close;
         end;
end;
end;

procedure TfrmRelBradescoPacote.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelBradescoPacote.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelBradescoPacote.BitBtn3Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaD1,iLinhaID:string;
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

        qryBradescoPH.SQL.Clear;
        qryBradescoPH.SQL.Text:='Select Cliente, '+
                                'Hospital, '+
                                'count(AtendHI.Hospital) as Qtd '+
                                'from AtendHI '+
                                'where Pacote=1 and '+
                                '('+iLinhaD1+') '+
                                iLinhaC+iLinhaH+iLinhaA+iLinhaID+
                                'group by Cliente,Hospital ';
         qryBradescoPH.Open;

         qryBradescoPacoteR.SQL.Clear;
         qryBradescoPacoteR.SQL.Text:='Select AtendHI.Cliente, '+
                                      '       AtendHI.Hospital, '+
                                      '       Hospital.Nome, '+
                                      '       Hospital.CodBradesco, '+
                                      '       count(AtendHI.Hospital) as Qtd, '+
                                      '       sum(AtendHI.Valor) as Valor, '+
                                      '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                      '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                      '       sum(AtendHI.PAberto) as PAberto, '+
                                      '       sum(AtendHI.PExcedente) as PExcedente '+
                                      'from AtendHI, Hospital '+
                                      'where AtendHI.Hospital=Hospital.Hospital and  '+
                                      '('+iLinhaD1+') '+
                                      iLinhaC+iLinhaH+iLinhaA+iLinhaID+
                                      'group by Cliente,AtendHI.Hospital,Nome,CodBradesco '+
                                      'order by Cliente,Nome';

         qryBradescoPacoteR.Open;
         if qryBradescoPacoteR.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryBradescoPacoteR.Close;
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
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Relatório Sintetico de Pacotes - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Relatório Sintetico de Pacotes - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Relatório Sintetico de Pacotes - Pré e Pos-Análise Hospital');
         end;

        frmMenu.rvBBAuditoria.SelectReport('relBradescoPacoteR',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelBradescoPacote.BitBtn4Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaD1,iLinhaID:string;
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

        qryBradescoPH.SQL.Clear;
        qryBradescoPH.SQL.Text:='Select Cliente, '+
                                'Hospital, '+
                                'count(AtendHI.Hospital) as Qtd '+
                                'from AtendHI '+
                                'where Pacote=1 and '+
                                '('+iLinhaD1+') '+
                                iLinhaC+iLinhaH+iLinhaA+iLinhaID+
                                'group by Cliente,Hospital ';
         qryBradescoPH.Open;

         qryBradescoPacoteR.SQL.Clear;
         qryBradescoPacoteR.SQL.Text:='Select AtendHI.Cliente, '+
                                      '       AtendHI.Hospital, '+
                                      '       Hospital.Nome, '+
                                      '       Hospital.CodBradesco, '+
                                      '       count(AtendHI.Hospital) as Qtd, '+
                                      '       sum(AtendHI.Valor) as Valor, '+
                                      '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                      '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                      '       sum(AtendHI.PAberto) as PAberto, '+
                                      '       sum(AtendHI.PExcedente) as PExcedente '+
                                      'from AtendHI, Hospital '+
                                      'where AtendHI.Hospital=Hospital.Hospital and  '+
                                      '('+iLinhaD1+') '+
                                      iLinhaC+iLinhaH+iLinhaA+iLinhaID+
                                      'group by Cliente,AtendHI.Hospital,Nome,CodBradesco '+
                                      'order by Cliente,Nome';

         qryBradescoPacoteR.Open;
         if qryBradescoPacoteR.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryBradescoPacoteR.Close;
            abort;
         end;
         with frmMenu do
         begin
            qryBradescoPacoteRPAplic.DisplayFormat:='##0.00';
            qryBradescoPacoteRPGlosa.DisplayFormat:='##0.00';
            ExcelExport.Dataset:=qryBradescoPacoteR;
            ExcelExport.ExcelVisible:=true;
            ExcelExport.ExportDataset;
            ExcelExport.Disconnect;
            qryBradescoPacoteR.Close;
         end;
end;
end;

end.
