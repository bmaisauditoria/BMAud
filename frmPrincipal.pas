unit frmPrincipal;

interface     

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  StdCtrls, Buttons, DBCtrls, ImgList, ComCtrls,
  ToolWin, RpRenderPDF, RpRender, RpRenderHTML, RpBase, RpSystem, RpDefine,
  RpRave, RpFiler, RpRenderRTF, RpRenderText, RpCon, ExcelExport, Variants,
  NetGradient, WinSkinData, DASQLMonitor, MSSQLMonitor, Grids, DBGrids,
  scExcelExport;

type
  TfrmMenu = class(TForm)
    mnuMenu: TMainMenu;
    HomeCare1: TMenuItem;
    Tabelas1: TMenuItem;
    AdmSistema1: TMenuItem;
    Sobre1: TMenuItem;
    ControledeAcesso1: TMenuItem;
    Proprietria1: TMenuItem;
    Sair1: TMenuItem;
    barPrincipal: TToolBar;
    butHospital: TToolButton;
    butEstatistica: TToolButton;
    lkuUsuario: TDBLookupComboBox;
    lblSenha: TEdit;
    cmdSenha: TBitBtn;
    dsUsuario: TDataSource;
    dbAcesso: TMSTable;
    dbAcessoUsuario: TStringField;
    dbAcessoModulo: TStringField;
    dbAcessoGravacao: TBooleanField;
    dsAcesso: TDataSource;
    cmdSenhaok: TBitBtn;
    Pacientes1: TMenuItem;
    Relatrios1: TMenuItem;
    N1: TMenuItem;
    mnuCorrecao: TMenuItem;
    dadosaud: TMSConnection;
    PrAnalise1: TMenuItem;
    butSair: TToolButton;
    EstatsticasHospital1: TMenuItem;
    N1PrAnlisePorPacientecomdiagnstico1: TMenuItem;
    N2PrAnalisePorPaciente1: TMenuItem;
    N3EstudoGerencialdeDesempenhodaAuditoria1: TMenuItem;
    N4EvoluodosCustosporRegio1: TMenuItem;
    N5ComparativomsanteriorporHospital1: TMenuItem;
    N1AnliseporHospital1: TMenuItem;
    N2EvoluodosCustosporRegio1: TMenuItem;
    N7RepresentatividadedeContasacimadexxx1: TMenuItem;
    N8ProdutividadedeMdicosEnfermeiras1: TMenuItem;
    butEnvio: TToolButton;
    RvBBAuditoria: TRvProject;
    RvSystem: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    N9Pacientescommaisdeumainternao1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    mnuHomeCareC: TMenuItem;
    mnuHomeCareD: TMenuItem;
    ProdutividadeFuncionrios1: TMenuItem;
    ACustosporTipodeInternao1: TMenuItem;
    BDiariasporTipodeAcomodao1: TMenuItem;
    CCustosporCID1: TMenuItem;
    DCustosporAMB1: TMenuItem;
    AEstatisticasdeDirias1: TMenuItem;
    BEstatsticasporTipodeInternao1: TMenuItem;
    CEstatsticasporCIDPrincipal1: TMenuItem;
    DEstatsticasporProcedimento1: TMenuItem;
    N2QtdDiriasporTipo1: TMenuItem;
    N21: TMenuItem;
    N2DesempenhodeanliseporHospitalCIDPrincipal1: TMenuItem;
    N2DesempenhodeanliseporHospitalProcedimento1: TMenuItem;
    butRetorno: TToolButton;
    N3DiriasCalculadasDiriasApontadas1: TMenuItem;
    Estatsticas1: TMenuItem;
    Retorno1: TMenuItem;
    EDistribuioPercentualporHospital1: TMenuItem;
    FDistribuioPercentualporCIDPrincipal1: TMenuItem;
    GControledeVisitas1: TMenuItem;
    H1: TMenuItem;
    IRelaoPacientesAuditadosVisitas1: TMenuItem;
    JEstudoGerencialdeDesempenhodeAuditoriaporInternaa1: TMenuItem;
    KDistribuiodovalorpagoporCentrodeCusto1: TMenuItem;
    LInternaesporSexoeFaixaEtaria1: TMenuItem;
    Remessa1: TMenuItem;
    Log1: TMenuItem;
    LSenhasDuplicadas1: TMenuItem;
    MControledePacientesporCilente1: TMenuItem;
    MMediaMensaldePacientesporHospitalCliente1: TMenuItem;
    Produtividade1: TMenuItem;
    N0RelatarioBradescoPacotes1: TMenuItem;
    NetGradient1: TNetGradient;
    NetGradient2: TNetGradient;
    ImageList1: TImageList;
    SkinData: TSkinData;
    ToolButton3: TToolButton;
    dbLog: TMSQuery;
    dbLogRegistro: TIntegerField;
    dbLogModulo: TStringField;
    dbLogCliente: TIntegerField;
    dbLogCodigo1: TIntegerField;
    dbLogCodigo2: TIntegerField;
    dbLogCodigo3: TStringField;
    dbLogOperacao: TStringField;
    dbLogUsuario: TStringField;
    dbLogData: TDateTimeField;
    dbLogHora: TDateTimeField;
    dbLogCampos: TStringField;
    ProdutividadeGeral1: TMenuItem;
    MdiaMensalEstatisticas1: TMenuItem;
    dbUsuario: TMSQuery;
    dbUsuarioUsuario: TStringField;
    dbUsuarioNomeUsuario: TStringField;
    dbUsuarioSenha: TStringField;
    dbUsuarioTipo: TStringField;
    dbUsuarioBBAud: TBooleanField;
    dbUsuarioMasterAud: TBooleanField;
    dbUsuarioDataInicio: TDateTimeField;
    dbUsuarioDataFim: TDateTimeField;
    dbUsuarioUsuarioI: TStringField;
    dbUsuarioDataInclusao: TDateTimeField;
    dbUsuarioUsuarioA: TStringField;
    dbUsuarioDataAlteracao: TDateTimeField;
    dbUsuarioUsuarioE: TStringField;
    dbUsuarioDataExclusao: TDateTimeField;
    cmdAtuUsuario: TBitBtn;
    dbUsuarioBBFin: TBooleanField;
    dbUsuarioMasterFin: TBooleanField;
    dbUsuarioBBAgenda: TBooleanField;
    dbUsuarioMasterAgenda: TBooleanField;
    dbUsuarioBBISO: TBooleanField;
    dbUsuarioMasterISO: TBooleanField;
    dbAcessoTipo: TStringField;
    Label1: TLabel;
    RetornoPS1: TMenuItem;
    ExcelExport: TscExcelExport;
    EstatisticasAtualizaes1: TMenuItem;
    EstatsticasPortoSeguro1: TMenuItem;
    MSSQLMonitor: TMSSQLMonitor;
    PEstatisticasporSenha1: TMenuItem;
    ToolButton4: TToolButton;
    procedure Sobre1Click(Sender: TObject);
    procedure ControledeAcesso1Click(Sender: TObject);
    procedure Proprietria1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdSenhaClick(Sender: TObject);
    procedure cmdSenhaokClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Tabelas1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure mnuCorrecaoClick(Sender: TObject);
    procedure N1PrAnlisePorPacientecomdiagnstico1Click(Sender: TObject);
    procedure N2PrAnalisePorPaciente1Click(Sender: TObject);
    procedure N3EstudoGerencialdeDesempenhodaAuditoria1Click(
      Sender: TObject);
    procedure N4EvoluodosCustosporRegio1Click(Sender: TObject);
    procedure N5ComparativomsanteriorporHospital1Click(Sender: TObject);
    procedure N1AnliseporHospital1Click(Sender: TObject);
    procedure N2EvoluodosCustosporRegio1Click(Sender: TObject);
    procedure N7RepresentatividadedeContasacimadexxx1Click(
      Sender: TObject);
    procedure N8ProdutividadedeMdicosEnfermeiras1Click(Sender: TObject);
    procedure mnuHomeCareCClick(Sender: TObject);
    procedure mnuHomeCareDClick(Sender: TObject);
    procedure ACustosporTipodeInternao1Click(Sender: TObject);
    procedure BDiariasporTipodeAcomodao1Click(Sender: TObject);
    procedure CCustosporCID1Click(Sender: TObject);
    procedure DCustosporAMB1Click(Sender: TObject);
    procedure N2QtdDiriasporTipo1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N2DesempenhodeanliseporHospitalCIDPrincipal1Click(
      Sender: TObject);
    procedure N2DesempenhodeanliseporHospitalProcedimento1Click(
      Sender: TObject);
    procedure N3DiriasCalculadasDiriasApontadas1Click(Sender: TObject);
    procedure Estatsticas1Click(Sender: TObject);
    procedure Retorno1Click(Sender: TObject);
    procedure EDistribuioPercentualporHospital1Click(Sender: TObject);
    procedure FDistribuioPercentualporCIDPrincipal1Click(Sender: TObject);
    procedure GControledeVisitas1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure IRelaoPacientesAuditadosVisitas1Click(Sender: TObject);
    procedure JEstudoGerencialdeDesempenhodeAuditoriaporInternaa1Click(
      Sender: TObject);
    procedure KDistribuiodovalorpagoporCentrodeCusto1Click(
      Sender: TObject);
    procedure LInternaesporSexoeFaixaEtaria1Click(Sender: TObject);
    procedure Remessa1Click(Sender: TObject);
    procedure Log1Click(Sender: TObject);
    procedure LSenhasDuplicadas1Click(Sender: TObject);
    procedure MControledePacientesporCilente1Click(Sender: TObject);
    procedure MMediaMensaldePacientesporHospitalCliente1Click(
      Sender: TObject);
    procedure Produtividade1Click(Sender: TObject);
    procedure N0RelatarioBradescoPacotes1Click(Sender: TObject);
    procedure N9Pacientescommaisdeumainternao1Click(Sender: TObject);
    procedure ProdutividadeGeral1Click(Sender: TObject);
    procedure MdiaMensalEstatisticas1Click(Sender: TObject);
    procedure cmdAtuUsuarioClick(Sender: TObject);
    procedure dbAcessoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure RetornoPS1Click(Sender: TObject);
    procedure EstatisticasAtualizaes1Click(Sender: TObject);
    procedure EstatsticasPortoSeguro1Click(Sender: TObject);
    procedure PEstatisticasporSenha1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
     function Acesso(iModulo: string):boolean;
     function Log(xModulo: string; xcliente:integer; xCampo:string; xCodigo1:integer;xCodigo2:integer;xCodigo3:string;xOperacao:string):boolean;
  end;

