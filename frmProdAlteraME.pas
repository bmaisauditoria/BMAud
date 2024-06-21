unit frmProdAlteraME;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MSAccess, MemDS, DBAccess, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, ToolWin, ComCtrls, Grids, DBGrids;

type
  TfrmProdsAlteraME = class(TForm)
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dbClienteClienteID: TStringField;
    dsCliente: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorCliente: TIntegerField;
    dbAuditorDataFim: TDateTimeField;
    dsAuditor: TDataSource;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoVinculado: TStringField;
    dsServico: TDataSource;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroCliente: TIntegerField;
    dbEnfermeiroDataFim: TDateTimeField;
    dsEnfermeiro: TDataSource;
    dsAtendHI: TDataSource;
    qryAtendHI: TMSQuery;
    qryAtendHIAtendimentoHI: TLargeintField;
    qryAtendHICliente: TIntegerField;
    qryAtendHIHospital: TIntegerField;
    qryAtendHIMedico: TIntegerField;
    qryAtendHIEnfermeiro: TIntegerField;
    qryAtendHIMesCompetencia: TSmallintField;
    qryAtendHIAnoCompetencia: TSmallintField;
    qryAtendHIServico: TStringField;
    qryAtendHIDataInternacao: TDateTimeField;
    qryAtendHIDataAlta: TDateTimeField;
    Label1: TLabel;
    qryAtendHIHospitalNome: TStringField;
    qryAtendHIMedicoNome: TStringField;
    qryAtendHIEnfermeiroNome: TStringField;
    qryAtendHIClienteNome: TStringField;
    Panel2: TPanel;
    Panel1: TPanel;
    lblQtd: TLabel;
    chkCli: TCheckBox;
    cmbCli: TDBLookupComboBox;
    chkHospital: TCheckBox;
    cmbHospital: TDBLookupComboBox;
    chkServico: TCheckBox;
    cmbServico: TDBLookupComboBox;
    cmbMed: TDBLookupComboBox;
    cmbEnf: TDBLookupComboBox;
    chkMed: TCheckBox;
    chkEnf: TCheckBox;
    chkMedZero: TCheckBox;
    chkEnfZero: TCheckBox;
    Panel3: TPanel;
    Label2: TLabel;
    cmbHospitalN: TDBLookupComboBox;
    cmbServicoN: TDBLookupComboBox;
    cmbMedN: TDBLookupComboBox;
    cmbEnfN: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cmdAltera: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qryNovo: TMSQuery;
    lblCompetencia: TLabel;
    Label8: TLabel;
    tabOrdem: TTabControl;
    grdCapeante: TDBGrid;
    qryAtendHIPaciente: TIntegerField;
    qryAtendHIAltera: TBooleanField;
    qryAtendHINome: TStringField;
    rdgSeleciona: TRadioGroup;
    BitBtn4: TBitBtn;
    lblAltera: TLabel;
    chkMedLimpar: TCheckBox;
    chkEnfLimpar: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure chkCliClick(Sender: TObject);
    procedure chkHospitalClick(Sender: TObject);
    procedure chkServicoClick(Sender: TObject);
    procedure chkMedClick(Sender: TObject);
    procedure chkEnfClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cmbCliClick(Sender: TObject);
    procedure cmbHospitalClick(Sender: TObject);
    procedure cmbServicoClick(Sender: TObject);
    procedure cmbMedClick(Sender: TObject);
    procedure cmbEnfClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkMedZeroClick(Sender: TObject);
    procedure chkEnfZeroClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure grdCapeanteDblClick(Sender: TObject);
    procedure grdCapeanteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tabOrdemChange(Sender: TObject);
    procedure chkMedLimparClick(Sender: TObject);
    procedure chkEnfLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    iProd,iMes,iAno,iQtd:integer;
    iLinhaH,iLInhaC,iLinhaM,iLinhaE,iLinhaS,iServico,iLinhaN:string;
    iCliente,iHospital,iMedico,iEnfermeiro:integer;

  end;

var
  frmProdsAlteraME: TfrmProdsAlteraME;

implementation

uses frmProdutividades;

