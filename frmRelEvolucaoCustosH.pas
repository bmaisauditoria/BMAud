unit frmRelEvolucaoCustosH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelEvolucaoCustoH = class(TForm)
    Panel1: TPanel;
    cmdRelCodigo: TBitBtn;
    Label5: TLabel;
    dbClienteIni: TTable;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEvolucaoCustoH: TfrmRelEvolucaoCustoH;

implementation

uses frmPrincipal, relEvolucaoCustosH;

{$R *.DFM}

procedure TfrmRelEvolucaoCustoH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelEvolucaoCustoH.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmRelEvolucaoCustoH.cmdRelCodigoClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iNC,iRegiao:integer;
var iLinhaA:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and BBAtendimentoHI.PosAnalise=false ';
    1:iLinhaA:=' and BBAtendimentoHI.PosAnalise=true ';
    end;

     with relEvolucaoCustoH do
     begin
         qryRelatorio.SQL.Clear;
         qryRelatorio.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       NaoContabilizado, '+
                                 '       (count(Paciente)-sum(cast(Complemento as Integer))) as Paciente, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                 '       sum(Diarias) as Diarias, '+
                                 '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                 'from  BBAtendimentoHI '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Cliente=:CliIni '+iLinhaA+
                                 'group by Hospital,Ano,Mes,NaoContabilizado '+
                                 'order by Hospital,Ano,Mes,NaoContabilizado ';

         qryRelatorio.ParamByName('CliIni').asInteger:=iClienteIni;
         qryRelatorio.ParamByName('AnoIni').asInteger:=iAno-1;
         qryRelatorio.ParamByName('AnoFim').asInteger:=iAno;
         qryRelatorio.Open;

         dbRelatorio.Close;
         dbRelatorio.EmptyTable;
         dbRelatorio.Open;
         dbRelatorio.IndexFieldNames:='Regiao;Nome;NC';
         dbHospital.Open;

        dbHospital.First;
        while not dbHospital.eof do
        begin
            for iNc:=0 to 1 do
            begin
            iRegiao:=dbHospitalRegiao.Value;
            iHospital:=dbHospitalHospital.Value;
            dbRelatorio.Insert;
            dbRelatorioRegiao.Value:=iRegiao;
            dbRelatorioHospital.Value:=iHospital;
            dbRelatorioNome.Value:=dbHospitalNome.Value;
            dbRelatorioNC.Value:=iNC;
            m:=iMes;
            a:=iAno;
            for i:=1 to 6 do
            begin
                if qryRelatorio.Locate('Hospital;Ano;Mes;NaoContabilizado',VarArrayOf([iHospital,a,m,iNC]),[]) then
                begin
                    case i of
                    6:begin
                       dbRelatorioPaciente1.Value:=dbRelatorioPaciente1.asInteger+qryRelatorioPaciente.asInteger;
                       dbRelatorioValor1.Value:=dbRelatorioValor1.Value+qryRelatorioValor.Value;
                       dbRelatorioGlosa1.Value:=dbRelatorioGlosa1.Value+qryRelatorioValorGlosaE.Value+qryRelatorioValorGlosaM.Value;
                       dbRelatorioDiaria1.Value:=dbRelatorioDiaria1.Value+(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value);
                    end;
                    5:begin
                       dbRelatorioPaciente2.Value:=dbRelatorioPaciente2.asInteger+qryRelatorioPaciente.asInteger;
                       dbRelatorioValor2.Value:=dbRelatorioValor2.Value+qryRelatorioValor.Value;
                       dbRelatorioGlosa2.Value:=dbRelatorioGlosa2.Value+qryRelatorioValorGlosaE.Value+qryRelatorioValorGlosaM.Value;
                       dbRelatorioDiaria2.Value:=dbRelatorioDiaria2.Value+(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value);
                    end;
                    4:begin
                       dbRelatorioPaciente3.Value:=dbRelatorioPaciente3.asInteger+qryRelatorioPaciente.asInteger;
                       dbRelatorioValor3.Value:=dbRElatorioVAlor3.Value+qryRelatorioValor.Value;
                       dbRelatorioGlosa3.Value:=dbRelatorioGlosa3.Value+qryRelatorioValorGlosaE.Value+qryRelatorioValorGlosaM.Value;
                       dbRelatorioDiaria3.Value:=dbRelatorioDiaria3.Value+(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value);
                    end;
                    3:begin
                        dbRelatorioPaciente4.Value:=dbRelatorioPaciente4.asInteger+qryRelatorioPaciente.asInteger;
                        dbRelatorioValor4.Value:=dbRelatorioValor4.Value+qryRelatorioValor.Value;
                        dbRelatorioGlosa4.Value:=dbRelatorioGlosa4.Value+qryRelatorioValorGlosaE.Value+qryRelatorioValorGlosaM.Value;
                        dbRelatorioDiaria4.Value:=dbRelatorioDiaria4.Value+(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value);
                     end;
                     2:begin
                        dbRelatorioPaciente5.Value:=dbRelatorioPaciente5.asInteger+qryRelatorioPaciente.asInteger;
                        dbRelatorioValor5.Value:=dbRelatorioValor5.Value+qryRelatorioValor.Value;
                        dbRelatorioGlosa5.Value:=dbRelatorioGlosa5.Value+qryRelatorioValorGlosaE.Value+qryRelatorioValorGlosaM.Value;
                        dbRelatorioDiaria5.Value:=dbRelatorioDiaria5.Value+(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value);
                     end;
                     1:begin
                        dbRelatorioPaciente6.Value:=dbRelatorioPaciente6.asInteger+qryRelatorioPaciente.asInteger;
                        dbRelatorioValor6.Value:=dbRelatorioValor6.Value+qryRelatorioValor.Value;
                        dbRelatorioGlosa6.Value:=dbRelatorioGlosa6.Value+qryRelatorioValorGlosaE.Value+qryRelatorioValorGlosaM.Value;
                        dbRelatorioDiaria6.Value:=dbRelatorioDiaria6.Value+(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value);
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
            end;
            dbRelatorio.Post;
            dbHospital.Next;
        end;
         m:=iMes;
         a:=iAno;
         for i:=1 to 6 do
         begin
            case i of
            6:Mes1.Caption:=IntToStr(m)+'/'+IntToStr(a);
            5:Mes2.Caption:=IntToStr(m)+'/'+IntToStr(a);
            4:Mes3.Caption:=IntToStr(m)+'/'+IntToStr(a);
            3:Mes4.Caption:=IntToStr(m)+'/'+IntToStr(a);
            2:Mes5.Caption:=IntToStr(m)+'/'+IntToStr(a);
            1:Mes6.Caption:=IntToStr(m)+'/'+IntToStr(a);
            end;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
            end;
         end;
         case rdgAnalise.ItemIndex of
         0:lblAnalise.Caption:='Pré-Análise';
         1:lblAnalise.Caption:='Pos-Análise';
         end;
         qrImagem.Picture.LoadFromFile(iDir+'logotipo.bmp');

         dbRelatorio.First;
         dbCliente.Open;
         dbRegiao.Open;
         dbCliente.FindKey([iClienteIni]);

         qrpRelatorio.Preview;

         qryRelatorio.Close;
         dbRelatorio.Close;
         dbHospital.Close;
         dbCliente.Close;
         dbRegiao.Close;
     end;
end;

end.
