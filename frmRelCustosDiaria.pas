unit frmRelCustosDiaria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmRelCustoDiaria = class(TForm)
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
    rdgTipo: TRadioGroup;
    Label1: TLabel;
    rdgAnalise: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
    procedure chkPacienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCustoDiaria: TfrmRelCustoDiaria;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelCustoDiaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbPacienteIni.close;
end;

procedure TfrmRelCustoDiaria.FormShow(Sender: TObject);
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

procedure TfrmRelCustoDiaria.cmdRelCodigoClick(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni:integer;
var iMes,iAno:integer;
var iLinhaH,iLinhaP,iLInhaC,iLinhaD,iLinhaA:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';
    if chkPaciente.Checked then
       iLinhaP:=''
    else
       iLinhaP:=' and AtendHI.Paciente=:PacIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    case rdgTipo.ItemIndex of
    0:iLinhaD:='and AtendHI.DiariasCalculadas>AtendHI.Diarias ';
    1:iLinhaD:='and AtendHI.DiariasCalculadas<AtendHI.Diarias ';
    2:iLinhaD:='and AtendHI.DiariasCalculadas<>AtendHI.Diarias ';
    end;

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    with dmRelatorio do
    begin
         qryEstatPaciente.Close;
         qryEstatPaciente.SQL.Clear;
         qryEstatPaciente.SQL.Text:='Select * from AtendHI,Pacientes '+
                                    'where AtendHI.Paciente=Pacientes.Paciente and '+
                                    '      AtendHI.MesCompetencia=:Mes and '+
                                    '      AtendHI.AnoCompetencia=:Ano and '+
                                    '      AtendHI.Complemento=0  '+
                                    iLinhaC+iLinhaP+iLinhaH+iLinhaD+iLinhaA+
                                    'order by AtendHI.Cliente,Hospital,Nome';

         qryEstatPaciente.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryEstatPaciente.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryEstatPaciente.ParamByName('HospIni').Value:=iHospitalIni;

         qryEstatPaciente.ParamByName('Mes').Value:=iMes;
         qryEstatPaciente.ParamByName('Ano').Value:=iAno;

         qryEstatPaciente.Open;
         if qryEstatPaciente.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
         end;

         case rdgTipo.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo','Diárias Calculadas maior que Apontadas');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo','Diárias Calculadas menor que Apontadas');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo','Diárias Calculadas diferentes que Apontadas');
         end;

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;
         
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);
         frmMenu.rvBBAuditoria.SelectReport('relDiariasCalculadas',true);
         frmMenu.rvBBAuditoria.Execute;
    end;
end;

procedure TfrmRelCustoDiaria.chkPacienteClick(Sender: TObject);
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

procedure TfrmRelCustoDiaria.chkHospitalClick(Sender: TObject);
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
