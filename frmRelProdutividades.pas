unit frmRelProdutividades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelProdutividade = class(TForm)
    pnlFiltro: TPanel;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    Label5: TLabel;
    dbMedico: TMSTable;
    dsMedico: TDataSource;
    cmpCliente: TDBLookupComboBox;
    cmpCodCliente: TDBText;
    chkCliente: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    GroupBox1: TGroupBox;
    chkMedico: TCheckBox;
    cmpMedico: TDBLookupComboBox;
    cmpCodMedico: TDBText;
    dbEnfermeiro: TMSTable;
    dsEnfermeiro: TDataSource;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    GroupBox2: TGroupBox;
    cmpCodEnfermeiro: TDBText;
    chkEnfermeiro: TCheckBox;
    cmpEnfermeiro: TDBLookupComboBox;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    chkHospital: TCheckBox;
    cmpHospital: TDBLookupComboBox;
    cmpCodHospital: TDBText;
    Label1: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    Panel2: TPanel;
    chkCompleto: TCheckBox;
    Panel1: TPanel;
    cmdRelResumo: TBitBtn;
    cmdRelDetalhado: TBitBtn;
    cmdExcelResumo: TBitBtn;
    cmdDetalhadoExcel: TBitBtn;
    BitBtn1: TBitBtn;
    dbProd: TMSTable;
    dbProdAnoCompetencia: TIntegerField;
    dbProdMesCompetencia: TIntegerField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    dbProdProdutividade: TAutoIncField;
    dbProdStatusTexto: TStringField;
    dbProdDataInclusao: TDateTimeField;
    cmdRelHospital: TBitBtn;
    cmdExcelHospital: TBitBtn;
    cmdRelHospitalGeral: TBitBtn;
    cmdExcelHospitalGeral: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure chkMedicoClick(Sender: TObject);
    procedure chkEnfermeiroClick(Sender: TObject);
    procedure cmdRelResumoClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdDetalhadoExcelClick(Sender: TObject);
    procedure cmdRelDetalhadoClick(Sender: TObject);
    procedure cmdExcelResumoClick(Sender: TObject);
    procedure chkCompletoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmdRelHospitalClick(Sender: TObject);
    procedure cmdRelHospitalGeralClick(Sender: TObject);
    procedure cmdExcelHospitalClick(Sender: TObject);
    procedure cmdExcelHospitalGeralClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutividade: TfrmRelProdutividade;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;

{$R *.DFM}

procedure TfrmRelProdutividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbCliente.close;
    dbMedico.close;
    dbEnfermeiro.Close;
    dbHospital.Close;
    dbProd.Close;
end;

procedure TfrmRelProdutividade.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);

    Edit1.Text:=IntToStr(m-1);
    Edit2.Text:=IntToStr(a);
    Edit3.Text:=IntToStr(m-1);
    Edit4.Text:=IntToStr(a);

    dbCliente.Open;
    cmpCliente.KeyValue:=dbClienteCliente.Value;

    dbHospital.Open;
    cmpHospital.KeyValue:=dbHospitalHospital.Value;

    dbMedico.Open;
    cmpMedico.KeyValue:=dbMedicoAuditor.Value;
    dbEnfermeiro.Open;
    cmpEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.Value;
    dbProd.Open;
end;

procedure TfrmRelProdutividade.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpCliente.Visible:=false;
       cmpCodCliente.visible:=false;
    end
    else
    begin
       cmpCliente.Visible:=true;
       cmpCodCliente.Visible:=true;
    end;
    if (chkCliente.Checked) and (chkMedico.Checked) and (chkEnfermeiro.Checked) then
    begin
        cmdRelHospitalGeral.Enabled:=true;
        cmdExcelHospitalGeral.Enabled:=true;
    end
    else
    begin
        cmdRelHospitalGeral.Enabled:=false;
        cmdExcelHospitalGeral.Enabled:=false;
    end;
end;

procedure TfrmRelProdutividade.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospital.Visible:=false;
       cmpCodHospital.visible:=false;
    end
    else
    begin
       cmpHospital.Visible:=true;
       cmpCodHospital.Visible:=true;
    end;
    if (chkCliente.Checked) and (chkMedico.Checked) and (chkEnfermeiro.Checked) then
    begin
        cmdRelHospitalGeral.Enabled:=true;
        cmdExcelHospitalGeral.Enabled:=true;
    end
    else
    begin
        cmdRelHospitalGeral.Enabled:=false;
        cmdExcelHospitalGeral.Enabled:=false;
    end;

