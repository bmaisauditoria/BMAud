unit frmRelDistribuicaoCIDs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelDistribuicaoCID = class(TForm)
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
  frmRelDistribuicaoCID: TfrmRelDistribuicaoCID;

implementation

uses frmPrincipal,  dmRelatorios;

{$R *.DFM}

procedure TfrmRelDistribuicaoCID.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelDistribuicaoCID.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmRelDistribuicaoCID.cmdRelCodigoClick(Sender: TObject);
var iClienteIni,MP1,MP2,MP3:integer;
var i,iMes,iAno,iMesF,iAnoF,iHospital,iNC,iRegiao,Qtd1,Qtd2,Qtd3,iCapeantes:integer;
var iLinhaA,iLinhaD,iLinhaC,inome:string;
var Val1,Val2,Val3,MV1,MV2,MV3:currency;
var H1A,H1B,H2A,H2B,H3A,H3B:string;
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
         qryDistribuicaoCid.SQL.Clear;
         qryDistribuicaoCid.SQL.Text:= 'Select GrupoCid, '+
                                       '       AnoCompetencia as Ano, '+
                                       '       MesCompetencia as Mes, '+
                                       '       count(AtendHI.AtendimentoHI) as Capeantes, '+
                                       '       sum(Valor) as Valor, '+
                                       '       sum(ValorGlosadoM) as GlosaM, '+
                                       '       sum(ValorGlosadoE) as GlosaE '+
                                       'from  AtendHIDiagnostico,AtendHI '+
                                       'where AtendHIDiagnostico.Cliente=AtendHI.Cliente and '+
                                       '      AtendHIDiagnostico.AtendimentoHI=AtendHI.AtendimentoHI and '+
                                       '('+iLinhaD+')'+iLinhaA+iLinhaC+
                                       'group by GrupoCid,AnoCompetencia,MesCompetencia '+
                                       'order by GrupoCid,Ano,Mes ';

        if not chkCliente.Checked then
            qryDistribuicaoCid.ParamByName('CliIni').asInteger:=iClienteIni;
         qryDistribuicaoCid.Open;

         qryDistribuicaoCid1.SQL.Clear;
         qryDistribuicaoCid1.SQL.Text:= 'Select GrupoCid, '+
                                       '       AnoCompetencia as Ano, '+
                                       '       MesCompetencia as Mes, '+
                                       '       count(AtendHI.AtendimentoHI) as Capeantes, '+
                                       '       sum(Valor) as Valor, '+
                                       '       sum(ValorGlosadoM) as GlosaM, '+
                                       '       sum(ValorGlosadoE) as GlosaE '+
                                       'from  AtendHIDiagnostico,AtendHI '+
                                       'where AtendHIDiagnostico.Cliente=AtendHI.Cliente and '+
                                       '      AtendHIDiagnostico.AtendimentoHI=AtendHI.AtendimentoHI and '+
                                       '      AtendHI.Complemento=0  and '+
                                       '('+iLinhaD+')'+iLinhaA+iLinhaC+
                                       'group by GrupoCid,AnoCompetencia, MesCompetencia '+
                                       'order by GrupoCid,Ano,Mes ';

        if not chkCliente.Checked then
            qryDistribuicaoCid1.ParamByName('CliIni').asInteger:=iClienteIni;
         qryDistribuicaoCid1.Open;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;
        dbGraficoAux.IndexFieldNames:='Legenda;Nome';

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
        dbDiagnostico.IndexFieldNames:='CodCid';
        qryDistribuicaoCid.First;
        while not qryDistribuicaoCid.eof do
        begin
            if qryDistribuicaoCid1.Locate('GrupoCid;Ano;Mes',VarArrayof([qryDistribuicaoCidGrupoCid.value,
                                                                         qryDistribuicaoCidAno.value,
                                                                         qryDistribuicaoCidMes.value]),[]) then
                iCapeantes:=qryDistribuicaoCid1Capeantes.value
            else
                iCapeantes:=qryDistribuicaoCidCapeantes.value;


            if dbGraficoAux.Locate('Regiao',qryDistribuicaoCidGrupoCid.Value,[]) then
                dbGraficoAux.Edit
            else
            begin
                if dbDiagnostico.Locate('CodCid',qryDistribuicaoCidGrupoCid.value,[]) then
                    iNome:=dbDiagnosticoNome.value
                else
                    iNome:='Não Cadastrado';
                dbGraficoAux.Insert;
                dbGraficoAuxRegiao.value:=0;
                dbGraficoAuxLegenda.value:=qryDistribuicaoCidGrupoCid.value;
                dbGraficoAuxNome.value:=qryDistribuicaoCidGrupoCid.value+' - '+iNome;
            end;
            if qryDistribuicaoCidMes.value=iMes then
            begin
               dbGraficoAuxPaciente1.value:=iCapeantes;
               dbGraficoAuxValor1.value:=qryDistribuicaoCidValorPago.value;
               Qtd1:=Qtd1+iCapeantes;
               Val1:=Val1+qryDistribuicaoCidValorPago.value;
               if qryDistribuicaoCidValorPago.value>MV1 then
               begin
                  MV1:=qryDistribuicaoCidValorPago.value;
                  H1A:=qryDistribuicaoCidGrupoCid.value;
               end;
               if iCapeantes>MP1 then
               begin
                  MP1:=iCapeantes;
                  H1B:=qryDistribuicaoCidGrupoCid.value;
               end;
            end
            else
                if qryDistribuicaoCidMes.value=iMesF then
                begin
                   dbGraficoAuxPaciente3.value:=iCapeantes;
                   dbGraficoAuxValor3.value:=qryDistribuicaoCidValorPago.value;
                   Qtd3:=Qtd3+iCapeantes;
                   Val3:=Val3+qryDistribuicaoCidValorPago.value;
                   if qryDistribuicaoCidValorPago.value>MV3 then
                   begin
                      MV3:=qryDistribuicaoCidValorPago.value;
                      H3A:=qryDistribuicaoCidGrupoCid.value;
                   end;
                   if iCapeantes>MP3 then
                   begin
                      MP3:=iCapeantes;
                      H3B:=qryDistribuicaoCidGrupoCid.value;
                   end;
                end
                else
                begin
                   dbGraficoAuxPaciente2.value:=iCapeantes;
                   dbGraficoAuxValor2.value:=qryDistribuicaoCidValorPago.value;
                   Qtd2:=Qtd2+iCapeantes;
                   Val2:=Val2+qryDistribuicaoCidValorPago.value;
                   if qryDistribuicaoCidValorPago.value>MV2 then
                   begin
                      MV2:=qryDistribuicaoCidValorPago.value;
                      H2A:=qryDistribuicaoCidGrupoCid.value;
                   end;
                   if iCapeantes>MP2 then
                   begin
                      MP2:=iCapeantes;
                      H2B:=qryDistribuicaoCidGrupoCid.value;
                   end;
                end;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
            qryDistribuicaoCid.Next;
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

            {dbGraficoAuxValor4.value:=H1A; //maior hospital ft1
            dbGraficoAuxPaciente4.value:=H1B; //maior hospital ntc1
            dbGraficoAuxValor5.value:=H2A; //maior hospital ft2
            dbGraficoAuxPaciente5.value:=H2B; //maior hospital ntc2
            dbGraficoAuxValor6.value:=H3A; //maior hospital ft3
            dbGraficoAuxPaciente6.value:=H3B; //maior hospital ntc3}

            dbGraficoAux.Post;
            dbGraficoAux.Next;
        end;
        dbGraficoAux.Refresh;

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

        frmMenu.rvBBAuditoria.SelectReport('relDistribuicaoCid',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelDistribuicaoCID.chkClienteClick(Sender: TObject);
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
