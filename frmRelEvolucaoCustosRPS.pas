unit frmRelEvolucaoCustosRPS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelEvolucaoCustoRPS = class(TForm)
    Panel1: TPanel;
    cmdRelCodigo: TBitBtn;
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
    rdgPS: TRadioGroup;
    rdgAnalise: TRadioGroup;
    dbRelatorio: TMSTable;
    dbRelatorioRegiao: TIntegerField;
    dbRelatorioPaciente1: TIntegerField;
    dbRelatorioValor1: TCurrencyField;
    dbRelatorioGlosa1: TCurrencyField;
    dbRelatorioPaciente2: TIntegerField;
    dbRelatorioValor2: TCurrencyField;
    dbRelatorioGlosa2: TCurrencyField;
    dbRelatorioPaciente3: TIntegerField;
    dbRelatorioValor3: TCurrencyField;
    dbRelatorioGlosa3: TCurrencyField;
    dbRelatorioPaciente4: TIntegerField;
    dbRelatorioValor4: TCurrencyField;
    dbRelatorioGlosa4: TCurrencyField;
    dbRelatorioPaciente5: TIntegerField;
    dbRelatorioValor5: TCurrencyField;
    dbRelatorioGlosa5: TCurrencyField;
    dbRelatorioPaciente6: TIntegerField;
    dbRelatorioValor6: TCurrencyField;
    dbRelatorioGlosa6: TCurrencyField;
    dsRelatorio: TDataSource;
    BitBtn1: TBitBtn;
    rdgRelatorio: TRadioGroup;
    rdgLogo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    iLogo:integer;
    { Public declarations }
  end;

var
  frmRelEvolucaoCustoRPS: TfrmRelEvolucaoCustoRPS;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

procedure TfrmRelEvolucaoCustoRPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelEvolucaoCustoRPS.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
    frmRelEvolucaoCustoRPS.tag:=0;
end;

