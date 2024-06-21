 unit frmPacientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DBImgAsp, StdCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, Grids, DBGrids, ToolWin, Variants, RpDefine, RpCon, RpConDS,
  RpConBDE, ImgList;

type
  TfrmPaciente = class(TForm)
    pagPaciente: TPageControl;
    tabPaciente: TTabSheet;
    dsPaciente: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label81: TLabel;
    Label10: TLabel;
    cmpNomePaciente: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cmpCidade: TDBEdit;
    cmpUF: TDBEdit;
    cmpCep: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    cmpCGC: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cmpPaciente: TDBEdit;
    Panel10: TPanel;
    Label15: TLabel;
    DBText46: TDBText;
    DBText1: TDBText;
    tabHomeCare: TTabSheet;
    dbProcessoHC: TMSTable;
    dbProcessoHCCliente: TIntegerField;
    dbProcessoHCEmpresa: TIntegerField;
    dbProcessoHCPaciente: TIntegerField;
    dbProcessoHCHospital: TIntegerField;
    dbProcessoHCDataAlta: TDateField;
    dbProcessoHCUsuario: TStringField;
    dbProcessoHCClienteNome: TStringField;
    dbProcessoHCHospitalNome: TStringField;
    dbProcessoHCEmpresaNome: TStringField;
    dsProcessoHC: TDataSource;
    dsItemHC: TDataSource;
    dbItemHC: TMSTable;
    dbItemHCAuditorNome: TStringField;
    dbEmpresa: TMSTable;
    dbEmpresaEmpresa: TIntegerField;
    dbEmpresaNome: TStringField;
    dbEmpresaFone1: TStringField;
    dbEmpresaFone2: TStringField;
    dbEmpresaFax: TStringField;
    dbEmpresaCGC: TStringField;
    dbEmpresaContato: TStringField;
    dbEmpresaEmail: TStringField;
    dbEmpresaHomePage: TStringField;
    dbEmpresaUsuario: TStringField;
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorUsuario: TStringField;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dsRegiao: TDataSource;
    Label56: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText6: TDBText;
    dbItemHCItem: TIntegerField;
    dbItemHCAuditor: TIntegerField;
    dbItemHCUsuario: TStringField;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    dbItemDiagnosticoBusca: TMSTable;
    dbItemDiagnosticoBuscaAtendimentoH: TIntegerField;
    dbItemDiagnosticoBuscaItem: TIntegerField;
    dbItemDiagnosticoBuscaDiagnostico: TIntegerField;
    dbItemDiagnosticoBuscaPrincipal: TBooleanField;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
    Panel4: TPanel;
    grdProntuarioHC: TDBGrid;
    grdItemHC: TDBGrid;
    Label26: TLabel;
    DBEdit10: TDBEdit;
    DBText4: TDBText;
    tabOrdemPaciente: TTabControl;
    grdCliente: TDBGrid;
    Label74: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    dsPreAnalise: TDataSource;
    tabEstatistica: TTabSheet;
    Label22: TLabel;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    dbProcessoHCAtendimentoHC1: TIntegerField;
    dbItemHCAtendimentoHC1: TIntegerField;
    dbProcessoHCTipo: TStringField;
    dbProcessoHCTipoTexto: TStringField;
    dbProcessoHCMotivoAlta: TStringField;
    GroupBox8: TGroupBox;
    Shape7: TShape;
    Label57: TLabel;
    Shape8: TShape;
    Label80: TLabel;
    Shape9: TShape;
    Label19: TLabel;
    Shape10: TShape;
    Label82: TLabel;
    dbItemHCTipo: TStringField;
    Label12: TLabel;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dsCliente: TDataSource;
    Label14: TLabel;
    cmbClienteID: TDBLookupComboBox;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dsClienteID: TDataSource;
    dbClienteIDPrincipal: TIntegerField;
    dbID: TMSTable;
    dbIDPaciente: TIntegerField;
    dbIDIDPaciente: TStringField;
    dsAtendHI: TDataSource;
    dsRelPC: TDataSource;
    dbRelPC: TMSTable;
    dbRelPCPaciente: TIntegerField;
    dbRelPCCliente: TIntegerField;
    dbRelPCPacienteNome: TStringField;
    dbRelPCClienteNome: TStringField;
    ImageList1: TImageList;
    Panel5: TPanel;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdRel: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    cmdProximo: TBitBtn;
    cmdAnterior: TBitBtn;
    CoolBar3: TCoolBar;
    txtPaciente: TEdit;
    dbProcessoHCDataInternacao: TDateTimeField;
    dbProcessoHCDataInclusao: TDateTimeField;
    dbItemHCDataAuditoria: TDateTimeField;
    dbItemHCDataUltimaVisita: TDateTimeField;
    dbItemHCDataUltimaInternacao: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEmpresaDataInicio: TDateTimeField;
    dbEmpresaDataFim: TDateTimeField;
    dbEmpresaDataInclusao: TDateTimeField;
    dbRelPCDataAuditoria: TDateTimeField;
    rvRelPC: TRvDataSetConnection;
    dbPaciente: TMSQuery;
    dbPacienteBusca: TMSQuery;
    dbPacientePaciente: TIntegerField;
    dbPacienteNome: TStringField;
    dbPacienteEndereco: TStringField;
    dbPacienteBairro: TStringField;
    dbPacienteCidade: TStringField;
    dbPacienteUF: TStringField;
    dbPacienteCep: TStringField;
    dbPacienteFone1: TStringField;
    dbPacienteFone2: TStringField;
    dbPacienteFax: TStringField;
    dbPacienteDocumento: TStringField;
    dbPacienteContato: TStringField;
    dbPacienteAnoNascimento: TSmallintField;
    dbPacienteDataNascimento: TDateTimeField;
    dbPacienteRegiao: TIntegerField;
    dbPacienteCliente: TIntegerField;
    dbPacienteIDPaciente: TStringField;
    dbPacienteCodigoPaciente: TStringField;
    dbPacienteUsuario: TStringField;
    dbPacienteDataInclusao: TDateTimeField;
    dbPacienteSexo: TStringField;
    dbPacienteIdade: TIntegerField;
    dbPacienteClienteNome: TStringField;
    dbPacienteUnidade: TStringField;
    dbPacienteIDPacienteBusca: TStringField;
    dbPacienteBuscaPaciente: TIntegerField;
    dbPacienteBuscaNome: TStringField;
    dbPacienteBuscaIDPaciente: TStringField;
    dbPreAnalise: TMSQuery;
    dbPreAnalisePaciente: TIntegerField;
    dbPreAnaliseCliente: TIntegerField;
    dbPreAnaliseHospital: TIntegerField;
    dbPreAnaliseMesCompetencia: TSmallintField;
    dbPreAnaliseAnoCompetencia: TSmallintField;
    dbPreAnaliseClienteNome: TStringField;
    dbPreAnaliseHospitalNome: TStringField;
    dbPreAnaliseDataFechamento: TDateTimeField;
    dbPreAnaliseDataInternacao: TDateTimeField;
    dbPreAnaliseDataAlta: TDateTimeField;
    dbAtendHI: TMSQuery;
    dbAtendHICliente: TIntegerField;
    dbAtendHISequencial: TIntegerField;
    dbAtendHIIDPaciente: TStringField;
    dbAtendHIPaciente: TIntegerField;
    dbPreAnaliseAtendimentoHI: TLargeintField;
    dbAtendHIAtendimentoHI: TLargeintField;
    dbPacV: TMSQuery;
    dbPacVPaciente: TIntegerField;
    dbPacVNome: TStringField;
    dbPacVEndereco: TStringField;
    dbPacVBairro: TStringField;
    dbPacVCidade: TStringField;
    dbPacVUF: TStringField;
    dbPacVCep: TStringField;
    dbPacVFone1: TStringField;
    dbPacVFone2: TStringField;
    dbPacVFax: TStringField;
    dbPacVDocumento: TStringField;
    dbPacVContato: TStringField;
    dbPacVAnoNascimento: TSmallintField;
    dbPacVDataNascimento: TDateTimeField;
    dbPacVRegiao: TIntegerField;
    dbPacVCliente: TIntegerField;
    dbPacVIDPaciente: TStringField;
    dbPacVCodigoPaciente: TStringField;
    dbPacVUsuario: TStringField;
    dbPacVDataInclusao: TDateTimeField;
    dbPacVSexo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure dsPacienteStateChange(Sender: TObject);
    procedure dbPacienteAfterCancel(DataSet: TDataSet);
    procedure dbPacienteAfterPost(DataSet: TDataSet);
    procedure dbPacienteAfterInsert(DataSet: TDataSet);
    procedure dbPacienteBeforeInsert(DataSet: TDataSet);
    procedure dbPacienteCalcFields(DataSet: TDataSet);
    procedure dbPacienteBeforePost(DataSet: TDataSet);
    procedure grdProntuarioHCDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cmdAnteriorClick(Sender: TObject);
    procedure cmdProximoClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure tabOrdemPacienteChange(Sender: TObject);
    procedure txtPacienteChange(Sender: TObject);
    procedure dbProcessoHCCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure dbPacienteAfterScroll(DataSet: TDataSet);
    procedure dbPacienteBeforeDelete(DataSet: TDataSet);
    procedure cmpClienteIniCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaciente: TfrmPaciente;
  iUltimoPaciente,iStatus:integer;
