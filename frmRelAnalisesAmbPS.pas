unit frmRelAnalisesAmbPS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelAnaliseAmbPS = class(TForm)
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
    rdgPS: TRadioGroup;
    rdgAnalise: TRadioGroup;
    cmdRelatorioNovo: TBitBtn;
    rdgRelatorio: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    rdgLogo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelatorioNovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    iLogo:integer;
    { Public declarations }
  end;

var
  frmRelAnaliseAmbPS: TfrmRelAnaliseAmbPS;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelAnaliseAmbPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelAnaliseAmbPS.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
end;

procedure TfrmRelAnaliseAmbPS.cmdRelatorioNovoClick(Sender: TObject);
var iClienteIni:integer;
var i,m,a,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaA,iLinhaNA,iLinhaD,iClienteNome,iTitulo,iCompetencia:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteNome:=dbClienteIniNome.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

     if (iAnoF=iAno) and (iMesF<iMes) then
     begin
        ShowMessage('Mes final menor que inicial');
        abort;
     end;

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and PosAnalise=0 ';
    1:iLinhaA:=' and PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgRelatorio.ItemIndex of
    0:iLinhaNA:='';
    1:iLinhaNA:=' and AtendHPS.ValorNaoAcordado>0 ';
    end;

    iLinhaD:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                 ' and  AtendHPS.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                             ' and  AtendHPS.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHPS.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;


     with dmRelatorio do
     begin
         qryAnalisePS.SQL.Clear;
         qryAnalisePS.SQL.Text:= 'Select  AtendHPS.Cliente, '+
                                 '        AtendHPS.Hospital, '+
                                 '        Hospital.Nome,'+
                                 '        Hospital.Regiao, '+
                                 '        sum(AtendHPS.ValorNaoAcordado) as VAlorNA, '+
                                 '        sum(AtendHPS.QtdAtendimento) as Consultas, '+
                                 '        sum(AtendHPS.Valor) as Valor, '+
                                 '        sum(AtendHPS.ValorGlosado) as ValorGlosado, '+
                                 '        count(AtendHPS.Hospital) as Qtd '+
                                 'from AtendHPS, Hospital '+
                                 'where AtendHPS.Hospital=Hospital.Hospital and '+
                                 '      AtendHPS.Cliente=:CliIni  and '+
                                 '      AtendHPS.Tipo=:Tip and ('+iLinhaD+') '+iLinhaA+iLinhaNA+
                                 'group by AtendHPS.Cliente,Regiao,Nome,AtendHPS.Hospital '+
                                 'order by AtendHPS.Cliente,Nome ';

         qryAnalisePS.ParamByName('CliIni').asInteger:=iClienteIni;

         case rdgPS.ItemIndex of
         0:qryAnalisePS.ParamByName('Tip').AsString:='A';
         1:qryAnalisePS.ParamByName('Tip').AsString:='P';
         end;

         qryAnalisePS.Open;
         if (qryAnalisePS.RecordCount=0) or
           ((qryAnalisePS.RecordCount=1) and (qryAnalisePSConsultas.Value=0)) then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryAnalisePS.Close;
            abort;
         end;

         qryAnalisePSTot.SQL.Clear;
         qryAnalisePSTot.SQL.Text:= 'Select  AtendHPS.Cliente, '+
                                 '        sum(AtendHPS.ValorNaoAcordado) as VAlorNA, '+
                                 '        sum(AtendHPS.QtdAtendimento) as Consultas, '+
                                 '        sum(AtendHPS.Valor) as Valor, '+
                                 '        sum(AtendHPS.ValorGlosado) as ValorGlosado '+
                                 'from AtendHPS '+
                                 'where AtendHPS.Cliente=:CliIni  and '+
                                 '      AtendHPS.Tipo=:Tip and ('+iLinhaD+') '+iLinhaA+iLinhaNA+
                                 'group by Cliente '+
                                 'order by Cliente ';

         qryAnalisePSTot.ParamByName('CliIni').asInteger:=iClienteIni;

         case rdgPS.ItemIndex of
         0:qryAnalisePSTot.ParamByName('Tip').AsString:='A';
         1:qryAnalisePSTot.ParamByName('Tip').AsString:='P';
         end;

         qryAnalisePSTot.Open;

         case rdgAnalise.ItemIndex of
         0:iTitulo:='Pré-análise';
         1:iTitulo:='Pós-Análise';
         2:iTitulo:='Pré/Pós-Análise';
         end;

         case rdgrelatorio.ItemIndex of
         0:iTitulo:=iTitulo+' - Glosas';
         1:iTitulo:=iTitulo+' - Não acordados';
         end;

         frmMenu.RvBBAuditoria.SetParam('Titulo',iTitulo);
         case rdgPS.ItemIndex of
         0:frmMenu.RvBBAuditoria.SetParam('Titulo1','Ambulatório');
         1:frmMenu.RvBBAuditoria.SetParam('Titulo1','Pronto Atendimento');
         end;

         if (iMes=iMesF) and (iAno=IAnoF) then
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
         else
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                               InttoStr(iMesF)+'/'+IntToStr(iAnoF);
         frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);
         frmMenu.rvBBAuditoria.SelectReport('relAnalisePS',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelAnaliseAmbPS.BitBtn1Click(Sender: TObject);
var iClienteIni:integer;
var i,m,a,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaA,iLinhaNA,iLinhaD,iClienteNome,iTitulo,iCompetencia:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteNome:=dbClienteIniNome.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and PosAnalise=0 ';
    1:iLinhaA:=' and PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgRelatorio.ItemIndex of
    0:iLinhaNA:='';
    1:iLinhaNA:=' and AtendHPS.ValorNaoAcordado>0 ';
    end;

    iLinhaD:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                 ' and  AtendHPS.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                             ' and  AtendHPS.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHPS.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryDemoPS.SQL.Clear;
         qryDemoPS.SQL.Text:= 'Select  * from AtendHPS, Hospital '+
                                 'where AtendHPS.Hospital=Hospital.Hospital and '+
                                 '      AtendHPS.Cliente=:CliIni  and '+
                                 '      AtendHPS.Tipo=:Tip and ('+iLinhaD+') '+iLinhaA+iLinhaNA+
                                 'order by AtendHPS.Cliente,Nome ';

         qryDemoPS.ParamByName('CliIni').asInteger:=iClienteIni;

         case rdgPS.ItemIndex of
         0:qryDemoPS.ParamByName('Tip').AsString:='A';
         1:qryDemoPS.ParamByName('Tip').AsString:='P';
         end;

         qryDemoPS.Open;
         if qryDemoPS.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDemoPS.Close;
            abort;
         end;

         case rdgAnalise.ItemIndex of
         0:iTitulo:='Pré-análise';
         1:iTitulo:='Pós-Análise';
         2:iTitulo:='Pré/Pós-Análise';
         end;

         case rdgrelatorio.ItemIndex of
         0:iTitulo:=iTitulo+' - Glosas';
         1:iTitulo:=iTitulo+' - Não acordados';
         end;

         frmMenu.RvBBAuditoria.SetParam('Titulo',iTitulo);
         case rdgPS.ItemIndex of
         0:frmMenu.RvBBAuditoria.SetParam('Titulo1','Ambulatório');
         1:frmMenu.RvBBAuditoria.SetParam('Titulo1','Pronto Atendimento');
         end;

         if (iMes=iMesF) and (iAno=IAnoF) then
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
         else
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                               InttoStr(iMesF)+'/'+IntToStr(iAnoF);
         frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);
         frmMenu.rvBBAuditoria.SelectReport('relDemoPS',true);
         frmMenu.rvBBAuditoria.Execute;
     end;

