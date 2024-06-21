unit frmPreAnalisesAtu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, MemDS, DBAccess, MSAccess, StdCtrls, DBCtrls,
  Buttons;

type
  TfrmPreAnaliseAtu = class(TForm)
    tabAtualizacao: TTabControl;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospitalIni: TDataSource;
    dsClienteIni: TDataSource;
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    Label1: TLabel;
    cmpClienteIni: TDBLookupComboBox;
    chkHospital: TCheckBox;
    cmpHospitalIni: TDBLookupComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label3: TLabel;
    Edit3: TEdit;
    UpDown4: TUpDown;
    Edit4: TEdit;
    UpDown5: TUpDown;
    ProgressBar: TProgressBar;
    dbProcesso: TMSQuery;
    dbProcessoGlosa: TMSQuery;
    dbProcessoDiag: TMSQuery;
    dbAtendH: TMSQuery;
    dbAtendHCliente: TIntegerField;
    dbAtendHSequencial: TIntegerField;
    dbAtendHAtendimentoHI: TLargeintField;
    dbAtendHPaciente: TIntegerField;
    dbAtendHHospital: TIntegerField;
    dbAtendHMedico: TIntegerField;
    dbAtendHEnfermeiro: TIntegerField;
    dbAtendHMesCompetencia: TSmallintField;
    dbAtendHAnoCompetencia: TSmallintField;
    dbAtendHDiasUTI: TFloatField;
    dbAtendHDiarias: TFloatField;
    dbAtendHDiariasGlosadas: TFloatField;
    dbAtendHDiariasCalculadas: TIntegerField;
    dbAtendHValor: TCurrencyField;
    dbAtendHValorGlosadoM: TCurrencyField;
    dbAtendHValorGlosadoE: TCurrencyField;
    dbAtendHUsuario: TStringField;
    dbAtendHObservacao: TMemoField;
    dbAtendHComplemento: TBooleanField;
    dbAtendHNumeroParcial: TSmallintField;
    dbAtendHDayClinic: TBooleanField;
    dbAtendHIntercambio: TBooleanField;
    dbAtendHPosAnalise: TBooleanField;
    dbAtendHValorNaoAcordadoM: TCurrencyField;
    dbAtendHValorNaoAcordadoE: TCurrencyField;
    dbAtendHPacote: TBooleanField;
    dbAtendHMedicoACRM: TIntegerField;
    dbAtendHConclusao: TStringField;
    dbAtendHInternacao: TStringField;
    dbAtendHTratamento: TStringField;
    dbAtendHApto: TFloatField;
    dbAtendHEnfermaria: TFloatField;
    dbAtendHSemi: TFloatField;
    dbAtendHBercario: TFloatField;
    dbAtendHDayClinicQtd: TFloatField;
    dbAtendHIsolamento: TFloatField;
    dbAtendHCodAmb: TIntegerField;
    dbAtendHQtdAmb: TSmallintField;
    dbAtendHExtraAmb: TBooleanField;
    dbAtendHSenha: TStringField;
    dbAtendHCodAmb1: TIntegerField;
    dbAtendHQtdAmb1: TSmallintField;
    dbAtendHExtraAmb1: TBooleanField;
    dbAtendHSenha1: TStringField;
    dbAtendHRetorno: TIntegerField;
    dbAtendHRemessa: TIntegerField;
    dbAtendHVisita: TWordField;
    dbAtendHValorPago: TCurrencyField;
    dbAtendHObitoGravida: TStringField;
    dbAtendHQtdRNVivo: TSmallintField;
    dbAtendHQtdRNMorto: TSmallintField;
    dbAtendHQtdRNPrematuro: TSmallintField;
    dbAtendHAcidente: TStringField;
    dbAtendHUsuarioI: TStringField;
    dbAtendHDataInclusao: TDateTimeField;
    dbAtendHDataExclusao: TDateTimeField;
    dbAtendHDataAlteracao: TDateTimeField;
    dbAtendHUsuarioSite: TStringField;
    dbAtendHDataSite: TDateTimeField;
    dbAtendHDataFimP: TDateTimeField;
    dbAtendHGemelar: TWordField;
    dbAtendHDataAmb1: TDateTimeField;
    dbAtendHDataAmb2: TDateTimeField;
    dbAtendHDataAmb3: TDateTimeField;
    dbAtendHPAmb1: TFloatField;
    dbAtendHPAmb2: TFloatField;
    dbAtendHPAmb3: TFloatField;
    dbAtendHCodAmb3: TIntegerField;
    dbAtendHResponsavelH: TStringField;
    dbAtendHRN: TStringField;
    dbAtendHServico: TStringField;
    dbAtendHProdutividade: TIntegerField;
    dbAtendHIDPaciente: TStringField;
    dbAtendHDataFechamento: TDateTimeField;
    dbAtendHDataInternacao: TDateTimeField;
    dbAtendHDataAlta: TDateTimeField;
    dbAtendHParcial: TWordField;
    dbAtendHDataInicioP: TDateTimeField;
    dbAtendHServicoC: TStringField;
    dbAtendHNABradesco: TStringField;
    dbAtendHAtendimentoHIO: TLargeintField;
    dbAtendHComplementoF: TBooleanField;
    dbAtendHDiariasLonga: TIntegerField;
    dbItem: TMSQuery;
    dbItemCliente: TIntegerField;
    dbItemAtendimentoHI: TLargeintField;
    dbItemTipo: TStringField;
    dbItemGlosaI: TStringField;
    dbItemValor: TCurrencyField;
    dbItemValorApresentado: TCurrencyField;
    dbDiag: TMSQuery;
    dbDiagCliente: TIntegerField;
    dbDiagAtendimentoHI: TLargeintField;
    dbDiagDiagnostico: TIntegerField;
    dbDiagAtendimentoHC: TIntegerField;
    dbDiagItem: TIntegerField;
    dbDiagDataAuditoria: TDateTimeField;
    dbDiagPrincipal: TBooleanField;
    dbDiagCodCid: TStringField;
    dbDiagGrupocid: TStringField;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
    cmdCopia: TBitBtn;
    cmdExcluir: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    dsProcesso: TDataSource;
    dbProcessoCliente: TIntegerField;
    dbProcessoAtendimentoHI: TLargeintField;
    dbProcessoSequencial: TIntegerField;
    dbProcessoIDPaciente: TStringField;
    dbProcessoPaciente: TIntegerField;
    dbProcessoHospital: TIntegerField;
    dbProcessoMedico: TIntegerField;
    dbProcessoEnfermeiro: TIntegerField;
    dbProcessoDataFechamento: TDateTimeField;
    dbProcessoMesCompetencia: TSmallintField;
    dbProcessoAnoCompetencia: TSmallintField;
    dbProcessoDataInternacao: TDateTimeField;
    dbProcessoDataAlta: TDateTimeField;
    dbProcessoDiasUTI: TFloatField;
    dbProcessoDiarias: TFloatField;
    dbProcessoDiariasGlosadas: TFloatField;
    dbProcessoDiariasCalculadas: TIntegerField;
    dbProcessoValor: TCurrencyField;
    dbProcessoValorGlosadoM: TCurrencyField;
    dbProcessoValorGlosadoE: TCurrencyField;
    dbProcessoObservacao: TMemoField;
    dbProcessoComplemento: TBooleanField;
    dbProcessoComplementoF: TBooleanField;
    dbProcessoParcial: TWordField;
    dbProcessoNumeroParcial: TSmallintField;
    dbProcessoDataInicioP: TDateTimeField;
    dbProcessoDayClinic: TBooleanField;
    dbProcessoIntercambio: TBooleanField;
    dbProcessoPosAnalise: TBooleanField;
    dbProcessoValorNaoAcordadoM: TCurrencyField;
    dbProcessoValorNaoAcordadoE: TCurrencyField;
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
    dbProcessoQtdAmb: TSmallintField;
    dbProcessoExtraAmb: TBooleanField;
    dbProcessoSenha: TStringField;
    dbProcessoCodAmb1: TIntegerField;
    dbProcessoQtdAmb1: TSmallintField;
    dbProcessoExtraAmb1: TBooleanField;
    dbProcessoSenha1: TStringField;
    dbProcessoRetorno: TIntegerField;
    dbProcessoRemessa: TIntegerField;
    dbProcessoVisita: TWordField;
    dbProcessoValorPago: TCurrencyField;
    dbProcessoObitoGravida: TStringField;
    dbProcessoQtdRNVivo: TSmallintField;
    dbProcessoQtdRNMorto: TSmallintField;
    dbProcessoQtdRNPrematuro: TSmallintField;
    dbProcessoAcidente: TStringField;
    dbProcessoUsuarioI: TStringField;
    dbProcessoDataInclusao: TDateTimeField;
    dbProcessoDataExclusao: TDateTimeField;
    dbProcessoUsuario: TStringField;
    dbProcessoDataAlteracao: TDateTimeField;
    dbProcessoUsuarioSite: TStringField;
    dbProcessoDataSite: TDateTimeField;
    dbProcessoDataFimP: TDateTimeField;
    dbProcessoMedicoA: TStringField;
    dbProcessoMedicoAEspec: TStringField;
    dbProcessoAtendimentoHIO: TLargeintField;
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
    dbProcessoServicoC: TStringField;
    dbProcessoProdutividade: TIntegerField;
    dbProcessoNABradesco: TStringField;
    dbProcessoDiariasLonga: TIntegerField;
    dbProcessoGlosaCliente: TIntegerField;
    dbProcessoGlosaAtendimentoHI: TLargeintField;
    dbProcessoGlosaTipo: TStringField;
    dbProcessoGlosaGlosaI: TStringField;
    dbProcessoGlosaValor: TCurrencyField;
    dbProcessoGlosaValorApresentado: TCurrencyField;
    dbProcessoDiagCliente: TIntegerField;
    dbProcessoDiagAtendimentoHI: TLargeintField;
    dbProcessoDiagDiagnostico: TIntegerField;
    dbProcessoDiagAtendimentoHC: TIntegerField;
    dbProcessoDiagItem: TIntegerField;
    dbProcessoDiagDataAuditoria: TDateTimeField;
    dbProcessoDiagPrincipal: TBooleanField;
    dbProcessoDiagCodCid: TStringField;
    dbProcessoDiagGrupocid: TStringField;
    dbAtendHMedicoA: TStringField;
    dbAtendHMedicoAEspec: TStringField;
    dbAtendHPExcedente: TWordField;
    dbAtendHPAberto: TWordField;
    dbAtendHPAbertoMotivo: TStringField;
    dbProdCli: TMSTable;
    dbProdCliProdutividade: TIntegerField;
    dbProdCliCliente: TIntegerField;
    dbProdCliDataInclusao: TDateTimeField;
    dbProdCliUsuario: TStringField;
    dbProd: TMSTable;
    dbProdAnoCompetencia: TIntegerField;
    dbProdMesCompetencia: TIntegerField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    dbProdProdutividade: TAutoIncField;
    dbProdStatusTexto: TStringField;
    dbProdDataInclusao: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdCopiaClick(Sender: TObject);
    procedure dbAtendHBeforeInsert(DataSet: TDataSet);
    procedure cmdExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    iUltimoProcesso:integer;
  end;