var
  frmMenu: TfrmMenu;
  iUsuario,iDir, _Empresa:string;
  iMaster:boolean;

implementation

uses frmSobres, frmSenhas, frmProprietarias, frmCadastros, frmPacientes,
   frmCorrecaos,  frmPreAnalises,  frmRelEstatisticasHospital,
  frmRelEstatisticasPacienteH,  frmRelEstatisticasPaciente,
  frmRelEvolucaoCustosR,  frmRelComparativosMes, frmRelAnalisesAmbPS,
  frmRelEvolucaoCustosRPS,   frmRelRepresentatividadeContas,
  frmRelProdutividadesME,   frmHomeCareNovos,
  frmRelCustosTipoInternacao,  frmRelProdutividadeFuncionarios, 
  frmRelDesempenhosCid, frmRelCustosAmb, frmRelCustosDiaria, frmRetornosHI,
  frmRelDistribuicaoHospitais, frmRelDistribuicaoCIDs,
  frmRelControleVisitas, frmRelSumarioVisitas, frmRelRelacaoAuditorias,
  frmRelEstatisticasHospitalInt, frmRelDistribuicaoValoresCC,
  frmRelInternacoesFE, frmRemessasHI, frmLogs, frmRelSenhasDuplicadas,
  frmRelControlePaciente, frmRelMediaCapeante, frmProdutividades,
  frmRelBradescoPacotes, dmRelatorios, frmRelPacientesHospital,
  frmRelProdsFunMensal, frmRetornosPS, frmPreAnalisesAtu,
  frmPreAnaliseLight, frmRelSenhas, frmRelProdutividades;

