unit frmRelDesempenhosCid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelDesempenhoCid = class(TForm)
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
    cmdImp: TBitBtn;
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
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    chkHospital: TCheckBox;
    chkPaciente: TCheckBox;
    Label2: TLabel;
    dbClienteIniDiarias: TIntegerField;
    dbClienteIniDiariasUTI: TIntegerField;
    dbDiagnostico: TMSTable;
    dsDiagnostico: TDataSource;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoCodCid: TStringField;
    dbDiagnosticoNome: TStringField;
    chkDiagnostico: TCheckBox;
    cmpDiagnostico: TDBLookupComboBox;
    cmpCodDiagnostico: TDBText;
    dbHID: TMSTable;
    dbHIDDiagnostico: TIntegerField;
    dbHIDCodCid: TStringField;
    dbDiag: TMSTable;
    dbDiagDiagnostico: TIntegerField;
    dbDiagCodCid: TStringField;
    dbDiagNome: TStringField;
    cmpImp1: TBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    bar: TProgressBar;
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
    procedure cmdImpClick(Sender: TObject);
    procedure chkPacienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure chkDiagnosticoClick(Sender: TObject);
    procedure dbDiagnosticoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmpImp1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDesempenhoCid: TfrmRelDesempenhoCid;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelDesempenhoCid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbClienteID.close;
    dbHospitalIni.close;
    dbPacienteIni.close;
    dbDiagnostico.Close;
    dbHID.Close;
    dbDiag.Close;
end;

procedure TfrmRelDesempenhoCid.FormShow(Sender: TObject);
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

    dbPacienteIni.Open;
    cmpPacienteIni.KeyValue:=dbPacienteIniPaciente.Value;

    dbDiagnostico.Open;
    cmpDiagnostico.KeyValue:=dbDiagnosticoCodCid.Value;
    bar.Position:=0;
end;

