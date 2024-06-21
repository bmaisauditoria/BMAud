unit frmCadastrosCLT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls,
  Buttons, ToolWin, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  Menus, DBImgAsp, ImgList, RpDefine, RpCon, RpConDS;

type
  Tnivel = record
           n1,n2,n3:integer;
           end;
  TfrmCadastroCLT = class(TForm)
    dbTransporte: TMSTable;
    dsTransporte: TDataSource;
    dbDiasU: TMSTable;
    dsDiaU: TDataSource;
    dbCargo: TMSTable;
    dsCargo: TDataSource;
    dbCargoCargo: TAutoIncField;
    dbCargoDescricao: TStringField;
    pagCadastro: TPageControl;
    tabTransporte: TTabSheet;
    Panel8: TPanel;
    cmdNovoB: TBitBtn;
    cmdGravaB: TBitBtn;
    cmdExcluiB: TBitBtn;
    tabCargos: TTabSheet;
    Panel13: TPanel;
    cmdNovoC: TBitBtn;
    cmdGravaC: TBitBtn;
    cmdExcluiC: TBitBtn;
    grdCargo: TDBGrid;
    tabMensagem: TTabSheet;
    Panel16: TPanel;
    cmdNovoM: TBitBtn;
    cmdGravaM: TBitBtn;
    cmdExcluiM: TBitBtn;
    grdDias: TDBGrid;
    pagPSaude: TTabSheet;
    dbTransporteTransporte: TStringField;
    grdTransporte: TDBGrid;
    dbDiasUAno: TSmallintField;
    dbDiasUMes: TSmallintField;
    dbDiasUFeriado: TSmallintField;
    dbDiasUDescricao: TStringField;
    dbDiasUDiasUteis: TSmallintField;
    Panel1: TPanel;
    Panel12: TPanel;
    cmdNovoV: TBitBtn;
    cmdGravaV: TBitBtn;
    cmdExcluiV: TBitBtn;
    grdFaixa: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    cmdNovoA: TBitBtn;
    cmdGravaA: TBitBtn;
    cmdExcluiA: TBitBtn;
    grdPlano: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    cmdNovoP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    grdPSaude: TDBGrid;
    Label42: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dsParam: TDataSource;
    dbParam: TMSTable;
    dbParamIRendaP: TFloatField;
    dbParamIRendaMin: TCurrencyField;
    dbParamGPSP: TFloatField;
    dbParamPisP: TFloatField;
    dbParamPisMin: TCurrencyField;
    dbParamCofinsP: TFloatField;
    dbParamCofinsMin: TCurrencyField;
    dbParamCSLLP: TFloatField;
    dbParamCSLLMin: TCurrencyField;
    dbParamDiaVencto: TSmallintField;
    dbParamDiaVenctoI: TSmallintField;
    TabSheet1: TTabSheet;
    dbPlanoC: TMSTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbPSaude: TMSTable;
    dbPSaudeContrato: TStringField;
    dbPSaudeTipo: TStringField;
    dbPSaudeDataInicio: TDateTimeField;
    dbPSaudeDataFim: TDateTimeField;
    dbPSPlano: TMSTable;
    dbPSPlanoContrato: TStringField;
    dbPSPlanoTipo: TStringField;
    dbPSPlanoPlano: TStringField;
    dbPSValor: TMSTable;
    dbPSValorContrato: TStringField;
    dbPSValorTipo: TStringField;
    dbPSValorPlano: TStringField;
    dbPSValorIdade: TSmallintField;
    dbPSValorValor: TCurrencyField;
    dsPSValor: TDataSource;
    dsPSPlano: TDataSource;
    dsPSaude: TDataSource;
    dsPlanoC: TDataSource;
    dbPSPlanoAtivo: TBooleanField;
    Panel14: TPanel;
    Panel15: TPanel;
    cmdAnterior: TBitBtn;
    cmdProximo: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label26: TLabel;
    DBGrid1: TDBGrid;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbFilialCGC: TStringField;
    dbFilialUsuario: TStringField;
    dbFilialContratoSaude: TStringField;
    dbFilialPSaude: TStringField;
    dbFilialContratoOdonto: TStringField;
    dbFilialPOdonto: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel7: TPanel;
    Label6: TLabel;
    cmbCredito: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dsFilial: TDataSource;
    Label5: TLabel;
    Panel9: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    dbFilialRazao: TStringField;
    dbPSM: TMSTable;
    dsPSM: TDataSource;
    dsPlanoM: TDataSource;
    dbPlanoM: TMSTable;
    dbPlanoMContrato: TStringField;
    dbPlanoMTipo: TStringField;
    dbPlanoMPlano: TStringField;
    dbPSO: TMSTable;
    dbPSOContrato: TStringField;
    dbPSOTipo: TStringField;
    dbPSODataInicio: TDateTimeField;
    dbPSODataFim: TDateTimeField;
    dbPlanoO: TMSTable;
    dbPlanoOContrato: TStringField;
    dbPlanoOTipo: TStringField;
    dbPlanoOPlano: TStringField;
    dsPlanoO: TDataSource;
    dsPSO: TDataSource;
    dbPSMContrato: TStringField;
    dbPSMTipo: TStringField;
    dbPSMDataInicio: TDateTimeField;
    dbPSMDataFim: TDateTimeField;
    dbTransporteValor: TCurrencyField;
    function fnz(i,j,k:word):string;
    procedure FormShow(Sender: TObject);
    procedure cmdNovoBClick(Sender: TObject);
    procedure cmdGravaBClick(Sender: TObject);
    procedure cmdExcluiBClick(Sender: TObject);
    procedure dsTransporteStateChange(Sender: TObject);
    procedure dbTransporteBeforePost(DataSet: TDataSet);
    procedure dsPSaudeStateChange(Sender: TObject);
    procedure cmdNovoVClick(Sender: TObject);
    procedure cmdGravaVClick(Sender: TObject);
    procedure cmdExcluiVClick(Sender: TObject);
    procedure dbPSaudeBeforePost(DataSet: TDataSet);
    procedure cmdNovoCClick(Sender: TObject);
    procedure cmdGravaCClick(Sender: TObject);
    procedure cmdExcluiCClick(Sender: TObject);
    procedure dsCargoStateChange(Sender: TObject);
    procedure dbCargoBeforePost(DataSet: TDataSet);
    procedure cmdNovoMClick(Sender: TObject);
    procedure cmdGravaMClick(Sender: TObject);
    procedure cmdExcluiMClick(Sender: TObject);
    procedure dsDiaUStateChange(Sender: TObject);
    procedure dbDiasUBeforePost(DataSet: TDataSet);
    procedure dbDiasUAfterInsert(DataSet: TDataSet);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure dbPSaudeAfterInsert(DataSet: TDataSet);
    procedure dbPSaudeAfterCancel(DataSet: TDataSet);
    procedure dbPSaudeAfterPost(DataSet: TDataSet);
    procedure dbPSaudeTipoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbPSaudeTipoSetText(Sender: TField; const Text: String);
    procedure cmdNovoAClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcluiAClick(Sender: TObject);
    procedure dsPSPlanoStateChange(Sender: TObject);
    procedure dbPSPlanoAfterInsert(DataSet: TDataSet);
    procedure dbPSPlanoBeforePost(DataSet: TDataSet);
    procedure dbPSValorAfterInsert(DataSet: TDataSet);
    procedure dbPSValorBeforePost(DataSet: TDataSet);
    procedure dsPSValorStateChange(Sender: TObject);
    procedure dbPSPlanoAtivoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbPSPlanoAtivoSetText(Sender: TField; const Text: String);
    procedure dbPSPlanoAfterCancel(DataSet: TDataSet);
    procedure dbPSPlanoAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure dsFilialStateChange(Sender: TObject);
    procedure dbPSMFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbPSOFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbFilialBeforeEdit(DataSet: TDataSet);
  private
    mk:string;
    fant,m1,m2,m3,m4,m5:integer;
    deletar:boolean;
  public
    { Public declarations }
  end;

