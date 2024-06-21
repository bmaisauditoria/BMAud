unit frmCadastrosF;

interface

uses
  DateUtils, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, Db, DBTables,
  MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, Variants,
  ExtCtrls, DBImgAsp, ToolWin, Menus, RpDefine, RpCon, RpConDS, RpConBDE;

type
  TfrmCadastroF = class(TForm)
    dbClienteP: TMSTable;
    dsClienteP: TDataSource;
    dsMedico: TDataSource;
    dsEnfermeiro: TDataSource;
    pagCadastro: TPageControl;
    tabAuditor: TTabSheet;
    pnlFicha: TPanel;
    tabOrdemMedico: TTabControl;
    grdMed: TDBGrid;
    CoolBar3: TCoolBar;
    txtMedico: TEdit;
    tabEnfermeiro: TTabSheet;
    tabOrdemEnfermeiro: TTabControl;
    grdEnf: TDBGrid;
    CoolBar5: TCoolBar;
    txtEnfermeiro: TEdit;
    dbClientePCliFor: TAutoIncField;
    dbClientePNome: TStringField;
    Panel2: TPanel;
    Label31: TLabel;
    cmpMedico: TDBEdit;
    Label12: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    Label37: TLabel;
    DBEdit32: TDBEdit;
    Label39: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label40: TLabel;
    DBText3: TDBText;
    Label41: TLabel;
    Panel13: TPanel;
    Label42: TLabel;
    DBText13: TDBText;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    DBEdit27: TDBEdit;
    Label33: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit31: TDBEdit;
    cmpNomeMedico: TDBEdit;
    Label32: TLabel;
    pnlFicha1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    dbClientePStatusPre: TBooleanField;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    pagMed: TPageControl;
    tabMed1: TTabSheet;
    DBMemo1: TDBMemo;
    pagEnf: TPageControl;
    tabEnf1: TTabSheet;
    DBMemo2: TDBMemo;
    dsHospital: TDataSource;
    Label59: TLabel;
    DBEdit41: TDBEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBText1: TDBText;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label61: TLabel;
    cmpEnfermeiro: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Panel4: TPanel;
    Label62: TLabel;
    DBText2: TDBText;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit36: TDBEdit;
    cmpNomeEnfermeiro: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit45: TDBEdit;
    dbBanco: TMSTable;
    dbBancoBanco: TSmallintField;
    dbBancoNome: TStringField;
    dsBanco: TDataSource;
    dbClientePBanco: TSmallintField;
    dbClientePAgencia: TStringField;
    dbClientePConta: TStringField;
    Label47: TLabel;
    Label90: TLabel;
    Label1: TLabel;
    Label91: TLabel;
    DBEdit29: TDBEdit;
    Label92: TLabel;
    DBEdit61: TDBEdit;
    Label93: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    Label94: TLabel;
    Label95: TLabel;
    DBEdit64: TDBEdit;
    Label96: TLabel;
    DBEdit65: TDBEdit;
    Label97: TLabel;
    DBEdit66: TDBEdit;
    Label98: TLabel;
    DBEdit67: TDBEdit;
    Label99: TLabel;
    DBEdit68: TDBEdit;
    Label100: TLabel;
    DBEdit69: TDBEdit;
    Label44: TLabel;
    Label46: TLabel;
    TabSheet9: TTabSheet;
    TabOrdemHospital: TTabControl;
    CoolBar4: TCoolBar;
    cmpHospital: TEdit;
    grdHospital: TDBGrid;
    Label2: TLabel;
    Panel12: TPanel;
    cmdGravaH: TBitBtn;
    Panel10: TPanel;
    Panel11: TPanel;
    cmdAnteriorM: TBitBtn;
    cmdProximoM: TBitBtn;
    cmdNovoT: TBitBtn;
    cmdAlteraT: TBitBtn;
    cmdGravaT: TBitBtn;
    cmdCancelaT: TBitBtn;
    cmdExcluiT: TBitBtn;
    cmdListaM: TSpeedButton;
    cmdFichaM: TSpeedButton;
    cmdImprimirT: TBitBtn;
    cmdFiltraM: TSpeedButton;
    Panel14: TPanel;
    Panel15: TPanel;
    cmdNovoE: TBitBtn;
    cmdAlteraE: TBitBtn;
    cmdGravaE: TBitBtn;
    cmdCancelaE: TBitBtn;
    cmdExcluiE: TBitBtn;
    cmdFichaE: TSpeedButton;
    cmdListaE: TSpeedButton;
    cmdFiltraE: TSpeedButton;
    cmdImprimirE: TBitBtn;
    cmdAnteriorE: TBitBtn;
    cmdProximoE: TBitBtn;
    dbCargo: TMSTable;
    dbCargoCargo: TAutoIncField;
    dbCargoDescricao: TStringField;
    dsCargo: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbHospitalCNPJ: TStringField;
    dbHospitalEnfermeiro: TIntegerField;
    dbHospitalCodBradesco: TIntegerField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroEndereco: TStringField;
    dbEnfermeiroBairro: TStringField;
    dbEnfermeiroCidade: TStringField;
    dbEnfermeiroUF: TStringField;
    dbEnfermeiroCep: TStringField;
    dbEnfermeiroFone: TStringField;
    dbEnfermeiroCPF: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroEmail: TStringField;
    dbEnfermeiroCliente: TIntegerField;
    dbEnfermeiroUsuario: TStringField;
    dbEnfermeiroObservacao: TMemoField;
    dbEnfermeiroBanco: TIntegerField;
    dbEnfermeiroAgencia: TStringField;
    dbEnfermeiroClienteNome: TStringField;
    dbEnfermeiroConta: TStringField;
    dbEnfermeiroFone1: TStringField;
    dbEnfermeiroFone2: TStringField;
    dbEnfermeiroRG: TStringField;
    dbEnfermeiroRGEmissor: TStringField;
    dbMedico: TMSTable;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dbMedicoEndereco: TStringField;
    dbMedicoBairro: TStringField;
    dbMedicoCidade: TStringField;
    dbMedicoUF: TStringField;
    dbMedicoCep: TStringField;
    dbMedicoFone: TStringField;
    dbMedicoFone1: TStringField;
    dbMedicoFone2: TStringField;
    dbMedicoCPF: TStringField;
    dbMedicoCRM: TIntegerField;
    dbMedicoEmail: TStringField;
    dbMedicoCliente: TIntegerField;
    dbMedicoUsuario: TStringField;
    dbMedicoObservacao: TMemoField;
    dbMedicoClienteNome: TStringField;
    dbMedicoBanco: TIntegerField;
    dbMedicoAgencia: TStringField;
    dbMedicoConta: TStringField;
    dbMedicoRG: TStringField;
    dbMedicoRGEmissor: TStringField;
    rvMedico: TRvDataSetConnection;
    rvEnfermeiro: TRvDataSetConnection;
    dbEnfermeiroClienteTipo: TStringField;
    dbMedicoClienteTipo: TStringField;
    dbMedicoDataInicio: TDateTimeField;
    dbMedicoDataFim: TDateTimeField;
    dbMedicoDataInclusao: TDateTimeField;
    dbEnfermeiroDataInicio: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    dbEnfermeiroNascimento: TDateTimeField;
    dbMedicoNascimento: TDateTimeField;
    qryServP: TMSQuery;
    qryServPPrestador: TIntegerField;
    qryServPCliente: TIntegerField;
    qryServPServico: TStringField;
    qryServPHospital: TIntegerField;
    qryServPMedEnf: TStringField;
    qryServPAuditor: TIntegerField;
    qryServPValor: TCurrencyField;
    cmdLoginM: TBitBtn;
    cmdLoginE: TBitBtn;
    dbLogin: TMSQuery;
    dbLoginUsuario: TStringField;
    dbLoginNomeUsuario: TStringField;
    dbLoginSenha: TStringField;
    dbLoginBBAud: TBooleanField;
    dbLoginMasterAud: TBooleanField;
    dbLoginBBFin: TBooleanField;
    dbLoginMasterFin: TBooleanField;
    dbLoginBBAgenda: TBooleanField;
    dbLoginMasterAgenda: TBooleanField;
    dbLoginBBISO: TBooleanField;
    dbLoginMasterISO: TBooleanField;
    dbLoginTipo: TStringField;
    dbLoginDataInicio: TDateTimeField;
    dbLoginDataFim: TDateTimeField;
    dbLoginUsuarioI: TStringField;
    dbLoginDataInclusao: TDateTimeField;
    dbLoginUsuarioA: TStringField;
    dbLoginDataAlteracao: TDateTimeField;
    dbLoginUsuarioE: TStringField;
    dbLoginDataExclusao: TDateTimeField;
    dsLogin: TDataSource;
    cmdSenhaM: TBitBtn;
    cmdSenhaE: TBitBtn;
    dbMedicoLogin: TStringField;
    dbEnfermeiroLogin: TStringField;
    cmpLoginM: TDBEdit;
    cmpLoginE: TDBEdit;
    Label64: TLabel;
    Label50: TLabel;
    BitBtn11: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbRemotoAud: TMSQuery;
    dbHospitalAuditorado: TBooleanField;
    dbRemotoPre: TMSQuery;
    dbRemotoPreCliFor: TIntegerField;
    dbRemotoPreNome: TStringField;
    dbRemotoPreCGC: TStringField;
    dbMedicoClienteCNPJ: TStringField;
    dbClientePCGC: TStringField;
    dbEnfermeiroClienteCNPJ: TStringField;
    dbPrestadorBusca: TMSQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdNovoTClick(Sender: TObject);
    procedure cmdAlteraTClick(Sender: TObject);
    procedure cmdGravaTClick(Sender: TObject);
    procedure cmdCancelaTClick(Sender: TObject);
    procedure cmdExcluiTClick(Sender: TObject);
    procedure dsMedicoStateChange(Sender: TObject);
    procedure dbMedicoAfterCancel(DataSet: TDataSet);
    procedure dbMedicoAfterInsert(DataSet: TDataSet);
    procedure dbMedicoBeforeInsert(DataSet: TDataSet);
    procedure dbMedicoBeforePost(DataSet: TDataSet);
    procedure cmdNovoEClick(Sender: TObject);
    procedure cmdAlteraEClick(Sender: TObject);
    procedure cmdGravaEClick(Sender: TObject);
    procedure cmdCancelaEClick(Sender: TObject);
    procedure cmdExcluiEClick(Sender: TObject);
    procedure dbEnfermeiroAfterCancel(DataSet: TDataSet);
    procedure dbEnfermeiroAfterInsert(DataSet: TDataSet);
    procedure dbEnfermeiroBeforeInsert(DataSet: TDataSet);
    procedure dbEnfermeiroBeforePost(DataSet: TDataSet);
    procedure dsEnfermeiroStateChange(Sender: TObject);
    procedure txtMedicoChange(Sender: TObject);
    procedure tabOrdemMedicoChange(Sender: TObject);
    procedure tabOrdemEnfermeiroChange(Sender: TObject);
    procedure txtEnfermeiroChange(Sender: TObject);
    procedure dbClientePFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdFichaMClick(Sender: TObject);
    procedure cmdListaMClick(Sender: TObject);
    procedure cmdFichaEClick(Sender: TObject);
    procedure cmdListaEClick(Sender: TObject);
    procedure cmdAnteriorMClick(Sender: TObject);
    procedure cmdProximoMClick(Sender: TObject);
    procedure cmdAnteriorEClick(Sender: TObject);
    procedure cmdProximoEClick(Sender: TObject);
    procedure dbMedicoBeforeEdit(DataSet: TDataSet);
    procedure cmdImprimirTClick(Sender: TObject);
    procedure cmdImprimirEClick(Sender: TObject);
    procedure Label74MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBLookupComboBox3MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Label74Click(Sender: TObject);
    procedure grdMedDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdEnfDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmdFiltraMClick(Sender: TObject);
    procedure dbMedicoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmdFiltraEClick(Sender: TObject);
    procedure dbEnfermeiroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure TabOrdemHospitalChange(Sender: TObject);
    procedure cmdGravaHClick(Sender: TObject);
    procedure dsHospitalStateChange(Sender: TObject);
    procedure dbHospitalBeforePost(DataSet: TDataSet);
    procedure cmpHospitalChange(Sender: TObject);
    procedure dbEnfermeiroAfterPost(DataSet: TDataSet);
    procedure dbMedicoBeforeDelete(DataSet: TDataSet);
    procedure dbEnfermeiroBeforeEdit(DataSet: TDataSet);
    procedure dbEnfermeiroBeforeDelete(DataSet: TDataSet);
    procedure cmdLoginEClick(Sender: TObject);
    procedure cmdSenhaEClick(Sender: TObject);
    procedure dbMedicoAfterPost(DataSet: TDataSet);
    procedure cmdLoginMClick(Sender: TObject);
    procedure cmdSenhaMClick(Sender: TObject);
    procedure dbLoginAfterInsert(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
  public
    iSenhaNova:string;
  end;

var
  frmCadastroF: TfrmCadastroF;
  iUltimoFuncionario,iUltimaEmpresa,iUltimoMedico,
  iUltimoEnfermeiro,iUltimoTerceiro:integer;
  iSenhaNova:string;

implementation

uses frmPrincipal, frmCadastros, frmSenhasAltera;

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

procedure TfrmCadastroF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dbClienteP.Close;
     dbMedico.Close;
     dbEnfermeiro.Close;
     dbHospital.Close;
     dbBanco.Close;
     dbCargo.Close;
     dbLogin.Close;
     qryServP.Close;
end;

procedure TfrmCadastroF.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
     dbCargo.Open;
     dbClienteP.Open;  // Prestadores
     dbFilial.OPen;

     dbMedico.Open;
     dbMedico.Tag:=0;
     tabOrdemMedico.TabIndex:=0;
     cmpMedico.Enabled:=false;

     dbEnfermeiro.Open;
     dbEnfermeiro.tag:=0;
     tabOrdemEnfermeiro.TabIndex:=0;
     cmpEnfermeiro.Enabled:=false;

     dbHospital.Open;
     tabOrdemHospital.TabIndex:=0;

     dbBanco.Open;
     qryServP.Open;

     dbLogin.Open;
   finally
     pagCadastro.ActivePageIndex:=0;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmCadastroF.cmdNovoTClick(Sender: TObject);
begin
     dbMedico.Insert;
     cmpMedico.SetFocus;
end;

procedure TfrmCadastroF.cmdAlteraTClick(Sender: TObject);
begin
     dbMedico.Edit;
     cmpNomeMedico.SetFocus;
end;

procedure TfrmCadastroF.cmdGravaTClick(Sender: TObject);
begin
     dbMedico.Post;
end;

procedure TfrmCadastroF.cmdCancelaTClick(Sender: TObject);
begin
     dbMedico.Cancel;
end;

procedure TfrmCadastroF.cmdExcluiTClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbMedico.Delete;
end;

procedure TfrmCadastroF.dsMedicoStateChange(Sender: TObject);
begin
     cmdNovoT.Enabled:=dbMedico.State in [dsBrowse];
     cmdExcluiT.Enabled:=(dbMedico.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbMedico.RecordCount<>0);
     cmdGravaT.Enabled:=dbMedico.State in [dsEdit,dsInsert];
     cmdAlteraT.Enabled:=(dbMedico.State=dsBrowse)
                         and (dbMedico.RecordCount<>0);
     cmdCancelaT.Enabled:=dbMedico.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastroF.dbMedicoAfterCancel(DataSet: TDataSet);
begin
     cmpMedico.Enabled:=false;
     cmpLoginM.Enabled:=false;
     dbMedico.Tag:=0;
end;

procedure TfrmCadastroF.dbMedicoAfterInsert(DataSet: TDataSet);
begin
    cmpLoginM.Enabled:=false;
    dbMedico.Tag:=0;
    dbMedicoLogin.value:='';
    cmpMedico.Enabled:=true;
    dbMedicoAuditor.Value:=iUltimoMedico+1;
    dbMedicoDataInclusao.Value:=date;
    dbMedicoDataInicio.Value:=date;
end;

procedure TfrmCadastroF.dbMedicoAfterPost(DataSet: TDataSet);
begin
    if dbMedico.Tag=0 then
    begin
        qryServP.Locate('MedEnf;Auditor',VarArrayof(['M',dbMedicoAuditor.value]),[]);
        while (qryServPMedEnf.value='M') and (qryServPAuditor.value=dbMedicoAuditor.value) do
        begin
            if qryServPCliente.value<>dbMedicoCliente.value then
            begin
                qryServP.Edit;
                qryServPPrestador.value:=dbMedicoCliente.value;
                qryServP.Post;
                qryServP.Next;
            end;
        end;
    end;
    if dbMedico.Tag=1 then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbMedicoLogin.value;
        dbLoginNomeUsuario.value:=dbMedicoNome.value;
        dbLoginTipo.value:='M';
        dbLoginDataInicio.value:=dbMedicoDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
        ShowMessage('Usuário cadastrado com sucesso. A senha provisória é [0000]');
        dbMedico.Tag:=0;
        cmpLoginM.Enabled:=false;
    end;
    if not dbMedicoDataFim.isnull then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['M',dbMedicoLogin.value]),[loCaseInsensitive]) then
        begin
            dbLogin.Edit;
            dbLoginDataFim.value:=dbMedicoDataFim.value;
            dbLoginUsuarioE.value:=iUsuario;
            dbLoginDataExclusao.value:=date;
            dbLogin.Post;
        end;
    end;