{$R *.DFM}

function Encrypt( Senha:String ): String;
Const
    Chave : String = 'Jesus';
Var
    x,y : Integer;
    NovaSenha : String;
begin
   for x := 1 to Length( Chave ) do begin
      NovaSenha := '';
      for y := 1 to Length( Senha ) do
         NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
      Senha := NovaSenha;
   end;
   result := Senha;
end;

function TfrmMenu.Acesso(iModulo: string):boolean;
var iOk: boolean;
begin
     iOk:=false;
     if lkuUsuario.Enabled=true then
     begin
        ShowMessage('Acesso não Permitido!');
        iOk:=false;
     end
     else
     begin
         if dbUsuarioUsuario.Text='Convidado' then
         begin
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
            begin
               ShowMessage('Usuario [Convidado]. Acesso não Permitido!');
                iOk:=false;
            end;
         end
         else
         begin
            if dbUsuarioMasterAud.Value=true then
               iOk:=true
            else
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
               begin
                  ShowMessage('Acesso não Permitido!');
                  Log('Acesso NP',0,'',0,0,'','A');
                  iOk:=false;
               end
               else
                  iOk:=true;
         end;
     end;
     Result:=iok;
end;

function TfrmMenu.Log(xModulo: string;
                      xcliente:integer;
                      xCampo:string;
                      xCodigo1:integer;
                      xCodigo2:integer;
                      xCodigo3:string;
                      xOperacao:string):boolean;
begin
try
    dbLog.Insert;
    dbLogModulo.value:=xModulo;
    dbLogCliente.value:=xCliente;
    dbLogCampos.value:=xCampo;
    dbLogCodigo1.value:=xCodigo1;
    dbLogCodigo2.value:=xCodigo2;
    dbLogCodigo3.value:=xCodigo3;
    dbLogOperacao.value:=xOperacao;
    dbLogUsuario.value:=iUsuario;
    dbLogData.value:=date;
    dbLogHora.value:=time;
    dbLog.Post;
    Result:=true;
