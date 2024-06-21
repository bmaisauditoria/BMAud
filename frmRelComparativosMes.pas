unit frmRelComparativosMes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelComparativoMes = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Label1: TLabel;
    rdgAnalise: TRadioGroup;
    cmdRelCodigoN: TBitBtn;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoNClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelComparativoMes: TfrmRelComparativoMes;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelComparativoMes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbClienteID.Close;
end;

procedure TfrmRelComparativoMes.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbClienteId.Open;
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelComparativoMes.cmdRelCodigoNClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iRegiao:integer;
var iLinhaA,iLinhaID,iClienteID:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    end;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    with dmRelatorio do
     begin
         qryCompMes.SQL.Clear;
         qryCompMes.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(cast(Complemento as Integer)) as Complemento, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                 '       sum(Diarias) as Diarias, '+
                                 '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                 'from  AtendHI '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Cliente=:CliIni '+iLinhaA+iLinhaID+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

         qryCompMes.ParamByName('CliIni').asInteger:=iClienteIni;
         qryCompMes.ParamByName('AnoIni').asInteger:=iAno-1;
         qryCompMes.ParamByName('AnoFim').asInteger:=iAno;
         qryCompMes.Open;

         dbGraficoAux.Close;
         dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
         dbGraficoAux.Execute;
         dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
         dbGraficoAux.Open;
         dbGraficoAux.IndexFieldNames:='Regiao';
         dbHospital.Open;

        dbHospital.First;
        while not dbHospital.eof do
        begin
            iHospital:=dbHospitalHospital.Value;
            iRegiao:=iClienteIni;
            dbGraficoAux.Insert;
            dbGraficoAuxRegiao.Value:=iRegiao;
            dbGraficoAuxHospital.Value:=iHospital;
            dbGraficoAuxNome.Value:=dbHospitalNome.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to 6 do
            begin
                if qryCompMes.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    1:begin
                       dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryCompMesPaciente.asInteger-qryCompMesComplemento.asInteger);
                       dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryCompMesValor.Value;
                       dbGraficoAuxGlosa1.Value:=dbGraficoAuxGlosa1.Value+qryCompMesValorGlosaE.Value+qryCompMesValorGlosaM.Value;
                       dbGraficoAuxDiaria1.Value:=dbGraficoAuxDiaria1.Value+(qryCompMesDiarias.Value-qryCompMesDiariasGlosadas.Value);
                    end;
                    2:begin
                       dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryCompMesPaciente.asInteger-qryCompMesComplemento.asInteger);
                       dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryCompMesValor.Value;
                       dbGraficoAuxGlosa2.Value:=dbGraficoAuxGlosa2.Value+qryCompMesValorGlosaE.Value+qryCompMesValorGlosaM.Value;
                       dbGraficoAuxDiaria2.Value:=dbGraficoAuxDiaria2.Value+(qryCompMesDiarias.Value-qryCompMesDiariasGlosadas.Value);
                    end;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
            end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            dbHospital.Next;
        end;

        dbGraficoAux.Filtered:=true;
        dbGraficoAux.tag:=2;
        dbGraficoAux.IndexFieldNames:='Regiao;Nome';

        qryGeral1.Close;
        qryGeral1.Open;

        if dbGraficoAux.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;     

        frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

        frmMenu.rvBBAuditoria.SetParam('Cliente',dbClienteIniNome.value);

        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo','Pré-Análise Hospital');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo','Pos-Análise Hospital');
        end;

        frmMenu.rvBBAuditoria.SetParam('Titulo1','Comparativo Mês Anterior');

        frmMenu.rvBBAuditoria.SelectReport('relCompMes',true);
        frmMenu.rvBBAuditoria.Execute;

        dbGraficoAux.Filtered:=false;
        dbGraficoAux.tag:=0;
     end;
end;

procedure TfrmRelComparativoMes.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelComparativoMes.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

end.