end;


procedure TfrmRelProdutividade.chkMedicoClick(Sender: TObject);
begin
    if chkMedico.Checked then
    begin
       cmpMedico.Visible:=false;
       cmpCodMedico.visible:=false;
       chkEnfermeiro.Visible:=true;
    end
    else
    begin
       cmpMedico.Visible:=true;
       cmpCodMedico.Visible:=true;
       chkEnfermeiro.Visible:=false;
    end;
    if (chkCliente.Checked) and (chkMedico.Checked) and (chkEnfermeiro.Checked) then
    begin
        cmdRelHospitalGeral.Enabled:=true;
        cmdExcelHospitalGeral.Enabled:=true;
        cmdRelHospital.Enabled:=true;
        cmdExcelHospital.Enabled:=true;
    end
    else
    begin
        cmdRelHospitalGeral.Enabled:=false;
        cmdExcelHospitalGeral.Enabled:=false;
        cmdRelHospital.Enabled:=false;
        cmdExcelHospital.Enabled:=false;
    end;

end;

procedure TfrmRelProdutividade.chkEnfermeiroClick(Sender: TObject);
begin
    if chkEnfermeiro.Checked then
    begin
       cmpEnfermeiro.Visible:=false;
       cmpCodEnfermeiro.visible:=false;
       chkMedico.Visible:=true;
    end
    else
    begin
       cmpEnfermeiro.Visible:=true;
       cmpCodEnfermeiro.Visible:=true;
       chkMedico.Visible:=false;
    end;
    if (chkCliente.Checked) and (chkMedico.Checked) and (chkEnfermeiro.Checked) then
    begin
        cmdRelHospitalGeral.Enabled:=true;
        cmdExcelHospitalGeral.Enabled:=true;
        cmdRelHospital.Enabled:=true;
        cmdExcelHospital.Enabled:=true;
    end
    else
    begin
        cmdRelHospitalGeral.Enabled:=false;
        cmdExcelHospitalGeral.Enabled:=false;
        cmdRelHospital.Enabled:=false;
        cmdExcelHospital.Enabled:=false;
    end;

end;

procedure TfrmRelProdutividade.cmdRelResumoClick(Sender: TObject);
var iMedico,iEnfermeiro,iCliente,iHospital,iProdIni,iProdFim:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mf,af:integer;
var iLinhaM,iLinhaE, iLinhaC,iLinhaH,iLinhaD,iLinhaP, iHospitalNome,iCompetencia,iAuditor,
    iAuditorNome,iClienteNome,iMedicoNome,iEnfermeiroNome:string;
begin
     iCliente:=dbClienteCliente.Value;
     iClienteNome:=dbClienteNome.value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;
     iMedico:=dbMedicoAuditor.Value;
     iMedicoNome:=dbMedicoNome.value;
     iEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
     iEnfermeiroNome:=dbEnfermeiroNome.value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     m:=StrToInt(Edit1.Text);
     a:=StrToInt(Edit2.Text);
     mf:=StrToInt(Edit3.Text);
     af:=StrToInt(Edit4.Text);

     if not dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([a,m]),[]) then
     begin
        ShowMessage('Competência inicial não localizada');
        abort;
     end
     else
        iProdIni:=dbProdProdutividade.value;

     if not dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([af,mf]),[]) then
     begin
        ShowMessage('Competência final não localizada');
        abort;
     end
     else
        iProdFim:=dbProdProdutividade.value;

     if (m<>mf) or (a<>af) then
     begin
        ShowMessage('Selecione apenas uma Competência');
        abort;
     end;

    iLinhaP:=' and (Produtividade>=:Pini and Produtividade<=:PFim) ';


    if (chkCliente.Checked) or (chkCompleto.Checked) then
       iLinhaC:=''
    else
       iLinhaC:=' and ProdutividadeM.ClienteAud=:Cli ';

    if (chkHospital.Checked) or (chkCompleto.Checked) then
       iLinhaH:=''
    else
       iLinhaH:=' and ProdutividadeM.Hospital=:HospIni ';

    if (chkMedico.Checked) or (chkCompleto.Checked) then
       iLinhaM:=''
    else
       iLinhaM:=' and (Tipo='+QuotedStr('M')+' and ProdutividadeM.Auditor=:Med) ';

    if (chkEnfermeiro.Checked) or (chkCompleto.Checked) then
       iLinhaE:=''
    else
       iLinhaE:=' and (Tipo='+QuotedStr('E')+' and ProdutividadeM.Auditor=:Enf) ';

    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                 ' and  ProdutividadeM.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                             ' and  ProdutividadeM.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                         ' and  ProdutividadeM.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;