end;

procedure TfrmCadastroF.dbMedicoBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemMedico.TabIndex:=0;
    dbMedico.IndexFieldNames:='Auditor';
    cmdFichaMClick(dbMedico);
    cmdFichaM.Down:=true;
    cmdListaM.Down:=false;
    dbMedico.Last;
    if dbMedicoAuditor.value=999999 then
        dbMedico.Prior;
    iUltimoMedico:=dbMedicoAuditor.Value;
end;

procedure TfrmCadastroF.dbMedicoBeforeEdit(DataSet: TDataSet);
begin
    if dbMedicoAuditor.value=999999 then
    begin
        ShowMessage('Medico de controle do sistema. Impossivel alterar');
        dbMedico.Cancel;
        abort;
    end;
    cmdFichaMClick(dbMedico);
    cmdFichaM.Down:=true;
    cmdListaM.Down:=false;
end;

procedure TfrmCadastroF.dbMedicoBeforePost(DataSet: TDataSet);
begin
    if dbMedico.Tag=0 then
    begin
         if dbMedicoAuditor.Value<=0 then
         begin
            ShowMessage('Código inválido');
            abort;
        end;
        if dbMedicoNome.Value='' then
        begin
            ShowMessage('Nome médico inválido');
            abort;
        end;
        if dbMedicoCRM.Value=0 then
        begin
            ShowMessage('CRM inválido');
            abort;
        end;
        dbPrestadorBusca.SQL.Text:='Select * from Auditores where CRM=:iCRM and Auditor<>:iAud';
        dbPrestadorBusca.ParamByName('iCRM').value:=dbMedicoCRM.value;
        dbPrestadorBusca.ParamByName('iAud').value:=dbMedicoAuditor.value;
        dbPrestadorBusca.Open;
        if dbPrestadorBusca.RecordCount>0 then
        begin
            ShowMessage('CRM já cadastrado');
            abort;
        end;
        if dbMedicoCliente.Value=0 then
        begin
            ShowMessage('Selecione um prestador');
            abort;
        end;
        dbMedicoUF.value:=Uppercase(dbMedicoUF.value);
        dbMedicoUsuario.Value:=iUsuario;
    end;
    if dbMedico.Tag=1 then
    begin
        if dbMedicoLogin.value='' then
        begin
            ShowMessage('Login inválido');
            dbMedico.Cancel;
            abort;
        end;
        if dbLogin.Locate('Usuario',dbMedicoLogin.value,[loCaseInsensitive]) then
        begin
            ShowMessage('Login em uso, selecione outro.');
            dbMedicoLogin.value:='';
            dbMedico.Cancel;
            abort;
        end;
    end;
