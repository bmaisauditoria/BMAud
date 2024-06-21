unit frmProdCopias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS;

type
  TfrmProdCopia = class(TForm)
    frmCopiaFolha: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ProdOrigem: TEdit;
    UpDown1: TUpDown;
    ProdDestino: TEdit;
    UpDown3: TUpDown;
    cmdCopia2: TBitBtn;
    barCopia: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure cmdCopia2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdCopia: TfrmProdCopia;

implementation

uses frmProdutividades;


{$R *.dfm}

procedure TfrmProdCopia.FormShow(Sender: TObject);
var iAno,iMes,iProdO,iProdD:integer;
begin
with frmProdutividade do
begin
    dbProd.First;
    if dbProdStatus.value<>'A' then
    begin
        ShowMessage('Não existe uma Produtividade aberta para ser copiada');
        frmProdCopia.Close;
    end;
    barCopia.Position:=0;
    ProdDestino.Text:=dbProdProdutividade.AsString;
    ProdOrigem.Text:='0';
end;
end;

procedure TfrmProdCopia.cmdCopia2Click(Sender: TObject);
var iOrigem,iDestino,iResultado:integer;
var iAno,iMes:integer;
begin
with frmProdutividade do
begin
    iOrigem:=StrtoInt(ProdOrigem.Text);
    iDestino:=StrToInt(ProdDestino.text);

    if (iOrigem=0) then
    begin
        ShowMessage('Origem inválida');
        abort;
    end;
    if (iDestino=0) then
    begin
        ShowMessage('Destino inválido');
        abort;
    end;
    if not dbProd.Locate('Produtividade',iOrigem,[]) then
    begin
        ShowMessage('Origem não cadastrada');
        abort;
    end;
    if not dbProd.Locate('Produtividade',iDestino,[]) then
    begin
        ShowMessage('Destino não cadastrado');
        abort;
    end
    else
    begin
        iMes:=dbProdMesCompetencia.value;
        iAno:=dbProdAnoCompetencia.value;
    end;


    ShowMessage('Atenção! Os lançamentos lançaveis do Destino serão apagados e substituidos pelos da Copia');
    iResultado:=Application.MessageBox('Confirme a copia dos Serviços lançaveis','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;

    barCopia.Min:=0;
    barCopia.Position:=0;

    dbProdMTrab.sql.text:='Delete ProdutividadeM where Produtividade=:Prod and Vinculado='+QuotedStr('N');
    dbProdMTrab.ParamByName('Prod').value:=iDestino;
    dbProdMTrab.Execute;

    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where Produtividade=:Prod '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,Tipo,Auditor,ClienteAud,Hospital,Servico';
    dbProdMTrab.ParamByName('Prod').value:=iDestino;
    dbProdMTrab.Execute;

//**** Fim Limpeza
    qryTot.Close;
    qryTot.SQL.Text:='Select * from ProdutividadeM '+
                      'where Produtividade=:iProd ';
    qryTot.ParamByName('iProd').value:=iOrigem;
    qryTot.Open;

    barCopia.Position:=0;
    barCopia.Max:=qryTot.RecordCount;

    qryProd.SQL.Text:='Select * from ProdutividadeM '+
                      'where Produtividade=:iProd ';
    qryProd.ParamByName('iProd').value:=iOrigem;
    qryProd.Open;

    qryProd.First;
    while not qryProd.Eof do
    begin
        if qryProdServicoVinculado.value='N' then
        begin
            dbProdMTrab.Insert;
            dbProdMTrabProdutividade.value:=iDestino;
            dbProdMTrabClienteAud.value:=qryProdClienteAud.value;
            dbProdMTrabCliente.value:=qryProdCliente.value;
            dbProdMTrabAuditor.value:=qryProdAuditor.value;
            dbProdMTrabTipo.value:=qryProdTipo.value;
            dbProdMTrabServico.value:=qryProdServico.value;
            dbProdMTrabHospital.value:=qryProdHospital.value;
            dbProdMTrabStatus.Value:='A';
            dbProdMTrabVinculado.value:=qryProdVinculado.value;
            dbProdMTrabAnoCompetencia.value:=iAno;
            dbProdMTrabMesCompetencia.value:=iMes;
            dbProdMTrabQtd.value:=0;
            dbProdMTrab.Post;
        end;
        barCopia.Position:=barCopia.Position+1;
        qryProd.Next;
    end;
    dbProdM.Refresh;
    ShowMessage('Copias efetuadas com sucesso');
    frmProdCopia.close;
end;
end;

end.
