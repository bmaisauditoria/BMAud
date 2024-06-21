unit frmCorrecaos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, MSAccess, OLEDBAccess,
  OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, Variants;

type
  TfrmCorrecao = class(TForm)
    dsVazio: TDataSource;
    dbVazio: TMSTable;
    dbVazioPaciente: TIntegerField;
    dbVazioNome: TStringField;
    dbPaciente: TMSTable;
    dbPacientePaciente: TIntegerField;
    dbPacienteNome: TStringField;
    dbHomeCare: TMSTable;
    dsHomeCare: TDataSource;
    dbHomeCarePaciente: TIntegerField;
    dbVazioAtendimento: TIntegerField;
    dbItemHC: TMSTable;
    dbItemHCItem: TIntegerField;
    dsItemHC: TDataSource;
    dbVazioItem: TIntegerField;
    dbPreAnalise: TMSTable;
    dsPreAnalise: TDataSource;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbVazioNomeAuditor: TStringField;
    pagMenu: TPageControl;
    tabHomeCare: TTabSheet;
    tabEstatistica: TTabSheet;
    pagHomeCare: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    lblTotal2: TLabel;
    barHomeCare: TProgressBar;
    Panel6: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    tabPacientes: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    lblTotal: TLabel;
    barPaciente: TProgressBar;
    Panel1: TPanel;
    BitBtn5: TBitBtn;
    Label18: TLabel;
    pagEstatistica: TPageControl;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    TabSheet5: TTabSheet;
    Label4: TLabel;
    DBGrid5: TDBGrid;
    barItemHC: TProgressBar;
    Panel9: TPanel;
    lblTotal5: TLabel;
    Panel10: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    dbItemHCAuditor: TIntegerField;
    dbVazioPacienteNome: TStringField;
    dbConclusao: TMSTable;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    dbVazioNomeDiagnostico: TStringField;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Label7: TLabel;
    DBGrid8: TDBGrid;
    barItemHCD: TProgressBar;
    Panel15: TPanel;
    lblTotal8: TLabel;
    Panel16: TPanel;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    dbItemHCLegenda: TMSTable;
    dbItemHCDiagnostico: TMSTable;
    dbItemHCDiagnosticoDiagnosticoTexto: TStringField;
    dbItemHCDiagnosticoPrincipalTexto: TStringField;
    dbItemHCDiagnosticoCodCid: TStringField;
    dbItemHCDiagnosticoItem: TIntegerField;
    dbItemHCDiagnosticoDiagnostico: TIntegerField;
    dbItemHCDiagnosticoPrincipal: TBooleanField;
    dsItemHCDiagnostico: TDataSource;
    dsItemHCLegenda: TDataSource;
    Label8: TLabel;
    DBGrid9: TDBGrid;
    Panel17: TPanel;
    lblTotal9: TLabel;
    barItemHCL: TProgressBar;
    Panel18: TPanel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    dbPreAnaliseCliente: TIntegerField;
    dbPreAnaliseSequencial: TAutoIncField;
    dbPreAnalisePaciente: TIntegerField;
    dbProcessoPS: TMSTable;
    dsProcessoPS: TDataSource;
    dsItemPS: TDataSource;
    dbGlosaPS: TMSTable;
    dbGlosaPSGlosa1: TSmallintField;
    dbGlosaPSGlosa2: TSmallintField;
    dbGlosaPSDescricao: TStringField;
    dbItemPS: TMSTable;
    dsItemIDiagnostico: TDataSource;
    dbItemIDiagnostico: TMSTable;
    dbItemIGlosa: TMSTable;
    dsItemIGlosa: TDataSource;
    dbGlosaI: TMSTable;
    dbGlosaIGlosaI: TStringField;
    dbGlosaINome: TStringField;
    dbGlosaIResponsavel: TStringField;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    dbItemIDiagnosticoCliente: TIntegerField;
    dbItemIDiagnosticoDiagnostico: TIntegerField;
    dbItemIDiagnosticoAtendimentoHC: TIntegerField;
    dbItemIDiagnosticoItem: TIntegerField;
    dbItemIGlosaCliente: TIntegerField;
    dbItemIGlosaTipo: TStringField;
    dbItemIGlosaGlosaI: TStringField;
    dbItemIGlosaValor: TCurrencyField;
    Label9: TLabel;
    DBGrid10: TDBGrid;
    Panel19: TPanel;
    lblTotal10: TLabel;
    Panel20: TPanel;
    BitBtn28: TBitBtn;
    barItemIGlosa: TProgressBar;
    dbVazioGlosaINome: TStringField;
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbVazioClienteNome: TStringField;
    Label10: TLabel;
    DBGrid11: TDBGrid;
    barItemID: TProgressBar;
    Panel21: TPanel;
    lblTotal11: TLabel;
    Panel22: TPanel;
    BitBtn31: TBitBtn;
    dbPreAnaliseMesCompetencia: TIntegerField;
    dbPreAnaliseAnoCompetencia: TIntegerField;
    dbProcessoPSAtendimentoPS: TIntegerField;
    dbProcessoPSCliente: TIntegerField;
    dbProcessoPSMesCompetencia: TIntegerField;
    dbProcessoPSAnoCompetencia: TIntegerField;
    dbItemPSAtendimentoPS: TIntegerField;
    dbItemPSTipo: TStringField;
    dbItemPSGlosa1: TSmallintField;
    dbItemPSGlosa2: TSmallintField;
    dbItemHCAtendimentoHC1: TIntegerField;
    dbItemHCTipo: TStringField;
    dbHomeCareTipo: TStringField;
    dbHomeCareAtendimentoHC1: TIntegerField;
    dbItemHCLegendaAtendimentoHC1: TIntegerField;
    dbItemHCLegendaTipo: TStringField;
    dbItemHCLegendaItem: TIntegerField;
    dbItemHCLegendaConclusao: TStringField;
    dbConclusaoConclusao: TStringField;
    dbConclusaoNome: TStringField;
    dbConclusaoClinica: TBooleanField;
    dbConclusaoDomiciliar: TBooleanField;
    dbItemHCLegendaConclusaoTexto: TStringField;
    dbItemHCDiagnosticoAtendimentoHC1: TIntegerField;
    dbItemHCDiagnosticoTipo: TStringField;
    dbVazioNomeConclusao: TStringField;
    dbVazioTipo: TStringField;
    cmdLimpaAnoHC: TBitBtn;
    cmdLimpaAnoHI: TBitBtn;
    dbHCPaciente: TMSTable;
    dbHCPacienteAtendimentoHC1: TIntegerField;
    dbHCPacienteTipo: TStringField;
    dbHCPacienteCliente: TIntegerField;
    dbHCPacientePaciente: TIntegerField;
    dbHIPaciente: TMSTable;
    dbHIPacienteCliente: TIntegerField;
    dbHIPacienteAtendimentoHI: TIntegerField;
    dbHIPacientePaciente: TIntegerField;
    dbPreAnaliseParcial: TIntegerField;
    dbHomeCareDataInternacao: TDateTimeField;
    dbHomeCareDataAlta: TDateTimeField;
    dbItemHCDataAuditoria: TDateTimeField;
    dbPreAnaliseDataFechamento: TDateTimeField;
    dbItemIDiagnosticoDataAuditoria: TDateTimeField;
    dbVazioDataInclusao: TDateTimeField;
    dbItemHCMedicamento: TMSTable;
    DataSource1: TDataSource;
    dbItemHCMedicamentoAtendimentoHC1: TIntegerField;
    dbItemHCMedicamentoTipo: TStringField;
    dbItemHCMedicamentoItem: TIntegerField;
    dbItemHCMedicamentoOrigem: TStringField;
    dbItemHCMedicamentoMedicamento: TStringField;
    dbItemHCMedicamentoVia: TStringField;
    dbItemHCMedicamentoHorario: TStringField;
    dbItemHCMedicamentoPeriodo: TStringField;
    dbPreAnaliseAtendimentoHI: TLargeintField;
    dbItemIDiagnosticoAtendimentoHI: TLargeintField;
    dbItemIGlosaAtendimentoHI: TLargeintField;
    qryGlosa: TMSQuery;
    dsGlosa: TDataSource;
    qryGlosaCliente: TIntegerField;
    qryGlosaAtendimentoHI: TLargeintField;
    qryGlosaTipo: TStringField;
    qryGlosaGlosaI: TStringField;
    qryGlosaValor: TCurrencyField;
    qryGlosaValorApresentado: TCurrencyField;
    qryGlosaAtendHIBase: TLargeintField;
    qryDiag: TMSQuery;
    dsDiag: TDataSource;
    qryDiagCliente: TIntegerField;
    qryDiagAtendimentoHI: TLargeintField;
    qryDiagDiagnostico: TIntegerField;
    qryDiagCodCid: TStringField;
    qryDiagAtendHIBase: TLargeintField;
    qryPaciente: TMSQuery;
    dsPaciente: TDataSource;
    qryPacientePaciente: TIntegerField;
    qryPacienteNome: TStringField;
    qryPacientePacienteHI: TIntegerField;
    qryPacientePacienteHC: TIntegerField;
    Panel24: TPanel;
    lblTotal12: TLabel;
    barItemPS: TProgressBar;
    DBGrid12: TDBGrid;
    Panel23: TPanel;
    BitBtn34: TBitBtn;
    cmdLimpaAnoPS: TBitBtn;
    Label11: TLabel;
    qryPS: TMSQuery;
    dsPS: TDataSource;
    qryPacienteUsuario: TStringField;
    qryPacienteDataInclusao: TDateTimeField;
    qryPSAtendimentoPS: TIntegerField;
    qryPSTipo: TStringField;
    qryPSGlosa1: TSmallintField;
    qryPSValorGlosadoM: TCurrencyField;
    qryPSValorGlosadoE: TCurrencyField;
    qryPSAtendPSBase: TIntegerField;
    qryPSGlosa2: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pagHospitalChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure pagMenuChange(Sender: TObject);
    procedure pagHomeCareChange(Sender: TObject);
    procedure pagEstatisticaChange(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure cmdLimpaAnoHIClick(Sender: TObject);
    procedure cmdLimpaAnoHCClick(Sender: TObject);
    procedure cmdLimpaAnoPSClick(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qryPacienteAfterRefresh(DataSet: TDataSet);
    procedure qryGlosaAfterRefresh(DataSet: TDataSet);
    procedure qryDiagAfterRefresh(DataSet: TDataSet);
  private
    procedure FechaArq;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrecao: TfrmCorrecao;

implementation

uses frmPrincipal;

{$R *.DFM}

procedure TfrmCorrecao.FechaARq;
begin
    dbVazio.Close;


    dbHomeCare.Close;
    dbItemHC.Close;
    dbItemHCDiagnostico.Close;
    dbItemHCLegenda.Close;

    dbPreAnalise.Close;
    dbItemIGlosa.Close;
    dbItemIDiagnostico.Close;
end;

procedure TfrmCorrecao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbVazio.Close;


    dbHomeCare.Close;
    dbItemHC.Close;
    dbItemHCDiagnostico.Close;
    dbItemHCLegenda.Close;

    dbPreAnalise.Close;
    dbItemIGlosa.Close;
    dbItemIDiagnostico.Close;

    dbItemPS.Close;

    dbHomeCare.Close;
    dbPaciente.Close;
    dbPreAnalise.Close;
    dbAuditor.Close;
end;

procedure TfrmCorrecao.FormShow(Sender: TObject);
begin
    dbPaciente.Open;
    dbAuditor.Open;
    dbDiagnostico.Open;
    dbConclusao.Open;
    dbGlosaI.Open;
    dbGlosaPS.Open;
    dbCliente.Open;
    dbItemPS.OPen;

    pagMenu.ActivePageIndex:=0;
    pagHomeCare.ActivePageIndex:=0;
    pagEstatistica.ActivePageIndex:=0;

    qryPaciente.Open;
    qryPaciente.Refresh;
    lblTotal.Caption:='Total localizado: '+IntToStr(qryPaciente.RecordCount);
    qryGlosa.Open;
    qryGlosa.Refresh;
    lblTotal10.Caption:='Total localizado: '+IntToStr(qryGlosa.RecordCount);
    qryDiag.Open;
    qryDiag.Refresh;
    lblTotal11.Caption:='Total localizado: '+IntToStr(qryDiag.RecordCount);
    qryPS.Open;
    qryPS.Refresh;
    lblTotal12.Caption:='Total localizado: '+IntToStr(qryPS.RecordCount);
end;




procedure TfrmCorrecao.pagHospitalChange(Sender: TObject);
begin
    FechaArq;
end;

procedure TfrmCorrecao.BitBtn3Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a localização dos Prontuários sem auditoria.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
     dbVazio.Close;
     dbVazio.SQL.Text:='Delete from manVazio';
     dbVazio.Execute;
     dbVazio.SQL.Text:='Select * from manVazio order by Atendimento';
     dbVazio.Open;

     dbHomeCare.Close;
     dbHomeCare.IndexFieldNames:='AtendimentoHC1;Tipo';
     dbHomeCare.MasterFields:='';
     dbHomeCare.Open;

     dbPaciente.Open;
     dbItemHC.MasterFields:='AtendimentoHC1;Tipo';
     dbItemHC.MasterSource:=dsHomeCare;
     dbItemHC.Open;

     barHomeCare.Min:=1;
     barHomeCare.Max:=1;
     barHomeCare.Position:=1;
     if dbHomeCare.RecordCount>0 then
         barHomeCare.Max:=dbHomeCare.RecordCount;

     dbHomeCare.First;
     while not dbHomeCare.eof do
     begin
        barHomeCare.Position:=barHomeCare.Position+1;
        if dbItemHC.RecordCount=0 then
        begin
            dbVazio.Insert;
            dbVazioAtendimento.Value:=dbHomeCareAtendimentoHC1.Value;
            dbVazioPaciente.Value:=dbHomeCarePaciente.Value;
            dbVazioDataInclusao.Value:=dbHomeCareDataInternacao.Value;
        end;
        dbHomeCare.Next;
     end;
     barHomeCare.Position:=1;
     dbVazio.First;
     lblTotal2.Caption:='Total localizado: '+IntToStr(dbVazio.RecordCount);
end;

procedure TfrmCorrecao.BitBtn5Click(Sender: TObject);
var iResultado,i:integer;
begin
     if qryPaciente.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if qryPaciente.RecordCount=0 then
     begin
        ShowMessage('Nenhum paciente localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva dos Pacientes. Isso pode levar vários minutos',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     barPaciente.Min:=1;
     barPaciente.Position:=1;
     barPaciente.Max:=qryPaciente.RecordCount;

     qryPaciente.First;
     while not qryPaciente.eof do
     begin
        barPaciente.Position:=barPaciente.Position+1;
        dbPaciente.Locate('Paciente',qryPacientePaciente.Value,[]);
        dbPaciente.Delete;
        qryPaciente.Next;
     end;
     barPaciente.Position:=1;
     ShowMessage('Pacientes excluidos com sucesso');
     qryPaciente.Refresh;
end;

procedure TfrmCorrecao.BitBtn7Click(Sender: TObject);
var iResultado:integer;
begin
     if dbVazio.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if dbVazio.RecordCount=0 then
     begin
        ShowMessage('Nenhum Prontuário localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva dos Prontuários.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     barHomeCare.Min:=1;
     barHomeCare.Position:=1;
     barHomeCare.Max:=dbVazio.RecordCount;

     dbVazio.First;
     while not dbVazio.eof do
     begin
        barHomeCare.Position:=barHomeCare.Position+1;
        dbHomeCare.Locate('AtendimentoHC1',dbVazioAtendimento.Value,[]);
        dbHomeCare.Delete;
        dbVazio.Next;
     end;
     barHomeCare.Position:=1;
     lblTotal2.Caption:='Total localizado: 0';
     ShowMessage('Prontuários excluidos com sucesso');
     dbVazio.Close;
end;

procedure TfrmCorrecao.BitBtn11Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a localização de Auditorias sem Prontuários.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
     dbVazio.Close;
     dbVazio.SQL.Text:='Delete from manVazio';
     dbVazio.Execute;
     dbVazio.SQL.Text:='Select * from manVazio order by Atendimento';
     dbVazio.Open;

     dbItemHC.MasterFields:='';
     dbItemHC.MasterSource.Free;
     dbItemHC.Open;

     dbHomeCare.Close;
     dbHomeCare.MasterSource.Free;
     dbHomeCare.IndexFieldNames:='AtendimentoHC1;Tipo';
     dbHomeCare.MasterFields:='AtendimentoHC1;Tipo';
     dbHomeCare.MasterSource:=dsItemHC;
     dbHomeCare.Open;

     barItemHC.Min:=1;
     barItemHC.Max:=1;
     barItemHC.Position:=1;
     if dbItemHC.RecordCount>0 then
         barItemHC.Max:=dbItemHC.RecordCount;

     dbItemHC.First;
     while not dbItemHC.eof do
     begin
        barHomeCare.Position:=barHomeCare.Position+1;
        if dbHomeCare.RecordCount=0 then
        begin
            dbVazio.Insert;
            dbVazioAtendimento.Value:=dbItemHCAtendimentoHC1.Value;
            dbVazioItem.Value:=dbItemHCItem.Value;
            dbVazioDataInclusao.Value:=dbItemHCDataAuditoria.Value;
            dbVazioPaciente.Value:=dbItemHCAuditor.value;
        end;
        dbItemHC.Next;
     end;
     barHomeCare.Position:=1;
     dbVazio.First;
     lblTotal5.Caption:='Total localizado: '+IntToStr(dbVazio.RecordCount);
end;

procedure TfrmCorrecao.BitBtn13Click(Sender: TObject);
var iResultado:integer;
begin
     if dbVazio.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if dbVazio.RecordCount=0 then
     begin
        ShowMessage('Nenhum Prontuário localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva dos Prontuários',
                                        'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     barItemHC.Min:=1;
     barItemHC.Position:=1;
     barItemHC.Max:=dbVazio.RecordCount;

     dbVazio.First;
     while not dbVazio.eof do
     begin
        barItemHC.Position:=barItemHC.Position+1;
        dbItemHC.Locate('AtendimentoHC1;Item',VarArrayof([dbVazioAtendimento.Value,dbVazioItem.Value]),[]);
        dbItemHC.Delete;
        dbVazio.Next;
     end;
     barItemHC.Position:=1;
     lblTotal5.Caption:='Total localizado: 0';
     ShowMessage('Prontuários excluidos com sucesso');
     dbVazio.Close;
end;

procedure TfrmCorrecao.pagMenuChange(Sender: TObject);
begin
    FechaArq;
end;

procedure TfrmCorrecao.pagHomeCareChange(Sender: TObject);
begin
    FechaArq;
end;

procedure TfrmCorrecao.pagEstatisticaChange(Sender: TObject);
begin
    FechaArq;
end;

procedure TfrmCorrecao.BitBtn20Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a localização de Diagnósticos sem Auditoria',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
     dbVazio.Close;
     dbVazio.SQL.Text:='Delete from manVazio';
     dbVazio.Execute;
     dbVazio.SQL.Text:='Select * from manVazio order by Atendimento';
     dbVazio.Open;

     dbItemHCDiagnostico.MasterFields:='';
     dbItemHCDiagnostico.MasterSource.Free;
     dbItemHCDiagnostico.Open;

     dbItemHC.Close;
     dbItemHC.MasterSource.Free;
     dbItemHC.IndexFieldNames:='AtendimentoHC1;Tipo;Item';
     dbItemHC.MasterFields:='AtendimentoHC1;Tipo;Item';
     dbItemHC.MasterSource:=dsItemHCDiagnostico;
     dbItemHC.Open;

     barItemHCD.Min:=1;
     barItemHCD.Max:=1;
     barItemHCD.Position:=1;
     if dbItemHCDiagnostico.RecordCount>0 then
         barItemHCD.Max:=dbItemHCDiagnostico.RecordCount;

     dbItemHCDiagnostico.First;
     while not dbItemHCDiagnostico.eof do
     begin
        barItemHCD.Position:=barItemHCD.Position+1;
        if dbItemHC.RecordCount=0 then
        begin
            dbVazio.Insert;
            dbVazioAtendimento.Value:=dbItemHCDiagnosticoAtendimentoHC1.Value;
            dbVazioItem.Value:=dbItemHCDiagnosticoItem.Value;
            dbVazioPaciente.Value:=dbItemHCDiagnosticoDiagnostico.value;
        end;
        dbItemHCDiagnostico.Next;
     end;
     barItemHCD.Position:=1;
     dbVazio.First;
     lblTotal8.Caption:='Total localizado: '+IntToStr(dbVazio.RecordCount);

end;

procedure TfrmCorrecao.BitBtn22Click(Sender: TObject);
var iResultado:integer;
begin
     if dbVazio.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if dbVazio.RecordCount=0 then
     begin
        ShowMessage('Nenhum Diagnóstico localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva dos Diagnósticos.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     barItemHCD.Min:=1;
     barItemHCD.Position:=1;
     barItemHCD.Max:=dbVazio.RecordCount;

     dbVazio.First;
     while not dbVazio.eof do
     begin
        barItemHCD.Position:=barItemHCD.Position+1;
        dbItemHCDiagnostico.Locate('AtendimentoHC1;Item;Diagnostico',VarArrayof([dbVazioAtendimento.Value,
                                    dbVazioItem.Value,
                                    dbVazioPaciente.value]),[]);
        dbItemHCDiagnostico.Delete;
        dbVazio.Next;
     end;
     barItemHCD.Position:=1;
     lblTotal8.Caption:='Total localizado: 0';
     ShowMessage('Diganósticos excluidos com sucesso');
     dbVazio.Close;
end;

procedure TfrmCorrecao.BitBtn23Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a localização de Legendas sem Auditoria',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
     dbVazio.Close;
     dbVazio.SQL.Text:='Delete from manVazio';
     dbVazio.Execute;
     dbVazio.SQL.Text:='Select * from manVazio order by Atendimento';
     dbVazio.Open;

     dbItemHCLegenda.MasterFields:='';
     dbItemHCLegenda.MasterSource.Free;
     dbItemHCLegenda.Open;

     dbItemHC.Close;
     dbItemHC.MasterSource.Free;
     dbItemHC.IndexFieldNames:='AtendimentoHC1';
     dbItemHC.MasterFields:='AtendimentoHC1;Tipo;Item';
     dbItemHC.MasterSource:=dsItemHCLegenda;
     dbItemHC.Open;

     barItemHCL.Min:=1;
     barItemHCL.Max:=1;
     barItemHCL.Position:=1;
     if dbItemHCLegenda.RecordCount>0 then
         barItemHCL.Max:=dbItemHCLegenda.RecordCount;

     dbItemHCLegenda.First;
     while not dbItemHCLegenda.eof do
     begin
        barItemHCL.Position:=barItemHCL.Position+1;
        if dbItemHC.RecordCount=0 then
        begin
            dbVazio.Insert;
            dbVazioAtendimento.Value:=dbItemHCLegendaAtendimentoHC1.Value;
            dbVazioItem.Value:=dbItemHCLegendaItem.Value;
            dbVAzioPaciente.value:=barItemHCL.Position;
            dbVazioNome.Value:=dbItemHCLegendaConclusao.value;
        end;
        dbItemHCLegenda.Next;
     end;
     barItemHCL.Position:=1;
     dbVazio.First;
     lblTotal9.Caption:='Total localizado: '+IntToStr(dbVazio.RecordCount);
end;

procedure TfrmCorrecao.BitBtn25Click(Sender: TObject);
var iResultado:integer;
begin
     if dbVazio.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if dbVazio.RecordCount=0 then
     begin
        ShowMessage('Nenhum Diagnóstico localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva dos Diagnósticos.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     baritemHCL.Min:=1;
     baritemHCL.Position:=1;
     baritemHCL.Max:=dbVazio.RecordCount;

     dbVazio.First;
     while not dbVazio.eof do
     begin
        baritemHCL.Position:=baritemHCL.Position+1;
        dbitemHCLegenda.Locate('AtendimentoHC1;Item;Conclusao',VarArrayof([dbVazioAtendimento.Value,
                                dbVazioItem.Value,
                                Trim(dbVazioNome.value)]),[]);
        dbitemHCLegenda.Delete;
        dbVazio.Next;
     end;
     baritemHCL.Position:=1;
     lblTotal9.Caption:='Total localizado: 0';
     ShowMessage('Legendas excluidas com sucesso');
     dbVazio.Close;
end;

procedure TfrmCorrecao.BitBtn28Click(Sender: TObject);
var iResultado,i:integer;
begin
     if qryGlosa.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if qryGlosa.RecordCount=0 then
     begin
        ShowMessage('Nenhum Prontuário localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva das Glosas. Isso pode levar vários minutos.',
                                        'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     dbItemIGlosa.Open;
     barItemIGlosa.Min:=1;
     barItemIGlosa.Position:=1;
     barItemIGlosa.Max:=qryGlosa.RecordCount;
     if qryGlosa.RecordCount>10000 then
     begin
        barItemIGlosa.Max:=10000;
        ShowMessage('Serão excluidos 10.000 registros por vez');
     end;
     
     qryGlosa.First;
     i:=0;
     while (not qryGlosa.eof) and (i<10000) do
     begin
        barItemIGlosa.Position:=barItemIGlosa.Position+1;
        dbItemIGlosa.Locate('Cliente;AtendimentoHI',VarArrayof([qryGlosaCliente.Value,qryGlosaAtendimentoHI.value]),[]);
        dbItemIGlosa.Delete;
        qryGlosa.Next;
        i:=i+1;
     end;
     barItemIGlosa.Position:=1;
     lblTotal10.Caption:='Total localizado: 0';
     ShowMessage('Glosas excluidas com sucesso');
     qryGlosa.Refresh;
end;

procedure TfrmCorrecao.BitBtn31Click(Sender: TObject);
var iResultado:integer;
begin
     if qryDiag.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if qryDiag.RecordCount=0 then
     begin
        ShowMessage('Nenhum Diagnóstico localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva dos Diagnósticos. Isso pode levar vários minutos',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     dbItemIDiagnostico.Open;
     barItemID.Min:=1;
     barItemID.Position:=1;
     barItemID.Max:=qryDiag.RecordCount;

     qryDiag.First;
     while not qryDiag.eof do
     begin
        barItemID.Position:=barItemID.Position+1;
        dbItemIDiagnostico.Locate('Cliente;AtendimentoHI',VarArrayof([qryDiagCliente.Value,
                                                                      qryDiagAtendimentoHI.Value]),[]);
        dbItemIDiagnostico.Delete;
        qryDiag.Next;
     end;
     barItemID.Position:=1;
     lblTotal11.Caption:='Total localizado: 0';
     ShowMessage('Diganósticos excluidos com sucesso');
     qryDiag.Close;

end;

procedure TfrmCorrecao.cmdLimpaAnoHIClick(Sender: TObject);
begin


    dbPreAnalise.OPen;
    dbItemIDiagnostico.Open;
    dbItemIGlosa.Open;

     barItemIGlosa.Min:=1;
     barItemIGlosa.Position:=1;
     barItemIGlosa.Max:=dbPreAnalise.RecordCount;

     dbPreAnalise.First;
     while not dbPreAnalise.eof do
     begin
        barItemIGlosa.Position:=barItemIGlosa.Position+1;
        if ((dbPreAnaliseParcial.value=0) and
           (dbPreAnaliseMesCompetencia.value<=8) and
           (dbPreAnaliseAnoCompetencia.value<=2010)) or

           ((dbPreAnaliseAnoCompetencia.value<=2009)) or

           ((dbPreAnaliseCliente.value=5) or
            (dbPreAnaliseCliente.value=25) or
            (dbPreAnaliseCliente.value=26) or
            (dbPreAnaliseCliente.value=27) or
            (dbPreAnaliseCliente.value=9) or
            (dbPreAnaliseCliente.value=15) or
            (dbPreAnaliseCliente.value=7))

             then
        begin
            while not dbItemIDiagnostico.eof do
                dbItemIDiagnostico.Delete;
            while not dbItemIGlosa.eof do
                dbItemIGlosa.Delete;
            dbPreAnalise.Delete;
        end
        else dbPreAnalise.Next;
     end;
     barItemIGlosa.Position:=1;
end;

procedure TfrmCorrecao.cmdLimpaAnoHCClick(Sender: TObject);
begin
   dbHomeCare.OPen;
   dbItemHC.Open;
   dbItemHCDiagnostico.Open;
   dbItemHCLegenda.Open;


     barHomeCare.Min:=1;
     barHomeCare.Position:=1;
     barHomeCare.Max:=dbHomeCare.RecordCount;

     dbHomeCare.First;
     while not dbHomeCare.eof do
     begin
        barHomeCare.Position:=barHomeCare.Position+1;
        if (dbHomeCareDataAlta.value<=StrToDAte('30/09/2008')) and
           (not dbHomeCareDataAlta.isnull)  then
        begin
            while not dbItemHC.eof do
                dbItemHC.Delete;
            while not dbItemHCDiagnostico.eof do
                dbItemHCDiagnostico.Delete;
            while not dbItemHCLegenda.eof do
                dbItemHCLegenda.Delete;
            dbHomeCare.Delete;
        end
        else dbHomeCare.Next;
     end;
     barHomeCare.Position:=1;
end;

procedure TfrmCorrecao.cmdLimpaAnoPSClick(Sender: TObject);
begin
    dbProcessoPS.OPen;
    dbItemPS.Open;

     barItemPS.Min:=1;
     barItemPS.Position:=1;
     barItemPS.Max:=dbProcessoPS.RecordCount;

     dbProcessoPS.First;
     while not dbProcessoPS.eof do
     begin
        barItemPS.Position:=barItemPS.Position+1;
        if ((dbProcessoPSMesCompetencia.value<=10) and
           (dbProcessoPSAnoCompetencia.value<=2007)) or
           ((dbPreAnaliseCliente.value=3) or
           (dbPreAnaliseCliente.value=9) or
           (dbPreAnaliseCliente.value=12) or
           (dbPreAnaliseCliente.value=16) or
           (dbPreAnaliseCliente.value=19) or
           (dbPreAnaliseCliente.value=21) or
           (dbPreAnaliseCliente.value=22) or
           (dbPreAnaliseCliente.value=24))  then
        begin
            while not dbItemPS.eof do
                dbItemPS.Delete;
            dbProcessoPS.Delete;
        end
        else dbProcessoPS.Next;
     end;
     barItemPS.Position:=1;
end;

procedure TfrmCorrecao.BitBtn34Click(Sender: TObject);
var iResultado:integer;
begin
     if qryPS.Active=false then
     begin
        ShowMessage('Processe a localização dos vazios antes de excluir');
        abort;
     end;
     if qryPS.RecordCount=0 then
     begin
        ShowMessage('Nenhum Prontuário localizado para exclusão');
        abort;
     end;

     iResultado:=Application.MessageBox('Confirme a Exclusão definitiva das Glosas',
                                        'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     barItemIGlosa.Min:=1;
     barItemIGlosa.Position:=1;
     barItemIGlosa.Max:=qryPS.RecordCount;

     qryPS.First;
     while not qryPS.eof do
     begin
        barItemIGlosa.Position:=barItemIGlosa.Position+1;
        dbItemPS.Locate('AtendimentoPS',qryPSAtendimentoPS.Value,[]);
        dbItemPS.Delete;
        qryPS.Next;
     end;
     barItemIGlosa.Position:=1;
     lblTotal10.Caption:='Total localizado: 0';
     ShowMessage('Glosas excluidas com sucesso');
     qryPS.Close;
end;

procedure TfrmCorrecao.Button1Click(Sender: TObject);
var i:integer;
begin
end;

procedure TfrmCorrecao.qryPacienteAfterRefresh(DataSet: TDataSet);
begin
     lblTotal.Caption:='Total localizado: '+IntToStr(qryPaciente.RecordCount);
end;

procedure TfrmCorrecao.qryGlosaAfterRefresh(DataSet: TDataSet);
begin
     lblTotal10.Caption:='Total localizado: '+IntToStr(qryGlosa.RecordCount);
end;

procedure TfrmCorrecao.qryDiagAfterRefresh(DataSet: TDataSet);
begin
   lblTotal11.Caption:='Total localizado: '+IntToStr(qryDiag.RecordCount);
end;

end.