end;

procedure TfrmCadastroF.cmdNovoEClick(Sender: TObject);
begin
     dbEnfermeiro.Insert;
     cmpEnfermeiro.SetFocus;
end;

procedure TfrmCadastroF.cmdAlteraEClick(Sender: TObject);
begin
     dbEnfermeiro.Edit;
     cmpNomeEnfermeiro.SetFocus;
end;

procedure TfrmCadastroF.cmdGravaEClick(Sender: TObject);
begin
     dbEnfermeiro.Post;
end;

procedure TfrmCadastroF.cmdCancelaEClick(Sender: TObject);
begin
     dbEnfermeiro.Cancel;
end;

procedure TfrmCadastroF.cmdExcluiEClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbEnfermeiro.Delete;
end;

procedure TfrmCadastroF.dbEnfermeiroAfterCancel(DataSet: TDataSet);
begin
     cmpEnfermeiro.Enabled:=false;
     cmpLoginE.Enabled:=false;
     dbEnfermeiro.Tag:=0;
end;

procedure TfrmCadastroF.dbEnfermeiroAfterInsert(DataSet: TDataSet);
begin
    cmpEnfermeiro.Enabled:=true;
    cmpLoginE.Enabled:=false;
    dbEnfermeiro.Tag:=0;
    dbEnfermeiroLogin.value:='';
    dbEnfermeiroEnfermeiro.Value:=iUltimoEnfermeiro+1;
    dbEnfermeiroDataInclusao.Value:=date;
    dbEnfermeiroDataInicio.Value:=date;
