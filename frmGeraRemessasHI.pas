unit frmGeraRemessasHI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmGeraRemessaHI = class(TForm)
    Panel1: TPanel;
    cmdGera: TBitBtn;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    dbRemessa: TMSTable;
    dbRemessaCliente: TIntegerField;
    dbRemessaRemessa: TIntegerField;
    dbRemessaUsuario: TStringField;
    dbProcesso: TMSTable;
    Label3: TLabel;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Label4: TLabel;
    ProgressBar2: TProgressBar;
    dbProcessoCliente: TIntegerField;
    dbProcessoAtendimentoHI: TIntegerField;
    dbProcessoRemessa: TIntegerField;
    qryProcesso: TMSQuery;
    qryProcessoCliente: TIntegerField;
    qryProcessoRemessa: TIntegerField;
    Edit1: TEdit;
    Label5: TLabel;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label6: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    dbRemessaDataGeracao: TDateTimeField;
    dbRemessaDataEnvio: TDateTimeField;
    dbRemessaHoraEnvio: TDateTimeField;
    dbRemessaDataFechamento: TDateTimeField;
    qryProcessoAtendimentoHI: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdGeraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraRemessaHI: TfrmGeraRemessaHI;

implementation

uses frmPrincipal, frmRemessasHI;

{$R *.DFM}

procedure TfrmGeraRemessaHI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbProcesso.Close;
    dbRemessa.Close;

    frmRemessaHI.dbRemessa.refresh;
    frmRemessaHI.dbProcesso.Refresh;
    frmRemessaHI.dbItem.Refresh;
    frmRemessaHI.dbItemDiag.Refresh;
end;

procedure TfrmGeraRemessaHI.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=20;

    dbProcesso.Open;
    dbRemessa.Open;
end;

procedure TfrmGeraRemessaHI.cmdGeraClick(Sender: TObject);
var iresultado, iRemessa,iCliente:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iDataIni,iDataFim:TDate;
var iLinhaD:string;
begin
    iMes:=StrToInt(Edit1.Text);
    iAno:=StrToInt(Edit2.Text);
    iMesF:=StrToInt(Edit3.Text);
    iAnoF:=StrToInt(Edit4.Text);
    iDataIni:=EncodeDAte(iAno,iMes,1);
    iDataFim:=EncodeDate(iAnoF,iMesF,1);

     if iDataFim<iDataIni then
     begin
        ShowMessage('Competencia final menor que inicial');
        abort;
     end;

    dbRemessa.Last;
    iRemessa:=dbRemessaRemessa.Value;
    iCliente:=dbClienteIniCliente.Value;

    if icliente<>20 then //
    begin
        ShowMessage('Remessa disponivel apenas para o cliente CESP');
        abort;
    end;

    if (dbRemessaDataFechamento.IsNull) and
       (dbRemessa.recordcount>0) then
    begin
        iResultado:=Application.MessageBox('Remessa não finalizada. Reprocessa?' ,
        '', mb_yesno+ mb_iconExclamation);
        if iResultado=id_no then abort;

        qryProcesso.SQL.Clear;
        qryProcesso.sql.Text:='Select * from AtendHI '+
                              'where Remessa= :iRem ';
        qryProcesso.ParamByName('iRem').value:=iRemessa;
        qryProcesso.Open;

        ProgressBar1.Min:=0;
        ProgressBar1.Max:=qryProcesso.RecordCount;
        ProgressBar1.Position:=0;
        dbProcesso.IndexFieldNames:='Remessa';

        while dbProcesso.Locate('Remessa',iRemessa,[]) do
        begin
            dbprocesso.Edit;
            dbprocessoRemessa.value:=0;
            dbprocesso.Post;
            ProgressBar1.Position:=ProgressBar1.Position+1;
        end;
        qryProcesso.Close;

        dbRemessa.Edit;
        dbRemessaDataGeracao.value:=date;
        dbRemessaDataEnvio.Clear;
        dbRemessaCliente.Value:=iCliente;
        dbRemessaUsuario.value:=iUsuario;
        dbRemessa.Post;
    end
    else
    begin
        iRemessa:=iRemessa+1;
        dbRemessa.Insert;
        dbRemessaRemessa.value:=iRemessa;
        dbRemessaCliente.Value:=iCliente;
        dbRemessaDataGeracao.value:=date;
        dbRemessaDataEnvio.Clear;
        dbRemessaUsuario.value:=iUsuario;
        dbRemessa.Post;
    end;

    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                 ' and  AtendHI.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                             ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;

        iLinhaD:=iLinhad+'     (AtendHI.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHI.AnoCompetencia='+InttoStr(iAno)+')';
        iLInhaD:='('+iLinhaD+')';
    end;

    qryProcesso.SQL.Clear;
    qryProcesso.sql.Text:='Select * from AtendHI '+
                          'where AtendHI.Remessa=0 and '+
                          '      AtendHI.Cliente=:iCli and '+iLinhaD;
    qryProcesso.ParamByName('iCli').Value:=iCliente;
    qryProcesso.Open;

    ProgressBar2.Min:=0;
    ProgressBar2.Max:=qryProcesso.RecordCount;
    ProgressBar2.Position:=0;
    dbProcesso.IndexFieldNames:='Cliente;AtendimentoHI';

    qryProcesso.First;
    while not qryProcesso.eof do
    begin
        dbProcesso.Locate('AtendimentoHI;Cliente',VarArrayof([qryProcessoCliente.value,
                            qryProcessoAtendimentoHI.value]),[]);
        dbProcesso.Edit;
        dbProcessoRemessa.value:=iRemessa;
        dbProcesso.Post;

        qryProcesso.Next;
        ProgressBar2.Position:=ProgressBar2.Position+1;
    end;
    qryProcesso.Close;


    ProgressBar1.Position:=0;
    ProgressBar2.Position:=0;

    ShowMessage('Processamento da Remessa concluído');
end;

end.
