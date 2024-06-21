unit frmRelEstatisticasPacienteH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, RpDefine,
  RpBase, RpSystem;

type
  TfrmRelEstatisticaPacienteH = class(TForm)
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
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
    rdgIntercambio: TRadioGroup;
    rdgAnalise: TRadioGroup;
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    rdgRelatorio: TRadioGroup;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    cmpDiaria1: TCheckBox;
    cmpDiaria2: TCheckBox;
    dbClienteIniDiarias: TIntegerField;
    dbClienteIniDiariasUTI: TIntegerField;
    BitBtn1: TBitBtn;
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
    procedure chkPacienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure dsClienteIniDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
  private
    iHospitalIni,iPacienteIni,iClienteIni:integer;
    iMes,iAno,iMesF,iAnoF:integer;
    iLinhaH,iLinhaP,iLInhaC,iLinhaA,iLinhaD,iLInhaD1,iLinhaD2:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstatisticaPacienteH: TfrmRelEstatisticaPacienteH;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelEstatisticaPacienteH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbPacienteIni.close;
    dbClienteID.close;
end;

procedure TfrmRelEstatisticaPacienteH.FormShow(Sender: TObject);
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

    dbClienteID.Open;
    cmpClienteID.KeyValue:=dbClienteIDId.Value;
end;

procedure TfrmRelEstatisticaPacienteH.chkPacienteClick(Sender: TObject);
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

procedure TfrmRelEstatisticaPacienteH.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelEstatisticaPacienteH.dsClienteIniDataChange(
  Sender: TObject; Field: TField);
begin
    cmpDiaria1.Caption:='Diarias acima de '+dbClienteIniDiarias.asString+' dias';
    cmpDiaria2.Caption:='Diarias de UTI acima de '+dbClienteIniDiariasUTI.asString+' dias';
end;

procedure TfrmRelEstatisticaPacienteH.BitBtn1Click(Sender: TObject);
var iClienteId,ilinhaID:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
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

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';
    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    if chkPaciente.Checked then
       iLinhaP:=''
    else
       iLinhaP:=' and AtendHI.Paciente=:PacIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital='+IntToStr(iHospitalIni);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;


    if (cmpDiaria1.Checked=true) and
       (cmpDiaria2.Checked=true) then
    begin
        iLinhaD1:=' and (AtendHI.Diarias>:iDiarias '+
                  ' or AtendHI.DiasUTI>:iDiasUTI) ';
        iLinhaD2:='';
    end
    else
    begin
        if cmpDiaria1.Checked=true then
            iLinhaD1:=' and AtendHI.Diarias>:iDiarias '
        else
            iLinhaD1:='';
        if cmpDiaria2.Checked=true then
            iLinhaD2:=' and AtendHI.DiasUTI>:iDiasUTI '
        else
            iLinhaD2:='';
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
        //***********