{$R *.dfm}

procedure TfrmProdsAlteraME.FormShow(Sender: TObject);
begin
    dbCliente.Open;
    dbHospital.Open;
    dbServico.Open;
    dbAuditor.Open;
    dbEnfermeiro.Open;

    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    lblCompetencia.Caption:='Competência '+IntToStr(imes)+'/'+IntToStr(iano);

end;

procedure TfrmProdsAlteraME.chkCliClick(Sender: TObject);
begin
    if chkCli.Checked then
        cmbCli.Visible:=false
    else
        cmbCli.Visible:=true;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';

    qryAtendHI.Close;
end;

procedure TfrmProdsAlteraME.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
        cmbHospital.Visible:=false
    else
        cmbHospital.Visible:=true;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.chkServicoClick(Sender: TObject);
begin
    if chkServico.Checked then
        cmbServico.Visible:=false
    else
        cmbServico.Visible:=true;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.chkMedClick(Sender: TObject);
begin
    if chkMed.Checked then
    begin
        cmbMed.Visible:=false;
        chkMedZero.Visible:=false;
    end
    else
    begin
        cmbMed.Visible:=true;
        chkMedZero.Visible:=true;
    end;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.chkEnfClick(Sender: TObject);
begin
    if chkEnf.Checked then
    begin
        cmbEnf.Visible:=false;
        chkEnfZero.Visible:=false;
    end
    else
    begin
        cmbEnf.Visible:=true;
        chkEnfZero.Visible:=true;
    end;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.BitBtn4Click(Sender: TObject);
begin
    if chkCli.Checked then
    begin
        iLinhaC:='';
        iCliente:=0;
    end
    else
    begin
        iLinhaC:=' and AtendHI.Cliente=:Cli ';
        iCliente:=cmbCli.keyvalue;
    end;

    if chkHospital.Checked then
    begin
       iLinhaH:='';
       iHospital:=0;
    end
    else
    begin
       iLinhaH:=' and AtendHI.Hospital=:Hosp ';
        iHospital:=cmbHospital.KeyValue;
    end;

    if chkServico.Checked then
    begin
       iLinhaS:='';
       iServico:='';
    end
    else
    begin
       iLinhaS:=' and AtendHI.Servico=:Serv ';
        iServico:=cmbServico.KeyValue;
    end;

    iMedico:=0;
    if chkMed.Checked then
       iLinhaM:=''
    else
       if chkMedZero.Checked then
           iLinhaM:=' and AtendHI.Medico=0 '
       else
       begin
           iLinhaM:=' and AtendHI.Medico=:Med ';
           iMedico:=cmbMed.KeyValue;
       end;

    iEnfermeiro:=0;
    if chkEnf.Checked then
       iLinhaE:=''
    else
       if chkEnfZero.Checked then
           iLinhaE:=' and AtendHI.Enfermeiro=0'
       else
       begin
           iLinhaE:=' and AtendHI.Enfermeiro=:Enf ';
           iEnfermeiro:=cmbEnf.KeyValue;
       end;

    case rdgSeleciona.ItemIndex of
    0:iLinhaN:='set Altera=1 ';
    1:iLinhaN:='set Altera=0 ';
    end;

    qryNovo.Close;
    qryNovo.SQL.Clear;
    qryNovo.SQL.Text:='Update AtendHI '+
                       iLinhaN+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes)  ';

    qryNovo.ParamByName('iMes').asinteger:=iMes;
    qryNovo.ParamByName('iAno').asinteger:=iAno;
    qryNovo.Execute;

    qryAtendHI.Close;
    qryAtendHI.SQL.Clear;
    qryAtendHI.SQL.Text:='Select * from AtendHI '+
                         'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                         'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes)  '+
                         iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaS+
                         'order by Pacientes.Nome ';

    qryAtendHI.ParamByName('iMes').asinteger:=iMes;
    qryAtendHI.ParamByName('iAno').asinteger:=iAno;
    if not chkCli.Checked then
        qryAtendHI.ParamByName('Cli').asinteger:=icliente;
    if not chkHospital.Checked then
        qryAtendHI.ParamByName('Hosp').asinteger:=iHospital;
    if not chkServico.Checked then
        qryAtendHI.ParamByName('Serv').value:=iServico;
    if (not chkMed.Checked) and (not chkMedZero.Checked) then
        qryAtendHI.ParamByName('Med').asinteger:=iMedico;
    if (not chkEnf.Checked) and (not chkEnfZero.Checked) then
        qryAtendHI.ParamByName('Enf').asinteger:=iEnfermeiro;


    qryAtendHI.Open;

   if qryAtendHI.RecordCount=0 then
    begin
        ShowMessage('Nenhum capeante localizado');
        lblQtd.Caption:='000 Localizados';
        lblAltera.Caption:='000 Selecionados';
        abort;
    end;

    if rdgSeleciona.ItemIndex=0 then
        iQtd:=qryAtendHI.RecordCount
    else
        iQtd:=0;
    lblQtd.Caption:=IntToStr(qryAtendHI.RecordCount)+' Localizados';
    lblAltera.Caption:=IntToStr(iQtd)+' Selecionados';

