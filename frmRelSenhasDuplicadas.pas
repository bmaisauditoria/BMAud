unit frmRelSenhasDuplicadas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Grids,
  DBGrids, ExcelExport;

type
  TfrmRelSenhaDuplicada = class(TForm)
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
    dbHospitalIni: TMSTable;
    dsHospitalIni: TDataSource;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    cmpHospitalIni: TDBLookupComboBox;
    Label5: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    chkCliente: TCheckBox;
    chkHospital: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    cmdRelNovo: TBitBtn;
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdRelNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSenhaDuplicada: TfrmRelSenhaDuplicada;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelSenhaDuplicada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
end;

procedure TfrmRelSenhaDuplicada.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;
end;

procedure TfrmRelSenhaDuplicada.chkClienteClick(Sender: TObject);
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

procedure TfrmRelSenhaDuplicada.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospitalIni.Visible:=false;
       cmpCodHospitalIni.visible:=false;
    end
    else
    begin
       cmpHospitalIni.Visible:=true;
       cmpCodHospitalIni.Visible:=true;
    end;

end;

procedure TfrmRelSenhaDuplicada.cmdRelNovoClick(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaD,iCompetencia,iTitulo2:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iHospitalIni:=dbHospitalIniHospital.Value;
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

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and AtendHI.Cliente=:CliIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

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
         qryHI.Close;
         qryHI.SQL.Clear;
         qryHI.SQL.Text:='Select * from AtendHI '+
                         'where AtendHI.Complemento=0  and ( '+
                          iLinhaD+') '+
                          iLinhaC+iLinhaH+
                          'order by Senha  ';

         if not chkCliente.Checked then
             qryHI.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qryHI.ParamByName('HospIni').asinteger:=iHospitalIni;

         qryHI.Open;

         qrySenhaDup.Close;
         qrySenhaDup.Filtered:=false;
         qrySenhaDup.SQL.Clear;
         qrySenhaDup.SQL.Text:='Select Senha, '+
                               '       Count(Senha) as Qtd '+
                               'from AtendHI '+
                               'where Senha is not null and Complemento=0  and ( '+
                               iLinhaD+') '+
                               iLinhaC+iLinhaH+
                               'group by Senha '+
                               'having count(senha)>1 '+
                               'order by Senha asc  ';

         if not chkCliente.Checked then
             qrySenhaDup.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkHospital.Checked then
             qrySenhaDup.ParamByName('HospIni').asinteger:=iHospitalIni;

         qrySenhaDup.Filtered:=true;
         qrySenhaDup.Open;

         if qrySenhaDup.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
         end;

         if (iMes=iMesF) and (iAno=IAnoF) then
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)
         else
            iCompetencia:=InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                               InttoStr(iMesF)+'/'+IntToStr(iAnoF);

         frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);
         frmMenu.rvBBAuditoria.SetParam('Titulo','Relatorio de Senhas Duplicadas');

         frmMenu.rvBBAuditoria.SetParam('Titulo2',ititulo2);
         frmMenu.rvBBAuditoria.SelectReport('relSenhaDup',true);
         frmMenu.rvBBAuditoria.Execute;

         qrySenhaDup.Close;
         qryHI.Close;
     end;
end;

end.