procedure TfrmRelDesempenhoCid.cmdImpClick(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iDataIni,iDataFim:TDate;
var iLinhaH,iLinhaP,iLInhaC,iLinhaD,iLinhaD1,iLinhaA,iDiag,iDiagTexto:string;
var iLinhaID,iClienteID:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iDiag:=copy(dbDiagnosticoCodCid.value,1,1);
     iDiagTexto:=dbDiagnosticoCodCid.value+'-'+dbDiagnosticoNome.value;

     if chkClienteID.Checked then
        iLinhaID:=''
     else
        iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkDiagnostico.Checked then
       iLinhaD:=''
    else
       iLinhaD:=' and AtendHIDiagnostico.CodCid like :Diag ';

    iLinhaD1:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
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
        iLinhaD1:=iLinhaD1+'   (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iLinhaD1:='('+iLinhaD1+')';
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
    case frmRelDesempenhoCid.Tag of
    1: begin //Custos por Cid
         qryrelCustoCid.SQL.Clear;
         qryrelCustoCid.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                  '       AtendHI.hospital as hospital, '+
                                  '       sum(AtendHI.valor) as valor, '+
                                  '       sum(AtendHI.valorglosadom) as glosam, '+
                                  '       sum(AtendHI.valorglosadoe) as glosae, '+
                                  '       count(AtendHI.AtendimentoHI) as qtd, '+
                                  '       Hospital.Nome as Nome,  '+
                                  '       AtendHIDiagnostico.CodCid as CodCid '+
                                  'from AtendHI, Hospital, AtendHIDiagnostico '+
                                  'where AtendHI.Hospital=Hospital.Hospital and '+
                                  '      AtendHI.Cliente=AtendHIDiagnostico.Cliente and '+
                                  '      AtendHI.AtendimentoHI=AtendHIDiagnostico.AtendimentoHI and '+
                                  '      AtendHI.Complemento=0 and '+
                                  iLinhaD1+iLinhaC+iLinhaP+iLinhaH+iLinhaD+iLinhaA+iLinhaID+
                                  'group by AtendHI.cliente,AtendHI.Hospital,nome,AtendHIDiagnostico.CodCid '+
                                  'order by AtendHI.cliente,AtendHIDiagnostico.CodCid,nome';

         qryrelCustoCid.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoCid.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoCid.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkDiagnostico.Checked then
             qryrelCustoCid.ParamByName('Diag').asstring:=iDiag+'%';

         qryrelCustoCid.Open;
         if qryrelCustoCid.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryrelCustoCid.Close;
            abort;
         end;
         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');
         if not chkDiagnostico.Checked then
             frmMenu.rvBBAuditoria.SetParam('Titulo',iDiagTexto)
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoCid',true);
         frmMenu.rvBBAuditoria.Execute;
    end;
    2: begin //Custos por Hospital/Cid
         qryrelCustoHospital.SQL.Clear;
         qryrelCustoHospital.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                       '       AtendHI.Hospital as Hospital, '+
                                       '       sum(AtendHI.valor) as valor, '+
                                       '       sum(AtendHI.valorglosadom) as glosam, '+
                                       '       sum(AtendHI.valorglosadoe) as glosae '+
                                       'from AtendHI, AtendHIDiagnostico '+
                                       'where AtendHI.AtendimentoHI=AtendHIDiagnostico.AtendimentoHI and '+
                                       '      AtendHI.Cliente=AtendHIDiagnostico.Cliente and '+
                                       '      AtendHI.Complemento=0 and '+
                                       iLinhaD1+iLinhaC+iLinhaP+iLinhaH+iLinhaD+iLinhaA+iLinhaID+
                                       'group by AtendHI.cliente,Hospital '+
                                       'order by AtendHI.cliente,Hospital ';

         qryrelCustoHospital.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoHospital.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoHospital.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkDiagnostico.Checked then
             qryrelCustoHospital.ParamByName('Diag').asstring:=iDiag+'%';

         qryrelCustoHospital.Open;

         qryrelCustoCid.SQL.Clear;
         qryrelCustoCid.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                  '       AtendHI.Hospital as Hospital, '+
                                  '       sum(AtendHI.valor) as valor, '+
                                  '       sum(AtendHI.valorglosadom) as glosam, '+
                                  '       sum(AtendHI.valorglosadoe) as glosae, '+
                                  '       count(AtendHI.AtendimentoHI) as qtd, '+
                                  '       Hospital.Nome as Nome,  '+
                                  '       AtendHIDiagnostico.CodCid as CodCid '+
                                  'from AtendHI, Hospital, AtendHIDiagnostico '+
                                  'where AtendHI.Hospital=Hospital.Hospital and '+
                                  '      AtendHI.Cliente=AtendHIDiagnostico.Cliente and '+
                                  '      AtendHI.AtendimentoHI=AtendHIDiagnostico.AtendimentoHI and '+
                                  '      AtendHI.Complemento=0 and '+
                                  iLinhaD1+iLinhaC+iLinhaP+iLinhaH+iLinhaD+iLinhaA+iLinhaID+
                                  'group by AtendHI.cliente,AtendHI.Hospital,Hospital.Nome,AtendHIDiagnostico.CodCid '+
                                  'order by AtendHI.cliente, Hospital.Nome, AtendHIDiagnostico.CodCid';

         qryrelCustoCid.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoCid.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoCid.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkDiagnostico.Checked then
             qryrelCustoCid.ParamByName('Diag').asstring:=iDiag+'%';

         qryrelCustoCid.Open;
         if qryrelCustoCid.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryrelCustoCid.Close;
            abort;
         end;

         if chkClienteID.Checked then
             frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
             frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');
         if not chkDiagnostico.Checked then
             frmMenu.rvBBAuditoria.SetParam('Titulo',iDiagTexto)
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoCid1',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    end;
end;

end;

procedure TfrmRelDesempenhoCid.chkPacienteClick(Sender: TObject);
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

procedure TfrmRelDesempenhoCid.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelDesempenhoCid.chkDiagnosticoClick(Sender: TObject);
begin
    if chkDiagnostico.Checked then
    begin
       cmpDiagnostico.Visible:=false;
       cmpCodDiagnostico.visible:=false;
    end
    else
    begin
       cmpDiagnostico.Visible:=true;
       cmpCodDiagnostico.Visible:=true;
    end;
end;

procedure TfrmRelDesempenhoCid.dbDiagnosticoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(copy(dbDiagnosticoCodCid.value,2,2)='00') and
            (copy(dbDiagnosticoCodCid.value,4,1)='');
end;

procedure TfrmRelDesempenhoCid.cmpImp1Click(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iDataIni,iDataFim:TDate;
var iLinhaH,iLinhaP,iLInhaC,iLinhaD,iLinhaD1,iLinhaA,iDiag,iDiagTexto,iCid:string;
var iLinhaID,iclienteID:string;
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Atenção! Esta relatório poderá levar varios minutos para a montagem',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iDiag:=copy(dbDiagnosticoCodCid.value,1,1);
     iDiagTexto:=dbDiagnosticoCodCid.value+'-'+dbDiagnosticoNome.value;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

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

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if chkDiagnostico.Checked then
       iLinhaD:=''
    else
       iLinhaD:=' and AtendHIDiagnostico.CodCid like :Diag ';

    iLinhaD1:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
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
        iLinhaD1:=iLinhaD1+'   (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iLinhaD1:='('+iLinhaD1+')';
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
         qryrelCustoHospital.SQL.Clear;
         qryrelCustoHospital.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                       '       AtendHI.Hospital as Hospital, '+
                                       '       sum(AtendHI.valor) as valor, '+
                                       '       sum(AtendHI.valorglosadom) as glosam, '+
                                       '       sum(AtendHI.valorglosadoe) as glosae '+
                                       'from AtendHI, AtendHIDiagnostico '+
                                       'where AtendHI.Cliente=AtendHIDiagnostico.Cliente and '+
                                       '      AtendHI.AtendimentoHI=AtendHIDiagnostico.AtendimentoHI and '+
                                       '      AtendHI.Complemento=0 and '+
                                       iLinhaD1+iLinhaC+iLinhaP+iLinhaH+iLinhaD+iLinhaA+iLinhaID+
                                       'group by AtendHI.cliente,Hospital '+
                                       'order by AtendHI.cliente,Hospital ';

         qryrelCustoHospital.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoHospital.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoHospital.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkDiagnostico.Checked then
             qryrelCustoHospital.ParamByName('Diag').asstring:=iDiag+'%';

         qryrelCustoHospital.Open;

         qryrelCustoCid.SQL.Clear;
         qryrelCustoCid.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                  '       AtendHI.Hospital as Hospital, '+
                                  '       sum(AtendHI.valor) as valor, '+
                                  '       sum(AtendHI.valorglosadom) as glosam, '+
                                  '       sum(AtendHI.valorglosadoe) as glosae, '+
                                  '       count(AtendHI.AtendimentoHI) as qtd, '+
                                  '       Hospital.Nome as Nome,  '+
                                  '       AtendHIDiagnostico.CodCid as CodCid '+
                                  'from AtendHI, Hospital, AtendHIDiagnostico '+
                                  'where AtendHI.Cliente=AtendHIDiagnostico.Cliente and '+
                                  '      AtendHI.AtendimentoHI=AtendHIDiagnostico.AtendimentoHI and '+
                                  '      AtendHI.Hospital=Hospital.Hospital and '+
                                  '      AtendHI.Complemento=0 and '+
                                  iLinhaD1+iLinhaC+iLinhaP+iLinhaH+iLinhaD+iLinhaA+iLinhaID+
                                  'group by AtendHI.cliente,AtendHI.Hospital,Hospital.nome,AtendHIDiagnostico.CodCid '+
                                  'order by AtendHI.cliente, Hospital.nome, AtendHIDiagnostico.CodCid';

         qryrelCustoCid.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoCid.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoCid.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkDiagnostico.Checked then
             qryrelCustoCid.ParamByName('Diag').asstring:=iDiag+'%';

         qryrelCustoCid.Open;
         if qryrelCustoCid.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryrelCustoCid.Close;
            abort;
         end;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relGrafico';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relGrafico';

        dbRelCustoCid.Close;
        dbRelCustoCid.SQL.Text:='Delete from relCustoCid';
        dbRelCustoCid.Execute;
        dbRelCustoCid.SQL.Text:='Select * from relCustoCid';
        dbRelCustoCid.Open;

         bar.Min:=0;
         bar.Max:=qryRelCustoCid.RecordCount;
         bar.Position:=0;
         qryRelCustoCid.First;
         while not qryRElCustoCid.eof do
         begin
            iCid:=Copy(qryRelCustoCidCodCid.value,1,1);
            if dbRelCustoCid.Locate('Cliente;HospitalNome;CodCid',VarArrayof([qryRelCustoCidCliente.value,
                                                                      qryRelCustoCidNome.value,iCid]),[]) then
               dbRelCustoCid.Edit
            else
            begin
               dbRelCustoCid.Insert;
               dbRelCustoCidCliente.value:=qryRelCustoCidCliente.value;
               dbRelCustoCidHospitalNome.value:=qryRelCustoCidNome.value;
               dbRelCustoCidHospital.value:=qryRelCustoCidHospital.value;
               dbRelCustoCidCodCid.value:=iCid;
            end;
            dbRelCustoCidQtd.value:=dbRelCustoCidQtd.value+qryRelCustoCidQtd.value;
            dbRelCustoCidValor.value:=dbRelCustoCidVAlor.value+qryRelCustoCidValor.value;
            dbRelCustoCidGlosa.value:=dbRelCustoCidGlosa.value+qryRelCustoCidGlosaE.value+
                                                               qryRelCustoCidGlosaM.value;
            dbRelCustoCid.Post;
            dbRelCustoCid.Refresh;
            qryRelCustoCid.Next;
            bar.Position:=bar.Position+1;
         end;

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');
         if not chkDiagnostico.Checked then
             frmMenu.rvBBAuditoria.SetParam('Titulo',iDiagTexto)
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoCidLetra',true);
         frmMenu.rvBBAuditoria.Execute;
         bar.Position:=0;
end;

end;


procedure TfrmRelDesempenhoCid.BitBtn1Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a atualização dos CIDs',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     dbHID.Open;
     dbDiag.Open;
     dbHID.First;
     bar.Max:=dbHID.RecordCount;
     bar.Position:=0;
     while not dbHID.eof do
     begin
        if dbHIDCodCid.value='' then
        begin
            if dbDiag.Locate('Diagnostico',dbHIDDiagnostico.value,[]) then
            begin
                dbHID.Edit;
                dbHIDCodCid.value:=dbDiagCodCid.value;
                dbHID.Post;
            end;
        end;
        bar.Position:=bar.Position+1;
        dbHID.Next;
    end;
    dbHID.Close;
    dbDiag.Close;
    bar.Position:=0;
    ShowMessage('Atualização processada');
end;

procedure TfrmRelDesempenhoCid.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelDesempenhoCid.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

end.
