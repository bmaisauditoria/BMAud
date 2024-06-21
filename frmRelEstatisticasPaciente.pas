unit frmRelEstatisticasPaciente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmRelEstatisticaPaciente = class(TForm)
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
    chkCliente: TCheckBox;
    chkHospital: TCheckBox;
    chkPaciente: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    rdgOrdem: TRadioGroup;
    rdgAnalise: TRadioGroup;
    Label2: TLabel;
    lblMaximo: TEdit;
    UpDown3: TUpDown;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkPacienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstatisticaPaciente: TfrmRelEstatisticaPaciente;

implementation

uses frmPrincipal,  dmRelatorios;

{$R *.DFM}

procedure TfrmRelEstatisticaPaciente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbPacienteIni.close;
end;

procedure TfrmRelEstatisticaPaciente.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;

    dbPacienteIni.Open;
    cmpPacienteIni.KeyValue:=dbPacienteIniPaciente.Value;
end;

procedure TfrmRelEstatisticaPaciente.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpClienteIni.Visible:=false;
       cmpCodClienteIni.visible:=false;
    end
    else
    begin
       cmpClienteIni.Visible:=true;
       cmpCodClienteIni.Visible:=true;
    end;
end;

procedure TfrmRelEstatisticaPaciente.chkPacienteClick(Sender: TObject);
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

procedure TfrmRelEstatisticaPaciente.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelEstatisticaPaciente.BitBtn2Click(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni:integer;
var iMes,iAno:integer;
var iLinhaH,iLinhaP,iLInhaC,iLinhaO,iLinhaA,iLinhaV:string;
var iMaximo:variant;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

     if lblMaximo.text='' then
        iMaximo:=0
     else
        iMaximo:=StrToFloat(lblMaximo.Text);

    if chkPaciente.Checked then
       iLinhaP:=''
    else
       iLinhaP:=' and AtendHI.Paciente=:PacIni ';

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    case rdgOrdem.ItemIndex of
    0:iLinhaO:='order by AtendHI.Cliente,Hospital,Nome,DataInternacao';
    1:iLinhaO:='order by AtendHI.Cliente,Hospital,Sequencial';
    end;

    iLinhaV:='and AtendHI.Valor>=:Max ';

     with dmRelatorio do
     begin
         qryEstatPaciente.SQL.Clear;
         qryEstatPaciente.SQL.Text:='Select * from AtendHI,Pacientes '+
                                'where AtendHI.Paciente=Pacientes.Paciente and '+
                                '      AtendHI.MesCompetencia=:Mes and '+
                                '      AtendHI.AnoCompetencia=:Ano and '+
                                '      AtendHI.Complemento=0 '+
                                iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaV+
                                iLinhaO;

         if not chkCliente.Checked then
         qryEstatPaciente.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryEstatPaciente.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryEstatPaciente.ParamByName('HospIni').Value:=iHospitalIni;

         qryEstatPaciente.ParamByName('Mes').Value:=iMes;
         qryEstatPaciente.ParamByName('Ano').Value:=iAno;

         qryEstatPaciente.ParamByName('Max').AsFloat:=iMaximo;

         qryEstatPaciente.Open;
         if qryEstatPaciente.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPaciente.Close;
            abort;
         end;

         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo','Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo','Pos-Análise Hospital');
         end;

         if iMaximo=0 then
            frmMenu.rvBBAuditoria.SetParam('Titulo2','')
         else
            frmMenu.rvBBAuditoria.SetParam('Titulo2','Valores apresentados acima de '+FloattoStrF(iMaximo,ffCurrency,11,2));

         frmMenu.rvBBAuditoria.SelectReport('relEstatisticaPaciente',true);
         frmMenu.rvBBAuditoria.Execute;
     end;

end;

end.