var
  frmPreAnaliseAtu: TfrmPreAnaliseAtu;

implementation

uses frmPrincipal;
{$R *.dfm}

procedure TfrmPreAnaliseAtu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbHospital.close;
    dbProcesso.Close;
    dbProcessodiag.Close;
    dbProcessoGlosa.close;
    dbAtendH.Close;
    dbItem.close;
    dbDiag.Close;
    dbCodigo.Close;
    dbProd.Close;
    dbProdCli.Close;
end;

procedure TfrmPreAnaliseAtu.FormShow(Sender: TObject);
var a,m,d:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);

    dbCodigo.Open;
    
    dbCliente.Open;
    cmpClienteIni.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospitalIni.KeyValue:=dbHospitalHospital.Value;

    dbProd.Open;
    dbProdCli.Open;

    ProgressBar.Position:=0;
end;

procedure TfrmPreAnaliseAtu.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
       cmpHospitalIni.Visible:=false
    else
       cmpHospitalIni.Visible:=true;

end;

procedure TfrmPreAnaliseAtu.cmdCopiaClick(Sender: TObject);
var iHospital,iCliente:integer;
var iMes,iAno,iMesF,iAnoF,i,itotal:integer;
var iLinhaH,iLInhaC,iLinhaD,iCompetencia:string;
var iDataIni:TDate;
var iok:boolean;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     if iAnoF<iAno then
     begin
        ShowMessage('Ano final menor que inicial');
        abort;
     end;

     if (iAnoF=iAno) and (iMesF<iMes) then
     begin
        ShowMessage('Mes final menor que inicial');
        abort;
     end;

     if (iAnoF=iAno) and (iMesF=iMes) then
     begin
        ShowMessage('Competencia inicial e final não podem ser iguais');
        abort;
     end;

     if dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([iAnoF,iMesF]),[]) then
     begin
        if dbProdStatus.value='F' then
        begin
            ShowMessage('Atenção! Produtividade competencia destino fechada');
            abort;
        end
        else
        begin
            if dbProdCli.Locate('Cliente',iCliente,[]) then
            begin
                ShowMessage('Atenção! Produtividade competencia destino fechada para o Cliente selecionado');
                abort;
            end;
        end;
     end;

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    iLinhaD:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
             ' and  AtendHI.AnoCompetencia='+IntToStr(iAno)+')' ;

    iMes:=StrToInt(Edit1.Text);
    iAno:=StrToInt(Edit2.Text);
    iMesF:=StrToInt(Edit3.Text);
    iAnoF:=StrToInt(Edit4.Text);


    dbProcesso.SQL.Clear;
    dbProcesso.SQL.Text:='Select * from AtendHI '+
                         'where ((AtendHI.Servico='+QuotedStr('CE')+') or '+
                         '       (AtendHI.Servico='+QuotedStr('V')+') or '+
                         '       (AtendHI.Servico='+QuotedStr('VL')+') or '+
                         '       (AtendHI.Servico='+QuotedStr('VA')+')) and  '+
                         '       DataFimP is null and '+
                         iLinhaD+iLinhaC+iLinhaH;

    dbProcesso.ParamByName('CliIni').Value:=iCliente;

    if not chkHospital.Checked then
        dbProcesso.ParamByName('HospIni').Value:=iHospital;

    dbProcesso.Open;
    itotal:=dbProcesso.RecordCount;
    if itotal=0 then
    begin
        ShowMessage('Nenhuma informação a ser copiada');
        dbProcesso.Close;
        abort;
    end;
    label2.Caption:=IntToStr(itotal)+' capeantes selecionados ';
    i:=Application.MessageBox('Confirme a copia',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    if(i=id_no) then abort;

    ProgressBar.Position:=0;
    ProgressBar.Max:=itotal;
    dbProcessoGlosa.Open;
    dbProcessoDiag.Open;

    dbAtendH.Open;
    dbItem.OPen;
    dbDiag.Open;


    dbProcesso.First;
    while not dbProcesso.eof do
    begin
        ProgressBar.Position:=ProgressBar.Position+1;
        dbAtendH.Insert;

        for i:=0 to dbAtendH.FieldCount-1 do
            if (dbAtendH.Fields[i].FieldName<>'Sequencial') then
                dbAtendH.fields[i].assign(dbProcesso.fieldbyname(dbAtendH.fields[i].fieldname));

        dbAtendHUsuario.value:=iUsuario;
        dbAtendHDataInclusao.value:=date;
        dbAtendHMesCompetencia.value:=iMesF;
        dbAtendHAnoCompetencia.value:=iAnoF;
        dbAtendHRemessa.value:=0;
        dbAtendHRetorno.value:=0;
        dbAtendHProdutividade.value:=0;
        dbAtendHUsuario.value:=iUsuario;
        dbatendHAtendimentoHI.Value:=iUltimoProcesso;
        dbAtendH.Post;

//***********
        dbProcessoGlosa.Refresh;
        dbProcessoGlosa.First;
        while not dbProcessoGlosa.eof do
        begin
            dbItem.Insert;
            for i:=0 to dbItem.FieldCount-1 do
                dbItem.fields[i].assign(dbProcessoGlosa.fieldbyname(dbItem.fields[i].fieldname));
            dbItemAtendimentoHI.value:=iUltimoProcesso;
            dbItem.Post;
            dbProcessoGlosa.Next;
        end;

        dbProcessoDiag.Refresh;
        dbProcessoDiag.First;
        while not dbProcessoDiag.eof do
        begin
            dbDiag.Insert;
            for i:=0 to dbDiag.FieldCount-1 do
                dbDiag.fields[i].assign(dbProcessoDiag.fieldbyname(dbDiag.fields[i].fieldname));
            dbDiagAtendimentoHI.value:=iUltimoProcesso;
            dbDiag.Post;
            dbProcessoDiag.Next;
        end;
        dbProcesso.Next;
    end;
    ShowMessage('Copia processada com sucesso');
end;


procedure TfrmPreAnaliseAtu.dbAtendHBeforeInsert(DataSet: TDataSet);
var icampo:string;
begin
    icampo:='CLI'+IntToStr(dbClienteCliente.asinteger);
    if dbCodigo.Locate('Campo',icampo,[]) then
    begin
        iUltimoProcesso:=dbCodigoUltimo.Value+1;
        dbCodigo.Edit;
    end
    else
    begin
        dbCodigo.Insert;
        dbCodigoCampo.Value:=iCampo;
        dbCodigoUltimo.Value:=0;
        iUltimoProcesso:=1;
    end;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;

end;

procedure TfrmPreAnaliseAtu.cmdExcluirClick(Sender: TObject);
var iHospital,iCliente:integer;
var iMes,iAno,iMesF,iAnoF,i,itotal:integer;
var iLinhaH,iLInhaC,iLinhaD,iCompetencia:string;
var iDataIni:TDate;
begin
     iCliente:=dbClienteCliente.Value;
     iHospital:=dbHospitalHospital.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    iLinhaD:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
             ' and  AtendHI.AnoCompetencia='+IntToStr(iAno)+')' ;

    iMes:=StrToInt(Edit1.Text);
    iAno:=StrToInt(Edit2.Text);

    dbProcesso.SQL.Clear;
    dbProcesso.SQL.Text:='Select * from AtendHI '+
                         'where ((AtendHI.Servico='+QuotedStr('CE')+') or '+
                         '       (AtendHI.Servico='+QuotedStr('V')+') or '+
                         '       (AtendHI.Servico='+QuotedStr('VL')+') or '+
                         '       (AtendHI.Servico='+QuotedStr('VA')+')) and  '+
                         '       DataFimP is null and '+
                         iLinhaD+iLinhaC+iLinhaH;

    dbProcesso.ParamByName('CliIni').Value:=iCliente;

    if not chkHospital.Checked then
        dbProcesso.ParamByName('HospIni').Value:=iHospital;

    dbProcesso.Open;
    itotal:=dbProcesso.RecordCount;
    if itotal=0 then
    begin
        ShowMessage('Nenhuma informação a ser excluida');
        dbProcesso.Close;
        abort;
    end;
    label2.Caption:=IntToStr(itotal)+' capeantes selecionados ';
    i:=Application.MessageBox('Confirme a exclusão em definitivo dos capeantes da competência de Origem',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    if(i=id_no) then abort;

    ProgressBar.Position:=0;
    ProgressBar.Max:=itotal;
    dbProcessoGlosa.Open;
    dbProcessoDiag.Open;

    dbProcesso.First;
    while dbProcesso.recordcount>0 do
    begin
        ProgressBar.Position:=ProgressBar.Position+1;
        while dbProcessoGlosa.RecordCount>0 do
            dbProcessoGlosa.Delete;
        while dbDiag.RecordCount>0 do
            dbDiag.Delete;
        dbProcesso.Delete;
    end;
    ShowMessage('Dados excluidos com sucesso');

end;

end.