with frmProdutividade do
begin
    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from ProdutividadeM '+
                      'where ('+iLinhaD+')'+iLinhaP+iLinhaC+iLinhaH+iLinhaM+iLinhaE+
                      'order by ClienteAud,Tipo,Auditor,Hospital,Servico ';

    qryProd.ParamByName('PIni').value:=iProdIni;
    qryProd.ParamByName('PFim').value:=iProdFim;

    if not (chkCliente.Checked)  then
        qryProd.ParamByName('Cli').value:=iCliente;

    if not (chkHospital.Checked)  then
       qryProd.ParamByName('HospIni').value:=iHospital;

    if  not (chkMedico.Checked)  then
       qryProd.ParamByName('Med').value:=iMedico;

    if not (chkEnfermeiro.Checked) then
       qryProd.ParamByName('Enf').value:=iEnfermeiro;

    qryProd.Open;

    if qryProd.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    if frmRelProdutividade.tag=0 then
    begin
        if (iMes=iMesF) and (iAno=iAnoF) then
            iCompetencia:=InttoStr(m)+'/'+IntToStr(a)
        else
            iCompetencia:=InttoStr(m)+'/'+InttoStr(a)+' à '+
                          InttoStr(mf)+'/'+InttoStr(af);

        frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

        if not (chkCliente.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Cliente',iClienteNome);

        if not (chkHospital.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

        if not (chkEnfermeiro.Checked) then
            frmMenu.rvBBAuditoria.SetParam('Titulo2',iEnfermeiroNome);

        if not (chkMedico.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Titulo2',iMedicoNome);

        frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

        frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores');

        frmMenu.rvBBAuditoria.SelectReport('relProdutividadeCompleto',true);
        frmMenu.rvBBAuditoria.Execute;
    end
    else
    begin
        frmMenu.ExcelExport.Dataset:=qryProd;      //nao tem %
        frmMenu.ExcelExport.ExcelVisible:=true;
        frmMenu.ExcelExport.ExportDataset;
        frmMenu.ExcelExport.Disconnect;
    end;
    frmRelProdutividade.tag:=0;
end;
end;


procedure TfrmRelProdutividade.cmdDetalhadoExcelClick(Sender: TObject);
begin
    frmRelProdutividade.Tag:=1;
    cmdRelDetalhadoClick(Sender);
    frmRelProdutividade.tag:=0;
end;

procedure TfrmRelProdutividade.cmdRelDetalhadoClick(Sender: TObject);
var iMedico,iEnfermeiro,iCliente,iHospital,iProdini,iProdFim:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mf,af:integer;
var iLinhaM,iLinhaE, iLinhaC,iLinhaH,iLinhaD,iLinhaP, iHospitalNome,iCompetencia,iAuditor,
    iAuditorNome,iClienteNome,iMedicoNome,iEnfermeiroNome:string;
begin
     iCliente:=dbClienteCliente.Value;
     iClienteNome:=dbClienteNome.value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;
     iMedico:=dbMedicoAuditor.Value;
     iMedicoNome:=dbMedicoNome.value;
     iEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
     iEnfermeiroNome:=dbEnfermeiroNome.value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     m:=StrToInt(Edit1.Text);
     a:=StrToInt(Edit2.Text);
     mf:=StrToInt(Edit3.Text);
     af:=StrToInt(Edit4.Text);

     if not dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([a,m]),[]) then
     begin
        ShowMessage('Competencia inicial não localizada');
        abort;
     end
     else
        iProdIni:=dbProdProdutividade.value;

     if not dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([af,mf]),[]) then
     begin
        ShowMessage('Competencia final não localizada');
        abort;
     end
     else
        iProdFim:=dbProdProdutividade.value;
    iLinhaP:=' and (Produtividade>=:Pini and Produtividade<=:PFim) ';

    if (chkCliente.Checked) or (chkCompleto.Checked) then
       iLinhaC:=''
    else
       iLinhaC:=' and ProdutividadeM.ClienteAud=:Cli ';

    if (chkHospital.Checked) or (chkCompleto.Checked) then
       iLinhaH:=''
    else
       iLinhaH:=' and ProdutividadeM.Hospital=:HospIni ';

    if (chkMedico.Checked) or (chkCompleto.Checked) then
       iLinhaM:=''
    else
       iLinhaM:=' and (Tipo='+QuotedStr('M')+' and ProdutividadeM.Auditor=:Med) ';

    if (chkEnfermeiro.Checked) or (chkCompleto.Checked) then
       iLinhaE:=''
    else
       iLinhaE:=' and (Tipo='+QuotedStr('E')+' and ProdutividadeM.Auditor=:Enf) ';

    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                 ' and  ProdutividadeM.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                             ' and  ProdutividadeM.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                         ' and  ProdutividadeM.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;


with frmProdutividade do
begin
    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from ProdutividadeM '+
                      'where ('+iLinhaD+')'+iLinhaP+iLinhaC+iLinhaH+iLinhaM+iLinhaE+
                      'order by ClienteAud,Tipo,Auditor,Hospital,Servico ';

    qryProd.ParamByName('PIni').value:=iProdIni;
    qryProd.ParamByName('PFim').value:=iProdFim;


    if not (chkCliente.Checked)  then
        qryProd.ParamByName('Cli').value:=iCliente;

    if not (chkHospital.Checked)  then
       qryProd.ParamByName('HospIni').value:=iHospital;

    if  not (chkMedico.Checked)  then
       qryProd.ParamByName('Med').value:=iMedico;

    if not (chkEnfermeiro.Checked) then
       qryProd.ParamByName('Enf').value:=iEnfermeiro;

    qryProd.Open;

    if qryProd.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        relProd.tag:=0;
        abort;
    end;
    dbRel.Close;
    dbRel.SQL.Text:='Delete from relProd';
    dbRel.Execute;
    dbRel.SQL.Text:='Select * from relProd order by Cliente,Tipo,Nome,HospitalNome';
    dbRel.Open;

    qryProd.First;
    while not qryProd.eof do
    begin
        if qryProdTipo.value='M' then
            iauditor:=qryProdAuditorNome.value
        else
            iauditor:=qryProdEnfermeiroNome.value;

        if dbHospital.Locate('Hospital',qryProdHospital.value,[]) then
           iHospitalNome:=dbHospitalNome.value;

        if dbRel.Locate('Cliente;Tipo;Nome;HospitalNome',
                        VarArrayof([qryProdClienteAud.value,qryProdTipo.value,iauditor,iHospitalNome]),[]) then
            dbRel.Edit
        else
        begin
            dbRel.Insert;
            dbRelCliente.value:=qryProdClienteAud.value;
            dbRelClienteNome.value:=qryProdClienteNome.value;
            dbRelTipo.value:=qryProdTipo.value;
            dbRelNome.value:=iauditor;
            dbRelHospital.value:=qryProdHospital.value;
            dbRelHospitalNome.value:=iHospitalNome;
        end;
        if qryProdServico.value='P' then              //1
            dbRelP.value:=qryProdQtd.value;
        if qryProdServico.value='PP1' then            //2
            dbRelPP1.value:=qryProdQtd.value;
        if qryProdServico.value='PPD' then           //3
            dbRelPPD.value:=qryProdQtd.value;
        if qryProdServico.value='PAC' then           //4
            dbRelPAC.value:=qryProdQtd.value;
        if qryProdServico.value='DAY' then          //5
            dbRelDAY.value:=qryProdQtd.value;
        if qryProdServico.value='PS' then          //6
            dbRelPS.value:=qryProdQtd.value;
        if qryProdServico.value='PS2' then        //7
            dbRelPS2.value:=qryProdQtd.value;
        if qryProdServico.value='VHC' then         //8
            dbRelVHC.value:=qryProdQtd.value;
        if (qryProdServico.value='V') or (qryProdServico.value='VL') or (qryProdServico.value='VA') then      //9
            dbRelV.value:=dbRelV.value+qryProdQtd.value;
        if dbRelV.value=0 then dbRelV.clear;
        if qryProdServico.value='VD' then          //10
            dbRelVD.value:=qryProdQtd.value;
        if qryProdServico.value='VE' then          //11
            dbRelVE.value:=qryProdQtd.value;
        if qryProdServico.value='SUS' then         //12
            dbRelSUS.value:=qryProdQtd.value;
        if qryProdServico.value='PER' then        //13
            dbRelPER.value:=qryProdQtd.value;
        if qryProdServico.value='DG' then          //14
            dbRelDG.value:=qryProdQtd.value;
        if qryProdServico.value='RAC' then         //15
            dbRelRAC.value:=qryProdQtd.value;
        if qryProdServico.value='CO' then        //16
            dbRelCO.value:=qryProdQtd.value;
        if qryProdServico.value='PNP' then        //17
            dbRelPNP.value:=qryProdQtd.value;
        if qryProdServico.value='FIS' then          //18
            dbRelFIS.value:=qryProdQtd.value;
        if qryProdServico.value='VCC' then         //19
            dbRelVCC.value:=qryProdQtd.value;
        if qryProdServico.value='APA' then        //20
            dbRelAPA.value:=qryProdQtd.value;
        if qryProdServico.value='AIH' then        //21
            dbRelAIH.value:=qryProdQtd.value;
        if qryProdServico.value='APU' then         //22
            dbRelAPU.value:=qryProdQtd.value;
        if qryProdServico.value='APS' then        //23
            dbRelAPS.value:=qryProdQtd.value;
        if qryProdServico.value='VAC' then        //24
            dbRelVAC.value:=qryProdQtd.value;
        if qryProdServico.value='AMB' then        //25
            dbRelAMB.value:=qryProdQtd.value;
        dbRel.Post;
        qryProd.Next;
    end;

    dbRel.IndexFieldNames:='ClienteNome,Tipo,Nome,HospitalNome';
    dbRel.Refresh;
    dbRel.First;

    if (frmRelProdutividade.tag=0) or (frmRelProdutividade.tag=2) then
    begin

        if (iMes=iMesF) and (iAno=iAnoF) then
            iCompetencia:=InttoStr(m)+'/'+IntToStr(a)
        else
            iCompetencia:=InttoStr(m)+'/'+InttoStr(a)+' à '+
                          InttoStr(mf)+'/'+InttoStr(af);

        frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

        if not (chkCliente.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Cliente',iClienteNome);

        if not (chkHospital.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

        if not (chkEnfermeiro.Checked) then
            frmMenu.rvBBAuditoria.SetParam('Titulo2',iEnfermeiroNome);

        if not (chkMedico.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Titulo2',iMedicoNome);

        frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores');

        if frmRelProdutividade.tag=0 then
            frmMenu.rvBBAuditoria.SelectReport('relProdutividadeCli2021',true)      //novo a partir de 2021
        else
            frmMenu.rvBBAuditoria.SelectReport('relProdutividadeCli',true);

        frmMenu.rvBBAuditoria.Execute;
        relProd.tag:=0;
    end
    else
    begin
        frmMenu.ExcelExport.Dataset:=dbRel;       //nao tem %
        frmMenu.ExcelExport.ExcelVisible:=true;
        frmMenu.ExcelExport.ExportDataset;
        frmMenu.ExcelExport.Disconnect;
    end;
    frmRelProdutividade.tag:=0;
end;
end;

procedure TfrmRelProdutividade.cmdExcelResumoClick(Sender: TObject);
begin
    frmRelProdutividade.Tag:=1;
    cmdRelResumoClick(Sender);
    frmRelProdutividade.tag:=0;
end;

procedure TfrmRelProdutividade.chkCompletoClick(Sender: TObject);
begin
    if chkCompleto.Checked then
    begin
       pnlFiltro.Visible:=false;
       chkClienteClick(sender);
       chkHospitalClick(sender);
       chkMedicoClick(sender);
       chkEnfermeiroClick(sender);
    end
    else
    begin
       pnlFiltro.Visible:=true;
    end;

end;

procedure TfrmRelProdutividade.BitBtn1Click(Sender: TObject);
begin
    frmRelProdutividade.Tag:=2;
    cmdRelDetalhadoClick(Sender);
    frmRelProdutividade.tag:=0;

end;

procedure TfrmRelProdutividade.cmdRelHospitalClick(Sender: TObject);
var iCliente,iHospital,iProdini,iProdFim:integer;
var iMes,iAno,iMesF,iAnoF,a,m,mf,af:integer;
var iLinhaM, iLinhaC,iLinhaH,iLinhaD,iLinhaP, iHospitalNome,iCompetencia,iAuditor,
    iAuditorNome,iClienteNome:string;
begin
     iCliente:=dbClienteCliente.Value;
     iClienteNome:=dbClienteNome.value;
     iHospital:=dbHospitalHospital.value;
     iHospitalNome:=dbHospitalNome.value;

     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);

     m:=StrToInt(Edit1.Text);
     a:=StrToInt(Edit2.Text);
     mf:=StrToInt(Edit3.Text);
     af:=StrToInt(Edit4.Text);

     if not dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([a,m]),[]) then
     begin
        ShowMessage('Competencia inicial não localizada');
        abort;
     end
     else
        iProdIni:=dbProdProdutividade.value;

     if not dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([af,mf]),[]) then
     begin
        ShowMessage('Competencia final não localizada');
        abort;
     end
     else
        iProdFim:=dbProdProdutividade.value;
     iLinhaP:=' and (Produtividade>=:Pini and Produtividade<=:PFim) ';

    if (chkCliente.Checked) or (chkCompleto.Checked) then
       iLinhaC:=''
    else
       iLinhaC:=' and ProdutividadeM.ClienteAud=:Cli ';

    if (chkHospital.Checked) or (chkCompleto.Checked) then
       iLinhaH:=''
    else
       iLinhaH:=' and ProdutividadeM.Hospital=:HospIni ';

    iLinhaM:=' and (Tipo='+QuotedStr('M')+') ';  //somentes Medicos


    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
        iLinhaD:='     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                 ' and  ProdutividadeM.AnoCompetencia='+IntToStr(iAno)+')'
     else
     begin
        while (Imes<>iMesF) or (iAno<>iAnoF) do
        begin
            iLinhaD:=iLinhad+'     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                             ' and  ProdutividadeM.AnoCompetencia='+InttoStr(iAno)+') or ';
            iMes:=iMes+1;
            if iMes>12 then
            begin
                iMes:=1;
                iAno:=iAno+1;
            end;
        end;
        iLinhaD:=iLinhad+'     (ProdutividadeM.MesCompetencia='+IntToStr(iMes)+
                         ' and  ProdutividadeM.AnoCompetencia='+InttoStr(iAno)+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
     end;


