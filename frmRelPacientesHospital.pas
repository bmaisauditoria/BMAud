unit frmRelPacientesHospital;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmRelPacienteHospital = class(TForm)
    Panel1: TPanel;
    cmdRelCodigo: TBitBtn;
    cmpDataIni: TDateTimePicker;
    cmpDataFim: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPacienteHospital: TfrmRelPacienteHospital;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelPacienteHospital.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelPacienteHospital.FormShow(Sender: TObject);
begin
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmRelPacienteHospital.FormCreate(Sender: TObject);
begin
    cmpDataIni.date:=date;
    cmpDataFim.date:=date;
end;

procedure TfrmRelPacienteHospital.cmdRelCodigoClick(Sender: TObject);
var iClienteIni:integer;
var iDataIni,iDataFim:TDate;
var iNome:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iNome:=dbClienteIniNome.value;
     iDataIni:=cmpDataIni.date;
     iDataFim:=cmpDataFim.date;

     if iDataFim < iDataIni then
     begin
         ShowMessage('Data Final menor que Inicial');
         abort;
     end;

    with dmRelatorio do
    begin
        dbAtendimentoHI.SQL.clear;
        dbAtendimentoHI.sql.Text:='Select * from AtendHI '+
                                  'where Cliente=:iCli and '+
                                  '      DataInternacao>=:iIni and DataInternacao<=:iFim '+
                                  'order by Paciente, DataInternacao, DataAlta';
        dbAtendimentoHI.ParamByName('iCli').value:=iClienteIni;
        dbAtendimentoHI.ParamByName('iIni').value:=iDataIni;
        dbAtendimentoHI.ParamByName('iFim').value:=iDataIni;
        dbAtendimentoHI.Open;

        qryRelPacienteHospital.SQL.Clear;
        qryRelPacienteHospital.SQL.Text:='Select AtendHI.Paciente, '+
                                         '       count(AtendHI.Hospital) as qtd, '+
                                         '       Pacientes.Nome '+
                                         'from AtendHI, Pacientes '+
                                         'where AtendHI.Paciente=Pacientes.Paciente and '+
                                         '      AtendHI.DataInternacao>=:Ini and '+
                                         '      AtendHI.DataInternacao<=:Fim and '+
                                         '      AtendHI.Cliente=:CliIni '+
                                         'group by AtendHI.Paciente,Nome '+
                                         'having count(Hospital)>1'+
                                         'order by Nome';

        qryRelPacienteHospital.ParamByName('CliIni').Value:=iClienteIni;
        qryRelPacienteHospital.ParamByName('Ini').asDate:=iDataIni;
        qryRelPacienteHospital.ParamByName('Fim').asDate:=iDataFim;
        qryRelPacienteHospital.Open;
    end;
    frmMenu.RvBBAuditoria.SetParam('Titulo','Internações de '+DateToStr(iDataIni)+' à '+DateToSTr(iDAtaFim));
    frmMenu.RvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
    frmMenu.RvBBAuditoria.SetParam('ClienteNome',iNome);
    frmMenu.rvBBAuditoria.SelectReport('relPacienteInternacao',true);
    frmMenu.rvBBAuditoria.Execute;
end;

end.