end;

procedure TfrmCadastroF.dbEnfermeiroBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemEnfermeiro.TabIndex:=0;
    dbEnfermeiro.IndexFieldNames:='Enfermeiro';
    dbEnfermeiro.Last;
    if dbEnfermeiroEnfermeiro.value=999999 then
        dbEnfermeiro.Prior;
    iUltimoEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
end;

procedure TfrmCadastroF.dbEnfermeiroBeforePost(DataSet: TDataSet);
begin
    if dbEnfermeiro.Tag=0 then
    begin
         if dbEnfermeiroEnfermeiro.Value<=0 then
         begin
            ShowMessage('Código inválido');
            abort;
        end;
        if dbEnfermeiroNome.Value='' then
        begin
            ShowMessage('Nome do Enfermeiro inválido');
            abort;
        end;
        if dbEnfermeiroCoren.Value=0 then
        begin
            ShowMessage('COREN inválido');
            abort;
        end;
        dbPrestadorBusca.SQL.Text:='Select * from Enfermeiros where Coren=:iCoren and Enfermeiro<>:iEnf';
        dbPrestadorBusca.ParamByName('iCoren').value:=dbEnfermeiroCOREN.value;
        dbPrestadorBusca.ParamByName('iEnf').value:=dbEnfermeiroEnfermeiro.value;
        dbPrestadorBusca.Open;
        if dbPrestadorBusca.RecordCount>0 then
        begin
            ShowMessage('COREN já cadastrado');
            abort;
        end;
        if dbEnfermeiroCliente.Value=0 then
        begin
            ShowMessage('Selecione um prestador');
            abort;
        end;
        dbEnfermeiroUF.value:=Uppercase(dbEnfermeiroUF.value);
        dbEnfermeiroUsuario.Value:=iUsuario;
    end;
    if dbEnfermeiro.Tag=1 then
    begin
        if dbEnfermeiroLogin.value='' then
        begin
            ShowMessage('Login inválido');
            dbEnfermeiro.Cancel;
            abort;
        end;
        if dbLogin.Locate('Usuario',dbEnfermeiroLogin.value,[loCaseInsensitive]) then
        begin
            ShowMessage('Login em uso, selecione outro.');
            dbEnfermeiroLogin.Value:='';
            dbEnfermeiro.Cancel;
            abort;
        end;
    end;

