unit frmProdComplementos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants,
  RpDefine, RpCon, RpConDS;

type
  TfrmProdComplemento = class(TForm)
    cmdAtualiza: TBitBtn;
    qryProd: TMSQuery;
    qryProdCliente: TIntegerField;
    qryProdPaciente: TIntegerField;
    qryProdHospital: TIntegerField;
    qryProdMedico: TIntegerField;
    qryProdEnfermeiro: TIntegerField;
    qryProdMesCompetencia: TSmallintField;
    qryProdAnoCompetencia: TSmallintField;
    qryProdDataInternacao: TDateTimeField;
    qryProdServico: TStringField;
    qryProdServicoC: TStringField;
    qryProdProdutividade: TIntegerField;
    qryProdMedicoNome: TStringField;
    qryProdEnfermeiroNome: TStringField;
    qryProdSenha: TStringField;
    cmdRestaura: TBitBtn;
    prgBar: TProgressBar;
    qryProdAtendimentoHI: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure cmdAtualizaClick(Sender: TObject);
    procedure cmdRestauraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdComplemento: TfrmProdComplemento;

implementation

uses frmPrincipal, dmRelatorios, frmProdutividades;

{$R *.DFM}

procedure TfrmProdComplemento.FormShow(Sender: TObject);
var d,m,a:word;
begin
end;

procedure TfrmProdComplemento.cmdAtualizaClick(Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno,i:integer;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    if frmProdutividade.dbProdCli.RecordCount>0 then
        ShowMessage('Atenção! O procedimento não sera impedido, mas já existem clientes finalizados para Fechamentos da Produtividade');


    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;

    i:=Application.MessageBox('Confirme a Atualização dos Complementos','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Complemento=1) and '+
                      '      (Servico<>'+QuotedStr('NP')+') and (Servico<>'+QuotedStr('CO')+') '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.Open;

   if qryProd.RecordCount=0 then
    begin
        ShowMessage('Todos os Complementos da Competencia estão ok');
        abort;
    end;

    prgBar.Min:=0;
    prgBar.Max:=qryProd.RecordCount;
    prgBar.Position:=0;

    qryProd.First;
    while not qryProd.eof do
    begin
        qryProd.Edit;
        qryProdServico.value:='CO';
        qryProd.Post;
        qryProd.Next;
        prgBar.Position:=prgBar.Position+1;
    end;

    prgBar.Position:=0;
    ShowMessage('Atualização efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

procedure TfrmProdComplemento.cmdRestauraClick(Sender: TObject);
var iProd,iMes,iAno,i:integer;
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    if frmProdutividade.dbProdCli.RecordCount>0 then
        ShowMessage('Atenção! O procedimento não sera impedido, mas já existem clientes finalizados para Fechamentos da Produtividade');

    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;

    i:=Application.MessageBox('Confirme a Restauração dos Complementos','Aviso', mb_yesno+ mb_iconExclamation);

    if(i=id_no) then
        abort;

    qryProd.Close;
    qryProd.SQL.Clear;
    qryProd.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Complemento=1) and '+
                      '      (Servico<>'+QuotedStr('NP')+') and (Servico<>ServicoC) '+
                      'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProd.ParamByName('iMes').asinteger:=iMes;
    qryProd.ParamByName('iAno').asinteger:=iAno;
    qryProd.Open;

   if qryProd.RecordCount=0 then
    begin
        ShowMessage('Todos os Complementos da Competencia estão iguais ao cadastro');
        abort;
    end;

    prgBar.Min:=0;
    prgBar.Max:=qryProd.RecordCount;
    prgBar.Position:=0;

    qryProd.First;
    while not qryProd.eof do
    begin
        qryProd.Edit;
        qryProdServico.value:=qryProdServicoC.value;
        qryProd.Post;
        qryProd.Next;
        prgBar.Position:=prgBar.Position+1;
    end;

    prgBar.Position:=0;
    ShowMessage('Restauração efetuada com sucesso. Reprocesse a Seleção de Dados.');
end;

end.


