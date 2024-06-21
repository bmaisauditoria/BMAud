unit frmRemessasHI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Buttons, ToolWin, DBCtrls, Math, Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls,
  ComCtrls, StdCtrls, Grids, DBGrids;

type
  TfrmRemessaHI = class(TForm)
    dbRemessa: TMSTable;
    dsRemessa: TDataSource;
    dbItem: TMSTable;
    dbProcesso: TMSTable;
    dsProcesso: TDataSource;
    dsGlosa: TDataSource;
    dbRemessaCliente: TIntegerField;
    dbRemessaRemessa: TIntegerField;
    dbRemessaUsuario: TStringField;
    dbCliente: TMSTable;
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
    dbClienteUsuario: TStringField;
    dsCliente: TDataSource;
    dbRemessaNomeCliente: TStringField;
    TabControl1: TTabControl;
    DBGrid1: TDBGrid;
    CoolBar2: TCoolBar;
    lblLocCodigo1: TEdit;
    SaveDialog: TSaveDialog;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    dbPaciente: TMSTable;
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
    dbPacienteAnoNascimento: TIntegerField;
    dbPacienteUsuario: TStringField;
    dbPacienteIdade: TIntegerField;
    dbPacienteCodigoPaciente: TStringField;
    dbPacienteUnidade: TStringField;
    dsPaciente: TDataSource;
    dbItemDiag: TMSTable;
    dbProcessoCliente: TIntegerField;
    dbProcessoSequencial: TAutoIncField;
    dbProcessoPaciente: TIntegerField;
    dbProcessoHospital: TIntegerField;
    dbProcessoMedico: TIntegerField;
    dbProcessoEnfermeiro: TIntegerField;
    dbProcessoMesCompetencia: TIntegerField;
    dbProcessoAnoCompetencia: TIntegerField;
    dbProcessoDiasUTI: TFloatField;
    dbProcessoDiarias: TFloatField;
    dbProcessoDiariasGlosadas: TFloatField;
    dbProcessoDiariasCalculadas: TIntegerField;
    dbProcessoValor: TCurrencyField;
    dbProcessoValorGlosadoM: TCurrencyField;
    dbProcessoValorGlosadoE: TCurrencyField;
    dbProcessoUsuario: TStringField;
    dbProcessoObservacao: TMemoField;
    dbProcessoComplemento: TBooleanField;
    dbProcessoParcial: TIntegerField;
    dbProcessoNumeroParcial: TIntegerField;
    dbProcessoDayClinic: TBooleanField;
    dbProcessoIntercambio: TBooleanField;
    dbProcessoPosAnalise: TBooleanField;
    dbProcessoValornaoacordadom: TCurrencyField;
    dbProcessoValornaoacordadoe: TCurrencyField;
    dbProcessoPacote: TBooleanField;
    dbProcessoMedicoACRM: TIntegerField;
    dbProcessoConclusao: TStringField;
    dbProcessoInternacao: TStringField;
    dbProcessoTratamento: TStringField;
    dbProcessoApto: TFloatField;
    dbProcessoEnfermaria: TFloatField;
    dbProcessoSemi: TFloatField;
    dbProcessoBercario: TFloatField;
    dbProcessoDayClinicQtd: TFloatField;
    dbProcessoIsolamento: TFloatField;
    dbProcessoCodAmb: TIntegerField;
    dbProcessoUsuarioI: TStringField;
    dbProcessoRetorno: TIntegerField;
    dbProcessoSenha: TStringField;
    dbProcessoValorPago: TCurrencyField;
    dbItemCliente: TIntegerField;
    dbItemTipo: TStringField;
    dbItemGlosaI: TStringField;
    dbItemValor: TCurrencyField;
    dbItemValorApresentado: TCurrencyField;
    Panel1: TPanel;
    Panel7: TPanel;
    cmdExcluiP: TBitBtn;
    Label2: TLabel;
    grdProntuario: TDBGrid;
    DBText2: TDBText;
    CoolBar1: TCoolBar;
    cmpBusca: TEdit;
    dbProcessoBusca: TMSTable;
    dbProcessoBuscaCliente: TIntegerField;
    dbProcessoBuscaSequencial: TAutoIncField;
    dbProcessoBuscaPaciente: TIntegerField;
    dbProcessoBuscaHospital: TIntegerField;
    dbProcessoBuscaMedico: TIntegerField;
    dbProcessoBuscaEnfermeiro: TIntegerField;
    dbProcessoBuscaMesCompetencia: TIntegerField;
    dbProcessoBuscaAnoCompetencia: TIntegerField;
    dbProcessoBuscaDiasUTI: TFloatField;
    dbProcessoBuscaDiarias: TFloatField;
    dbProcessoBuscaDiariasGlosadas: TFloatField;
    dbProcessoBuscaDiariasCalculadas: TIntegerField;
    dbProcessoBuscaValor: TCurrencyField;
    dbProcessoBuscaValorGlosadoM: TCurrencyField;
    dbProcessoBuscaValorGlosadoE: TCurrencyField;
    dbProcessoBuscaUsuario: TStringField;
    dbProcessoBuscaObservacao: TMemoField;
    dbProcessoBuscaComplemento: TBooleanField;
    dbProcessoBuscaParcial: TIntegerField;
    dbProcessoBuscaNumeroParcial: TIntegerField;
    dbProcessoBuscaDayClinic: TBooleanField;
    dbProcessoBuscaIntercambio: TBooleanField;
    dbProcessoBuscaPosAnalise: TBooleanField;
    dbProcessoBuscaValornaoacordadom: TCurrencyField;
    dbProcessoBuscaValornaoacordadoe: TCurrencyField;
    dbProcessoBuscaPacote: TBooleanField;
    dbProcessoBuscaMedicoACRM: TIntegerField;
    dbProcessoBuscaConclusao: TStringField;
    dbProcessoBuscaInternacao: TStringField;
    dbProcessoBuscaTratamento: TStringField;
    dbProcessoBuscaApto: TFloatField;
    dbProcessoBuscaEnfermaria: TFloatField;
    dbProcessoBuscaSemi: TFloatField;
    dbProcessoBuscaBercario: TFloatField;
    dbProcessoBuscaDayClinicQtd: TFloatField;
    dbProcessoBuscaIsolamento: TFloatField;
    dbProcessoBuscaCodAmb: TIntegerField;
    dbProcessoBuscaUsuarioI: TStringField;
    dbProcessoBuscaRetorno: TIntegerField;
    dbProcessoBuscaRemessa: TIntegerField;
    dbProcessoBuscaSenha: TStringField;
    dbProcessoBuscaVisita: TIntegerField;
    dbProcessoBuscaValorPago: TCurrencyField;
    dsDiag: TDataSource;
    dbProcessoRemessa: TIntegerField;
    dbItemDiagCliente: TIntegerField;
    dbItemDiagDiagnostico: TIntegerField;
    dbItemDiagAtendimentoHC: TIntegerField;
    dbItemDiagItem: TIntegerField;
    dbItemDiagPrincipal: TBooleanField;
    dbItemDiagCodCid: TStringField;
    dbItemDiagGrupocid: TStringField;
    dbProcessoNomePaciente: TStringField;
    dbProcessoCodigoPaciente: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalCNPJ: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbProcessoHospitalCNPJ: TStringField;
    dbProcessoHospitalNome: TStringField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroUsuario: TStringField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbProcessoMedicoNome: TStringField;
    dbProcessoEnfermeiroNome: TStringField;
    dbAmb: TMSTable;
    dbAmbCodAMB: TIntegerField;
    dbAmbDescricaoAMB: TStringField;
    dbProcessoAMBNome: TStringField;
    dbProcessoMedicoCRM: TIntegerField;
    dbProcessoEnfermeiroCOREN: TIntegerField;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    dbGlosa: TMSTable;
    dbGlosaGlosaI: TStringField;
    dbGlosaNome: TStringField;
    dbGlosaResponsavel: TStringField;
    dbItemGlosaNome: TStringField;
    dbItemDiagDiagnosticoNome: TStringField;
    Panel5: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    grdAuditoria: TDBGrid;
    Panel2: TPanel;
    grdDiagnostico: TDBGrid;
    Label4: TLabel;
    dbProcessoQtdAmb: TIntegerField;
    dbProcessoExtraAmb: TBooleanField;
    dbProcessoCodAmb1: TIntegerField;
    dbProcessoQtdAmb1: TIntegerField;
    dbProcessoExtraAmb1: TBooleanField;
    dbProcessoSenha1: TStringField;
    dbProcessoAMBNome1: TStringField;
    dbRemessaUsuarioFechamento: TStringField;
    dbPacienteIDPaciente: TStringField;
    dbProcessoQtdRNVivo: TIntegerField;
    dbProcessoQtdRNMorto: TIntegerField;
    dbProcessoQtdRNPrematuro: TIntegerField;
    dbProcessoAcidente: TStringField;
    dbPacienteCliente: TIntegerField;
    dbPacienteSexo: TStringField;
    dbProcessoObitoGravida: TStringField;
    Panel12: TPanel;
    BitBtn5: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdNovoP: TBitBtn;
    BitBtn1: TBitBtn;
    dbRemessaDataGeracao: TDateTimeField;
    dbRemessaDataEnvio: TDateTimeField;
    dbRemessaHoraEnvio: TDateTimeField;
    dbRemessaDataFechamento: TDateTimeField;
    dbProcessoIDPaciente: TStringField;
    dbProcessoVisita: TWordField;
    dbProcessoUsuarioSite: TStringField;
    dbProcessoMedicoA: TStringField;
    dbProcessoMedicoAEspec: TStringField;
    dbProcessoGemelar: TWordField;
    dbProcessoDataAmb1: TDateTimeField;
    dbProcessoDataAmb2: TDateTimeField;
    dbProcessoDataAmb3: TDateTimeField;
    dbProcessoPAmb1: TFloatField;
    dbProcessoPAmb2: TFloatField;
    dbProcessoPAmb3: TFloatField;
    dbProcessoCodAmb3: TIntegerField;
    dbProcessoResponsavelH: TStringField;
    dbProcessoRN: TStringField;
    dbProcessoPExcedente: TWordField;
    dbProcessoPAberto: TWordField;
    dbProcessoPAbertoMotivo: TStringField;
    dbProcessoServico: TStringField;
    dbProcessoProdutividade: TIntegerField;
    dbProcessoDataFechamento: TDateTimeField;
    dbProcessoDataInternacao: TDateTimeField;
    dbProcessoDataAlta: TDateTimeField;
    dbProcessoDataInicioP: TDateTimeField;
    dbProcessoDataInclusao: TDateTimeField;
    dbProcessoDataAlteracao: TDateTimeField;
    dbProcessoDataSite: TDateTimeField;
    dbProcessoDataFimP: TDateTimeField;
    dbItemDiagDataAuditoria: TDateTimeField;
    dbPacienteDataNascimento: TDateTimeField;
    dbProcessoBuscaDataFechamento: TDateTimeField;
    dbProcessoBuscaDataInternacao: TDateTimeField;
    dbProcessoBuscaDataAlta: TDateTimeField;
    dbProcessoBuscaDataInicioP: TDateTimeField;
    dbProcessoAtendimentoHI: TLargeintField;
    dbItemAtendimentoHI: TLargeintField;
    dbItemDiagAtendimentoHI: TLargeintField;
    dbProcessoBuscaAtendimentoHI: TLargeintField;
    dbProcessoAtendimentoHIO: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdNovoPClick(Sender: TObject);
    procedure lblLocCodigo1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmdAnteriorPClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRemessaHI: TfrmRemessaHI;

