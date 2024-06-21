unit frmRelSumarioVisitas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmRelSumarioVisita = class(TForm)
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
    rdgAnalise: TRadioGroup;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Edit3: TEdit;
    UpDown4: TUpDown;
    Edit4: TEdit;
    UpDown5: TUpDown;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSumarioVisita: TfrmRelSumarioVisita;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelSumarioVisita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
end;

procedure TfrmRelSumarioVisita.FormShow(Sender: TObject);
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

procedure TfrmRelSumarioVisita.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelSumarioVisita.BitBtn2Click(Sender: TObject);
var iHospitalIni,iClienteIni:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaH,iLInhaC,iLinhaA,iLinhaD,iCompetencia:string;
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
         qrySumarioVisita.SQL.Clear;
         qrySumarioVisita.SQL.Text:='select cliente,hospital,mescompetencia as mes,anocompetencia as ano,'+
                                    '       count(atendimentoHI) as capeantes, '+
                                    '       sum(visita) as visitas, '+
                                    '       sum(parcial) as parcial '+
                                    'from AtendHI '+
                                    'where Complemento=0 and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaH+iLinhaA+
                                    'group by cliente, hospital, anocompetencia, mescompetencia '+
                                    'order by cliente, hospital, anocompetencia, mescompetencia';

         if not chkCliente.Checked then
         qrySumarioVisita.ParamByName('CliIni').Value:=iClienteIni;

         if not chkHospital.Checked then
             qrySumarioVisita.ParamByName('HospIni').Value:=iHospitalIni;

         qrySumarioVisita.Open;
         if qrySumarioVisita.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qrySumarioVisita.Close;
            abort;
         end;

         qrySumarioVisita1.SQL.Clear;
         qrySumarioVisita1.SQL.Text:='select cliente,hospital,mescompetencia as mes,anocompetencia as ano,'+
                                    '       sum(parcial) as parcial1 '+
                                    'from AtendHI '+
                                    'where numeroparcial=1 and '+
                                    '      Complemento=0 and ('+
                                    iLinhaD+') '+
                                    iLinhaC+iLinhaH+iLinhaA+
                                    'group by cliente, hospital, anocompetencia, mescompetencia '+
                                    'order by cliente, hospital, anocompetencia, mescompetencia';

         if not chkCliente.Checked then
         qrySumarioVisita1.ParamByName('CliIni').Value:=iClienteIni;

         if not chkHospital.Checked then
             qrySumarioVisita1.ParamByName('HospIni').Value:=iHospitalIni;

         qrySumarioVisita1.Open;

         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));
         frmMenu.rvBBAuditoria.SetParam('Titulo','Sumário de Fechamento de Visitas');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise e Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relSumarioVisita',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelSumarioVisita.chkClienteClick(Sender: TObject);
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