end;

procedure TfrmProdsAlteraME.cmbCliClick(Sender: TObject);
begin
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.cmbHospitalClick(Sender: TObject);
begin
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.cmbServicoClick(Sender: TObject);
begin
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.cmbMedClick(Sender: TObject);
begin
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.cmbEnfClick(Sender: TObject);
begin
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.BitBtn1Click(Sender: TObject);
var iNovo,iCliente,iResultado:integer;
begin
    if qryAtendHI.RecordCount=0 then
    begin
        ShowMessage('Nenhum capeante selecionado');
        abort;
    end;
    if chkCli.Checked then
        iCliente:=0
    else
        iCliente:=cmbCli.keyvalue;

    if (iCliente=0) and (frmProdutividade.dbProdCli.RecordCount>0) then
    begin
        ShowMessage('Existem clientes com Fechamentos da Produtividade finalizados');
        abort;
    end;

    if (iCliente<>0) and (frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[])) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;

    inovo:=cmbHospitalN.keyvalue;

    if iNovo=iHospital then
    begin
        ShowMessage('Hospital novo igual a hospital ja cadastrado');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a alteração do Hospital','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    qryNovo.Close;
    qryNovo.SQL.Clear;
    qryNovo.SQL.Text:='Update AtendHI '+
                      'set Hospital=:Novo '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Altera=1) '+
                      iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaS;

    qryNovo.ParamByName('iMes').asinteger:=iMes;
    qryNovo.ParamByName('iAno').asinteger:=iAno;
    qryNovo.ParamByName('Novo').asinteger:=iNovo;
    if not chkCli.Checked then
        qryNovo.ParamByName('Cli').asinteger:=icliente;
    if not chkHospital.Checked then
        qryNovo.ParamByName('Hosp').asinteger:=iHospital;
    if not chkServico.Checked then
        qryNovo.ParamByName('Serv').value:=iServico;
    if (not chkMed.Checked) and (not chkMedZero.Checked) then
        qryNovo.ParamByName('Med').asinteger:=iMedico;
    if (not chkEnf.Checked) and (not chkEnfZero.Checked) then
        qryNovo.ParamByName('Enf').asinteger:=iEnfermeiro;


    qryNovo.Execute;

    ShowMessage('Alteração efetuada com sucesso');
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.chkMedZeroClick(Sender: TObject);
begin
    if chkMedZero.Checked then
        cmbMed.Visible:=false
    else
        cmbMed.Visible:=true;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.chkEnfZeroClick(Sender: TObject);