implementation

uses frmPrincipal, frmGeraRemessasHI;

{$R *.dfm}

Function LimpaAcento(A:String):string;
var i:Integer;
begin
    for i:=1 to length(a) do
        case a[i] of
            'ã','á','à','â':a[i]:='a';
            'è','é','ê':a[i]    :='e';
            'õ','ô','ò','ó':a[i]:='o';
            'í':a[i]            :='i';
            'ü','ú':a[i]        :='u';
            'ç':a[i]            :='c';
            'º':a[i]            :='o';
            'ª':a[i]            :='a';
        end;
    result:=ansiuppercase(a);
end;


function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

function ZeroEsq1(a:string;t:integer):string; //string->string
var aa:string;
begin
    aa:=trim(a);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

function Repl(a:string;t:integer):string; //Duplicador
var aa:string;
    i:integer;
begin
    aa:=a;
    for i:=1 to t do
       aa:=aa+a;
    result:=aa;
end;

function LimpaDataInv(a:tdate):string;
var j,r:string;
var xd,xm,xa:word;
begin
    DecodeDate(a,xa,xm,xd);

    j:=inttostr(xa);
    r:=j;

    j:=inttostr(xm);
    if length(j)=1 then
       j:='0'+j;
    r:=r+j;
    j:=inttostr(xd);
    if length(j)=1 then
       j:='0'+j;
    r:=r+j;
    result:=r;
