unit frmRelMediaCapeante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelMediaCapeantes = class(TForm)
    Panel1: TPanel;
    rdgAnalise: TRadioGroup;
    cmdRelCodigoN: TBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label2: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    iMeses:integer;
    { Public declarations }
  end;

var
  frmRelMediaCapeantes: TfrmRelMediaCapeantes;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelMediaCapeantes.FormShow(Sender: TObject);
var d,m,a:word;
begin
    frmRelMediaCapeantes.Tag:=0;
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);
end;

procedure TfrmRelMediaCapeantes.cmdRelCodigoNClick(Sender: TObject);
var iMes,iAno,iMesF,iAnoF:integer;
var iLinhaD,iLinhaA:string;
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

     if (iMes=iMesF) and (iAno=IAnoF) then
        iMeses:=1
     else
     begin
        imeses:=iMesf-iMes+1;
        if imeses<=0 then
            imeses:=imeses+12;
        if (ianof-iano)>=2 then
            imeses:=imeses+((ianof-iano)*12)
     end;
    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=false ';
    1:iLinhaA:=' and AtendHI.PosAnalise=true ';
    2:iLinhaA:=' ';
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
        qryControlP.SQL.Clear;
        qryControlP.SQL.Text:= 'Select Cliente as Cliente,  '+
                               '       Hospital as Hospital, '+
                               '       count(Paciente) as Capeantes, '+
                               '       sum(Parcial) as Parcial  '+
                               'from  AtendHI '+
                               'where ('+iLinhaD+')'+iLinhaA+
                               'group by Hospital,Cliente  '+
                               'order by Hospital, Capeantes desc, Cliente ';

        qryControlP.Open;

        frmMenu.rvBBAuditoria.SetParam('Titulo','Media Mensal de Capeantes por Hospital/Cliente');
         if (iMes=iMesF) and (iAno=IAnoF) then
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno))
         else
            frmMenu.rvBBAuditoria.SetParam('Competencia',InttoStr(iMes)+'/'+IntToStr(iAno)+' à '+
                                            InttoStr(iMesF)+'/'+IntToStr(iAnoF));
        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pós-Análise');
        2:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise e Pós-Análise');
        end;

        if frmRelMediaCapeantes.Tag=0 then
        begin
            frmMenu.rvBBAuditoria.SelectReport('relMediaMensal',true);
            frmMenu.rvBBAuditoria.Execute;
        end
        else
        begin
            with frmMenu do
            begin
                ExcelExport.Dataset:=qryControlP;    //nao tem % 
                ExcelExport.ExcelVisible:=true;
                ExcelExport.ExportDataset;
                ExcelExport.Disconnect;
            end;    
        end;
     end;
     frmRelMediaCapeantes.Tag:=0;
end;

procedure TfrmRelMediaCapeantes.BitBtn1Click(Sender: TObject);
begin
    frmRelMediaCapeantes.Tag:=1;
    cmdRelCodigoNClick(sender);
end;

end.