implementation

uses frmPrincipal;
{$R *.DFM}

procedure TfrmPaciente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.Close;
    dbClienteID.Close;
    dbAuditor.Close;
    dbHospital.Close;
    dbDiagnostico.Close;
    dbEmpresa.Close;
    dbRegiao.Close;

    dbPaciente.Close;
    dbPacienteBusca.Close;

    dbProcessoHC.Close;
    dbItemHC.Close;
    dbPreAnalise.Close;
end;

procedure TfrmPaciente.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
        dbPaciente.Open;
        tabOrdemPaciente.TabIndex:=0;
        cmpPaciente.Enabled:=false;


        dbProcessoHC.Open;
        dbItemHC.Open;
        dbPreAnalise.Open;
        dbCliente.Open;
        dbClienteID.Open;
        dbAuditor.Open;
        dbHospital.Open;
        dbDiagnostico.Open;
        dbEmpresa.Open;
        dbRegiao.Open;
        dbPacienteBusca.Open;

   finally
     pagPaciente.ActivePage:=tabPaciente;
     Screen.Cursor := crDefault;
   end;

end;

procedure TfrmPaciente.cmdNovoClick(Sender: TObject);
begin
    pagPaciente.TabIndex:=0;
    dbPaciente.Insert;
    cmpPaciente.SetFocus;
