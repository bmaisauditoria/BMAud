unit frmRelInternacoesFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
   MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids,
  DBGrids, Mask, RpDefine, RpCon, RpConDS, RpConBDE, Variants;

type
  TfrmRelInternacaoFE = class(TForm)
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
    rdgAnalise: TRadioGroup;
    cmdRelNovo: TBitBtn;
    dbRelFaixa: TMSTable;
    dsRelFaixaEtaria: TDataSource;
    dbRelFaixaFaixaIni: TIntegerField;
    dbRelFaixaFaixaFim: TIntegerField;
    grdFaixa: TDBGrid;
    Panel7: TPanel;
    cmdGravaD: TBitBtn;
    cmdExcluiD: TBitBtn;
    cmdNovoD: TBitBtn;
    dbRelFaixaCliente: TIntegerField;
    dbRelFaixaQtd: TIntegerField;
    dbRelFaixaValorPago: TCurrencyField;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    dbRelFaixaClienteNome: TStringField;
    dbRelFaixaQtdH: TIntegerField;
    dbRelFaixaValorPagoH: TCurrencyField;
    dbRelFaixaQtdM: TIntegerField;
    dbRelFaixaValorPagoM: TCurrencyField;
    dbRelFaixaQtdNA: TIntegerField;
    dbRelFaixaValorPagoNA: TCurrencyField;
    dbFaixa: TMSTable;
    dbFaixaFaixaIni: TIntegerField;
    dbFaixaFaixaFim: TIntegerField;
    dbRelFaixaHospital: TIntegerField;
    dbRelFaixaHospitalNome: TStringField;
    Label2: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    BitBtn1: TBitBtn;
    rvRelFaixa: TRvDataSetConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelNovoClick(Sender: TObject);
    procedure cmdNovoDClick(Sender: TObject);
    procedure cmdGravaDClick(Sender: TObject);
    procedure cmdExcluiDClick(Sender: TObject);
    procedure dsRelFaixaEtariaStateChange(Sender: TObject);
    procedure dbFaixaBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelInternacaoFE: TfrmRelInternacaoFE;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelInternacaoFE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbFaixa.Open;
    dbFaixa.EnableControls;
    dbRelFaixa.Close;
end;

procedure TfrmRelInternacaoFE.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;
    dbRelFaixa.Open;
    dbFaixa.Open;
    dbFaixa.EnableControls;
end;