end;

procedure TfrmCadastroF.dsEnfermeiroStateChange(Sender: TObject);
begin
     cmdNovoE.Enabled:=dbEnfermeiro.State in [dsBrowse];
     cmdExcluiE.Enabled:=(dbEnfermeiro.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEnfermeiro.RecordCount<>0);
     cmdGravaE.Enabled:=dbEnfermeiro.State in [dsEdit,dsInsert];
     cmdAlteraE.Enabled:=(dbEnfermeiro.State=dsBrowse)
                         and (dbEnfermeiro.RecordCount<>0);
     cmdCancelaE.Enabled:=dbEnfermeiro.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastroF.txtMedicoChange(Sender: TObject);
begin
    if txtMedico.Text<>'' then
        case TabOrdemMedico.TabIndex of
        0:dbMedico.Locate('Auditor',StrtoInt(Trim(TxtMedico.Text)),[]);
        1:dbMedico.Locate('Nome',Trim(TxtMedico.Text),[loCaseInsensitive,loPartialKey]);
        2:dbMedico.Locate('CRM',StrToInt(Trim(TxtMedico.Text)),[]);
        3:ShowMessage('Busca por empresa não disponível');
        end;
end;

procedure TfrmCadastroF.tabOrdemMedicoChange(Sender: TObject);
begin
     case tabOrdemMedico.TabIndex of
     0:dbMedico.IndexFieldNames:='Auditor';
     1:dbMedico.IndexFieldNames:='Nome';
     2:dbMedico.IndexFieldNames:='CRM';
     3:dbMedico.IndexFieldNames:='Cliente';
     end;
end;

procedure TfrmCadastroF.tabOrdemEnfermeiroChange(Sender: TObject);
begin
     case tabOrdemEnfermeiro.TabIndex of
     0:dbEnfermeiro.IndexFieldNames:='Enfermeiro';
     1:dbEnfermeiro.IndexFieldNames:='Nome';
     2:dbEnfermeiro.IndexFieldNames:='COREN';
     3:dbEnfermeiro.IndexFieldNames:='Cliente';
     end;
end;

