unit frmRelCustosTipoInternacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmRelCustoTipoInternacao = class(TForm)
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
    cmdRelCodigo: TBitBtn;
    dbHospitalIni: TMSTable;
    dsHospitalIni: TDataSource;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    cmpHospitalIni: TDBLookupComboBox;
    dbPacienteIni: TMSTable;
    dsPacienteInicial: TDataSource;
    cmpPacienteIni: TDBLookupComboBox;
    cmpCodPacienteIni: TDBText;
    dbPacienteIniPaciente: TIntegerField;
    dbPacienteIniNome: TStringField;
    Label5: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    chkHospital: TCheckBox;
    chkPaciente: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Label2: TLabel;
    dbClienteIniDiarias: TIntegerField;
    dbClienteIniDiariasUTI: TIntegerField;
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    rdgAnalise: TRadioGroup;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
    procedure chkPacienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCustoTipoInternacao: TfrmRelCustoTipoInternacao;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelCustoTipoInternacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbPacienteIni.close;
    dbClienteID.Close;
end;

procedure TfrmRelCustoTipoInternacao.FormShow(Sender: TObject);
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

    dbPacienteIni.Open;
    cmpPacienteIni.KeyValue:=dbPacienteIniPaciente.Value;

    dbClienteId.Open;
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelCustoTipoInternacao.cmdRelCodigoClick(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni:integer;
var iLinhaH,iLinhaP,iLInhaC,iLinhaD,iLinhaA,iLinhaID,iClienteID:string;
var iMes,iAno,iMesF,iAnoF:integer;
var iDataIni,iDataFim:TDate;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iClienteID:=dbClienteIDID.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);
     iDataIni:=EncodeDAte(iAno,iMes,1);
     iDataFim:=EncodeDate(iAnoF,iMesF,1);

     if iDataFim<iDataIni then
     begin
        ShowMessage('Competencia final menor que inicial');
        abort;
     end;

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';
    if chkPaciente.Checked then
       iLinhaP:=''
    else
       iLinhaP:=' and AtendHI.Paciente=:PacIni ';

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

   if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
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
        iLInhaD:='('+iLinhaD+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;
     case rdgAnalise.ItemIndex of
     0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
     1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
     2:iLinhaA:='';
    end;