end;

procedure TfrmPaciente.cmdAlteraClick(Sender: TObject);
begin
    pagPaciente.TabIndex:=0;
    dbPaciente.Edit;
    cmpNomePaciente.SetFocus;
end;

procedure TfrmPaciente.cmdGravaClick(Sender: TObject);
begin
    dbPaciente.Post;
end;

procedure TfrmPaciente.cmdCancelaClick(Sender: TObject);
begin
    dbPaciente.Cancel;
end;

procedure TfrmPaciente.cmdExcluiClick(Sender: TObject);
var iResultado:integer;
begin
    if not imaster then
    begin
        ShowMessage('Exclusão permitida apenas para usuários Master');
        abort;
    end;

    pagPaciente.TabIndex:=0;
    iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_yes) then
        dbPaciente.Delete;
end;

procedure TfrmPaciente.dsPacienteStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbPaciente.State in [dsEdit,dsBrowse,dsInsert];
     cmdExclui.Enabled:=(dbPaciente.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbPaciente.RecordCount<>0);
     cmdGrava.Enabled:=dbPaciente.State in [dsEdit,dsInsert];
     cmdAltera.Enabled:=(dbPaciente.State=dsBrowse)
                         and (dbPaciente.RecordCount<>0);
     cmdCancela.Enabled:=dbPaciente.State in [dsEdit,dsInsert];
