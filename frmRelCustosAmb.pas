unit frmRelCustosAmb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Mask,
  Grids, DBGrids, Menus;

type
  TfrmRelCustoAMB = class(TForm)
    Panel1: TPanel;
    cmpCodHospitalIni: TDBText;
    cmdRelCodigo: TBitBtn;
    dbHospitalIni: TMSTable;
    dsHospitalIni: TDataSource;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    cmpHospitalIni: TDBLookupComboBox;
    dbPacienteIni: TMSTable;
    dsPacienteInicial: TDataSource;
    cmpPacienteIni: TDBLookupComboBox;
    cmpCodPacienteIni: TDBText;
    dbPacienteIniPaciente: TIntegerField;
    dbPacienteIniNome: TStringField;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    chkHospital: TCheckBox;
    chkPaciente: TCheckBox;
    Label2: TLabel;
    dbClienteIniDiarias: TIntegerField;
    dbClienteIniDiariasUTI: TIntegerField;
    dbAmbIni: TMSTable;
    dsAmbIni: TDataSource;
    dbAmbIniCodAMB: TIntegerField;
    dbAmbIniDescricaoAMB: TStringField;
    dbAmbFim: TMSTable;
    dsAmbFim: TDataSource;
    dbAmbFimCodAMB: TIntegerField;
    dbAmbFimDescricaoAMB: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Edit3: TEdit;
    Label6: TLabel;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    rdgAnalise: TRadioGroup;
    cmpCodIni: TEdit;
    cmpCodFim: TEdit;
    grdAmb: TDBGrid;
    dbAmb: TMSTable;
    dsAmb: TDataSource;
    dbAmbCodAMB: TIntegerField;
    dbAmbDescricaoAMB: TStringField;
    PopupMenu1: TPopupMenu;
    AMBInicial1: TMenuItem;
    AMBFinal1: TMenuItem;
    AmbTextoIni: TDBText;
    AmbTextoFim: TDBText;
    chkAmb: TCheckBox;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
    procedure chkPacienteClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure AMBInicial1Click(Sender: TObject);
    procedure AMBFinal1Click(Sender: TObject);
    procedure cmpCodIniChange(Sender: TObject);
    procedure cmpCodFimChange(Sender: TObject);
    procedure chkAmbClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCustoAMB: TfrmRelCustoAMB;

implementation

uses frmPrincipal, dmRelatorios, frmRelCustosTipoInternacao;

{$R *.DFM}

procedure TfrmRelCustoAMB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbClienteID.close;
    dbHospitalIni.close;
    dbPacienteIni.close;
    dbAmb.close;
    dbAmbIni.Close;
    dbAmbFim.Close;
end;

procedure TfrmRelCustoAMB.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbClienteId.Open;
    cmpClienteId.KeyValue:=dbClienteIDID.value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;

    dbPacienteIni.Open;
    cmpPacienteIni.KeyValue:=dbPacienteIniPaciente.Value;

    dbAmb.open;

    dbAmbIni.Open;
    dbAmbIni.First;

    dbAmbFim.Open;
    dbAmbFim.Last;
end;

