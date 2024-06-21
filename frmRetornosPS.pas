unit frmRetornosPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, StrUtils,
  Buttons, ToolWin, DateUtils, DBCtrls, RpDefine, RpCon, RpConDS, RpConBDE;

type
  TfrmRetornoPS = class(TForm)
    dsProcesso: TDataSource;
    dsProcessoGlosa: TDataSource;
    dbCliente: TMSTable;
    dbEnfermeiro: TMSTable;
    OpenDialog: TOpenDialog;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorUsuario: TStringField;
    pagRetorno: TPageControl;
    tabLeitura: TTabSheet;
    tabRetorno: TTabSheet;
    dsRetorno: TDataSource;
    CoolBar2: TCoolBar;
    lblTexto: TEdit;
    lblData: TDateTimePicker;
    tabOrdemRetorno: TTabControl;
    grdRetorno: TDBGrid;
    ProgressBar1: TProgressBar;
    Panel5: TPanel;
    Label2: TLabel;
    DBMemo4: TDBMemo;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
    Panel8: TPanel;
    tabFiltro: TTabControl;
    grdProntuario: TDBGrid;
    Label1: TLabel;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteEndereco: TStringField;
    dbClienteBairro: TStringField;
    dbClienteCidade: TStringField;
    dbClienteUF: TStringField;
    dbClienteCep: TStringField;
    dbClienteFone1: TStringField;
    dbClienteFone2: TStringField;
    dbClienteFax: TStringField;
    dbClienteCGC: TStringField;
    dbClienteContato: TStringField;
    dbClienteEmail: TStringField;
    dbClienteHomePage: TStringField;
    Panel4: TPanel;
    grdAuditoria: TDBGrid;
    Label5: TLabel;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbGlosa: TMSTable;
    dbGlosaGlosaI: TStringField;
    dbGlosaNome: TStringField;
    dbGlosaResponsavel: TStringField;
    dbHospitalCNPJ: TStringField;
    CoolBar1: TCoolBar;
    cmpBusca: TEdit;
    DateTimePicker1: TDateTimePicker;
    dbEnfermeiroUsuario: TStringField;
    ProgressBar2: TProgressBar;
    DBText2: TDBText;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDPrincipal: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dsCliente: TDataSource;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    listPlan: TListBox;
    Panel10: TPanel;
    cmdLerBB: TBitBtn;
    cmdValidar: TBitBtn;
    cmdRel: TBitBtn;
    cmdAtualizar: TBitBtn;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    Panel12: TPanel;
    BitBtn5: TBitBtn;
    dbEnfermeiroDataInclusao: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    Panel13: TPanel;
    cmdGravaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    BitBtn3: TBitBtn;
    Panel7: TPanel;
    cmdGravaA: TBitBtn;
    cmdExcuiA: TBitBtn;
    dbAtendH: TMSQuery;
    dbItem: TMSQuery;
    BitBtn4: TBitBtn;
    dbClienteClienteID: TStringField;
    qryProcessoTrab: TMSQuery;
    dbProcesso: TMSQuery;
    dbProcessoGlosa: TMSQuery;
    dbRetornoRetorno: TIntegerField;
    dbRetornoCliente: TIntegerField;
    dbRetornoDataProcessamento: TDateTimeField;
    dbRetornoHoraProcessamento: TDateTimeField;
    dbRetornoNomeArquivo: TStringField;
    dbRetornoProcessado: TBooleanField;
    dbRetornoUsuario: TStringField;
    dbRetornoRegistros: TIntegerField;
    dbRetornoRegistrosok: TIntegerField;
    dbRetornoRegistrosInclusao: TIntegerField;
    dbRetornoRegistrosAlteracao: TIntegerField;
    dbRetornoCapeantes: TIntegerField;
    dbRetornoProcessadoTexto: TStringField;
    dbRetornoRepetidos: TIntegerField;
    dbRetornoClienteNome: TStringField;
    dbRetornoHoraTexto: TStringField;
    dbRetornoClienteID: TStringField;
    dbRetorno: TMSQuery;
    dbProd: TMSQuery;
    dbProdAnoCompetencia: TSmallintField;
    dbProdMesCompetencia: TSmallintField;
    dbProdProdutividade: TIntegerField;
    dbProdDataInclusao: TDateTimeField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    dbProdCli: TMSTable;
    dbProdCliProdutividade: TIntegerField;
    dbProdCliCliente: TIntegerField;
    dbProdCliDataInclusao: TDateTimeField;
    dbProdCliUsuario: TStringField;
    dsProd: TDataSource;
    dbHospitalPre: TMSTable;
    dbHospitalPreHospital: TIntegerField;
    dbHospitalPreCliente: TIntegerField;
    dbHospitalPreAuditor: TIntegerField;
    dbHospitalPreEnfermeiro: TIntegerField;
    dbHospitalPreClienteNome: TStringField;
    dbHospitalPreAuditorNome: TStringField;
    dbHospitalPreEnfermeiroNome: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    dbExcel1: TMSTable;
    dbExcel1DSDesigner1: TStringField;
    dbExcel1DSDesigner2: TStringField;
    dbExcel1DSDesigner3: TStringField;
    dbExcel1DSDesigner4: TStringField;
    dbExcel1DSDesigner5: TStringField;
    dbExcel1DSDesigner6: TStringField;
    dbExcel1DSDesigner7: TStringField;
    dbExcel1DSDesigner8: TStringField;
    dbExcel1DSDesigner9: TStringField;
    dbExcel1DSDesigner10: TStringField;
    dbExcel1DSDesigner11: TStringField;
    dbExcel1DSDesigner12: TStringField;
    dbExcel1DSDesigner13: TStringField;
    dbExcel1DSDesigner14: TStringField;
    dbExcel1DSDesigner15: TStringField;
    dbExcel1DSDesigner16: TStringField;
    dbExcel1DSDesigner17: TStringField;
    dbExcel1DSDesigner18: TStringField;
    dbExcel1DSDesigner19: TStringField;
    dbExcel1DSDesigner20: TStringField;
    dbExcel1DSDesigner21: TStringField;
    dbExcel1DSDesigner22: TStringField;
    dbExcel1DSDesigner23: TStringField;
    dbExcel1DSDesigner24: TStringField;
    dbExcel1DSDesigner25: TStringField;
    dbExcel1DSDesigner26: TStringField;
    dbExcel1DSDesigner27: TStringField;
    dbExcel1DSDesigner28: TStringField;
    dbExcel1DSDesigner29: TStringField;
    dbExcel1DSDesigner30: TStringField;
    dbExcel1DSDesigner31: TStringField;
    dbExcel1DSDesigner32: TStringField;
    dbExcel1DSDesigner33: TStringField;
    dbExcel1DSDesigner34: TStringField;
    dbExcel1DSDesigner35: TStringField;
    dbExcel1DSDesigner36: TStringField;
    dbExcel1DSDesigner37: TStringField;
    dbExcel1DSDesigner38: TStringField;
    dbExcel1DSDesigner39: TStringField;
    dbExcel1DSDesigner40: TStringField;
    dbExcel1DSDesigner41: TStringField;
    dbExcel1DSDesigner42: TStringField;
    dbExcel1DSDesigner43: TStringField;
    dbExcel1DSDesigner44: TStringField;
    dbExcel1DSDesigner45: TStringField;
    dbExcel1DSDesigner46: TStringField;
    dbExcel1DSDesigner47: TStringField;
    dbExcel1DSDesigner48: TStringField;
    dbExcel1DSDesigner49: TStringField;
    dbExcel1DSDesigner50: TStringField;
    dbExcel1DSDesigner51: TStringField;
    dbExcel1DSDesigner52: TStringField;
    dbExcel1DSDesigner53: TStringField;
    dbExcel1DSDesigner54: TStringField;
    dbExcel1DSDesigner55: TStringField;
    dbExcel1DSDesigner56: TStringField;
    dbExcel1DSDesigner57: TStringField;
    dbExcel1DSDesigner58: TStringField;
    dbExcel1DSDesigner59: TStringField;
    dbExcel1DSDesigner60: TStringField;
    dbExcel1DSDesigner61: TStringField;
    dbExcel1DSDesigner62: TStringField;
    dbExcel1DSDesigner63: TStringField;
    dbExcel1DSDesigner64: TStringField;
    dbExcel1DSDesigner65: TStringField;
    dbExcel1DSDesigner66: TStringField;
    dbExcel1DSDesigner67: TStringField;
    dbExcel1DSDesigner68: TStringField;
    dbExcel1DSDesigner69: TStringField;
    dbExcel1DSDesigner70: TStringField;
    dbExcel1DSDesigner71: TStringField;
    dbExcel1DSDesigner72: TStringField;
    dbExcel1DSDesigner73: TStringField;
    dbExcel1DSDesigner74: TStringField;
    dbExcel1DSDesigner75: TStringField;
    dbExcel1DSDesigner76: TStringField;
    dbExcel1DSDesigner77: TStringField;
    dbExcel1DSDesigner78: TStringField;
    dbExcel1DSDesigner79: TStringField;
    dbExcel1DSDesigner80: TStringField;
    dbExcel1DSDesigner81: TStringField;
    dbExcel1DSDesigner82: TStringField;
    dbExcel1DSDesigner83: TStringField;
    dbExcel1DSDesigner84: TStringField;
    dbExcel1DSDesigner85: TStringField;
    dbExcel1DSDesigner86: TStringField;
    dbExcel1DSDesigner87: TStringField;
    dbExcel1DSDesigner88: TStringField;
    dbExcel1DSDesigner89: TStringField;
    dbExcel1DSDesigner90: TStringField;
    dbExcel1DSDesigner91: TStringField;
    dbExcel1DSDesigner92: TStringField;
    dbExcel1DSDesigner93: TStringField;
    dbExcel1DSDesigner94: TStringField;
    dbExcel1DSDesigner95: TStringField;
    dbExcel1DSDesigner96: TStringField;
    dbExcel1DSDesigner97: TStringField;
    dbExcel1DSDesigner98: TStringField;
    dbExcel1DSDesigner99: TStringField;
    dbExcel1DSDesigner100: TStringField;
    dbExcel1DSDesigner101: TStringField;
    dbExcel1DSDesigner102: TStringField;
    dbExcel1DSDesigner103: TStringField;
    dbExcel1DSDesigner104: TStringField;
    dbExcel1DSDesigner105: TStringField;
    dbExcel1DSDesigner106: TStringField;
    dbExcel1DSDesigner107: TStringField;
    dbExcel1DSDesigner108: TStringField;
    dbExcel1DSDesigner109: TStringField;
    dbExcel1DSDesigner110: TStringField;
    dbExcel1DSDesigner111: TStringField;
    dbExcel1DSDesigner112: TStringField;
    dbExcel1DSDesigner113: TStringField;
    dbExcel1DSDesigner114: TStringField;
    dbExcel1DSDesigner115: TStringField;
    dbExcel1DSDesigner116: TStringField;
    dbExcel1DSDesigner117: TStringField;
    dbExcel1DSDesigner118: TStringField;
    dbExcel1DSDesigner119: TStringField;
    dbExcel1DSDesigner120: TStringField;
    dbExcel1DSDesigner121: TStringField;
    dbExcel1DSDesigner122: TStringField;
    dbExcel1DSDesigner123: TStringField;
    dbExcel1DSDesigner124: TStringField;
    dbExcel1DSDesigner125: TStringField;
    dbExcel1DSDesigner126: TStringField;
    dbExcel1DSDesigner127: TStringField;
    dbExcel1DSDesigner128: TStringField;
    dbExcel1DSDesigner129: TStringField;
    dbExcel1DSDesigner130: TStringField;
    dbExcel1DSDesigner131: TStringField;
    dbExcel1DSDesigner132: TStringField;
    dbExcel1DSDesigner133: TStringField;
    dbExcel1DSDesigner134: TStringField;
    dbExcel1DSDesigner135: TStringField;
    dbExcel1DSDesigner136: TStringField;
    dbExcel1DSDesigner137: TStringField;
    dbExcel1DSDesigner138: TStringField;
    dbExcel1DSDesigner139: TStringField;
    dbExcel1DSDesigner140: TStringField;
    dbExcel1DSDesigner141: TStringField;
    dbExcel1DSDesigner142: TStringField;
    dbExcel1DSDesigner143: TStringField;
    dbProcessoRetorno: TIntegerField;
    dbProcessoAtendimentoPS: TIntegerField;
    dbProcessoSequencial: TIntegerField;
    dbProcessoTipo: TStringField;
    dbProcessoCliente: TIntegerField;
    dbProcessoHospital: TIntegerField;
    dbProcessoMedico: TIntegerField;
    dbProcessoEnfermeiro: TIntegerField;
    dbProcessoDataFechamento: TDateTimeField;
    dbProcessoMesCompetencia: TSmallintField;
    dbProcessoAnoCompetencia: TSmallintField;
    dbProcessoQtdAtendimento: TSmallintField;
    dbProcessoValor: TCurrencyField;
    dbProcessoValorGlosado: TCurrencyField;
    dbProcessoValorNaoAcordado: TCurrencyField;
    dbProcessoUsuario: TStringField;
    dbProcessoDataInclusao: TDateTimeField;
    dbProcessoPosAnalise: TBooleanField;
    dbProcessoDataAlteracao: TDateTimeField;
    dbProcessoUsuarioI: TStringField;
    dbProcessoGlosaRetorno: TIntegerField;
    dbProcessoGlosaAtendimentoPS: TIntegerField;
    dbProcessoGlosaTipo: TStringField;
    dbProcessoGlosaGlosa1: TSmallintField;
    dbProcessoGlosaGlosa2: TSmallintField;
    dbProcessoGlosaValorGlosadoM: TCurrencyField;
    dbProcessoGlosaValorGlosadoE: TCurrencyField;
    dbProcessoGlosaUsuario: TStringField;
    dbProcessoGlosaObservacao: TStringField;
    dbProcessoGlosaDataInclusao: TDateTimeField;
    dbProcessoGlosaUsuarioI: TStringField;
    dbProcessoGlosaDataAlteracao: TDateTimeField;
    dbAtendHAtendimentoPS: TIntegerField;
    dbAtendHSequencial: TIntegerField;
    dbAtendHTipo: TStringField;
    dbAtendHCliente: TIntegerField;
    dbAtendHHospital: TIntegerField;
    dbAtendHMedico: TIntegerField;
    dbAtendHEnfermeiro: TIntegerField;
    dbAtendHDataFechamento: TDateTimeField;
    dbAtendHMesCompetencia: TSmallintField;
    dbAtendHAnoCompetencia: TSmallintField;
    dbAtendHQtdAtendimento: TSmallintField;
    dbAtendHValor: TCurrencyField;
    dbAtendHValorGlosado: TCurrencyField;
    dbAtendHValorNaoAcordado: TCurrencyField;
    dbAtendHUsuario: TStringField;
    dbAtendHObservacao: TMemoField;
    dbAtendHDataInclusao: TDateTimeField;
    dbAtendHPosAnalise: TBooleanField;
    dbAtendHDataAlteracao: TDateTimeField;
    dbAtendHUsuarioI: TStringField;
    dbAtendHRetorno: TIntegerField;
    dbItemAtendimentoPS: TIntegerField;
    dbItemTipo: TStringField;
    dbItemGlosa1: TSmallintField;
    dbItemGlosa2: TSmallintField;
    dbItemValorGlosadoM: TCurrencyField;
    dbItemValorGlosadoE: TCurrencyField;
    dbItemUsuario: TStringField;
    dbItemObservacao: TStringField;
    dbItemDataInclusao: TDateTimeField;
    dbItemUsuarioI: TStringField;
    dbItemDataAlteracao: TDateTimeField;
    dbProcessoProcessa: TStringField;
    dbProcessoProcessaTexto: TStringField;
    dbProcessoClienteCNPJ: TStringField;
    dbProcessoClienteNome: TStringField;
    dbProcessoHospitalCNPJ: TStringField;
    dbProcessoHospitalNome: TStringField;
    dbProcessoMedicoCRM: TIntegerField;
    dbProcessoEnfermeiroCoren: TIntegerField;
    dbProcessoMedicoNome: TStringField;
    dbProcessoEnfermeiroNome: TStringField;
    Label4: TLabel;
    DBRichEdit1: TDBRichEdit;
    dbRetornoModulo: TSmallintField;
    dbProcessoHospitalBusca: TStringField;
    dbProcessoClienteBusca: TStringField;
    dbProcessoMedicoBusca: TStringField;
    dbProcessoEnfermeiroBusca: TStringField;
    dbAtendHDataRetorno: TDateTimeField;
    dbProcessoObservacao: TMemoField;
    dbProcessoNotas: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdProntuarioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn5Click(Sender: TObject);
    procedure dbProcessoCalcFields(DataSet: TDataSet);
    procedure dbProcessoGlosaAfterInsert(DataSet: TDataSet);
    procedure dbProcessoAfterInsert(DataSet: TDataSet);
    procedure grdAuditoriaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cmdAtualizarClick(Sender: TObject);
    procedure tabOrdemRetornoChange(Sender: TObject);
    procedure lblTextoChange(Sender: TObject);
    procedure lblDataChange(Sender: TObject);
    procedure dbRetornoCalcFields(DataSet: TDataSet);
    procedure cmdValidarClick(Sender: TObject);
    procedure dbPacienteBeforeInsert(DataSet: TDataSet);
    procedure dbProcessoBeforePost(DataSet: TDataSet);
    procedure dbProcessoGlosaBeforePost(DataSet: TDataSet);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcuiAClick(Sender: TObject);
    procedure dsProcessoStateChange(Sender: TObject);
    procedure dsProcessoGlosaStateChange(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdRetornoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbProcessoAfterPost(DataSet: TDataSet);
    procedure dbProcessoGlosaAfterPost(DataSet: TDataSet);
    procedure dbProcessoDiagAfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbProcessoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tabFiltroChange(Sender: TObject);
    procedure cmpBuscaChange(Sender: TObject);
    procedure dbAuditorBeforeInsert(DataSet: TDataSet);
    procedure cmdLerBBClick(Sender: TObject);
    procedure dbEnfermeiroBeforeInsert(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbRetornoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetornoPS: TfrmRetornoPS;
  iUltimoPaciente:integer;
  narq:string;
implementation

uses frmPrincipal, dmRelatorios, frmRetornoHICompt;

{$R *.dfm}

Function LimpaMilhar(aa:String):string;
var p:Integer;
begin
   while pos('.',aa)>0 do
      Delete(aa,pos('.',aa),1);
    result:=(aa);
end;

Function TrocaMilhar(aa:String):string;
var p:Integer;
begin
    p:=pos('.',aa);
    if p>0 then
    begin
        Delete(aa,p,1);
        Insert(',',aa,p);
    end;
    result:=(aa);
end;

Function LimpaReal(aa:String):string;
var p:Integer;
begin
    p:=pos('.',aa);
    if p>0 then Delete(aa,p,1);
    p:=pos('R$',aa);
    if p>0 then Delete(aa,p,2);
    result:=(aa);
end;

procedure TfrmRetornoPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbCodigo.Close;
    dbEnfermeiro.Close;
    dbCliente.Close;
    dbClienteID.Close;
    dbHospital.Close;
    dbHospitalPre.Close;
    dbAuditor.Close;
    dbGlosa.Close;
    dbProcesso.Close;
    dbProcessoGlosa.Close;
    dbRetorno.Close;
    dbAtendH.Close;
    dbItem.Close;

    dbAtendH.Close;
    dbItem.Close;
    dbProd.Close;
    dbProdCli.Close;
end;

procedure TfrmRetornoPS.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
    dbCodigo.Open;
    dbEnfermeiro.Open;
    dbCliente.Open;
    dbClienteID.Open;
    dbHospital.OPen;
    dbHospitalPre.Open;
    dbAuditor.Open;
    dbGlosa.Open;
    dbRetorno.Open;
    dbRetorno.IndexFieldNames:='Retorno desc';
    dbRetorno.First;
    dbProcesso.Open;
    dbProcessoGlosa.Open;

    dbAtendH.Open;
    dbItem.Open;
    dbProd.Open;
    dbProdCli.Open;
   finally
     lblData.Date:=date;
     tabFiltro.TabIndex:=0;
     pagRetorno.ActivePageIndex:=0;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmRetornoPS.grdProntuarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbProcessoProcessa.value='S' then
        grdProntuario.Canvas.Font.Color:=clGreen;
     if dbProcessoProcessa.value='N' then
        grdProntuario.Canvas.Font.Color:=clRed;

     grdProntuario.Columns[3].Color:=$00D9D9FF;
     grdProntuario.Columns[7].Color:=$00D9D9FF;
     grdProntuario.Columns[11].Color:=$00D9D9FF;
     grdProntuario.Columns[15].Color:=$00D9D9FF;
     grdProntuario.Columns[20].Color:=$00D9D9FF;
     grdProntuario.Columns[21].Color:=$00D9D9FF;

     grdProntuario.DefaultDrawDataCell(Rect,grdProntuario.Columns[DataCol].field,State);
end;

procedure TfrmRetornoPS.BitBtn5Click(Sender: TObject);
var iResultado,iretorno:integer;
begin
     if dbRetornoProcessado.value=true then
     begin
        ShowMessage('Retorno ja baixado. Impossivel excluir');
        abort;
     end;
     iResultado:=Application.MessageBox('Confirme a exclusão do retorno e seus lançamentos',
     'Aviso', mb_yesno+ mb_iconExclamation);

     iRetorno:=dbRetornoRetorno.value;

     ProgressBar2.Position:=0;
     ProgressBar2.Min:=0;
     ProgressBar2.Max:=3;

     if(iResultado=id_no) then abort;

     qryProcessoTrab.SQL.Text:='Delete from RetornoPSItem where Retorno=:iRet';
     qryProcessoTrab.ParamByName('iRet').Value:=iRetorno;
     qryProcessoTrab.Execute;
     dbProcessoGlosa.Refresh;
     ProgressBar2.Position:=ProgressBar2.Position+1;

     qryProcessoTrab.SQL.Text:='Delete from RetornoPS where Retorno=:iRet';
     qryProcessoTrab.ParamByName('iRet').Value:=iRetorno;
     qryProcessoTrab.Execute;
     dbProcesso.Refresh;
     ProgressBar2.Position:=ProgressBar2.Position+1;

     dbRetorno.Delete;
     qryProcessoTrab.SQL.Text:='Select * from RetornoPS where modulo=1';
     ProgressBar2.Position:=0;
end;

procedure TfrmRetornoPS.dbProcessoCalcFields(DataSet: TDataSet);
begin
    if dbProcessoProcessa.value='S' then
        dbProcessoProcessaTExto.value:='OK';
    if dbProcessoProcessa.value='N' then
        dbProcessoProcessaTExto.value:='Não';
    if dbProcessoProcessa.value='A' then
        dbProcessoProcessaTExto.value:='NA';
end;

procedure TfrmRetornoPS.dbProcessoGlosaAfterInsert(DataSet: TDataSet);
begin
//    dbProcessoGlosaDataAuditoria.Value:=date;
end;

procedure TfrmRetornoPS.dbProcessoAfterInsert(DataSet: TDataSet);
begin
    dbProcessoProcessa.value:='N';
    dbProcessoPosAnalise.value:=false;
end;

procedure TfrmRetornoPS.grdAuditoriaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     grdAuditoria.Columns[3].Color:=$00D9D9FF;
     grdAuditoria.DefaultDrawDataCell(Rect,grdAuditoria.Columns[DataCol].field,State);
end;

procedure TfrmRetornoPS.cmdAtualizarClick(Sender: TObject);
var iRetorno,iResultado,iUlt:integer;
var campos,i,iMes,iAno,iProdutividade:integer;
var iDataUlt:TDate;
begin
    tabFiltro.TabIndex:=0;
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    iRetorno:=dbRetornoRetorno.value;
    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem atualizados');
        abort;
    end;
    ProgressBar1.Max:=dbProcesso.RecordCount;
    ProgressBar1.Position:=1;
    ShowMessage('O sistema irá verificar a validação dos registros. Tecle [ENTER]');
    dbProcesso.First;
    while (not dbProcesso.eof)  do
    begin
        if dbProcessoProcessa.value='A' then
        begin
            ShowMessage('Existem registros não validados');
            abort;
        end;
        dbProcesso.Next;
        ProgressBar1.Position:=ProgressBar1.Position+1;
    end;
    if dbRetornoProcessado.value=true then
    begin
        ShowMessage('Retorno ja processado');
        iResultado:=Application.MessageBox('Confirme o re-processamento do retorno',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    end
    else
        iResultado:=Application.MessageBox('Confirme o processamento do retorno',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;
    ProgressBar1.Position:=1;

    dbProcesso.First;
    while not dbProcesso.eof do
    begin
        ProgressBar1.Position:=ProgressBar1.Position+1;
        if dbProcessoProcessa.value='S' then
        begin
            dbAtendH.sql.Clear;
            dbAtendH.sql.text:='Select * from AtendHPS '+
                               'where AtendimentoPS=:iAtend ';
            dbAtendH.ParamByName('iAtend').Value:=dbProcessoAtendimentoPS.Value;
            dbAtendH.Execute;

            if dbAtendH.RecordCount>0 then
            begin
                iMes:=dbAtendHMesCompetencia.value;
                iAno:=dbAtendHAnoCompetencia.value;
                dbAtendH.Edit;
            end
            else
            begin
                iMes:=0;
                iAno:=0;
                dbAtendH.Insert;
            end;
            for i:=0 to dbAtendH.FieldCount-3 do
                if (dbAtendH.Fields[i].FieldName<>'Sequencial') then
                    dbAtendH.fields[i].assign(dbProcesso.fieldbyname(dbAtendH.fields[i].fieldname));

            dbAtendHDataInclusao.value:=date;
            dbAtendHDataRetorno.value:=date;
            dbAtendHUsuarioI.value:='RETORNO' ;
            dbAtendHRetorno.value:=dbProcessoRetorno.value;

            if iProdutividade<>0 then //mantem a Competencia original
            begin
                dbAtendHMesCompetencia.value:=iMes;
                dbAtendHAnoCompetencia.value:=iAno;
            end;

            dbAtendH.Post;
//***********
            dbProcessoGlosa.Refresh;
            dbProcessoGlosa.First;
            while not dbProcessoGlosa.eof do
            begin
                dbItem.sql.Clear;
                dbItem.sql.text:='Select * from AtendHPSItem '+
                                 'where AtendimentoPS=:iAtend ';
                dbItem.ParamByName('iAtend').Value:=dbProcessoGlosaAtendimentoPS.Value;
                dbItem.Execute;

                if dbItem.RecordCount>0 then
                    dbItem.Edit
                else
                    dbItem.Insert;
                for i:=0 to dbItem.FieldCount-1 do
                    dbItem.fields[i].assign(dbProcessoGlosa.fieldbyname(dbItem.fields[i].fieldname));
                dbItem.Post;
                dbProcessoGlosa.Next;
            end;
        end;
        dbProcesso.Next;
    end;
    dbRetorno.Locate('Retorno',iRetorno,[]);
    dbRetorno.Edit;
    dbRetornoDataProcessamento.value:=date;
    dbRetornoHoraProcessamento.value:=time;
    dbRetornoUsuario.value:=iUsuario;
    dbRetornoProcessado.value:=true;
    dbRetorno.Post;
    ShowMessage('Atualização dos dados processada com sucesso');
end;

procedure TfrmRetornoPS.tabOrdemRetornoChange(Sender: TObject);
begin
    case tabOrdemRetorno.TabIndex of
    0:begin
      lblData.Visible:=false;
      lblTexto.Visible:=true;
      dbRetorno.IndexFieldNames:='Retorno desc';
      end;
    1:begin
      lblTexto.Visible:=false;
      lblData.Visible:=true;
      dbRetorno.IndexFieldNames:='DataProcessamento desc';
      end;
    2:begin
      lblData.Visible:=false;
      lblTexto.Visible:=true;
      dbRetorno.IndexFieldNames:='NomeArquivo';
      end;
    end;
end;

procedure TfrmRetornoPS.lblTextoChange(Sender: TObject);
begin
    case tabOrdemRetorno.TabIndex of
    0:dbRetorno.Locate('Retorno',Trim(lblTexto.Text),[loCaseInsensitive,loPartialKey]);
    2:dbRetorno.Locate('NomeArquivo',Trim(lblTexto.Text),[loCaseInsensitive,loPartialKey]);
    end;
end;

procedure TfrmRetornoPS.lblDataChange(Sender: TObject);
begin
dbRetorno.Locate('DataProcessamento',lblData.Date,[]);
end;

procedure TfrmRetornoPS.dbRetornoCalcFields(DataSet: TDataSet);
begin
    if dbRetornoProcessado.value=true then
        dbRetornoProcessadoTexto.value:='Sim'
    else
        dbRetornoProcessadoTexto.value:='Não';
    dbRetornoRepetidos.value:=dbRetornoRegistros.value-dbRetornoCapeantes.value;
    dbRetornoHoraTexto.value:=TimeToStr(dbRetornoHoraProcessamento.value);
end;

procedure TfrmRetornoPS.cmdValidarClick(Sender: TObject);
var i,iRetorno,iItem,iDiag,iResultado,iTotOk,iTotI,iTotA:integer;
var iprontuario:int64;
var campos,iCliente,Ini,iHospital,iMed,iMedCRM,iEnf,iEnfCoren:integer;
var iCid, itexto,iTextoP,iNome,iParcial,iHospitalCNPJ:string;
var iOk,iOk1,iOk2,iBradesco,iGlosaBradesco:boolean;
var iDias,iValorM,iValorE,iValor,iValorGlosa:variant;
var a:int64;
var aa,mm,dd,xaa,xmm,xdd:word;
begin
    iTotOk:=0;
    iTotI:=0;
    iTotA:=0;
    tabFiltro.TabIndex:=0;
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    dbAuditor.IndexFieldNames:='CRM';
    dbEnfermeiro.IndexFieldNames:='Coren';
    iRetorno:=dbRetornoRetorno.value;
    itexto:='';

    if dbRetornoProcessado.value=true then
        ShowMessage('Atenção! Retorno já processado');

    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem validados');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a validação do retorno',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;

    ProgressBar1.Max:=dbProcesso.RecordCount;
    ProgressBar1.Position:=1;

    dbProcesso.AutoCalcFields:=false;
    dbProcesso.First;
    while not dbProcesso.eof do
    begin
        itexto:='';
        ProgressBar1.Position:=ProgressBar1.Position+1;
        iOk:=true;
        iTextoP:='';

        if dbProcessoCliente.value=999999 then
        begin
             itexto:=itexto+'Cliente não cadastrado'+#13;
             iOk:=false;
        end;

        if (dbProcessoClienteCNPJ.isnull) or (dbProcessoClienteCNPJ.value='') then
        begin
           itexto:=itexto+'Cliente não informado no retorno'+#13;
           iOk:=false;
           iCliente:=0;
        end
        else
        begin
            if (not dbCliente.Locate('CGC',dbProcessoClienteCNPJ.value,[loPartialKey])) then
            begin
               itexto:=itexto+'Cliente não cadastrado'+#13;
               iOk:=false;
               iCliente:=0;
            end
            else
                iCliente:=dbClienteCliente.value;
        end;

        if dbProcessoAtendimentoPS.value=0 then
        begin
             itexto:=itexto+'Número do capeante inválido'+#13;
             iOk:=false;
        end;

        if dbProcessoMesCompetencia.value=0 then
        begin
             itexto:=itexto+'Mês de competencia inválido'+#13;
             iOk:=false;
        end;

        if dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([dbProcessoAnoCompetencia.value,
                                                                     dbProcessoMesCompetencia.value]),[]) then
        begin
            if dbProdStatus.value='F' then
            begin
                itexto:=itexto+'Produtividade fechada para esta competencia'+#13;
                iOk:=false;
            end
            else
            begin
                if dbProdCli.Locate('Cliente',dbProcessoCliente.value,[]) then
                begin
                    itexto:=itexto+'Produtividade fechada para este Cliente/Competencia';
                    iOk:=false;
                end;
            end;
        end;

        if dbProcessoAnoCompetencia.value=0 then
        begin
             itexto:=itexto+'Ano de competencia inválido'+#13;
             iOk:=false;
        end;

        if (dbProcessoHospitalCNPJ.isnull) or (dbProcessoHospitalCNPJ.value='') then
        begin
           itexto:=itexto+'Hospital não informado no retorno'+#13;
           iOk:=false;
           iHospital:=0;
        end
        else
        begin
            if (not dbHospital.Locate('CNPJ',dbProcessoHospitalCNPJ.value,[loPartialKey])) then
            begin
               itexto:=itexto+'Hospital não cadastrado'+#13;
               iOk:=false;
               iHospital:=0;
            end
            else
                iHospital:=dbHospitalHospital.value;
        end;

        if (dbProcessoEnfermeiroCoren.value=0) or (dbProcessoEnfermeiroCoren.isnull ) then
            iEnf:=0
        else
            if (not dbEnfermeiro.Locate('Coren',dbProcessoEnfermeiroCoren.value,[])) then
            begin
               itexto:=itexto+'COREN Enfermeiro não cadastrado'+#13;
               iOk:=false;
            end
            else
            begin
                iEnfCoren:=dbEnfermeiroCOREN.value;
                iEnf:=dbEnfermeiroEnfermeiro.value;
            end;

        if (dbProcessoMedicoCRM.value=0) or (dbProcessoMedicoCRM.isnull ) then
            iMed:=0
        else
            if (not dbAuditor.Locate('CRM',dbProcessoMedicoCRM.value,[])) then
            begin
               itexto:=itexto+'CRM Medico não cadastrado'+#13;
               iOk:=false;
            end
            else
                iMed:=dbAuditorAuditor.value;

        if (iMed=0) and (iEnf=0) then
        begin
            itexto:=itexto+'Nenhum medico ou enfermeiro selecionado'+#13;
            iOk:=false;
        end;

        if dbProcessoDataFechamento.isnull then
        begin
             itexto:=itexto+'Data do Fechamento inválida'+#13;
             iOk:=false;
        end;

        dbProcesso.Edit;
        dbProcessoCliente.value:=icliente;
        dbProcessoHospital.value:=ihospital;
        dbProcessoMedico.value:=iMed;
        dbProcessoEnfermeiro.value:=iEnf;
        dbProcesso.Post;

        if dbProcessoGlosa.RecordCount=0 then
            dbProcessoGlosa.Insert
        else
            dbProcessoGlosa.Edit;

        dbProcessoGlosaRetorno.value:=iRetorno;
        dbProcessoGlosaAtendimentoPS.value:=dbProcessoAtendimentoPS.value;
        dbProcessoGlosaTipo.value:='G';
        dbProcessoGlosaGlosa1.value:=9;
        dbProcessoGlosaGlosa2.value:=99;
        dbProcessoGlosaValorGlosadoM.value:=0;
        dbProcessoGlosaValorGlosadoE.value:=0;
        if (dbProcessoMedico.value<>0) and (dbProcessoEnfermeiro.value<>0) then
            dbProcessoGlosaValorGlosadoE.value:=dbProcessoValorGlosado.value;
        if (dbProcessoMedico.value<>0) and (dbProcessoEnfermeiro.value=0) then
            dbProcessoGlosaValorGlosadoM.value:=dbProcessoValorGlosado.value;
        if (dbProcessoMedico.value=0) and (dbProcessoEnfermeiro.value<>0) then
            dbProcessoGlosaValorGlosadoE.value:=dbProcessoValorGlosado.value;

        dbProcessoGlosaDataInclusao.value:=date;
        dbProcessoGlosaUsuarioI.value:='RETORNO';
        dbProcessoGlosa.Post;

        dbProcesso.Edit;
        if iOK then
        begin
            dbProcessoProcessa.value:='S';
            iTotOk:=iTotOk+1;
            dbProcessoNotas.clear;
            if  dbAtendH.Locate('AtendimentoPS;Cliente',VarArrayof([dbProcessoAtendimentoPS.value,2]),[]) then
                iTotA:=iTotA+1
            else
                iTotI:=iTotI+1;
        end
        else
        begin
            dbProcessoProcessa.value:='N';
            dbProcessoNotas.value:=itexto;
        end;
        dbProcesso.Post;
        dbProcesso.Next;
    end;

    dbProcesso.AutoCalcFields:=true;
    dbProcesso.Refresh;
    dbProcesso.First;
    dbRetorno.Edit;
    dbRetornoRegistrosOk.value:=iTotOk;
    dbRetornoRegistrosInclusao.value:=iTotI;
    dbRetornoRegistrosAlteracao.value:=iTotA;
    dbRetorno.Post;
    dbRetorno.Refresh;
    ShowMessage('Registros validados');
end;

procedure TfrmRetornoPS.dbPacienteBeforeInsert(DataSet: TDataSet);
begin
    dbCodigo.Refresh;
    dbCodigo.Locate('Campo','Paciente',[]);
    iUltimoPaciente:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
end;

procedure TfrmRetornoPS.dbProcessoBeforePost(DataSet: TDataSet);
begin
    if (dbProcessoAtendimentoPS.value=0)  then
    begin
        ShowMessage('Prontuário inválido');
        abort;
    end;
    if dbProcessoHospital.value<>0 then
        if dbHospital.Locate('Hospital',dbProcessoHospital.value,[]) then
            dbProcessoHospitalCNPJ.value:=dbHospitalCNPJ.value;

    if dbProcesso.Tag=1 then
        dbProcessoProcessa.value:='A';
end;

procedure TfrmRetornoPS.dbProcessoGlosaBeforePost(DataSet: TDataSet);
begin
    if dbProcessoGlosaGlosa1.value=0 then
    begin
        ShowMessage('Glosa inválida');
        abort;
    end;
end;

procedure TfrmRetornoPS.cmdGravaPClick(Sender: TObject);
begin
    dbProcesso.tag:=1;
    dbProcesso.Post;
end;

procedure TfrmRetornoPS.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão do Prontuário',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if iResultado=idno then abort;
    while dbProcessoGlosa.RecordCount>0 do
        dbProcessoGlosa.delete;
    dbProcesso.Delete;
end;

procedure TfrmRetornoPS.cmdGravaAClick(Sender: TObject);
begin
    dbProcesso.Tag:=1;
    dbProcessoGlosa.Post;
end;

procedure TfrmRetornoPS.cmdExcuiAClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão da Auditoria',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if iResultado=idno then abort;
    dbProcessoGlosa.Delete;
end;

procedure TfrmRetornoPS.dsProcessoStateChange(Sender: TObject);
begin
    cmdGravaP.Enabled:=dbProcesso.State in [dsInsert,dsEdit];
end;

procedure TfrmRetornoPS.dsProcessoGlosaStateChange(Sender: TObject);
begin
    cmdGravaA.Enabled:=dbProcessoGlosa.State in [dsInsert,dsEdit];
end;

procedure TfrmRetornoPS.cmdRelClick(Sender: TObject);
begin
with dmRelatorio do
begin
    qryRetornoPS.SQL.clear;
    qryRetornoPS.SQL.Text:='select * from RetornoPS '+
                         'where Processa='+QuotedStr('N')+' and '+
                         '      Retorno=:iRet '+
                         'order by AtendimentoPS';
    qryRetornoPS.ParamByName('iRet').asinteger:=dbRetornoRetorno.value;
    qryRetornoPS.Open;
    if qryRetornoPS.RecordCount=0 then
    begin
        ShowMessage('Nenhum registro rejeitado');
        abort;
    end;
    frmMenu.RvBBAuditoria.SetParam('Titulo','Retornos Rejeitados:'+IntToStr(qryRetornoPSRetorno.asinteger));
    frmMenu.rvBBAuditoria.SelectReport('relRetornoRejeitadoPS',true);
    frmMenu.rvBBAuditoria.Execute;
end;
end;

procedure TfrmRetornoPS.BitBtn1Click(Sender: TObject);
begin
    dbRetorno.Next;
end;

procedure TfrmRetornoPS.BitBtn2Click(Sender: TObject);
begin
    dbRetorno.Prior;
end;

procedure TfrmRetornoPS.grdRetornoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbRetornoProcessado.value=true then
        grdRetorno.Canvas.Font.Color:=clBlue;

     grdRetorno.DefaultDrawDataCell(Rect,grdRetorno.Columns[DataCol].field,State);
end;

procedure TfrmRetornoPS.dbProcessoAfterPost(DataSet: TDataSet);
begin
    dbProcesso.tag:=0;
end;

procedure TfrmRetornoPS.dbProcessoGlosaAfterPost(DataSet: TDataSet);
begin
     if dbProcesso.tag=1 then
     begin
        dbProcesso.tag:=0;
        dbProcesso.Edit;
        dbProcessoProcessa.value:='A';
        dbProcesso.Post;
     end;
end;

procedure TfrmRetornoPS.dbProcessoDiagAfterPost(DataSet: TDataSet);
begin
     if dbProcesso.tag=1 then
     begin
        dbProcesso.tag:=0;
        dbProcesso.Edit;
        dbProcessoProcessa.value:='A';
        dbProcesso.Post;
     end;
end;

procedure TfrmRetornoPS.BitBtn3Click(Sender: TObject);
begin
    if dbProcessoProcessa.value='A' then
    begin
        ShowMessage('Só é possivel alterar campos validados');
        abort;
    end;
    dbProcesso.Edit;
    if dbProcessoProcessa.value='S' then
        dbProcessoProcessa.value:='N'
    else
        dbProcessoProcessa.value:='S';
    dbProcesso.Post;
end;

procedure TfrmRetornoPS.dbProcessoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case tabFiltro.TabIndex of
    0:accept:=true;
    1:accept:=dbProcessoProcessa.value='S';
    2:accept:=dbProcessoProcessa.value='N';
    end;
end;

procedure TfrmRetornoPS.tabFiltroChange(Sender: TObject);
begin
    dbProcesso.Refresh;
end;

procedure TfrmRetornoPS.cmpBuscaChange(Sender: TObject);
begin
    if trim(cmpBusca.Text)<>'' then
       dbProcesso.Locate('Retorno;Cliente;AtendimentoHI',
                   VarArrayof([dbRetornoRetorno.value,2,StrToInt(Trim(cmpBusca.Text))]),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmRetornoPS.dbAuditorBeforeInsert(DataSet: TDataSet);
begin
    dbAuditor.IndexFieldNames:='Auditor';
    dbAuditor.Last;
    if dbAuditorAuditor.value=999 then
        dbAuditor.Prior;
    iUltimoPaciente:=dbAuditorAuditor.value;
    dbAuditor.IndexFieldNames:='CRM';
end;

procedure TfrmRetornoPS.cmdLerBBClick(Sender: TObject);
var a,p,txt,iTipo,iGlosa,iCodCid,iIDCliente,iCNPJ:string;
    j,jdet,i,qtd,iItem,iRetorno,iCliente,iCodAmb,max,iparcial,idiarias:integer;
    iprontuario:int64;
    strConn, narq1, plan,iRN:string;
    dia,mes,ano:word;
    tot,tot1,iDias:variant;
    iData:Tdate;

var Arq : TextFile;
var texto,xcampo,ierro,icapeante : string;
var q, campo : Integer;
function MV : String;
var
Monta : String;
begin
    monta := '';
    inc(q);
    while (Texto[q] > '*') or
          (Texto[q]='"') or
          (Texto[q]=' ') or
          (Texto[q]='#') or
          (Texto[q]='$') or
          (Texto[q]='&') or
          (Texto[q]='''') or
          (Texto[q]='(') or
          (Texto[q]=')') or
          (Texto[q]='*') or
          (Texto[q]='+') or
          (Texto[q]='=') or
          (Texto[q]='-') or
          (Texto[q]='/') or
          (Texto[q]='%') or
          (Texto[q]=':') or
          (Texto[q]='>') or
          (Texto[q]='<') or
          (Texto[q]='@') or
          (Texto[q]='[') or
          (Texto[q]=']') or
          (Texto[q]='{') or
          (Texto[q]='}') do
    begin
        if Texto[q]= ';' then
            break;
        monta := monta + Texto[q];
    inc(q);
    end;
    result := monta;
end;
//***************************
begin
     opendialog.InitialDir:=idir;
    if opendialog.execute then
    begin
        narq:=opendialog.filename;
        narq1:='';
        for i:=length(narq) downto 0 do
        begin
            if copy(narq,i,1)='\' then break;
            narq1:=copy(narq,i,1)+narq1;
        end;
       lblData.Visible:=false;
       lblTexto.Visible:=true;
       dbRetorno.IndexFieldNames:='NomeArquivo';
       if dbRetorno.Locate('NomeArquivo',narq1,[]) then
       begin
          ShowMessage('Arquivo de retorno ja lido');
          abort;
       end;
        dbExcel1.Close;
        dbExcel1.SQL.Text:='Delete from relExcel1';
        dbExcel1.Execute;
        dbExcel1.SQL.Text:='Select * from relExcel1';
        dbExcel1.Open;//a tabela onde quero por os dados excel
        AssignFile(Arq,OpenDialog.FileName);
        Reset(Arq);
        if not EOF(Arq) then
            repeat
        ReadLn(Arq,Texto);

        with dbExcel1 do
        begin
            Insert;
            q := 0;
            for campo:=1 to 14 do
            begin
                xcampo:=IntToStr(campo);
                FieldByName(xcampo).value:=MV;
            end;
            Post;
        end;
        until EOF(Arq);// ate o fim arquivo CSV
        Closefile(Arq);//fecha arquivo CSV

        tot:=dbExcel1.RecordCount;
        ProgressBar1.Position:=0;
        ProgressBar1.Min:=1;
        ProgressBar1.Max:=tot;

        dbProcesso.Tag:=0;
        dbRetorno.Insert;
        dbRetornoRegistros.value:=0;
        dbRetornoRegistrosOK.value:=0;
        dbRetornoRegistrosInclusao.value:=0;
        dbRetornoRegistrosAlteracao.value:=0;
        dbRetornoDataProcessamento.value:=date;
        dbRetornoHoraProcessamento.value:=time;
        dbRetornoUsuario.value:=iUsuario;
        dbRetornoNomeArquivo.value:=narq1;
        dbRetornoProcessado.value:=false;
        dbRetorno.Post;
        iRetorno:=dbRetornoRetorno.value;
        tot1:=0;

        dbExcel1.First;

{        a:=dbExcel1.Fields[0].asstring; //primeiro campo
        if (a<>'PS') then
        begin
            dbRetorno.Delete;
            ShowMessage('Arquivo não Retorno de Pronto-Socorro do Site B+');
            abort;
        end;}

        dbProcesso.DisableControls;
        dbProcesso.AutoCalcFields:=false;
        dbProcesso.Filtered:=false;
        dbProcessoGlosa.DisableControls;

        while not dbExcel1.eof do
        begin
            try
                a:=dbExcel1.Fields[0].asstring; //Capeante
                iProntuario:=StrToInt(a);
                icapeante:='Capeante:'+a;
                ierro:='';

                if dbProcesso.Locate('Retorno;Cliente;AtendimentoPS',
                                     VarArrayof([iRetorno,iProntuario]),[]) then
                begin
                    dbExcel1.Next;
                    Continue;
                end
                else
                    dbProcesso.Insert;

                tot1:=tot1+1;
                ProgressBar1.Position:=ProgressBar1.Position+1;
                dbProcessoProcessa.value:='A';
                dbProcessoRetorno.value:=iRetorno;
                dbProcessoAtendimentoPS.value:=iProntuario;
                dbProcessoTipo.value:='P';
                dbProcessoPosAnalise.value:=false;

                a:=dbExcel1.Fields[1].asstring; //Cnpj cliente
                ierro:='CNPJ Cliente';
                dbProcessoClienteCNPJ.value:=a;

                a:=dbExcel1.Fields[2].asstring; // cliente
                dbProcessoClienteNome.value:=a;

                a:=dbExcel1.Fields[3].asstring; //Hospital
                ierro:='CNPJ Hospital';
                dbProcessoHospitalCNPJ.value:=a;

                a:=dbExcel1.Fields[4].asstring; //hospital
                dbProcessoHospitalNome.value:=a;

                a:=dbExcel1.Fields[5].asstring; //Medico
                ierro:='CRM';
                if trim(a)<>'' then
                    dbProcessoMedicoCRM.value:=StrToInt(a);

                a:=dbExcel1.Fields[6].asstring; // medico
                dbProcessoMedicoNome.value:=a;

                a:=dbExcel1.Fields[7].asstring; //Enfermeiro
                ierro:='COREN';
                if trim(a)<>'' then
                    dbProcessoEnfermeiroCOREN.value:=StrToInt(a);

                a:=dbExcel1.Fields[8].asstring; //enfermeiro
                dbProcessoEnfermeiroNome.value:=a;

                a:=dbExcel1.Fields[9].asstring; // data fechamento
                ierro:='Data do Fechamento';
                dbProcessoDataFechamento.value:=StrToDate(a);
                if trim(a)<>'' then
                begin
                    DecodeDate(StrToDate(a),ano,mes,dia);
                    dbProcessoMesCompetencia.value:=mes;
                    dbProcessoAnoCompetencia.value:=ano;
                end;

                a:=dbExcel1.Fields[10].asstring; // Qtd
                ierro:='Qtd Atendimentos';
                if trim(a)<>'' then
                    dbProcessoQtdAtendimento.value:=StrToInt(a);

                a:=dbExcel1.Fields[11].asstring; // valor total
                ierro:='Valor Total';
                a:=TrocaMilhar(a);
                if trim(a)<>'' then
                    dbProcessoValor.value:=StrToFloat(a);

                a:=dbExcel1.Fields[12].asstring; // valor glosado
                ierro:='Valor Glosado';
                a:=TrocaMilhar(a);
                if trim(a)<>'' then
                    dbProcessoValorGlosado.value:=StrToFloat(a);
                ierro:='';

            except
                ShowMessage('Informações enviadas no arquivo retorno inválidas.'+#13+
                            'Leitura do arquivo interrompida'+#13+icapeante+'-'+ierro+' - Informação inválida:'+a);
                dbProcesso.AutoCalcFields:=true;
                dbProcesso.EnableControls;
                dbProcessoGlosa.EnableControls;
                dbProcesso.Filtered:=true;
                if dbProcesso.State in [dsInsert,dsEdit] then
//                    dbProcesso.Cancel;
                if dbProcessoGlosa.State in [dsInsert,dsEdit] then
                    dbProcessoGlosa.Cancel;
                ProgressBar1.position:=0;
                    dbProcessoGlosa.Refresh;
                dbProcesso.First;
                dbRetorno.IndexFieldNames:='Retorno desc';
                abort;
            end;
            dbExcel1.Next;
        end;
        dbRetorno.Edit;
        dbRetornoRegistros.value:=tot;
        dbRetornoCapeantes.value:=tot1;
        dbRetorno.Post;
        ProgressBar1.position:=0;
        dbProcesso.AutoCalcFields:=true;
        dbProcesso.EnableControls;
        dbProcesso.Filtered:=true;
        dbProcessoGlosa.EnableControls;
        dbProcessoGlosa.Refresh;
        dbRetorno.IndexFieldNames:='Retorno desc';
        dbRetorno.First;

        ShowMessage('Arquivo Retorno lido com sucesso');
    end;
end;


procedure TfrmRetornoPS.dbEnfermeiroBeforeInsert(DataSet: TDataSet);
begin
    dbEnfermeiro.IndexFieldNames:='Enfermeiro';
    dbEnfermeiro.Last;
    if dbEnfermeiroEnfermeiro.value=999 then
        dbEnfermeiro.Prior;
    iUltimoPaciente:=dbEnfermeiroEnfermeiro.value;
    dbEnfermeiro.IndexFieldNames:='Coren';
end;

procedure TfrmRetornoPS.BitBtn4Click(Sender: TObject);
begin
    if frmRetornoCompt=nil then
      Application.CreateForm(TfrmRetornoCompt, frmRetornoCompt);
    frmRetornoCompt.Tag:=1;
    frmRetornoCompt.ShowModal;
end;

procedure TfrmRetornoPS.dbRetornoAfterInsert(DataSet: TDataSet);
begin
    dbRetornoModulo.value:=1;
    dbRetornoCliente.value:=23;
end;

end.