end;

procedure TfrmPaciente.dbPacienteAfterCancel(DataSet: TDataSet);
begin
        cmpPaciente.Enabled:=false;
end;

procedure TfrmPaciente.dbPacienteAfterPost(DataSet: TDataSet);
begin
    if istatus=1 then
        frmMenu.Log('Pacientes',dbPacienteCliente.value,'Paciente',
                                dbPacientePaciente.value,0,
                                dbPacienteNome.value,'I');
    cmpPaciente.Enabled:=false;
end;

procedure TfrmPaciente.dbPacienteAfterInsert(DataSet: TDataSet);
var dia,mes,ano:word;
begin
   DecodeDate(date,ano,mes,dia);
   cmpPaciente.Enabled:=true;
   dbPacientePaciente.Value:=iUltimoPaciente+1;
   dbPacienteDataInclusao.Value:=date;
   dbPacienteAnoNascimento.Value:=ano;
end;

procedure TfrmPaciente.dbPacienteBeforeInsert(DataSet: TDataSet);
begin
    dbCodigo.Open;
    dbCodigo.Refresh; 
    dbCodigo.Locate('Campo','Paciente',[]);
    iUltimoPaciente:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
    dbCodigo.Close;
end;

procedure TfrmPaciente.dbPacienteCalcFields(DataSet: TDataSet);
var dia,mes,ano: word;
var dian,mesn,anon: word;
begin
    DecodeDate(date,ano,mes,dia);
    if not dbPacienteDataNascimento.IsNull then
       DecodeDate(dbPacienteDataNascimento.Value,anon,mesn,dian)
    else
        anon:=dbPacienteAnoNascimento.Value;

    dbPacienteIdade.Value:=ano-anon;

    if (dbPacienteIdade.Value<=2) and
       (not dbPacienteDataNascimento.IsNull) then
    begin
       dbPacienteIdade.Value:=mes-mesn;
       if dbPacienteIdade.Value<1 then
          dbPacienteIdade.Value:=dbPacienteIdade.Value+12;
       if ano-anon=2 then
          dbPacienteIdade.Value:=dbPacienteIdade.Value+12;
       dbPacienteUnidade.Value:='mes(es)';
    end
    else
    begin
       dbPacienteUnidade.Value:='ano(s)';
       if dbPacienteIdade.value>2000 then
            dbPacienteIdade.value:=0;
    end;            
end;

procedure TfrmPaciente.dbPacienteBeforePost(DataSet: TDataSet);
begin
     if dbPacientePaciente.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if (dbPaciente.State=dsInsert) then
     begin
        dbPacienteBusca.sql.Clear;
        dbPacienteBusca.sql.text:='Select * from Pacientes '+
                                  'where Nome=:iNome and '+
                                  '      IDPaciente=:iID ';
        dbPacienteBusca.ParamByName('iNome').Value:=dbPacienteNome.Value;
        dbPacienteBusca.ParamByName('iID').Value:=dbPacienteIDPaciente.Value;
        dbPacienteBusca.Open;
        if dbPacienteBusca.RecordCount>0 then
        begin
            ShowMessage('Nome já cadastrado para este cliente.');
            abort; //solicitado Eulalia 27/02/2013
         end;    
         if dbPacienteAnoNascimento.Value<1900 then
            ShowMessage('Atenção! Verifique o ano de nascimento');

         if (dbPacientePaciente.Value<iUltimoPaciente+1) then
         begin
            ShowMessage('Código deve ser maior ou igual ao sugerido'+#13+
                        'Codigo Sugerido:'+IntToStr(iUltimoPaciente+1));
            abort;
         end;
     end;
     if dbPacienteNome.Value='' then
     begin
        ShowMessage('Nome inválido');
        abort;
     end;

     if dbPacienteDataInclusao.IsNull then
     begin
        ShowMessage('Data de início inválida');
        abort;
     end;

     if dbPacienteDataNascimento.value<StrToDate('01/01/1900') then
        dbPacienteDataNascimento.Clear;

     if dbPaciente.state=dsInsert then
        istatus:=1
     else istatus:=2;
