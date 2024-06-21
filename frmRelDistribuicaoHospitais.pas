unit frmRelDistribuicaoHospitais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelDistribuicaoHospital = class(TForm)
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
    rdgAnalise: TRadioGroup;
    chkCliente: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDistribuicaoHospital: TfrmRelDistribuicaoHospital;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelDistribuicaoHospital.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelDistribuicaoHospital.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmRelDistribuicaoHospital.cmdRelCodigoClick(Sender: TObject);
var iClienteIni,H1A,H1B,H2A,H2B,H3A,H3B,MP1,MP2,MP3:integer;
var i,iMes,iAno,iMesF,iAnoF,iHospital,iNC,iRegiao,Qtd1,Qtd2,Qtd3,iCapeantes:integer;
var iLinhaA,iLinhaD,iLinhaC:string;
var Val1,Val2,Val3,MV1,MV2,MV3:currency;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iMesF:=StrToInt(Edit1.Text);
     iAnoF:=StrToInt(Edit2.Text);

     iMes:=iMesF-2;
     if iMes<=0 then
     begin
        iAno:=iAnoF-1;
        iMes:=iMes+12;
     end
     else
        iAno:=iAnoF;

    iLinhaD:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
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
         iMesF:=StrToInt(Edit1.Text);
         iAnoF:=StrToInt(Edit2.Text);

         iMes:=iMesF-2;
         if iMes<=0 then
         begin
            iAno:=iAnoF-1;
            iMes:=iMes+12;
         end
         else
            iAno:=iAnoF;
     end;

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:CliIni ';


     with dmRelatorio do
     begin
         qryDistribuicaoH.SQL.Clear;
         qryDistribuicaoH.SQL.Text:= 'Select Hospital, '+
                                     '       AnoCompetencia as Ano, '+
                                     '       MesCompetencia as Mes, '+
                                     '       count(AtendHI.AtendimentoHI) as Capeantes, '+
                                     '       sum(Valor) as Valor, '+
                                     '       sum(ValorGlosadoM) as GlosaM, '+
                                     '       sum(ValorGlosadoE) as GlosaE '+
                                     'from  AtendHI '+
                                     'where ('+iLinhaD+')'+iLinhaA+iLinhaC+
                                     'group by Hospital,AnoCompetencia,MesCompetencia '+
                                     'order by Hospital,Ano,Mes ';

        if not chkCliente.Checked then
            qryDistribuicaoH.ParamByName('CliIni').asInteger:=iClienteIni;
         qryDistribuicaoH.Open;

         qryDistribuicaoH1.SQL.Clear;
         qryDistribuicaoH1.SQL.Text:= 'Select Hospital, '+
                                     '       AnoCompetencia as Ano, '+
                                     '       MesCompetencia as Mes, '+
                                     '       count(AtendHI.AtendimentoHI) as Capeantes, '+
                                     '       sum(Valor) as Valor, '+
                                     '       sum(ValorGlosadoM) as GlosaM, '+
                                     '       sum(ValorGlosadoE) as GlosaE '+
                                     'from  AtendHI '+
                                     'where AtendHI.Complemento=0 and '+
                                     '('+iLinhaD+')'+iLinhaA+iLinhaC+
                                     'group by Hospital,AnoCompetencia,MesCompetencia '+
                                     'order by Hospital,Ano,Mes ';

        if not chkCliente.Checked then
            qryDistribuicaoH1.ParamByName('CliIni').asInteger:=iClienteIni;
        qryDistribuicaoH1.Open;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.IndexFieldNames:='Regiao;Hospital;NC';

        Val1:=0;
        Val2:=0;
        Val3:=0;
        Qtd1:=0;
        Qtd2:=0;
        Qtd3:=0;
        MV1:=0;
        MV2:=0;
        MV3:=0;
        MP1:=0;
        MP2:=0;
        MP3:=0;
        qryDistribuicaoH.First;
        while not qryDistribuicaoH.eof do
        begin
            if qryDistribuicaoH1.Locate('Hospital;Ano;Mes',VarArrayof([qryDistribuicaoHHospital.value,
                                                                       qryDistribuicaoHAno.value,
                                                                       qryDistribuicaoHMes.value]),[]) then
                iCapeantes:=qryDistribuicaoH1Capeantes.value
            else
                iCapeantes:=qryDistribuicaoHCapeantes.value;

            if dbGraficoAux.Locate('Regiao;Hospital',VarArrayof([0,qryDistribuicaoHHospital.Value]),[]) then
                dbGraficoAux.Edit
            else
            begin
                dbGraficoAux.Insert;
                dbGraficoAuxRegiao.value:=0;
                dbGraficoAuxHospital.value:=qryDistribuicaoHHospital.value;
                dbGraficoAuxNome.value:=qryDistribuicaoHHospitalNome.value;
            end;
            if qryDistribuicaoHMes.value=iMes then
            begin
               dbGraficoAuxPaciente1.value:=iCapeantes;
               dbGraficoAuxValor1.value:=qryDistribuicaoHValorPago.value;
               Qtd1:=Qtd1+iCapeantes;
               Val1:=Val1+qryDistribuicaoHValorPago.value;
               if qryDistribuicaoHValorPago.value>MV1 then
               begin
                  MV1:=qryDistribuicaoHValorPago.value;
                  H1A:=qryDistribuicaoHHospital.value;
               end;
               if iCapeantes>MP1 then
               begin
                  MP1:=iCapeantes;
                  H1B:=qryDistribuicaoHHospital.value;
               end;
            end
            else
                if qryDistribuicaoHMes.value=iMesF then
                begin
                   dbGraficoAuxPaciente3.value:=iCapeantes;
                   dbGraficoAuxValor3.value:=qryDistribuicaoHValorPago.value;
                   Qtd3:=Qtd3+iCapeantes;
                   Val3:=Val3+qryDistribuicaoHValorPago.value;
                   if qryDistribuicaoHValorPago.value>MV3 then
                   begin
                      MV3:=qryDistribuicaoHValorPago.value;
                      H3A:=qryDistribuicaoHHospital.value;
                   end;
                   if iCapeantes>MP3 then
                   begin
                      MP3:=iCapeantes;
                      H3B:=qryDistribuicaoHHospital.value;
                   end;
                end
                else
                begin
                   dbGraficoAuxPaciente2.value:=iCapeantes;
                   dbGraficoAuxValor2.value:=qryDistribuicaoHValorPago.value;
                   Qtd2:=Qtd2+iCapeantes;
                   Val2:=Val2+qryDistribuicaoHValorPago.value;
                   if qryDistribuicaoHValorPago.value>MV2 then
                   begin
                      MV2:=qryDistribuicaoHValorPago.value;
                      H2A:=qryDistribuicaoHHospital.value;
                   end;
                   if iCapeantes>MP2 then
                   begin
                      MP2:=iCapeantes;
                      H2B:=qryDistribuicaoHHospital.value;
                   end;
                end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            qryDistribuicaoH.Next;
        end;
        dbGraficoAux.First;

        while not dbGraficoAux.eof do
        begin
            dbGraficoAux.Edit;
            dbGraficoAuxGlosa1.Value:=Val1;
            dbGraficoAuxDiaria1.value:=Qtd1;
            dbGraficoAuxGlosa2.Value:=Val2;
            dbGraficoAuxDiaria2.value:=Qtd2;
            dbGraficoAuxGlosa3.Value:=Val3;
            dbGraficoAuxDiaria3.value:=Qtd3;

            dbGraficoAuxValor4.value:=H1A; //maior hospital ft1
            dbGraficoAuxPaciente4.value:=H1B; //maior hospital ntc1
            dbGraficoAuxValor5.value:=H2A; //maior hospital ft2
            dbGraficoAuxPaciente5.value:=H2B; //maior hospital ntc2
            dbGraficoAuxValor6.value:=H3A; //maior hospital ft3
            dbGraficoAuxPaciente6.value:=H3B; //maior hospital ntc3

            dbGraficoAux.Post;
            dbGraficoAux.Next;
        end;
        dbGraficoAux.Refresh;
        dbGraficoAux.IndexFieldNames:='Nome';

        frmMenu.RvBBAuditoria.SetParam('Titulo3',IntToStr(iMesF)+'/'+IntToStr(iAnoF));
        frmMenu.RvBBAuditoria.SetParam('Titulo1',IntToStr(iMes)+'/'+IntToStr(iAno));
         iMes:=iMesF-1;
         if iMes<=0 then
         begin
            iAno:=iAnoF-1;
            iMes:=iMes+12;
         end
         else
            iAno:=iAnoF;
        frmMenu.RvBBAuditoria.SetParam('Titulo2',IntToStr(iMes)+'/'+IntToStr(iAno));
        if chkCliente.Checked then
            frmMenu.RvBBAuditoria.SetParam('ClienteNome','Todos os Clientes')
        else
            frmMenu.RvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo','Pré-Análise');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo','Pos-Análise');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo','Pré-Análise e Pos-Análise');
         end;

        frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoHospital',true);
        frmMenu.rvBBAuditoria.Execute;

     end;
end;

procedure TfrmRelDistribuicaoHospital.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpClienteIni.Visible:=false;
       cmpCodClienteIni.visible:=false;
    end
    else
    begin
       cmpClienteIni.Visible:=true;
       cmpCodClienteIni.Visible:=true;
    end;
end;

end.