procedure TfrmCadastroF.txtEnfermeiroChange(Sender: TObject);
begin
    if txtEnfermeiro.text<>'' then
        case TabOrdemEnfermeiro.TabIndex of
        0:dbEnfermeiro.Locate('Enfermeiro',StrtoInt(Trim(TxtEnfermeiro.Text)),[]);
        1:dbEnfermeiro.Locate('Nome',Trim(TxtEnfermeiro.Text),[loCaseInsensitive,loPartialKey]);
        2:dbEnfermeiro.Locate('Coren',StrToInt(Trim(TxtEnfermeiro.Text)),[]);
        3:ShowMessage('Busca por empresa não disponível');
        end;
end;

procedure TfrmCadastroF.dbClientePFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClientePStatusPre.value=true;
end;

procedure TfrmCadastroF.cmdFichaMClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
end;

procedure TfrmCadastroF.cmdListaMClick(Sender: TObject);
begin
    pnlFicha.SendToBack;
end;

procedure TfrmCadastroF.cmdFichaEClick(Sender: TObject);
begin
    pnlFicha1.BringToFront;
end;

procedure TfrmCadastroF.cmdListaEClick(Sender: TObject);
begin
    pnlFicha1.SendToBack;
end;

procedure TfrmCadastroF.cmdAnteriorMClick(Sender: TObject);
begin
    dbMedico.Prior;
end;

procedure TfrmCadastroF.cmdProximoMClick(Sender: TObject);
begin
    dbMedico.Next;
end;

procedure TfrmCadastroF.cmdAnteriorEClick(Sender: TObject);
begin
    dbEnfermeiro.Prior;
end;

procedure TfrmCadastroF.cmdProximoEClick(Sender: TObject);
begin
    dbEnfermeiro.Next;
end;

procedure TfrmCadastroF.cmdImprimirTClick(Sender: TObject);
begin
    frmMenu.rvFin.SelectReport('RelMedicos',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCadastroF.cmdImprimirEClick(Sender: TObject);
begin
    frmMenu.rvFin.SelectReport('RelEnfermeiros',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCadastroF.Label74MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TfrmCadastroF.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmCadastroF.DBLookupComboBox3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmCadastroF.Label74Click(Sender: TObject);
begin
    if not frmMenu.Acesso('Tabelas') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.tag:=2;
    frmCadastro.Show;
end;

procedure TfrmCadastroF.grdMedDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbMedicoDataFim.IsNull then
        grdMed.Canvas.font.Color:=clRed;

     grdMed.DefaultDrawDataCell(Rect,grdMed.Columns[DataCol].field,State);
end;

procedure TfrmCadastroF.grdEnfDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbEnfermeiroDataFim.IsNull then
        grdEnf.Canvas.font.Color:=clRed;

     grdEnf.DefaultDrawDataCell(Rect,grdEnf.Columns[DataCol].field,State);
end;

procedure TfrmCadastroF.cmdFiltraMClick(Sender: TObject);
begin
    dbMedico.Refresh;
end;

procedure TfrmCadastroF.dbMedicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if cmdFiltraM.Down then
        accept:=dbMedicoDataFim.isnull
    else
        accept:=true;
end;

procedure TfrmCadastroF.cmdFiltraEClick(Sender: TObject);
begin
    dbEnfermeiro.Refresh;
end;

procedure TfrmCadastroF.dbEnfermeiroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if cmdFiltraE.Down then
        accept:=dbEnfermeiroDataFim.isnull
    else
        accept:=true;
end;

procedure TfrmCadastroF.TabOrdemHospitalChange(Sender: TObject);
begin
     case tabOrdemHospital.TabIndex of
     0:dbHospital.IndexFieldNames:='Nome';
     1:dbHospital.IndexFieldNames:='CNPJ';
     end;
end;

procedure TfrmCadastroF.cmdGravaHClick(Sender: TObject);
begin
    dbHospital.Post;
end;

procedure TfrmCadastroF.dsHospitalStateChange(Sender: TObject);
begin
     cmdGravaH.Enabled:=dbHospital.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastroF.dbHospitalBeforePost(DataSet: TDataSet);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Atenção! As alterações feitas em Hospitais refletem no Sistema de Auditorias'+#13+
                                        'Tem certeza que gostaria de alterar? ',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then
         dbHospital.Cancel;
end;

procedure TfrmCadastroF.cmpHospitalChange(Sender: TObject);
begin
     case tabOrdemHospital.TabIndex of
     0:dbHospital.Locate('Nome',Trim(cmpHospital.Text),[loCaseInsensitive,loPartialKey]);
     1:dbHospital.Locate('CNPJ',Trim(cmpHospital.Text),[loCaseInsensitive,loPartialKey]);
     end;

end;

procedure TfrmCadastroF.dbEnfermeiroAfterPost(DataSet: TDataSet);
begin
    if dbEnfermeiro.Tag=0 then
    begin
        qryServP.Locate('MedEnf;Auditor',VarArrayof(['E',dbEnfermeiroEnfermeiro.value]),[]);
        while (qryServPMedEnf.value='E') and (qryServPAuditor.value=dbEnfermeiroEnfermeiro.value) do
        begin
            if qryServPCliente.value<>dbEnfermeiroCliente.value then
            begin
                qryServP.Edit;
                qryServPPrestador.value:=dbEnfermeiroCliente.value;
                qryServP.Post;
                qryServP.Next;
            end;
        end;
    end;
    if dbEnfermeiro.Tag=1 then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbEnfermeiroLogin.value;
        dbLoginNomeUsuario.value:=dbEnfermeiroNome.value;
        dbLoginTipo.value:='E';
        dbLoginDataInicio.value:=dbEnfermeiroDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
        ShowMessage('Usuário cadastrado com sucesso. A senha provisória é [0000]');
        dbEnfermeiro.Tag:=0;
        cmpLoginE.Enabled:=false;
    end;
    if not dbEnfermeiroDataFim.isnull then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['E',dbEnfermeiroLogin.value]),[loCaseInsensitive]) then
        begin
            dbLogin.Edit;
            dbLoginDataFim.value:=dbEnfermeiroDataFim.value;
            dbLoginUsuarioE.value:=iUsuario;
            dbLoginDataExclusao.value:=date;
            dbLogin.Post;
        end;
    end;