end;


function LimpaData(a:tdate):string;
var j,r:string;
var xd,xm,xa:word;
begin
    DecodeDate(a,xa,xm,xd);
    j:=inttostr(xd);
    if length(j)=1 then
       j:='0'+j;
    r:=j;
    j:=inttostr(xm);
    if length(j)=1 then
       j:='0'+j;
    r:=r+j;
    j:=inttostr(xa);
    if length(j)=2 then
       j:='20'+j;
    r:=r+j;
    result:=r;
end;

function LimpaHora(a:ttime):string;
var j,r:string;
var xh,xm,xs,xx:word;
begin
    DecodeTime(a,xh,xm,xs,xx);
    j:=inttostr(xh);
    if length(j)=1 then
       j:='0'+j;
    r:=j;
    j:=inttostr(xm);
    if length(j)=1 then
       j:='0'+j;
    r:=r+j;
{    j:=inttostr(xs);
    if length(j)=1 then
       j:='0'+j;
    r:=r+j;}
    result:=r;
end;

procedure TfrmRemessaHI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbRemessa.Close;
    dbProcesso.Close;
    dbProcessoBusca.Close;
    dbItemDiag.Close;
    dbItem.Close;
    dbCliente.Close;
    dbPaciente.Close;
    dbHospital.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbAMB.Close;
    dbDiagnostico.Close;
    dbGlosa.Close;