var
  frmCadastroCLT: TfrmCadastroCLT;

implementation

uses frmPrincipal;

{$R *.dfm}

function TfrmCadastroCLT.fnz(i,j,k:word):string;
var b,c:string;
begin
    b:=inttostr(100000+i);
    if m1<>0 then
    begin
        c:=copy(b, length(b)-m1+1, m1);
        b:=inttostr(100000+j);
        IF M2<>0 THEN
        begin
            c:=c+'.'+copy(b, length(b)-m2+1, m2);
            b:=inttostr(100000+k);
            IF M3<>0 THEN
            begin
                c:=c+'.'+copy(b, length(b)-m3+1, m3);
            end;
        end;
    end;
    result:=c;
end;

procedure TfrmCadastroCLT.FormShow(Sender: TObject);
begin
 try
     dbPlanoC.Open;
     dbPSaude.Open;
     dbPSPlano.Open;
     dbPSValor.Open;

     dbPSM.Open;
     dbPSO.Open;
     dbPlanoM.Open;
     dbPlanoO.Open;

     dbCargo.Open;
     dbTransporte.Open;
     dbDiasU.Open;
     dbDiasU.IndexFieldNames:='Ano desc;Mes desc';

    dbFilial.Open;

    finally
        pagCadastro.ActivePageIndex:=frmCadastroCLT.tag;
    end;