end;

procedure TfrmCadastroF.dbMedicoBeforeDelete(DataSet: TDataSet);
begin
    if dbMedicoAuditor.value=999999 then
    begin
        ShowMessage('Auditor de controle do sistema. Impossivel excluir');
        abort;
    end;
end;

procedure TfrmCadastroF.dbEnfermeiroBeforeEdit(DataSet: TDataSet);
begin
    if dbEnfermeiroEnfermeiro.value=999999 then
    begin
        ShowMessage('Enfermeiro de controle do sistema. Impossivel alterar');
        dbEnfermeiro.Cancel;
        abort;
    end;
end;

procedure TfrmCadastroF.dbEnfermeiroBeforeDelete(DataSet: TDataSet);
begin
    if dbEnfermeiroEnfermeiro.value=999999 then
    begin
        ShowMessage('Enfermeiro de controle do sistema. Impossivel excluir');
        abort;
    end;
end;

procedure TfrmCadastroF.cmdLoginEClick(Sender: TObject);
begin
    if frmMenu.dbUsuarioMasterFin.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if not dbEnfermeiroDataFim.IsNull then
    begin
        ShowMessage('Senha permitida apenas para usuários ativos');
        abort;
    end;
    if dbEnfermeiroLogin.value<>'' then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['E',dbEnfermeiroLogin.value]),[loCaseInsensitive]) then
        begin
            ShowMessage('Login ja cadastrado');
            abort;
        end;
    end;
    dbEnfermeiro.Edit;
    dbEnfermeiro.Tag:=1;
    cmpLoginE.Enabled:=true;
    cmpLoginE.SetFocus;
end;

procedure TfrmCadastroF.cmdSenhaEClick(Sender: TObject);
begin
    dbLogin.refresh;
    if frmMenu.dbUsuarioMasterFin.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if dbEnfermeiroLogin.value='' then
    begin
        ShowMessage('Usuário sem login. Cadastre primeiramente um login.');
        abort;
    end;
    if not dbLogin.Locate('Tipo;Usuario',VarArrayof(['E',dbEnfermeiroLogin.value]),[loCaseInsensitive]) then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbEnfermeiroLogin.value;
        dbLoginNomeUsuario.value:=dbEnfermeiroNome.value;
        dbLoginTipo.value:='E';
        dbLoginDataInicio.value:=dbEnfermeiroDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
    end;
    if frmSenhaAltera=nil then
       Application.CreateForm(TfrmSenhaAltera, frmSenhaAltera);
    frmSenhaAltera.ShowModal;
end;

procedure TfrmCadastroF.cmdLoginMClick(Sender: TObject);
begin
    if frmMenu.dbUsuarioMasterFin.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if not dbMedicoDataFim.IsNull then
    begin
        ShowMessage('Senha permitida apenas para usuários ativos');
        abort;
    end;
    if dbMedicoLogin.value<>'' then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['M',dbMedicoLogin.value]),[loCaseInsensitive]) then
        begin
            ShowMessage('Login ja cadastrado');
            abort;
        end;
    end;
    dbMedico.Edit;
    dbMedico.Tag:=1;
    cmpLoginM.Enabled:=true;
    cmpLoginM.SetFocus;
end;

procedure TfrmCadastroF.cmdSenhaMClick(Sender: TObject);
begin
    dbLogin.refresh;
    if frmMenu.dbUsuarioMasterFin.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if dbMedicoLogin.value='' then
    begin
        ShowMessage('Usuário sem login. Cadastre primeiramente um login.');
        abort;
    end;
    if not dbLogin.Locate('Tipo;Usuario',VarArrayof(['M',dbMedicoLogin.value]),[loCaseInsensitive]) then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbMedicoLogin.value;
        dbLoginNomeUsuario.value:=dbMedicoNome.value;
        dbLoginTipo.value:='M';
        dbLoginDataInicio.value:=dbMedicoDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
    end;
    if frmSenhaAltera=nil then
       Application.CreateForm(TfrmSenhaAltera, frmSenhaAltera);
    frmSenhaAltera.ShowModal;
end;

procedure TfrmCadastroF.dbLoginAfterInsert(DataSet: TDataSet);
begin
    dbLoginBBFin.Value:=false;
    dbLoginMasterFin.value:=false;
    dbLoginBBAud.value:=false;
    dbLoginMasterAud.Value:=false;
    dbLoginBBAgenda.Value:=false;
    dbLoginMasterAgenda.value:=false;
    dbLoginBBISO.value:=false;
    dbLoginMasterISO.value:=false;
    dbLoginSenha.Text:=Encrypt('0000');
