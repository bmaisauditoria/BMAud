unit frmClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCGrids, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  ComCtrls, Grids, DBGrids, ToolWin, Menus, checklst, ValEdit, ShellCtrls,
  ztvbase, ztvUnZip, ztvRegister, ztvZip, HKStreamCol, RpDefine, RpCon,
  RpConDS, RpConBDE, DBImgAsp;

type

  Tcluster = class
  i:integer;
  end;
  TfrmCliente = class(TForm)
    dbEndereco: TMSTable;
    dsEndereco: TDataSource;
    CoolBar1: TCoolBar;
    ComboBox1: TComboBox;
    TabControl1: TTabControl;
    dbClienteBusca: TMSTable;
    dsClienteBusca: TDataSource;
    dbContato: TMSTable;
    dsContato: TDataSource;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label17: TLabel;
    Panel1: TPanel;
    grdCliente: TDBGrid;
    Panel6: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    EditRazao: TDBEdit;
    chkCli: TDBCheckBox;
    chkFor: TDBCheckBox;
    pagItens: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    TabSheet4: TTabSheet;
    DBMemo3: TDBMemo;
    TabSheet7: TTabSheet;
    EditCGC: TDBEdit;
    Label8: TLabel;
    EditIE: TDBEdit;
    tabEnd: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit11: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    grdContato: TDBGrid;
    DBText1: TDBText;
    dbEnderecoCliente: TIntegerField;
    dbEnderecoCep: TStringField;
    dbEnderecoEntrega: TBooleanField;
    dbEnderecoCobranca: TBooleanField;
    dbEnderecoFaturamento: TBooleanField;
    dbEnderecoEndereco: TStringField;
    dbEnderecoBairro: TStringField;
    dbEnderecoCidade: TStringField;
    dbEnderecoUF: TStringField;
    dbEnderecoContato: TStringField;
    dbEnderecoFone: TStringField;
    dbEnderecoFax: TStringField;
    dbEnderecoCGC: TStringField;
    dbEnderecoIE: TStringField;
    dbClienteBuscaCliFor: TAutoIncField;
    dbClienteBuscaNome: TStringField;
    dbClienteBuscaCGC: TStringField;
    dbContatoCliente: TIntegerField;
    dbContatoContato: TStringField;
    dbContatoCep: TStringField;
    dbContatoCargo: TStringField;
    dbContatoDepartamento: TStringField;
    dbContatoFone: TStringField;
    dbContatoFoneR: TStringField;
    dbContatoCelular: TStringField;
    dbContatoFax: TStringField;
    dbContatoEmail: TStringField;
    Panel5: TPanel;
    cmdNovoE: TBitBtn;
    cmdGravaE: TBitBtn;
    cmdExcluiE: TBitBtn;
    Panel7: TPanel;
    cmdNovoC: TBitBtn;
    cmdGravaC: TBitBtn;
    cmdExcluiC: TBitBtn;
    dbContatoEndereco: TStringField;
    rdgFiltro: TRadioGroup;
    DBEdit8: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    DBText2: TDBText;
    Label18: TLabel;
    Panel10: TPanel;
    Label19: TLabel;
    DBText46: TDBText;
    chkPre: TDBCheckBox;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    dbEnderecoComplemento: TStringField;
    dbEnderecoUsuario: TStringField;
    dbBanco: TMSTable;
    dsBanco: TDataSource;
    dbBancoBanco: TSmallintField;
    dbBancoNome: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText3: TDBText;
    Panel8: TPanel;
    cmdFoto: TBitBtn;
    cmdLimpaFoto: TBitBtn;
    tabServicoC: TTabSheet;
    Panel9: TPanel;
    Panel11: TPanel;
    Label21: TLabel;
    Label23: TLabel;
    dbServicoCM: TMSTable;
    dsServicoCM: TDataSource;
    dsServicoCE: TDataSource;
    dbServicoCE: TMSTable;
    tabContrato: TTabSheet;
    Panel14: TPanel;
    Label24: TLabel;
    ShellTreeView1: TShellTreeView;
    Splitter3: TSplitter;
    Panel15: TPanel;
    ShellListView1: TShellListView;
    Panel16: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    Label27: TLabel;
    DBEdit14: TDBEdit;
    HKStreams1: THKStreams;
    Splitter2: TSplitter;
    ShellListView2: TShellListView;
    tabImpostos: TTabSheet;
    Label28: TLabel;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    tabMedico: TTabSheet;
    lblFiltro: TLabel;
    dsMedico: TDataSource;
    dsEnfermeiro: TDataSource;
    Panel17: TPanel;
    Panel19: TPanel;
    dsHospital: TDataSource;
    Panel18: TPanel;
    Panel24: TPanel;
    cmdNovoP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdCancelaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdAlteraP: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    dbAtividade: TMSTable;
    dbAtividadeAtividade: TIntegerField;
    dbAtividadeNome: TStringField;
    dsAtividade: TDataSource;
    Label34: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    dbServicoCMCliente: TIntegerField;
    dbServicoCMServico: TStringField;
    dbServicoCMHospital: TIntegerField;
    dbServicoCMMedEnf: TStringField;
    dbServicoCMValor: TCurrencyField;
    dsServico: TDataSource;
    dbServicoCMHospitalNome: TStringField;
    dbServicoCECliente: TIntegerField;
    dbServicoCEServico: TStringField;
    dbServicoCEHospital: TIntegerField;
    dbServicoCEMedEnf: TStringField;
    dbServicoCEValor: TCurrencyField;
    dbServicoCEHospitalNome: TStringField;
    Panel29: TPanel;
    dsClienteAud: TDataSource;
    Label37: TLabel;
    DBText4: TDBText;
    dbServicoCEServicoB: TStringField;
    dbServicoCMServicoB: TStringField;
    dbServicoCMValorBasico: TCurrencyField;
    dbServicoCEValorBasico: TCurrencyField;
    dbServicoPM: TMSTable;
    dbServicoPMServico: TStringField;
    dbServicoPMHospital: TIntegerField;
    dbServicoPMMedEnf: TStringField;
    dbServicoPMValor: TCurrencyField;
    dbServicoPMHospitalNome: TStringField;
    dbServicoPMValorBasico: TCurrencyField;
    dsServicoPM: TDataSource;
    dsServicoPE: TDataSource;
    dbServicoPE: TMSTable;
    dbServicoPEServico: TStringField;
    dbServicoPEHospital: TIntegerField;
    dbServicoPEMedEnf: TStringField;
    dbServicoPEValor: TCurrencyField;
    dbServicoPEHospitalNome: TStringField;
    dbServicoPEValorBasico: TCurrencyField;
    dbServicoPEServicoB: TStringField;
    dbServicoPMPrestador: TIntegerField;
    dbServicoPMAuditor: TIntegerField;
    dbServicoPEPrestador: TIntegerField;
    dbServicoPEAuditor: TIntegerField;
    dbServicoPMCliente: TIntegerField;
    dbServicoPECliente: TIntegerField;
    dbServicoPMClienteNome: TStringField;
    cmdImpC: TBitBtn;
    cmdImpP: TBitBtn;
    qryServC: TMSQuery;
    rvServC: TRvQueryConnection;
    qryServP: TMSQuery;
    rvServP: TRvQueryConnection;
    qryServCCliente: TIntegerField;
    qryServCServico: TStringField;
    qryServCHospital: TIntegerField;
    qryServCMedEnf: TStringField;
    qryServCValor: TCurrencyField;
    qryServCHospitalNome: TStringField;
    qryServCClienteNome: TStringField;
    qryServCMedEnfTexto: TStringField;
    qryServPPrestador: TIntegerField;
    qryServPCliente: TIntegerField;
    qryServPServico: TStringField;
    qryServPHospital: TIntegerField;
    qryServPMedEnf: TStringField;
    qryServPAuditor: TIntegerField;
    qryServPValor: TCurrencyField;
    qryServPHospitalNome: TStringField;
    dbServicoPMClienteCGC: TStringField;
    dbClienteServico: TMSTable;
    dbClienteServicoCliFor: TAutoIncField;
    dbClienteServicoNome: TStringField;
    dbClienteServicoCGC: TStringField;
    dbClienteServicoStatusCli: TBooleanField;
    dbServicoPEClienteNome: TStringField;
    dbServicoPEClienteCGC: TStringField;
    tabCob: TTabSheet;
    grdClienteCob: TDBGrid;
    Panel31: TPanel;
    cmdNovoCob: TBitBtn;
    cmdGravaCob: TBitBtn;
    cmdExcluicob: TBitBtn;
    dbClienteCob: TMSTable;
    dsClienteCob: TDataSource;
    BitBtn4: TBitBtn;
    Label38: TLabel;
    Label39: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    cmbFilial: TDBLookupComboBox;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dbCCorrente: TMSTable;
    dsCCorrente: TDataSource;
    dbCCorrenteBancoID: TAutoIncField;
    dbCCorrenteNome: TStringField;
    dbCCorrenteFilial: TSmallintField;
    dbClienteCobCliente: TIntegerField;
    dbClienteCobServico: TStringField;
    dbClienteCobValor: TCurrencyField;
    dbServicoPMServicoB: TStringField;
    Label35: TLabel;
    DBEdit16: TDBEdit;
    dbClienteAud: TMSTable;
    dbClienteAudCliente: TIntegerField;
    dbClienteAudNome: TStringField;
    dbClienteAudCGC: TStringField;
    dbClienteAudBusca: TMSTable;
    dbClienteAudBuscaCliente: TIntegerField;
    dbClienteAudBuscaNome: TStringField;
    dbClienteAudBuscaCGC: TStringField;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroCliente: TIntegerField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbMedico: TMSTable;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dbMedicoCRM: TIntegerField;
    dbMedicoCliente: TIntegerField;
    dbEnderecoDataInclusao: TDateTimeField;
    dbContatoNascimento: TDateTimeField;
    dbContatoObservacoes: TMemoField;
    dsCliente: TDataSource;
    Label33: TLabel;
    cmpLogo: TDBImageAspect;
    dbServicoValor: TCurrencyField;
    qryServPNome: TStringField;
    qryServPClienteNome: TStringField;
    BitBtn1: TBitBtn;
    qryServPNome_1: TStringField;
    BitBtn2: TBitBtn;
    Panel21: TPanel;
    DBGrid1: TDBGrid;
    Label30: TLabel;
    Panel23: TPanel;
    Label31: TLabel;
    Panel25: TPanel;
    DBGrid4: TDBGrid;
    Panel26: TPanel;
    Label32: TLabel;
    tabOrdemM: TTabControl;
    Panel12: TPanel;
    cmdNovoSM: TBitBtn;
    cmdGravaSM: TBitBtn;
    cmdExcluiSM: TBitBtn;
    grdServicoCM: TDBGrid;
    tabOrdemE: TTabControl;
    Panel13: TPanel;
    cmdNovoSE: TBitBtn;
    cmdGravaSE: TBitBtn;
    cmdExcluiSE: TBitBtn;
    grdServicoCE: TDBGrid;
    tabOrdemPM: TTabControl;
    Panel20: TPanel;
    cmdNovoPM: TBitBtn;
    cmdGravaPM: TBitBtn;
    cmdExcluiPM: TBitBtn;
    grdServicoPM: TDBGrid;
    tabOrdemPE: TTabControl;
    Panel22: TPanel;
    cmdNovoPE: TBitBtn;
    cmdGravaPE: TBitBtn;
    cmdExcluiPE: TBitBtn;
    grdServicoPE: TDBGrid;
    dbCliente: TMSQuery;
    dbClienteCliFor: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dbClienteIE: TStringField;
    dbClienteEmail: TStringField;
    dbClienteEmailNF: TStringField;
    dbClienteHomePage: TStringField;
    dbClienteAtividade: TIntegerField;
    dbClienteStatusCli: TBooleanField;
    dbClienteStatusFor: TBooleanField;
    dbClienteStatusPre: TBooleanField;
    dbClienteObservacao: TMemoField;
    dbClienteJuridica: TBooleanField;
    dbClienteBanco: TSmallintField;
    dbClienteAgencia: TStringField;
    dbClienteConta: TStringField;
    dbClienteCofins: TBooleanField;
    dbClienteCSLL: TBooleanField;
    dbClienteIRenda: TBooleanField;
    dbClienteISSNF: TBooleanField;
    dbClientePISSNF: TFloatField;
    dbClienteGPS: TBooleanField;
    dbClienteFilial: TSmallintField;
    dbClienteBancoID: TSmallintField;
    dbClienteDataRenovacao: TDateTimeField;
    dbClienteIndiceRenovacao: TStringField;
    dbClienteDataInclusao: TDateTimeField;
    dbClienteUsuario: TStringField;
    dbClienteContratos: TBlobField;
    dbClienteLogotipo: TBlobField;
    dbClientePessoa: TStringField;
    BitBtn3: TBitBtn;
    dbRemoto: TMSQuery;
    procedure TabControl1Change(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure DBCtrlGrid1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdContatoEnter(Sender: TObject);
    procedure radForClick(Sender: TObject);
    procedure radCliClick(Sender: TObject);
    procedure radNenhumClick(Sender: TObject);
    procedure dbClienteJurdicaChange(Sender: TField);
    procedure dbClienteFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure cmdAlteraPClick(Sender: TObject);
    procedure cmdCancelaPClick(Sender: TObject);
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure cmdNovoEClick(Sender: TObject);
    procedure cmdGravaEClick(Sender: TObject);
    procedure cmdExcluiEClick(Sender: TObject);
    procedure dbEnderecoAfterInsert(DataSet: TDataSet);
    procedure cmdNovoCClick(Sender: TObject);
    procedure cmdGravaCClick(Sender: TObject);
    procedure cmdExcluiCClick(Sender: TObject);
    procedure dbContatoAfterInsert(DataSet: TDataSet);
    procedure dbClienteCalcFields(DataSet: TDataSet);
    procedure dsClienteStateChange(Sender: TObject);
    procedure dsEnderecoStateChange(Sender: TObject);
    procedure dsContatoStateChange(Sender: TObject);
    procedure radTodosClick(Sender: TObject);
    procedure dbClienteAfterInsert(DataSet: TDataSet);
    procedure dbClienteBeforePost(DataSet: TDataSet);
    procedure cmdFotoClick(Sender: TObject);
    procedure cmdLimpaFotoClick(Sender: TObject);
    procedure rdgFiltroClick(Sender: TObject);
    procedure dbEnderecoBeforePost(DataSet: TDataSet);
    procedure dbContatoBeforePost(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Label13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBLookupComboBox1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Label13Click(Sender: TObject);
    procedure dbServicoCMFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbServicoCEFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdNovoSMClick(Sender: TObject);
    procedure cmdGravaSMClick(Sender: TObject);
    procedure cmdExcluiSMClick(Sender: TObject);
    procedure cmdNovoSEClick(Sender: TObject);
    procedure cmdGravaSEClick(Sender: TObject);
    procedure cmdExcluiSEClick(Sender: TObject);
    procedure dsServicoCMStateChange(Sender: TObject);
    procedure dsServicoCEStateChange(Sender: TObject);
    procedure dbServicoCMAfterInsert(DataSet: TDataSet);
    procedure dbServicoCEAfterInsert(DataSet: TDataSet);
    procedure dbServicoCMBeforePost(DataSet: TDataSet);
    procedure dbServicoCEBeforePost(DataSet: TDataSet);
    procedure ShellTreeView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ShellListView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ShellListView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ShellListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbClienteBeforeClose(DataSet: TDataSet);
    procedure dbClienteBeforeScroll(DataSet: TDataSet);
    procedure ShellListView2DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ShellListView2DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbClienteAfterScroll(DataSet: TDataSet);
    procedure dbClienteBeforeInsert(DataSet: TDataSet);
    procedure Label34Click(Sender: TObject);
    procedure dbServicoCMBeforeInsert(DataSet: TDataSet);
    procedure dbServicoCEBeforeInsert(DataSet: TDataSet);
    procedure dbServicoPMFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbServicoPEFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbServicoPMBeforePost(DataSet: TDataSet);
    procedure dbServicoPEBeforePost(DataSet: TDataSet);
    procedure dbServicoPMAfterInsert(DataSet: TDataSet);
    procedure dbServicoPEAfterInsert(DataSet: TDataSet);
    procedure cmdNovoPMClick(Sender: TObject);
    procedure cmdGravaPMClick(Sender: TObject);
    procedure cmdExcluiPMClick(Sender: TObject);
    procedure dsServicoPMStateChange(Sender: TObject);
    procedure cmdNovoPEClick(Sender: TObject);
    procedure cmdGravaPEClick(Sender: TObject);
    procedure cmdExcluiPEClick(Sender: TObject);
    procedure dsServicoPEStateChange(Sender: TObject);
    procedure qryServCCalcFields(DataSet: TDataSet);
    procedure cmdImpCClick(Sender: TObject);
    procedure cmdImpPClick(Sender: TObject);
    procedure dbClienteServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbClienteCobBeforePost(DataSet: TDataSet);
    procedure dbClienteCobAfterInsert(DataSet: TDataSet);
    procedure cmdNovoCobClick(Sender: TObject);
    procedure cmdGravaCobClick(Sender: TObject);
    procedure cmdExcluicobClick(Sender: TObject);
    procedure dsClienteCobStateChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbClienteAfterPost(DataSet: TDataSet);
    procedure dbClienteBeforeDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure tabOrdemMChange(Sender: TObject);
    procedure tabOrdemEChange(Sender: TObject);
    procedure tabOrdemPMChange(Sender: TObject);
    procedure tabOrdemPEChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
  vi:^tcluster;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

uses frmPrincipal, frmCadastros, dmRelatorios;

{$R *.DFM}

procedure TfrmCliente.TabControl1Change(Sender: TObject);
begin
    case tabcontrol1.tabindex of
    0:dbCliente.indexfieldnames:='Nome';
    1:dbCliente.indexfieldnames:='CliFor';
    2:dbCliente.indexfieldnames:='CGC';
    3:dbCliente.IndexFieldnames:='Atividade;Nome';
    4:dbCliente.IndexFieldnames:='Filial;Nome';
    end;
end;

procedure TfrmCliente.cmdFichaClick(Sender: TObject);
begin
    grdCliente.SendToBack;
end;

procedure TfrmCliente.cmdListaClick(Sender: TObject);
begin
    grdCliente.BringToFront;
end;

procedure TfrmCliente.ComboBox1Change(Sender: TObject);
begin
    case tabcontrol1.tabindex of
    0:dbCliente.Locate('Nome',Trim(combobox1.text),[loCaseInsensitive,loPartialKey]);
    1:dbCliente.Locate('CliFor',Trim(combobox1.text),[loCaseInsensitive,loPartialKey]);
    2:dbCliente.Locate('CGC',Trim(combobox1.text),[loCaseInsensitive,loPartialKey]);
    3:dbCliente.Locate('Atividade',Trim(combobox1.text),[loCaseInsensitive,loPartialKey]);
    end;
end;

procedure TfrmCliente.ComboBox1Exit(Sender: TObject);
begin
    combobox1.Items.add(combobox1.text);
end;


procedure TfrmCliente.DBCtrlGrid1Enter(Sender: TObject);
begin
    if dbCliente.State in [dsEdit,dsInsert] then
        dbCliente.post;
end;

procedure TfrmCliente.FormShow(Sender: TObject);
var iBuscaC:string;
begin
try
    Screen.cursor:=crhourglass;
    if not directoryexists(iDir+'Anexos')then
        createdir(iDir+'\Anexos');
    if not directoryexists(iDir+'Anexos\'+iUsuario)then
        createdir(iDir+'Anexos\'+iUsuario);
    Shelllistview1.Root:=iDir+'Anexos\'+iUsuario;
    dbFilial.Open;
    dbCCorrente.Open;
    with frmMenu do
    begin
        dbUsuario.Locate('Usuario',iUsuario,[]);
        if dbUsuarioMasterFin.Value=true then
            iBuscaC:=''
        else
        begin
            if AcessoMudo('Clientes') then
                iBuscaC:='(StatusCli=1) or ';
            if AcessoMudo('Fornecedores') then
                iBuscaC:=iBuscaC+'(StatusFor=1) or ';
            if AcessoMudo('Prestadores') then
                iBuscaC:=iBuscaC+'(StatusPre=1) or ';
            iBuscaC:=Copy(iBuscaC,1,(Length(iBuscaC)-3));
            iBuscaC:=' where '+iBuscaC;
        end;
    end;
    dbCliente.SQL.Text:='Select * from Clientes '+iBuscaC+' order by Nome';
    dbCliente.open;
    dbEndereco.open;
    dbClienteBusca.open;
    dbContato.open;
    dbClienteAud.Open;
    dbClienteCob.Open;
    dbClienteAudBusca.Open;
    dbBanco.Open;
    dbEnfermeiro.Open;
    dbMedico.Open;
    dbHospital.Open;
    dbServico.Open;
    dbClienteServico.Open;
    dbServicoCM.Open;
    dbServicoCM.IndexFieldNames:='Cliente;Servico;Hospital;MedEnf';
    dbServicoCE.Open;
    dbServicoCE.IndexFieldNames:='Cliente;Servico;Hospital;MedEnf';
    dbServicoPM.Open;
    dbServicoPM.IndexFieldNames:='Auditor;Servico';
    dbServicoPE.Open;
    dbServicoPE.IndexFieldNames:='Auditor;Servico';
    dbAtividade.Open;
finally
    Screen.cursor:=crdefault;
    pagItens.ActivePageIndex:=0;
    tabOrdemM.TabIndex:=0;
    tabOrdemE.TabIndex:=0;
    tabOrdemPM.TabIndex:=0;
    tabOrdemPE.TabIndex:=0;
end;
end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dbCliente.state in [dsedit] then dbCliente.post;
    if dbEndereco.state in [dsedit] then dbEndereco.post;
    if dbContato.state in [dsedit] then dbContato.post;

    dbEnfermeiro.Close;
    dbMedico.Close;
    dbEndereco.close;
    dbClienteBusca.close;
    dbClienteAudBusca.close;
    dbContato.close;
    dbBanco.Close;
    dbHospital.Close;
    dbServico.Close;
    dbServicoCM.Close;
    dbServicoCE.Close;
    dbServicoPM.Close;
    dbServicoPE.Close;
    dbClienteCob.Close;
    dbAtividade.Close;
    dbHospital.Close;
    dbFilial.Close;
    dbCCorrente.Close;
    dbClienteAud.Close;
    dbCliente.close;

    dbClienteServico.Close;
    qryServC.Close;
    qryServP.Close;
end;

procedure TfrmCliente.grdContatoEnter(Sender: TObject);
begin
    if dbCliente.State in [dsEdit,dsInsert] then
        dbCliente.post;
end;

procedure TfrmCliente.radCliClick(Sender: TObject);
begin
    dbCliente.tag:=0;
    dbCliente.refresh;
end;

procedure TfrmCliente.radForClick(Sender: TObject);
begin
    dbCliente.tag:=1;
    dbCliente.refresh;
end;

procedure TfrmCliente.radTodosClick(Sender: TObject);
begin
    dbCliente.tag:=2;
    dbCliente.refresh;
end;

procedure TfrmCliente.radNenhumClick(Sender: TObject);
begin
    dbCliente.tag:=3;
    dbCliente.refresh;
end;

procedure TfrmCliente.dbClienteJurdicaChange(Sender: TField);
begin
    if not dbClientejuridica.asboolean then
        dbClientecgc.EditMask:='###.###.###-##;0;_'
    else
        dbClientecgc.EditMask:='##.###.###/####-##;0;_';
end;

procedure TfrmCliente.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case rdgFiltro.ItemIndex of
    0:accept:=dbClienteStatusCli.asboolean;
    1:accept:=dbClienteStatusFor.asboolean;
    2:accept:=dbClienteStatusPre.asboolean;
    3:accept:=(true);
    4:accept:=(not dbClienteStatusCli.asboolean) and
              (not dbClienteStatusFor.asboolean) and
              (not dbClienteStatusPre.asboolean) ;
    end;
end;


procedure TfrmCliente.cmdNovoPClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbCliente.insert;
    EditRazao.SetFocus;
end;

procedure TfrmCliente.cmdGravaPClick(Sender: TObject);
begin
    if dbCliente.state in [dsinsert,dsedit] then
        dbCliente.Post;
end;

procedure TfrmCliente.cmdExcluiPClick(Sender: TObject);
var i:integer;
begin
    if dbEndereco.state in [dsinsert,dsedit] then
        dbEndereco.cancel;
    if dbCliente.State in [dsinsert,dsedit] then
        dbCliente.cancel else
    if dbMedico.RecordCount>0 then
        ShowMessage('Existem Médicos vinculados a esse Prestador');
    if dbEnfermeiro.RecordCount>0 then
        ShowMessage('Existem Enfermeiros vinculados a esse Prestador');

    i:=application.messagebox('Você tem certeza de que deseja excluir este Cliente/Fornecedor e todos seus serviços?',
        'Confirmação de Exclusão',mb_YesNo);

    if i=idno then abort;

    while dbEndereco.recordcount>0 do
        dbEndereco.delete;
    while dbContato.recordcount>0 do
        dbContato.delete;
    while dbServicoCM.recordcount>0 do
        dbServicoCM.delete;
    while dbServicoCE.recordcount>0 do
        dbServicoCM.delete;
    while dbServicoPM.recordcount>0 do
        dbServicoPM.delete;
    while dbServicoPE.recordcount>0 do
        dbServicoPE.delete;
    while dbClienteCob.recordcount>0 do
        dbClienteCob.delete;

    dbCliente.delete;
end;

procedure TfrmCliente.cmdAlteraPClick(Sender: TObject);
begin
    dbCliente.Edit;
    EditRazao.SetFocus;
end;

procedure TfrmCliente.cmdCancelaPClick(Sender: TObject);
begin
    dbCliente.Cancel;
end;

procedure TfrmCliente.dsClienteDataChange(Sender: TObject; Field: TField);
begin
    if dbClienteStatusCli.value=true then
    begin
        ChkCli.Color:=clgreen;
        Chkcli.Font.Color:=clWhite;
    end
    else
    begin
        ChkCli.Color:=clBtnFace;
        Chkcli.Font.Color:=clWindowText;
    end;

    if dbClienteStatusFor.value=true then
    begin
        ChkFor.Color:=clRed;
        ChkFor.Font.Color:=clWhite;
    end
    else
    begin
        ChkFor.Color:=clBtnFace;
        ChkFor.Font.Color:=clWindowText;
    end;
    if dbClienteStatusPre.value=true then
    begin
        ChkPre.Color:=clBlue;
        ChkPre.Font.Color:=clWhite;
    end
    else
    begin
        ChkPre.Color:=clBtnFace;
        ChkPre.Font.Color:=clWindowText;
    end;

    if dbCliente.Active then
    begin
      tabServicoC.TabVisible:=dbClienteStatusCli.value;
      tabCob.TabVisible:=dbClienteStatusCli.value;

      if dbClienteStatusPre.value=true then
      begin
        tabMedico.TabVisible:=true;
        tabImpostos.TabVisible:=true;
      end
      else
      begin
        tabMedico.TabVisible:=false;
        tabImpostos.TabVisible:=false;
      end;
  end;      
end;

procedure TfrmCliente.cmdNovoEClick(Sender: TObject);
begin
    dbEndereco.Insert;
end;

procedure TfrmCliente.cmdGravaEClick(Sender: TObject);
begin
    dbEndereco.Post;
end;

procedure TfrmCliente.cmdExcluiEClick(Sender: TObject);
begin
    dbEndereco.Delete;
end;

procedure TfrmCliente.dbEnderecoAfterInsert(DataSet: TDataSet);
begin
    dbEnderecoCliente.Value:=dbClienteCliFor.value;
    dbEnderecoCobranca.value:=true;
    dbEnderecoFaturamento.value:=true;
    dbEnderecoEntrega.value:=true;
    dbEnderecoDataInclusao.value:=date;
end;

procedure TfrmCliente.cmdNovoCClick(Sender: TObject);
begin
    dbContato.Insert;
end;

procedure TfrmCliente.cmdGravaCClick(Sender: TObject);
begin
    dbContato.Post;
end;

procedure TfrmCliente.cmdExcluiCClick(Sender: TObject);
begin
    dbContato.Delete;
end;

procedure TfrmCliente.dbContatoAfterInsert(DataSet: TDataSet);
begin
    dbContatoCliente.value:=dbClienteCliFor.value;
end;

procedure TfrmCliente.dbClienteCalcFields(DataSet: TDataSet);
begin
    if dbClienteJuridica.value=true then
        dbClientePessoa.value:='Jurídica'
    else
        dbClientePessoa.value:='Física';
end;

procedure TfrmCliente.dsClienteStateChange(Sender: TObject);
begin
     cmdNovoP.Enabled:=dbCliente.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiP.Enabled:=(dbCliente.Active=true) and
                         (dbCliente.RecordCount<>0);
     cmdGravaP.Enabled:=dbCliente.State in [dsEdit,dsInsert];
     cmdCancelaP.Enabled:=dbCliente.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.dsEnderecoStateChange(Sender: TObject);
begin
     cmdNovoE.Enabled:=dbEndereco.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiE.Enabled:=(dbEndereco.Active=true) and
                         (dbEndereco.RecordCount<>0);
     cmdGravaE.Enabled:=dbEndereco.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.dsContatoStateChange(Sender: TObject);
begin
     cmdNovoC.Enabled:=dbContato.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiC.Enabled:=(dbContato.Active=true) and
                         (dbContato.RecordCount<>0);
     cmdGravaC.Enabled:=dbContato.State in [dsEdit,dsInsert];
end;


procedure TfrmCliente.dbClienteAfterInsert(DataSet: TDataSet);
begin    dbClienteJuridica.value:=true;
    dbClienteStatuscli.value:=false;
    dbClienteStatusFor.value:=false;
    dbClienteStatusPre.value:=false;
    dbClienteIRenda.value:=true;
    dbClienteCofins.value:=true;
    dbClienteCsll.value:=true;
    dbClienteISSNF.value:=false;
    dbClientePISSNF.value:=0;
    dbClienteGPS.value:=false;
    dbClienteFilial.value:=0;
end;

procedure TfrmCliente.dbClienteBeforePost(DataSet: TDataSet);
var dr,i,j:integer;
dirusu,a:string;
ms:tFilestream;
mq:tmemorystream;
er:tsearchrec;
begin
    if dbCliente.state=dsInsert then
    begin
        if (dbClienteBusca.Locate('CGC',dbClienteCGC.value,[])) and
           (dbClienteCliFor.value<>dbClienteBuscaCliFor.value) and
           (dbClienteCGC.value<>'') then
        begin
            ShowMessage('CNPJ já cadastrado. Verifique.');
            abort;
        end;
        if (dbClienteNome.value='') then
        begin
            ShowMessage('Nome/Razão social inválido');
            abort;
        end;
        if (dbClienteCGC.value='') then
        begin
            i:=application.messagebox('Confirme o cadastro de um Cliente/Fornecedor sem CNPJ',
            'Confirmação',mb_YesNo);
            if i=idno then abort;
        end;
        dbClienteDataInclusao.value:=date;
   end;
   if (dbClienteStatusCli.value=false) and
      (dbClienteStatusFor.value=false) and
      (dbClienteStatusPre.value=false) then
   begin
     ShowMessage('Classifique o cadastro como um ou mais tipos: Cliente - Fornecedor - Prestador');
     abort;
   end;

   if (dbClienteISSNF.value=true) and (dbClientePISSNF.value=0) then
   begin
        ShowMessage('Informe a % do ISS referente a emissão da NF a ser recolhida em Folha');
        abort;
   end;

   if (dbClienteFilial.value=0) and
      (dbClienteStatusPre.value=true) then
        ShowMessage('Atenção! Prestador sem filial');

   dbClienteUsuario.value:=iUsuario;

    hkstreams1.clearstreams;
    dbClienteContratos.Clear;
    dirusu:=iDir+'\Anexos\'+iUsuario+'\';
    dr:=findfirst(dirusu+'*.*', faArchive, er);
    while dr=0 do
    begin
        if pos('$$$', er.Name)<>0 then
            deletefile(dirusu+er.Name)
        else
        begin
            try
                ms:=tfilestream.Create(dirusu+er.Name,fmopenread or fmShareDenyWrite);
                hkstreams1.AddStream(er.Name,ms);
            finally
                ms.free;
            end;
        end;
        dr:=findnext(er);
    end;
    try
        mq:=tmemorystream.Create;
        hkstreams1.SaveToStream(mq);
        dbClienteContratos.LoadFromStream(mq);
    finally
        mq.Free;
    end;
    hkstreams1.ClearStreams;
    findclose(er);
end;

procedure TfrmCliente.cmdFotoClick(Sender: TObject);
begin
    pagItens.ActivePageIndex:=3;
    dbCliente.Edit;
    cmpLogo.PasteFromClipboard;
    dbCliente.Post;
end;

procedure TfrmCliente.cmdLimpaFotoClick(Sender: TObject);
var i:integer;
begin
    pagItens.ActivePageIndex:=3;
    i:=application.messagebox('Você tem certeza de que deseja excluir esta imagem?',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idyes then
    begin
        dbCliente.Edit;
        dbClienteLogotipo.Clear;
        dbCliente.Post;
    end;    
end;

procedure TfrmCliente.rdgFiltroClick(Sender: TObject);
begin
    case rdgFiltro.ItemIndex of
    0:lblFiltro.Caption:='Visualizando apenas CLIENTES';
    1:lblFiltro.Caption:='Visualizando apenas FORNECEDORES';
    2:lblFiltro.Caption:='Visualizando apenas PRESTADORES';
    3:lblFiltro.Caption:='Visualizando TODOS OS REGISTROS';
    4:lblFiltro.Caption:='Visualizando apenas SEM CLASSIFICAÇÃO'
    end;

    dbCliente.Refresh;
end;

procedure TfrmCliente.dbEnderecoBeforePost(DataSet: TDataSet);
begin
    if dbEnderecoEndereco.value='' then
    begin
        ShowMessage('Endereço inválido');
        abort;
    end;
    dbEnderecoUsuario.value:=iUsuario;
end;

procedure TfrmCliente.dbContatoBeforePost(DataSet: TDataSet);
begin
    if dbContatoContato.value='' then
    begin
        ShowMessage('Endereço inválido');
        abort;
    end;

end;

procedure TfrmCliente.BitBtn8Click(Sender: TObject);
begin
    dbCliente.Prior;
end;

procedure TfrmCliente.BitBtn9Click(Sender: TObject);
begin
    dbCliente.Next;
end;

procedure TfrmCliente.Label13MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TfrmCliente.Panel6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmCliente.DBLookupComboBox1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmCliente.Label13Click(Sender: TObject);
begin
    if not frmMenu.Acesso('Tabelas') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.tag:=2;
    frmCadastro.Show;
end;

procedure TfrmCliente.dbServicoCMFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoCMMedEnf.value='M';
end;

procedure TfrmCliente.dbServicoCEFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoCEMedEnf.value='E';
end;

procedure TfrmCliente.cmdNovoSMClick(Sender: TObject);
begin
    dbServicoCM.Insert;
    grdServicoCM.SetFocus;
end;

procedure TfrmCliente.cmdGravaSMClick(Sender: TObject);
begin
    dbServicoCM.Post;
end;

procedure TfrmCliente.cmdExcluiSMClick(Sender: TObject);
begin
    dbServicoCM.Delete;
end;

procedure TfrmCliente.cmdNovoSEClick(Sender: TObject);
begin
    dbServicoCE.Insert;
    grdServicoCE.SetFocus;
end;

procedure TfrmCliente.cmdGravaSEClick(Sender: TObject);
begin
    dbServicoCE.Post;
end;

procedure TfrmCliente.cmdExcluiSEClick(Sender: TObject);
begin
    dbServicoCE.Delete;
end;

procedure TfrmCliente.dsServicoCMStateChange(Sender: TObject);
begin
     cmdNovoSM.Enabled:=dbServicoCM.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiSM.Enabled:=(dbServicoCM.Active=true) and
                         (dbServicoCM.RecordCount<>0);
     cmdGravaSM.Enabled:=dbServicoCM.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.dsServicoCEStateChange(Sender: TObject);
begin
     cmdNovoSE.Enabled:=dbServicoCE.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiSE.Enabled:=(dbServicoCE.Active=true) and
                         (dbServicoCE.RecordCount<>0);
     cmdGravaSE.Enabled:=dbServicoCE.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.dbServicoCMAfterInsert(DataSet: TDataSet);
begin
    dbServicoCMCliente.value:=dbClienteCliFor.value;
    dbServicoCMMedEnf.value:='M';
    dbServicoCMValor.value:=0;
    dbServicoCMHospital.value:=0;
end;

procedure TfrmCliente.dbServicoCEAfterInsert(DataSet: TDataSet);
begin
    dbServicoCECliente.value:=dbClienteCliFor.value;
    dbServicoCEMedEnf.value:='E';
    dbServicoCEValor.value:=0;
    dbServicoCEHospital.value:=0;
end;

procedure TfrmCliente.dbServicoCMBeforePost(DataSet: TDataSet);
begin
    if dbClienteAud.RecordCount=0 then
        ShowMessage('Atenção! Nenhum cliente de auditoria vinculado');

    if dbServicoCMServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if dbServicoCMValor.value=0 then
    begin
        ShowMessage('Valor inválido');
        abort;
    end;

    if dbServicoCMValor.value=dbServicoCMValorBasico.value then
    begin
        ShowMessage('Preço igual a tabela Geral de Serviço'+#13+
                    'Não ha necessidade de cadastro');
        abort;
    end;
end;

procedure TfrmCliente.dbServicoCEBeforePost(DataSet: TDataSet);
begin
    if dbClienteAud.RecordCount=0 then
        ShowMessage('Atenção! Nenhum cliente de auditoria vinculado');

    if dbServicoCEServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if dbServicoCEValor.value=0 then
    begin
        ShowMessage('Valor inválido');
        abort;
    end;
    if dbServicoCEValor.value=dbServicoCEValorBasico.value then
    begin
        ShowMessage('Preço igual a tabela Geral de Serviço'+#13+
                    'Não ha necessidade de cadastro');
        abort;
    end;
end;

procedure TfrmCliente.ShellTreeView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept:=false;
end;

procedure TfrmCliente.ShellListView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var Origem,Destino:File;
Buffer:Array[0..128] of byte;
Counter:integer;
a,b:string;
begin
   dbCliente.edit;
    {$i-}
    a:=tShelllistview(Source).Folders[tCustomlistview(Source).itemindex].PathName;
    Assignfile(Origem,a);
    Reset(Origem,1);
    b:=extractfilename(a);
    b:=tShelllistview(Sender).Root+'\'+b;
    Assignfile(Destino,b);
    ReWrite(Destino,1);
    while not eof(Origem) do
    begin
        blockread(Origem,Buffer,128,Counter);
        Blockwrite(dESTINO,bUFFER,128,cOUNTER);
    end;
    Closefile(Origem);
    Closefile(Destino);
    {$i+}
end;

procedure TfrmCliente.ShellListView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept:=true;
end;

procedure TfrmCliente.ShellListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var a:string;
begin
    a:=tShelllistview(Sender).Folders[tCustomlistview(Sender).itemindex].PathName;
    if key=46 then
    begin
        dbCliente.edit;
        deletefile(a);
    end;
end;

procedure TfrmCliente.dbClienteBeforeClose(DataSet: TDataSet);
var dr:integer;
er:tsearchrec;
dirusu:string;
begin
    dirusu:=iDir+'\Anexos\'+iUsuario+'\';
    dr:=findfirst(dirusu+'*.*', faArchive, er);
    while dr=0 do
    begin
        deletefile(dirusu+er.Name);
        dr:=findnext(er);
    end;
    findclose(er);
end;

procedure TfrmCliente.dbClienteBeforeScroll(DataSet: TDataSet);
var dr:integer;
er:tsearchrec;
dirusu:string;
begin
    if dbCliente.Active=true then
    begin
        dirusu:=iDir+'\Anexos\'+iUsuario+'\';
        dr:=findfirst(dirusu+'*.*', faArchive, er);
        while dr=0 do
        begin
            deletefile(dirusu+er.Name);
            dr:=findnext(er);
        end;
        findclose(er);
    end;
end;

procedure TfrmCliente.ShellListView2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var Origem,Destino:File;
Buffer:Array[0..128] of byte;
Counter:integer;
a,b:string;
begin
    {$i-}
    a:=tShelllistview(Source).Folders[tCustomlistview(Source).itemindex].PathName;
    Assignfile(Origem,a);
    Reset(Origem,1);
    b:=extractfilename(a);
    b:=tShelllistview(Sender).RootFolder.PathName+'\'+b;
    Assignfile(Destino,b);
    ReWrite(Destino,1);
    while not eof(Origem) do
    begin
        blockread(Origem,Buffer,128,Counter);
        Blockwrite(dESTINO,bUFFER,128,cOUNTER);
    end;
    Closefile(Origem);
    Closefile(Destino);
    ShellListView2.Refresh;
    {$i+}
end;

procedure TfrmCliente.ShellListView2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept:=true;
end;

procedure TfrmCliente.dbClienteAfterScroll(DataSet: TDataSet);
var ms:tmemorystream;
    mq:tfilestream;
    i:integer;
begin
    if dbClienteContratos.IsNull then else
    begin
        ms:=tmemorystream.Create;
        dbClienteContratos.SaveToStream(ms);
        hkstreams1.ClearStreams;
        hkstreams1.LoadFromStream(ms);
        ms.Free;
        for i:=0 to hkstreams1.StreamList.Count-1 do
        begin
            mq:=TfileStream.Create(iDir+'\Anexos\'+iUsuario+'\'+hkstreams1.StreamList[i],fmCREATE or fmShareExclusive);
            hkstreams1.GetStream(hkstreams1.StreamList[i],mq);
            mq.Free;
        end;
    end;
end;

procedure TfrmCliente.dbClienteBeforeInsert(DataSet: TDataSet);
begin
  rdgFiltro.ItemIndex:=3;
  lblFiltro.Caption:='Visualizando TODOS OS REGISTROS';
  dbCliente.Refresh;
end;

procedure TfrmCliente.Label34Click(Sender: TObject);
begin
    if not frmMenu.Acesso('Tabelas') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.tag:=4;
    frmCadastro.Show;
end;

procedure TfrmCliente.dbServicoCMBeforeInsert(DataSet: TDataSet);
begin
    if dbClienteAud.RecordCount=0 then
    begin
        ShowMessage('Nenhum cliente de auditoria vinculado');
        abort;
    end;
end;

procedure TfrmCliente.dbServicoCEBeforeInsert(DataSet: TDataSet);
begin
    if dbClienteAud.RecordCount=0 then
    begin
        ShowMessage('Nenhum cliente de auditoria vinculado');
        abort;
    end;    
end;

procedure TfrmCliente.dbServicoPMFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoPMMedEnf.value='M';
end;

procedure TfrmCliente.dbServicoPEFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbServicoPEMedEnf.value='E';
end;

procedure TfrmCliente.dbServicoPMBeforePost(DataSet: TDataSet);
begin
    if dbServicoPMServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
{    if dbServicoPMValor.value=0 then  // pode não pagar determinado servico
    begin
        ShowMessage('Valor inválido');
        abort;
    end;}
    if dbServicoPMValor.value=dbServicoPMValorBasico.value then
    begin
        ShowMessage('Preço igual a tabela Geral de Serviço'+#13+
                    'Não ha necessidade de cadastro');
        dbServicoPM.Cancel;
        abort;
    end;
    if not dbClienteAudBusca.Locate('CGC',dbServicoPMClienteCGC.value,[]) then
    begin
        ShowMessage('Cliente não vinculado aos Clientes de Auditoria');
        dbServicoPM.Cancel;
        abort;
    end;
    if (dbServicoPMServico.value='MIN') or
       (dbServicoPMServico.value='FXP') or
       (dbServicoPMServico.value='FIX') then
       dbServicoPMHospital.value:=0;
end;

procedure TfrmCliente.dbServicoPEBeforePost(DataSet: TDataSet);
begin
    if dbServicoPEServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
{    if dbServicoPEValor.value=0 then  //pode-se não pagar determinado servico
    begin
        ShowMessage('Valor inválido');
        abort;
    end;}
    if dbServicoPEValor.value=dbServicoPEValorBasico.value then
    begin
        ShowMessage('Preço igual a tabela Geral de Serviço'+#13+
                    'Não ha necessidade de cadastro');
        dbServicoPE.Cancel;
        abort;
    end;
    if not dbClienteAudBusca.Locate('CGC',dbServicoPEClienteCGC.value,[]) then
    begin
        ShowMessage('Cliente não vinculado aos Clientes de Auditoria');
        dbServicoPE.Cancel;
        abort;
    end;
    if (dbServicoPEServico.value='MIN') or
       (dbServicoPEServico.value='FIX') or
       (dbServicoPEServico.value='FXP') then
       dbServicoPEHospital.value:=0;

end;

procedure TfrmCliente.dbServicoPMAfterInsert(DataSet: TDataSet);
begin
    dbServicoPMPrestador.value:=dbClienteCliFor.value;
    dbServicoPMAuditor.value:=dbMedicoAuditor.value;
    dbServicoPMMedEnf.value:='M';
    dbServicoPMCliente.value:=0;
    dbServicoPMHospital.value:=0;
    dbServicoPMValor.value:=0;
end;

procedure TfrmCliente.dbServicoPEAfterInsert(DataSet: TDataSet);
begin
    dbServicoPEPrestador.value:=dbClienteCliFor.value;
    dbServicoPEAuditor.value:=dbEnfermeiroEnfermeiro.value;
    dbServicoPEMedEnf.value:='E';
    dbServicoPECliente.value:=0;
    dbServicoPEHospital.value:=0;
    dbServicoPEValor.value:=0;
end;

procedure TfrmCliente.cmdNovoPMClick(Sender: TObject);
begin
    dbServicoPM.Insert;
    grdServicoPM.SetFocus;
end;

procedure TfrmCliente.cmdGravaPMClick(Sender: TObject);
begin
    dbServicoPM.Post;
end;

procedure TfrmCliente.cmdExcluiPMClick(Sender: TObject);
begin
    dbServicoPM.Delete;
end;

procedure TfrmCliente.dsServicoPMStateChange(Sender: TObject);
begin
     cmdNovoPM.Enabled:=dbServicoPM.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiPM.Enabled:=(dbServicoPM.Active=true) and
                         (dbServicoPM.RecordCount<>0);
     cmdGravaPM.Enabled:=dbServicoPM.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.cmdNovoPEClick(Sender: TObject);
begin
    dbServicoPE.Insert;
    grdServicoPE.SetFocus;
end;

procedure TfrmCliente.cmdGravaPEClick(Sender: TObject);
begin
    dbServicoPE.Post;
end;

procedure TfrmCliente.cmdExcluiPEClick(Sender: TObject);
begin
    dbServicoPE.Delete;
end;

procedure TfrmCliente.dsServicoPEStateChange(Sender: TObject);
begin
     cmdNovoPE.Enabled:=dbServicoPE.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiPE.Enabled:=(dbServicoPE.Active=true) and
                         (dbServicoPE.RecordCount<>0);
     cmdGravaPE.Enabled:=dbServicoPE.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.qryServCCalcFields(DataSet: TDataSet);
begin
    if qryServCMedEnf.value='M' then
        qryServCMedEnfTexto.value:='Médicos';
    if qryServCMedEnf.value='E' then
        qryServCMedEnfTexto.value:='Enfermeiros';
end;

procedure TfrmCliente.cmdImpCClick(Sender: TObject);
begin
    qryServC.Close;
    qryServC.Open;
    if qryServc.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    frmMenu.rvFin.SelectReport('relServC',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCliente.cmdImpPClick(Sender: TObject);
begin
    qryServP.Close;
    qryServP.SQL.Text:='Select * from ClienteServP,Clientes,BBaud.dbo.Auditores '+
                        'where ClienteServP.Prestador=Clientes.CliFor and '+
                        '      ClienteServP.Auditor=BBAud.dbo.Auditores.Auditor and '+
                        '      ClienteSErvP.MedEnf='+QuotedStr('M')+' and '+
                        '      BBAud.dbo.Auditores.DataFim is null '+
                        'order by Clientes.Nome,BBAud.dbo.Auditores.Nome,Prestador,ClienteServP.Cliente,Hospital,Servico';

    qryServP.Open;
    if qryServP.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    frmMenu.rvFin.SetParam('Titulo','*** Médicos ***');
    frmMenu.rvFin.SelectReport('relServP',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCliente.BitBtn1Click(Sender: TObject);
begin
    qryServP.Close;
    qryServP.SQL.Text:='Select * from ClienteServP,Clientes,BBaud.dbo.Enfermeiros '+
                        'where ClienteServP.Prestador=Clientes.CliFor and '+
                        '      ClienteServP.Auditor=BBAud.dbo.Enfermeiros.Enfermeiro and '+
                        '      ClienteSErvP.MedEnf='+QuotedStr('E')+' and '+
                        '      BBAud.dbo.Enfermeiros.DataFim is null '+
                        'order by Clientes.Nome,BBAud.dbo.Enfermeiros.Nome,Prestador,ClienteServP.Cliente,Hospital,Servico';

    qryServP.Open;
    if qryServP.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    frmMenu.rvFin.SetParam('Titulo','*** Enfermeiros ***');
    frmMenu.rvFin.SelectReport('relServP',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCliente.dbClienteServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteServicoStatuscli.value=true;
end;

procedure TfrmCliente.dbClienteCobBeforePost(DataSet: TDataSet);
begin
    if dbClienteCobServico.value='' then
    begin
        ShowMessage('Serviço inválido');
        abort;
    end;
    if dbClienteCobValor.value=0 then
    begin
        ShowMessage('Valor inválido');
        abort;
    end;
end;

procedure TfrmCliente.dbClienteCobAfterInsert(DataSet: TDataSet);
begin
    dbClienteCobCliente.value:=dbClienteCliFor.value;
    dbClienteCobValor.value:=0;
end;

procedure TfrmCliente.cmdNovoCobClick(Sender: TObject);
begin
    dbClienteCob.Insert;
    grdClienteCob.SetFocus;
end;

procedure TfrmCliente.cmdGravaCobClick(Sender: TObject);
begin
    dbClienteCob.Post;
end;

procedure TfrmCliente.cmdExcluicobClick(Sender: TObject);
begin
    dbClienteCob.Delete;
end;

procedure TfrmCliente.dsClienteCobStateChange(Sender: TObject);
begin
     cmdNovoCob.Enabled:=dbClienteCob.State in [dsBrowse];
     cmdExcluiCob.Enabled:=(dbClienteCob.Active=true) and
                         (dbClienteCob.RecordCount<>0);
     cmdGravaCob.Enabled:=dbClienteCob.State in [dsEdit,dsInsert];
end;

procedure TfrmCliente.BitBtn4Click(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Todos os serviços cadastrados  serão apagados e reincludios.Confirma?',
        'Cadastro Serviços',mb_YesNo);
    if i=idno then abort;

    while not dbClienteCob.eof do
        dbClienteCob.delete;

    dbServico.first;
    while not dbServico.eof do
    begin
        if dbServicoValorizado.value=true then
        begin
            dbClienteCob.Insert;
            dbClienteCobServico.value:=dbServicoServico.value;
            dbClienteCobValor.value:=10;
            dbclientecob.Post;
        end;
        dbServico.Next;
    end;
end;

procedure TfrmCliente.dbClienteAfterPost(DataSet: TDataSet);
begin
    frmMenu.Log('Clientes/Fornecedores','CodCliente',dbClienteCliFor.value,0,dbClienteNome.value,'I')
end;

procedure TfrmCliente.dbClienteBeforeDelete(DataSet: TDataSet);
begin
    frmMenu.Log('Clientes/Fornecedores','CodCliente',dbClienteCliFor.value,0,dbClienteNome.value,'E')
end;

procedure TfrmCliente.BitBtn2Click(Sender: TObject);
begin
    if dbCliente.State in [dsBrowse] then
        dbCliente.Edit;
    dbClienteFilial.value:=0;
end;

procedure TfrmCliente.tabOrdemMChange(Sender: TObject);
begin
    case tabOrdemM.TabIndex of
    0:dbServicoCM.IndexFieldNames:='Cliente;Servico;Hospital;MedEnf';
    1:dbServicoCM.IndexFieldNames:='Cliente;Valor;Servico;Hospital;MedEnf';
    end;
end;

procedure TfrmCliente.tabOrdemEChange(Sender: TObject);
begin
    case tabOrdemE.TabIndex of
    0:dbServicoCE.IndexFieldNames:='Cliente;Servico;Hospital;MedEnf';
    1:dbServicoCE.IndexFieldNames:='Cliente;Valor;Servico;Hospital;MedEnf';
    end;
end;

procedure TfrmCliente.tabOrdemPMChange(Sender: TObject);
begin
    case tabOrdemPM.TabIndex of
    0:dbServicoPM.IndexFieldNames:='Auditor;Servico';
    1:dbServicoPM.IndexFieldNames:='Auditor;Valor;Servico';
    end;
end;

procedure TfrmCliente.tabOrdemPEChange(Sender: TObject);
begin
    case tabOrdemPE.TabIndex of
    0:dbServicoPE.IndexFieldNames:='Auditor;Servico';
    1:dbServicoPE.IndexFieldNames:='Auditor;Valor;Servico';
    end;
end;

procedure TfrmCliente.BitBtn3Click(Sender: TObject);
var i,icodantigo,icodnovo:integer;
var icnpj:string;
begin
    icnpj:=dbClienteCGC.value;
    icodantigo:=dbClienteCliFor.value;
    if icnpj='' then
    begin
        ShowMessage('Cliente não possui CNPJ. Impossivel copiar');
        abort;
    end;

    dbRemoto.SQL.Text:='Select * from Clientes where CGC=:iCGC ';
    dbRemoto.ParamByName('iCGC').value:=icnpj;
    dbRemoto.Open;
    if dbRemoto.RecordCount=0 then
        ShowMessage('Cliente não cadastrado na outra Filial. Confirme a inclusão')
    else
        if dbRemoto.RecordCount=1 then
            ShowMessage('Cliente ja cadastrado na outra Filial. Confirme a atualização (o codigo não será alterado)')
        else
            if dbRemoto.RecordCount>1 then
            begin
                ShowMessage('Mais de um cliente cadastrado na outra filial com este CPNJ. Impossivel atualizar');
                abort;
            end;
    i:=application.messagebox('Confirma a copia do Cliente/Prestador/Fornecedor para a outra filial? '+#13+
                              'Os campos [Filial] e [Banco para pagamento] serão alternados de [1] para [2] e vici-versa',
        'Confirmação da Copia',mb_YesNo);
    if i=idno then abort;

    if dbRemoto.RecordCount=0 then
        dbRemoto.Insert
    else
        dbRemoto.Edit;
    for i:=0 to dbRemoto.FieldCount-1 do
        if (dbRemoto.Fields[i].FieldName<>'CliFor')  then
            dbRemoto.fields[i].assign(dbCliente.fieldbyname(dbRemoto.fields[i].fieldname));
    if dbRemoto.FieldByName('Filial').value=1 then
        dbRemoto.FieldByName('Filial').value:=2
    else
        if dbRemoto.FieldByName('Filial').value=2 then
            dbRemoto.FieldByName('Filial').value:=1;

    if dbRemoto.FieldByName('BancoID').value=1 then
        dbRemoto.FieldByName('BancoID').value:=2
    else
        if dbRemoto.FieldByName('BancoID').value=2 then
            dbRemoto.FieldByName('BancoID').value:=1;

    dbRemoto.FieldByName('DataInclusao').value:=date;
    dbRemoto.FieldByName('Usuario').value:=iUsuario;
    dbRemoto.Post;
    icodnovo:=dbRemoto.FieldbyName('CliFor').value;
//*** Endereco
    if dbEndereco.RecordCount>0 then
    begin
        dbRemoto.SQL.Text:='Delete from ClienteEnd where Cliente=:icli ';
        dbRemoto.ParamByName('icli').value:=icodnovo;
        dbRemoto.Execute;
        dbRemoto.SQL.Text:='Select * from ClienteEnd where Cliente=:icli ';
        dbRemoto.Open;

        dbEndereco.First;
        while not dbEndereco.Eof do
        begin
            dbRemoto.Insert;
            for i:=0 to dbRemoto.FieldCount-1 do
                dbRemoto.fields[i].assign(dbEndereco.fieldbyname(dbRemoto.fields[i].fieldname));
            dbRemoto.FieldByName('Cliente').value:=icodnovo;
            dbRemoto.Post;
            dbEndereco.Next;
        end;
    end;
//*** Contato
    if dbContato.RecordCount>0 then
    begin
        dbRemoto.SQL.Text:='Delete from ClienteCtt where Cliente=:icli ';
        dbRemoto.ParamByName('icli').value:=icodnovo;
        dbRemoto.Execute;
        dbRemoto.SQL.Text:='Select * from ClienteCtt where Cliente=:icli ';
        dbRemoto.Open;

        dbContato.First;
        while not dbContato.Eof do
        begin
            dbRemoto.Insert;
            for i:=0 to dbRemoto.FieldCount-1 do
                dbRemoto.fields[i].assign(dbContato.fieldbyname(dbRemoto.fields[i].fieldname));
            dbRemoto.FieldByName('Cliente').value:=icodnovo;
            dbRemoto.Post;
            dbContato.Next;
        end;
    end;
    ShowMessage('Cliente copiado com sucesso');
end;


end.