except
    ShowMessage('Houve uma falha ao tentar gravar o Log desta operaçao');
    Result:=false;
end;
end;


procedure TfrmMenu.Sobre1Click(Sender: TObject);
begin
    if frmSobre=nil then
      Application.CreateForm(TfrmSobre, frmSobre);
    frmSobre.ShowModal;
end;

procedure TfrmMenu.ControledeAcesso1Click(Sender: TObject);
begin
    if dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if frmSenha=nil then
       Application.CreateForm(TfrmSenha, frmSenha);
    frmSenha.ShowModal;
end;

procedure TfrmMenu.Proprietria1Click(Sender: TObject);
begin
    if frmProprietaria=nil then
       Application.CreateForm(TfrmProprietaria, frmProprietaria);
    frmProprietaria.ShowModal;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Deseja realmente sair?',
     'Aviso', mb_yesno+ mb_iconExclamation);
     if(iResultado=id_no) then abort;

     if iUsuario<>'Convidado' then
         Log('Fim de Sessão',0,'',0,0,'','S');
     rvBBAuditoria.Close;
     Application.Terminate;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
var iservidor:Tstringlist;
var iconexao,idirSql:string;
begin
   Top:=0;
   Left:=0;
   Screen.Cursor := crHourGlass;
   Align:=alTop;
   CurrencyString:='R$';
   CurrencyFormat:=0; //simbolo a esquerda
   ThousandSeparator:='.';
   DecimalSeparator:=',';
   ShortDateFormat:='dd/mm/yyyy';
   LongMonthNames[1]:='Janeiro';
   LongMonthNames[2]:='Fevereiro';
   LongMonthNames[3]:='Março';
   LongMonthNames[4]:='Abril';
   LongMonthNames[5]:='Maio';
   LongMonthNames[6]:='Junho';
   LongMonthNames[7]:='Julho';
   LongMonthNames[8]:='Agosto';
   LongMonthNames[9]:='Setembro';
   LongMonthNames[10]:='Outubro';
   LongMonthNames[11]:='Novembro';
   LongMonthNames[12]:='Dezembro';
   LongDateFormat:='dd mmmm yyyy';

   iDir:=ExtractFilePath(Application.ExeName);
   iservidor:=tstringlist.create;
   iservidor.clear;
   Screen.Cursor := crHourGlass;
   iservidor.Text:=idirsql;

    if not FileExists(idirSql+'servidor.ini') then
    begin
        ShowMessage('Identificação do Servidor não encontrada');
        abort;
    end
    else iServidor.LoadFromFile(idirSql+'servidor.ini');
        iconexao:='Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;'+
              'Data Source='+iservidor.values['SERVIDOR']+';'+
              'Initial Catalog=BBAud;'+
              'Persist Security Info=True';

//Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;
//Data Source=ANDROS-VOSTRO\SQLEXPRESS;Initial Catalog=BBAud;Persist Security Info=True
   try
      dadosaud.ConnectString:=iconexao;
      dadosaud.Connected:=true;

      _Empresa:='B+ Auditoria Médica';
     rvBBAuditoria.ProjectFile:=idir+'\BBAud-SQL.rav';
     rvBBAuditoria.Open;

      dbUsuario.Open;
      dbUsuario.Locate('Usuario','Convidado',[]);
      iUsuario:=dbUsuarioUsuario.Text;
      iMaster:=dbUsuarioMasterAud.Value;
      dbAcesso.Open;
      dbLog.SQL.Text:='Select * from Log where Data=:iData ';
      dbLog.ParamByName('iData').asdate:=date;
      dbLog.Open;

   finally
     Application.CreateForm(TdmRelatorio, dmRelatorio);
     Screen.Cursor := crDefault;
     lkuUsuario.KeyValue:='Convidado';
     lkuUsuario.Enabled:=false;
     lblSenha.Enabled:=false;
     cmdSenhaok.Visible:=false;
   end;
end;

procedure TfrmMenu.cmdSenhaClick(Sender: TObject);
begin
//     if assigned(frmPreAnalise ) then
//        abort;

     lkuUsuario.Enabled:=true;
     lblSenha.Enabled:=true;
     cmdSenha.Visible:=false;
     cmdSenhaok.Visible:=true;
     lkuUsuario.SetFocus;
end;

