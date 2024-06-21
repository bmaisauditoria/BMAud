unit frmPrincipalBR;

interface

uses
  Windows, Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, StdCtrls, Buttons, DBCtrls, ImgList, ComCtrls,
  ToolWin, RpRenderPDF, RpRender, RpRenderHTML, RpBase, RpSystem, RpDefine,
  RpRave, Extenso, ExcelExport, NetGradient,
  pngextra, nExtenso, WinSkinData, ExtCtrls, DASQLMonitor, MSSQLMonitor;

type
  TfrmMenuBR = class(TForm)
    mnuMenu: TMainMenu;
    mnuPagar: TMenuItem;
    mnuConta: TMenuItem;
    Tabelas1: TMenuItem;
    AdmSistema1: TMenuItem;
    Sobre1: TMenuItem;
    mnuSenha: TMenuItem;
    Proprietria1: TMenuItem;
    mnuSair: TMenuItem;
    lkuUsuario: TDBLookupComboBox;
    lblSenha: TEdit;
    cmdSenha: TBitBtn;
    dbUsuario: TMSTable;
    dbUsuarioUsuario: TStringField;
    dbUsuarioNomeUsuario: TStringField;
    dbUsuarioMaster: TBooleanField;
    dbUsuarioSenha: TStringField;
    dsUsuario: TDataSource;
    dbAcesso: TMSTable;
    dbAcessoUsuario: TStringField;
    dbAcessoModulo: TStringField;
    dbAcessoGravacao: TBooleanField;
    dsAcesso: TDataSource;
    cmdSenhaok: TBitBtn;
    mnuReceber: TMenuItem;
    mnuPrev: TMenuItem;
    dadosfin: TMSConnection;
    ToolBar1: TToolBar;
    bntRec: TToolButton;
    btnPagFor: TToolButton;
    btnBanco: TToolButton;
    btnPrev: TToolButton;
    btnCli: TToolButton;
    Pagamentos1: TMenuItem;
    btnPagCLT: TToolButton;
    mnuFluxo: TMenuItem;
    RvFin: TRvProject;
    RvSystem: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    extenso: TExt;
    ImageList1: TImageList;
    dbLog: TMSTable;
    dbLogRegistro: TAutoIncField;
    dbLogModulo: TStringField;
    dbLogCodigo1: TIntegerField;
    dbLogCodigo2: TIntegerField;
    dbLogCodigo3: TStringField;
    dbLogOperacao: TStringField;
    dbLogUsuario: TStringField;
    dbLogCampos: TStringField;
    btnFluxo: TToolButton;
    ExcelExport: TExcelExport;
    NetGradient1: TNetGradient;
    NetGradient2: TNetGradient;
    btnSenha: TToolButton;
    btnSair: TToolButton;
    SkinData1: TSkinData;
    mnuFor: TMenuItem;
    mnuCLT: TMenuItem;
    mnuPre: TMenuItem;
    btnPagPre: TToolButton;
    btnCadPre: TToolButton;
    mnuTab: TMenuItem;
    btnTab: TToolButton;
    MSSQLMonitor: TMSSQLMonitor;
    N1FluxodeCaixa1: TMenuItem;
    N2RelatriodeFluxodeCaixa1: TMenuItem;
    btnReclassficacao: TToolButton;
    N1ContaCorrente1: TMenuItem;
    N2ReclassificaoBancria1: TMenuItem;
    dbLogData: TDateTimeField;
    ConsultaLog1: TMenuItem;
    dbLogHora: TDateTimeField;
    ToolButton1: TToolButton;
    mnuGrafico: TMenuItem;
    dadosaud: TMSConnection;
    procedure Sobre1Click(Sender: TObject);
    procedure mnuSenhaClick(Sender: TObject);
    procedure Proprietria1Click(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdSenhaClick(Sender: TObject);
    procedure cmdSenhaokClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuCliClick(Sender: TObject);
    procedure mnuPrevClick(Sender: TObject);
    procedure mnuReceberClick(Sender: TObject);
    procedure mnuPagarClick(Sender: TObject);
    procedure mnuCLTClick(Sender: TObject);
    procedure mnuTabClick(Sender: TObject);
    procedure mnuPreClick(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure N1FluxodeCaixa1Click(Sender: TObject);
    procedure N2RelatriodeFluxodeCaixa1Click(Sender: TObject);
    procedure N1ContaCorrente1Click(Sender: TObject);
    procedure N2ReclassificaoBancria1Click(Sender: TObject);
    procedure ConsultaLog1Click(Sender: TObject);
    procedure mnuGraficoClick(Sender: TObject);
  private
    { Private declarations }
  public
     function Acesso(iModulo: string):boolean;
     function Arred(iVal:variant):variant;
     function Log(xModulo: string; xCampo:string; xCodigo1:integer;xCodigo2:integer;xCodigo3:string;xOperacao:string):boolean;
  end;

var
  frmMenuBR: TfrmMenuBR;
  iUsuario,iDir,_Empresa:string;
  iMaster:boolean;

implementation

uses dmRelatorios, frmSobres, frmSenhas, frmProprietarias, frmClientes, frmCadastros,
  frmPrevsPagRec, frmReceber, frmMovsBanco, frmCheques, frmCadastrosF,
  frmFluxos, frmRelDups, frmPagtoCLT, frmProdutividades, frmRelFluxoCaixas,
  frmReclassificacaos, frmLogs, frmGrafPlanos;


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

function GetPathDoAlias(const Alias: string ): string;
var
Parametros : TStringList;
sDir:string;
begin
    Parametros := TStringList.Create;
    sDir:='';
    try
        Session.GetAliasParams( Alias, Parametros );
        sDir := Parametros.Values[ 'PATH' ]+'\';
        if pos('\\',sDir)<>0 then
           sDir:=copy(sDir,1,length(sDir)-1);
    finally
        Result := sDir;
        Parametros.Free;
    end;
end;

function TfrmMenuBR.Arred(iVal:variant):variant;
var iVal1:variant;
var p:integer;
var s:string;
begin
    iVal1:=iVal*100;
    s:=FloatToStr(ival1);
    p:=Pos(',',s);
    if p>0 then
        s:=Copy(s,1,p-1);
    iVal1:=StrToFloat(s);
    if (iVal*100-iVal1)>=0.50 then
        iVal1:=iVal1+1;
    iVal1:=iVal1/100;
    Result:=ival1;
end;

function TfrmMenuBR.Acesso(iModulo: string):boolean;
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
                ShowMessage('Acesso não Permitido!');
                iOk:=false;
            end;
         end
         else
         begin
            if dbUsuarioMaster.Value=true then
               iOk:=true
            else
            if not dbAcesso.Locate('Usuario;Modulo',VarArrayof([dbUsuarioUsuario.Text,iModulo]),[]) then
               begin
                  ShowMessage('Acesso não Permitido!');
                  iOk:=false;
               end
               else
                  iOk:=true;
         end;
     end;
     Result:=iok;
end;


function TfrmMenuBR.Log(xModulo: string; xCampo:string; xCodigo1:integer;xCodigo2:integer;xCodigo3:string;xOperacao:string):boolean;
begin
try
    dbLog.Insert;
    dbLogModulo.value:=xModulo;
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

procedure TfrmMenuBR.Sobre1Click(Sender: TObject);
begin
    if frmSobre=nil then
      Application.CreateForm(TfrmSobre, frmSobre);
    frmSobre.ShowModal;
end;

procedure TfrmMenuBR.mnuSenhaClick(Sender: TObject);
begin
    if dbUsuarioMaster.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if frmSenha=nil then
       Application.CreateForm(TfrmSenha, frmSenha);
    frmSenha.ShowModal;
end;

procedure TfrmMenuBR.Proprietria1Click(Sender: TObject);
begin
    if frmProprietaria=nil then
       Application.CreateForm(TfrmProprietaria, frmProprietaria);
    frmProprietaria.ShowModal;
end;

procedure TfrmMenuBR.mnuSairClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Deseja realmente sair?',
                 'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     begin
        Log('Fim de Sessão','',0,0,'','S');
        Application.Terminate;
     end;    
end;

procedure TfrmMenuBR.FormShow(Sender: TObject);
var iservidor:Tstringlist;
var iconexao:string;
begin
   Top:=0;
   Left:=0;
   Screen.Cursor := crHourGlass;
   Align:=alTop;
try
   iDir:=ExtractFilePath(Application.ExeName);
   iservidor:=tstringlist.create;
   iservidor.clear;
   Screen.Cursor := crHourGlass;

    if not FileExists(idir+'servidor.ini') then
    begin
        ShowMessage('Identificação do Servidor não encontrada');
        abort;
    end
    else iServidor.LoadFromFile(idir+'servidor.ini');

//Provider=SQLOLEDB.1;User ID=andros-sp;Password=andros@2012;
//         Data Source=ANDROS-VOSTRO\SQLEXPRESS;Initial Catalog=BBFin;Persist Security Info=True

    iconexao:='Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;'+
              'Data Source='+iservidor.values['SERVIDOR']+';'+
              'Initial Catalog=BBFinBR;'+
              'Persist Security Info=True';
    dadosfin.ConnectString:=iconexao;
    dadosfin.Connected:=true;

    iconexao:='Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;'+
              'Data Source='+iservidor.values['SERVIDOR']+';'+
              'Initial Catalog=BBAud;'+
              'Persist Security Info=True';
    dadosaud.ConnectString:=iconexao;
    dadosaud.Connected:=true;


      _Empresa:='B&B Auditoria Médica';
      rvFin.ProjectFile:=idir+'BBFin.rav';
      rvFin.Open;

      dbLog.Open;
      Application.CreateForm(TdmRelatorio, dmRelatorio);
      dbUsuario.Open;
      dbUsuario.Locate('Usuario','Convidado',[]);
      iUsuario:=dbUsuarioUsuario.Text;
      iMaster:=dbUsuarioMaster.Value;
      dbAcesso.Open;
   finally
     Screen.Cursor := crDefault;
     lkuUsuario.KeyValue:='Convidado';
     lkuUsuario.Enabled:=false;
     lblSenha.Enabled:=false;
     cmdSenhaok.Visible:=false;
   end;
end;

procedure TfrmMenuBR.cmdSenhaClick(Sender: TObject);
begin
     lkuUsuario.Enabled:=true;
     lblSenha.Enabled:=true;
     cmdSenha.Visible:=false;
     cmdSenhaok.Visible:=true;
     lkuUsuario.SetFocus;
end;

procedure TfrmMenuBR.cmdSenhaokClick(Sender: TObject);
var iSenha:string;
begin
     dbUsuario.Locate('Usuario',lkuUsuario.KeyValue,[]);
     iSenha:=Encrypt(dbUsuarioSenha.Text);

     if iSenha<>lblSenha.Text then
     begin
        ShowMessage('Senha inválida!');
        dbUsuario.Locate('Usuario','Convidado',[]);
     end;
     iUsuario:=dbUsuarioUsuario.Text;
     iMaster:=dbUsuarioMaster.Value;
     lkuUsuario.Enabled:=false;
     lblSenha.Text:='';
     lblSenha.Enabled:=false;
     cmdSenha.Visible:=true;
     cmdSenhaok.Visible:=false;
     if iUsuario<>'Convidado' then
         Log('Início de Sessão','',0,0,'','S');
end;

procedure TfrmMenuBR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dbUsuario.Close;
     dbAcesso.Close;
     dbLog.Close;
     dadosfin.Connected:=false;
     dadosaud.Connected:=false;
end;

procedure TfrmMenuBR.mnuCliClick(Sender: TObject);
begin
    if not Acesso('Clientes/Fornecedores') then
       abort;
    if frmCliente=nil then
       Application.CreateForm(TfrmCliente, frmCliente);
    frmCliente.Show;
end;

procedure TfrmMenuBR.mnuPrevClick(Sender: TObject);
begin
    if not Acesso('Lançamentos/Previsões') then
       abort;
    if frmPrevPagRec=nil then
        Application.CreateForm(TfrmPrevPagRec, frmPrevPagRec);
    frmPrevPagRec.Show;
end;

procedure TfrmMenuBR.mnuReceberClick(Sender: TObject);
begin
    if not Acesso('Contas a Receber/Nota Fiscal') then
       abort;
     if frmRec=nil then
       Application.CreateForm(TfrmRec, frmRec);
     if frmRelDup=nil then
        Application.CreateForm(TfrmRelDup, frmRelDup);
    frmRec.Show;
end;

procedure TfrmMenuBR.mnuPagarClick(Sender: TObject);
begin
    if not Acesso('Pagamento Fornecedores') then
       abort;
    if frmCheque=nil then
       Application.CreateForm(TfrmCheque, frmCheque);
    frmCheque.Show;
end;

procedure TfrmMenuBR.mnuCLTClick(Sender: TObject);
begin
    if not Acesso('Pagamento CLT') then
       abort;
    if frmPagtosCLT=nil then
      Application.CreateForm(TfrmPagtosCLT, frmPagtosCLT);
    frmPagtosCLT.Show;
end;

procedure TfrmMenuBR.mnuTabClick(Sender: TObject);
begin
    if not Acesso('Tabelas') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.Show;

end;

procedure TfrmMenuBR.mnuPreClick(Sender: TObject);
begin
    if not Acesso('Pagamento Prestadores') then
       abort;
  if frmProdutividade=nil then
     Application.CreateForm(TfrmProdutividade, frmProdutividade);
  frmProdutividade.Show;
end;

procedure TfrmMenuBR.Pagamentos1Click(Sender: TObject);
begin
    if not Acesso('Cadastro de Funcionários') then
       abort;
    if frmCadastroF=nil then
       Application.CreateForm(TfrmCadastroF, frmCadastroF);
    frmCadastroF.Show;
end;

procedure TfrmMenuBR.N1FluxodeCaixa1Click(Sender: TObject);
begin
    if not Acesso('Fluxo de Caixa') then
       abort;
    if frmFluxo=nil then
      Application.CreateForm(TfrmFluxo, frmFluxo);
    frmFluxo.Show;
end;

procedure TfrmMenuBR.N2RelatriodeFluxodeCaixa1Click(Sender: TObject);
begin
    if not Acesso('Fluxo de Caixa') then
       abort;
    if frmRelFluxoCaixa=nil then
       Application.CreateForm(TfrmRelFluxoCaixa, frmRelFluxoCaixa);
    frmRelFluxoCaixa.ShowModal;
end;

procedure TfrmMenuBR.N1ContaCorrente1Click(Sender: TObject);
begin
    if not Acesso('Conta Corrente') then
       abort;
    if frmMovBanco=nil then
       Application.CreateForm(TfrmMovBanco, frmMovBanco);
    frmMovBanco.Show;
end;

procedure TfrmMenuBR.N2ReclassificaoBancria1Click(Sender: TObject);
begin
    if not Acesso('Conta Corrente') then
       abort;
    if frmReclassificacao=nil then
        application.createform(TfrmReclassificacao,frmReclassificacao);
    frmReclassificacao.show;

end;

procedure TfrmMenuBR.ConsultaLog1Click(Sender: TObject);
begin
    if dbUsuarioMaster.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if frmLog=nil then
        Application.CreateForm(TfrmLog, frmLog);
    frmLog.ShowModal;
end;

procedure TfrmMenuBR.mnuGraficoClick(Sender: TObject);
begin
    if frmGrafPlano=nil then
        Application.CreateForm(TfrmGrafPlano, frmGrafPlano);
    frmGrafPlano.ShowModal;
end;

end.