end;

procedure TfrmRemessaHI.FormShow(Sender: TObject);
begin
    dbCliente.Open;
    dbRemessa.Open;
    dbProcesso.Open;
    dbProcessoBusca.Open;
    dbItemDiag.Open;
    dbItem.Open;
    dbPaciente.Open;
    dbHospital.Open;
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbAMB.Open;
    dbDiagnostico.Open;
    dbGlosa.Open;
end;

procedure TfrmRemessaHI.cmdGravaPClick(Sender: TObject);
begin
    if frmGeraRemessaHI=nil then
       Application.CreateForm(TfrmGeraRemessaHI, frmGeraRemessaHI);
    frmGeraRemessaHI.ShowModal;
end;

procedure TfrmRemessaHI.cmdNovoPClick(Sender: TObject);
var iArquivo,campo,dir,iSenha,iAcomoda:string;
var linha:array[1..600] of char;
var arqrem:textfile;
var i,totreg,d,iResultado:integer;
var dtini,dtenv:TDate;
var hrenv:TTime;
begin
    if dbRemessaDataFechamento.isnull then
        if iMaster then
        begin
            iResultado:=Application.MessageBox('Confirme o reprocessamento da remessa.'+#13+
                                               'Atenção! A remessa é montada sobre os dados atuais e um reprocessamento pode gerar uma remessa diferente da gerada anteriormente',
            'Aviso', mb_yesno+ mb_iconExclamation);
            if(iResultado=id_no) then abort;
        end
    else
    begin
        ShowMessage('Remessa finalizada');
        abort;
    end;

    iResultado:=Application.MessageBox('Atenção! O formato da data no Windows desta maquina deve estar DD/MM/AAAA e a hora HH:MM:SS',
                                       'Aviso', mb_yesno+ mb_iconExclamation);
     if(iResultado=id_no) then abort;

    dtenv:=date;
    hrenv:=time;

    dir:=idir;
    totreg:=0;
    SaveDialog.InitialDir:=iDir;
    SaveDialog.FileName:='AuditBEB'+Copy(LimpaDataInv(dtenv),3,10)+'.txt';
    ProgressBar1.Min:=0;
    ProgressBar1.Position:=0;
    if SaveDialog.Execute then
    begin
        iArquivo:=SaveDialog.filename;
        fillchar(linha, sizeof(linha), #32);
//        dbProcesso.DisableControls;

        ProgressBar1.Max:=dbProcesso.RecordCount+
                          dbItem.RecordCount+
                          dbItemDiag.RecordCount;
///Header 00
        campo:='0073003089000113';
        move(campo[1],linha[1],length(campo));
        campo:=_Empresa;
        move(campo[1],linha[17],length(campo));
        campo:=DateToStr(dtenv)+' '+Copy(TimeToStr(hrenv),1,5);
        move(campo[1],linha[77],length(campo));
        campo:=Repl(' ',508);
        move(campo[1],linha[93],length(campo));

        AssignFile(arqrem,iArquivo);

        ReWrite(arqrem);
        Write(arqrem,copy(linha,1,600));

        writeln(arqrem);

        dbProcesso.First;
        while not dbProcesso.eof do
        begin

// 10 - Auditoria
            fillchar(linha, sizeof(linha), #32);
            campo:='10';
            move(campo[1],linha[1],length(campo));

            campo:=Copy(dbProcessoSenha.value,1,9);
            move(campo[1],linha[3],length(campo));

            campo:=LimpaDataInv(dbProcessoDataInternacao.value);
            move(campo[1],linha[9],length(campo));

            campo:=Copy(dbProcessoCodigoPaciente.value,1,16); //Carteira do usuario
            move(campo[1],linha[17],length(campo));

            campo:=Copy(dbProcessoNomePaciente.value,1,60); //nome usuario
            move(campo[1],linha[33],length(campo));

            campo:=Copy(dbProcessoHospitalCNPJ.value,1,14);
            move(campo[1],linha[93],length(campo));

            campo:=Copy(dbProcessoHospitalNome.value,1,60);;   //nome do prestador
            move(campo[1],linha[107],length(campo));

            campo:=LimpaDataInv(dbProcessoDataAlta.value);
            move(campo[1],linha[167],length(campo));

            campo:='00';
            if dbProcessoParcial.value=1 then
                campo:='06' //Parcial
            else
            begin
                if dbProcessoConclusao.value='A' then
                    campo:='01'; //curado
                if dbProcessoConclusao.value='M' then
                    campo:='02'; //melhorado
                if dbProcessoConclusao.value='0' then
                    campo:='03'; //obito
                if dbProcessoConclusao.value='P' then
                    campo:='04'; //curado
                if dbProcessoConclusao.value='T' then
                    campo:='05'; //transf
                if dbProcessoConclusao.value='H' then
                    campo:='07'; //homecare
            end;
            move(campo[1],linha[175],length(campo));


            campo:=Repl(' ',424);;
            move(campo[1],linha[177],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

// 11 - Diarias
            fillchar(linha, sizeof(linha), #32);
            campo:='11';
            move(campo[1],linha[1],length(campo));

            campo:=ZeroEsq(Trunc(dbProcessoDiarias.value),3);
            move(campo[1],linha[3],length(campo));

            campo:=ZeroEsq(Trunc(dbProcessoDiasUTI.value),3);
            move(campo[1],linha[6],length(campo));

            campo:=ZeroEsq(Trunc(RoundTo(dbProcessoValor.value,-2)*100),17);
            move(campo[1],linha[9],length(campo));

            campo:=Repl(' ',575);
            move(campo[1],linha[26],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

// 12 - Obito Gravida/Acidente

            fillchar(linha, sizeof(linha), #32);
            campo:='12';
            move(campo[1],linha[1],length(campo));

            if dbProcessoObitoGravida.value='' then
                campo:='  ';
            if dbProcessoObitoGravida.value='G' then
                campo:='01';
            if dbProcessoObitoGravida.value='I' then
                campo:='02';
            if dbProcessoObitoGravida.value='S' then
                campo:='03';
            move(campo[1],linha[3],length(campo));

            campo:=ZeroEsq(Trunc(dbProcessoQtdRNVivo.value),2);
            move(campo[1],linha[5],length(campo));

            campo:=ZeroEsq(Trunc(dbProcessoQtdRNMorto.value),2);
            move(campo[1],linha[7],length(campo));

            campo:=ZeroEsq(Trunc(dbProcessoQtdRNPrematuro.value),2);
            move(campo[1],linha[9],length(campo));

            if dbProcessoAcidente.value='' then
               campo:='  ';
            if dbProcessoAcidente.value='R' then
                campo:='00';
            if dbProcessoAcidente.value='T' then
                campo:='01';
            if dbProcessoAcidente.value='O' then
                campo:='02';
            move(campo[1],linha[11],length(campo));

            campo:=Repl(' ',588);
            move(campo[1],linha[26],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

// 20 - AMB
            fillchar(linha, sizeof(linha), #32);
            campo:='20';
            move(campo[1],linha[1],length(campo));

            campo:=ZeroEsq(dbProcessoCodAmb.value,8);
            move(campo[1],linha[3],length(campo));

            campo:=Copy(dbProcessoSenha.value,1,6); //CHI
            move(campo[1],linha[11],length(campo));

            campo:=ZeroEsq(dbProcessoQtdAmb.value,3);
            move(campo[1],linha[17],length(campo));

            if dbProcessoExtraAmb.value=true then
                campo:='1'
            else
                campo:='0';
            move(campo[1],linha[20],length(campo));

            campo:=Repl(' ',580);
            move(campo[1],linha[21],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

// 21 - AMB Secundario
            fillchar(linha, sizeof(linha), #32);
            campo:='21';
            move(campo[1],linha[1],length(campo));

            campo:=ZeroEsq(dbProcessoCodAmb1.value,8);
            move(campo[1],linha[3],length(campo));

            campo:=Copy(dbProcessoSenha1.value,1,6); //CHI
            move(campo[1],linha[11],length(campo));

            campo:=ZeroEsq(dbProcessoQtdAmb1.value,3);
            move(campo[1],linha[17],length(campo));

            if dbProcessoExtraAmb1.value=true then
                campo:='1'
            else
                campo:='0';
            move(campo[1],linha[20],length(campo));

            campo:=Repl(' ',580);
            move(campo[1],linha[21],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

            dbItemDiag.First;
            while (not dbItemDiag.eof) do
            begin
                if dbItemDiagPrincipal.value=true then
                begin
// 30 - Cid principal
                    fillchar(linha, sizeof(linha), #32);
                    campo:='30';
                    move(campo[1],linha[1],length(campo));

                    campo:=Copy(dbItemDiagCodCid.value,1,6);
                    i:=Pos('.',campo);
                    if i>0 then
                        delete(campo,i,1);
                    campo:=copy(campo,1,4);
                    move(campo[1],linha[3],length(campo));

                    campo:=dbItemDiagDiagnosticoNome.Value;
                    move(campo[1],linha[7],length(campo));

                    campo:=Repl(' ',544);
                    move(campo[1],linha[57],length(campo));

                    Write(arqrem,copy(linha,1,600));
                    writeln(arqrem);
// 31 - Cid alta
                    fillchar(linha, sizeof(linha), #32);
                    campo:='31';
                    move(campo[1],linha[1],length(campo));

                    campo:=Copy(dbItemDiagCodCid.value,1,6);
                    i:=Pos('.',campo);
                    if i>0 then
                        delete(campo,i,1);
                    campo:=copy(campo,1,4);
                    move(campo[1],linha[3],length(campo));

                    campo:=dbItemDiagDiagnosticoNome.Value;
                    move(campo[1],linha[7],length(campo));

                    campo:=Repl(' ',544);
                    move(campo[1],linha[57],length(campo));

                    Write(arqrem,copy(linha,1,600));
                    writeln(arqrem);
// 32 - Cid doenca base
                    fillchar(linha, sizeof(linha), #32);
                    campo:='32';
                    move(campo[1],linha[1],length(campo));

                    campo:=Copy(dbItemDiagCodCid.value,1,6);
                    i:=Pos('.',campo);
                    if i>0 then
                        delete(campo,i,1);
                    campo:=copy(campo,1,4);
                    move(campo[1],linha[3],length(campo));

                    campo:=dbItemDiagDiagnosticoNome.Value;
                    move(campo[1],linha[7],length(campo));

                    campo:=Repl(' ',544);
                    move(campo[1],linha[57],length(campo));

                    Write(arqrem,copy(linha,1,600));
                    writeln(arqrem);
//*********
                    break;
                end
                else
                    dbItemDiag.Next;
            end;

// 33 - Cid secundario
            dbItemDiag.First;
            while (not dbItemDiag.eof) do
            begin
                if dbItemDiagPrincipal.value=false then
                begin
                    fillchar(linha, sizeof(linha), #32);
                    campo:='33';
                    move(campo[1],linha[1],length(campo));

                    campo:=Copy(dbItemDiagCodCid.value,1,6);
                    i:=Pos('.',campo);
                    if i>0 then
                        delete(campo,i,1);
                    campo:=copy(campo,1,4);
                    move(campo[1],linha[3],length(campo));

                    campo:=dbItemDiagDiagnosticoNome.Value;
                    move(campo[1],linha[7],length(campo));

                    campo:=Repl(' ',544);
                    move(campo[1],linha[57],length(campo));

                    Write(arqrem,copy(linha,1,600));
                    writeln(arqrem);
                end;
                dbItemDiag.Next;
            end;

// 40 - Auditor
            fillchar(linha, sizeof(linha), #32);
            campo:='40';
            move(campo[1],linha[1],length(campo));

            campo:=LimpaDataInv(dbProcessoDataFechamento.value);
            move(campo[1],linha[3],length(campo));

            campo:=ZeroEsq(dbProcessoMedicoCRM.value,9);
            move(campo[1],linha[11],length(campo));

            campo:=dbProcessoMedicoNome.value+Repl(' ',25);
            move(campo[1],linha[20],length(campo)); //35+25;

{            campo:=Copy(dbProcessoObservacao.AsString,1,500);
            while pos('#',campo)<>0 do
            begin
                i:=pos('#',campo);
                delete(campo,i,1);
            end;}

            campo:=Repl(' ',500);
            move(campo[1],linha[80],length(campo));

            campo:=Repl(' ',21);
            move(campo[1],linha[580],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

// 80 - Fim da Auditoria
            fillchar(linha, sizeof(linha), #32);
            campo:='80';
            move(campo[1],linha[1],length(campo));

            campo:='99999';
            move(campo[1],linha[3],length(campo));


            campo:=Repl(' ',593);
            move(campo[1],linha[8],length(campo));

            Write(arqrem,copy(linha,1,600));
            writeln(arqrem);

            dbProcesso.Next;
            totreg:=totreg+1;
            ProgressBar1.Position:=ProgressBar1.Position+1;
        end;
//**** Trailer 90
        fillchar(linha, sizeof(linha), #32);
        campo:='90';
        move(campo[1],linha[1],length(campo));

        campo:=ZeroEsq(totreg,6);
        move(campo[1],linha[3],length(campo));

        campo:=Repl(' ',592);
        move(campo[1],linha[9],length(campo));

        Write(arqrem,copy(linha,1,600));
        closefile(arqrem);


        dbRemessa.Edit;
        dbRemessaDataEnvio.value:=dtenv;
        dbRemessaHoraEnvio.value:=hrenv;
        dbRemessaUsuario.value:=iUsuario;
        dbRemessa.Post;
        ShowMessage('Remessa gerada com sucesso');
    end;
end;

procedure TfrmRemessaHI.lblLocCodigo1Change(Sender: TObject);
begin
    dbRemessa.Locate('Remessa',StrToInt(lblLocCodigo1.Text),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmRemessaHI.BitBtn1Click(Sender: TObject);
begin
    if dbRemessaDataEnvio.isnull then
    begin
        showMessage('Remessa ainda não enviada. Impossivel fechar');
        abort;
    end;
    dbRemessa.Edit;
    if dbRemessaDataFechamento.isnull then
    begin
        dbRemessaDataFechamento.value:=date;
        dbRemessaUsuarioFechamento.value:=iUsuario;
    end
    else
    begin
        dbRemessaDataFechamento.clear;
        dbRemessaUsuarioFechamento.value:=iUsuario;
    end;
    dbRemessa.Post;
end;

procedure TfrmRemessaHI.cmdAnteriorPClick(Sender: TObject);
begin
{    if relRemessaA=nil then
       Application.CreateForm(TrelRemessaA, relRemessaA);
    with relRemessaA do
    begin
        lblInicio.Caption:=IntToStr(dbRemessaRemessa.value);
        qrImagem.Picture.LoadFromFile(iDir+'logotipo.bmp');
        qrpRelatorio.Preview;
    end;}
end;

procedure TfrmRemessaHI.BitBtn4Click(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a exclusão do registro da remessa',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     dbProcesso.Edit;
     dbProcessoRemessa.value:=0;
     dbProcesso.Post;

end;

procedure TfrmRemessaHI.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Capeante da Remessa!'+#13+'Atenção serão exclusos também todos os itens.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     dbProcesso.Edit;
     dbProcessoRemessa.value:=0;
     dbProcesso.Post;
end;

end.