begin
    if chkEnfZero.Checked then
        cmbEnf.Visible:=false
    else
        cmbEnf.Visible:=true;
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.BitBtn3Click(Sender: TObject);
var iNovo,icliente, iResultado:integer;
begin
    if qryAtendHI.RecordCount=0 then
    begin
        ShowMessage('Nenhum capeante selecionado');
        abort;
    end;
    if chkCli.Checked then
        iCliente:=0
    else
        iCliente:=cmbCli.keyvalue;

    if (iCliente=0) and (frmProdutividade.dbProdCli.RecordCount>0) then
    begin
        ShowMessage('Existem clientes com Fechamentos da Produtividade finalizados');
        abort;
    end;

    if (iCliente<>0) and (frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[])) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;


    if cmbMedN.keyvalue=null then
        inovo:=0
    else
        inovo:=cmbMedN.keyvalue;

    if (iNovo=iMedico) and (not chkMedLimpar.checked) then
    begin
        ShowMessage('Médico novo igual a Medico ja cadastrado');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a alteração do Medico','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    qryNovo.Close;
    qryNovo.SQL.Clear;
    qryNovo.SQL.Text:='Update AtendHI '+
                      'set Medico=:Novo '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Altera=1) '+
                      iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaS;

    qryNovo.ParamByName('iMes').asinteger:=iMes;
    qryNovo.ParamByName('iAno').asinteger:=iAno;
    if chkMedLimpar.Checked then
        qryNovo.ParamByName('Novo').asinteger:=0
    else
        qryNovo.ParamByName('Novo').asinteger:=iNovo;
    if not chkCli.Checked then
        qryNovo.ParamByName('Cli').asinteger:=icliente;
    if not chkHospital.Checked then
        qryNovo.ParamByName('Hosp').asinteger:=iHospital;
    if not chkServico.Checked then
        qryNovo.ParamByName('Serv').value:=iServico;
    if (not chkMed.Checked) and (not chkMedZero.Checked) then
        qryNovo.ParamByName('Med').asinteger:=iMedico;
    if (not chkEnf.Checked) and (not chkEnfZero.Checked) then
        qryNovo.ParamByName('Enf').asinteger:=iEnfermeiro;


    qryNovo.Execute;

    ShowMessage('Alteração efetuada com sucesso');
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;
end;