procedure TfrmMenu.cmdSenhaokClick(Sender: TObject);
var iSenha:string;
begin
     dbUsuario.Refresh;
     dbAcesso.Refresh;
     dbUsuario.Locate('Usuario',lkuUsuario.KeyValue,[]);
     iSenha:=Encrypt(dbUsuarioSenha.Text);

     if dbUsuarioUsuario.value='Convidado' then
     begin
        ShowMessage('Usuário [Convidado] não possui senha');
        Log('Senha inválida',0,'',0,0,'','A');
        dbUsuario.Locate('Usuario','Convidado',[]);
     end
     else
         if iSenha<>lblSenha.Text then
         begin
            ShowMessage('Senha inválida!');
            Log('Senha inválida',0,'',0,0,'','A');
            dbUsuario.Locate('Usuario','Convidado',[]);
        end;
     iUsuario:=dbUsuarioUsuario.Text;
     iMaster:=dbUsuarioMasterAud.Value;
     lkuUsuario.Enabled:=false;
     lblSenha.Text:='';
     lblSenha.Enabled:=false;
     cmdSenha.Visible:=true;
     cmdSenhaok.Visible:=false;
     Log('Início de Sessão',0,'',0,0,'','S');
end;

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dbUsuario.Close;
     dbAcesso.Close;
     dbLog.Close;
     rvBBAuditoria.Close;
end;

procedure TfrmMenu.Tabelas1Click(Sender: TObject);
begin
    if not Acesso('Tabelas') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.tag:=0;
    frmCadastro.Show;
end;

procedure TfrmMenu.Pacientes1Click(Sender: TObject);
begin
    if not Acesso('Pacientes') then
       abort;
    if frmPaciente=nil then
       Application.CreateForm(TfrmPaciente, frmPaciente);
    frmPaciente.Show;
end;

procedure TfrmMenu.mnuCorrecaoClick(Sender: TObject);
begin
    if not iMaster then
    begin
        ShowMessage('Acesso apenas para usuários Master');
        abort;
    end;
    if frmCorrecao=nil then
       Application.CreateForm(TfrmCorrecao, frmCorrecao);
    frmCorrecao.Show;
end;

procedure TfrmMenu.N1PrAnlisePorPacientecomdiagnstico1Click(
  Sender: TObject);
begin
    if frmRelEstatisticaPacienteH=nil then
       Application.CreateForm(TfrmRelEstatisticaPacienteH, frmRelEstatisticaPacienteH);
    frmRelEstatisticaPacienteH.ShowModal;
end;

procedure TfrmMenu.N2PrAnalisePorPaciente1Click(Sender: TObject);
begin
    if frmRelEstatisticaPaciente=nil then
       Application.CreateForm(TfrmRelEstatisticaPaciente, frmRelEstatisticaPaciente);
    frmRelEstatisticaPaciente.ShowModal;
end;

procedure TfrmMenu.N3EstudoGerencialdeDesempenhodaAuditoria1Click(
  Sender: TObject);
begin
  if frmRelEstatisticaHospital=nil then
     Application.CreateForm(TfrmRelEstatisticaHospital, frmRelEstatisticaHospital);
  frmRelEstatisticaHospital.ShowModal;
end;

procedure TfrmMenu.N4EvoluodosCustosporRegio1Click(Sender: TObject);
begin
    if frmRelEvolucaoCustoR=nil then
       Application.CreateForm(TfrmRelEvolucaoCustoR, frmRelEvolucaoCustoR);
    frmRelEvolucaoCustoR.ShowModal;
end;

procedure TfrmMenu.N5ComparativomsanteriorporHospital1Click(
  Sender: TObject);
begin
  if frmRelComparativoMes=nil then
     Application.CreateForm(TfrmRelComparativoMes, frmRelComparativoMes);
  frmRelComparativoMes.ShowModal;
end;


procedure TfrmMenu.N1AnliseporHospital1Click(Sender: TObject);
begin
    if frmRelAnaliseAmbPS=nil then
       Application.CreateForm(TfrmRelAnaliseAmbPS, frmRelAnaliseAmbPS);
    frmRelAnaliseAmbPS.ShowModal;
end;

procedure TfrmMenu.N2EvoluodosCustosporRegio1Click(Sender: TObject);
begin
    if frmRelEvolucaoCustoRPS=nil then
       Application.CreateForm(TfrmRelEvolucaoCustoRPS, frmRelEvolucaoCustoRPS);
    frmRelEvolucaoCustoRPS.ShowModal;
end;

procedure TfrmMenu.N7RepresentatividadedeContasacimadexxx1Click(
  Sender: TObject);
begin
  if frmRelRepresentatividadeConta=nil then
     Application.CreateForm(TfrmRelRepresentatividadeConta, frmRelRepresentatividadeConta);
  frmRelRepresentatividadeConta.ShowModal;
end;

procedure TfrmMenu.N8ProdutividadedeMdicosEnfermeiras1Click(
  Sender: TObject);
begin
    if frmRelProdutividadeME=nil then
        Application.CreateForm(TfrmRelProdutividadeME, frmRelProdutividadeME);
    frmRelProdutividadeME.ShowModal;