//        relEstatisticasHospitalDiag.Tag:=rdgRelatorio.ItemIndex;
        //**************

         dbItemHIDiagnostico.Open;

         qryEstatPacienteD.SQL.Clear;
         qryEstatPacienteD.SQL.Text:='Select * from AtendHI '+
                                     'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                     'inner join Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                     'where ('+iLinhaD+') '+
                                     iLinhaH+iLinhaC+iLinhaP+iLinhaA+iLinhaD1+iLinhaD2+iLinhaID+
                                     'order by AtendHI.Cliente,Hospital.Nome,Pacientes.Nome,DataInternacao';

         qryEstatPacienteD.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryEstatPacienteD.ParamByName('PacIni').asinteger:=iPacienteIni;

         if cmpDiaria1.Checked=true then
             qryEstatPacienteD.ParamByName('iDiarias').AsInteger:=dbClienteIniDiarias.value;
         if cmpDiaria2.Checked=true then
             qryEstatPacienteD.ParamByName('iDiasUTI').AsInteger:=dbClienteIniDiariasUTI.value;

         qryEstatPacienteD.Open;
         qryEstatPacienteD.Refresh;
         if qryEstatPacienteD.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPacienteD.Close;
            abort;
         end;

         qryEstatPacienteD1.SQL.Clear;
         qryEstatPacienteD1.SQL.Text:='Select AtendHI.Cliente, '+
                                      '       AtendHI.Hospital, '+
                                      '       count(AtendHI.Hospital) as Qtd, '+
                                      '       sum(AtendHI.Valor) as Valor, '+
                                      '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                      '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                      '       sum(AtendHI.Diarias) as Diarias, '+
                                      '       sum(AtendHI.DiasUTI) as DiasUTI, '+
                                      '       Pacientes.Nome '+
                                      'from AtendHI '+
                                      'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                      'where ('+iLinhaD+') '+
                                      iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaD1+iLinhaD2+ilinhaID+
                                      'group by AtendHI.Cliente,Hospital,Nome '+
                                      'order by AtendHI.Cliente,Hospital,Nome';

         qryEstatPacienteD1.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryEstatPacienteD1.ParamByName('PacIni').Value:=iPacienteIni;

         if cmpDiaria1.Checked=true then
             qryEstatPacienteD1.ParamByName('iDiarias').AsInteger:=dbClienteIniDiarias.value;
         if cmpDiaria2.Checked=true then
             qryEstatPacienteD1.ParamByName('iDiasUTI').AsInteger:=dbClienteIniDiariasUTI.value;
         qryEstatPacienteD1.Open;

//       iLinhaC:=' and AtendHI.Cliente=:CliIni ';
         iLinhaC:=copy(iLinhaC,5,Length(iLinhaC));
         qryEstatPacienteD2.SQL.Clear;
         qryEstatPacienteD2.SQL.Text:='Select AtendHI.Cliente, '+
                                      '       AtendHI.Hospital, '+
                                      '       AtendHI.DataInicioP, '+
                                      '       sum(AtendHI.Valor) as Valor, '+
                                      '       sum(AtendHI.ValorGlosadoE) as ValorGlosadoE, '+
                                      '       sum(AtendHI.ValorGlosadoM) as ValorGlosadoM, '+
                                      '       sum(AtendHI.Diarias) as Diarias, '+
                                      '       sum(AtendHI.DiasUTI) as DiasUTI, '+
                                      '       Pacientes.Nome '+
                                      'from AtendHI '+
                                      'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                                      'where  '+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaD1+iLinhaD2+iLinhaID+
                                      'group by AtendHI.Cliente,Hospital,Nome,DataInicioP '+
                                      'order by AtendHI.Cliente,Hospital,Nome,DataInicioP ';

         qryEstatPacienteD2.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryEstatPacienteD2.ParamByName('PacIni').Value:=iPacienteIni;

         if cmpDiaria1.Checked=true then
             qryEstatPacienteD2.ParamByName('iDiarias').AsInteger:=dbClienteIniDiarias.value;
         if cmpDiaria2.Checked=true then
             qryEstatPacienteD2.ParamByName('iDiasUTI').AsInteger:=dbClienteIniDiariasUTI.value;
         qryEstatPacienteD2.Open;


         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));

         frmMenu.rvBBAuditoria.SetParam('Titulo','Pré-Análise Hospital');

         if chkClienteID.Checked then
             frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

//         frmMenu.rvBBAuditoria.SetParam('Titulo',''); // antigo Intercambio

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo2','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         case rdgRelatorio.ItemIndex of
         0:frmMenu.rvBBAuditoria.SelectReport('relEstatPacienteDiag',true);
         1:frmMenu.rvBBAuditoria.SelectReport('relEstatPacienteDiagResumo',true);
         end;

         frmMenu.rvBBAuditoria.Execute;
    end;
end;




procedure TfrmRelEstatisticaPacienteH.cmpClienteIniCloseUp(
  Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelEstatisticaPacienteH.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

end.