end;

procedure TfrmPaciente.grdProntuarioHCDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbProcessoHCDataAlta.Value<=date) and
        (not dbProcessoHCDataAlta.IsNull) then
     begin
         if dbProcessoHCMotivoAlta.Value='P' then
            grdProntuarioHC.Canvas.Font.Color:=clBlack;
        if dbProcessoHCMotivoAlta.Value='A' then
            grdProntuarioHC.Canvas.Font.Color:=clGreen;
        if dbProcessoHCMotivoAlta.Value='O' then
            grdProntuarioHC.Canvas.Font.Color:=clRed;
        if dbProcessoHCMotivoAlta.Value='H' then
            grdProntuarioHC.Canvas.Font.Color:=clBlue;
     end;
     grdProntuarioHC.DefaultDrawDataCell(Rect,grdProntuarioHC.Columns[DataCol].field,State);
end;

procedure TfrmPaciente.cmdAnteriorClick(Sender: TObject);
begin
    dbPaciente.Prior;
end;

procedure TfrmPaciente.cmdProximoClick(Sender: TObject);
begin
    dbPaciente.Next;
end;

procedure TfrmPaciente.DBEdit10Exit(Sender: TObject);
var d,m,a:word;
begin
    if (dbPaciente.State in [dsInsert,dsEdit]) and
       (not dbPacienteDataNascimento.IsNull) then
    begin
        DecodeDate(dbPacienteDataNascimento.Value,a,m,d);
        dbPacienteAnoNascimento.Value:=a;
    end;    
end;

procedure TfrmPaciente.tabOrdemPacienteChange(Sender: TObject);
begin
    case tabOrdemPaciente.TabIndex of
     0:dbPaciente.IndexFieldNames:='Paciente';
     1:dbPaciente.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmPaciente.txtPacienteChange(Sender: TObject);
begin
    if txtPaciente.text<>'' then
     case tabOrdemPaciente.TabIndex of
     0:dbPaciente.Locate('Paciente',StrtoInt(Trim(TxtPaciente.Text)),[loCaseInsensitive,loPartialKey]);
     1:dbPaciente.Locate('Nome',Trim(TxtPaciente.Text),[loCaseInsensitive,loPartialKey]);
     end;
end;

procedure TfrmPaciente.dbProcessoHCCalcFields(DataSet: TDataSet);
begin
    if dbProcessoHCTipo.value='D' then
        dbProcessoHCTipoTexto.value:='Domiciliar';
    if dbProcessoHCTipo.value='C' then
        dbProcessoHCTipoTexto.value:='Clínica';
end;

procedure TfrmPaciente.BitBtn1Click(Sender: TObject);
var iCliente:integer;
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a atualização dos Clientes!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then
        abort;

    dbPaciente.First;
    while not dbPaciente.eof do
    begin
        icliente:=0;
        if dbPreAnalise.RecordCount>0 then
        begin
            dbPreAnalise.Last;
            icliente:=dbPreAnaliseCliente.value;
        end
        else
            if dbProcessoHC.RecordCount>0 then
            begin
                dbProcessoHC.Last;
                icliente:=dbProcessoHCCliente.value;
            end;
        if icliente=0 then
            dbPaciente.Delete
        else
        begin
            if dbPacienteCliente.value<>icliente then
            begin
                dbPaciente.Edit;
                dbPacientecliente.value:=icliente;
                if dbPacienteIDPaciente.value='' then
                    dbPacienteIDPaciente.value:=dbClienteIDID.value;
                dbPaciente.Post;
            end;
            if dbPacienteIDPaciente.value='' then
            begin
                dbPaciente.Edit;
                dbPacienteIDPaciente.value:=dbClienteIDID.value;
                dbPaciente.Post;
            end;
            if (not dbPacienteDataNascimento.IsNull) and
               (dbPacienteDataNascimento.value<StrToDate('01/01/1900')) then
            begin
                dbPaciente.Edit;
                dbPacienteDataNascimento.Clear;
                dbPaciente.Post;
            end;
            dbPaciente.Next;
        end;
    end;
    ShowMessage('Pacientes atualizados com sucesso');