end;

procedure TfrmMenu.mnuHomeCareCClick(Sender: TObject);
begin
    if not Acesso('Auditoria Home-Care') then
       abort;
    if frmHomeCareNovo=nil then
        Application.CreateForm(TfrmHomeCareNovo, frmHomeCareNovo);
    if frmHomeCareNovo.Showing then
    begin
        ShowMessage('Feche o Home Care em exibição');
        abort;
    end;
    frmHomeCareNovo.tag:=0;
    frmHomeCareNovos.iTipo:='C';
    frmHomeCareNovo.Caption:='Home Care Clínicas';
    frmHomeCareNovo.Show;
end;

procedure TfrmMenu.mnuHomeCareDClick(Sender: TObject);
begin
    if not Acesso('Auditoria Home-Care') then
       abort;
    if frmHomeCareNovo=nil then
        Application.CreateForm(TfrmHomeCareNovo, frmHomeCareNovo);
    if frmHomeCareNovo.Showing then
    begin
        ShowMessage('Feche o Home Care em exibição');
        abort;
    end;
    frmHomeCareNovo.tag:=1;
    frmHomeCareNovos.iTipo:='D';
    frmHomeCareNovo.Caption:='Home Care Domiciliar';
    frmHomeCareNovo.Show;
end;

procedure TfrmMenu.ACustosporTipodeInternao1Click(Sender: TObject);
begin
  if frmRelCustoTipoInternacao=nil then
     Application.CreateForm(TfrmRelCustoTipoInternacao, frmRelCustoTipoInternacao);
  frmRelCustoTipoInternacao.tag:=1;
  frmRelCustoTipoInternacao.Caption:='Desempenho por Internação/Hospital';
  frmRelCustoTipoInternacao.ShowModal;
end;

procedure TfrmMenu.BDiariasporTipodeAcomodao1Click(Sender: TObject);
begin
    if frmRelCustoTipoInternacao=nil then
        Application.CreateForm(TfrmRelCustoTipoInternacao, frmRelCustoTipoInternacao);
    frmRelCustoTipoInternacao.tag:=2;
    frmRelCustoTipoInternacao.Caption:='Qtd. Diarias por de Acomodação';
    frmRelCustoTipoInternacao.ShowModal;
end;

procedure TfrmMenu.N2QtdDiriasporTipo1Click(Sender: TObject);
begin
    if frmRelCustoTipoInternacao=nil then
        Application.CreateForm(TfrmRelCustoTipoInternacao, frmRelCustoTipoInternacao);
    frmRelCustoTipoInternacao.tag:=3;
    frmRelCustoTipoInternacao.Caption:='Representatividade UTI e Day Clinic';
    frmRelCustoTipoInternacao.ShowModal;
end;

procedure TfrmMenu.CCustosporCID1Click(Sender: TObject);
begin
  if frmRelDesempenhoCid=nil then
       Application.CreateForm(TfrmRelDesempenhoCid, frmRelDesempenhoCid);
  frmRelDesempenhoCid.tag:=1;
  frmRelDesempenhoCid.Caption:='Desempenho por CID/Hospital';
  frmRelDesempenhoCid.cmdImp.Left:=141;
  frmRelDesempenhoCid.cmdImp.Caption:='Imprimir';
  frmRelDesempenhoCid.cmpImp1.Visible:=false;
  frmRelDesempenhoCid.ShowModal;
end;

procedure TfrmMenu.N2DesempenhodeanliseporHospitalCIDPrincipal1Click(
  Sender: TObject);
begin
  if frmRelDesempenhoCid=nil then
       Application.CreateForm(TfrmRelDesempenhoCid, frmRelDesempenhoCid);
  frmRelDesempenhoCid.tag:=2;
  frmRelDesempenhoCid.Caption:='Desempenho por Hospital/CID';
  frmRelDesempenhoCid.cmdImp.Left:=80;
  frmRelDesempenhoCid.cmdImp.Caption:='Demonstrativo';
  frmRelDesempenhoCid.cmpImp1.Visible:=true;
  frmRelDesempenhoCid.ShowModal;
end;

procedure TfrmMenu.DCustosporAMB1Click(Sender: TObject);
begin
    if frmRelCustoAmb=nil then
        Application.CreateForm(TfrmRelCustoAmb, frmRelCustoAmb);
    frmRelCustoAmb.tag:=1;
    frmRelCustoAmb.Caption:='Desempenho por Procedimento/Hospital';
    frmRelCustoAmb.ShowModal;
end;

procedure TfrmMenu.N2DesempenhodeanliseporHospitalProcedimento1Click(
  Sender: TObject);