with frmProdutividade do
begin
    qryProdH.Close;
    qryProdH.SQL.Clear;
    qryProdH.SQL.Text:='Select  ClienteAud, AnoCompetencia, MesCompetencia, Hospital, Tipo, Servico, SUM(Qtd) AS Qtd '+
                       'from ProdutividadeM '+
                       'where ('+iLinhaD+')'+iLinhaP+iLinhaC+iLinhaH+iLinhaM+
                       'group by ClienteAud, AnoCompetencia, MesCompetencia, Hospital, Tipo, Servico '+
                       'order by ClienteAud, AnoCompetencia, MesCompetencia, Hospital, Tipo, Servico ';

    qryProdH.ParamByName('PIni').value:=iProdIni;
    qryProdH.ParamByName('PFim').value:=iProdFim;


    if not (chkCliente.Checked)  then
        qryProdH.ParamByName('Cli').value:=iCliente;

    if not (chkHospital.Checked)  then
       qryProdH.ParamByName('HospIni').value:=iHospital;

    qryProdH.Open;

    if qryProdH.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        relProd.tag:=0;
        abort;
    end;
    dbRel.Close;
    dbRel.SQL.Text:='Delete from relProd';
    dbRel.Execute;
    dbRel.SQL.Text:='Select * from relProd order by Cliente,Tipo,HospitalNome';
    dbRel.Open;

    qryProdH.First;
    while not qryProdH.eof do
    begin
        if dbHospital.Locate('Hospital',qryProdHHospital.value,[]) then
           iHospitalNome:=dbHospitalNome.value;

        iCompetencia:=IntToStr(qryProdHAnoCompetencia.value)+'/'+IntToStr(qryProdHMesCompetencia.Value);
        if Length(icompetencia)=6 then
            iCompetencia:=Copy(icompetencia,1,5)+'0'+Copy(icompetencia,6,1);

        if dbRel.Locate('Cliente;Nome;Tipo;HospitalNome',
                        VarArrayof([qryProdHClienteAud.value,iCompetencia,qryProdHTipo.value,iHospitalNome]),[]) then
            dbRel.Edit
        else
        begin
            dbRel.Insert;
            dbRelCliente.value:=qryProdHClienteAud.value;
            dbRelClienteNome.value:=qryProdHClienteNome.value;
            dbRelTipo.value:=qryProdHTipo.value;
            dbRelNome.value:=icompetencia;
            dbRelHospital.value:=qryProdHHospital.value;
            dbRelHospitalNome.value:=iHospitalNome;
        end;
        if qryProdHServico.value='P' then              //1
            dbRelP.value:=qryProdHQtd.value;
        if qryProdHServico.value='PP1' then            //2
            dbRelPP1.value:=qryProdHQtd.value;
        if qryProdHServico.value='PPD' then           //3
            dbRelPPD.value:=qryProdHQtd.value;
        if qryProdHServico.value='PAC' then           //4
            dbRelPAC.value:=qryProdHQtd.value;
        if qryProdHServico.value='DAY' then          //5
            dbRelDAY.value:=qryProdHQtd.value;
        if qryProdHServico.value='PS' then          //6
            dbRelPS.value:=qryProdHQtd.value;
        if qryProdHServico.value='PS2' then        //7
            dbRelPS2.value:=qryProdHQtd.value;
        if qryProdHServico.value='VHC' then         //8
            dbRelVHC.value:=qryProdHQtd.value;
        if (qryProdHServico.value='V') or (qryProdHServico.value='VL') or (qryProdHServico.value='VA') then      //9
            dbRelV.value:=dbRelV.value+qryProdHQtd.value;
        if dbRelV.value=0 then dbRelV.clear;
        if qryProdHServico.value='VD' then          //10
            dbRelVD.value:=qryProdHQtd.value;
        if qryProdHServico.value='VE' then          //11
            dbRelVE.value:=qryProdHQtd.value;
        if qryProdHServico.value='SUS' then         //12
            dbRelSUS.value:=qryProdHQtd.value;
        if qryProdHServico.value='PER' then        //13
            dbRelPER.value:=qryProdHQtd.value;
        if qryProdHServico.value='DG' then          //14
            dbRelDG.value:=qryProdHQtd.value;
        if qryProdHServico.value='RAC' then         //15
            dbRelRAC.value:=qryProdHQtd.value;
        if qryProdHServico.value='CO' then        //16
            dbRelCO.value:=qryProdHQtd.value;
        if qryProdHServico.value='PNP' then        //17
            dbRelPNP.value:=qryProdHQtd.value;
        if qryProdHServico.value='FIS' then          //18
            dbRelFIS.value:=qryProdHQtd.value;
        if qryProdHServico.value='VCC' then         //19
            dbRelVCC.value:=qryProdHQtd.value;
        if qryProdHServico.value='APA' then        //20
            dbRelAPA.value:=qryProdHQtd.value;
        if qryProdHServico.value='AIH' then        //21
            dbRelAIH.value:=qryProdHQtd.value;
        if qryProdHServico.value='APU' then         //22
            dbRelAPU.value:=qryProdHQtd.value;
        if qryProdHServico.value='APS' then        //23
            dbRelAPS.value:=qryProdHQtd.value;
        if qryProdHServico.value='VAC' then        //24
            dbRelVAC.value:=qryProdHQtd.value;
        if qryProdHServico.value='AMB' then        //25
            dbRelAMB.value:=qryProdHQtd.value;
        dbRel.Post;
        qryProdH.Next;
    end;

    dbRel.IndexFieldNames:='ClienteNome,HospitalNome,Nome';
    dbRel.Refresh;
    dbRel.First;

    case frmRelProdutividade.tag of
    0,2:begin
        if (iMes=iMesF) and (iAno=iAnoF) then
            iCompetencia:=InttoStr(m)+'/'+IntToStr(a)
        else
            iCompetencia:=InttoStr(m)+'/'+InttoStr(a)+' à '+
                          InttoStr(mf)+'/'+InttoStr(af);

        frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

        if not (chkCliente.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Cliente',iClienteNome);

        if not (chkHospital.Checked)  then
            frmMenu.rvBBAuditoria.SetParam('Titulo1',iHospitalNome);

        frmMenu.rvBBAuditoria.SetParam('Titulo2','Médicos');
        frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores');

        frmMenu.rvBBAuditoria.SelectReport('relProdutividadeH',true);

        frmMenu.rvBBAuditoria.Execute;
        relProd.tag:=0;
    end;
    3:begin  //relatorio geral por hospital

        if not (chkHospital.Checked)  then
            iLinhaH:='where relProd.Hospital=:HospIni   '
        else
            iLinhaH:='';

        qryProdHGeral.Close;
        qryProdHGeral.SQL.Clear;
        qryProdHGeral.SQL.Text:='SELECT Nome as Competencia, Hospital, HospitalNome,  '+
                                'sum(P) as P, '+
                                'sum(PP1+PPD) as PP, '+
                                'sum(PS) as PS, '+
                                'sum(V) as V, '+
                                'sum(DG) as DG '+
                                'from relProd  '+iLinhaH+
                                'group by Nome,Hospital,HospitalNome  '+
                                'order by HospitalNome,Competencia';

        if not (chkHospital.Checked)  then
            qryProdHGeral.ParamByName('HospIni').value:=iHospital;

        qryProdHGeral.Open;

        if (iMes=iMesF) and (iAno=iAnoF) then
            iCompetencia:=InttoStr(m)+'/'+IntToStr(a)
        else
            iCompetencia:=InttoStr(m)+'/'+InttoStr(a)+' à '+
                          InttoStr(mf)+'/'+InttoStr(af);

        frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

       frmMenu.rvBBAuditoria.SetParam('Cliente','Todos os Clientes');
       frmMenu.rvBBAuditoria.SetParam('Titulo1','Todos os Hospitais');

        frmMenu.rvBBAuditoria.SetParam('Titulo2','Médicos');
        frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores');

        frmMenu.rvBBAuditoria.SelectReport('relProdutividadeHGeral',true);

        frmMenu.rvBBAuditoria.Execute;
        relProd.tag:=0;

    end;
    1:
    begin
        frmMenu.ExcelExport.Dataset:=dbRel;       
        frmMenu.ExcelExport.ExcelVisible:=true;
        frmMenu.ExcelExport.ExportDataset;
        frmMenu.ExcelExport.Disconnect;
    end;
    4:
    begin
        frmMenu.ExcelExport.Dataset:=qryProdHGeral;
        frmMenu.ExcelExport.ExcelVisible:=true;
        frmMenu.ExcelExport.ExportDataset;
        frmMenu.ExcelExport.Disconnect;
    end;
    end;
    frmRelProdutividade.tag:=0;
end;

end;

procedure TfrmRelProdutividade.cmdRelHospitalGeralClick(Sender: TObject);
begin
    frmRelProdutividade.Tag:=3;  //relatorio geral por hospital
    cmdRelHospitalClick(Sender);
    frmRelProdutividade.tag:=0;

end;

procedure TfrmRelProdutividade.cmdExcelHospitalClick(Sender: TObject);
begin
    frmRelProdutividade.Tag:=1;  
    cmdRelHospitalClick(Sender);
    frmRelProdutividade.tag:=0;

end;

procedure TfrmRelProdutividade.cmdExcelHospitalGeralClick(Sender: TObject);
begin
    frmRelProdutividade.Tag:=4;  //relatorio geral por hospital excel
    cmdRelHospitalClick(Sender);
    frmRelProdutividade.tag:=0;

end;

end.