with dmRelatorio do
begin
    case frmRelCustoTipoInternacao.Tag of
    1: begin //Custos por Tipo de Internacao
         qryRelCustoTipoInternacao.SQL.Clear;
         qryRelCustoTipoInternacao.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                             '       AtendHI.hospital as hospital, '+
                                             '       AtendHI.internacao as internacao, '+
                                             '       sum(AtendHI.valor) as valor, '+
                                             '       sum(AtendHI.valorglosadom) as glosam, '+
                                             '       sum(AtendHI.valorglosadoe) as glosae, '+
                                             '       count(AtendHI.AtendimentoHI) as qtd, '+
                                             '       Hospital.Nome as Nome  '+
                                             'from AtendHI, Hospital '+
                                             'where AtendHI.Hospital=Hospital.Hospital and '+
                                             '      AtendHI.Complemento=0 and '+
                                             iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                             'group by AtendHI.cliente,AtendHI.hospital,nome,internacao '+
                                             'order by AtendHI.cliente, internacao, nome';

         qryRelCustoTipoInternacao.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoTipoInternacao.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoTipoInternacao.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelCustoTipoInternacao.Open;
         if qryRelCustoTipoInternacao.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryRelCustoTipoInternacao.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoTipoInternacao',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    2: begin //Diarias por tipo de Acomodacao
         qryRelQtdDiarias.SQL.Clear;
         qryRelQtdDiarias.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                    '       AtendHI.Hospital as hospital, '+
                                    '       AtendHI.Internacao as internacao, '+
                                    '       sum(AtendHI.apto) as apto, '+
                                    '       sum(AtendHI.enfermaria) as enfermaria, '+
                                    '       sum(AtendHI.bercario) as bercario, '+
                                    '       sum(AtendHI.Diasuti) as uti, '+
                                    '       sum(AtendHI.semi) as semi, '+
                                    '       sum(AtendHI.isolamento) as isolamento, '+
                                    '       sum(AtendHI.dayclinicqtd) as dayclinici, '+
                                    '       sum(AtendHI.diarias) as diarias, '+
                                    '       Hospital.Nome as Nome  '+
                                    'from AtendHI, Hospital '+
                                    'where AtendHI.Hospital=Hospital.Hospital and '+
                                    '      AtendHI.Complemento=0 and '+
                                    iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                    'group by AtendHI.cliente,internacao,AtendHI.hospital,nome '+
                                    'order by AtendHI.cliente,internacao, nome';

         qryRelQtdDiarias.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelQtdDiarias.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelQtdDiarias.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelQtdDiarias.Open;
         if qryRelQtdDiarias.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryRelQtdDiarias.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         frmMenu.rvBBAuditoria.SelectReport('RelQtdDiarias',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    3: begin //Representatividade Day e UTI
         qryRelQtdDiarias1.SQL.Clear;
         qryRelQtdDiarias1.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                     '       sum(AtendHI.Diasuti) as uti, '+
                                     '       sum(AtendHI.dayclinicqtd) as dayclinici, '+
                                     '       sum(AtendHI.diarias) as diarias '+
                                     'from AtendHI  '+
                                     'where AtendHI.Complemento=0 and '+
                                     iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                     'group by cliente '+
                                     'order by cliente';

         qryRelQtdDiarias1.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelQtdDiarias1.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelQtdDiarias1.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelQtdDiarias1.Open;

         qryRelQtdDiarias.SQL.Clear;
         qryRelQtdDiarias.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                    '       AtendHI.hospital as hospital, '+
                                    '       AtendHI.internacao as internacao, '+
                                    '       sum(AtendHI.apto) as apto, '+
                                    '       sum(AtendHI.enfermaria) as enfermaria, '+
                                    '       sum(AtendHI.bercario) as bercario, '+
                                    '       sum(AtendHI.Diasuti) as uti, '+
                                    '       sum(AtendHI.semi) as semi, '+
                                    '       sum(AtendHI.isolamento) as isolamento, '+
                                    '       sum(AtendHI.dayclinicqtd) as dayclinici, '+
                                    '       sum(AtendHI.diarias) as diarias, '+
                                    '       Hospital.Nome as Nome  '+
                                    'from AtendHI, Hospital '+
                                    'where AtendHI.Hospital=Hospital.Hospital and '+
                                    '      AtendHI.Complemento=0 and '+
                                    iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                    'group by AtendHI.cliente,internacao,AtendHI.hospital,nome '+
                                    'order by AtendHI.cliente,internacao,nome';

         qryRelQtdDiarias.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelQtdDiarias.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelQtdDiarias.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelQtdDiarias.Open;
         if qryRelQtdDiarias.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryRelQtdDiarias.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('RelQtdDiariasTipo',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    4: begin //Custos por Tipo de Internacao - Comparativo
         qryRelCustoTipoInternacao1.SQL.Clear;
         qryRelCustoTipoInternacao1.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                             '       AtendHI.hospital as hospital, '+
                                             '       sum(AtendHI.valor) as valor, '+
                                             '       sum(AtendHI.valorglosadom) as glosam, '+
                                             '       sum(AtendHI.valorglosadoe) as glosae, '+
                                             '       count(AtendHI.AtendimentoHI) as qtd '+
                                             'from AtendHI where '+
                                             iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                             'group by AtendHI.cliente,AtendHI.hospital '+
                                             'order by AtendHI.cliente,AtendHI.hospital ';

         qryRelCustoTipoInternacao1.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoTipoInternacao1.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoTipoInternacao1.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelCustoTipoInternacao1.Open;

         qryRelCustoTipoInternacao3.SQL.Clear;
         qryRelCustoTipoInternacao3.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                             '       sum(AtendHI.valor) as valor, '+
                                             '       sum(AtendHI.valorglosadom) as glosam, '+
                                             '       sum(AtendHI.valorglosadoe) as glosae, '+
                                             '       count(AtendHI.AtendimentoHI) as qtd '+
                                             'from AtendHI '+
                                             'where AtendHI.Complemento=0 and '+
                                             iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                             'group by cliente '+
                                             'order by cliente';

         qryRelCustoTipoInternacao3.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoTipoInternacao3.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoTipoInternacao3.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelCustoTipoInternacao3.Open;

         qryRelCustoTipoInternacao2.SQL.Clear;
         qryRelCustoTipoInternacao2.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                             '       AtendHI.internacao as internacao, '+
                                             '       sum(AtendHI.valor) as valor, '+
                                             '       sum(AtendHI.valorglosadom) as glosam, '+
                                             '       sum(AtendHI.valorglosadoe) as glosae, '+
                                             '       count(AtendHI.AtendimentoHI) as qtd '+
                                             'from AtendHI  '+
                                             'where AtendHI.Complemento=0 and '+
                                             iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                             'group by cliente,internacao '+
                                             'order by cliente,internacao';

         qryRelCustoTipoInternacao2.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoTipoInternacao2.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoTipoInternacao2.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelCustoTipoInternacao2.Open;

         qryRelCustoTipoInternacao.SQL.Clear;
         qryRelCustoTipoInternacao.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                             '       AtendHI.hospital as hospital, '+
                                             '       AtendHI.internacao as internacao, '+
                                             '       sum(AtendHI.valor) as valor, '+
                                             '       sum(AtendHI.valorglosadom) as glosam, '+
                                             '       sum(AtendHI.valorglosadoe) as glosae, '+
                                             '       count(AtendHI.AtendimentoHI) as qtd, '+
                                             '       Hospital.Nome as Nome  '+
                                             'from AtendHI, Hospital '+
                                             'where AtendHI.Hospital=Hospital.Hospital and '+
                                             '      AtendHI.Complemento=0 and '+
                                             iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaID+
                                             'group by AtendHI.cliente,AtendHI.hospital,nome,internacao '+
                                             'order by AtendHI.cliente, nome, internacao';

         qryRelCustoTipoInternacao.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoTipoInternacao.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoTipoInternacao.ParamByName('HospIni').Value:=iHospitalIni;
         qryRelCustoTipoInternacao.Open;
         if qryRelCustoTipoInternacao.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryRelCustoTipoInternacao.Close;
            abort;
         end;

         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoTipoInternacao1',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    end;
end;
end;

procedure TfrmRelCustoTipoInternacao.chkPacienteClick(Sender: TObject);
begin
    if chkPaciente.Checked then
    begin
       cmpPacienteIni.Visible:=false;
       cmpCodPacienteIni.visible:=false;
    end
    else
    begin
       cmpPacienteIni.Visible:=true;
       cmpCodPacienteIni.Visible:=true;
    end;
end;

procedure TfrmRelCustoTipoInternacao.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelCustoTipoInternacao.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelCustoTipoInternacao.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

end.