begin
  if frmRelCustoAmb=nil then
     Application.CreateForm(TfrmRelCustoAmb, frmRelCustoAmb);
  frmRelCustoAmb.tag:=2;
  frmRelCustoAmb.Caption:='Desempenho por Hospital/Procedimento';
  frmRelCustoAmb.ShowModal;
end;

procedure TfrmMenu.N21Click(Sender: TObject);
begin
  if frmRelCustoTipoInternacao=nil then
     Application.CreateForm(TfrmRelCustoTipoInternacao, frmRelCustoTipoInternacao);
  frmRelCustoTipoInternacao.tag:=4;
  frmRelCustoTipoInternacao.Caption:='Desempenho por Hospital/Internação';
  frmRelCustoTipoInternacao.ShowModal;
end;


procedure TfrmMenu.N3DiriasCalculadasDiriasApontadas1Click(
  Sender: TObject);
begin
    if frmRelCustoDiaria=nil then
        Application.CreateForm(TfrmRelCustoDiaria, frmRelCustoDiaria);
    frmRelCustoDiaria.ShowModal;
end;

procedure TfrmMenu.Estatsticas1Click(Sender: TObject);
begin
    if not Acesso('Estatísticas') then
       abort;
    if frmPreAnalise=nil then
       Application.CreateForm(TfrmPreAnalise, frmPreAnalise);
    frmPreAnalise.Show;
end;

procedure TfrmMenu.Retorno1Click(Sender: TObject);
begin
    if not Acesso('Retornos') then
       abort;
    if frmRetornoHI=nil  then
        Application.CreateForm(TfrmRetornoHI, frmRetornoHI);
    frmRetornoHI.ShowModal;
end;

procedure TfrmMenu.EDistribuioPercentualporHospital1Click(Sender: TObject);
begin
    if frmRelDistribuicaoHospital=nil then
      Application.CreateForm(TfrmRelDistribuicaoHospital, frmRelDistribuicaoHospital);
    frmRelDistribuicaoHospital.ShowModal;
end;

procedure TfrmMenu.FDistribuioPercentualporCIDPrincipal1Click(
  Sender: TObject);
begin
    if frmRelDistribuicaoCid=nil then
       Application.CreateForm(TfrmRelDistribuicaoCID, frmRelDistribuicaoCID);
    frmRelDistribuicaoCid.ShowModal;
end;

procedure TfrmMenu.GControledeVisitas1Click(Sender: TObject);
begin
    if frmRelControleVisita=nil then
      Application.CreateForm(TfrmRelControleVisita, frmRelControleVisita);
    frmRelControleVisita.ShowModal;
end;

procedure TfrmMenu.H1Click(Sender: TObject);
begin
    if frmRelSumarioVisita=nil then
        Application.CreateForm(TfrmRelSumarioVisita, frmRelSumarioVisita);
    frmRelSumarioVisita.ShowModal;
end;

procedure TfrmMenu.IRelaoPacientesAuditadosVisitas1Click(Sender: TObject);
begin
    if frmRelRelacaoAuditoria=nil then
       Application.CreateForm(TfrmRelRelacaoAuditoria, frmRelRelacaoAuditoria);
    frmRelRelacaoAuditoria.ShowModal;
end;

procedure TfrmMenu.JEstudoGerencialdeDesempenhodeAuditoriaporInternaa1Click(
  Sender: TObject);
begin
    if frmRelEstatisticaHospitalInt=nil then
       Application.CreateForm(TfrmRelEstatisticaHospitalInt, frmRelEstatisticaHospitalInt);
    frmRelEstatisticaHospitalInt.ShowModal;
end;

procedure TfrmMenu.KDistribuiodovalorpagoporCentrodeCusto1Click(
  Sender: TObject);
begin
    if frmRelDistribuicaoValorCC=nil then
        Application.CreateForm(TfrmRelDistribuicaoValorCC, frmRelDistribuicaoValorCC);
    frmRelDistribuicaoValorCC.ShowModal;
end;

procedure TfrmMenu.LInternaesporSexoeFaixaEtaria1Click(Sender: TObject);
begin
   if frmRelInternacaoFE=nil then
       Application.CreateForm(TfrmRelInternacaoFE, frmRelInternacaoFE);
    frmRelInternacaoFE.ShowModal;
end;

procedure TfrmMenu.Remessa1Click(Sender: TObject);
begin
    if not Acesso('Remessas') then
       abort;
    if frmRemessaHI=nil then
          Application.CreateForm(TfrmRemessaHI, frmRemessaHI);
    frmRemessaHI.Show;          
end;

procedure TfrmMenu.Log1Click(Sender: TObject);
begin
    if not iMaster then
    begin
        ShowMessage('Acesso apenas para usuários Master');
        abort;
    end;
    if frmLog=nil then
       Application.CreateForm(TfrmLog, frmLog);
    frmLog.ShowModal;