end;

procedure TfrmPaciente.BitBtn2Click(Sender: TObject);
begin
    dbAtendHI.Open;
    dbID.open;
    dbAtendHI.First;

    while not dbAtendHI.Eof do
    begin
        if dbAtendHIIDPaciente.value='' then
        begin
            dbAtendHI.Edit;
            dbAtendHIIDPaciente.value:=dbIDIDPaciente.value;
            dbAtendHI.Post;
        end;
        dbAtendHI.Next;
    end;
    dbID.Close;
    dbAtendHI.Close;
    ShowMessage('Pacientes atualizados com sucesso');
end;

procedure TfrmPaciente.cmdRelClick(Sender: TObject);
var icliente:integer;
var iok:boolean;
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a impressão do relatório',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then
         abort;
     dbRelPC.Close;
     dbRelPC.SQL.Text:='Delete from relPacienteCliente';
     dbRelPC.Execute;
     dbRelPC.SQL.Text:='Select * from relPacienteCliente';
     dbRelPC.Open;
     dbPaciente.First;
     while not dbPaciente.eof do
     begin
        if dbPreAnalise.RecordCount>1 then
        begin
            icliente:=dbPreAnaliseCliente.value;
            iok:=false;
            while not dbPreAnalise.Eof do
            begin
                if dbPreAnaliseCliente.value<>icliente then
                    iok:=true;
                dbPreAnalise.next;
            end;
            if iok then
            begin
                icliente:=0;
                dbPreAnalise.First;
                while not dbPreAnalise.eof do
                begin
                    if icliente<>dbPreAnaliseCliente.value then
                    begin
                        if dbRelPC.Locate('Cliente;Paciente',VarArrayof([dbPreAnalisecliente.value,
                                                                      dbPreAnalisePaciente.value]),[]) then
                            dbRelPC.Edit
                        else
                            dbRelPC.Insert;

                        dbRelPCPaciente.value:=dbPreAnalisePaciente.value;
                        dbRelPCCliente.value:=dbPreAnaliseCliente.value;
                        dbRelPCDataAuditoria.value:=dbPreAnaliseDataFechamento.value;
                        dbRelPC.Post;
                        icliente:=dbPreAnaliseCliente.value
                    end;
                    dbPreAnalise.Next;
                end;
            end;
        end;
        dbPaciente.Next;
    end;
    if dbRelPC.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    frmMenu.rvBBAuditoria.SetParam('Titulo','Pacientes com mais de um cliente');
    frmMenu.rvBBAuditoria.SelectReport('relPacienteCliente',true);
    frmMenu.rvBBAuditoria.Execute;
end;

procedure TfrmPaciente.dbPacienteAfterScroll(DataSet: TDataSet);
begin
    if dbProcessoHC.Active=true then
        if dbProcessoHC.RecordCount>0 then
           tabHomeCare.ImageIndex:=0
        else
           tabHomeCare.ImageIndex:=1;

    if dbPreAnalise.Active=true then
        if dbPreAnalise.RecordCount>0 then
           tabEstatistica.ImageIndex:=0
        else
           tabEstatistica.ImageIndex:=1;
end;

procedure TfrmPaciente.dbPacienteBeforeDelete(DataSet: TDataSet);
begin
   frmMenu.Log('Pacientes',dbPacienteCliente.value,'Paciente',
                           dbPacientePaciente.value,0,
                           dbPacienteNome.value,'E');
end;

procedure TfrmPaciente.cmpClienteIniCloseUp(Sender: TObject);
begin
    dbPacienteIDPaciente.value:=dbClienteIDID.value;
end;

end.