end;

procedure TfrmCadastroF.BitBtn11Click(Sender: TObject);
var i,iempresa:integer;
begin
    ShowMessage('Atenção! Faça a copia apenas da Auditoria para Serviços, não o contrario.');
    i:=Application.MessageBox('Confirme a Copia da Tabela toda para a outra filial!',
     'Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then abort;

    ShowMessage('Atenção! Serão validados os Prestadores apenas dos Auditores ativos');

    dbRemotoPre.Open;
    dbMedico.First;
    while not dbMedico.eof do
    begin
        if dbMedicoDataFim.isnull then //somente ativos
        begin
            if not dbRemotoPre.Locate('CGC',dbMedicoClienteCNPJ.value,[]) then
            begin
                ShowMessage('CNPJ do Prestador ['+dbMedicoCliente.asstring+'-'+
                                                  dbMedicoClienteNome.value+'] não cadastrado na filial');
                dbRemotoPre.Close;
                abort;
            end;
        end;
        dbMedico.Next;
    end;

    dbRemotoAud.SQL.Text:='Delete from Auditores ';
    dbRemotoAud.Execute;

    dbRemotoAud.SQL.Text:='Select * from Auditores ';
    dbRemotoAud.Open;

    dbMedico.First;
    while not dbMedico.eof do
    begin
        iempresa:=0;
        if dbRemotoPre.Locate('CGC',dbMedicoClienteCNPJ.value,[]) then
            iempresa:=dbRemotoPreCliFor.value;
        dbRemotoAud.Insert;
        for i:=0 to dbRemotoAud.FieldCount-1 do
        if (dbRemotoAud.Fields[i].FieldName<>'CliFor')  then
            dbRemotoAud.fields[i].assign(dbMedico.fieldbyname(dbRemotoAud.fields[i].fieldname));
        dbRemotoAud.FieldByName('Cliente').value:=iempresa;
        dbRemotoAud.Post;
        dbMedico.Next;
    end;
    dbRemotoPre.Close;
    dbRemotoAud.Close;
    ShowMessage('Tabela copiada com sucesso');
end;

procedure TfrmCadastroF.BitBtn1Click(Sender: TObject);
var i,iempresa:integer;
begin
    ShowMessage('Atenção! Faça a copia apenas da Auditoria para Serviços, não o contrario.');
    i:=Application.MessageBox('Confirme a Copia da Tabela toda para a outra filial!',
     'Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then abort;

    ShowMessage('Atenção! Serão validados os Prestadores apenas dos Enfermeiros ativos');

    dbRemotoPre.Open;
    dbEnfermeiro.First;
    while not dbEnfermeiro.eof do
    begin
        if dbEnfermeiroDataFim.isnull then //somente ativos
        begin
            if not dbRemotoPre.Locate('CGC',dbEnfermeiroClienteCNPJ.value,[]) then
            begin
                ShowMessage('CNPJ do Prestador ['+dbEnfermeiroCliente.asstring+'-'+
                                                  dbEnfermeiroClienteNome.value+'] não cadastrado na filial');
                dbRemotoPre.Close;
                abort;
            end;
        end;
        dbEnfermeiro.Next;
    end;

    dbRemotoAud.SQL.Text:='Delete from Enfermeiros ';
    dbRemotoAud.Execute;

    dbRemotoAud.SQL.Text:='Select * from Enfermeiros ';
    dbRemotoAud.Open;

    dbEnfermeiro.First;
    while not dbEnfermeiro.eof do
    begin
        iempresa:=0;
        if dbRemotoPre.Locate('CGC',dbEnfermeiroClienteCNPJ.value,[]) then
            iempresa:=dbRemotoPreCliFor.value;
        dbRemotoAud.Insert;
        for i:=0 to dbRemotoAud.FieldCount-1 do
        if (dbRemotoAud.Fields[i].FieldName<>'CliFor')  then
            dbRemotoAud.fields[i].assign(dbEnfermeiro.fieldbyname(dbRemotoAud.fields[i].fieldname));
        dbRemotoAud.FieldByName('Cliente').value:=iempresa;
        dbRemotoAud.Post;
        dbEnfermeiro.Next;
    end;
    ShowMessage('Tabela copiada com sucesso');
end;

procedure TfrmCadastroF.BitBtn2Click(Sender: TObject);
var i:integer;
begin
    ShowMessage('Atenção! Faça a copia apenas da Auditoria para Serviços, não o contrario.');
    i:=Application.MessageBox('Confirme a Copia da Tabela toda para a outra filial!',
     'Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then abort;

    dbRemotoAud.SQL.Text:='Delete from Hospital ';
    dbRemotoAud.Execute;

    dbRemotoAud.SQL.Text:='Select * from Hospital ';
    dbRemotoAud.Open;

    dbHospital.First;
    while not dbHospital.eof do
    begin
        dbRemotoAud.Insert;
        for i:=0 to dbRemotoAud.FieldCount-1 do
        if (dbRemotoAud.Fields[i].FieldName<>'CliFor')  then
            dbRemotoAud.fields[i].assign(dbHospital.fieldbyname(dbRemotoAud.fields[i].fieldname));
        dbRemotoAud.Post;
        dbHospital.Next;
    end;
    dbRemotoAud.Close;
    ShowMessage('Tabela copiada com sucesso');
end;

end.