procedure TfrmRelEvolucaoCustoRPS.cmdRelCodigoClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iRegiao:integer;
var iLinhaA:string;
var p7,p8,p9,p10,p11,p12:integer;
var v7,v8,v9,v10,v11,v12,g7,g8,g9,g10,g11,g12: currency;
begin
     p7:=0;
     p8:=0;
     p9:=0;
     p10:=0;
     p11:=0;
     p12:=0;
     v7:=0;
     v8:=0;
     v9:=0;
     v10:=0;
     v11:=0;
     v12:=0;
     g7:=0;
     g8:=0;
     g9:=0;
     g10:=0;
     g11:=0;
     g12:=0;
     iClienteIni:=dbClienteIniCliente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;


    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and PosAnalise=0 ';
    1:iLinhaA:=' and PosAnalise=1 ';
    end;

    with dmRelatorio do
    begin
         qryEvolucaoPS.SQL.Clear;
         qryEvolucaoPS.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       sum(QtdAtendimento) as Paciente, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosado) as ValorGlosa '+
                                 'from  AtendHPS '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Tipo=:Tip and '+
                                 '      Cliente=:CliIni '+iLinhaA+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

         qryEvolucaoPS.ParamByName('CliIni').asInteger:=iClienteIni;
         qryEvolucaoPS.ParamByName('AnoIni').asInteger:=iAno-1;
         qryEvolucaoPS.ParamByName('AnoFim').asInteger:=iAno;
         case rdgPS.ItemIndex of
         0:qryEvolucaoPS.ParamByName('Tip').AsString:='A';
         1:qryEvolucaoPS.ParamByName('Tip').AsString:='P';
         end;

         qryEvolucaoPS.Open;
         dbRelEvolucao.Close;
         dbRelEvolucao.SQL.Text:='Delete from relEvolucaoCustoR';
         dbRelEvolucao.Execute;
         dbRelEvolucao.SQL.Text:='Select * from relEvolucaoCustoR order by Nome ';
         dbRelEvolucao.Open;

        if rdgRelatorio.ItemIndex=0 then
            dbHospital.IndexFieldNames:='Hospital'
        else
            dbHospital.IndexFieldNames:='Regiao';
        dbHospital.First;
        while not dbHospital.eof do
        begin
            iRegiao:=dbHospitalRegiao.Value;
            while (not dbHospital.eof) and
                  (dbHospitalRegiao.Value=iRegiao) do
            begin
                iHospital:=dbHospitalHospital.Value;
                dbRelEvolucao.Refresh;

                if rdgRelatorio.ItemIndex=0 then  //por Hospital
                begin
                    if dbRelEvolucao.Locate('Hospital',iHospital,[]) then
                        dbRelEvolucao.Edit
                    else
                        dbRelEvolucao.Insert;
                    dbRelEvolucaoHospital.Value:=iHospital;
                    dbRelEvolucaoNome.value:=dbRelEvolucaoHospitalNome.value;
                end
                else                                            //por Região
                begin
                    if dbRelEvolucao.Locate('Regiao',iRegiao,[]) then
                        dbRelEvolucao.Edit
                    else
                        dbRelEvolucao.Insert;
                    dbRelEvolucaoRegiao.Value:=iRegiao;
                    dbRelEvolucaoNome.value:=dbRelEvolucaoRegiaoTexto.value;
                end;

                m:=iMes;
                a:=iAno;
                for i:=1 to 6 do
                begin
                    if qryEvolucaoPS.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                    begin
                        case i of
                        6:begin
                            dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.Value+qryEvolucaoPSPaciente.asInteger;
                            dbRelEvolucaoValor7.Value:=dbRelEvolucaoValor7.Value+qryEvolucaoPSValor.Value;
                            dbRelEvolucaoGlosa7.Value:=dbRelEvolucaoGlosa7.Value+qryEvolucaoPSValorGlosa.Value;
                            p7:=p7+qryEvolucaoPSPaciente.asInteger;
                            v7:=v7+qryEvolucaoPSValor.Value;
                            g7:=g7+qryEvolucaoPSValorGlosa.Value;
                        end;
                        5:begin
                            dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.Value+qryEvolucaoPSPaciente.asInteger;
                            dbRelEvolucaoValor8.Value:=dbRelEvolucaoValor8.Value+qryEvolucaoPSValor.Value;
                            dbRelEvolucaoGlosa8.Value:=dbRelEvolucaoGlosa8.Value+qryEvolucaoPSValorGlosa.Value;
                            p8:=p8+qryEvolucaoPSPaciente.asInteger;
                            v8:=v8+qryEvolucaoPSValor.Value;
                            g8:=g8+qryEvolucaoPSValorGlosa.Value;
                        end;
                        4:begin
                            dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.Value+qryEvolucaoPSPaciente.asInteger;
                            dbRelEvolucaoValor9.Value:=dbRelEvolucaoVAlor9.Value+qryEvolucaoPSValor.Value;
                            dbRelEvolucaoGlosa9.Value:=dbRelEvolucaoGlosa9.Value+qryEvolucaoPSValorGlosa.Value;
                            p9:=p9+qryEvolucaoPSPaciente.asInteger;
                            v9:=v9+qryEvolucaoPSValor.Value;
                            g9:=g9+qryEvolucaoPSValorGlosa.Value;
                        end;
                        3:begin
                            dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.Value+qryEvolucaoPSPaciente.asInteger;
                            dbRelEvolucaoValor10.Value:=dbRelEvolucaoValor10.Value+qryEvolucaoPSValor.Value;
                            dbRelEvolucaoGlosa10.Value:=dbRelEvolucaoGlosa10.Value+qryEvolucaoPSValorGlosa.Value;
                            p10:=p10+qryEvolucaoPSPaciente.asInteger;
                            v10:=v10+qryEvolucaoPSValor.Value;
                            g10:=g10+qryEvolucaoPSValorGlosa.Value;
                        end;
                        2:begin
                            dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.Value+qryEvolucaoPSPaciente.asInteger;
                            dbRelEvolucaoValor11.Value:=dbRelEvolucaoValor11.Value+qryEvolucaoPSValor.Value;
                            dbRelEvolucaoGlosa11.Value:=dbRelEvolucaoGlosa11.Value+qryEvolucaoPSValorGlosa.Value;
                            p11:=p11+qryEvolucaoPSPaciente.asInteger;
                            v11:=v11+qryEvolucaoPSValor.Value;
                            g11:=g11+qryEvolucaoPSValorGlosa.Value;
                        end;
                        1:begin
                            dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.Value+qryEvolucaoPSPaciente.asInteger;
                            dbRelEvolucaoValor12.Value:=dbRelEvolucaoValor12.Value+qryEvolucaoPSValor.Value;
                            dbRelEvolucaoGlosa12.Value:=dbRelEvolucaoGlosa12.Value+qryEvolucaoPSValorGlosa.Value;
                            p12:=p12+qryEvolucaoPSPaciente.asInteger;
                            v12:=v12+qryEvolucaoPSValor.Value;
                            g12:=g12+qryEvolucaoPSValorGlosa.Value;
                        end;
                        end;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
                dbHospital.Next;
            end;
            dbRelEvolucao.Post;
            dbRelEvolucao.Refresh;
         end;
         dbRelEvolucao.SQL.Text:='Delete from relEvolucaoCustoR '+
                                 'where Paciente7+Paciente8+Paciente9+Paciente10+Paciente11+Paciente12=0 ';
         dbRelEvolucao.Execute;
         dbRelEvolucao.SQL.Text:='Select * from relEvolucaoCustoR order by Regiao,Nome';
         dbRelEvolucao.Open;

         if dbRelEvolucao.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
         end;

         dbRelEvolucao.Insert;
         dbRelEvolucaoRegiao.Value:=99999;
         dbRelEvolucaoNome.Value:='Total Geral';
         dbRelEvolucaoPaciente7.Value:=p7;
         dbRelEvolucaoValor7.Value:=v7;
         dbRelEvolucaoGlosa7.Value:=g7;
         dbRelEvolucaoPaciente8.Value:=p8;
         dbRelEvolucaoValor8.Value:=v8;
         dbRelEvolucaoGlosa8.Value:=g8;
         dbRelEvolucaoPaciente9.Value:=p9;
         dbRelEvolucaoValor9.Value:=v9;
         dbRelEvolucaoGlosa9.Value:=g9;
         dbRelEvolucaoPaciente10.Value:=p10;
         dbRelEvolucaoValor10.Value:=v10;
         dbRelEvolucaoGlosa10.Value:=g10;
         dbRelEvolucaoPaciente11.Value:=p11;
         dbRelEvolucaoValor11.Value:=v11;
         dbRelEvolucaoGlosa11.Value:=g11;
         dbRelEvolucaoPaciente12.Value:=p12;
         dbRelEvolucaoValor12.Value:=v12;
         dbRelEvolucaoGlosa12.Value:=g12;
         dbRelEvolucao.Post;
         dbRelEvolucao.Refresh;

        case frmRelEvolucaoCustoRPS.tag of
        0:begin
            m:=iMes;
            a:=iAno;
            for i:=1 to 6 do
            begin
                case i of
                6:frmMenu.rvBBAuditoria.SetParam('Mes7',IntToStr(m)+'/'+IntToStr(a));
                5:frmMenu.rvBBAuditoria.SetParam('Mes8',IntToStr(m)+'/'+IntToStr(a));
                4:frmMenu.rvBBAuditoria.SetParam('Mes9',IntToStr(m)+'/'+IntToStr(a));
                3:frmMenu.rvBBAuditoria.SetParam('Mes10',IntToStr(m)+'/'+IntToStr(a));
                2:frmMenu.rvBBAuditoria.SetParam('Mes11',IntToStr(m)+'/'+IntToStr(a));
                1:frmMenu.rvBBAuditoria.SetParam('Mes12',IntToStr(m)+'/'+IntToStr(a));
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            case rdgPS.ItemIndex of
            0:frmMenu.rvBBAuditoria.SetParam('Plano','Ambulatorio');
            1:frmMenu.rvBBAuditoria.SetParam('Plano','Pronto Atendimento');
            end;
            frmMenu.rvBBAuditoria.SetParam('Cliente',dbClienteIniNome.value);

            frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução dos Custos por Regiao');
            case rdgAnalise.ItemIndex of
            0:frmMenu.rvBBAuditoria.SetParam('Analise','Pré-Análise');
            1:frmMenu.rvBBAuditoria.SetParam('Analise','Pos-Análise');
            end;
            dbRelEvolucao.Tag:=2; //arquivo relevolucao vindo do PS
            frmMenu.rvBBAuditoria.SelectReport('relEvolucaoPS',true);
            frmMenu.rvBBAuditoria.Execute;
            dbRelEvolucao.tag:=0;
        end;
        1:begin
            frmMenu.ExcelExport.ExcelVisible:=true;
            dbRelEvolucaoPGlosa1.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa2.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa3.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa4.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa5.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa6.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa7.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa8.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa9.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa10.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa11.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa12.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbRelEvolucao;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
            dbRelEvolucao.Close;
        end;
        end;
        dbHospital.IndexFieldNames:='Nome';
     end;
    frmRelEvolucaoCustoRPS.tag:=0;
end;

procedure TfrmRelEvolucaoCustoRPS.BitBtn1Click(Sender: TObject);
begin
    frmRelEvolucaoCustoRPS.tag:=1;
    cmdRelCodigoClick(sender);
end;

end.
