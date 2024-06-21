unit frmRelProdsNP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf,
  DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls,
  Grids, DBGrids, RpDefine, RpCon, RpConDS, RpConBDE;

type
  TfrmRelProdNP = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    UpDown4: TUpDown;
    Edit4: TEdit;
    UpDown5: TUpDown;
    qryProdNP: TMSQuery;
    qryProdNPCliente: TIntegerField;
    qryProdNPPaciente: TIntegerField;
    qryProdNPHospital: TIntegerField;
    qryProdNPMedico: TIntegerField;
    qryProdNPEnfermeiro: TIntegerField;
    qryProdNPMesCompetencia: TIntegerField;
    qryProdNPAnoCompetencia: TIntegerField;
    qryProdNPObservacao: TMemoField;
    qryProdNPPacienteNome: TStringField;
    qryProdNPHospitalNome: TStringField;
    qryProdNPMedicoNome: TStringField;
    qryProdNPEnfermeiroNome: TStringField;
    qryProdNPClienteNome: TStringField;
    rdgTipo: TRadioGroup;
    rvProdNP: TRvDataSetConnection;
    qryProdNPDataInternacao: TDateTimeField;
    qryProdNPDataAlta: TDateTimeField;
    qryProdNPAtendimentoHI: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdNP: TfrmRelProdNP;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;


{$R *.DFM}

procedure TfrmRelProdNP.FormShow(Sender: TObject);
begin
    Edit1.Text:=IntTostr(frmProdutividade.imes);
    Edit2.Text:=IntTostr(frmProdutividade.iano);
    Edit3.Text:=IntToStr(frmProdutividade.imes);
    Edit4.Text:=IntTostr(frmProdutividade.iano);
end;

procedure TfrmRelProdNP.BitBtn2Click(Sender: TObject);
var iLinha,iLinhaT:string;
var imes,iano,imesf,ianof:integer;
begin
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

    iLinha:='';
    if (Imes=iMesF) and (iAno=iAnoF) then
        iLinha:='     (MesCompetencia='+IntToStr(iMes)+
                 ' and  AnoCompetencia='+IntToStr(iAno)+')'
    else
    begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinha:=iLinha+'     (MesCompetencia='+IntToStr(iMes)+
                             ' and  AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinha:=iLinha+'     (MesCompetencia='+IntToStr(iMes)+
                         ' and  AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
    end;

    case rdgTipo.ItemIndex of
    0:iLinhaT:='order by Cliente,Medico,Hospital,AnoCompetencia,MesCompetencia,AtendimentoHI';
    1:iLinhaT:='order by Cliente,Enfermeiro,Hospital,AnoCompetencia,MesCompetencia,AtendimentoHI';
    end;

    qryProdNP.Close;
    qryProdNP.SQL.Clear;
    qryProdNP.SQL.Text:='Select * from AtendHI '+
                        'where (Servico='+QuotedStr('NP')+' or Servico='+QuotedStr('CE')+') and ('+iLinha+') '+iLinhaT;

    qryProdNP.Open;

    if qryProdNP.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    if (iMes=iMesF) and (iAno=IAnoF) then
       frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
     else
       frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                           InttoStr(iMesF)+'/'+IntToStr(iAnoF));

    case rdgTipo.ItemIndex of
    0:frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividades não pagas - Medicos');
    1:frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividades não pagas - Enfermeiros');
    end;

    case rdgTipo.ItemIndex of
    0:frmMenu.rvBBAuditoria.SelectReport('relProdNPMed',true);
    1:frmMenu.rvBBAuditoria.SelectReport('relProdNPEnf',true);
    end;

    frmMenu.rvBBAuditoria.Execute;
end;


procedure TfrmRelProdNP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qryProdNP.Close;
end;

end.