end;

procedure TfrmCadastroCLT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbPlanoC.Close;
    dbPSaude.Close;
    dbPSPlano.Close;
    dbPSValor.Close;

     dbPSM.Close;
     dbPSO.Close;
     dbPlanoM.Close;
     dbPlanoO.Close;

    dbCargo.Close;
    dbTransporte.Close;
    dbDiasU.Close;

    dbFilial.Close;
end;


procedure TfrmCadastroCLT.cmdNovoBClick(Sender: TObject);
begin
    dbTransporte.Insert;
    grdTransporte.SetFocus;
end;

procedure TfrmCadastroCLT.cmdGravaBClick(Sender: TObject);
begin
    dbTransporte.Post;
end;

procedure TfrmCadastroCLT.cmdExcluiBClick(Sender: TObject);
begin
    dbTransporte.Delete;
end;

procedure TfrmCadastroCLT.dsTransporteStateChange(Sender: TObject);
begin
     cmdNovoB.Enabled:=dbTransporte.State=dsBrowse;
     cmdGravaB.Enabled:=dbTransporte.State in [dsEdit,dsInsert];
     cmdExcluiB.Enabled:=(dbTransporte.Active=true) and
                         (dbTransporte.RecordCount<>0);
end;

procedure TfrmCadastroCLT.dbTransporteBeforePost(DataSet: TDataSet);
begin
    if dbTransporteTransporte.value='' then
     begin
        ShowMessage('Transporte inválido');
        abort;
    end;
end;


procedure TfrmCadastroCLT.cmdNovoVClick(Sender: TObject);
begin
    dbPSValor.Insert;
    grdFaixa.SetFocus;
end;

procedure TfrmCadastroCLT.cmdGravaVClick(Sender: TObject);
begin
    dbPSValor.Post;
end;

procedure TfrmCadastroCLT.cmdExcluiVClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão',
        'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbPSValor.Delete;
end;

procedure TfrmCadastroCLT.dbPSaudeBeforePost(DataSet: TDataSet);
begin
    if dbPSaudeContrato.value='' then
     begin
        ShowMessage('Contrato inválido');
        abort;
    end;
    if dbPSaudeDataInicio.isnull then
     begin
        ShowMessage('Data inicio inválido');
        abort;
    end;
    dbPSaudeContrato.value:=UpperCase(dbPSaudeContrato.value)
end;

procedure TfrmCadastroCLT.cmdNovoCClick(Sender: TObject);
begin
    dbCargo.Insert;
    grdCargo.SetFocus;
end;

procedure TfrmCadastroCLT.cmdGravaCClick(Sender: TObject);
begin
    dbCargo.Post;
end;

procedure TfrmCadastroCLT.cmdExcluiCClick(Sender: TObject);
begin
    dbCargo.Delete;
end;

procedure TfrmCadastroCLT.dsCargoStateChange(Sender: TObject);
begin
     cmdNovoC.Enabled:=dbCargo.State=dsBrowse;
     cmdGravaC.Enabled:=dbCargo.State in [dsEdit,dsInsert];
     cmdExcluiC.Enabled:=(dbCargo.Active=true) and
                         (dbCargo.RecordCount<>0);
end;

procedure TfrmCadastroCLT.dbCargoBeforePost(DataSet: TDataSet);
begin
    if dbCargoDescricao.value='' then
     begin
        ShowMessage('Descrição cargo inválida');
        abort;
    end;
end;

procedure TfrmCadastroCLT.cmdNovoMClick(Sender: TObject);
begin
    dbDiasU.Insert;
    grdDias.SetFocus;
end;

procedure TfrmCadastroCLT.cmdGravaMClick(Sender: TObject);
begin
    dbDiasU.Post;
end;