procedure TfrmRelCustoAMB.cmdRelCodigoClick(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni,iAmbIni,iAmbFim:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iDataIni,iDataFim:TDate;
var iLinhaH,iLinhaP,iLInhaC,iLinhaA,iLinhaD,iLinhaA1:string;
var iLinhaID,iClienteID:string;
begin
    if not chkAmb.Checked then
    begin
        if not dbAmbIni.Locate('CodAmb',cmpCodIni.text,[]) then
        begin
            ShowMessage('Codigo AMB inicial inválido');
            abort;
        end;
        if not dbAmbFim.Locate('CodAmb',cmpCodFim.text,[]) then
        begin
            ShowMessage('Codigo AMB final inválido');
            abort;
        end;
         iAmbIni:=dbAmbIniCodAmb.Value;
         iAmbFim:=dbAmbFimCodAmb.value;
     end;
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);
     iDataIni:=EncodeDAte(iAno,iMes,1);
     iDataFim:=EncodeDate(iAnoF,iMesF,1);

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

     if iDataFim<iDataIni then
     begin
        ShowMessage('Competencia final menor que inicial');
        abort;
     end;

     if iAmbIni>iAmbFim then
     begin
        ShowMessage('Codigo Amb final menor que inicial');
        abort;
    end;

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';
    if chkPaciente.Checked then
       iLinhaP:=''
    else
       iLinhaP:=' and AtendHI.Paciente=:PacIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if not chkAmb.Checked then
        iLinhaA:=' and AtendHI.CodAmb>=:AmbIni and AtendHI.CodAmb<=:AmbFim '
    else
        iLinhaA:='';

    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
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
        iLInhaD:='('+iLinhaD+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
    end;

     case rdgAnalise.ItemIndex of
     0:iLinhaA1:=' and AtendHI.PosAnalise=0 ';
     1:iLinhaA1:=' and AtendHI.PosAnalise=1 ';
     2:iLinhaA1:='';
    end;

