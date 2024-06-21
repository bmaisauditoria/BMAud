unit frmRelProdParciais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants,
  RpDefine, RpCon, RpConDS;

type
  TfrmRelProdParcial = class(TForm)
    Panel1: TPanel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Label1: TLabel;
    cmdRelCodigoN: TBitBtn;
    qryParcial: TMSQuery;
    qryParcialcliente: TIntegerField;
    qryParcialhospital: TIntegerField;
    qryParcialpaciente: TIntegerField;
    qryParcialsenha: TStringField;
    qryParcialQtd: TIntegerField;
    rvProdParcial: TRvDataSetConnection;
    qryParcialClienteNome: TStringField;
    qryParcialHospitalNome: TStringField;
    qryParcialPacienteNome: TStringField;
    qryProd: TMSQuery;
    rvProdParcialItem: TRvDataSetConnection;
    qryProdCliente: TIntegerField;
    qryProdPaciente: TIntegerField;
    qryProdHospital: TIntegerField;
    qryProdMedico: TIntegerField;
    qryProdEnfermeiro: TIntegerField;
    qryProdMesCompetencia: TSmallintField;
    qryProdAnoCompetencia: TSmallintField;
    qryProdDataInternacao: TDateTimeField;
    qryProdServico: TStringField;
    qryProdServicoC: TStringField;
    qryProdProdutividade: TIntegerField;
    qryParcialProdutividade: TIntegerField;
    qryProdMedicoNome: TStringField;
    qryProdEnfermeiroNome: TStringField;
    qryProdSenha: TStringField;
    qryParcialNome: TStringField;
    qryProdParcial: TWordField;
    qryProdParcialTexto: TStringField;
    qryProdAtendimentoHI: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoNClick(Sender: TObject);
    procedure qryProdCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdParcial: TfrmRelProdParcial;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;

{$R *.DFM}

procedure TfrmRelProdParcial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelProdParcial.FormShow(Sender: TObject);
var d,m,a:word;
begin
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

end;

procedure TfrmRelProdParcial.cmdRelCodigoNClick(Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno:integer;
begin
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    qryParcial.Close;
    qryParcial.SQL.Clear;
    qryParcial.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, '+
                         '       AtendHI.Paciente, AtendHI.Senha, '+
                         '       AtendHI.Produtividade, '+
                         '       count(AtendimentoHI) as Qtd, '+
                         '       Pacientes.Nome '+
                         'from AtendHI,Pacientes '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes)  and AtendHI.Cliente=:iCli and '+
                         '      AtendHI.Paciente=Pacientes.Paciente '+
                         'group by AtendHI.cliente, nome, AtendHI.paciente, senha, hospital, Produtividade '+
                         'having count(AtendimentoHI)>1 '+
                         'order by AtendHI.cliente, nome, AtendHI.paciente, senha, hospital ';

    qryParcial.ParamByName('iMes').asinteger:=iMes;
    qryParcial.ParamByName('iAno').asinteger:=iAno;
    qryParcial.ParamByName('iCli').asinteger:=dbClienteIniCliente.value;
    qryParcial.Open;

    if qryParcial.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Parciais');
        abort;
    end;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and AtendHI.Cliente=:iCli  '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.ParamByName('iCli').asinteger:=dbClienteIniCliente.value;
    qryProd.Open;

    iCompetencia:=InttoStr(frmProdutividade.dbProdMesCompetencia.value)+'/'+IntToStr(frmProdutividade.dbProdAnoCompetencia.value);
    frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

    frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores - Parciais');

    frmMenu.rvBBAuditoria.SelectReport('relProdParcial',true);
    frmMenu.rvBBAuditoria.Execute;
end;

procedure TfrmRelProdParcial.qryProdCalcFields(DataSet: TDataSet);
begin
    if qryProdParcial.value=1 then
        qryProdParcialTexto.value:='Sim'
    else
        qryProdParcialTexto.value:='Não'
end;

end.