procedure TfrmCadastroCLT.cmdExcluiMClick(Sender: TObject);
begin
    dbDiasU.Delete;
end;

procedure TfrmCadastroCLT.dsDiaUStateChange(Sender: TObject);
begin
     cmdNovoM.Enabled:=dbDiasU.State=dsBrowse;
     cmdGravaM.Enabled:=dbDiasU.State in [dsEdit,dsInsert];
     cmdExcluiM.Enabled:=(dbDiasU.Active=true) and
                         (dbDiasU.RecordCount<>0);
end;

procedure TfrmCadastroCLT.dbDiasUBeforePost(DataSet: TDataSet);
var a,m,d,maxday:word;
var iutil,isabado:integer;
var i,iini,ifim:Tdate;
var ireal:variant;
begin
    if (dbDiasUMes.value=0) or (dbDiasUMes.value>12) then
     begin
        ShowMessage('Mes inválido');
        abort;
    end;
    if (dbDiasUAno.value=0) or (dbDiasUAno.value>2100) then
     begin
        ShowMessage('Ano inválido');
        abort;
    end;
    if (dbDiasUFeriado.value>0) and (dbDiasUDescricao.value='') then
     begin
        ShowMessage('Descriçao do(s) Feriado(s) inválido');
        abort;
    end;

   a:=dbDiasUAno.value;
    m:=dbDiasUMes.value;
    case m of
    2:maxday:=28+ord(a mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    iIni:=EncodeDate(a,m,1);
    iFim:=EncodeDate(a,m,maxday);
    iutil:=0;
    isabado:=0;
    i:=iini;

    while i<=ifim do
    begin
        if (DayOfWeek(i)>=2) and (DayOfWeek(i)<=6) then //(seg/sex)
            iutil:=iutil+1;
        if (DayOfWeek(i)=7) then //(sab)
            isabado:=isabado+1;
        i:=i+1;
    end;
    if dbDiasU.State in [dsBrowse] then
        dbDiasU.Edit;
    dbDiasUDiasUteis.value:=iutil - dbDiasUFeriado.value;
//    dbDiasUSabados.value:=isabado;
end;

procedure TfrmCadastroCLT.dbDiasUAfterInsert(DataSet: TDataSet);
var d,m,a:word ;
begin
    DecodeDate(date,a,m,d);
    dbDiasUAno.value:=a;
    dbDiasUMes.value:=m;
end;

procedure TfrmCadastroCLT.cmdNovoPClick(Sender: TObject);
begin
    dbPSaude.Insert;
    grdPSaude.SetFocus;
end;

procedure TfrmCadastroCLT.cmdGravaPClick(Sender: TObject);
begin
    dbPSaude.Post;
end;

procedure TfrmCadastroCLT.cmdExcluiPClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Serão excluidos todos os Planos e Valores. Confirma?',
        'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;

    dbPSPlano.First;
    while not dbPSPlano. eof do
    begin
        while not dbPSValor.Eof do
            dbPSValor.delete;
        dbPSPlano.Delete;
    end;
    dbPSaude.Delete;
end;

procedure TfrmCadastroCLT.dsPSaudeStateChange(Sender: TObject);
begin
     cmdNovoP.Enabled:=dbPSaude.State=dsBrowse;
     cmdGravaP.Enabled:=dbPSaude.State in [dsEdit,dsInsert];
     cmdExcluiP.Enabled:=(dbPSaude.Active=true) and
                         (dbPSaude.RecordCount<>0);
end;


procedure TfrmCadastroCLT.dbPSaudeAfterInsert(DataSet: TDataSet);
begin
     grdPSaude.Columns[0].ReadOnly:=false;
     grdPSaude.Columns[1].ReadOnly:=false;
end;

procedure TfrmCadastroCLT.dbPSaudeAfterCancel(DataSet: TDataSet);
begin
     grdPSaude.Columns[0].ReadOnly:=true;
     grdPSaude.Columns[1].ReadOnly:=true;
end;

procedure TfrmCadastroCLT.dbPSaudeAfterPost(DataSet: TDataSet);
begin
     grdPSaude.Columns[0].ReadOnly:=true;
     grdPSaude.Columns[1].ReadOnly:=true;
end;

procedure TfrmCadastroCLT.dbPSaudeTipoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbPSaudeTipo.value='M' then
       text:='Médico';
    if dbPSaudeTipo.value='O' then
       text:='Odonto';
end;

procedure TfrmCadastroCLT.dbPSaudeTipoSetText(Sender: TField;
  const Text: String);
begin
    if  text='Médico' then
        dbPSaudeTipo.value:='M';
    if  text='Odonto' then
        dbPSaudeTipo.value:='O';
end;

procedure TfrmCadastroCLT.cmdNovoAClick(Sender: TObject);
begin
    dbPSPlano.Insert;
    grdPlano.SetFocus;
end;

procedure TfrmCadastroCLT.cmdGravaAClick(Sender: TObject);
begin
    dbPSPlano.Post;
end;

procedure TfrmCadastroCLT.cmdExcluiAClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Serão excluidos as Faixas Etarias. Confirma?',
        'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;

    while not dbPSValor.Eof do
       dbPSValor.delete;
    dbPSPlano.Delete;
end;

procedure TfrmCadastroCLT.dsPSPlanoStateChange(Sender: TObject);
begin
     cmdNovoA.Enabled:=dbPSPlano.State=dsBrowse;
     cmdGravaA.Enabled:=dbPSPlano.State in [dsEdit,dsInsert];
     cmdExcluiA.Enabled:=(dbPSPlano.Active=true) and
                         (dbPSPlano.RecordCount<>0);

end;

procedure TfrmCadastroCLT.dbPSPlanoAfterInsert(DataSet: TDataSet);
begin
    dbPSPlanoContrato.value:=dbPSaudeContrato.value;
    dbPSPlanoTipo.value:=dbPSaudeTipo.value;
    dbPSPlanoAtivo.value:=true;
    grdPlano.Columns[0].ReadOnly:=false;
end;

procedure TfrmCadastroCLT.dbPSPlanoAfterCancel(DataSet: TDataSet);
begin
    grdPlano.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastroCLT.dbPSPlanoAfterPost(DataSet: TDataSet);
begin
    grdPlano.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastroCLT.dbPSPlanoBeforePost(DataSet: TDataSet);
begin
    if dbPSPlanoPlano.value='' then
     begin
        ShowMessage('Plano inválido');
        abort;
    end;

end;

procedure TfrmCadastroCLT.dbPSValorAfterInsert(DataSet: TDataSet);
begin
    dbPSValorContrato.value:=dbPSaudeContrato.value;
    dbPSValorTipo.value:=dbPSaudeTipo.value;
    dbPSValorPlano.value:=dbPSPlanoPlano.value;
end;

procedure TfrmCadastroCLT.dbPSValorBeforePost(DataSet: TDataSet);
begin
    if dbPSValorIdade.value=0 then
     begin
        ShowMessage('Faixa etária inválida');
        abort;
    end;
    if dbPSValorValor.value=0 then
     begin
        ShowMessage('Valor inválido');
        abort;
    end;

end;

procedure TfrmCadastroCLT.dsPSValorStateChange(Sender: TObject);
begin
     cmdNovoV.Enabled:=dbPSValor.State=dsBrowse;
     cmdGravaV.Enabled:=dbPSValor.State in [dsEdit,dsInsert];
     cmdExcluiV.Enabled:=(dbPSValor.Active=true) and
                         (dbPSValor.RecordCount<>0);

end;

procedure TfrmCadastroCLT.dbPSPlanoAtivoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbPSPlanoAtivo.value=false then
       text:='Não';
    if dbPSPlanoAtivo.value=true then
       text:='Sim';

end;

procedure TfrmCadastroCLT.dbPSPlanoAtivoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbPSPlanoAtivo.value:=false;
    if text='Sim' then
        dbPSPlanoAtivo.value:=true;
end;

procedure TfrmCadastroCLT.cmdGravaClick(Sender: TObject);
begin
    dbFilial.Post;
end;

procedure TfrmCadastroCLT.cmdCancelaClick(Sender: TObject);
begin
    dbFilial.Cancel;
end;

procedure TfrmCadastroCLT.dsFilialStateChange(Sender: TObject);
begin
     cmdGrava.Enabled:=dbFilial.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastroCLT.dbPSMFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPSMTipo.value='M';
end;

procedure TfrmCadastroCLT.dbPSOFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPSOTipo.value='O';
end;

procedure TfrmCadastroCLT.dbFilialBeforeEdit(DataSet: TDataSet);
begin
     dbPSM.Refresh;
     dbPSO.Refresh;
     dbPlanoM.Refresh;
     dbPlanoO.Refresh;
end;

end.