with dmRelatorio do
begin
    case frmRelCustoAmb.Tag of
    1: begin //Custos por AMB
         qryrelCustoAmb.SQL.Clear;
         qryrelCustoAmb.SQL.Text:='Select AtendHI.Cliente as Cliente, '+
                                  '       AtendHI.Hospital as Hospital, '+
                                  '       AtendHI.CodAmb as CodAmb, '+
                                  '       sum(AtendHI.Valor) as Valor, '+
                                  '       sum(AtendHI.valorglosadom) as Glosam, '+
                                  '       sum(AtendHI.valorglosadoe) as Glosae, '+
                                  '       count(AtendHI.Paciente) as Qtd, '+
                                  '       Hospital.Nome as Nome  '+
                                  'from AtendHI, Hospital '+
                                  'where AtendHI.Hospital=Hospital.Hospital and '+
                                  '      AtendHI.Complemento=0 and '+
                                  iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaA1+iLinhaID+
                                  'group by Cliente, AtendHI.Hospital, Nome, CodAmb '+
                                  'order by Cliente, CodAmb, Nome';

         qryrelCustoAmb.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoAmb.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoAmb.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkAmb.Checked then
         begin
            qryRelCustoAmb.ParamByName('AmbIni').Value:=iAmbIni;
            qryrelCustoAmb.ParamByName('AmbFim').Value:=iAmbFim;
         end;

         qryrelCustoAmb.Open;

         if qryrelCustoAmb.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryrelCustoAmb.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if chkAmb.Checked then
            frmMenu.rvBBAuditoria.SetParam('Titulo','Todos Procedimentos AMB')
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','Procedimentos AMB de '+IntToStr(iAmbIni)+' à '+InttoStr(iAmbFim));
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoAmb',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    2: begin //Custos por Hospital/Amb
         qryrelCustoHospital.SQL.Clear;
         qryrelCustoHospital.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                       '       AtendHI.Hospital as Hospital, '+
                                       '       sum(AtendHI.valor) as valor, '+
                                       '       sum(AtendHI.valorglosadom) as glosam, '+
                                       '       sum(AtendHI.valorglosadoe) as glosae '+
                                       'from AtendHI '+
                                       'where AtendHI.Complemento=0 and '+
                                       iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaA1+iLinhaID+
                                       'group by cliente,Hospital '+
                                       'order by cliente,Hospital ';

         qryrelCustoHospital.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoHospital.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoHospital.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkAmb.Checked then
         begin
             qryrelCustoHospital.ParamByName('AmbIni').Value:=iAmbIni;
             qryrelCustoHospital.ParamByName('AmbFim').Value:=iAmbFim;
        end;

         qryrelCustoHospital.Open;

         qryRelCustoAmb.Close;
         qryrelCustoAmb.SQL.Clear;
         qryrelCustoAmb.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                  '       AtendHI.Hospital as Hospital, '+
                                  '       AtendHI.codAmb as codAmb, '+
                                  '       sum(AtendHI.valor) as valor, '+
                                  '       sum(AtendHI.valorglosadom) as glosam, '+
                                  '       sum(AtendHI.valorglosadoe) as glosae, '+
                                  '       count(AtendHI.AtendimentoHI) as qtd, '+
                                  '       Hospital.Nome as Nome  '+
                                  'from AtendHI, Hospital '+
                                  'where AtendHI.Hospital=Hospital.Hospital and '+
                                  '      AtendHI.Complemento=0 and '+
                                  iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaA1+iLinhaID+
                                  'group by cliente,AtendHI.Hospital,nome,codAmb '+
                                  'order by cliente, nome, codAmb';

         qryrelCustoAmb.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoAmb.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoAmb.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkAmb.Checked then
         begin
             qryrelCustoAmb.ParamByName('AmbIni').Value:=iAmbIni;
             qryrelCustoAmb.ParamByName('AmbFim').Value:=iAmbFim;
         end;

         qryrelCustoAmb.Open;

         if qryrelCustoAmb.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryrelCustoAmb.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkAmb.Checked then
             frmMenu.rvBBAuditoria.SetParam('Titulo','Procedimentos AMB de '+IntToStr(iAmbIni)+' à '+InttoStr(iAmbFim))
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','Todos os Procedimentos AMB');
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         frmMenu.rvBBAuditoria.SelectReport('relCustoAmb1',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    end;
end;
end;

procedure TfrmRelCustoAMB.chkPacienteClick(Sender: TObject);
begin
    if chkPaciente.Checked then
    begin
       cmpPacienteIni.Visible:=false;
       cmpCodPacienteIni.visible:=false;
    end
    else
    begin
       cmpPacienteIni.Visible:=true;
       cmpCodPacienteIni.Visible:=true;
    end;
end;

procedure TfrmRelCustoAMB.chkHospitalClick(Sender: TObject);
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

procedure TfrmRelCustoAMB.AMBInicial1Click(Sender: TObject);
begin
    cmpCodIni.text:=dbAmbCodAMB.asstring;
end;

procedure TfrmRelCustoAMB.AMBFinal1Click(Sender: TObject);
begin
    cmpCodFim.text:=dbAmbCodAMB.asstring;
end;

procedure TfrmRelCustoAMB.cmpCodIniChange(Sender: TObject);
begin
    dbAmbIni.Locate('CodAmb',StrToint(cmpCodIni.Text),[]);
end;

procedure TfrmRelCustoAMB.cmpCodFimChange(Sender: TObject);
begin
    dbAmbFim.Locate('CodAmb',StrToint(cmpCodFim.Text),[]);
end;

procedure TfrmRelCustoAMB.chkAmbClick(Sender: TObject);
begin
    if chkAmb.Checked then
    begin
       cmpCodIni.Visible:=false;
       cmpCodFim.visible:=false;
       ambTextoIni.Visible:=false;
       ambTextofim.Visible:=false;
       grdAmb.Enabled:=false;
    end
    else
    begin
       cmpCodIni.Visible:=true;
       cmpCodFim.Visible:=true;
       ambTextoIni.Visible:=true;
       ambTextoFim.Visible:=true;
       grdAmb.Enabled:=true;
    end;

end;

procedure TfrmRelCustoAMB.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelCustoAMB.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelCustoAMB.BitBtn1Click(Sender: TObject);
var iHospitalIni,iPacienteIni,iClienteIni,iAmbIni,iAmbFim:integer;
var iMes,iAno,iMesF,iAnoF:integer;
var iDataIni,iDataFim:TDate;
var iLinhaH,iLinhaP,iLInhaC,iLinhaA,iLinhaD,iLinhaA1:string;
var iLinhaID,iClienteID:string;
begin
    if not chkAmb.Checked then
    begin
        if not dbAmbIni.Locate('CodAmb',cmpCodIni.text,[]) then
        begin
            ShowMessage('Codigo AMB inicial inválido');
            abort;
        end;
        if not dbAmbFim.Locate('CodAmb',cmpCodFim.text,[]) then
        begin
            ShowMessage('Codigo AMB final inválido');
            abort;
        end;
         iAmbIni:=dbAmbIniCodAmb.Value;
         iAmbFim:=dbAmbFimCodAmb.value;
     end;
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iHospitalIni:=dbHospitalIniHospital.Value;
     iPacienteIni:=dbPacienteIniPaciente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iMesF:=StrToInt(Edit3.Text);
     iAnoF:=StrToInt(Edit4.Text);
     iDataIni:=EncodeDAte(iAno,iMes,1);
     iDataFim:=EncodeDate(iAnoF,iMesF,1);

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

     if iDataFim<iDataIni then
     begin
        ShowMessage('Competencia final menor que inicial');
        abort;
     end;

     if iAmbIni>iAmbFim then
     begin
        ShowMessage('Codigo Amb final menor que inicial');
        abort;
    end;

    iLinhaC:=' and AtendHI.Cliente=:CliIni ';
    if chkPaciente.Checked then
       iLinhaP:=''
    else
       iLinhaP:=' and AtendHI.Paciente=:PacIni ';

    if chkHospital.Checked then
       iLinhaH:=''
    else
       iLinhaH:=' and AtendHI.Hospital=:HospIni ';

    if not chkAmb.Checked then
        iLinhaA:=' and AtendHI.CodAmb>=:AmbIni and AtendHI.CodAmb<=:AmbFim '
    else
        iLinhaA:='';

    iLinhaD:='';
    if (iMes=iMesF) and (iAno=iAnoF) then
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
        iLInhaD:='('+iLinhaD+')';
        iMes:=StrToInt(Edit1.Text);
        iAno:=StrToInt(Edit2.Text);
        iMesF:=StrToInt(Edit3.Text);
        iAnoF:=StrToInt(Edit4.Text);
    end;

     case rdgAnalise.ItemIndex of
     0:iLinhaA1:=' and AtendHI.PosAnalise=0 ';
     1:iLinhaA1:=' and AtendHI.PosAnalise=1 ';
     2:iLinhaA1:='';
    end;

with dmRelatorio do
begin
    case frmRelCustoAmb.Tag of
    1: begin //Custos por AMB
         qryRelCustoAmbD.SQL.Clear;
         qryRelCustoAmbD.SQL.Text:='Select AtendHI.Cliente as Cliente, '+
                                   '       AtendHI.Hospital as Hospital, '+
                                   '       AtendHI.CodAmb as CodAmb, '+
                                   '       AtendHI.Paciente as Paciente, '+
                                   '       AtendHI.Valor as Valor, '+
                                   '       AtendHI.valorglosadom as Glosam, '+
                                   '       AtendHI.valorglosadoe as Glosae, '+
                                   '       Hospital.Nome as Nome  '+
                                   'from AtendHI, Hospital '+
                                   'where AtendHI.Hospital=Hospital.Hospital and '+
                                   '      AtendHI.Complemento=0 and '+
                                   iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaA1+iLinhaID+
                                   'order by Cliente, CodAmb, Nome';

         qryRelCustoAmbD.ParamByName('CliIni').asinteger:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoAmbD.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoAmbD.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkAmb.Checked then
         begin
            qryRelCustoAmbD.ParamByName('AmbIni').Value:=iAmbIni;
            qryRelCustoAmbD.ParamByName('AmbFim').Value:=iAmbFim;
         end;

         qryRelCustoAmbD.Open;

         if qryRelCustoAmbD.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryRelCustoAmbD.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if chkAmb.Checked then
            frmMenu.rvBBAuditoria.SetParam('Titulo','Todos Procedimentos AMB')
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','Procedimentos AMB de '+IntToStr(iAmbIni)+' à '+InttoStr(iAmbFim));
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         frmMenu.rvBBAuditoria.SelectReport('relCustoAmbDet',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    2: begin //Custos por Hospital/Amb
         qryrelCustoHospital.SQL.Clear;
         qryrelCustoHospital.SQL.Text:='Select AtendHI.Cliente as cliente, '+
                                       '       AtendHI.Hospital as Hospital, '+
                                       '       sum(AtendHI.valor) as valor, '+
                                       '       sum(AtendHI.valorglosadom) as glosam, '+
                                       '       sum(AtendHI.valorglosadoe) as glosae '+
                                       'from AtendHI '+
                                       'where AtendHI.Complemento=0 and '+
                                       iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaA1+iLinhaID+
                                       'group by cliente,Hospital '+
                                       'order by cliente,Hospital ';

         qryrelCustoHospital.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryrelCustoHospital.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryrelCustoHospital.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkAmb.Checked then
         begin
             qryrelCustoHospital.ParamByName('AmbIni').Value:=iAmbIni;
             qryrelCustoHospital.ParamByName('AmbFim').Value:=iAmbFim;
        end;

         qryrelCustoHospital.Open;

         qryRelCustoAmbD.Close;
         qryRelCustoAmbD.SQL.Clear;
         qryRelCustoAmbD.SQL.Clear;
         qryRelCustoAmbD.SQL.Text:='Select AtendHI.Cliente as Cliente, '+
                                   '       AtendHI.Hospital as Hospital, '+
                                   '       AtendHI.CodAmb as CodAmb, '+
                                   '       AtendHI.Paciente as Paciente, '+
                                   '       AtendHI.Valor as Valor, '+
                                   '       AtendHI.valorglosadom as Glosam, '+
                                   '       AtendHI.valorglosadoe as Glosae, '+
                                   '       Hospital.Nome as Nome  '+
                                   'from AtendHI, Hospital '+
                                   'where AtendHI.Hospital=Hospital.Hospital and '+
                                   '      AtendHI.Complemento=0 and '+
                                   iLinhaD+iLinhaC+iLinhaP+iLinhaH+iLinhaA+iLinhaA1+iLinhaID+
                                  'order by cliente, nome, codAmb';

         qryRelCustoAmbD.ParamByName('CliIni').Value:=iClienteIni;

         if not chkPaciente.Checked then
            qryRelCustoAmbD.ParamByName('PacIni').Value:=iPacienteIni;

         if not chkHospital.Checked then
             qryRelCustoAmbD.ParamByName('HospIni').Value:=iHospitalIni;

         if not chkAmb.Checked then
         begin
             qryRelCustoAmbD.ParamByName('AmbIni').Value:=iAmbIni;
             qryRelCustoAmbD.ParamByName('AmbFim').Value:=iAmbFim;
         end;

         qryRelCustoAmbD.Open;

         if qryRelCustoAmbD.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            qryRelCustoAmbD.Close;
            abort;
         end;
         frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text+' à '+Edit3.Text+'/'+Edit4.Text);
         if not chkAmb.Checked then
             frmMenu.rvBBAuditoria.SetParam('Titulo','Procedimentos AMB de '+IntToStr(iAmbIni)+' à '+InttoStr(iAmbFim))
         else
             frmMenu.rvBBAuditoria.SetParam('Titulo','Todos os Procedimentos AMB');
         if not chkPaciente.Checked then
             frmMenu.rvBBAuditoria.SetParam('Paciente',dbPacienteIniNome.value)
         else
             frmMenu.rvBBAuditoria.SetParam('Paciente','');

         case rdgAnalise.ItemIndex of
         0:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise Hospital');
         1:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pos-Análise Hospital');
         2:frmMenu.rvBBAuditoria.SetParam('Titulo1','Internação - Pré-Análise/Pos-Análise Hospital');
         end;

         if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
         else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

         frmMenu.rvBBAuditoria.SelectReport('relCustoAmb1Det',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
    end;
end;

end;

end.