end;

procedure TfrmMenu.LSenhasDuplicadas1Click(Sender: TObject);
begin
    if frmRelSenhaDuplicada=nil then
        Application.CreateForm(TfrmRelSenhaDuplicada, frmRelSenhaDuplicada);
    frmRelSenhaDuplicada.ShowModal;
end;

procedure TfrmMenu.MControledePacientesporCilente1Click(Sender: TObject);
begin
    if  frmRelControlePacientes=nil then
        Application.CreateForm(TfrmRelControlePacientes, frmRelControlePacientes);
    frmRelControlePacientes.ShowModal;
end;

procedure TfrmMenu.MMediaMensaldePacientesporHospitalCliente1Click(
  Sender: TObject);
begin
    if frmRelMediaCapeantes=nil then
        Application.CreateForm(TfrmRelMediaCapeantes, frmRelMediaCapeantes);
    frmRelMediaCapeantes.ShowModal;
end;

procedure TfrmMenu.Produtividade1Click(Sender: TObject);
begin
    if not Acesso('Produtividade') then
       abort;
    if frmProdutividade=nil then
          Application.CreateForm(TfrmProdutividade, frmProdutividade);
    frmProdutividade.Show;
end;

procedure TfrmMenu.N0RelatarioBradescoPacotes1Click(Sender: TObject);
begin
    if frmRelBradescoPacote=nil then
       Application.CreateForm(TfrmRelBradescoPacote, frmRelBradescoPacote);
     frmRelBradescoPacote.ShowModal;
end;

procedure TfrmMenu.N9Pacientescommaisdeumainternao1Click(Sender: TObject);
begin
    if frmRelPacienteHospital=nil then
       Application.CreateForm(TfrmRelPacienteHospital, frmRelPacienteHospital);
    frmRelPacienteHospital.Showmodal;
end;

procedure TfrmMenu.ProdutividadeGeral1Click(Sender: TObject);
begin
    if dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
  if frmRelProdutividadeFuncionario=nil then
    Application.CreateForm(TfrmRelProdutividadeFuncionario, frmRelProdutividadeFuncionario);
  frmRelProdutividadeFuncionario.ShowModal;
end;

procedure TfrmMenu.MdiaMensalEstatisticas1Click(Sender: TObject);
begin
    if dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if frmRelProdFunMensal=nil then
        Application.CreateForm(TfrmRelProdFunMensal, frmRelProdFunMensal);
    frmrelProdFunMensal.ShowModal;
end;

procedure TfrmMenu.cmdAtuUsuarioClick(Sender: TObject);
begin
    dbUsuario.Refresh;
    dbAcesso.Refresh;
    dbUsuario.Locate('Usuario','Convidado',[]);
    iUsuario:=dbUsuarioUsuario.Text;
    iMaster:=dbUsuarioMasterAud.Value;
    lkuUsuario.KeyValue:='Convidado';
end;

procedure TfrmMenu.dbAcessoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbAcessoTipo.value='A';
end;

procedure TfrmMenu.RetornoPS1Click(Sender: TObject);
begin
    if not Acesso('Retornos') then
       abort;
    if frmRetornoPS=nil then
        Application.CreateForm(TfrmRetornoPS, frmRetornoPS);
    frmRetornoPS.ShowModal;

end;

procedure TfrmMenu.EstatisticasAtualizaes1Click(Sender: TObject);
begin
    if not Acesso('Estatísticas - Atualizações') then
       abort;
    if frmPreAnaliseAtu=nil then
        Application.CreateForm(TfrmPreAnaliseAtu, frmPreAnaliseAtu);
  frmPreAnaliseAtu.ShowModal;
end;

procedure TfrmMenu.EstatsticasPortoSeguro1Click(Sender: TObject);
begin
    if not Acesso('Estatísticas') then
       abort;
    if frmPreAnalisesLight=nil then
        Application.CreateForm(TfrmPreAnalisesLight, frmPreAnalisesLight);
    frmPreAnalisesLight.Show;
end;

procedure TfrmMenu.PEstatisticasporSenha1Click(Sender: TObject);
begin
    if frmRelSenha=nil then
        Application.CreateForm(TfrmRelSenha, frmRelSenha);
    frmRelSenha.ShowModal;
end;

procedure TfrmMenu.ToolButton4Click(Sender: TObject);
begin
    if not iMaster then
    begin
        ShowMessage('Acesso apenas para usuários Master');
        abort;
    end;
    if frmProdutividade=nil then
        Application.CreateForm(TfrmProdutividade, frmProdutividade);
    if frmRelProdutividade=nil then
      Application.CreateForm(TfrmRelProdutividade, frmRelProdutividade);
    frmRelProdutividade.ShowModal;

end;

end.