procedure TfrmRelInternacaoFE.cmdRelNovoClick(Sender: TObject);
var iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF,iIdade:integer;
var iLInhaC,iLinhaA,iLinhaD:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iLinhaC:=' and AtendHI.Cliente=:CliIni ';

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

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

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
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryEstatPacienteD.SQL.Clear;
         qryEstatPacienteD.SQL.Text:='Select * from AtendHI,Pacientes '+
                                     'where AtendHI.Paciente=Pacientes.Paciente and ('+
                                     iLinhaD+') '+
                                     iLinhaC+iLinhaA+
                                     'order by AtendHI.Cliente,Hospital,Nome, DataInternacao';

         qryEstatPacienteD.ParamByName('CliIni').Value:=iClienteIni;

         qryEstatPacienteD.Open;
         if qryEstatPacienteD.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPacienteD.Close;
            abort;
         end;

         dbFaixa.DisableControls;
         dbRelFaixa.Close;
         dbRelFaixa.SQL.Text:='Delete from relFaixaEtaria';
         dbRelFaixa.Execute;
         dbRelFaixa.SQL.Text:='Select * from relFaixaEtaria';
         dbRelFaixa.Open;

         ProgressBar1.Min:=1;
         ProgressBar1.Max:=qryEstatPacienteD.RecordCount;
         ProgressBar1.Position:=0;
         qryEstatPacienteD.First;
         while not qryEstatPacienteD.Eof do
         begin
            ProgressBar1.Position:=ProgressBar1.Position+1;
            if not dbRelFaixa.Locate('Cliente;Hospital',VarArrayof([qryEstatPacienteDCliente.value,qryEstatPacienteDHospital.value]),[]) then
            begin
                 dbFaixa.First;
                 while not dbFaixa.eof do
                 begin
                    dbRelFaixa.Insert;
                    dbRelFaixaCliente.value:=qryEstatPacienteDCliente.value;
                    dbRelFaixaHospital.value:=qryEstatPacienteDHospital.value;
                    dbRelFaixaFaixaIni.value:=dbFaixaFaixaIni.value;
                    dbRelFaixaFaixaFim.value:=dbFaixaFaixaFim.value;
                    dbRelFaixa.Post;
                    dbFaixa.Next;
                 end;
            end;

            iIdade:=qryEstatPacienteDIdade.value;
            if iIdade>99 then
                iIdade:=99;
            dbRelFaixa.Locate('Cliente;Hospital',VarArrayof([qryEstatPacienteDCliente.value,qryEstatPacienteDHospital.value]),[]);
            while (not dbRelFaixa.eof) and
                  (dbRelFaixaCliente.value=qryEstatPacienteDCliente.value) and
                  (dbRelFaixaHospital.value=qryEstatPacienteDHospital.value) do
            begin
                if (iIdade>=dbRelFaixaFaixaIni.value) and
                   (iIdade<=dbRelFaixaFaixaFim.value) then
                begin
                    dbRelFaixa.Edit;
                    dbRelFaixaQtd.value:=dbRelFaixaQtd.value+1;
                    dbRelFaixaValorPago.value:=dbRelFaixaValorPago.value+qryEstatPacienteDValorPago.value;
                    if qryEstatPacienteDSexo.value='M' then
                    begin
                        dbRelFaixaQtdH.value:=dbRelFaixaQtdH.value+1;
                        dbRelFaixaValorPagoH.value:=dbRelFaixaValorPagoH.value+qryEstatPacienteDValorPago.value;
                    end;
                    if qryEstatPacienteDSexo.value='F' then
                    begin
                        dbRelFaixaQtdM.value:=dbRelFaixaQtdM.value+1;
                        dbRelFaixaValorPagoM.value:=dbRelFaixaValorPagoM.value+qryEstatPacienteDValorPago.value;
                    end;
                    if (qryEstatPacienteDSexo.value<>'M') and
                       (qryEstatPacienteDSexo.value<>'F')then
                    begin
                        dbRelFaixaQtdNA.value:=dbRelFaixaQtdNA.value+1;
                        dbRelFaixaValorPagoNA.value:=dbRelFaixaValorPagoNA.value+qryEstatPacienteDValorPago.value;
                    end;
                    dbRelFaixa.Post;
                    dbRelFaixa.Refresh;
                end;
                dbRelFaixa.Next;
            end;
            qryEstatPacienteD.Next;
         end;

         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));
         frmMenu.rvBBAuditoria.SetParam('Titulo','Internações por Sexo e Faixa Etária');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;
         frmMenu.rvBBAuditoria.SelectReport('relInternacaoFE',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
     ProgressBar1.Position:=0;
end;

procedure TfrmRelInternacaoFE.cmdNovoDClick(Sender: TObject);
begin
    dbFaixa.Insert;
end;

procedure TfrmRelInternacaoFE.cmdGravaDClick(Sender: TObject);
begin
    dbFaixa.Post;
end;

procedure TfrmRelInternacaoFE.cmdExcluiDClick(Sender: TObject);
begin
    dbFaixa.Delete;
end;

procedure TfrmRelInternacaoFE.dsRelFaixaEtariaStateChange(Sender: TObject);
begin
     cmdNovoD.Enabled:=dbFaixa.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiD.Enabled:=(dbFaixa.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFaixa.RecordCount<>0);
     cmdGravaD.Enabled:=dbFaixa.State in [dsEdit,dsInsert];
end;

procedure TfrmRelInternacaoFE.dbFaixaBeforePost(DataSet: TDataSet);
begin
    if dbFaixaFaixaFim.value<dbFaixaFaixaIni.value then
    begin
        ShowMessage('Faixa Final menor que inicial');
        abort;
    end;
end;

procedure TfrmRelInternacaoFE.BitBtn1Click(Sender: TObject);
var iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF,iIdade:integer;
var iLInhaC,iLinhaA,iLinhaD:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iLinhaC:=' and AtendHI.Cliente=:CliIni ';

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

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:='';
    end;

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
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

     with dmRelatorio do
     begin
         qryEstatPacienteD.SQL.Clear;
         qryEstatPacienteD.SQL.Text:='Select * from AtendHI,Pacientes '+
                                     'where AtendHI.Paciente=Pacientes.Paciente and ('+
                                     iLinhaD+') '+
                                     iLinhaC+iLinhaA+
                                     'order by AtendHI.Cliente,Hospital,Nome, DataInternacao';

         qryEstatPacienteD.ParamByName('CliIni').Value:=iClienteIni;

         qryEstatPacienteD.Open;
         if qryEstatPacienteD.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryEstatPacienteD.Close;
            abort;
         end;

         dbFaixa.DisableControls;

         dbRelFaixa.Close;
         dbRelFaixa.SQL.Text:='Delete from relFaixaEtaria';
         dbRelFaixa.Execute;
         dbRelFaixa.SQL.Text:='Select * from relFaixaEtaria';
         dbRelFaixa.Open;

         ProgressBar1.Min:=1;
         ProgressBar1.Max:=qryEstatPacienteD.RecordCount;
         ProgressBar1.Position:=0;
         qryEstatPacienteD.First;
         while not qryEstatPacienteD.Eof do
         begin
            ProgressBar1.Position:=ProgressBar1.Position+1;
            if not dbRelFaixa.Locate('Cliente;Hospital',VarArrayof([qryEstatPacienteDCliente.value,qryEstatPacienteDHospital.value]),[]) then
            begin
                 dbFaixa.First;
                 while not dbFaixa.eof do
                 begin
                    dbRelFaixa.Insert;
                    dbRelFaixaCliente.value:=qryEstatPacienteDCliente.value;
                    dbRelFaixaHospital.value:=qryEstatPacienteDHospital.value;
                    dbRelFaixaFaixaIni.value:=dbFaixaFaixaIni.value;
                    dbRelFaixaFaixaFim.value:=dbFaixaFaixaFim.value;
                    dbRelFaixa.Post;
                    dbFaixa.Next;
                 end;
            end;

            iIdade:=qryEstatPacienteDIdade.value;
            if iIdade>99 then
                iIdade:=99;
            dbRelFaixa.Locate('Cliente;Hospital',VarArrayof([qryEstatPacienteDCliente.value,qryEstatPacienteDHospital.value]),[]);
            while (not dbRelFaixa.eof) and
                  (dbRelFaixaCliente.value=qryEstatPacienteDCliente.value) and
                  (dbRelFaixaHospital.value=qryEstatPacienteDHospital.value) do
            begin
                if (iIdade>=dbRelFaixaFaixaIni.value) and
                   (iIdade<=dbRelFaixaFaixaFim.value) then
                begin
                    dbRelFaixa.Edit;
                    dbRelFaixaQtd.value:=dbRelFaixaQtd.value+1;
                    dbRelFaixaValorPago.value:=dbRelFaixaValorPago.value+qryEstatPacienteDValorPago.value;
                    if qryEstatPacienteDSexo.value='M' then
                    begin
                        dbRelFaixaQtdH.value:=dbRelFaixaQtdH.value+1;
                        dbRelFaixaValorPagoH.value:=dbRelFaixaValorPagoH.value+qryEstatPacienteDValorPago.value;
                    end;
                    if qryEstatPacienteDSexo.value='F' then
                    begin
                        dbRelFaixaQtdM.value:=dbRelFaixaQtdM.value+1;
                        dbRelFaixaValorPagoM.value:=dbRelFaixaValorPagoM.value+qryEstatPacienteDValorPago.value;
                    end;
                    if (qryEstatPacienteDSexo.value<>'M') and
                       (qryEstatPacienteDSexo.value<>'F')then
                    begin
                        dbRelFaixaQtdNA.value:=dbRelFaixaQtdNA.value+1;
                        dbRelFaixaValorPagoNA.value:=dbRelFaixaValorPagoNA.value+qryEstatPacienteDValorPago.value;
                    end;
                    dbRelFaixa.Post;
                    dbRelFaixa.Refresh;
                end;
                dbRelFaixa.Next;
            end;
            qryEstatPacienteD.Next;
         end;
         frmMenu.ExcelExport.ExcelVisible:=true;
         frmMenu.ExcelExport.Dataset:=dbRelFaixa;   // nao tem % 
         frmMenu.ExcelExport.ExportDataset;
         frmMenu.ExcelExport.Disconnect;
         dbRelFaixa.close;
     end;
     ProgressBar1.Position:=0;

end;

end.