procedure TfrmProdsAlteraME.BitBtn2Click(Sender: TObject);
var iResultado,iCliente:integer;
var iNovo:string;
begin
    if qryAtendHI.RecordCount=0 then
    begin
        ShowMessage('Nenhum capeante selecionado');
        abort;
    end;
    if chkCli.Checked then
        iCliente:=0
    else
        iCliente:=cmbCli.keyvalue;

    if (iCliente=0) and (frmProdutividade.dbProdCli.RecordCount>0) then
    begin
        ShowMessage('Existem clientes com Fechamentos da Produtividade finalizados');
        abort;
    end;

    if (iCliente<>0) and (frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[])) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;


    inovo:=cmbServicoN.keyvalue;

    if iNovo=iServico then
    begin
        ShowMessage('Serviço novo igual a Serviço ja cadastrado');
        abort;
    end;

    iResultado:=Application.MessageBox('Confirme a alteração do Serviço','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    qryNovo.Close;
    qryNovo.SQL.Clear;
    qryNovo.SQL.Text:='Update AtendHI '+
                      'set Servico=:Novo '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Altera=1) '+
                      iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaS;

    qryNovo.ParamByName('iMes').asinteger:=iMes;
    qryNovo.ParamByName('iAno').asinteger:=iAno;
    qryNovo.ParamByName('Novo').value:=iNovo;
    if not chkCli.Checked then
        qryNovo.ParamByName('Cli').asinteger:=icliente;
    if not chkHospital.Checked then
        qryNovo.ParamByName('Hosp').asinteger:=iHospital;
    if not chkServico.Checked then
        qryNovo.ParamByName('Serv').value:=iServico;
    if (not chkMed.Checked) and (not chkMedZero.Checked) then
        qryNovo.ParamByName('Med').asinteger:=iMedico;
    if (not chkEnf.Checked) and (not chkEnfZero.Checked) then
        qryNovo.ParamByName('Enf').asinteger:=iEnfermeiro;


    qryNovo.Execute;

    ShowMessage('Alteração efetuada com sucesso');
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.cmdAlteraClick(Sender: TObject);
var iNovo,icliente, iResultado:integer;
begin
    if qryAtendHI.RecordCount=0 then
    begin
        ShowMessage('Nenhum capeante selecionado');
        abort;
    end;
    if chkCli.Checked then
        iCliente:=0
    else
        iCliente:=cmbCli.keyvalue;

    if (iCliente=0) and (frmProdutividade.dbProdCli.RecordCount>0) then
    begin
        ShowMessage('Existem clientes com Fechamentos da Produtividade finalizados');
        abort;
    end;

    if (iCliente<>0) and (frmProdutividade.dbProdCli.Locate('Cliente',iCliente,[])) then
        if frmProdutividade.dbProdCliFechamento.value='F' then
        begin
            ShowMessage('Fechamentos da Produtividade finalizados para o Cliente selecionado');
            abort;
        end;

    if cmbEnfN.keyvalue=null then
        inovo:=0
    else
        inovo:=cmbEnfN.keyvalue;

    if (iNovo=iEnfermeiro) and (not chkEnfLimpar.checked) then
    begin
        ShowMessage('Enfermeiro novo igual a Enfermeiro ja cadastrado');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a alteração do Enfermeiro','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    qryNovo.Close;
    qryNovo.SQL.Clear;
    qryNovo.SQL.Text:='Update AtendHI '+
                      'set Enfermeiro=:Novo '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Altera=1) '+
                      iLinhaC+iLinhaH+iLinhaM+iLinhaE+iLinhaS;

    qryNovo.ParamByName('iMes').asinteger:=iMes;
    qryNovo.ParamByName('iAno').asinteger:=iAno;
    if chkEnfLimpar.checked then
        qryNovo.ParamByName('Novo').asinteger:=0
    else
        qryNovo.ParamByName('Novo').asinteger:=iNovo;
    if not chkCli.Checked then
        qryNovo.ParamByName('Cli').asinteger:=icliente;
    if not chkHospital.Checked then
        qryNovo.ParamByName('Hosp').asinteger:=iHospital;
    if not chkServico.Checked then
        qryNovo.ParamByName('Serv').value:=iServico;
    if (not chkMed.Checked) and (not chkMedZero.Checked) then
        qryNovo.ParamByName('Med').asinteger:=iMedico;
    if (not chkEnf.Checked) and (not chkEnfZero.Checked) then
        qryNovo.ParamByName('Enf').asinteger:=iEnfermeiro;


    qryNovo.Execute;

    ShowMessage('Alteração efetuada com sucesso');
    lblQtd.Caption:='000 Localizados';
    lblAltera.Caption:='000 Selecionados';
    qryAtendHI.Close;

end;

procedure TfrmProdsAlteraME.grdCapeanteDblClick(Sender: TObject);
begin
    qryAtendHI.Edit;
    if qryAtendHIAltera.value=true then
    begin
        qryAtendHIAltera.value:=false;
        iQtd:=iQtd-1;
    end
    else
    begin
        qryAtendHIAltera.value:=true;
        iQtd:=iQtd+1;
    end;
    qryAtendHI.Post;
    lblAltera.Caption:=IntToStr(iQtd)+' Selecionados';

end;

procedure TfrmProdsAlteraME.grdCapeanteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if qryAtendHIAltera.value=true then
        grdCapeante.Canvas.Brush.Color:=clMoneyGreen;

     grdCapeante.DefaultDrawDataCell(Rect,grdCapeante.Columns[DataCol].field,State);

end;

procedure TfrmProdsAlteraME.tabOrdemChange(Sender: TObject);
begin
    case tabOrdem.TabIndex of
    0:qryAtendHI.IndexFieldNames:='Nome';
    1:qryAtendHI.IndexFieldNames:='Cliente;AtendimentoHI';
    2:qryAtendHI.IndexFieldNames:='Cliente;Hospital;Nome';
    end;
end;

procedure TfrmProdsAlteraME.chkMedLimparClick(Sender: TObject);
begin
    if chkMedLimpar.Checked then
        cmbMedN.Visible:=false
    else
        cmbMedN.Visible:=true;

end;

procedure TfrmProdsAlteraME.chkEnfLimparClick(Sender: TObject);
begin
    if chkEnfLimpar.Checked then
        cmbEnfN.Visible:=false
    else
        cmbEnfN.Visible:=true;

end;

end.