end;

procedure TfrmRelAnaliseAmbPS.BitBtn3Click(Sender: TObject);
var iClienteIni:integer;
var i,m,a,iRegiao:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaA,iLinhaNA,iLinhaD,iClienteNome,iTitulo,iCompetencia:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteNome:=dbClienteIniNome.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and PosAnalise=0 ';
    1:iLinhaA:=' and PosAnalise=1 ';
    2:iLinhaA:='';
    end;

    case rdgRelatorio.ItemIndex of
    0:iLinhaNA:='';
    1:iLinhaNA:=' and AtendHPS.ValorNaoAcordado>0 ';
    end;

    iLinhaD:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                 ' and  AtendHPS.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                             ' and  AtendHPS.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (AtendHPS.MesCompetencia='+IntToStr(iMes)+
                         ' and  AtendHPS.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryDemoPS.SQL.Clear;
         qryDemoPS.SQL.Text:= 'Select  * from AtendHPS, Hospital '+
                                 'where AtendHPS.Hospital=Hospital.Hospital and '+
                                 '      AtendHPS.Cliente=:CliIni  and '+
                                 '      AtendHPS.Tipo=:Tip and ('+iLinhaD+') '+iLinhaA+iLinhaNA+
                                 'order by AtendHPS.Cliente,Nome ';

         qryDemoPS.ParamByName('CliIni').asInteger:=iClienteIni;

         case rdgPS.ItemIndex of
         0:qryDemoPS.ParamByName('Tip').AsString:='A';
         1:qryDemoPS.ParamByName('Tip').AsString:='P';
         end;

         qryDemoPS.Open;
         if qryDemoPS.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryDemoPS.Close;
            abort;
         end;

         frmMenu.ExcelExport.ExcelVisible:=true;
         qryDemoPSPorcGlosa.DisplayFormat:='##0.00';
         frmMenu.ExcelExport.Dataset:=qryDemoPS;
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         qryDemoPS.Close;
     end;
end;

end.
